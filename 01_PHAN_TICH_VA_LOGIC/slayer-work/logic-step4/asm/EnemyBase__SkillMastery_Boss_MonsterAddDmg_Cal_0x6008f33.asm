0050b878c 	str	x30, [sp, #-48]!
0050b8790 	stp	x22, x21, [sp, #16]
0050b8794 	stp	x20, x19, [sp, #32]
0050b8798 	adrp	x22, #95543296 ; -> 0xabd6000 
0050b879c 	mov	x19, x2
0050b87a0 	mov	x20, x1
0050b87a4 	ldrb	w8, [x22, #708]
0050b87a8 	mov	x21, x0
0050b87ac 	tbnz	w8, #0, #24 ; -> 0x50b87c4 
0050b87b0 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b87b4 	ldr	x0, [x0, #3552]
0050b87b8 	bl	#-11697496 ; -> 0x4590a60 
0050b87bc 	mov	w8, #1
0050b87c0 	strb	w8, [x22, #708]
0050b87c4 	mov	w0, #31592
0050b87c8 	mov	x1, xzr
0050b87cc 	bl	#-4657704 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b87d0 	tbz	w0, #0, #52 ; -> 0x50b8804 
0050b87d4 	mov	w0, #31592
0050b87d8 	mov	x1, xzr
0050b87dc 	bl	#-4657540 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b87e0 	cbz	x0, #152 ; -> 0x50b8878 
0050b87e4 	mov	x1, x21
0050b87e8 	mov	x2, x20
0050b87ec 	mov	x3, x19
0050b87f0 	ldp	x20, x19, [sp, #32]
0050b87f4 	mov	x4, xzr
0050b87f8 	ldp	x22, x21, [sp, #16]
0050b87fc 	ldr	x30, [sp], #48
0050b8800 	b	#-5341724 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050b8804 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b8808 	ldr	x8, [x8, #3552]
0050b880c 	ldr	x0, [x8]
0050b8810 	ldr	w8, [x0, #228]
0050b8814 	cbnz	w8, #8 ; -> 0x50b881c 
0050b8818 	bl	#-11697208 ; -> 0x4590be0 
0050b881c 	mov	w0, #120
0050b8820 	mov	x1, xzr
0050b8824 	bl	#67913600 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8828 	mov	x2, x0
0050b882c 	mov	x3, x1
0050b8830 	mov	x0, x20
0050b8834 	mov	x1, x19
0050b8838 	mov	x4, xzr
0050b883c 	bl	#67903496 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b8840 	mov	x19, x0
0050b8844 	mov	x20, x1
0050b8848 	mov	w0, #100
0050b884c 	mov	x1, xzr
0050b8850 	bl	#67913556 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8854 	mov	x2, x0
0050b8858 	mov	x3, x1
0050b885c 	mov	x0, x19
0050b8860 	mov	x1, x20
0050b8864 	ldp	x20, x19, [sp, #32]
0050b8868 	ldp	x22, x21, [sp, #16]
0050b886c 	mov	x4, xzr
0050b8870 	ldr	x30, [sp], #48
0050b8874 	b	#67903940 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b8878 	bl	#-11697004 ; -> 0x4590d0c 
