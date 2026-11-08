00501ba70 	str	x30, [sp, #-32]!
00501ba74 	stp	x20, x19, [sp, #16]
00501ba78 	adrp	x20, #96182272 ; -> 0xabd5000 
00501ba7c 	mov	w19, w0
00501ba80 	ldrb	w8, [x20, #3706]
00501ba84 	tbnz	w8, #0, #36 ; -> 0x501baa8 
00501ba88 	adrp	x0, #87900160 ; -> 0xa3ef000 
00501ba8c 	ldr	x0, [x0, #624]
00501ba90 	bl	#-11055152 ; -> 0x4590a60 
00501ba94 	adrp	x0, #88166400 ; -> 0xa430000 
00501ba98 	ldr	x0, [x0, #1240]
00501ba9c 	bl	#-11055164 ; -> 0x4590a60 
00501baa0 	mov	w8, #1
00501baa4 	strb	w8, [x20, #3706]
00501baa8 	mov	w0, #983
00501baac 	mov	x1, xzr
00501bab0 	str	xzr, [sp, #8]
00501bab4 	bl	#-4015376 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501bab8 	tbz	w0, #0, #40 ; -> 0x501bae0 
00501babc 	mov	w0, #983
00501bac0 	mov	x1, xzr
00501bac4 	bl	#-4015212 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501bac8 	cbz	x0, #108 ; -> 0x501bb34 
00501bacc 	mov	w1, w19
00501bad0 	ldp	x20, x19, [sp, #16]
00501bad4 	mov	x2, xzr
00501bad8 	ldr	x30, [sp], #32
00501badc 	b	#-4818336 ; -> 0x4b8353c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_104
00501bae0 	adrp	x20, #87900160 ; -> 0xa3ef000 
00501bae4 	ldr	x20, [x20, #624]
00501bae8 	str	xzr, [sp, #8]
00501baec 	ldr	x0, [x20]
00501baf0 	ldr	w8, [x0, #228]
00501baf4 	cbnz	w8, #12 ; -> 0x501bb00 
00501baf8 	bl	#-11054872 ; -> 0x4590be0 
00501bafc 	ldr	x0, [x20]
00501bb00 	ldr	x8, [x0, #184]
00501bb04 	ldr	x0, [x8]
00501bb08 	cbz	x0, #44 ; -> 0x501bb34 
00501bb0c 	adrp	x8, #88166400 ; -> 0xa430000 
00501bb10 	add	x2, sp, #8
00501bb14 	mov	w1, w19
00501bb18 	ldr	x8, [x8, #1240]
00501bb1c 	ldr	x3, [x8]
00501bb20 	bl	#50922800 ; -> 0x80ac050 
00501bb24 	ldp	x20, x19, [sp, #16]
00501bb28 	ldr	x0, [sp, #8]
00501bb2c 	ldr	x30, [sp], #32
00501bb30 	ret
00501bb34 	bl	#-11054632 ; -> 0x4590d0c 
