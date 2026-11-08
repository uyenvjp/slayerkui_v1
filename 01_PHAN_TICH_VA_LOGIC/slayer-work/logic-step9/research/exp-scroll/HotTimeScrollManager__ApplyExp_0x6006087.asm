004d82bd0 	str	x30, [sp, #-48]!
004d82bd4 	stp	x22, x21, [sp, #16]
004d82bd8 	stp	x20, x19, [sp, #32]
004d82bdc 	adrp	x21, #98902016 ; -> 0xabd4000 
004d82be0 	mov	x19, x1
004d82be4 	mov	x20, x0
004d82be8 	ldrb	w8, [x21, #3136]
004d82bec 	tbnz	w8, #0, #24 ; -> 0x4d82c04 
004d82bf0 	adrp	x0, #90599424 ; -> 0xa3e9000 
004d82bf4 	ldr	x0, [x0, #3552]
004d82bf8 	bl	#-8331672 ; -> 0x4590a60 
004d82bfc 	mov	w8, #1
004d82c00 	strb	w8, [x21, #3136]
004d82c04 	mov	w0, #27530
004d82c08 	mov	x1, xzr
004d82c0c 	bl	#-1291880 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d82c10 	tbz	w0, #0, #48 ; -> 0x4d82c40 
004d82c14 	mov	w0, #27530
004d82c18 	mov	x1, xzr
004d82c1c 	bl	#-1291716 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d82c20 	cbz	x0, #272 ; -> 0x4d82d30 
004d82c24 	mov	x1, x20
004d82c28 	mov	x2, x19
004d82c2c 	mov	x3, xzr
004d82c30 	ldp	x20, x19, [sp, #32]
004d82c34 	ldp	x22, x21, [sp, #16]
004d82c38 	ldr	x30, [sp], #48
004d82c3c 	b	#-1970908 ; -> 0x4ba1960 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_673
004d82c40 	ldr	x8, [x20, #32]
004d82c44 	cbz	x8, #72 ; -> 0x4d82c8c 
004d82c48 	ldr	w8, [x20, #40]
004d82c4c 	cmp	w8, #2
004d82c50 	b.eq	#120 ; -> 0x4d82cc8 
004d82c54 	cmp	w8, #1
004d82c58 	b.eq	#68 ; -> 0x4d82c9c 
004d82c5c 	cbnz	w8, #48 ; -> 0x4d82c8c 
004d82c60 	adrp	x8, #90599424 ; -> 0xa3e9000 
004d82c64 	mov	x20, x19
004d82c68 	ldr	x8, [x8, #3552]
004d82c6c 	ldr	x21, [x19]
004d82c70 	ldr	x22, [x20, #8]!
004d82c74 	ldr	x0, [x8]
004d82c78 	ldr	w8, [x0, #228]
004d82c7c 	cbnz	w8, #8 ; -> 0x4d82c84 
004d82c80 	bl	#-8331424 ; -> 0x4590be0 
004d82c84 	mov	w0, #2
004d82c88 	b	#104 ; -> 0x4d82cf0 
004d82c8c 	ldp	x20, x19, [sp, #32]
004d82c90 	ldp	x22, x21, [sp, #16]
004d82c94 	ldr	x30, [sp], #48
004d82c98 	ret
004d82c9c 	adrp	x8, #90599424 ; -> 0xa3e9000 
004d82ca0 	mov	x20, x19
004d82ca4 	ldr	x8, [x8, #3552]
004d82ca8 	ldr	x21, [x19]
004d82cac 	ldr	x22, [x20, #8]!
004d82cb0 	ldr	x0, [x8]
004d82cb4 	ldr	w8, [x0, #228]
004d82cb8 	cbnz	w8, #8 ; -> 0x4d82cc0 
004d82cbc 	bl	#-8331484 ; -> 0x4590be0 
004d82cc0 	mov	w0, #4
004d82cc4 	b	#44 ; -> 0x4d82cf0 
004d82cc8 	adrp	x8, #90599424 ; -> 0xa3e9000 
004d82ccc 	mov	x20, x19
004d82cd0 	ldr	x8, [x8, #3552]
004d82cd4 	ldr	x21, [x19]
004d82cd8 	ldr	x22, [x20, #8]!
004d82cdc 	ldr	x0, [x8]
004d82ce0 	ldr	w8, [x0, #228]
004d82ce4 	cbnz	w8, #8 ; -> 0x4d82cec 
004d82ce8 	bl	#-8331528 ; -> 0x4590be0 
004d82cec 	mov	w0, #5
004d82cf0 	mov	x1, xzr
004d82cf4 	bl	#71279280 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004d82cf8 	mov	x2, x0
004d82cfc 	mov	x3, x1
004d82d00 	mov	x0, x21
004d82d04 	mov	x1, x22
004d82d08 	mov	x4, xzr
004d82d0c 	bl	#71269176 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004d82d10 	mov	x8, x1
004d82d14 	ldp	x22, x21, [sp, #16]
004d82d18 	stp	x0, x8, [x19]
004d82d1c 	mov	x0, x20
004d82d20 	mov	x1, xzr
004d82d24 	ldp	x20, x19, [sp, #32]
004d82d28 	ldr	x30, [sp], #48
004d82d2c 	b	#-8332072 ; -> 0x4590a04 
004d82d30 	bl	#-8331300 ; -> 0x4590d0c 
