004e9c0c4 	sub	sp, sp, #160
004e9c0c8 	str	d8, [sp, #96]
004e9c0cc 	stp	x30, x23, [sp, #112]
004e9c0d0 	stp	x22, x21, [sp, #128]
004e9c0d4 	stp	x20, x19, [sp, #144]
004e9c0d8 	adrp	x22, #97751040 ; -> 0xabd5000
004e9c0dc 	mov	w19, w2
004e9c0e0 	mov	w21, w1
004e9c0e4 	ldrb	w8, [x22, #859]
004e9c0e8 	mov	x20, x0
004e9c0ec 	tbnz	w8, #0, #48 ; -> 0x4e9c11c
004e9c0f0 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c0f4 	ldr	x0, [x0, #2104]
004e9c0f8 	bl	#-9483928 ; -> 0x4590a60
004e9c0fc 	adrp	x0, #89706496 ; -> 0xa429000
004e9c100 	ldr	x0, [x0, #3064]
004e9c104 	bl	#-9483940 ; -> 0x4590a60
004e9c108 	adrp	x0, #89473024 ; -> 0xa3f0000
004e9c10c 	ldr	x0, [x0, #48]
004e9c110 	bl	#-9483952 ; -> 0x4590a60
004e9c114 	mov	w8, #1
004e9c118 	strb	w8, [x22, #859]
004e9c11c 	mov	w0, #4414
004e9c120 	mov	x1, xzr
004e9c124 	bl	#-2444160 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004e9c128 	tbz	w0, #0, #60 ; -> 0x4e9c164
004e9c12c 	mov	w0, #4414
004e9c130 	mov	x1, xzr
004e9c134 	bl	#-2443996 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004e9c138 	cbz	x0, #432 ; -> 0x4e9c2e8
004e9c13c 	mov	x1, x20
004e9c140 	mov	w2, w21
004e9c144 	mov	w3, w19
004e9c148 	ldp	x20, x19, [sp, #144]
004e9c14c 	ldr	d8, [sp, #96]
004e9c150 	ldp	x22, x21, [sp, #128]
004e9c154 	mov	x4, xzr
004e9c158 	ldp	x30, x23, [sp, #112]
004e9c15c 	add	sp, sp, #160
004e9c160 	b	#-3131284 ; -> 0x4b9f9cc [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_634]
004e9c164 	adrp	x22, #89464832 ; -> 0xa3ee000
004e9c168 	ldr	x22, [x22, #2104]
004e9c16c 	ldr	x0, [x22]
004e9c170 	ldr	w8, [x0, #228]
004e9c174 	cbnz	w8, #8 ; -> 0x4e9c17c
004e9c178 	bl	#-9483672 ; -> 0x4590be0
004e9c17c 	adrp	x23, #97726464 ; -> 0xabcf000
004e9c180 	ldrb	w8, [x23, #360]
004e9c184 	cbnz	w8, #24 ; -> 0x4e9c19c
004e9c188 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c18c 	ldr	x0, [x0, #2104]
004e9c190 	bl	#-9484080 ; -> 0x4590a60
004e9c194 	mov	w8, #1
004e9c198 	strb	w8, [x23, #360]
004e9c19c 	ldr	x0, [x22]
004e9c1a0 	ldr	w8, [x0, #228]
004e9c1a4 	cbnz	w8, #12 ; -> 0x4e9c1b0
004e9c1a8 	bl	#-9483720 ; -> 0x4590be0
004e9c1ac 	ldr	x0, [x22]
004e9c1b0 	ldr	x8, [x0, #184]
004e9c1b4 	ldr	x8, [x8]
004e9c1b8 	cbz	x8, #304 ; -> 0x4e9c2e8
004e9c1bc 	ldr	x0, [x8, #48]
004e9c1c0 	cbz	x0, #296 ; -> 0x4e9c2e8
004e9c1c4 	adrp	x8, #89473024 ; -> 0xa3f0000
004e9c1c8 	mov	w1, w21
004e9c1cc 	ldr	x8, [x8, #48]
004e9c1d0 	ldr	x2, [x8]
004e9c1d4 	bl	#52151744 ; -> 0x8058794
004e9c1d8 	cbz	x0, #272 ; -> 0x4e9c2e8
004e9c1dc 	ldr	s8, [x0, #172]
004e9c1e0 	cmp	w21, #24
004e9c1e4 	b.lt	#208 ; -> 0x4e9c2b4
004e9c1e8 	ldr	x8, [x20, #32]
004e9c1ec 	cbz	x8, #252 ; -> 0x4e9c2e8
004e9c1f0 	ldr	q0, [x8, #2176]
004e9c1f4 	ldr	q1, [x8, #2192]
004e9c1f8 	add	x0, sp, #48
004e9c1fc 	ldr	q2, [x8, #2208]
004e9c200 	mov	x1, xzr
004e9c204 	stp	q0, q1, [sp, #48]
004e9c208 	str	q2, [sp, #80]
004e9c20c 	bl	#-8098880 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e9c210 	cmp	w0, #1
004e9c214 	b.lt	#160 ; -> 0x4e9c2b4
004e9c218 	ldr	x0, [x22]
004e9c21c 	ldr	w8, [x0, #228]
004e9c220 	cbnz	w8, #8 ; -> 0x4e9c228
004e9c224 	bl	#-9483844 ; -> 0x4590be0
004e9c228 	ldrb	w8, [x23, #360]
004e9c22c 	cbnz	w8, #24 ; -> 0x4e9c244
004e9c230 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c234 	ldr	x0, [x0, #2104]
004e9c238 	bl	#-9484248 ; -> 0x4590a60
004e9c23c 	mov	w8, #1
004e9c240 	strb	w8, [x23, #360]
004e9c244 	ldr	x0, [x22]
004e9c248 	ldr	w8, [x0, #228]
004e9c24c 	cbnz	w8, #12 ; -> 0x4e9c258
004e9c250 	bl	#-9483888 ; -> 0x4590be0
004e9c254 	ldr	x0, [x22]
004e9c258 	ldr	x8, [x0, #184]
004e9c25c 	ldr	x8, [x8]
004e9c260 	cbz	x8, #136 ; -> 0x4e9c2e8
004e9c264 	ldr	x9, [x20, #32]
004e9c268 	cbz	x9, #128 ; -> 0x4e9c2e8
004e9c26c 	ldr	q0, [x9, #2176]
004e9c270 	ldr	q1, [x9, #2192]
004e9c274 	mov	x0, sp
004e9c278 	ldr	q2, [x9, #2208]
004e9c27c 	ldr	x20, [x8, #136]
004e9c280 	mov	x1, xzr
004e9c284 	stp	q0, q1, [sp]
004e9c288 	str	q2, [sp, #32]
004e9c28c 	bl	#-8099008 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e9c290 	cbz	x20, #88 ; -> 0x4e9c2e8
004e9c294 	adrp	x8, #89706496 ; -> 0xa429000
004e9c298 	mov	w1, w0
004e9c29c 	mov	x0, x20
004e9c2a0 	ldr	x8, [x8, #3064]
004e9c2a4 	ldr	x2, [x8]
004e9c2a8 	bl	#52151532 ; -> 0x8058794
004e9c2ac 	cbz	x0, #60 ; -> 0x4e9c2e8
004e9c2b0 	ldr	s8, [x0, #40]
004e9c2b4 	scvtf	s0, w19
004e9c2b8 	adrp	x8, #-49754112 ; -> 0x1f29000
004e9c2bc 	ldr	s1, [x8, #2100]
004e9c2c0 	ldp	x20, x19, [sp, #144]
004e9c2c4 	ldp	x22, x21, [sp, #128]
004e9c2c8 	ldp	x30, x23, [sp, #112]
004e9c2cc 	fmul	s0, s0, s1
004e9c2d0 	fmov	s1, #1.00000000
004e9c2d4 	fadd	s0, s0, s1
004e9c2d8 	fmul	s0, s0, s8
004e9c2dc 	ldr	d8, [sp, #96]
004e9c2e0 	add	sp, sp, #160
004e9c2e4 	ret
004e9c2e8 	bl	#-9483740 ; -> 0x4590d0c