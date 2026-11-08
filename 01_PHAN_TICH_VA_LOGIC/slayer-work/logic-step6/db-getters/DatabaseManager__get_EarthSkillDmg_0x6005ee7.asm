004d50654 	str	d10, [sp, #-80]!
004d50658 	stp	d9, d8, [sp, #8]
004d5065c 	str	x29, [sp, #24]
004d50660 	stp	x30, x23, [sp, #32]
004d50664 	stp	x22, x21, [sp, #48]
004d50668 	stp	x20, x19, [sp, #64]
004d5066c 	sub	sp, sp, #496
004d50670 	mov	x20, x0
004d50674 	mov	w0, #27258
004d50678 	mov	x1, xzr
004d5067c 	mov	x19, x8
004d50680 	bl	#-1085660 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d50684 	tbz	w0, #0, #44 ; -> 0x4d506b0 
004d50688 	mov	w0, #27258
004d5068c 	mov	x1, xzr
004d50690 	bl	#-1085496 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d50694 	cbz	x0, #336 ; -> 0x4d507e4 
004d50698 	add	x8, sp, #424
004d5069c 	mov	x1, x20
004d506a0 	mov	x2, xzr
004d506a4 	bl	#-1881828 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d506a8 	add	x1, sp, #424
004d506ac 	b	#268 ; -> 0x4d507b8 
004d506b0 	mov	w8, #10456
004d506b4 	add	x0, sp, #352
004d506b8 	mov	w2, #72
004d506bc 	add	x1, x20, x8
004d506c0 	add	x21, sp, #144
004d506c4 	mov	w23, #13024
004d506c8 	bl	#83997224 ; -> 0x9d6b8f0 
004d506cc 	add	x0, sp, #352
004d506d0 	mov	x1, xzr
004d506d4 	bl	#-2091436 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d506d8 	mov	w8, #8024
004d506dc 	add	x0, sp, #280
004d506e0 	mov	w2, #72
004d506e4 	add	x1, x20, x8
004d506e8 	fmov	s8, s0
004d506ec 	bl	#83997188 ; -> 0x9d6b8f0 
004d506f0 	add	x0, sp, #280
004d506f4 	mov	x1, xzr
004d506f8 	bl	#-2091472 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d506fc 	mov	w8, #6584
004d50700 	add	x0, sp, #208
004d50704 	mov	w2, #72
004d50708 	add	x1, x20, x8
004d5070c 	fmov	s9, s0
004d50710 	bl	#83997152 ; -> 0x9d6b8f0 
004d50714 	add	x0, sp, #208
004d50718 	mov	x1, xzr
004d5071c 	bl	#-2091508 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50720 	fmov	s10, s0
004d50724 	ldp	q0, q1, [x20, #640]
004d50728 	add	x0, sp, #144
004d5072c 	mov	x1, xzr
004d50730 	stp	q0, q1, [x21]
004d50734 	ldp	q0, q2, [x20, #672]
004d50738 	stp	q0, q2, [x21, #32]
004d5073c 	bl	#-2089964 ; -> 0x4b52350 SilentInt::op_Implicit
004d50740 	ldr	q0, [x20, #11568]
004d50744 	ldr	q1, [x20, #11584]
004d50748 	mov	w21, w0
004d5074c 	ldr	q2, [x20, #11600]
004d50750 	add	x0, sp, #80
004d50754 	mov	x1, xzr
004d50758 	stp	q0, q1, [sp, #80]
004d5075c 	ldr	q0, [x20, #11616]
004d50760 	stp	q2, q0, [sp, #112]
004d50764 	bl	#-2088548 ; -> 0x4b52900 SilentLong::op_Implicit
004d50768 	mov	w8, #13736
004d5076c 	mov	x22, x0
004d50770 	add	x0, sp, #8
004d50774 	add	x1, x20, x8
004d50778 	mov	w2, #72
004d5077c 	bl	#83997044 ; -> 0x9d6b8f0 
004d50780 	add	x0, sp, #8
004d50784 	mov	x1, xzr
004d50788 	bl	#-2091616 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d5078c 	fadd	s1, s8, s9
004d50790 	scvtf	s2, w21
004d50794 	add	x0, x20, x23
004d50798 	mov	x1, xzr
004d5079c 	fadd	s1, s1, s10
004d507a0 	fadd	s1, s1, s2
004d507a4 	scvtf	s2, x22
004d507a8 	fadd	s1, s1, s2
004d507ac 	fadd	s0, s1, s0
004d507b0 	bl	#-2092024 ; -> 0x4b51bb8 SilentFloat::set_Value
004d507b4 	add	x1, x20, x23
004d507b8 	mov	x0, x19
004d507bc 	mov	w2, #72
004d507c0 	bl	#83996976 ; -> 0x9d6b8f0 
004d507c4 	add	sp, sp, #496
004d507c8 	ldp	x20, x19, [sp, #64]
004d507cc 	ldr	x29, [sp, #24]
004d507d0 	ldp	x22, x21, [sp, #48]
004d507d4 	ldp	x30, x23, [sp, #32]
004d507d8 	ldp	d9, d8, [sp, #8]
004d507dc 	ldr	d10, [sp], #80
004d507e0 	ret
004d507e4 	bl	#-8125144 ; -> 0x4590d0c 
