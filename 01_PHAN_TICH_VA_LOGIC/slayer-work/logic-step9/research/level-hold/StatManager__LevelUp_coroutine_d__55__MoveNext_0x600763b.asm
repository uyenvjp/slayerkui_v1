004f22448 	str	x30, [sp, #-32]!
004f2244c 	stp	x20, x19, [sp, #16]
004f22450 	adrp	x20, #97202176 ; -> 0xabd5000 
004f22454 	mov	x19, x0
004f22458 	ldrb	w8, [x20, #1802]
004f2245c 	tbnz	w8, #0, #36 ; -> 0x4f22480 
004f22460 	adrp	x0, #88895488 ; -> 0xa3e9000 
004f22464 	ldr	x0, [x0, #1264]
004f22468 	bl	#-10033672 ; -> 0x4590a60 
004f2246c 	adrp	x0, #88915968 ; -> 0xa3ee000 
004f22470 	ldr	x0, [x0, #2504]
004f22474 	bl	#-10033684 ; -> 0x4590a60 
004f22478 	mov	w8, #1
004f2247c 	strb	w8, [x20, #1802]
004f22480 	ldr	w8, [x19, #16]
004f22484 	ldr	x20, [x19, #32]
004f22488 	cmp	w8, #1
004f2248c 	b.eq	#72 ; -> 0x4f224d4 
004f22490 	cbnz	w8, #232 ; -> 0x4f22578 
004f22494 	adrp	x8, #88915968 ; -> 0xa3ee000 
004f22498 	ldr	x8, [x8, #2504]
004f2249c 	ldr	x8, [x8]
004f224a0 	ldr	x8, [x8, #184]
004f224a4 	ldr	x0, [x8]
004f224a8 	mov	w8, #-1
004f224ac 	str	w8, [x19, #16]
004f224b0 	cbz	x0, #216 ; -> 0x4f22588 
004f224b4 	mov	x1, xzr
004f224b8 	bl	#-2259372 ; -> 0x4cfab0c TimeManager::ForceSyncStagePlay
004f224bc 	str	wzr, [x19, #40]
004f224c0 	cbz	x20, #200 ; -> 0x4f22588 
004f224c4 	mov	x0, x20
004f224c8 	mov	x1, xzr
004f224cc 	bl	#-40824 ; -> 0x4f18554 StatManager::Button_LevelUp
004f224d0 	b	#16 ; -> 0x4f224e0 
004f224d4 	mov	w8, #-1
004f224d8 	str	w8, [x19, #16]
004f224dc 	cbz	x20, #172 ; -> 0x4f22588 
004f224e0 	ldrb	w8, [x20, #225]
004f224e4 	cbz	w8, #124 ; -> 0x4f22560 
004f224e8 	ldrb	w8, [x20, #208]
004f224ec 	cbz	w8, #116 ; -> 0x4f22560 
004f224f0 	adrp	x8, #-50302976 ; -> 0x1f29000 
004f224f4 	ldr	s0, [x19, #40]
004f224f8 	ldr	s1, [x8, #2100]
004f224fc 	fadd	s0, s0, s1
004f22500 	fmov	s1, #0.50000000
004f22504 	fcmp	s0, s1
004f22508 	str	s0, [x19, #40]
004f2250c 	b.le	#16 ; -> 0x4f2251c 
004f22510 	mov	x0, x20
004f22514 	mov	x1, xzr
004f22518 	bl	#-40900 ; -> 0x4f18554 StatManager::Button_LevelUp
004f2251c 	adrp	x8, #88895488 ; -> 0xa3e9000 
004f22520 	ldr	x8, [x8, #1264]
004f22524 	ldr	x0, [x8]
004f22528 	ldr	w8, [x0, #228]
004f2252c 	cbnz	w8, #8 ; -> 0x4f22534 
004f22530 	bl	#-10033488 ; -> 0x4590be0 
004f22534 	adrp	x8, #-50302976 ; -> 0x1f29000 
004f22538 	mov	x0, xzr
004f2253c 	ldr	s0, [x8, #2184]
004f22540 	bl	#-3969656 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004f22544 	mov	x1, x0
004f22548 	str	x0, [x19, #24]!
004f2254c 	mov	x0, x19
004f22550 	bl	#-10033996 ; -> 0x4590a04 
004f22554 	mov	w0, #1
004f22558 	stur	w0, [x19, #-8]
004f2255c 	b	#32 ; -> 0x4f2257c 
004f22560 	mov	x0, x20
004f22564 	mov	x1, xzr
004f22568 	bl	#-49812 ; -> 0x4f162d4 StatManager::LevelUpRequest
004f2256c 	mov	w0, wzr
004f22570 	strb	wzr, [x20, #225]
004f22574 	b	#8 ; -> 0x4f2257c 
004f22578 	mov	w0, wzr
004f2257c 	ldp	x20, x19, [sp, #16]
004f22580 	ldr	x30, [sp], #32
004f22584 	ret
004f22588 	bl	#-10033276 ; -> 0x4590d0c 
