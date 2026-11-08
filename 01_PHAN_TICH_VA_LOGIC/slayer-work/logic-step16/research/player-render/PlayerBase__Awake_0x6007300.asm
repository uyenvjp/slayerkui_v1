004ee62b4 	stp	x30, x23, [sp, #-48]!
004ee62b8 	stp	x22, x21, [sp, #16]
004ee62bc 	stp	x20, x19, [sp, #32]
004ee62c0 	adrp	x20, #97447936 ; -> 0xabd5000 
004ee62c4 	mov	x19, x0
004ee62c8 	ldrb	w8, [x20, #1424]
004ee62cc 	tbnz	w8, #0, #72 ; -> 0x4ee6314 
004ee62d0 	adrp	x0, #89411584 ; -> 0xa42b000 
004ee62d4 	ldr	x0, [x0, #2248]
004ee62d8 	bl	#-9787512 ; -> 0x4590a60 
004ee62dc 	adrp	x0, #89149440 ; -> 0xa3eb000 
004ee62e0 	ldr	x0, [x0, #3256]
004ee62e4 	bl	#-9787524 ; -> 0x4590a60 
004ee62e8 	adrp	x0, #89141248 ; -> 0xa3e9000 
004ee62ec 	ldr	x0, [x0, #1384]
004ee62f0 	bl	#-9787536 ; -> 0x4590a60 
004ee62f4 	adrp	x0, #89341952 ; -> 0xa41a000 
004ee62f8 	ldr	x0, [x0, #3856]
004ee62fc 	bl	#-9787548 ; -> 0x4590a60 
004ee6300 	adrp	x0, #89362432 ; -> 0xa41f000 
004ee6304 	ldr	x0, [x0, #120]
004ee6308 	bl	#-9787560 ; -> 0x4590a60 
004ee630c 	mov	w8, #1
004ee6310 	strb	w8, [x20, #1424]
004ee6314 	mov	w0, #32780
004ee6318 	mov	x1, xzr
004ee631c 	bl	#-2747768 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ee6320 	tbz	w0, #0, #44 ; -> 0x4ee634c 
004ee6324 	mov	w0, #32780
004ee6328 	mov	x1, xzr
004ee632c 	bl	#-2747604 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ee6330 	cbz	x0, #268 ; -> 0x4ee643c 
004ee6334 	mov	x1, x19
004ee6338 	ldp	x20, x19, [sp, #32]
004ee633c 	ldp	x22, x21, [sp, #16]
004ee6340 	mov	x2, xzr
004ee6344 	ldp	x30, x23, [sp], #48
004ee6348 	b	#-3571240 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ee634c 	adrp	x20, #89341952 ; -> 0xa41a000 
004ee6350 	adrp	x23, #89141248 ; -> 0xa3e9000 
004ee6354 	ldr	x20, [x20, #3856]
004ee6358 	ldr	x0, [x20]
004ee635c 	ldr	w8, [x0, #228]
004ee6360 	ldr	x23, [x23, #1384]
004ee6364 	cbnz	w8, #12 ; -> 0x4ee6370 
004ee6368 	bl	#-9787272 ; -> 0x4590be0 
004ee636c 	ldr	x0, [x20]
004ee6370 	ldr	x8, [x0, #184]
004ee6374 	adrp	x22, #89362432 ; -> 0xa41f000 
004ee6378 	adrp	x21, #89411584 ; -> 0xa42b000 
004ee637c 	mov	x1, x19
004ee6380 	str	x19, [x8]
004ee6384 	ldr	x22, [x22, #120]
004ee6388 	ldr	x8, [x20]
004ee638c 	adrp	x20, #89149440 ; -> 0xa3eb000 
004ee6390 	ldr	x21, [x21, #2248]
004ee6394 	ldr	x20, [x20, #3256]
004ee6398 	ldr	x0, [x8, #184]
004ee639c 	bl	#-9787800 ; -> 0x4590a04 
004ee63a0 	ldr	x0, [x23]
004ee63a4 	ldr	w8, [x0, #228]
004ee63a8 	cbnz	w8, #12 ; -> 0x4ee63b4 
004ee63ac 	bl	#-9787340 ; -> 0x4590be0 
004ee63b0 	ldr	x0, [x23]
004ee63b4 	ldr	x8, [x0, #184]
004ee63b8 	add	x0, x19, #312
004ee63bc 	ldr	x1, [x8]
004ee63c0 	str	x1, [x19, #312]
004ee63c4 	bl	#-9787840 ; -> 0x4590a04 
004ee63c8 	mov	w8, #1
004ee63cc 	mov	x0, x19
004ee63d0 	mov	x1, xzr
004ee63d4 	str	w8, [x19, #32]
004ee63d8 	bl	#1218904 ; -> 0x500fd30 Character::Awake
004ee63dc 	ldr	x0, [x22]
004ee63e0 	mov	w1, #1
004ee63e4 	bl	#-9787540 ; -> 0x4590b50 
004ee63e8 	mov	x1, x0
004ee63ec 	mov	x0, x19
004ee63f0 	str	x1, [x0, #216]!
004ee63f4 	bl	#-9787888 ; -> 0x4590a04 
004ee63f8 	ldr	x1, [x21]
004ee63fc 	mov	x0, x19
004ee6400 	bl	#16391320 ; -> 0x5e88098 
004ee6404 	mov	x1, x0
004ee6408 	str	x0, [x19, #320]
004ee640c 	add	x0, x19, #320
004ee6410 	bl	#-9787916 ; -> 0x4590a04 
004ee6414 	ldr	x1, [x20]
004ee6418 	mov	x0, x19
004ee641c 	bl	#16391292 ; -> 0x5e88098 
004ee6420 	mov	x1, x0
004ee6424 	add	x0, x19, #328
004ee6428 	str	x1, [x19, #328]
004ee642c 	ldp	x20, x19, [sp, #32]
004ee6430 	ldp	x22, x21, [sp, #16]
004ee6434 	ldp	x30, x23, [sp], #48
004ee6438 	b	#-9787956 ; -> 0x4590a04 
004ee643c 	bl	#-9787184 ; -> 0x4590d0c 
