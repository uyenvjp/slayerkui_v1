004d22f6c 	sub	sp, sp, #96
004d22f70 	stp	d9, d8, [sp, #48]
004d22f74 	str	x30, [sp, #64]
004d22f78 	stp	x20, x19, [sp, #80]
004d22f7c 	fmov	s8, s1
004d22f80 	fmov	s9, s0
004d22f84 	adrp	x20, #99295232 ; -> 0xabd4000 
004d22f88 	ldrb	w8, [x20, #2545]
004d22f8c 	mov	w19, w0
004d22f90 	tbnz	w8, #0, #24 ; -> 0x4d22fa8 
004d22f94 	adrp	x0, #90992640 ; -> 0xa3e9000 
004d22f98 	ldr	x0, [x0, #1384]
004d22f9c 	bl	#-7939388 ; -> 0x4590a60 
004d22fa0 	mov	w8, #1
004d22fa4 	strb	w8, [x20, #2545]
004d22fa8 	mov	w0, #26979
004d22fac 	mov	x1, xzr
004d22fb0 	bl	#-899596 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d22fb4 	tbz	w0, #0, #56 ; -> 0x4d22fec 
004d22fb8 	mov	w0, #26979
004d22fbc 	mov	x1, xzr
004d22fc0 	bl	#-899432 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d22fc4 	cbz	x0, #184 ; -> 0x4d2307c 
004d22fc8 	and	w1, w19, #0x1
004d22fcc 	fmov	s0, s9
004d22fd0 	fmov	s1, s8
004d22fd4 	ldp	x20, x19, [sp, #80]
004d22fd8 	ldr	x30, [sp, #64]
004d22fdc 	ldp	d9, d8, [sp, #48]
004d22fe0 	mov	x2, xzr
004d22fe4 	add	sp, sp, #96
004d22fe8 	b	#-1395164 ; -> 0x4bce60c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1564
004d22fec 	tbz	w19, #0, #12 ; -> 0x4d22ff8 
004d22ff0 	mov	w0, wzr
004d22ff4 	b	#116 ; -> 0x4d23068 
004d22ff8 	adrp	x19, #90992640 ; -> 0xa3e9000 
004d22ffc 	ldr	x19, [x19, #1384]
004d23000 	ldr	x0, [x19]
004d23004 	ldr	w8, [x0, #228]
004d23008 	cbnz	w8, #12 ; -> 0x4d23014 
004d2300c 	bl	#-7939116 ; -> 0x4590be0 
004d23010 	ldr	x0, [x19]
004d23014 	ldr	x8, [x0, #184]
004d23018 	ldr	x8, [x8]
004d2301c 	cbz	x8, #96 ; -> 0x4d2307c 
004d23020 	ldur	q0, [x8, #168]
004d23024 	ldur	q1, [x8, #184]
004d23028 	mov	x0, sp
004d2302c 	ldur	q2, [x8, #200]
004d23030 	mov	x1, xzr
004d23034 	stp	q0, q1, [sp]
004d23038 	str	q2, [sp, #32]
004d2303c 	bl	#-6554224 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d23040 	fadd	s0, s9, s8
004d23044 	scvtf	s1, w0
004d23048 	mov	x0, xzr
004d2304c 	fadd	s0, s0, s1
004d23050 	fmov	s1, #1.00000000
004d23054 	fdiv	s8, s8, s0
004d23058 	movi	d0, #0000000000000000
004d2305c 	bl	#80577892 ; -> 0x99fb5c0 UnityEngine.Random::Range
004d23060 	fcmp	s0, s8
004d23064 	cset	w0, mi
004d23068 	ldp	x20, x19, [sp, #80]
004d2306c 	ldr	x30, [sp, #64]
004d23070 	ldp	d9, d8, [sp, #48]
004d23074 	add	sp, sp, #96
004d23078 	ret
004d2307c 	bl	#-7938928 ; -> 0x4590d0c 
