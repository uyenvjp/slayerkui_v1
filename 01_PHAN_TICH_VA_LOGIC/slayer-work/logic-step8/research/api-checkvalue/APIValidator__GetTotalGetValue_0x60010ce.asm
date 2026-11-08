00481fe88 	str	x30, [sp, #-32]!
00481fe8c 	stp	x20, x19, [sp, #16]
00481fe90 	adrp	x20, #104529920 ; -> 0xabcf000 
00481fe94 	mov	w19, w0
00481fe98 	ldrb	w8, [x20, #1136]
00481fe9c 	tbnz	w8, #0, #24 ; -> 0x481feb4 
00481fea0 	adrp	x0, #96272384 ; -> 0xa3ef000 
00481fea4 	ldr	x0, [x0, #624]
00481fea8 	bl	#-2683976 ; -> 0x4590a60 
00481feac 	mov	w8, #1
00481feb0 	strb	w8, [x20, #1136]
00481feb4 	mov	w0, #982
00481feb8 	mov	x1, xzr
00481febc 	bl	#4355816 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00481fec0 	tbz	w0, #0, #40 ; -> 0x481fee8 
00481fec4 	mov	w0, #982
00481fec8 	mov	x1, xzr
00481fecc 	bl	#4355980 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00481fed0 	cbz	x0, #80 ; -> 0x481ff20 
00481fed4 	mov	w1, w19
00481fed8 	ldp	x20, x19, [sp, #16]
00481fedc 	mov	x2, xzr
00481fee0 	ldr	x30, [sp], #32
00481fee4 	b	#3553216 ; -> 0x4b836a4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_106
00481fee8 	adrp	x8, #96272384 ; -> 0xa3ef000 
00481feec 	ldr	x8, [x8, #624]
00481fef0 	ldr	x0, [x8]
00481fef4 	ldr	w8, [x0, #228]
00481fef8 	cbnz	w8, #8 ; -> 0x481ff00 
00481fefc 	bl	#-2683676 ; -> 0x4590be0 
00481ff00 	mov	w0, w19
00481ff04 	mov	x1, xzr
00481ff08 	bl	#8371048 ; -> 0x501ba70 CurrencyData::Get
00481ff0c 	cbz	x0, #20 ; -> 0x481ff20 
00481ff10 	ldp	x20, x19, [sp, #16]
00481ff14 	mov	x1, xzr
00481ff18 	ldr	x30, [sp], #32
00481ff1c 	b	#8368832 ; -> 0x501b1dc CurrencyData::get_TotalGet
00481ff20 	bl	#-2683412 ; -> 0x4590d0c 
