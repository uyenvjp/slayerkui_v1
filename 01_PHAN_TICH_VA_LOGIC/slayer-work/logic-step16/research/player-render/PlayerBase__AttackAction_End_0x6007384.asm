004ef5bf8 	str	x30, [sp, #-32]!
004ef5bfc 	stp	x20, x19, [sp, #16]
004ef5c00 	adrp	x20, #97386496 ; -> 0xabd5000 
004ef5c04 	mov	x19, x0
004ef5c08 	ldrb	w8, [x20, #1478]
004ef5c0c 	tbnz	w8, #0, #24 ; -> 0x4ef5c24 
004ef5c10 	adrp	x0, #89116672 ; -> 0xa3f2000 
004ef5c14 	ldr	x0, [x0, #552]
004ef5c18 	bl	#-9851320 ; -> 0x4590a60 
004ef5c1c 	mov	w8, #1
004ef5c20 	strb	w8, [x20, #1478]
004ef5c24 	mov	w0, #32892
004ef5c28 	mov	x1, xzr
004ef5c2c 	bl	#-2811528 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef5c30 	tbz	w0, #0, #40 ; -> 0x4ef5c58 
004ef5c34 	mov	w0, #32892
004ef5c38 	mov	x1, xzr
004ef5c3c 	bl	#-2811364 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef5c40 	cbz	x0, #132 ; -> 0x4ef5cc4 
004ef5c44 	mov	x1, x19
004ef5c48 	ldp	x20, x19, [sp, #16]
004ef5c4c 	mov	x2, xzr
004ef5c50 	ldr	x30, [sp], #32
004ef5c54 	b	#-3634996 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef5c58 	ldr	w8, [x19, #36]
004ef5c5c 	cmp	w8, #19
004ef5c60 	b.gt	#72 ; -> 0x4ef5ca8 
004ef5c64 	adrp	x20, #89116672 ; -> 0xa3f2000 
004ef5c68 	ldr	x20, [x20, #552]
004ef5c6c 	ldr	x0, [x20]
004ef5c70 	ldr	w8, [x0, #228]
004ef5c74 	cbnz	w8, #12 ; -> 0x4ef5c80 
004ef5c78 	bl	#-9851032 ; -> 0x4590be0 
004ef5c7c 	ldr	x0, [x20]
004ef5c80 	ldr	x8, [x0, #184]
004ef5c84 	ldr	x0, [x8]
004ef5c88 	cbz	x0, #60 ; -> 0x4ef5cc4 
004ef5c8c 	mov	x1, xzr
004ef5c90 	bl	#-736572 ; -> 0x4e41f54 GameManager::get_gameMode
004ef5c94 	cmp	w0, #3
004ef5c98 	b.ne	#28 ; -> 0x4ef5cb4 
004ef5c9c 	ldr	w8, [x19, #36]
004ef5ca0 	cmp	w8, #5
004ef5ca4 	b.ne	#16 ; -> 0x4ef5cb4 
004ef5ca8 	ldp	x20, x19, [sp, #16]
004ef5cac 	ldr	x30, [sp], #32
004ef5cb0 	ret
004ef5cb4 	mov	x0, x19
004ef5cb8 	ldp	x20, x19, [sp, #16]
004ef5cbc 	ldr	x30, [sp], #32
004ef5cc0 	b	#-7724 ; -> 0x4ef3e94 PlayerBase::Move_Start
004ef5cc4 	bl	#-9850808 ; -> 0x4590d0c 
