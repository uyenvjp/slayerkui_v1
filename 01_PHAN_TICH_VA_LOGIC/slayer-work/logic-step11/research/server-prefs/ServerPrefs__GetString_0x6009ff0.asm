0051f0afc 	sub	sp, sp, #48
0051f0b00 	stp	x30, x21, [sp, #16]
0051f0b04 	stp	x20, x19, [sp, #32]
0051f0b08 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0b0c 	mov	x19, x1
0051f0b10 	mov	x20, x0
0051f0b14 	ldrb	w8, [x21, #3152]
0051f0b18 	tbnz	w8, #0, #36 ; -> 0x51f0b3c 
0051f0b1c 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0b20 	ldr	x0, [x0, #136]
0051f0b24 	bl	#-12976324 ; -> 0x4590a60 
0051f0b28 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0b2c 	ldr	x0, [x0, #2048]
0051f0b30 	bl	#-12976336 ; -> 0x4590a60 
0051f0b34 	mov	w8, #1
0051f0b38 	strb	w8, [x21, #3152]
0051f0b3c 	mov	w0, #30570
0051f0b40 	mov	x1, xzr
0051f0b44 	str	xzr, [sp, #8]
0051f0b48 	bl	#-5936548 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0b4c 	tbz	w0, #0, #48 ; -> 0x51f0b7c 
0051f0b50 	mov	w0, #30570
0051f0b54 	mov	x1, xzr
0051f0b58 	bl	#-5936384 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0b5c 	cbz	x0, #132 ; -> 0x51f0be0 
0051f0b60 	mov	x1, x20
0051f0b64 	mov	x2, x19
0051f0b68 	mov	x3, xzr
0051f0b6c 	ldp	x20, x19, [sp, #32]
0051f0b70 	ldp	x30, x21, [sp, #16]
0051f0b74 	add	sp, sp, #48
0051f0b78 	b	#-6752452 ; -> 0x4b802b4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_41
0051f0b7c 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0b80 	ldr	x21, [x21, #2048]
0051f0b84 	ldr	x0, [x21]
0051f0b88 	ldr	w8, [x0, #228]
0051f0b8c 	cbnz	w8, #12 ; -> 0x51f0b98 
0051f0b90 	bl	#-12976048 ; -> 0x4590be0 
0051f0b94 	ldr	x0, [x21]
0051f0b98 	ldr	x8, [x0, #184]
0051f0b9c 	ldr	x0, [x8]
0051f0ba0 	cbz	x0, #64 ; -> 0x51f0be0 
0051f0ba4 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0ba8 	add	x2, sp, #8
0051f0bac 	mov	x1, x20
0051f0bb0 	ldr	x8, [x8, #136]
0051f0bb4 	ldr	x3, [x8]
0051f0bb8 	bl	#50043520 ; -> 0x81aa638 
0051f0bbc 	tbz	w0, #0, #16 ; -> 0x51f0bcc 
0051f0bc0 	ldr	x8, [sp, #8]
0051f0bc4 	cbz	x8, #28 ; -> 0x51f0be0 
0051f0bc8 	ldr	x19, [x8, #24]
0051f0bcc 	mov	x0, x19
0051f0bd0 	ldp	x20, x19, [sp, #32]
0051f0bd4 	ldp	x30, x21, [sp, #16]
0051f0bd8 	add	sp, sp, #48
0051f0bdc 	ret
0051f0be0 	bl	#-12975828 ; -> 0x4590d0c 
