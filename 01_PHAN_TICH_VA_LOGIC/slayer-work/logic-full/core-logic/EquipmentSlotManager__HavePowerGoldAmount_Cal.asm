004e9c2ec 	sub	sp, sp, #160
004e9c2f0 	str	d8, [sp, #96]
004e9c2f4 	stp	x30, x23, [sp, #112]
004e9c2f8 	stp	x22, x21, [sp, #128]
004e9c2fc 	stp	x20, x19, [sp, #144]
004e9c300 	adrp	x22, #97751040 ; -> 0xabd5000
004e9c304 	mov	w19, w2
004e9c308 	mov	w21, w1
004e9c30c 	ldrb	w8, [x22, #860]
004e9c310 	mov	x20, x0
004e9c314 	tbnz	w8, #0, #48 ; -> 0x4e9c344
004e9c318 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c31c 	ldr	x0, [x0, #2104]
004e9c320 	bl	#-9484480 ; -> 0x4590a60
004e9c324 	adrp	x0, #89706496 ; -> 0xa429000
004e9c328 	ldr	x0, [x0, #3064]
004e9c32c 	bl	#-9484492 ; -> 0x4590a60
004e9c330 	adrp	x0, #89473024 ; -> 0xa3f0000
004e9c334 	ldr	x0, [x0, #48]
004e9c338 	bl	#-9484504 ; -> 0x4590a60
004e9c33c 	mov	w8, #1
004e9c340 	strb	w8, [x22, #860]
004e9c344 	mov	w0, #4415
004e9c348 	mov	x1, xzr
004e9c34c 	bl	#-2444712 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004e9c350 	tbz	w0, #0, #60 ; -> 0x4e9c38c
004e9c354 	mov	w0, #4415
004e9c358 	mov	x1, xzr
004e9c35c 	bl	#-2444548 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004e9c360 	cbz	x0, #432 ; -> 0x4e9c510
004e9c364 	mov	x1, x20
004e9c368 	mov	w2, w21
004e9c36c 	mov	w3, w19
004e9c370 	ldp	x20, x19, [sp, #144]
004e9c374 	ldr	d8, [sp, #96]
004e9c378 	ldp	x22, x21, [sp, #128]
004e9c37c 	mov	x4, xzr
004e9c380 	ldp	x30, x23, [sp, #112]
004e9c384 	add	sp, sp, #160
004e9c388 	b	#-3131836 ; -> 0x4b9f9cc [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_634]
004e9c38c 	adrp	x22, #89464832 ; -> 0xa3ee000
004e9c390 	ldr	x22, [x22, #2104]
004e9c394 	ldr	x0, [x22]
004e9c398 	ldr	w8, [x0, #228]
004e9c39c 	cbnz	w8, #8 ; -> 0x4e9c3a4
004e9c3a0 	bl	#-9484224 ; -> 0x4590be0
004e9c3a4 	adrp	x23, #97726464 ; -> 0xabcf000
004e9c3a8 	ldrb	w8, [x23, #360]
004e9c3ac 	cbnz	w8, #24 ; -> 0x4e9c3c4
004e9c3b0 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c3b4 	ldr	x0, [x0, #2104]
004e9c3b8 	bl	#-9484632 ; -> 0x4590a60
004e9c3bc 	mov	w8, #1
004e9c3c0 	strb	w8, [x23, #360]
004e9c3c4 	ldr	x0, [x22]
004e9c3c8 	ldr	w8, [x0, #228]
004e9c3cc 	cbnz	w8, #12 ; -> 0x4e9c3d8
004e9c3d0 	bl	#-9484272 ; -> 0x4590be0
004e9c3d4 	ldr	x0, [x22]
004e9c3d8 	ldr	x8, [x0, #184]
004e9c3dc 	ldr	x8, [x8]
004e9c3e0 	cbz	x8, #304 ; -> 0x4e9c510
004e9c3e4 	ldr	x0, [x8, #48]
004e9c3e8 	cbz	x0, #296 ; -> 0x4e9c510
004e9c3ec 	adrp	x8, #89473024 ; -> 0xa3f0000
004e9c3f0 	mov	w1, w21
004e9c3f4 	ldr	x8, [x8, #48]
004e9c3f8 	ldr	x2, [x8]
004e9c3fc 	bl	#52151192 ; -> 0x8058794
004e9c400 	cbz	x0, #272 ; -> 0x4e9c510
004e9c404 	ldr	s8, [x0, #176]
004e9c408 	cmp	w21, #24
004e9c40c 	b.lt	#208 ; -> 0x4e9c4dc
004e9c410 	ldr	x8, [x20, #32]
004e9c414 	cbz	x8, #252 ; -> 0x4e9c510
004e9c418 	ldr	q0, [x8, #2176]
004e9c41c 	ldr	q1, [x8, #2192]
004e9c420 	add	x0, sp, #48
004e9c424 	ldr	q2, [x8, #2208]
004e9c428 	mov	x1, xzr
004e9c42c 	stp	q0, q1, [sp, #48]
004e9c430 	str	q2, [sp, #80]
004e9c434 	bl	#-8099432 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e9c438 	cmp	w0, #1
004e9c43c 	b.lt	#160 ; -> 0x4e9c4dc
004e9c440 	ldr	x0, [x22]
004e9c444 	ldr	w8, [x0, #228]
004e9c448 	cbnz	w8, #8 ; -> 0x4e9c450
004e9c44c 	bl	#-9484396 ; -> 0x4590be0
004e9c450 	ldrb	w8, [x23, #360]
004e9c454 	cbnz	w8, #24 ; -> 0x4e9c46c
004e9c458 	adrp	x0, #89464832 ; -> 0xa3ee000
004e9c45c 	ldr	x0, [x0, #2104]
004e9c460 	bl	#-9484800 ; -> 0x4590a60
004e9c464 	mov	w8, #1
004e9c468 	strb	w8, [x23, #360]
004e9c46c 	ldr	x0, [x22]
004e9c470 	ldr	w8, [x0, #228]
004e9c474 	cbnz	w8, #12 ; -> 0x4e9c480
004e9c478 	bl	#-9484440 ; -> 0x4590be0
004e9c47c 	ldr	x0, [x22]
004e9c480 	ldr	x8, [x0, #184]
004e9c484 	ldr	x8, [x8]
004e9c488 	cbz	x8, #136 ; -> 0x4e9c510
004e9c48c 	ldr	x9, [x20, #32]
004e9c490 	cbz	x9, #128 ; -> 0x4e9c510
004e9c494 	ldr	q0, [x9, #2176]
004e9c498 	ldr	q1, [x9, #2192]
004e9c49c 	mov	x0, sp
004e9c4a0 	ldr	q2, [x9, #2208]
004e9c4a4 	ldr	x20, [x8, #136]
004e9c4a8 	mov	x1, xzr
004e9c4ac 	stp	q0, q1, [sp]
004e9c4b0 	str	q2, [sp, #32]
004e9c4b4 	bl	#-8099560 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e9c4b8 	cbz	x20, #88 ; -> 0x4e9c510
004e9c4bc 	adrp	x8, #89706496 ; -> 0xa429000
004e9c4c0 	mov	w1, w0
004e9c4c4 	mov	x0, x20
004e9c4c8 	ldr	x8, [x8, #3064]
004e9c4cc 	ldr	x2, [x8]
004e9c4d0 	bl	#52150980 ; -> 0x8058794
004e9c4d4 	cbz	x0, #60 ; -> 0x4e9c510
004e9c4d8 	ldr	s8, [x0, #44]
004e9c4dc 	scvtf	s0, w19
004e9c4e0 	adrp	x8, #-49754112 ; -> 0x1f29000
004e9c4e4 	ldr	s1, [x8, #2100]
004e9c4e8 	ldp	x20, x19, [sp, #144]
004e9c4ec 	ldp	x22, x21, [sp, #128]
004e9c4f0 	ldp	x30, x23, [sp, #112]
004e9c4f4 	fmul	s0, s0, s1
004e9c4f8 	fmov	s1, #1.00000000
004e9c4fc 	fadd	s0, s0, s1
004e9c500 	fmul	s0, s0, s8
004e9c504 	ldr	d8, [sp, #96]
004e9c508 	add	sp, sp, #160
004e9c50c 	ret
004e9c510 	bl	#-9484292 ; -> 0x4590d0c