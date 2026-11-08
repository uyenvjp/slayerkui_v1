0051f0be4 	sub	sp, sp, #64
0051f0be8 	stp	x30, x21, [sp, #32]
0051f0bec 	stp	x20, x19, [sp, #48]
0051f0bf0 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0bf4 	mov	x19, x1
0051f0bf8 	mov	w20, w0
0051f0bfc 	ldrb	w8, [x21, #3153]
0051f0c00 	tbnz	w8, #0, #36 ; -> 0x51f0c24 
0051f0c04 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0c08 	ldr	x0, [x0, #128]
0051f0c0c 	bl	#-12976556 ; -> 0x4590a60 
0051f0c10 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0c14 	ldr	x0, [x0, #2048]
0051f0c18 	bl	#-12976568 ; -> 0x4590a60 
0051f0c1c 	mov	w8, #1
0051f0c20 	strb	w8, [x21, #3153]
0051f0c24 	mov	w0, #41798
0051f0c28 	mov	x1, xzr
0051f0c2c 	bl	#-5936776 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0c30 	tbz	w0, #0, #48 ; -> 0x51f0c60 
0051f0c34 	mov	w0, #41798
0051f0c38 	mov	x1, xzr
0051f0c3c 	bl	#-5936612 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0c40 	cbz	x0, #132 ; -> 0x51f0cc4 
0051f0c44 	mov	w1, w20
0051f0c48 	mov	x2, x19
0051f0c4c 	mov	x3, xzr
0051f0c50 	ldp	x20, x19, [sp, #48]
0051f0c54 	ldp	x30, x21, [sp, #32]
0051f0c58 	add	sp, sp, #64
0051f0c5c 	b	#-6210724 ; -> 0x4c047b8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2641
0051f0c60 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0c64 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0c68 	mov	x9, #-1
0051f0c6c 	ldr	x8, [x8, #128]
0051f0c70 	add	x0, sp, #8
0051f0c74 	mov	x1, xzr
0051f0c78 	ldr	x8, [x8]
0051f0c7c 	str	x8, [sp, #8]
0051f0c80 	ldr	x21, [x21, #2048]
0051f0c84 	str	x9, [sp, #16]
0051f0c88 	str	w20, [sp, #24]
0051f0c8c 	bl	#63696256 ; -> 0x8eafa0c System.Enum::ToString
0051f0c90 	ldr	x8, [x21]
0051f0c94 	mov	x20, x0
0051f0c98 	ldr	w9, [x8, #228]
0051f0c9c 	cbnz	w9, #12 ; -> 0x51f0ca8 
0051f0ca0 	mov	x0, x8
0051f0ca4 	bl	#-12976324 ; -> 0x4590be0 
0051f0ca8 	mov	x0, x20
0051f0cac 	mov	x1, x19
0051f0cb0 	bl	#24 ; -> 0x51f0cc8 ServerPrefs::SetString
0051f0cb4 	ldp	x20, x19, [sp, #48]
0051f0cb8 	ldp	x30, x21, [sp, #32]
0051f0cbc 	add	sp, sp, #64
0051f0cc0 	ret
0051f0cc4 	bl	#-12976056 ; -> 0x4590d0c 
