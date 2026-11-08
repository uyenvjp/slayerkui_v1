005059eec 	stp	x30, x19, [sp, #-16]!
005059ef0 	mov	x19, x0
005059ef4 	mov	w0, #6747
005059ef8 	mov	x1, xzr
005059efc 	bl	#-4270424 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005059f00 	tbz	w0, #0, #36 ; -> 0x5059f24 
005059f04 	mov	w0, #6747
005059f08 	mov	x1, xzr
005059f0c 	bl	#-4270260 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005059f10 	cbz	x0, #124 ; -> 0x5059f8c 
005059f14 	mov	x1, x19
005059f18 	mov	x2, xzr
005059f1c 	ldp	x30, x19, [sp], #16
005059f20 	b	#-5090028 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
005059f24 	ldrb	w8, [x19, #86]
005059f28 	cbz	w8, #88 ; -> 0x5059f80 
005059f2c 	adrp	x19, #95903744 ; -> 0xabcf000 
005059f30 	ldrb	w8, [x19, #636]
005059f34 	cbnz	w8, #24 ; -> 0x5059f4c 
005059f38 	adrp	x0, #87646208 ; -> 0xa3ef000 
005059f3c 	ldr	x0, [x0, #3328]
005059f40 	bl	#-11310304 ; -> 0x4590a60 
005059f44 	mov	w8, #1
005059f48 	strb	w8, [x19, #636]
005059f4c 	adrp	x8, #87646208 ; -> 0xa3ef000 
005059f50 	ldr	x8, [x8, #3328]
005059f54 	ldr	x8, [x8]
005059f58 	ldr	x8, [x8, #184]
005059f5c 	ldr	x8, [x8]
005059f60 	cbz	x8, #44 ; -> 0x5059f8c 
005059f64 	ldr	x0, [x8, #80]
005059f68 	cbz	x0, #36 ; -> 0x5059f8c 
005059f6c 	mov	w1, #5
005059f70 	mov	x2, xzr
005059f74 	bl	#68752 ; -> 0x506ac04 DragonValleyManager_Trade::GetTradeItemValue
005059f78 	scvtf	s0, w0
005059f7c 	b	#8 ; -> 0x5059f84 
005059f80 	movi	d0, #0000000000000000
005059f84 	ldp	x30, x19, [sp], #16
005059f88 	ret
005059f8c 	bl	#-11309696 ; -> 0x4590d0c 
