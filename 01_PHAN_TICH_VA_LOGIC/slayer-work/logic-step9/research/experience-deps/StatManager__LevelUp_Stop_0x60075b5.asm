004f172d4 	str	x30, [sp, #-32]!
004f172d8 	stp	x20, x19, [sp, #16]
004f172dc 	adrp	x20, #97247232 ; -> 0xabd5000 
004f172e0 	mov	x19, x0
004f172e4 	ldrb	w8, [x20, #1734]
004f172e8 	tbnz	w8, #0, #24 ; -> 0x4f17300 
004f172ec 	adrp	x0, #89198592 ; -> 0xa428000 
004f172f0 	ldr	x0, [x0, #2696]
004f172f4 	bl	#-9988244 ; -> 0x4590a60 
004f172f8 	mov	w8, #1
004f172fc 	strb	w8, [x20, #1734]
004f17300 	mov	w0, #7840
004f17304 	mov	x1, xzr
004f17308 	bl	#-2948452 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f1730c 	tbz	w0, #0, #40 ; -> 0x4f17334 
004f17310 	mov	w0, #7840
004f17314 	mov	x1, xzr
004f17318 	bl	#-2948288 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f1731c 	cbz	x0, #80 ; -> 0x4f1736c 
004f17320 	mov	x1, x19
004f17324 	ldp	x20, x19, [sp, #16]
004f17328 	mov	x2, xzr
004f1732c 	ldr	x30, [sp], #32
004f17330 	b	#-3771920 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f17334 	adrp	x20, #89198592 ; -> 0xa428000 
004f17338 	mov	x0, x19
004f1733c 	ldr	x20, [x20, #2696]
004f17340 	bl	#-4204 ; -> 0x4f162d4 StatManager::LevelUpRequest
004f17344 	ldr	x8, [x20]
004f17348 	strb	wzr, [x19, #208]
004f1734c 	strb	wzr, [x19, #225]
004f17350 	ldr	x8, [x8, #184]
004f17354 	ldr	x0, [x8]
004f17358 	cbz	x0, #20 ; -> 0x4f1736c 
004f1735c 	ldp	x20, x19, [sp, #16]
004f17360 	mov	x1, xzr
004f17364 	ldr	x30, [sp], #32
004f17368 	b	#3344696 ; -> 0x5247ca0 PlayerClassManager::CheckReddot
004f1736c 	bl	#-9987680 ; -> 0x4590d0c 
