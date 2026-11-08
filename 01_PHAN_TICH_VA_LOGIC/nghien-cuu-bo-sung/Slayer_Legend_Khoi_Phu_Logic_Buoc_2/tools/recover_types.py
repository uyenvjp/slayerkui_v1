from recover_methods import b,HEAP,PROTECTED,ROOT,text_at
import struct,json,collections
BASE=0x198084c;STRIDE=82;types=[]
for i in range(65535):
 p=BASE+i*STRIDE
 if p+82>len(b):break
 token=struct.unpack_from('<I',b,p+78)[0]
 if token>>24!=2:break
 name,ns,byval,decl,parent=struct.unpack_from('<5I',b,p)
 generic=struct.unpack_from('<H',b,p+20)[0];flags=struct.unpack_from('<I',b,p+22)[0]
 starts=struct.unpack_from('<8i',b,p+26);counts=struct.unpack_from('<8H',b,p+58);bitfield=struct.unpack_from('<I',b,p+74)[0]
 types.append({'index':i,'name':text_at(name),'namespace':text_at(ns),'name_index':name,'namespace_index':ns,'byval_type_index':byval,'declaring_type_index':decl,'parent_type_index':parent,'generic_container_index':generic,'flags':flags,'field_start':starts[0],'method_start':starts[1],'event_start':starts[2],'property_start':starts[3],'nested_start':starts[4],'interfaces_start':starts[5],'vtable_start':starts[6],'interface_offsets_start':starts[7],'method_count':counts[0],'property_count':counts[1],'field_count':counts[2],'event_count':counts[3],'nested_type_count':counts[4],'vtable_count':counts[5],'interfaces_count':counts[6],'interface_offsets_count':counts[7],'bitfield':bitfield,'token':hex(token),'metadata_record_offset':hex(p)})
print('TYPES',len(types),'readable_names',sum(t['name'] is not None for t in types),'end',hex(BASE+len(types)*STRIDE))
(ROOT/'type-map.json').write_text(json.dumps(types,ensure_ascii=False,indent=2))
methods=json.loads((ROOT/'method-map.json').read_text());native=collections.defaultdict(list)
for r in methods:
 t=types[r['declaring_type_index']];r['declaring_type_name']=t['name'];r['namespace']=t['namespace']
 if r['native_va']!='0x0' and r['name']:native[r['native_va']].append((t['name'] or f'Type_{t["index"]}')+'::'+r['name'])
(ROOT/'method-map.json').write_text(json.dumps(methods,ensure_ascii=False,indent=2))
(ROOT/'native-labels.json').write_text(json.dumps(native,ensure_ascii=False,indent=2))
for idx in [2712,2777,2909,3792,3732]:print('CLASS',types[idx])
# Verify every recovered method's declaring type covers that method in the global method table.
method_base=0x8787ac;bad=[]
for r in methods:
 index=(int(r['metadata_record_offset'],16)-method_base)//32;t=types[r['declaring_type_index']]
 if not t['method_start']<=index<t['method_start']+t['method_count']:bad.append(r)
print('METHOD_TYPE_RANGE_VALID',len(methods)-len(bad),'INVALID',len(bad))
assert not bad
