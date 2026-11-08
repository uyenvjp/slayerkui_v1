00524025c 	sub	sp, sp, #96
005240260 	str	x30, [sp, #64]
005240264 	stp	x20, x19, [sp, #80]
005240268 	adrp	x20, #93937664 ; -> 0xabd6000 
00524026c 	mov	x19, x0
005240270 	ldrb	w8, [x20, #3695]
005240274 	tbnz	w8, #0, #36 ; -> 0x5240298 
005240278 	adrp	x0, #85676032 ; -> 0xa3f5000 
00524027c 	ldr	x0, [x0, #3904]
005240280 	bl	#-13301792 ; -> 0x4590a60 
005240284 	adrp	x0, #85647360 ; -> 0xa3ee000 
005240288 	ldr	x0, [x0, #2504]
00524028c 	bl	#-13301804 ; -> 0x4590a60 
005240290 	mov	w8, #1
005240294 	strb	w8, [x20, #3695]
005240298 	mov	w0, #42230
00524029c 	mov	x1, xzr
0052402a0 	bl	#-6262012 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052402a4 	tbz	w0, #0, #44 ; -> 0x52402d0 
0052402a8 	mov	w0, #42230
0052402ac 	mov	x1, xzr
0052402b0 	bl	#-6261848 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052402b4 	cbz	x0, #196 ; -> 0x5240378 
0052402b8 	mov	x1, x19
0052402bc 	ldp	x20, x19, [sp, #80]
0052402c0 	ldr	x30, [sp, #64]
0052402c4 	mov	x2, xzr
0052402c8 	add	sp, sp, #96
0052402cc 	b	#-7085484 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052402d0 	adrp	x8, #85647360 ; -> 0xa3ee000 
0052402d4 	ldr	x8, [x8, #2504]
0052402d8 	ldr	x8, [x8]
0052402dc 	ldr	x8, [x8, #184]
0052402e0 	ldr	x8, [x8]
0052402e4 	cbz	x8, #148 ; -> 0x5240378 
0052402e8 	ldur	q0, [x8, #168]
0052402ec 	ldur	q1, [x8, #184]
0052402f0 	mov	x0, sp
0052402f4 	ldur	q2, [x8, #200]
0052402f8 	mov	x1, xzr
0052402fc 	stp	q0, q1, [sp]
005240300 	ldur	q0, [x8, #216]
005240304 	stp	q2, q0, [sp, #32]
005240308 	bl	#-7266232 ; -> 0x4b52350 SilentInt::op_Implicit
00524030c 	mov	w8, #34953
005240310 	movk	w8, #34952, lsl #16
005240314 	smull	x8, w0, w8
005240318 	lsr	x8, x8, #32
00524031c 	add	w8, w8, w0
005240320 	mov	x0, x19
005240324 	asr	w9, w8, #5
005240328 	add	w1, w9, w8, lsr #31
00524032c 	bl	#-3480 ; -> 0x523f594 OfflineRewardManager::RewardCheck
005240330 	adrp	x8, #85676032 ; -> 0xa3f5000 
005240334 	ldr	x8, [x8, #3904]
005240338 	ldr	x8, [x8]
00524033c 	ldr	x8, [x8, #184]
005240340 	ldr	x0, [x8]
005240344 	cbz	x0, #52 ; -> 0x5240378 
005240348 	mov	x1, xzr
00524034c 	bl	#-1752112 ; -> 0x509471c SkillManager::SetActiveSkillGainShortCut
005240350 	mov	x0, xzr
005240354 	bl	#-11125508 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
005240358 	cbz	x0, #32 ; -> 0x5240378 
00524035c 	mov	w1, #3
005240360 	mov	x2, xzr
005240364 	bl	#-11123456 ; -> 0x47a4864 Gear2.GrowSlayer.Logging.KinesisLog::Login
005240368 	ldp	x20, x19, [sp, #80]
00524036c 	ldr	x30, [sp, #64]
005240370 	add	sp, sp, #96
005240374 	ret
005240378 	bl	#-13301356 ; -> 0x4590d0c 
