0050ba804 	str	d8, [sp, #-48]!
0050ba808 	str	x30, [sp, #8]
0050ba80c 	stp	x22, x21, [sp, #16]
0050ba810 	stp	x20, x19, [sp, #32]
0050ba814 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba818 	mov	x19, x2
0050ba81c 	mov	x20, x1
0050ba820 	ldrb	w8, [x22, #722]
0050ba824 	mov	x21, x0
0050ba828 	tbnz	w8, #0, #36 ; -> 0x50ba84c 
0050ba82c 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba830 	ldr	x0, [x0, #3552]
0050ba834 	bl	#-11705812 ; -> 0x4590a60 
0050ba838 	adrp	x0, #87425024 ; -> 0xa41a000 
0050ba83c 	ldr	x0, [x0, #3856]
0050ba840 	bl	#-11705824 ; -> 0x4590a60 
0050ba844 	mov	w8, #1
0050ba848 	strb	w8, [x22, #722]
0050ba84c 	mov	w0, #31622
0050ba850 	mov	x1, xzr
0050ba854 	bl	#-4666032 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba858 	tbz	w0, #0, #56 ; -> 0x50ba890 
0050ba85c 	mov	w0, #31622
0050ba860 	mov	x1, xzr
0050ba864 	bl	#-4665868 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba868 	cbz	x0, #288 ; -> 0x50ba988 
0050ba86c 	mov	x1, x21
0050ba870 	mov	x2, x20
0050ba874 	mov	x3, x19
0050ba878 	ldp	x20, x19, [sp, #32]
0050ba87c 	ldr	x30, [sp, #8]
0050ba880 	ldp	x22, x21, [sp, #16]
0050ba884 	mov	x4, xzr
0050ba888 	ldr	d8, [sp], #48
0050ba88c 	b	#-5350056 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050ba890 	adrp	x21, #87425024 ; -> 0xa41a000 
0050ba894 	ldr	x21, [x21, #3856]
0050ba898 	ldr	x0, [x21]
0050ba89c 	ldr	w8, [x0, #228]
0050ba8a0 	cbnz	w8, #12 ; -> 0x50ba8ac 
0050ba8a4 	bl	#-11705540 ; -> 0x4590be0 
0050ba8a8 	ldr	x0, [x21]
0050ba8ac 	ldr	x8, [x0, #184]
0050ba8b0 	ldr	x8, [x8]
0050ba8b4 	cbz	x8, #212 ; -> 0x50ba988 
0050ba8b8 	add	x0, x8, #1560
0050ba8bc 	mov	x1, xzr
0050ba8c0 	bl	#-5673420 ; -> 0x4b516f4 SilentFloat::get_Value
0050ba8c4 	fcmp	s0, #0.0
0050ba8c8 	b.le	#164 ; -> 0x50ba96c 
0050ba8cc 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba8d0 	fmov	s8, s0
0050ba8d4 	ldr	x8, [x8, #3552]
0050ba8d8 	ldr	x0, [x8]
0050ba8dc 	ldr	w8, [x0, #228]
0050ba8e0 	cbnz	w8, #8 ; -> 0x50ba8e8 
0050ba8e4 	bl	#-11705604 ; -> 0x4590be0 
0050ba8e8 	mov	w8, #1120403456
0050ba8ec 	mov	x1, xzr
0050ba8f0 	fmov	s0, w8
0050ba8f4 	mov	w8, #2139095040
0050ba8f8 	fadd	s1, s8, s0
0050ba8fc 	fmul	s0, s1, s0
0050ba900 	fmov	s1, w8
0050ba904 	mov	w8, #-2147483648
0050ba908 	fcvtzs	w9, s0
0050ba90c 	fcmp	s0, s1
0050ba910 	csel	w0, w8, w9, eq
0050ba914 	bl	#67905168 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba918 	mov	x2, x0
0050ba91c 	mov	x3, x1
0050ba920 	mov	x0, x20
0050ba924 	mov	x1, x19
0050ba928 	mov	x4, xzr
0050ba92c 	bl	#67895064 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050ba930 	mov	x19, x0
0050ba934 	mov	x20, x1
0050ba938 	mov	w0, #10000
0050ba93c 	mov	x1, xzr
0050ba940 	bl	#67905124 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050ba944 	mov	x2, x0
0050ba948 	mov	x3, x1
0050ba94c 	mov	x0, x19
0050ba950 	mov	x1, x20
0050ba954 	ldp	x20, x19, [sp, #32]
0050ba958 	ldp	x22, x21, [sp, #16]
0050ba95c 	ldr	x30, [sp, #8]
0050ba960 	mov	x4, xzr
0050ba964 	ldr	d8, [sp], #48
0050ba968 	b	#67895504 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050ba96c 	mov	x0, x20
0050ba970 	mov	x1, x19
0050ba974 	ldr	x30, [sp, #8]
0050ba978 	ldp	x20, x19, [sp, #32]
0050ba97c 	ldp	x22, x21, [sp, #16]
0050ba980 	ldr	d8, [sp], #48
0050ba984 	ret
0050ba988 	bl	#-11705468 ; -> 0x4590d0c 
