#!/usr/bin/env python3
"""Bounded scalar ARM64 instruction interpreter for selected arithmetic blocks.
This is not an ARM emulator. It does not execute the APK/native library or
validate entire methods. BigInteger calls are modeled with Python integers.
Unsupported instructions/calls fail closed. Stack restorations are ignored only
in selected tails after their arguments have been copied to x0..x4.
"""
from dataclasses import dataclass
import math, re, struct

def f32(x):
    try:return struct.unpack('<f',struct.pack('<f',x))[0]
    except OverflowError:return math.copysign(math.inf,x)
def signed(x,bits):
    x=int(x)&((1<<bits)-1)
    return x-(1<<bits) if x&(1<<(bits-1)) else x
def truncdiv(a,b):
    assert b
    return (abs(a)//abs(b))*(-1 if (a<0)!=(b<0) else 1)
def fcvtzs(x,bits):
    if math.isnan(x):return 0
    lo,hi=-(1<<(bits-1)),(1<<(bits-1))-1
    return lo if x<=lo else hi if x>=hi else math.trunc(x)

@dataclass(frozen=True)
class Part:
    value:int
    part:int

class Oracle:
    def __init__(self,random_unit=None,extra_float_calls=None):
        self.x={};self.f={};self.eq=False;self.lt=False;self.random_unit=random_unit
        self.extra_float_calls=extra_float_calls or {};self.last_long=None
    def get(self,r):
        r=r.strip()
        if r=='sp':return 0x10000000
        if r.startswith('#'):return int(r[1:],0) if not re.fullmatch(r'#0+',r) else 0
        if r in ['wzr','xzr']:return 0
        value=self.x.get(int(r[1:]),0)
        if r.startswith('w'):
            assert not isinstance(value,Part)
            return value&0xffffffff
        return value
    def put(self,r,v):
        if r in ['xzr','wzr']:return
        if isinstance(v,Part):assert r.startswith('x')
        else:v=int(v)&((1<<(32 if r.startswith('w') else 64))-1)
        self.x[int(r[1:])]=v
    def fp(self,r):return self.f.get(int(r[1:]),0.0)
    def setfp(self,r,v):self.f[int(r[1:])]=f32(v) if r.startswith('s') else float(v)
    def pair(self,low,high,value):
        self.put(low,Part(int(value),0));self.put(high,Part(int(value),1))
    def big(self,a,b):
        lo,hi=self.get(a),self.get(b)
        assert isinstance(lo,Part) and isinstance(hi,Part) and lo.value==hi.value and (lo.part,hi.part)==(0,1),(a,b,lo,hi)
        return lo.value
    def call(self,address):
        if address in [0x917cfa4,0x917c91c]:
            v=signed(self.get('w0' if address==0x917cfa4 else 'x0'),32 if address==0x917cfa4 else 64)
            self.pair('x0','x1',v)
        elif address in [0x917a844,0x917aa38,0x917e6cc,0x917e64c]:
            a,b=self.big('x0','x1'),self.big('x2','x3')
            if address==0x917a844:self.pair('x0','x1',a*b)
            elif address==0x917aa38:self.pair('x0','x1',truncdiv(a,b))
            elif address==0x917e6cc:self.put('w0',int(a>b))
            else:self.put('w0',int(a<=b))
        elif address==0x99fb5c0:
            assert self.random_unit is not None
            self.setfp('s0',self.random_unit)
        elif address==0x4b5279c:
            self.last_long=signed(self.get('x1'),64)
        elif address in self.extra_float_calls:
            self.setfp('s0',self.extra_float_calls[address])
        else:raise NotImplementedError(f'External call {address:#x}')
    def run(self,assembly,start,end,result_big=True,result_kind=None,result_register=None):
        count=0
        for line in assembly.splitlines():
            pc=int(line.split()[0],16)
            if not start<=pc<=end:continue
            count+=1
            raw=line.split(';')[0].split(None,1)[1].strip()
            op,operand=raw.split(None,1);args=[v.strip() for v in operand.split(',')]
            a=args[0]
            if op=='mov':self.put(a,self.get(args[1]))
            elif op=='movk':
                shift=int(args[2].split('#')[1]) if len(args)>2 else 0
                self.put(a,(self.get(a)&~(65535<<shift)) | (self.get(args[1])<<shift))
            elif op in ['add','sub','mul','madd']:
                b,c=self.get(args[1]),self.get(args[2])
                if len(args)>3 and op!='madd':
                    modifier=args[3]
                    if modifier=='sxtw':c=signed(c,32)
                    elif modifier.startswith('lsr #'):c>>=int(modifier.split('#')[1])
                    else:raise NotImplementedError(raw)
                v=b+c if op=='add' else b-c if op=='sub' else b*c
                if op=='madd':v+=self.get(args[3])
                self.put(a,v)
            elif op=='smulh':self.put(a,(signed(self.get(args[1]),64)*signed(self.get(args[2]),64))>>64)
            elif op in ['asr','lsr']:
                v=self.get(args[1]);bits=32 if a.startswith('w') else 64
                self.put(a,(signed(v,bits) if op=='asr' else v)>>self.get(args[2]))
            elif op=='sxtw':self.put(a,signed(self.get(args[1]),32))
            elif op=='movi':
                # Only the zero-vector/scalar instruction present in MissProbability.
                assert re.fullmatch('#0+',args[1]),raw
                self.setfp(a,0.0)
            elif op=='fmov':
                b=args[1]
                if b.startswith('#'):self.setfp(a,float(b[1:]))
                elif a[0] in 'sd' and b[0] in 'sd':self.setfp(a,self.fp(b))
                elif a[0] in 'sd':
                    bits=32 if a.startswith('s') else 64
                    self.setfp(a,struct.unpack('<f' if bits==32 else '<d',int(self.get(b)).to_bytes(bits//8,'little'))[0])
                else:
                    self.put(a,int.from_bytes(struct.pack('<f' if b.startswith('s') else '<d',self.fp(b)),'little'))
            elif op in ['fadd','fsub','fmul','fdiv']:
                b,c=self.fp(args[1]),self.fp(args[2])
                if op=='fdiv':v=b/c if c else math.nan if b==0 else math.copysign(math.inf,b*c if c else b)
                else:v=b+c if op=='fadd' else b-c if op=='fsub' else b*c
                self.setfp(a,v)
            elif op=='scvtf':self.setfp(a,signed(self.get(args[1]),32 if args[1].startswith('w') else 64))
            elif op=='fcvt':self.setfp(a,self.fp(args[1]))
            elif op in ['frintp','frintm']:
                v=self.fp(args[1])
                self.setfp(a,(math.ceil(v) if op=='frintp' else math.floor(v)) if math.isfinite(v) else v)
            elif op=='fcvtzs':self.put(a,fcvtzs(self.fp(args[1]),32 if a.startswith('w') else 64))
            elif op=='fcmp':
                b=self.fp(args[1]) if not args[1].startswith('#') else float(args[1][1:])
                self.eq=self.fp(a)==b;self.lt=self.fp(a)<b
            elif op=='csel':
                assert args[3]=='eq',raw
                self.put(a,self.get(args[1] if self.eq else args[2]))
            elif op=='cset':
                assert args[1]=='mi',raw
                self.put(a,int(self.lt))
            elif op in ['b','bl']:
                m=re.search(r'-> (0x[0-9a-f]+)',line);assert m,line
                self.call(int(m[1],16))
            elif op in ['ldr','ldp']:
                ignored_metadata_loads={0x4eef7b8:'ldr\tx1, [x26]',0x4ef152c:'ldr\tx1, [x25]',0x4ef1d80:'ldr\tx1, [x25]'}
                assert '[sp' in raw or ignored_metadata_loads.get(pc)==raw,raw
            elif op=='str':
                assert raw=='str\txzr, [sp, #80]',raw
            else:raise NotImplementedError(f'{pc:#x}: {raw}')
        assert count==(end-start)//4+1,(count,start,end)
        if result_kind=='captured_long':result=self.last_long;assert result is not None
        elif result_kind in ['s64','s32']:result=signed(self.get(result_register or ('x0' if result_kind=='s64' else 'w0')),64 if result_kind=='s64' else 32)
        elif result_kind in ['f32','f64']:result=self.fp(result_register or ('s0' if result_kind=='f32' else 'd0'))
        else:result=self.big('x0','x1') if result_big else bool(self.get('w0'))
        return result,count
