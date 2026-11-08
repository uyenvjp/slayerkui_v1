0050bbb74 	stp	x30, x23, [sp, #-48]!
0050bbb78 	stp	x22, x21, [sp, #16]
0050bbb7c 	stp	x20, x19, [sp, #32]
0050bbb80 	adrp	x20, #95531008 ; -> 0xabd6000 
0050bbb84 	mov	w19, w1
0050bbb88 	mov	x22, x0
0050bbb8c 	ldrb	w8, [x20, #725]
0050bbb90 	tbnz	w8, #0, #24 ; -> 0x50bbba8 
0050bbb94 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bbb98 	ldr	x0, [x0, #3552]
0050bbb9c 	bl	#-11710780 ; -> 0x4590a60 
0050bbba0 	mov	w8, #1
0050bbba4 	strb	w8, [x20, #725]
0050bbba8 	mov	w0, #31617
0050bbbac 	mov	x1, xzr
0050bbbb0 	bl	#-4670988 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bbbb4 	tbz	w0, #0, #48 ; -> 0x50bbbe4 
0050bbbb8 	mov	w0, #31617
0050bbbbc 	mov	x1, xzr
0050bbbc0 	bl	#-4670824 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bbbc4 	cbz	x0, #212 ; -> 0x50bbc98 
0050bbbc8 	mov	x1, x22
0050bbbcc 	mov	w2, w19
0050bbbd0 	mov	x3, xzr
0050bbbd4 	ldp	x20, x19, [sp, #32]
0050bbbd8 	ldp	x22, x21, [sp, #16]
0050bbbdc 	ldp	x30, x23, [sp], #48
0050bbbe0 	b	#-5444940 ; -> 0x4b8a694 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_231
0050bbbe4 	adrp	x23, #87220224 ; -> 0xa3e9000 
0050bbbe8 	mov	x0, x22
0050bbbec 	mov	x1, xzr
0050bbbf0 	ldr	x23, [x23, #3552]
0050bbbf4 	bl	#-677300 ; -> 0x5016640 Character::get_Hp_cur
0050bbbf8 	mov	x20, x0
0050bbbfc 	mov	x21, x1
0050bbc00 	mov	x0, x22
0050bbc04 	mov	x1, xzr
0050bbc08 	bl	#-677508 ; -> 0x5016584 Character::get_Hp_max
0050bbc0c 	mov	x22, x0
0050bbc10 	ldr	x0, [x23]
0050bbc14 	mov	x23, x1
0050bbc18 	ldr	w8, [x0, #228]
0050bbc1c 	cbnz	w8, #8 ; -> 0x50bbc24 
0050bbc20 	bl	#-11710528 ; -> 0x4590be0 
0050bbc24 	mov	w0, w19
0050bbc28 	mov	x1, xzr
0050bbc2c 	bl	#67900280 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bbc30 	mov	x2, x0
0050bbc34 	mov	x3, x1
0050bbc38 	mov	x0, x22
0050bbc3c 	mov	x1, x23
0050bbc40 	mov	x4, xzr
0050bbc44 	bl	#67890176 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bbc48 	mov	x19, x0
0050bbc4c 	mov	x22, x1
0050bbc50 	mov	w0, #100
0050bbc54 	mov	x1, xzr
0050bbc58 	bl	#67900236 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bbc5c 	mov	x2, x0
0050bbc60 	mov	x3, x1
0050bbc64 	mov	x0, x19
0050bbc68 	mov	x1, x22
0050bbc6c 	mov	x4, xzr
0050bbc70 	bl	#67890632 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bbc74 	mov	x2, x0
0050bbc78 	mov	x3, x1
0050bbc7c 	mov	x0, x20
0050bbc80 	mov	x1, x21
0050bbc84 	ldp	x20, x19, [sp, #32]
0050bbc88 	ldp	x22, x21, [sp, #16]
0050bbc8c 	mov	x4, xzr
0050bbc90 	ldp	x30, x23, [sp], #48
0050bbc94 	b	#67905976 ; -> 0x917e64c System.Numerics.BigInteger::op_LessThanOrEqual
0050bbc98 	bl	#-11710348 ; -> 0x4590d0c 
