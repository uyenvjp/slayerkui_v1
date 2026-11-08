0050b8998 	str	d8, [sp, #-64]!
0050b899c 	stp	x30, x23, [sp, #16]
0050b89a0 	stp	x22, x21, [sp, #32]
0050b89a4 	stp	x20, x19, [sp, #48]
0050b89a8 	adrp	x23, #95543296 ; -> 0xabd6000 
0050b89ac 	mov	w19, w3
0050b89b0 	mov	x21, x2
0050b89b4 	ldrb	w8, [x23, #706]
0050b89b8 	mov	x22, x1
0050b89bc 	mov	x20, x0
0050b89c0 	tbnz	w8, #0, #36 ; -> 0x50b89e4 
0050b89c4 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b89c8 	ldr	x0, [x0, #3552]
0050b89cc 	bl	#-11698028 ; -> 0x4590a60 
0050b89d0 	adrp	x0, #87224320 ; -> 0xa3e7000 
0050b89d4 	ldr	x0, [x0, #1192]
0050b89d8 	bl	#-11698040 ; -> 0x4590a60 
0050b89dc 	mov	w8, #1
0050b89e0 	strb	w8, [x23, #706]
0050b89e4 	mov	w0, #31596
0050b89e8 	mov	x1, xzr
0050b89ec 	bl	#-4658248 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b89f0 	tbz	w0, #0, #60 ; -> 0x50b8a2c 
0050b89f4 	mov	w0, #31596
0050b89f8 	mov	x1, xzr
0050b89fc 	bl	#-4658084 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b8a00 	cbz	x0, #348 ; -> 0x50b8b5c 
0050b8a04 	mov	x1, x20
0050b8a08 	mov	x2, x22
0050b8a0c 	mov	x3, x21
0050b8a10 	mov	w4, w19
0050b8a14 	ldp	x20, x19, [sp, #48]
0050b8a18 	ldp	x22, x21, [sp, #32]
0050b8a1c 	mov	x5, xzr
0050b8a20 	ldp	x30, x23, [sp, #16]
0050b8a24 	ldr	d8, [sp], #64
0050b8a28 	b	#-5067964 ; -> 0x4be356c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1972
0050b8a2c 	adrp	x8, #87224320 ; -> 0xa3e7000 
0050b8a30 	ldr	x8, [x8, #1192]
0050b8a34 	ldr	x23, [x20, #520]
0050b8a38 	ldr	x0, [x8]
0050b8a3c 	ldr	w8, [x0, #228]
0050b8a40 	cbnz	w8, #8 ; -> 0x50b8a48 
0050b8a44 	bl	#-11697764 ; -> 0x4590be0 
0050b8a48 	mov	x0, x23
0050b8a4c 	mov	x1, xzr
0050b8a50 	mov	x2, xzr
0050b8a54 	bl	#76851260 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
0050b8a58 	tbz	w0, #0, #232 ; -> 0x50b8b40 
0050b8a5c 	adrp	x23, #95514624 ; -> 0xabcf000 
0050b8a60 	ldrb	w8, [x23, #636]
0050b8a64 	cbnz	w8, #24 ; -> 0x50b8a7c 
0050b8a68 	adrp	x0, #87257088 ; -> 0xa3ef000 
0050b8a6c 	ldr	x0, [x0, #3328]
0050b8a70 	bl	#-11698192 ; -> 0x4590a60 
0050b8a74 	mov	w8, #1
0050b8a78 	strb	w8, [x23, #636]
0050b8a7c 	adrp	x8, #87257088 ; -> 0xa3ef000 
0050b8a80 	ldr	x8, [x8, #3328]
0050b8a84 	ldr	x8, [x8]
0050b8a88 	ldr	x8, [x8, #184]
0050b8a8c 	ldr	x8, [x8]
0050b8a90 	cbz	x8, #204 ; -> 0x50b8b5c 
0050b8a94 	ldr	x0, [x8, #48]
0050b8a98 	cbz	x0, #196 ; -> 0x50b8b5c 
0050b8a9c 	mov	x1, xzr
0050b8aa0 	bl	#-388184 ; -> 0x5059e48 DragonValleyManager_Hunt::get_FreezeAddDmg
0050b8aa4 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b8aa8 	fmov	s8, s0
0050b8aac 	ldr	x8, [x8, #3552]
0050b8ab0 	ldr	x0, [x8]
0050b8ab4 	ldr	w8, [x0, #228]
0050b8ab8 	cbnz	w8, #8 ; -> 0x50b8ac0 
0050b8abc 	bl	#-11697884 ; -> 0x4590be0 
0050b8ac0 	add	w8, w19, #100
0050b8ac4 	mov	x1, xzr
0050b8ac8 	scvtf	s0, w8
0050b8acc 	mov	w8, #2139095040
0050b8ad0 	fmov	s1, w8
0050b8ad4 	mov	w8, #-2147483648
0050b8ad8 	fadd	s0, s8, s0
0050b8adc 	fcvtzs	w9, s0
0050b8ae0 	fcmp	s0, s1
0050b8ae4 	csel	w0, w8, w9, eq
0050b8ae8 	bl	#67912892 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8aec 	mov	x2, x0
0050b8af0 	mov	x3, x1
0050b8af4 	mov	x0, x22
0050b8af8 	mov	x1, x21
0050b8afc 	mov	x4, xzr
0050b8b00 	bl	#67902788 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b8b04 	mov	x21, x0
0050b8b08 	mov	x22, x1
0050b8b0c 	mov	w0, #100
0050b8b10 	mov	x1, xzr
0050b8b14 	bl	#67912848 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8b18 	mov	x2, x0
0050b8b1c 	mov	x3, x1
0050b8b20 	mov	x0, x21
0050b8b24 	mov	x1, x22
0050b8b28 	mov	x4, xzr
0050b8b2c 	bl	#67903244 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b8b30 	cmp	w19, #0
0050b8b34 	cset	w8, gt
0050b8b38 	strb	w8, [x20, #488]
0050b8b3c 	b	#12 ; -> 0x50b8b48 
0050b8b40 	mov	x0, x22
0050b8b44 	mov	x1, x21
0050b8b48 	ldp	x20, x19, [sp, #48]
0050b8b4c 	ldp	x22, x21, [sp, #32]
0050b8b50 	ldp	x30, x23, [sp, #16]
0050b8b54 	ldr	d8, [sp], #64
0050b8b58 	ret
0050b8b5c 	bl	#-11697744 ; -> 0x4590d0c 
