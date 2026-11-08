00506eabc 	sub	sp, sp, #144
00506eac0 	stp	d15, d14, [sp, #32]
00506eac4 	stp	d13, d12, [sp, #48]
00506eac8 	stp	d11, d10, [sp, #64]
00506eacc 	stp	d9, d8, [sp, #80]
00506ead0 	str	x30, [sp, #96]
00506ead4 	stp	x22, x21, [sp, #112]
00506ead8 	stp	x20, x19, [sp, #128]
00506eadc 	adrp	x20, #95846400 ; -> 0xabd6000 
00506eae0 	mov	x19, x0
00506eae4 	ldrb	w8, [x20, #163]
00506eae8 	tbnz	w8, #0, #96 ; -> 0x506eb48 
00506eaec 	adrp	x0, #87527424 ; -> 0xa3e7000 
00506eaf0 	ldr	x0, [x0, #2992]
00506eaf4 	bl	#-11395220 ; -> 0x4590a60 
00506eaf8 	adrp	x0, #87826432 ; -> 0xa430000 
00506eafc 	ldr	x0, [x0, #1192]
00506eb00 	bl	#-11395232 ; -> 0x4590a60 
00506eb04 	adrp	x0, #87834624 ; -> 0xa432000 
00506eb08 	ldr	x0, [x0, #1616]
00506eb0c 	bl	#-11395244 ; -> 0x4590a60 
00506eb10 	adrp	x0, #87834624 ; -> 0xa432000 
00506eb14 	ldr	x0, [x0, #1624]
00506eb18 	bl	#-11395256 ; -> 0x4590a60 
00506eb1c 	adrp	x0, #87543808 ; -> 0xa3eb000 
00506eb20 	ldr	x0, [x0, #1360]
00506eb24 	bl	#-11395268 ; -> 0x4590a60 
00506eb28 	adrp	x0, #87560192 ; -> 0xa3ef000 
00506eb2c 	ldr	x0, [x0, #1528]
00506eb30 	bl	#-11395280 ; -> 0x4590a60 
00506eb34 	adrp	x0, #87543808 ; -> 0xa3eb000 
00506eb38 	ldr	x0, [x0, #1384]
00506eb3c 	bl	#-11395292 ; -> 0x4590a60 
00506eb40 	mov	w8, #1
00506eb44 	strb	w8, [x20, #163]
00506eb48 	mov	w0, #37468
00506eb4c 	mov	x1, xzr
00506eb50 	bl	#-4355500 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00506eb54 	tbz	w0, #0, #64 ; -> 0x506eb94 
00506eb58 	mov	w0, #37468
00506eb5c 	mov	x1, xzr
00506eb60 	bl	#-4355336 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00506eb64 	cbz	x0, #1876 ; -> 0x506f2b8 
00506eb68 	mov	x1, x19
00506eb6c 	ldp	x20, x19, [sp, #128]
00506eb70 	ldp	x22, x21, [sp, #112]
00506eb74 	mov	x2, xzr
00506eb78 	ldp	d9, d8, [sp, #80]
00506eb7c 	ldr	x30, [sp, #96]
00506eb80 	ldp	d11, d10, [sp, #64]
00506eb84 	ldp	d13, d12, [sp, #48]
00506eb88 	ldp	d15, d14, [sp, #32]
00506eb8c 	add	sp, sp, #144
00506eb90 	b	#-5178992 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00506eb94 	ldr	w8, [x19, #72]
00506eb98 	cmp	w8, #2
00506eb9c 	b.gt	#252 ; -> 0x506ec98 
00506eba0 	cbz	w8, #560 ; -> 0x506edd0 
00506eba4 	cmp	w8, #1
00506eba8 	b.eq	#12 ; -> 0x506ebb4 
00506ebac 	cmp	w8, #2
00506ebb0 	b.ne	#1220 ; -> 0x506f074 
00506ebb4 	fmov	s0, #5.00000000
00506ebb8 	fmov	s1, #20.00000000
00506ebbc 	mov	x0, xzr
00506ebc0 	bl	#77122048 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ebc4 	str	s0, [x19, #128]
00506ebc8 	fmov	s0, #1.00000000
00506ebcc 	fmov	s1, #8.00000000
00506ebd0 	mov	x0, xzr
00506ebd4 	bl	#77122028 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ebd8 	adrp	x20, #95834112 ; -> 0xabd3000 
00506ebdc 	str	s0, [x19, #132]
00506ebe0 	ldrb	w8, [x20, #1724]
00506ebe4 	cbnz	w8, #24 ; -> 0x506ebfc 
00506ebe8 	adrp	x0, #87531520 ; -> 0xa3e8000 
00506ebec 	ldr	x0, [x0, #632]
00506ebf0 	bl	#-11395472 ; -> 0x4590a60 
00506ebf4 	mov	w8, #1
00506ebf8 	strb	w8, [x20, #1724]
00506ebfc 	adrp	x20, #87531520 ; -> 0xa3e8000 
00506ec00 	adrp	x21, #95813632 ; -> 0xabce000 
00506ec04 	ldr	x20, [x20, #632]
00506ec08 	ldrb	w9, [x21, #2298]
00506ec0c 	ldr	s0, [x19, #128]
00506ec10 	ldr	x8, [x20]
00506ec14 	str	q0, [sp, #16]
00506ec18 	ldr	x8, [x8, #184]
00506ec1c 	ldur	d8, [x8, #60]
00506ec20 	ldr	s9, [x8, #68]
00506ec24 	cbnz	w9, #28 ; -> 0x506ec40 
00506ec28 	mov	x0, x20
00506ec2c 	bl	#-11395532 ; -> 0x4590a60 
00506ec30 	ldr	x8, [x20]
00506ec34 	mov	w9, #1
00506ec38 	strb	w9, [x21, #2298]
00506ec3c 	ldr	x8, [x8, #184]
00506ec40 	movi	d0, #0000000000000000
00506ec44 	fmov	s1, #3.00000000
00506ec48 	ldr	d10, [x8, #24]
00506ec4c 	ldr	s11, [x8, #32]
00506ec50 	mov	x0, xzr
00506ec54 	bl	#77121900 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ec58 	ldr	x20, [x19, #64]
00506ec5c 	cbz	x20, #1628 ; -> 0x506f2b8 
00506ec60 	ldr	q3, [sp, #16]
00506ec64 	fmul	s2, s11, s0
00506ec68 	mov	x0, x20
00506ec6c 	mov	x1, xzr
00506ec70 	fmul	v10.2s, v10.2s, v0.s[0]
00506ec74 	fmul	s1, s9, s3
00506ec78 	fmul	v8.2s, v8.2s, v3.s[0]
00506ec7c 	fadd	s9, s1, s2
00506ec80 	bl	#77218988 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506ec84 	fadd	v3.2s, v8.2s, v10.2s
00506ec88 	fadd	s2, s9, s2
00506ec8c 	fmov	s4, #1.00000000
00506ec90 	mov	v0.s[1], v1.s[0]
00506ec94 	b	#832 ; -> 0x506efd4 
00506ec98 	cmp	w8, #3
00506ec9c 	b.eq	#596 ; -> 0x506eef0 
00506eca0 	cmp	w8, #4
00506eca4 	b.eq	#1012 ; -> 0x506f098 
00506eca8 	cmp	w8, #5
00506ecac 	b.ne	#968 ; -> 0x506f074 
00506ecb0 	mov	w0, #7
00506ecb4 	mov	w1, #35
00506ecb8 	mov	x2, xzr
00506ecbc 	bl	#77121860 ; -> 0x99fb600 UnityEngine.Random::Range
00506ecc0 	scvtf	s0, w0
00506ecc4 	mov	w0, #2
00506ecc8 	mov	w1, #14
00506eccc 	mov	x2, xzr
00506ecd0 	str	s0, [x19, #128]
00506ecd4 	bl	#77121836 ; -> 0x99fb600 UnityEngine.Random::Range
00506ecd8 	scvtf	s0, w0
00506ecdc 	mov	x0, xzr
00506ece0 	str	s0, [x19, #132]
00506ece4 	bl	#-2046644 ; -> 0x4e7b230 
00506ece8 	ldr	s11, [x19, #128]
00506ecec 	mov	x0, xzr
00506ecf0 	str	s0, [sp, #16]
00506ecf4 	stp	s1, s2, [sp, #104]
00506ecf8 	bl	#-2046596 ; -> 0x4e7b274 
00506ecfc 	str	s0, [sp, #12]
00506ed00 	movi	d0, #0000000000000000
00506ed04 	fmov	s13, s1
00506ed08 	fmov	s1, #6.00000000
00506ed0c 	mov	x0, xzr
00506ed10 	fmov	s12, s2
00506ed14 	bl	#77121708 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ed18 	ldr	x20, [x19, #64]
00506ed1c 	cbz	x20, #1436 ; -> 0x506f2b8 
00506ed20 	adrp	x8, #87826432 ; -> 0xa430000 
00506ed24 	mov	x0, x20
00506ed28 	mov	x1, xzr
00506ed2c 	ldr	x8, [x8, #1192]
00506ed30 	fmov	s15, s0
00506ed34 	ldr	x8, [x8]
00506ed38 	ldr	x8, [x8, #184]
00506ed3c 	ldr	x21, [x8]
00506ed40 	bl	#77218796 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506ed44 	adrp	x8, #87527424 ; -> 0xa3e7000 
00506ed48 	ldr	s14, [x19, #132]
00506ed4c 	fmov	s8, s0
00506ed50 	ldr	x8, [x8, #2992]
00506ed54 	fmov	s9, s1
00506ed58 	fmov	s10, s2
00506ed5c 	ldr	x0, [x8]
00506ed60 	bl	#-11395172 ; -> 0x4590cfc 
00506ed64 	adrp	x8, #87834624 ; -> 0xa432000 
00506ed68 	mov	x1, x19
00506ed6c 	mov	x3, xzr
00506ed70 	ldr	x8, [x8, #1624]
00506ed74 	mov	x22, x0
00506ed78 	ldr	x2, [x8]
00506ed7c 	bl	#64363744 ; -> 0x8dd0a5c System.Action::.ctor
00506ed80 	cbz	x21, #1336 ; -> 0x506f2b8 
00506ed84 	ldp	s0, s4, [sp, #104]
00506ed88 	fmul	s1, s13, s15
00506ed8c 	ldp	s3, s2, [sp, #12]
00506ed90 	fmul	s5, s12, s15
00506ed94 	mov	x0, x21
00506ed98 	mov	x1, x20
00506ed9c 	fmul	s0, s0, s11
00506eda0 	fmul	s4, s4, s11
00506eda4 	fmul	s2, s2, s11
00506eda8 	fmul	s3, s3, s15
00506edac 	fadd	s0, s0, s1
00506edb0 	fadd	s2, s2, s3
00506edb4 	fadd	s3, s4, s5
00506edb8 	fmov	s4, #1.00000000
00506edbc 	fadd	s1, s0, s9
00506edc0 	fadd	s0, s2, s8
00506edc4 	fadd	s2, s3, s10
00506edc8 	fmov	s3, s14
00506edcc 	b	#996 ; -> 0x506f1b0 
00506edd0 	ldr	w8, [x19, #76]
00506edd4 	cmp	w8, #99
00506edd8 	b.le	#1024 ; -> 0x506f1d8 
00506eddc 	fmov	s0, #4.00000000
00506ede0 	fmov	s1, #5.00000000
00506ede4 	mov	x0, xzr
00506ede8 	bl	#77121496 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506edec 	str	s0, [x19, #128]
00506edf0 	fmov	s0, #1.00000000
00506edf4 	fmov	s1, #2.00000000
00506edf8 	mov	x0, xzr
00506edfc 	bl	#77121476 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ee00 	adrp	x20, #95834112 ; -> 0xabd3000 
00506ee04 	str	s0, [x19, #132]
00506ee08 	ldrb	w8, [x20, #1724]
00506ee0c 	cbnz	w8, #24 ; -> 0x506ee24 
00506ee10 	adrp	x0, #87531520 ; -> 0xa3e8000 
00506ee14 	ldr	x0, [x0, #632]
00506ee18 	bl	#-11396024 ; -> 0x4590a60 
00506ee1c 	mov	w8, #1
00506ee20 	strb	w8, [x20, #1724]
00506ee24 	ldr	x20, [x19, #64]
00506ee28 	cbz	x20, #1168 ; -> 0x506f2b8 
00506ee2c 	adrp	x8, #87531520 ; -> 0xa3e8000 
00506ee30 	mov	x0, x20
00506ee34 	mov	x1, xzr
00506ee38 	ldr	x8, [x8, #632]
00506ee3c 	ldr	s0, [x19, #128]
00506ee40 	ldr	x8, [x8]
00506ee44 	ldr	x8, [x8, #184]
00506ee48 	ldp	s2, s1, [x8, #64]
00506ee4c 	ldr	s3, [x8, #60]
00506ee50 	fmul	s10, s0, s3
00506ee54 	fmul	s8, s1, s0
00506ee58 	fmul	s9, s0, s2
00506ee5c 	bl	#77218512 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506ee60 	fadd	s0, s10, s0
00506ee64 	fadd	s1, s9, s1
00506ee68 	adrp	x8, #-51662848 ; -> 0x1f29000 
00506ee6c 	fadd	s2, s8, s2
00506ee70 	ldr	s3, [x19, #132]
00506ee74 	ldr	s4, [x8, #2368]
00506ee78 	mov	x0, x20
00506ee7c 	mov	w1, wzr
00506ee80 	mov	w2, wzr
00506ee84 	mov	x3, xzr
00506ee88 	bl	#9294036 ; -> 0x594bf5c DG.Tweening.ShortcutExtensions::DOJump
00506ee8c 	adrp	x8, #87543808 ; -> 0xa3eb000 
00506ee90 	mov	w1, #1
00506ee94 	ldr	x8, [x8, #1384]
00506ee98 	ldr	x2, [x8]
00506ee9c 	bl	#17719132 ; -> 0x6154df8 
00506eea0 	adrp	x8, #87543808 ; -> 0xa3eb000 
00506eea4 	mov	x20, x0
00506eea8 	ldr	x8, [x8, #1360]
00506eeac 	ldr	x8, [x8]
00506eeb0 	mov	x0, x8
00506eeb4 	bl	#-11395512 ; -> 0x4590cfc 
00506eeb8 	adrp	x8, #87834624 ; -> 0xa432000 
00506eebc 	mov	x1, x19
00506eec0 	mov	x3, xzr
00506eec4 	ldr	x8, [x8, #1616]
00506eec8 	mov	x21, x0
00506eecc 	ldr	x2, [x8]
00506eed0 	bl	#9229320 ; -> 0x593c2d8 DG.Tweening.TweenCallback::.ctor
00506eed4 	adrp	x8, #87560192 ; -> 0xa3ef000 
00506eed8 	mov	x0, x20
00506eedc 	mov	x1, x21
00506eee0 	ldr	x8, [x8, #1528]
00506eee4 	ldr	x2, [x8]
00506eee8 	bl	#17717104 ; -> 0x6154658 
00506eeec 	b	#932 ; -> 0x506f290 
00506eef0 	fmov	s0, #2.00000000
00506eef4 	fmov	s1, #6.00000000
00506eef8 	mov	x0, xzr
00506eefc 	bl	#77121220 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ef00 	str	s0, [x19, #128]
00506ef04 	fmov	s0, #1.00000000
00506ef08 	fmov	s1, #5.00000000
00506ef0c 	mov	x0, xzr
00506ef10 	bl	#77121200 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ef14 	adrp	x20, #95834112 ; -> 0xabd3000 
00506ef18 	str	s0, [x19, #132]
00506ef1c 	ldrb	w8, [x20, #1724]
00506ef20 	cbnz	w8, #24 ; -> 0x506ef38 
00506ef24 	adrp	x0, #87531520 ; -> 0xa3e8000 
00506ef28 	ldr	x0, [x0, #632]
00506ef2c 	bl	#-11396300 ; -> 0x4590a60 
00506ef30 	mov	w8, #1
00506ef34 	strb	w8, [x20, #1724]
00506ef38 	adrp	x20, #87531520 ; -> 0xa3e8000 
00506ef3c 	adrp	x21, #95813632 ; -> 0xabce000 
00506ef40 	ldr	x20, [x20, #632]
00506ef44 	ldrb	w9, [x21, #2298]
00506ef48 	ldr	s0, [x19, #128]
00506ef4c 	ldr	x8, [x20]
00506ef50 	str	q0, [sp, #16]
00506ef54 	ldr	x8, [x8, #184]
00506ef58 	ldur	d8, [x8, #60]
00506ef5c 	ldr	s9, [x8, #68]
00506ef60 	cbnz	w9, #28 ; -> 0x506ef7c 
00506ef64 	mov	x0, x20
00506ef68 	bl	#-11396360 ; -> 0x4590a60 
00506ef6c 	ldr	x8, [x20]
00506ef70 	mov	w9, #1
00506ef74 	strb	w9, [x21, #2298]
00506ef78 	ldr	x8, [x8, #184]
00506ef7c 	movi	d0, #0000000000000000
00506ef80 	fmov	s1, #3.00000000
00506ef84 	ldr	d10, [x8, #24]
00506ef88 	ldr	s11, [x8, #32]
00506ef8c 	mov	x0, xzr
00506ef90 	bl	#77121072 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506ef94 	ldr	x20, [x19, #64]
00506ef98 	cbz	x20, #800 ; -> 0x506f2b8 
00506ef9c 	ldr	q3, [sp, #16]
00506efa0 	fmul	s2, s11, s0
00506efa4 	mov	x0, x20
00506efa8 	mov	x1, xzr
00506efac 	fmul	v10.2s, v10.2s, v0.s[0]
00506efb0 	fmul	s1, s9, s3
00506efb4 	fmul	v8.2s, v8.2s, v3.s[0]
00506efb8 	fadd	s9, s1, s2
00506efbc 	bl	#77218160 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506efc0 	fadd	v3.2s, v8.2s, v10.2s
00506efc4 	adrp	x8, #-51662848 ; -> 0x1f29000 
00506efc8 	fadd	s2, s9, s2
00506efcc 	mov	v0.s[1], v1.s[0]
00506efd0 	ldr	s4, [x8, #2372]
00506efd4 	fadd	v0.2s, v3.2s, v0.2s
00506efd8 	ldr	s3, [x19, #132]
00506efdc 	mov	s1, v0.s[1]
00506efe0 	mov	x0, x20
00506efe4 	mov	w1, wzr
00506efe8 	mov	w2, wzr
00506efec 	mov	x3, xzr
00506eff0 	bl	#9293676 ; -> 0x594bf5c DG.Tweening.ShortcutExtensions::DOJump
00506eff4 	adrp	x8, #87543808 ; -> 0xa3eb000 
00506eff8 	mov	w1, #1
00506effc 	ldr	x8, [x8, #1384]
00506f000 	ldr	x2, [x8]
00506f004 	bl	#17718772 ; -> 0x6154df8 
00506f008 	adrp	x8, #87539712 ; -> 0xa3eb000 
00506f00c 	mov	x20, x0
00506f010 	ldr	x8, [x8, #1360]
00506f014 	ldr	x8, [x8]
00506f018 	mov	x0, x8
00506f01c 	bl	#-11395872 ; -> 0x4590cfc 
00506f020 	adrp	x8, #87830528 ; -> 0xa432000 
00506f024 	mov	x1, x19
00506f028 	mov	x3, xzr
00506f02c 	ldr	x8, [x8, #1624]
00506f030 	mov	x21, x0
00506f034 	ldr	x2, [x8]
00506f038 	bl	#9228960 ; -> 0x593c2d8 DG.Tweening.TweenCallback::.ctor
00506f03c 	adrp	x8, #87556096 ; -> 0xa3ef000 
00506f040 	mov	x0, x20
00506f044 	mov	x1, x21
00506f048 	ldr	x8, [x8, #1528]
00506f04c 	ldp	x20, x19, [sp, #128]
00506f050 	ldp	x22, x21, [sp, #112]
00506f054 	ldr	x30, [sp, #96]
00506f058 	ldp	d9, d8, [sp, #80]
00506f05c 	ldr	x2, [x8]
00506f060 	ldp	d11, d10, [sp, #64]
00506f064 	ldp	d13, d12, [sp, #48]
00506f068 	ldp	d15, d14, [sp, #32]
00506f06c 	add	sp, sp, #144
00506f070 	b	#17716712 ; -> 0x6154658 
00506f074 	ldp	x20, x19, [sp, #128]
00506f078 	ldr	x30, [sp, #96]
00506f07c 	ldp	x22, x21, [sp, #112]
00506f080 	ldp	d9, d8, [sp, #80]
00506f084 	ldp	d11, d10, [sp, #64]
00506f088 	ldp	d13, d12, [sp, #48]
00506f08c 	ldp	d15, d14, [sp, #32]
00506f090 	add	sp, sp, #144
00506f094 	ret
00506f098 	fmov	s0, #2.00000000
00506f09c 	fmov	s1, #6.00000000
00506f0a0 	mov	x0, xzr
00506f0a4 	bl	#77120796 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506f0a8 	str	s0, [x19, #128]
00506f0ac 	fmov	s0, #1.00000000
00506f0b0 	fmov	s1, #5.00000000
00506f0b4 	mov	x0, xzr
00506f0b8 	bl	#77120776 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506f0bc 	mov	x0, xzr
00506f0c0 	str	s0, [x19, #132]
00506f0c4 	bl	#-2047636 ; -> 0x4e7b230 
00506f0c8 	ldr	s11, [x19, #128]
00506f0cc 	mov	x0, xzr
00506f0d0 	stp	s2, s0, [sp, #12]
00506f0d4 	str	s1, [sp, #108]
00506f0d8 	bl	#-2047588 ; -> 0x4e7b274 
00506f0dc 	str	s0, [sp, #104]
00506f0e0 	movi	d0, #0000000000000000
00506f0e4 	fmov	s12, s1
00506f0e8 	fmov	s1, #3.00000000
00506f0ec 	mov	x0, xzr
00506f0f0 	fmov	s13, s2
00506f0f4 	bl	#77120716 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506f0f8 	ldr	x20, [x19, #64]
00506f0fc 	cbz	x20, #444 ; -> 0x506f2b8 
00506f100 	adrp	x8, #87822336 ; -> 0xa430000 
00506f104 	mov	x0, x20
00506f108 	mov	x1, xzr
00506f10c 	ldr	x8, [x8, #1192]
00506f110 	fmov	s14, s0
00506f114 	ldr	x8, [x8]
00506f118 	ldr	x8, [x8, #184]
00506f11c 	ldr	x21, [x8]
00506f120 	bl	#77217804 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506f124 	adrp	x8, #87523328 ; -> 0xa3e7000 
00506f128 	ldr	s15, [x19, #132]
00506f12c 	fmov	s8, s0
00506f130 	ldr	x8, [x8, #2992]
00506f134 	fmov	s9, s1
00506f138 	fmov	s10, s2
00506f13c 	ldr	x0, [x8]
00506f140 	bl	#-11396164 ; -> 0x4590cfc 
00506f144 	adrp	x8, #87830528 ; -> 0xa432000 
00506f148 	mov	x1, x19
00506f14c 	mov	x3, xzr
00506f150 	ldr	x8, [x8, #1624]
00506f154 	mov	x22, x0
00506f158 	ldr	x2, [x8]
00506f15c 	bl	#64362752 ; -> 0x8dd0a5c System.Action::.ctor
00506f160 	cbz	x21, #344 ; -> 0x506f2b8 
00506f164 	ldp	s0, s4, [sp, #12]
00506f168 	fmul	s1, s13, s14
00506f16c 	ldp	s5, s2, [sp, #104]
00506f170 	fmul	s3, s12, s14
00506f174 	adrp	x8, #-51666944 ; -> 0x1f29000 
00506f178 	mov	x0, x21
00506f17c 	mov	x1, x20
00506f180 	fmul	s0, s0, s11
00506f184 	fmul	s4, s4, s11
00506f188 	fmul	s2, s2, s11
00506f18c 	fmul	s5, s5, s14
00506f190 	fadd	s0, s0, s1
00506f194 	fadd	s1, s2, s3
00506f198 	fadd	s3, s4, s5
00506f19c 	ldr	s4, [x8, #2372]
00506f1a0 	fadd	s2, s0, s10
00506f1a4 	fadd	s1, s1, s9
00506f1a8 	fadd	s0, s3, s8
00506f1ac 	fmov	s3, s15
00506f1b0 	mov	x2, x22
00506f1b4 	ldp	x20, x19, [sp, #128]
00506f1b8 	ldp	x22, x21, [sp, #112]
00506f1bc 	ldr	x30, [sp, #96]
00506f1c0 	ldp	d9, d8, [sp, #80]
00506f1c4 	ldp	d11, d10, [sp, #64]
00506f1c8 	ldp	d13, d12, [sp, #48]
00506f1cc 	ldp	d15, d14, [sp, #32]
00506f1d0 	add	sp, sp, #144
00506f1d4 	b	#316 ; -> 0x506f310 DropObjectJumpManager::RegisterJump
00506f1d8 	fmov	s0, #2.00000000
00506f1dc 	fmov	s1, #4.00000000
00506f1e0 	mov	x0, xzr
00506f1e4 	bl	#77120476 ; -> 0x99fb5c0 UnityEngine.Random::Range
00506f1e8 	adrp	x20, #95830016 ; -> 0xabd3000 
00506f1ec 	mov	w9, #1065353216
00506f1f0 	str	s0, [x19, #128]
00506f1f4 	ldrb	w8, [x20, #1724]
00506f1f8 	str	w9, [x19, #132]
00506f1fc 	cbnz	w8, #24 ; -> 0x506f214 
00506f200 	adrp	x0, #87527424 ; -> 0xa3e8000 
00506f204 	ldr	x0, [x0, #632]
00506f208 	bl	#-11397032 ; -> 0x4590a60 
00506f20c 	mov	w8, #1
00506f210 	strb	w8, [x20, #1724]
00506f214 	ldr	x20, [x19, #64]
00506f218 	cbz	x20, #160 ; -> 0x506f2b8 
00506f21c 	adrp	x8, #87527424 ; -> 0xa3e8000 
00506f220 	mov	x0, x20
00506f224 	mov	x1, xzr
00506f228 	ldr	x8, [x8, #632]
00506f22c 	ldr	s0, [x19, #128]
00506f230 	ldr	x8, [x8]
00506f234 	ldr	x8, [x8, #184]
00506f238 	ldp	s2, s1, [x8, #64]
00506f23c 	ldr	s3, [x8, #60]
00506f240 	fmul	s10, s0, s3
00506f244 	fmul	s8, s1, s0
00506f248 	fmul	s9, s0, s2
00506f24c 	bl	#77217504 ; -> 0x9a1312c UnityEngine.Transform::get_position
00506f250 	fadd	s0, s10, s0
00506f254 	fadd	s1, s9, s1
00506f258 	adrp	x8, #-51666944 ; -> 0x1f29000 
00506f25c 	fadd	s2, s8, s2
00506f260 	ldr	s3, [x19, #132]
00506f264 	ldr	s4, [x8, #2140]
00506f268 	mov	x0, x20
00506f26c 	mov	w1, wzr
00506f270 	mov	w2, wzr
00506f274 	mov	x3, xzr
00506f278 	bl	#9293028 ; -> 0x594bf5c DG.Tweening.ShortcutExtensions::DOJump
00506f27c 	adrp	x8, #87539712 ; -> 0xa3eb000 
00506f280 	mov	w1, #1
00506f284 	ldr	x8, [x8, #1384]
00506f288 	ldr	x2, [x8]
00506f28c 	bl	#17718124 ; -> 0x6154df8 
00506f290 	mov	x0, x19
00506f294 	ldp	x20, x19, [sp, #128]
00506f298 	ldp	x22, x21, [sp, #112]
00506f29c 	ldr	x30, [sp, #96]
00506f2a0 	ldp	d9, d8, [sp, #80]
00506f2a4 	ldp	d11, d10, [sp, #64]
00506f2a8 	ldp	d13, d12, [sp, #48]
00506f2ac 	ldp	d15, d14, [sp, #32]
00506f2b0 	add	sp, sp, #144
00506f2b4 	b	#8 ; -> 0x506f2bc DropObject::PassItem_FollowPlayer
00506f2b8 	bl	#-11396524 ; -> 0x4590d0c 
