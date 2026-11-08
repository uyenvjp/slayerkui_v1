0050b869c 	str	x30, [sp, #-48]!
0050b86a0 	stp	x22, x21, [sp, #16]
0050b86a4 	stp	x20, x19, [sp, #32]
0050b86a8 	adrp	x22, #95543296 ; -> 0xabd6000 
0050b86ac 	mov	x19, x2
0050b86b0 	mov	x20, x1
0050b86b4 	ldrb	w8, [x22, #707]
0050b86b8 	mov	x21, x0
0050b86bc 	tbnz	w8, #0, #24 ; -> 0x50b86d4 
0050b86c0 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b86c4 	ldr	x0, [x0, #3552]
0050b86c8 	bl	#-11697256 ; -> 0x4590a60 
0050b86cc 	mov	w8, #1
0050b86d0 	strb	w8, [x22, #707]
0050b86d4 	mov	w0, #31591
0050b86d8 	mov	x1, xzr
0050b86dc 	bl	#-4657464 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b86e0 	tbz	w0, #0, #52 ; -> 0x50b8714 
0050b86e4 	mov	w0, #31591
0050b86e8 	mov	x1, xzr
0050b86ec 	bl	#-4657300 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b86f0 	cbz	x0, #152 ; -> 0x50b8788 
0050b86f4 	mov	x1, x21
0050b86f8 	mov	x2, x20
0050b86fc 	mov	x3, x19
0050b8700 	ldp	x20, x19, [sp, #32]
0050b8704 	mov	x4, xzr
0050b8708 	ldp	x22, x21, [sp, #16]
0050b870c 	ldr	x30, [sp], #48
0050b8710 	b	#-5341484 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050b8714 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b8718 	ldr	x8, [x8, #3552]
0050b871c 	ldr	x0, [x8]
0050b8720 	ldr	w8, [x0, #228]
0050b8724 	cbnz	w8, #8 ; -> 0x50b872c 
0050b8728 	bl	#-11696968 ; -> 0x4590be0 
0050b872c 	mov	w0, #120
0050b8730 	mov	x1, xzr
0050b8734 	bl	#67913840 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8738 	mov	x2, x0
0050b873c 	mov	x3, x1
0050b8740 	mov	x0, x20
0050b8744 	mov	x1, x19
0050b8748 	mov	x4, xzr
0050b874c 	bl	#67903736 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b8750 	mov	x19, x0
0050b8754 	mov	x20, x1
0050b8758 	mov	w0, #100
0050b875c 	mov	x1, xzr
0050b8760 	bl	#67913796 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8764 	mov	x2, x0
0050b8768 	mov	x3, x1
0050b876c 	mov	x0, x19
0050b8770 	mov	x1, x20
0050b8774 	ldp	x20, x19, [sp, #32]
0050b8778 	ldp	x22, x21, [sp, #16]
0050b877c 	mov	x4, xzr
0050b8780 	ldr	x30, [sp], #48
0050b8784 	b	#67904180 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b8788 	bl	#-11696764 ; -> 0x4590d0c 
