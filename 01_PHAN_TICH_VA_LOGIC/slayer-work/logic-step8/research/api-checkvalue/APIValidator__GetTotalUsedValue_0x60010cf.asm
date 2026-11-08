00481ff24 	str	x30, [sp, #-32]!
00481ff28 	stp	x20, x19, [sp, #16]
00481ff2c 	adrp	x20, #104529920 ; -> 0xabcf000 
00481ff30 	mov	w19, w0
00481ff34 	ldrb	w8, [x20, #1137]
00481ff38 	tbnz	w8, #0, #24 ; -> 0x481ff50 
00481ff3c 	adrp	x0, #96272384 ; -> 0xa3ef000 
00481ff40 	ldr	x0, [x0, #624]
00481ff44 	bl	#-2684132 ; -> 0x4590a60 
00481ff48 	mov	w8, #1
00481ff4c 	strb	w8, [x20, #1137]
00481ff50 	mov	w0, #2858
00481ff54 	mov	x1, xzr
00481ff58 	bl	#4355660 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00481ff5c 	tbz	w0, #0, #40 ; -> 0x481ff84 
00481ff60 	mov	w0, #2858
00481ff64 	mov	x1, xzr
00481ff68 	bl	#4355824 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00481ff6c 	cbz	x0, #80 ; -> 0x481ffbc 
00481ff70 	mov	w1, w19
00481ff74 	ldp	x20, x19, [sp, #16]
00481ff78 	mov	x2, xzr
00481ff7c 	ldr	x30, [sp], #32
00481ff80 	b	#3553060 ; -> 0x4b836a4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_106
00481ff84 	adrp	x8, #96272384 ; -> 0xa3ef000 
00481ff88 	ldr	x8, [x8, #624]
00481ff8c 	ldr	x0, [x8]
00481ff90 	ldr	w8, [x0, #228]
00481ff94 	cbnz	w8, #8 ; -> 0x481ff9c 
00481ff98 	bl	#-2683832 ; -> 0x4590be0 
00481ff9c 	mov	w0, w19
00481ffa0 	mov	x1, xzr
00481ffa4 	bl	#8370892 ; -> 0x501ba70 CurrencyData::Get
00481ffa8 	cbz	x0, #20 ; -> 0x481ffbc 
00481ffac 	ldp	x20, x19, [sp, #16]
00481ffb0 	mov	x1, xzr
00481ffb4 	ldr	x30, [sp], #32
00481ffb8 	b	#8368748 ; -> 0x501b224 CurrencyData::get_TotalUsed
00481ffbc 	bl	#-2683568 ; -> 0x4590d0c 
