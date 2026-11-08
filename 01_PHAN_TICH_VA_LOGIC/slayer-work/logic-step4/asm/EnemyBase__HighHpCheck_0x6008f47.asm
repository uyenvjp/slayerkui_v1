0050bba54 	str	x30, [sp, #-48]!
0050bba58 	stp	x22, x21, [sp, #16]
0050bba5c 	stp	x20, x19, [sp, #32]
0050bba60 	adrp	x19, #95531008 ; -> 0xabd6000 
0050bba64 	mov	x21, x0
0050bba68 	ldrb	w8, [x19, #724]
0050bba6c 	tbnz	w8, #0, #24 ; -> 0x50bba84 
0050bba70 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bba74 	ldr	x0, [x0, #3552]
0050bba78 	bl	#-11710488 ; -> 0x4590a60 
0050bba7c 	mov	w8, #1
0050bba80 	strb	w8, [x19, #724]
0050bba84 	mov	w0, #31615
0050bba88 	mov	x1, xzr
0050bba8c 	bl	#-4670696 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bba90 	tbz	w0, #0, #44 ; -> 0x50bbabc 
0050bba94 	mov	w0, #31615
0050bba98 	mov	x1, xzr
0050bba9c 	bl	#-4670532 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bbaa0 	cbz	x0, #208 ; -> 0x50bbb70 
0050bbaa4 	mov	x1, x21
0050bbaa8 	ldp	x20, x19, [sp, #32]
0050bbaac 	ldp	x22, x21, [sp, #16]
0050bbab0 	mov	x2, xzr
0050bbab4 	ldr	x30, [sp], #48
0050bbab8 	b	#-5481720 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0050bbabc 	adrp	x22, #87220224 ; -> 0xa3e9000 
0050bbac0 	mov	x0, x21
0050bbac4 	mov	x1, xzr
0050bbac8 	ldr	x22, [x22, #3552]
0050bbacc 	bl	#-677004 ; -> 0x5016640 Character::get_Hp_cur
0050bbad0 	mov	x19, x0
0050bbad4 	mov	x20, x1
0050bbad8 	mov	x0, x21
0050bbadc 	mov	x1, xzr
0050bbae0 	bl	#-677212 ; -> 0x5016584 Character::get_Hp_max
0050bbae4 	mov	x21, x0
0050bbae8 	ldr	x0, [x22]
0050bbaec 	mov	x22, x1
0050bbaf0 	ldr	w8, [x0, #228]
0050bbaf4 	cbnz	w8, #8 ; -> 0x50bbafc 
0050bbaf8 	bl	#-11710232 ; -> 0x4590be0 
0050bbafc 	mov	w0, #70
0050bbb00 	mov	x1, xzr
0050bbb04 	bl	#67900576 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bbb08 	mov	x2, x0
0050bbb0c 	mov	x3, x1
0050bbb10 	mov	x0, x21
0050bbb14 	mov	x1, x22
0050bbb18 	mov	x4, xzr
0050bbb1c 	bl	#67890472 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bbb20 	mov	x21, x0
0050bbb24 	mov	x22, x1
0050bbb28 	mov	w0, #100
0050bbb2c 	mov	x1, xzr
0050bbb30 	bl	#67900532 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bbb34 	mov	x2, x0
0050bbb38 	mov	x3, x1
0050bbb3c 	mov	x0, x21
0050bbb40 	mov	x1, x22
0050bbb44 	mov	x4, xzr
0050bbb48 	bl	#67890928 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bbb4c 	mov	x2, x0
0050bbb50 	mov	x3, x1
0050bbb54 	mov	x0, x19
0050bbb58 	mov	x1, x20
0050bbb5c 	ldp	x20, x19, [sp, #32]
0050bbb60 	ldp	x22, x21, [sp, #16]
0050bbb64 	mov	x4, xzr
0050bbb68 	ldr	x30, [sp], #48
0050bbb6c 	b	#67906400 ; -> 0x917e6cc System.Numerics.BigInteger::op_GreaterThan
0050bbb70 	bl	#-11710052 ; -> 0x4590d0c 
