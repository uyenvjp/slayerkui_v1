004d5032c 	str	d10, [sp, #-80]!
004d50330 	stp	d9, d8, [sp, #8]
004d50334 	str	x29, [sp, #24]
004d50338 	stp	x30, x23, [sp, #32]
004d5033c 	stp	x22, x21, [sp, #48]
004d50340 	stp	x20, x19, [sp, #64]
004d50344 	sub	sp, sp, #496
004d50348 	mov	x20, x0
004d5034c 	mov	w0, #27256
004d50350 	mov	x1, xzr
004d50354 	mov	x19, x8
004d50358 	bl	#-1084852 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d5035c 	tbz	w0, #0, #44 ; -> 0x4d50388 
004d50360 	mov	w0, #27256
004d50364 	mov	x1, xzr
004d50368 	bl	#-1084688 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d5036c 	cbz	x0, #336 ; -> 0x4d504bc 
004d50370 	add	x8, sp, #424
004d50374 	mov	x1, x20
004d50378 	mov	x2, xzr
004d5037c 	bl	#-1881020 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d50380 	add	x1, sp, #424
004d50384 	b	#268 ; -> 0x4d50490 
004d50388 	mov	w8, #10384
004d5038c 	add	x0, sp, #352
004d50390 	mov	w2, #72
004d50394 	add	x1, x20, x8
004d50398 	add	x21, sp, #144
004d5039c 	mov	w23, #12880
004d503a0 	bl	#83998032 ; -> 0x9d6b8f0 
004d503a4 	add	x0, sp, #352
004d503a8 	mov	x1, xzr
004d503ac 	bl	#-2090628 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d503b0 	mov	w8, #8168
004d503b4 	add	x0, sp, #280
004d503b8 	mov	w2, #72
004d503bc 	add	x1, x20, x8
004d503c0 	fmov	s8, s0
004d503c4 	bl	#83997996 ; -> 0x9d6b8f0 
004d503c8 	add	x0, sp, #280
004d503cc 	mov	x1, xzr
004d503d0 	bl	#-2090664 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d503d4 	mov	w8, #7016
004d503d8 	add	x0, sp, #208
004d503dc 	mov	w2, #72
004d503e0 	add	x1, x20, x8
004d503e4 	fmov	s9, s0
004d503e8 	bl	#83997960 ; -> 0x9d6b8f0 
004d503ec 	add	x0, sp, #208
004d503f0 	mov	x1, xzr
004d503f4 	bl	#-2090700 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d503f8 	fmov	s10, s0
004d503fc 	ldp	q0, q1, [x20, #640]
004d50400 	add	x0, sp, #144
004d50404 	mov	x1, xzr
004d50408 	stp	q0, q1, [x21]
004d5040c 	ldp	q0, q2, [x20, #672]
004d50410 	stp	q0, q2, [x21, #32]
004d50414 	bl	#-2089156 ; -> 0x4b52350 SilentInt::op_Implicit
004d50418 	ldr	q0, [x20, #11376]
004d5041c 	ldr	q1, [x20, #11392]
004d50420 	mov	w21, w0
004d50424 	ldr	q2, [x20, #11408]
004d50428 	add	x0, sp, #80
004d5042c 	mov	x1, xzr
004d50430 	stp	q0, q1, [sp, #80]
004d50434 	ldr	q0, [x20, #11424]
004d50438 	stp	q2, q0, [sp, #112]
004d5043c 	bl	#-2087740 ; -> 0x4b52900 SilentLong::op_Implicit
004d50440 	mov	w8, #13736
004d50444 	mov	x22, x0
004d50448 	add	x0, sp, #8
004d5044c 	add	x1, x20, x8
004d50450 	mov	w2, #72
004d50454 	bl	#83997852 ; -> 0x9d6b8f0 
004d50458 	add	x0, sp, #8
004d5045c 	mov	x1, xzr
004d50460 	bl	#-2090808 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50464 	fadd	s1, s8, s9
004d50468 	scvtf	s2, w21
004d5046c 	add	x0, x20, x23
004d50470 	mov	x1, xzr
004d50474 	fadd	s1, s1, s10
004d50478 	fadd	s1, s1, s2
004d5047c 	scvtf	s2, x22
004d50480 	fadd	s1, s1, s2
004d50484 	fadd	s0, s1, s0
004d50488 	bl	#-2091216 ; -> 0x4b51bb8 SilentFloat::set_Value
004d5048c 	add	x1, x20, x23
004d50490 	mov	x0, x19
004d50494 	mov	w2, #72
004d50498 	bl	#83997784 ; -> 0x9d6b8f0 
004d5049c 	add	sp, sp, #496
004d504a0 	ldp	x20, x19, [sp, #64]
004d504a4 	ldr	x29, [sp, #24]
004d504a8 	ldp	x22, x21, [sp, #48]
004d504ac 	ldp	x30, x23, [sp, #32]
004d504b0 	ldp	d9, d8, [sp, #8]
004d504b4 	ldr	d10, [sp], #80
004d504b8 	ret
004d504bc 	bl	#-8124336 ; -> 0x4590d0c 
