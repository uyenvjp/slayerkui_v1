#!/usr/bin/env python3
"""Inspect UnityFS original bundles for class IDs and serialized object counts. Read-only."""
import zipfile,io,struct,json,collections,lzma,sys,gc,hashlib
from pathlib import Path
from parse_unityfs import parse_unityfs

def serialized_bundle_head(data, meta):
 # All supplied bundles are UnityFS v8 with a single LZMA data block.
 block=meta['blocks'][0]
 if len(meta['blocks'])!=1 or block['flags']&0x3f != 1:
  raise ValueError('Bundle differs: expected one Unity LZMA block')
 start=meta['block_data_start']
 compressed=memoryview(data)[start:start+block['stored_size']]
 # Stream LZMA Alone with 8-byte uncompressed size injected after 5-byte properties.
 dec=lzma.LZMADecompressor(format=lzma.FORMAT_ALONE)
 assembled=bytearray()
 first=bytes(compressed[:5])+struct.pack('<Q',block['raw_size'])
 assembled.extend(dec.decompress(first+bytes(compressed[5:5+262144])))
 pos=5+262144
 target=meta['nodes'][0]['size']
 while len(assembled)<target and pos < len(compressed):
  next_pos=min(pos+262144,len(compressed))
  assembled.extend(dec.decompress(bytes(compressed[pos:next_pos]),max_length=max(8192,target-len(assembled))))
  pos=next_pos
  # LZMA max_length can leave compressed input buffered; drain without adding input.
  while len(assembled)<target and not dec.needs_input:
   part=dec.decompress(b'',max_length=target-len(assembled))
   if not part:break
   assembled.extend(part)
 if len(assembled)<target:raise ValueError('truncated decompressed serialized data '+str(len(assembled))+'/'+str(target))
 return bytes(assembled[:target])

def parse_serialized(b):
 f=io.BytesIO(b)
 def u32():return struct.unpack('<I',f.read(4))[0]
 def i32():return struct.unpack('<i',f.read(4))[0]
 def i64():return struct.unpack('<q',f.read(8))[0]
 def cstr():
  b=bytearray()
  while (x:=f.read(1)) != b'\0':
   if not x:raise EOFError
   b.extend(x)
  return b.decode('utf8','replace')
 version=struct.unpack_from('>I',b,8)[0]
 meta_size=struct.unpack_from('>I',b,20)[0]
 full_size=struct.unpack_from('>Q',b,24)[0]
 data_offset=struct.unpack_from('>Q',b,32)[0]
 f.seek(48)
 uv=cstr();platform=i32();has_tree=f.read(1)[0]
 n=u32();types=[]
 if n>1000:raise ValueError('unreasonable type count '+str(n))
 for _ in range(n):
  cid=i32();stripped=f.read(1)[0];sindex=struct.unpack('<h',f.read(2))[0]
  if cid==114 or sindex>=0:f.read(16)
  h=f.read(16).hex()
  if has_tree:
   nn=u32();strings_len=u32()
   if nn>50000 or strings_len>1000000:raise ValueError('type tree too long')
   f.seek(nn*32,1)
   type_tree_string=f.read(strings_len)
   type_words=[w.decode('utf8','replace') for w in type_tree_string.split(b'\0') if len(w)>3]
  else: type_words=[]
  dependencies=u32();f.seek(dependencies*4,1)
  types.append({'class_id':cid,'script_index':sindex,'type_hash':h,'node_words':type_words[:160]})
 obj_count=u32()
 object_by_class=collections.Counter()
 object_by_type=collections.Counter()
 out_of_bounds=0
 obj_names=[]
 # ObjectInfo is 8 bytes pathId, 8 byte offset (v22), uint32 size, i32 type index.
 for i in range(obj_count):
  while f.tell()%4:f.seek(1,1)
  pathid=i64();bo=i64();sz=u32();typeid=i32()
  if not 0<=typeid<len(types):
   raise ValueError('bad type index '+str(typeid)+' object '+str(i))
  cid=types[typeid]['class_id']
  object_by_class[str(cid)]+=1
  object_by_type[str(typeid)]+=1
  if bo+sz>full_size-data_offset:out_of_bounds+=1
 return {'version':version,'unity':uv,'serialized_file_size':len(b),'metadata_bytes':meta_size,'declared_file_size':full_size,'data_offset':data_offset,'platform':platform,'type_tree':bool(has_tree),'types':types,'object_count':obj_count,'objects_by_class':object_by_class,'objects_by_type':object_by_type,'out_of_bounds':out_of_bounds}

def catalog(xapk, out):
 results=[]
 with zipfile.ZipFile(xapk) as x:
  for name in ['contents','hero','monster','map','popup','skin','sound','emoticon']:
   try:
    apk=x.read(name+'.apk')
   except KeyError:continue
   with zipfile.ZipFile(io.BytesIO(apk)) as a:
    data=a.read('assets/assetpack/'+name)
   info=parse_unityfs(data)
   row={'pack':name,'bundle_file_size':len(data),'unityfs_version':info['bundle_version'],'revision':info['unity_revision'],'nodes':info['nodes'],'blocks':info['blocks']}
   try:
    serialized=serialized_bundle_head(data,info)
    row['serialized']=parse_serialized(serialized)
    print(name,'objects',row['serialized']['object_count'],'types',len(row['serialized']['types']),'MonoBehaviour',row['serialized']['objects_by_class'].get('114',0),flush=True)
   except Exception as ex:
    row['error']=str(ex)
    print('ERROR',name,repr(ex),flush=True)
   results.append(row)
   del data,apk
   gc.collect()
 Path(out).write_text(json.dumps(results,indent=2,ensure_ascii=False),encoding='utf-8')
 print('report:',out)

if __name__=='__main__':catalog(sys.argv[1],sys.argv[2])
