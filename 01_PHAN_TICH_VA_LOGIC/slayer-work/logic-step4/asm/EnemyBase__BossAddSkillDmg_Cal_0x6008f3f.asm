0050ba690 	str	d8, [sp, #-48]!
0050ba694 	str	x30, [sp, #8]
0050ba698 	stp	x22, x21, [sp, #16]
0050ba69c 	stp	x20, x19, [sp, #32]
0050ba6a0 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba6a4 	mov	x19, x2
0050ba6a8 	mov	x20, x1
0050ba6ac 	ldrb	w8, [x22, #717]
0050ba6b0 	mov	x21, x0
0050ba6b4 	tbnz	w8, #0, #24 ; -> 0x50ba6cc 
0050ba6b8 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba6bc 	ldr	x0, [x0, #3552]
0050ba6c0 	bl	#-11705440 ; -> 0x4590a60 
0050ba6c4 	mov	w8, #1
0050ba6c8 	strb	w8, [x22, #717]
0050ba6cc 	mov	w0, #31619
0050ba6d0 	mov	x1, xzr
0050ba6d4 	bl	#-4665648 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba6d8 	tbz	w0, #0, #56 ; -> 0x50ba710 
0050ba6dc 	mov	w0, #31619
0050ba6e0 	mov	x1, xzr
0050ba6e4 	bl	#-4665484 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba6e8 	cbz	x0, #280 ; -> 0x50ba800 
0050ba6ec 	mov	x1, x21
0050ba6f0 	mov	x2, x20
0050ba6f4 	mov	x3, x19
0050ba6f8 	ldp	x20, x19, [sp, #32]
0050ba6fc 	ldr	x30, [sp, #8]
0050ba700 	ldp	x22, x21, [sp, #16]
0050ba704 	mov	x4, xzr
0050ba708 	ldr	d8, [sp], #48
0050ba70c 	b	#-5349672 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050ba710 	ldr	x0, [x21, #312]
0050ba714 	cbz	x0, #236 ; -> 0x50ba800 
0050ba718 	mov	w1, #4
0050ba71c 	mov	x2, xzr
0050ba720 	bl	#-3544720 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
0050ba724 	fcmp	s0, #0.0
0050ba728 	b.le	#188 ; -> 0x50ba7e4 
0050ba72c 	ldr	x0, [x21, #312]
0050ba730 	cbz	x0, #208 ; -> 0x50ba800 
0050ba734 	mov	w1, #4
0050ba738 	mov	x2, xzr
0050ba73c 	fmov	s8, s0
0050ba740 	bl	#-3545040 ; -> 0x4d58f70 DatabaseManager::SpiritSkillCheck
0050ba744 	tbz	w0, #0, #160 ; -> 0x50ba7e4 
0050ba748 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba74c 	ldr	x8, [x8, #3552]
0050ba750 	ldr	x0, [x8]
0050ba754 	ldr	w8, [x0, #228]
0050ba758 	cbnz	w8, #8 ; -> 0x50ba760 
0050ba75c 	bl	#-11705212 ; -> 0x4590be0 
0050ba760 	mov	w8, #1120403456
0050ba764 	mov	x1, xzr
0050ba768 	fmov	s0, w8
0050ba76c 	mov	w8, #2139095040
0050ba770 	fadd	s1, s8, s0
0050ba774 	fmul	s0, s1, s0
0050ba778 	fmov	s1, w8
0050ba77c 	mov	w8, #-2147483648
0050ba780 	fcvtzs	w9, s0
0050ba784 	fcmp	s0, s1
0050ba788 	csel	w0, w8, w9, eq
0050ba78c 	bl	#67905560 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba790 	mov	x2, x0
0050ba794 	mov	x3, x1
0050ba798 	mov	x0, x20
0050ba79c 	mov	x1, x19
0050ba7a0 	mov	x4, xzr
0050ba7a4 	bl	#67895456 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050ba7a8 	mov	x19, x0
0050ba7ac 	mov	x20, x1
0050ba7b0 	mov	w0, #10000
0050ba7b4 	mov	x1, xzr
0050ba7b8 	bl	#67905516 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba7bc 	mov	x2, x0
0050ba7c0 	mov	x3, x1
0050ba7c4 	mov	x0, x19
0050ba7c8 	mov	x1, x20
0050ba7cc 	ldp	x20, x19, [sp, #32]
0050ba7d0 	ldp	x22, x21, [sp, #16]
0050ba7d4 	ldr	x30, [sp, #8]
0050ba7d8 	mov	x4, xzr
0050ba7dc 	ldr	d8, [sp], #48
0050ba7e0 	b	#67895896 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050ba7e4 	mov	x0, x20
0050ba7e8 	mov	x1, x19
0050ba7ec 	ldr	x30, [sp, #8]
0050ba7f0 	ldp	x20, x19, [sp, #32]
0050ba7f4 	ldp	x22, x21, [sp, #16]
0050ba7f8 	ldr	d8, [sp], #48
0050ba7fc 	ret
0050ba800 	bl	#-11705076 ; -> 0x4590d0c 
