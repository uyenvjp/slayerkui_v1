0051f0a18 	sub	sp, sp, #64
0051f0a1c 	stp	x30, x21, [sp, #32]
0051f0a20 	stp	x20, x19, [sp, #48]
0051f0a24 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0a28 	mov	x19, x1
0051f0a2c 	mov	w20, w0
0051f0a30 	ldrb	w8, [x21, #3151]
0051f0a34 	tbnz	w8, #0, #36 ; -> 0x51f0a58 
0051f0a38 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0a3c 	ldr	x0, [x0, #128]
0051f0a40 	bl	#-12976096 ; -> 0x4590a60 
0051f0a44 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0a48 	ldr	x0, [x0, #2048]
0051f0a4c 	bl	#-12976108 ; -> 0x4590a60 
0051f0a50 	mov	w8, #1
0051f0a54 	strb	w8, [x21, #3151]
0051f0a58 	mov	w0, #30569
0051f0a5c 	mov	x1, xzr
0051f0a60 	bl	#-5936316 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0a64 	tbz	w0, #0, #48 ; -> 0x51f0a94 
0051f0a68 	mov	w0, #30569
0051f0a6c 	mov	x1, xzr
0051f0a70 	bl	#-5936152 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0a74 	cbz	x0, #132 ; -> 0x51f0af8 
0051f0a78 	mov	w1, w20
0051f0a7c 	mov	x2, x19
0051f0a80 	mov	x3, xzr
0051f0a84 	ldp	x20, x19, [sp, #48]
0051f0a88 	ldp	x30, x21, [sp, #32]
0051f0a8c 	add	sp, sp, #64
0051f0a90 	b	#-6368088 ; -> 0x4bddf38 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1876
0051f0a94 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0a98 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0a9c 	mov	x9, #-1
0051f0aa0 	ldr	x8, [x8, #128]
0051f0aa4 	add	x0, sp, #8
0051f0aa8 	mov	x1, xzr
0051f0aac 	ldr	x8, [x8]
0051f0ab0 	str	x8, [sp, #8]
0051f0ab4 	ldr	x21, [x21, #2048]
0051f0ab8 	str	x9, [sp, #16]
0051f0abc 	str	w20, [sp, #24]
0051f0ac0 	bl	#63696716 ; -> 0x8eafa0c System.Enum::ToString
0051f0ac4 	ldr	x8, [x21]
0051f0ac8 	mov	x20, x0
0051f0acc 	ldr	w9, [x8, #228]
0051f0ad0 	cbnz	w9, #12 ; -> 0x51f0adc 
0051f0ad4 	mov	x0, x8
0051f0ad8 	bl	#-12975864 ; -> 0x4590be0 
0051f0adc 	mov	x0, x20
0051f0ae0 	mov	x1, x19
0051f0ae4 	bl	#24 ; -> 0x51f0afc ServerPrefs::GetString
0051f0ae8 	ldp	x20, x19, [sp, #48]
0051f0aec 	ldp	x30, x21, [sp, #32]
0051f0af0 	add	sp, sp, #64
0051f0af4 	ret
0051f0af8 	bl	#-12975596 ; -> 0x4590d0c 
