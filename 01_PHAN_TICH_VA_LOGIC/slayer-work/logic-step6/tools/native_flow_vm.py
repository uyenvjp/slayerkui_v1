#!/usr/bin/env python3
"""Bounded instruction-flow interpreter for selected recovered native methods.

Does not load/execute the game library. Unity metadata initialization, object
lifetime, decrypted Silent* values, upstream getters and callbacks are modeled
explicitly by fixture inputs/hooks. Unsupported instructions, missing fields and
unknown calls fail closed. Coverage is selected methods with those dependencies
held fixed, not Android gameplay equivalence or live IFix behavior.
"""
from dataclasses import dataclass
from pathlib import Path
import csv,math,re,struct,sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'logic-full'/'tools'))
from elf_reader import ELF

def f32(x):
    try:return struct.unpack('<f',struct.pack('<f',x))[0]
    except OverflowError:return math.copysign(math.inf,x)
def signed(v,bits):
    v=int(v)&((1<<bits)-1)
    return v-(1<<bits) if v&(1<<(bits-1)) else v
def div(a,b):
    assert b
    return (abs(a)//abs(b))*(-1 if (a<0)!=(b<0) else 1)
def convert(v,bits):
    if math.isnan(v):return 0
    lo,hi=-(1<<(bits-1)),(1<<(bits-1))-1
    return lo if v<=lo else hi if v>=hi else math.trunc(v)
@dataclass(frozen=True)
class Part:
    value:int
    part:int
@dataclass(frozen=True)
class Wrapped:
    value:object
    type:str

class Program:
    def __init__(self,source,asm_dir):
        import hashlib
        source=Path(source);native=(source/'libil2cpp.so').read_bytes()
        assert hashlib.sha256(native).hexdigest()=='e87f69d8f2eeb24b10cf5a211dc2f573ac7ca002dc4cbe4d40d03ea3ec888537'
        self.elf=ELF(native)
        with (source/'field-map.csv').open(encoding='utf-8-sig') as f:self.fields=list(csv.DictReader(f))
        import json
        self.types=json.loads((source/'native-type-map.json').read_text())
        self.instructions={}
        paths=[p for directory in (asm_dir if isinstance(asm_dir,list) else [asm_dir]) for p in Path(directory).glob('*.asm')]
        for path in paths:
            for line in path.read_text().splitlines():
                pc=int(line.split()[0],16);raw=line.split(';')[0].split(None,1)[1].strip()
                words=raw.split(None,1);target=re.search(r'-> (0x[0-9a-f]+)',line)
                args=re.split(r',\s*(?![^\[]*\])',words[1]) if len(words)>1 else []
                self.instructions[pc]=(words[0],args,int(target[1],16) if target else None,raw)

class VM:
    RETURN=0xffffffffff00
    def __init__(self,program,fixture):
        self.p=program;self.fixture=fixture;self.x={30:self.RETURN};self.v={};self.sp=0x700000000
        self.bytes={};self.tags={};self.next=0x100000000;self.classes={};self.instances={}
        self.eq=False;self.lt=False;self.gt=False;self.unordered=False
        self.effects=[];self.branches={};self.visited=set();self.calls=[];self.native_dicts={};self.enumerators={}
        self.db=self.object('DatabaseManager',fixture['db'])
        self.player=self.object('PlayerBase',fixture['player'])
        self.write(self.player+312,8,self.db)
        self.instances['DatabaseManager']=self.db
        for key,cls in [('dragon','DragonValleyManager'),('demon','DemonManager')]:
            value=fixture[key]
            if value is None:self.instances[cls]=0;continue
            ptr=self.alloc(512);self.instances[cls]=ptr
            if key=='dragon':
                for name,offset,c in [('Ether',96,'DragonValleyManager_Ether'),('SpecialCook',104,'DragonValleyManager_SpecialCook')]:
                    self.write(ptr+offset,8,self.object(c,value[name]) if value[name] is not None else 0)
            else:
                self.write(ptr+88,8,self.alloc(32) if value['CombinedDemon'] is not None else 0)
                if 'Altar' in value:self.write(ptr+56,8,self.object('DemonManager_Altar',value['Altar']) if value['Altar'] is not None else 0)
        self.preset=0 if fixture['presetStat'] is None else self.object('PresetBattleStat',fixture['presetStat'])
        if fixture['playerHpUpdatePresent']:
            callback=self.alloc(80);self.write(callback+24,8,0xffff0001);self.write(callback+64,8,0);self.write(callback+40,8,0)
        else:callback=0
        self.write(self.player+1840,8,callback)
    def alloc(self,n):
        a=self.next;self.next+=(n+15)//16*16;return a
    def write(self,a,n,v):
        for tag in list(self.tags):
            if a<tag+8 and tag<a+n:del self.tags[tag]
        if isinstance(v,(Part,Wrapped)):
            assert n==8;self.tags[a]=v
            for j in range(n):self.bytes[a+j]=0
        else:
            v=int(v)&((1<<(n*8))-1)
            for j in range(n):self.bytes[a+j]=(v>>(j*8))&255
    def read(self,a,n):
        if a in self.tags:
            assert n==8,(hex(a),n,self.tags[a]);return self.tags[a]
        if all(a+j in self.bytes for j in range(n)):return sum(self.bytes[a+j]<<(j*8) for j in range(n))
        if n==1 and 0xabcf000<=a<0xabd8000:return 1 # initialized metadata flags only
        if 0x700000000-0x10000<=a<=0x700000000+0x1000:raise ValueError(f'Uninitialized stack read {a:#x}/{n}')
        if a>=0x100000000:raise ValueError(f'Missing fixture field {a:#x}/{n}')
        if n==8:
            value=self.p.elf.u64(a)
            if isinstance(value,int) and value&1 and value>>29==1:
                ix=(value>>1)&0xfffffff;name=self.p.types[ix]['name']
                if name not in self.classes:
                    klass=self.alloc(256);static=self.alloc(256);self.classes[name]=klass
                    self.write(klass+228,4,1);self.write(klass+184,8,static)
                    self.write(static,8,self.instances.get(name,0))
                    if name=='DatabaseManager' and 'statics' in self.fixture:
                        fields={x['name']:x for x in self.p.fields if x['declaring_type']=='DatabaseManager' and x['is_static']=='True'}
                        for key,values in self.fixture['statics'].items():
                            pointer=self.alloc(32);self.native_dicts[pointer]={'values':values,'kind':'int' if key=='SkillAtkDmg' else 'float'}
                            self.write(static+int(fields[key]['native_field_offset']),8,pointer)
                return self.classes[name]
            return value
        raw=self.p.elf.bytes(a,n);assert len(raw)==n;return int.from_bytes(raw,'little')
    def floating(self,a,kind):return struct.unpack('<f' if kind=='s' else '<d',self.read(a,4 if kind=='s' else 8).to_bytes(4 if kind=='s' else 8,'little'))[0]
    def object(self,cls,values):
        ptr=self.alloc(30000 if cls=='DatabaseManager' else 4096)
        fields={x['name']:x for x in self.p.fields if x['declaring_type']==cls and x['is_static']=='False'}
        if cls=='PlayerBase':
            fields.update({x['name']:x for x in self.p.fields if x['declaring_type']=='Character' and x['is_static']=='False'})
        for name,value in values.items():
            if cls=='PlayerBase':name={'SuperCriticalDmg':'PlayerSuperCriticalDmg','CriticalDmg':'PlayerCriticalDmg','Heal':'HealAmount'}.get(name,name)
            assert name in fields,(cls,name)
            f=fields[name];a=ptr+int(f['native_field_offset']);ty=f['type_name']
            if ty.startswith('Silent'):
                count=40 if ty=='SilentBigInt' else 72 if ty=='SilentFloat' else 64
                for j in range(0,count,8):self.write(a+j,8,0)
                self.write(a,8,Wrapped(int(value) if ty in ['SilentInt','SilentLong','SilentBigInt'] else float(value),ty))
            elif ty=='System.Numerics.BigInteger':self.write(a,8,Part(int(value),0));self.write(a+8,8,Part(int(value),1))
            elif ty in ['float','double']:
                raw=struct.pack('<f' if ty=='float' else '<d',value);self.write(a,len(raw),int.from_bytes(raw,'little'))
            elif ty in ['int','long','bool']:self.write(a,1 if ty=='bool' else 4 if ty=='int' else 8,int(value))
            elif cls=='DatabaseManager' and name=='SpiritSkillTypes':
                if value is None:self.write(a,8,0)
                else:
                    array=self.alloc(32+4*len(value));self.write(array+24,8,len(value))
                    for j,item in enumerate(value):self.write(array+32+4*j,4,int(item))
                    self.write(a,8,array)
            else:raise NotImplementedError((cls,name,ty))
        return ptr
    def reg(self,r):
        r=r.strip()
        if r=='sp':return self.sp
        if r in ['wzr','xzr']:return 0
        if r.startswith('#'):return int(r[1:],0)
        value=self.x.get(int(r[1:]),0)
        return value&0xffffffff if r.startswith('w') else value
    def put(self,r,value):
        if r in ['xzr','wzr']:return
        if r=='sp':self.sp=int(value);return
        self.x[int(r[1:])]=value if isinstance(value,(Part,Wrapped)) else int(value)&((1<<(32 if r.startswith('w') else 64))-1)
    def vector(self,r):return self.v.get(int(re.search(r'\d+',r)[0]),(0,0))
    def fp(self,r):
        bits=self.vector(r)[0];assert isinstance(bits,int)
        return struct.unpack('<f' if r.startswith('s') else '<d',(bits&((1<<(32 if r.startswith('s') else 64))-1)).to_bytes(4 if r.startswith('s') else 8,'little'))[0]
    def setfp(self,r,v):
        if r.startswith('s'):v=f32(v)
        bits=int.from_bytes(struct.pack('<f' if r.startswith('s') else '<d',v),'little')
        self.v[int(r[1:])]=(bits,0)
    def pair(self,a,b,value):self.put(a,Part(value,0));self.put(b,Part(value,1))
    def big(self,a,b):
        a,b=self.reg(a),self.reg(b)
        if a==0 and b==0:return 0
        assert isinstance(a,Part) and isinstance(b,Part) and a.value==b.value and (a.part,b.part)==(0,1),(a,b)
        return a.value
    def compare(self,a,b,bits=None):
        self.eq=a==b;self.lt=a<b;self.gt=a>b;self.unordered=isinstance(a,float) and (math.isnan(a) or math.isnan(b))
        if bits:
            mask=(1<<bits)-1;diff=(int(a)-int(b))&mask
            self.negative=bool(diff&(1<<(bits-1)));self.carry=(int(a)&mask)>=(int(b)&mask)
            self.overflow=bool(((int(a)^int(b))&(int(a)^diff))&(1<<(bits-1)))
        else:self.negative=self.lt;self.carry=self.gt or self.eq or self.unordered;self.overflow=self.unordered
    def cond(self,c):
        n,v,z,carry=self.negative,self.overflow,self.eq,self.carry
        return {'eq':z,'ne':not z,'lt':n!=v,'le':z or n!=v,'ge':n==v,'gt':not z and n==v,'mi':n,'pl':not n,'hs':carry,'lo':not carry,'hi':carry and not z,'ls':not carry or z}[c]
    def address(self,operand):
        m=re.fullmatch(r'\[(\w+)(?:, (#[+-]?\d+|[xw]\d+))?\](!?)',operand);assert m,operand
        base,offset,pre=m[1],self.reg(m[2]) if m[2] else 0,m[3];addr=self.reg(base)+offset
        if pre:self.put(base,addr)
        return addr,base
    def load(self,r,a):
        if r.startswith('q'):self.v[int(r[1:])]=(self.read(a,8),self.read(a+8,8))
        elif r[0] in 'sd':self.setfp(r,self.floating(a,r[0]))
        else:self.put(r,self.read(a,4 if r.startswith('w') else 8))
    def save(self,r,a):
        if r.startswith('q'):
            v=self.vector(r);self.write(a,8,v[0]);self.write(a+8,8,v[1])
        elif r[0] in 'sd':self.write(a,4 if r.startswith('s') else 8,self.vector(r)[0])
        else:self.write(a,4 if r.startswith('w') else 8,self.reg(r))
    def hook(self,target):
        self.calls.append(target)
        if target==0x4c475a4:self.put('w0',0) # explicit unpatched baseline
        elif target in [0x4590a04,0x4590a60,0x4590be0]:pass
        elif target==0x4590d0c:raise ValueError('Native NullReference path')
        elif target in [0x9d6b8f0,0x9d6b900]:
            dst,src,n=self.reg('x0'),self.reg('x1'),self.reg('w2');assert n%8==0
            data=[self.read(src+j,8) for j in range(0,n,8)]
            for j,value in enumerate(data):self.write(dst+j*8,8,value)
        elif target==0x4eeda4c:self.put('x0',self.preset)
        elif target in self.GETTERS:
            key,kind=self.GETTERS[target];value=self.fixture['components'][key]
            if kind=='SilentLong':
                dst=self.reg('x8')
                for j in range(0,64,8):self.write(dst+j,8,0)
                self.write(dst,8,Wrapped(int(value),kind))
            elif kind=='float':self.setfp('s0',value)
            else:self.put('x0' if kind=='long' else 'w0',int(value))
        elif target==0x4d509d4:
            dst=self.reg('x8')
            for j in range(0,64,8):self.write(dst+j,8,0)
            self.write(dst,8,Wrapped(int(self.fixture['databaseGetters']['SkillEffect_AtkDmg']),'SilentInt'))
        elif target in [0x4b52424,0x4b52900,0x4b52350,0x4b51e10,0x4b51d28,0x4b516f4]:
            w=self.read(self.reg('x0'),8);assert isinstance(w,Wrapped),w
            if target in [0x4b51d28,0x4b516f4]:self.setfp('s0',w.value)
            else:self.put('x0' if target in [0x4b52424,0x4b52900] else 'w0',int(w.value))
        elif target in [0x4b50a54,0x4b51030]:
            w=self.read(self.reg('x0'),8);assert isinstance(w,Wrapped) and w.type=='SilentBigInt',w;self.pair('x0','x1',w.value)
        elif target==0x4b50df8:
            value=self.big('x1','x2');ptr=self.reg('x0')
            for j in range(0,40,8):self.write(ptr+j,8,0)
            self.write(ptr,8,Wrapped(value,'SilentBigInt'))
        elif target in [0x4b51bb8,0x4b521ec]:
            ptr=self.reg('x0');floating=target==0x4b51bb8
            value=self.fp('s0') if floating else signed(self.reg('w1'),32)
            for j in range(0,72 if floating else 64,8):self.write(ptr+j,8,0)
            self.write(ptr,8,Wrapped(value,'SilentFloat' if floating else 'SilentInt'))
        elif target in [0x917cfa4,0x917c91c]:self.pair('x0','x1',signed(self.reg('w0' if target==0x917cfa4 else 'x0'),32 if target==0x917cfa4 else 64))
        elif target in [0x917a844,0x917aa38,0x917e5d0]:
            a,b=self.big('x0','x1'),self.big('x2','x3')
            if target==0x917e5d0:self.put('w0',int(a<b))
            else:self.pair('x0','x1',a*b if target==0x917a844 else div(a,b))
        elif target==0x5016584:
            w=self.read(self.player+40,8);assert isinstance(w,Wrapped);self.pair('x0','x1',w.value)
        elif target==0x50165d0:
            value=self.big('x1','x2')
            for j in range(0,40,8):self.write(self.player+40+j,8,0)
            self.write(self.player+40,8,Wrapped(value,'SilentBigInt'))
        elif target==0x4d59090:
            assert self.reg('w1')==9;self.setfp('s0',self.fixture['spiritValues']['9'])
        elif target==0x5040758:self.put('w0',int(self.fixture['gameMode'] in [19,20]))
        elif target in [0x9a03290,0x9a04f90]:self.put('w0',int((self.reg('x0')!=self.reg('x1')) if target==0x9a03290 else (self.reg('x0')==self.reg('x1'))))
        elif target==0x9d6b950:
            frac,integer=math.modf(self.fp('d0'));self.write(self.reg('x0'),8,int.from_bytes(struct.pack('<d',integer),'little'));self.setfp('d0',frac)
        elif target==0x53f5ddc:self.put('x0',0xffff0020)
        elif target==0x53f8428:self.setfp('s0',self.fixture['wishValues'][str(signed(self.reg('w1'),32))])
        elif target in [0x818e878,0x81fe59c]:
            dictionary=self.native_dicts[self.reg('x0')];ptr=self.reg('x8');self.enumerators[ptr]={'dictionary':dictionary,'index':0}
            for j in range(0,40,8):self.write(ptr+j,8,0)
        elif target in [0x645d2d4,0x646a904]:
            ptr=self.reg('x0');state=self.enumerators[ptr];vals=state['dictionary']['values'];idx=state['index']
            if idx>=len(vals):self.put('w0',0)
            else:
                value=vals[idx]
                bits=int.from_bytes(struct.pack('<f',f32(value)),'little') if state['dictionary']['kind']=='float' else int(value)
                self.write(ptr+24,8,bits);state['index']+=1;self.put('w0',1)
        elif target in [0x645d3f8,0x646aa30]:pass
        elif target==0x4590be8:
            ptr=self.alloc(24);self.write(ptr,8,self.reg('x0'));self.write(ptr+16,4,self.read(self.reg('x1'),4));self.put('x0',ptr)
        elif target==0x8eafa00:self.put('w0',int(self.read(self.reg('x0')+16,4)==self.read(self.reg('x1')+16,4)))
        elif target==0xffff0001:self.effects.append('playerHpUpdate.Invoke')
        elif target==0x4ef20c4:self.effects.append('SetHpBar_Effect_FillAmount')
        else:raise NotImplementedError(f'Unmodeled call {target:#x}')
    GETTERS={0x4eeef44:('atkBase','SilentLong'),0x4eef944:('atkEquipment','SilentLong'),0x4eef484:('atkAdd','SilentLong'),
      0x4eefb30:('atkClass','SilentLong'),0x4eef318:('atkTotal','SilentLong'),0x4eefeec:('criticalDamage','SilentLong'),
      0x4eefe00:('criticalProbability','float'),0x4ef02cc:('superCriticalDamage','SilentLong'),
      0x4ef0d74:('hpBase','long'),0x4ef1660:('hpClass','long'),0x4ef1050:('hpAccessory','long'),
      0x4ef11dc:('hpAdd','int'),0x4ef18a4:('healBase','long'),0x4ef1a5c:('healAdd','int')}

    def run(self,entry,max_steps=20000,this_ptr=None):
        self.put('x0',self.player if this_ptr is None else this_ptr);pc=entry
        for step in range(max_steps):
            if pc==self.RETURN:return step
            assert pc in self.p.instructions,f'PC outside bounded methods: {pc:#x}'
            observer=getattr(self,'observe_instruction',None)
            if observer is not None:observer(pc)
            self.visited.add(pc);op,a,target,raw=self.p.instructions[pc];nextpc=pc+4
            try:
                if op in ['mov','movk']:
                    if op=='mov' and a[0].startswith('s') and re.fullmatch(r'v\d+\.s\[[01]\]',a[1]):
                        m=re.fullmatch(r'v(\d+)\.s\[([01])\]',a[1]);word=(self.v[int(m[1])][0]>>(32*int(m[2])))&0xffffffff;self.v[int(a[0][1:])]=(word,0)
                    elif op=='mov' and all(re.fullmatch(r'v\d+\.16b',r) for r in a):
                        self.v[int(a[0][1:].split('.')[0])]=self.vector(a[1])
                    elif op=='mov':self.put(a[0],self.reg(a[1]))
                    else:
                        shift=int(a[2].split('#')[1]) if len(a)>2 else 0
                        self.put(a[0],(self.reg(a[0])&~(65535<<shift))|(self.reg(a[1])<<shift))
                elif op in ['add','sub','madd','subs','adds']:
                    b,c=self.reg(a[1]),self.reg(a[2])
                    if len(a)>3 and op!='madd':
                        if a[3].startswith('sxtw'):c=signed(c,32)<<(int(a[3].split('#')[1]) if '#' in a[3] else 0)
                        elif a[3].startswith('uxtw #'):c=(c&0xffffffff)<<int(a[3].split('#')[1])
                        elif a[3].startswith('lsl #'):c<<=int(a[3].split('#')[1])
                        elif a[3].startswith('lsr #'):c>>=int(a[3].split('#')[1])
                        else:raise NotImplementedError(raw)
                    value=b+c if op in ['add','adds'] else b-c if op in ['sub','subs'] else b*c+self.reg(a[3])
                    if op=='subs':self.compare(b,c,32 if a[0].startswith('w') else 64)
                    elif op=='adds':raise NotImplementedError('Addition flags are not modeled')
                    self.put(a[0],value)
                elif op in ['mul','smull','smulh','umull']:
                    b,c=self.reg(a[1]),self.reg(a[2])
                    if op=='umull':assert a[0].startswith('x') and all(r.startswith('w') for r in a[1:]),raw
                    value=(signed(b,32)*signed(c,32)) if op=='smull' else (signed(b,64)*signed(c,64))>>64 if op=='smulh' else b*c
                    self.put(a[0],value)
                elif op in ['lsr','asr']:
                    bits=32 if a[0].startswith('w') else 64
                    value=self.reg(a[1]) if op=='lsr' else signed(self.reg(a[1]),bits)
                    self.put(a[0],value>>self.reg(a[2]))
                elif op=='sxtw':self.put(a[0],signed(self.reg(a[1]),32))
                elif op=='and':self.put(a[0],self.reg(a[1])&self.reg(a[2]))
                elif op=='orr':self.put(a[0],self.reg(a[1])|self.reg(a[2]))
                elif op in ['ubfx','bfxil']:
                    mask=(1<<self.reg(a[3]))-1;value=(self.reg(a[1])>>self.reg(a[2]))&mask
                    self.put(a[0],value if op=='ubfx' else (self.reg(a[0])&~mask)|value)
                elif op=='bic':
                    bits=32 if a[0].startswith('w') else 64;c=self.reg(a[2])
                    if len(a)>3:
                        if not a[3].startswith('asr #'):raise NotImplementedError(raw)
                        c=signed(c,bits)>>int(a[3].split('#')[1])
                    self.put(a[0],self.reg(a[1])&~c)
                elif op=='adrp':self.put(a[0],target)
                elif op in ['ldr','str','ldur','stur','ldrb','strb','ldurb','sturb','ldrh','ldrsw','ldp','stp']:
                    pair=op in ['ldp','stp'];mem_index=2 if pair else 1;addr,base=self.address(a[mem_index])
                    load=op.startswith('ld')
                    if op=='ldrsw':self.put(a[0],signed(self.read(addr,4),32))
                    elif op=='ldrh':self.put(a[0],self.read(addr,2))
                    elif op in ['ldrb','strb','ldurb','sturb']:
                        if load:self.put(a[0],self.read(addr,1))
                        else:self.write(addr,1,self.reg(a[0]))
                    else:
                        (self.load if load else self.save)(a[0],addr)
                        if pair:(self.load if load else self.save)(a[1],addr+(16 if a[0].startswith('q') else 4 if a[0][0] in 'sw' else 8))
                    if len(a)>mem_index+1:self.put(base,self.reg(base)+self.reg(a[mem_index+1]))
                elif op=='dup':
                    assert a[0].endswith('.2s') and a[1].startswith('w'),raw;word=self.reg(a[1]);self.v[int(a[0][1:].split('.')[0])]=(word|(word<<32),0)
                elif op=='movi':
                    if re.fullmatch('#0+',a[1]):self.v[int(re.search(r'\d+',a[0])[0])]=(0,0)
                    else:
                        assert a[0].endswith('.2s') and len(a)==3 and a[2].startswith('lsl #'),raw
                        word=self.reg(a[1])<<int(a[2].split('#')[1]);self.v[int(re.search(r'\d+',a[0])[0])]=(word|(word<<32),0)
                elif op=='fmov':
                    dst,src=a[0],a[1]
                    if src.startswith('#'):self.setfp(dst,float(src[1:]))
                    elif dst[0] in 'sd' and src[0] in 'sd':self.setfp(dst,self.fp(src))
                    elif dst[0] in 'sd':
                        bits=32 if dst[0]=='s' else 64;self.setfp(dst,struct.unpack('<f' if bits==32 else '<d',(self.reg(src)&((1<<bits)-1)).to_bytes(bits//8,'little'))[0])
                    else:self.put(dst,self.vector(src)[0])
                elif op in ['fadd','fsub','fmul','fdiv']:
                    if a[0].startswith('v'):
                        assert all(re.fullmatch(r'v\d+\.2s',r) for r in a[:2]),raw
                        def lanes(r):return struct.unpack('<ff',self.vector(r)[0].to_bytes(8,'little'))
                        if re.fullmatch(r'v\d+\.2s',a[2]) and op in ['fadd','fmul']:
                            right=lanes(a[2])
                        elif re.fullmatch(r'v\d+\.s\[0\]',a[2]) and op=='fmul':
                            right=(lanes(a[2])[0],)*2
                        else:raise NotImplementedError(raw)
                        values=[f32(x+y if op=='fadd' else x*y) for x,y in zip(lanes(a[1]),right)]
                        self.v[int(a[0][1:].split('.')[0])]=(int.from_bytes(struct.pack('<ff',*values),'little'),0)
                    else:
                        b,c=self.fp(a[1]),self.fp(a[2])
                        value=b+c if op=='fadd' else b-c if op=='fsub' else b*c if op=='fmul' else b/c if c else math.nan if b==0 else math.copysign(math.inf,b*math.copysign(1,c))
                        self.setfp(a[0],value)
                elif op=='fcvt':self.setfp(a[0],self.fp(a[1]))
                elif op=='scvtf':self.setfp(a[0],signed(self.vector(a[1])[0] if a[1][0] in 'sd' else self.reg(a[1]),32 if a[1][0] in 'ws' else 64))
                elif op in ['fcvtzs','fcvtps']:
                    value=self.fp(a[1])
                    if op=='fcvtps' and math.isfinite(value):value=math.ceil(value)
                    value=convert(value,32 if a[0][0] in 'ws' else 64)
                    if a[0][0]=='s':self.v[int(a[0][1:])]=(value&0xffffffff,0)
                    else:self.put(a[0],value)
                elif op in ['frintp','frintm']:
                    v=self.fp(a[1]);self.setfp(a[0],(math.ceil(v) if op=='frintp' else math.floor(v)) if math.isfinite(v) else v)
                elif op in ['cmp','cmn','fcmp','tst']:
                    if op=='fcmp':b=self.fp(a[1]) if not a[1].startswith('#') else float(a[1][1:]);self.compare(self.fp(a[0]),b)
                    elif op=='cmp':bits=32 if a[0][0]=='w' else 64;self.compare(signed(self.reg(a[0]),bits),signed(self.reg(a[1]),bits),bits)
                    elif op=='cmn':
                        bits=32 if a[0][0]=='w' else 64;mask=(1<<bits)-1;b=self.reg(a[0])&mask;c=self.reg(a[1])&mask;value=(b+c)&mask
                        self.eq=value==0;self.negative=bool(value&(1<<(bits-1)));self.carry=b+c>mask;self.overflow=bool((~(b^c)&(b^value))&(1<<(bits-1)));self.unordered=False
                    else:self.compare(signed(self.reg(a[0])&self.reg(a[1]),32 if a[0][0]=='w' else 64),0,32 if a[0][0]=='w' else 64)
                elif op in ['csel','fcsel','csinc']:
                    src=a[1] if self.cond(a[3]) else a[2]
                    if op in ['csel','csinc']:self.put(a[0],self.reg(src)+(1 if op=='csinc' and not self.cond(a[3]) else 0))
                    else:self.setfp(a[0],self.fp(src))
                elif op=='cset':self.put(a[0],int(self.cond(a[1])))
                elif op=='cinc':self.put(a[0],self.reg(a[1])+int(self.cond(a[2])))
                elif op in ['cbz','cbnz','tbz','tbnz'] or op.startswith('b.'):
                    if op in ['cbz','cbnz']:take=(self.reg(a[0])==0) if op=='cbz' else (self.reg(a[0])!=0)
                    elif op in ['tbz','tbnz']:
                        bit=(self.reg(a[0])>>self.reg(a[1]))&1;take=not bit if op=='tbz' else bool(bit)
                    else:take=self.cond(op[2:])
                    self.branches[(pc,bool(take))]=self.branches.get((pc,bool(take)),0)+1
                    if take:nextpc=target
                elif op in ['bl','blr','b','br']:
                    dest=self.reg(a[0]) if op in ['blr','br'] else target
                    if op in ['bl','blr']:self.put('x30',nextpc)
                    if dest in self.p.instructions:nextpc=dest
                    elif op in ['b','br']:self.hook(dest);nextpc=self.reg('x30')
                    else:self.hook(dest)
                elif op=='ret':nextpc=self.reg('x30')
                else:raise NotImplementedError(raw)
            except Exception as exc:raise RuntimeError(f'{pc:#x}: {raw}: {exc}') from exc
            pc=nextpc
        raise RuntimeError('Bounded instruction step limit exceeded')
    def result(self,hp=False):
        if hp:
            w=self.read(self.player+40,8);assert isinstance(w,Wrapped)
            return {'Hp_max':str(w.value),'Heal':str(self.read(self.player+1792,8).value),'effects':self.effects}
        result={}
        for name,offset in [('NormalDmg',744),('CriticalDmg',784),('SuperCriticalDmg',824)]:
            w=self.read(self.player+offset,8);assert isinstance(w,Wrapped),(name,w);result[name]=str(w.value)
        result['BestDmg']=str(self.read(self.player+1632,8).value);return result
