0050b887c 	stp	x30, x23, [sp, #-48]!
0050b8880 	stp	x22, x21, [sp, #16]
0050b8884 	stp	x20, x19, [sp, #32]
0050b8888 	adrp	x23, #95543296 ; -> 0xabd6000 
0050b888c 	mov	w21, w3
0050b8890 	mov	x19, x2
0050b8894 	ldrb	w8, [x23, #709]
0050b8898 	mov	x20, x1
0050b889c 	mov	x22, x0
0050b88a0 	tbnz	w8, #0, #24 ; -> 0x50b88b8 
0050b88a4 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b88a8 	ldr	x0, [x0, #3552]
0050b88ac 	bl	#-11697740 ; -> 0x4590a60 
0050b88b0 	mov	w8, #1
0050b88b4 	strb	w8, [x23, #709]
0050b88b8 	mov	w0, #31593
0050b88bc 	mov	x1, xzr
0050b88c0 	bl	#-4657948 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b88c4 	tbz	w0, #0, #56 ; -> 0x50b88fc 
0050b88c8 	mov	w0, #31593
0050b88cc 	mov	x1, xzr
0050b88d0 	bl	#-4657784 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b88d4 	cbz	x0, #192 ; -> 0x50b8994 
0050b88d8 	mov	x1, x22
0050b88dc 	mov	x2, x20
0050b88e0 	mov	x3, x19
0050b88e4 	mov	w4, w21
0050b88e8 	ldp	x20, x19, [sp, #32]
0050b88ec 	ldp	x22, x21, [sp, #16]
0050b88f0 	mov	x5, xzr
0050b88f4 	ldp	x30, x23, [sp], #48
0050b88f8 	b	#-5067660 ; -> 0x4be356c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1972
0050b88fc 	mov	x0, x22
0050b8900 	bl	#9572 ; -> 0x50bae64 EnemyBase::get_IsBurning
0050b8904 	tbz	w0, #0, #120 ; -> 0x50b897c 
0050b8908 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b890c 	ldr	x8, [x8, #3552]
0050b8910 	ldr	x0, [x8]
0050b8914 	ldr	w8, [x0, #228]
0050b8918 	cbnz	w8, #8 ; -> 0x50b8920 
0050b891c 	bl	#-11697468 ; -> 0x4590be0 
0050b8920 	add	w0, w21, #100
0050b8924 	mov	x1, xzr
0050b8928 	bl	#67913340 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b892c 	mov	x2, x0
0050b8930 	mov	x3, x1
0050b8934 	mov	x0, x20
0050b8938 	mov	x1, x19
0050b893c 	mov	x4, xzr
0050b8940 	bl	#67903236 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b8944 	mov	x19, x0
0050b8948 	mov	x20, x1
0050b894c 	mov	w0, #100
0050b8950 	mov	x1, xzr
0050b8954 	bl	#67913296 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8958 	mov	x2, x0
0050b895c 	mov	x3, x1
0050b8960 	mov	x0, x19
0050b8964 	mov	x1, x20
0050b8968 	ldp	x20, x19, [sp, #32]
0050b896c 	ldp	x22, x21, [sp, #16]
0050b8970 	mov	x4, xzr
0050b8974 	ldp	x30, x23, [sp], #48
0050b8978 	b	#67903680 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b897c 	mov	x0, x20
0050b8980 	mov	x1, x19
0050b8984 	ldp	x20, x19, [sp, #32]
0050b8988 	ldp	x22, x21, [sp, #16]
0050b898c 	ldp	x30, x23, [sp], #48
0050b8990 	ret
0050b8994 	bl	#-11697288 ; -> 0x4590d0c 
