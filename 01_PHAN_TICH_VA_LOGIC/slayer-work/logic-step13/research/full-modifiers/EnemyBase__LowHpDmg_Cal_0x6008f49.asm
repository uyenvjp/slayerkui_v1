0050ba354 	sub	sp, sp, #288
0050ba358 	str	d8, [sp, #224]
0050ba35c 	stp	x29, x30, [sp, #240]
0050ba360 	stp	x22, x21, [sp, #256]
0050ba364 	stp	x20, x19, [sp, #272]
0050ba368 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba36c 	mov	x19, x2
0050ba370 	mov	x20, x1
0050ba374 	ldrb	w8, [x22, #726]
0050ba378 	mov	x21, x0
0050ba37c 	tbnz	w8, #0, #36 ; -> 0x50ba3a0 
0050ba380 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba384 	ldr	x0, [x0, #3552]
0050ba388 	bl	#-11704616 ; -> 0x4590a60 
0050ba38c 	adrp	x0, #87425024 ; -> 0xa41a000 
0050ba390 	ldr	x0, [x0, #3856]
0050ba394 	bl	#-11704628 ; -> 0x4590a60 
0050ba398 	mov	w8, #1
0050ba39c 	strb	w8, [x22, #726]
0050ba3a0 	mov	w0, #31616
0050ba3a4 	mov	x1, xzr
0050ba3a8 	bl	#-4664836 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba3ac 	tbz	w0, #0, #60 ; -> 0x50ba3e8 
0050ba3b0 	mov	w0, #31616
0050ba3b4 	mov	x1, xzr
0050ba3b8 	bl	#-4664672 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba3bc 	cbz	x0, #452 ; -> 0x50ba580 
0050ba3c0 	mov	x1, x21
0050ba3c4 	mov	x2, x20
0050ba3c8 	mov	x3, x19
0050ba3cc 	ldp	x20, x19, [sp, #272]
0050ba3d0 	ldr	d8, [sp, #224]
0050ba3d4 	ldp	x22, x21, [sp, #256]
0050ba3d8 	mov	x4, xzr
0050ba3dc 	ldp	x29, x30, [sp, #240]
0050ba3e0 	add	sp, sp, #288
0050ba3e4 	b	#-5348864 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050ba3e8 	adrp	x22, #87425024 ; -> 0xa41a000 
0050ba3ec 	ldr	x22, [x22, #3856]
0050ba3f0 	ldr	x0, [x22]
0050ba3f4 	ldr	w8, [x0, #228]
0050ba3f8 	cbnz	w8, #12 ; -> 0x50ba404 
0050ba3fc 	bl	#-11704348 ; -> 0x4590be0 
0050ba400 	ldr	x0, [x22]
0050ba404 	ldr	x8, [x0, #184]
0050ba408 	ldr	x8, [x8]
0050ba40c 	cbz	x8, #372 ; -> 0x50ba580 
0050ba410 	add	x0, sp, #152
0050ba414 	add	x1, x8, #2264
0050ba418 	mov	w2, #72
0050ba41c 	bl	#80418004 ; -> 0x9d6b8f0 
0050ba420 	add	x0, sp, #152
0050ba424 	mov	x1, xzr
0050ba428 	bl	#-5670656 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050ba42c 	fcmp	s0, #0.0
0050ba430 	b.le	#304 ; -> 0x50ba560 
0050ba434 	ldr	x0, [x22]
0050ba438 	ldr	w8, [x0, #228]
0050ba43c 	cbnz	w8, #12 ; -> 0x50ba448 
0050ba440 	bl	#-11704416 ; -> 0x4590be0 
0050ba444 	ldr	x0, [x22]
0050ba448 	ldr	x8, [x0, #184]
0050ba44c 	ldr	x8, [x8]
0050ba450 	cbz	x8, #304 ; -> 0x50ba580 
0050ba454 	add	x0, sp, #80
0050ba458 	add	x1, x8, #2192
0050ba45c 	mov	w2, #72
0050ba460 	bl	#80417936 ; -> 0x9d6b8f0 
0050ba464 	add	x0, sp, #80
0050ba468 	mov	x1, xzr
0050ba46c 	bl	#-5670724 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050ba470 	mov	w8, #2139095040
0050ba474 	fcvtzs	w9, s0
0050ba478 	mov	x0, x21
0050ba47c 	fmov	s1, w8
0050ba480 	mov	w8, #-2147483648
0050ba484 	fcmp	s0, s1
0050ba488 	csel	w1, w8, w9, eq
0050ba48c 	bl	#5864 ; -> 0x50bbb74 EnemyBase::LowHpCheck
0050ba490 	tbz	w0, #0, #208 ; -> 0x50ba560 
0050ba494 	ldr	x0, [x22]
0050ba498 	ldr	w8, [x0, #228]
0050ba49c 	cbnz	w8, #12 ; -> 0x50ba4a8 
0050ba4a0 	bl	#-11704512 ; -> 0x4590be0 
0050ba4a4 	ldr	x0, [x22]
0050ba4a8 	ldr	x8, [x0, #184]
0050ba4ac 	ldr	x8, [x8]
0050ba4b0 	cbz	x8, #208 ; -> 0x50ba580 
0050ba4b4 	add	x0, sp, #8
0050ba4b8 	add	x1, x8, #2264
0050ba4bc 	mov	w2, #72
0050ba4c0 	bl	#80417840 ; -> 0x9d6b8f0 
0050ba4c4 	add	x0, sp, #8
0050ba4c8 	mov	x1, xzr
0050ba4cc 	bl	#-5670820 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050ba4d0 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba4d4 	fmov	s8, s0
0050ba4d8 	ldr	x8, [x8, #3552]
0050ba4dc 	ldr	x0, [x8]
0050ba4e0 	ldr	w8, [x0, #228]
0050ba4e4 	cbnz	w8, #8 ; -> 0x50ba4ec 
0050ba4e8 	bl	#-11704584 ; -> 0x4590be0 
0050ba4ec 	mov	w9, #2139095040
0050ba4f0 	fcvtzs	w8, s8
0050ba4f4 	mov	x1, xzr
0050ba4f8 	fmov	s0, w9
0050ba4fc 	mov	w9, #100
0050ba500 	movk	w9, #32768, lsl #16
0050ba504 	fcmp	s8, s0
0050ba508 	add	w8, w8, #100
0050ba50c 	csel	w0, w9, w8, eq
0050ba510 	bl	#67906196 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba514 	mov	x2, x0
0050ba518 	mov	x3, x1
0050ba51c 	mov	x0, x20
0050ba520 	mov	x1, x19
0050ba524 	mov	x4, xzr
0050ba528 	bl	#67896092 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050ba52c 	mov	x19, x0
0050ba530 	mov	x20, x1
0050ba534 	mov	w0, #100
0050ba538 	mov	x1, xzr
0050ba53c 	bl	#67906152 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba540 	mov	x2, x0
0050ba544 	mov	x3, x1
0050ba548 	mov	x0, x19
0050ba54c 	mov	x1, x20
0050ba550 	mov	x4, xzr
0050ba554 	bl	#67896548 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050ba558 	mov	x20, x0
0050ba55c 	mov	x19, x1
0050ba560 	mov	x0, x20
0050ba564 	mov	x1, x19
0050ba568 	ldr	d8, [sp, #224]
0050ba56c 	ldp	x20, x19, [sp, #272]
0050ba570 	ldp	x22, x21, [sp, #256]
0050ba574 	ldp	x29, x30, [sp, #240]
0050ba578 	add	sp, sp, #288
0050ba57c 	ret
0050ba580 	bl	#-11704436 ; -> 0x4590d0c 
