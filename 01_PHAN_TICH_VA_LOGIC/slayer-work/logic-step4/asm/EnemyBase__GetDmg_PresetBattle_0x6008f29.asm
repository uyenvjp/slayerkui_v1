0050b8fcc 	sub	sp, sp, #208
0050b8fd0 	str	d8, [sp, #96]
0050b8fd4 	stp	x29, x30, [sp, #112]
0050b8fd8 	stp	x28, x27, [sp, #128]
0050b8fdc 	stp	x26, x25, [sp, #144]
0050b8fe0 	stp	x24, x23, [sp, #160]
0050b8fe4 	stp	x22, x21, [sp, #176]
0050b8fe8 	stp	x20, x19, [sp, #192]
0050b8fec 	adrp	x27, #95543296 ; -> 0xabd6000 
0050b8ff0 	ldr	w28, [sp, #208]
0050b8ff4 	mov	x19, x7
0050b8ff8 	ldrb	w8, [x27, #700]
0050b8ffc 	mov	w26, w6
0050b9000 	mov	w25, w5
0050b9004 	mov	w24, w4
0050b9008 	mov	w21, w3
0050b900c 	mov	x23, x2
0050b9010 	mov	x22, x1
0050b9014 	mov	x20, x0
0050b9018 	tbnz	w8, #0, #168 ; -> 0x50b90c0 
0050b901c 	adrp	x0, #87228416 ; -> 0xa3e9000 
0050b9020 	ldr	x0, [x0, #3552]
0050b9024 	bl	#-11699652 ; -> 0x4590a60 
0050b9028 	adrp	x0, #87265280 ; -> 0xa3f2000 
0050b902c 	ldr	x0, [x0, #3032]
0050b9030 	bl	#-11699664 ; -> 0x4590a60 
0050b9034 	adrp	x0, #87527424 ; -> 0xa432000 
0050b9038 	ldr	x0, [x0, #2784]
0050b903c 	bl	#-11699676 ; -> 0x4590a60 
0050b9040 	adrp	x0, #87265280 ; -> 0xa3f2000 
0050b9044 	ldr	x0, [x0, #3056]
0050b9048 	bl	#-11699688 ; -> 0x4590a60 
0050b904c 	adrp	x0, #87265280 ; -> 0xa3f2000 
0050b9050 	ldr	x0, [x0, #552]
0050b9054 	bl	#-11699700 ; -> 0x4590a60 
0050b9058 	adrp	x0, #87523328 ; -> 0xa431000 
0050b905c 	ldr	x0, [x0, #112]
0050b9060 	bl	#-11699712 ; -> 0x4590a60 
0050b9064 	adrp	x0, #87220224 ; -> 0xa3e7000 
0050b9068 	ldr	x0, [x0, #1192]
0050b906c 	bl	#-11699724 ; -> 0x4590a60 
0050b9070 	adrp	x0, #87429120 ; -> 0xa41a000 
0050b9074 	ldr	x0, [x0, #3856]
0050b9078 	bl	#-11699736 ; -> 0x4590a60 
0050b907c 	adrp	x0, #87461888 ; -> 0xa422000 
0050b9080 	ldr	x0, [x0, #3032]
0050b9084 	bl	#-11699748 ; -> 0x4590a60 
0050b9088 	adrp	x0, #87277568 ; -> 0xa3f5000 
0050b908c 	ldr	x0, [x0, #3904]
0050b9090 	bl	#-11699760 ; -> 0x4590a60 
0050b9094 	adrp	x0, #87498752 ; -> 0xa42b000 
0050b9098 	ldr	x0, [x0, #2600]
0050b909c 	bl	#-11699772 ; -> 0x4590a60 
0050b90a0 	adrp	x0, #87449600 ; -> 0xa41f000 
0050b90a4 	ldr	x0, [x0, #1848]
0050b90a8 	bl	#-11699784 ; -> 0x4590a60 
0050b90ac 	adrp	x0, #87404544 ; -> 0xa414000 
0050b90b0 	ldr	x0, [x0, #3032]
0050b90b4 	bl	#-11699796 ; -> 0x4590a60 
0050b90b8 	mov	w8, #1
0050b90bc 	strb	w8, [x27, #700]
0050b90c0 	mov	w0, #38489
0050b90c4 	mov	x1, xzr
0050b90c8 	str	xzr, [sp, #104]
0050b90cc 	stp	xzr, xzr, [sp, #80]
0050b90d0 	stp	xzr, xzr, [sp, #64]
0050b90d4 	bl	#-4660016 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b90d8 	tbz	w0, #0, #68 ; -> 0x50b911c 
0050b90dc 	mov	w0, #38489
0050b90e0 	mov	x1, xzr
0050b90e4 	bl	#-4659852 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b90e8 	cbz	x0, #2512 ; -> 0x50b9ab8 
0050b90ec 	and	w6, w25, #0x1
0050b90f0 	and	w7, w26, #0x1
0050b90f4 	mov	x1, x20
0050b90f8 	mov	x2, x22
0050b90fc 	mov	x3, x23
0050b9100 	mov	w4, w21
0050b9104 	mov	w5, w24
0050b9108 	str	xzr, [sp, #16]
0050b910c 	str	w28, [sp, #8]
0050b9110 	str	x19, [sp]
0050b9114 	bl	#-5067356 ; -> 0x4be3eb8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1980
0050b9118 	b	#1540 ; -> 0x50b971c 
0050b911c 	ldrb	w8, [x20, #512]
0050b9120 	cbz	w8, #1532 ; -> 0x50b971c 
0050b9124 	ldrb	w8, [x20, #360]
0050b9128 	cbz	w8, #140 ; -> 0x50b91b4 
0050b912c 	adrp	x8, #87498752 ; -> 0xa42b000 
0050b9130 	adrp	x9, #87404544 ; -> 0xa414000 
0050b9134 	mov	x0, x20
0050b9138 	ldr	x8, [x8, #2600]
0050b913c 	ldr	x9, [x9, #3032]
0050b9140 	ldr	x10, [x20]
0050b9144 	ldp	s0, s1, [x20, #152]
0050b9148 	ldr	s2, [x20, #160]
0050b914c 	ldr	x1, [x8]
0050b9150 	ldr	x2, [x9]
0050b9154 	ldr	x8, [x10, #696]
0050b9158 	ldr	x3, [x10, #704]
0050b915c 	blr	x8
0050b9160 	cmp	w28, #1
0050b9164 	b.ne	#1464 ; -> 0x50b971c 
0050b9168 	mov	x0, xzr
0050b916c 	bl	#1872452 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
0050b9170 	cbz	x0, #2376 ; -> 0x50b9ab8 
0050b9174 	mov	x1, xzr
0050b9178 	bl	#1872860 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
0050b917c 	cbz	x0, #2364 ; -> 0x50b9ab8 
0050b9180 	mov	x2, x19
0050b9184 	ldp	x20, x19, [sp, #192]
0050b9188 	ldp	x22, x21, [sp, #176]
0050b918c 	mov	w1, #27
0050b9190 	ldp	x24, x23, [sp, #160]
0050b9194 	mov	w3, #1
0050b9198 	ldp	x26, x25, [sp, #144]
0050b919c 	mov	x4, xzr
0050b91a0 	ldp	x28, x27, [sp, #128]
0050b91a4 	ldr	d8, [sp, #96]
0050b91a8 	ldp	x29, x30, [sp, #112]
0050b91ac 	add	sp, sp, #208
0050b91b0 	b	#1903728 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
0050b91b4 	adrp	x8, #87220224 ; -> 0xa3e7000 
0050b91b8 	ldr	x8, [x8, #1192]
0050b91bc 	ldr	x27, [x20, #528]
0050b91c0 	ldr	x0, [x8]
0050b91c4 	ldr	w8, [x0, #228]
0050b91c8 	cbnz	w8, #8 ; -> 0x50b91d0 
0050b91cc 	bl	#-11699692 ; -> 0x4590be0 
0050b91d0 	mov	x0, x27
0050b91d4 	mov	x1, xzr
0050b91d8 	mov	x2, xzr
0050b91dc 	bl	#76849332 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
0050b91e0 	tbz	w0, #0, #124 ; -> 0x50b925c 
0050b91e4 	adrp	x27, #87429120 ; -> 0xa41a000 
0050b91e8 	ldr	x27, [x27, #3856]
0050b91ec 	ldr	x0, [x27]
0050b91f0 	ldr	w8, [x0, #228]
0050b91f4 	cbnz	w8, #12 ; -> 0x50b9200 
0050b91f8 	bl	#-11699736 ; -> 0x4590be0 
0050b91fc 	ldr	x0, [x27]
0050b9200 	ldr	x8, [x0, #184]
0050b9204 	ldr	x0, [x8]
0050b9208 	cbz	x0, #2224 ; -> 0x50b9ab8 
0050b920c 	mov	x1, xzr
0050b9210 	bl	#-1847472 ; -> 0x4ef6160 PlayerBase::get_AbnormalSkillValue
0050b9214 	cmp	w28, #3
0050b9218 	b.eq	#68 ; -> 0x50b925c 
0050b921c 	fcmp	s0, #0.0
0050b9220 	b.le	#60 ; -> 0x50b925c 
0050b9224 	cbz	x19, #48 ; -> 0x50b9254 
0050b9228 	adrp	x8, #87220224 ; -> 0xa3e7000 
0050b922c 	ldr	x8, [x8, #1248]
0050b9230 	ldr	x1, [x8, #72]
0050b9234 	ldr	x8, [x19]
0050b9238 	cmp	x8, x1
0050b923c 	b.ne	#24 ; -> 0x50b9254 
0050b9240 	mov	x0, x19
0050b9244 	bl	#-16338688 ; -> 0x4124344 
0050b9248 	ldr	w8, [x0]
0050b924c 	cmp	w8, #1004
0050b9250 	b.eq	#12 ; -> 0x50b925c 
0050b9254 	mov	x0, x20
0050b9258 	bl	#-8208 ; -> 0x50b7248 EnemyBase::ScheduleAbnormalAddDamage
0050b925c 	adrp	x29, #87429120 ; -> 0xa41a000 
0050b9260 	ldr	x29, [x29, #3856]
0050b9264 	ldr	x0, [x29]
0050b9268 	ldr	w8, [x0, #228]
0050b926c 	cbnz	w8, #12 ; -> 0x50b9278 
0050b9270 	bl	#-11699856 ; -> 0x4590be0 
0050b9274 	ldr	x0, [x29]
0050b9278 	ldr	x8, [x0, #184]
0050b927c 	ldr	x0, [x8]
0050b9280 	cbz	x0, #2104 ; -> 0x50b9ab8 
0050b9284 	ldr	x8, [x0]
0050b9288 	ldp	x9, x1, [x8, #504]
0050b928c 	blr	x9
0050b9290 	ldr	x8, [x20]
0050b9294 	mov	x0, x20
0050b9298 	fmov	s8, s0
0050b929c 	ldp	x9, x1, [x8, #472]
0050b92a0 	blr	x9
0050b92a4 	fmov	s1, s0
0050b92a8 	fmov	s0, s8
0050b92ac 	and	w1, w26, #0x1
0050b92b0 	mov	x0, x20
0050b92b4 	bl	#2056 ; -> 0x50b9abc EnemyBase::MissProbability_PresetBattle
0050b92b8 	and	w8, w28, #0xfffffffe
0050b92bc 	cmp	w8, #2
0050b92c0 	b.eq	#64 ; -> 0x50b9300 
0050b92c4 	tbz	w0, #0, #60 ; -> 0x50b9300 
0050b92c8 	adrp	x8, #87498752 ; -> 0xa42b000 
0050b92cc 	adrp	x9, #87404544 ; -> 0xa414000 
0050b92d0 	mov	x0, x20
0050b92d4 	ldr	x8, [x8, #2600]
0050b92d8 	ldr	x9, [x9, #3032]
0050b92dc 	ldr	x10, [x20]
0050b92e0 	ldp	s0, s1, [x20, #152]
0050b92e4 	ldr	s2, [x20, #160]
0050b92e8 	ldr	x1, [x8]
0050b92ec 	ldr	x2, [x9]
0050b92f0 	ldr	x8, [x10, #696]
0050b92f4 	ldr	x3, [x10, #704]
0050b92f8 	blr	x8
0050b92fc 	b	#996 ; -> 0x50b96e0 
0050b9300 	add	x0, x20, #504
0050b9304 	mov	x1, x19
0050b9308 	strb	wzr, [x20, #488]
0050b930c 	str	x19, [x20, #504]
0050b9310 	bl	#-11700492 ; -> 0x4590a04 
0050b9314 	cbz	x19, #104 ; -> 0x50b937c 
0050b9318 	adrp	x8, #87220224 ; -> 0xa3e7000 
0050b931c 	ldr	x8, [x8, #1248]
0050b9320 	ldr	x9, [x19]
0050b9324 	ldr	x8, [x8, #72]
0050b9328 	cmp	x9, x8
0050b932c 	b.eq	#360 ; -> 0x50b9494 
0050b9330 	adrp	x8, #87265280 ; -> 0xa3f2000 
0050b9334 	ldr	x8, [x8, #3032]
0050b9338 	ldr	x9, [x19]
0050b933c 	ldr	x8, [x8]
0050b9340 	ldrb	w11, [x9, #304]
0050b9344 	ldrb	w10, [x8, #304]
0050b9348 	cmp	w11, w10
0050b934c 	b.lo	#48 ; -> 0x50b937c 
0050b9350 	ldr	x9, [x9, #200]
0050b9354 	add	x9, x9, x10, lsl #3
0050b9358 	ldur	x9, [x9, #-8]
0050b935c 	cmp	x9, x8
0050b9360 	b.ne	#28 ; -> 0x50b937c 
0050b9364 	mov	x0, x20
0050b9368 	mov	x1, x22
0050b936c 	mov	x2, x23
0050b9370 	bl	#-3732 ; -> 0x50b84dc EnemyBase::AbnormalState_Cal
0050b9374 	mov	x22, x0
0050b9378 	mov	x23, x1
0050b937c 	cmp	w28, #3
0050b9380 	b.ne	#12 ; -> 0x50b938c 
0050b9384 	strb	wzr, [x20, #488]
0050b9388 	b	#76 ; -> 0x50b93d4 
0050b938c 	ldr	x0, [x20, #344]
0050b9390 	cbz	x0, #1832 ; -> 0x50b9ab8 
0050b9394 	adrp	x8, #87449600 ; -> 0xa41f000 
0050b9398 	mov	x2, xzr
0050b939c 	ldr	x8, [x8, #1848]
0050b93a0 	ldr	x1, [x8]
0050b93a4 	bl	#76447492 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
0050b93a8 	ldr	x8, [x20]
0050b93ac 	mov	x0, x20
0050b93b0 	ldr	x9, [x8, #584]
0050b93b4 	ldr	x1, [x8, #592]
0050b93b8 	blr	x9
0050b93bc 	mov	x0, xzr
0050b93c0 	strb	wzr, [x20, #488]
0050b93c4 	bl	#-3802648 ; -> 0x4d18dac SoundManager::get_instance
0050b93c8 	cbz	x0, #1776 ; -> 0x50b9ab8 
0050b93cc 	mov	x1, xzr
0050b93d0 	bl	#-3794764 ; -> 0x4d1ac84 SoundManager::HitSound
0050b93d4 	tbnz	w26, #0, #524 ; -> 0x50b95e0 
0050b93d8 	adrp	x26, #87523328 ; -> 0xa431000 
0050b93dc 	mov	w8, #1
0050b93e0 	add	x1, sp, #60
0050b93e4 	ldr	x26, [x26, #112]
0050b93e8 	str	w8, [sp, #60]
0050b93ec 	ldr	x0, [x26]
0050b93f0 	bl	#-11700232 ; -> 0x4590be8 
0050b93f4 	ldr	x8, [x26]
0050b93f8 	ldr	w9, [x20, #324]
0050b93fc 	mov	x1, x0
0050b9400 	mov	x27, #-1
0050b9404 	add	x0, sp, #32
0050b9408 	mov	x2, xzr
0050b940c 	stp	x8, x27, [sp, #32]
0050b9410 	str	w9, [sp, #48]
0050b9414 	bl	#64972268 ; -> 0x8eafa00 System.Enum::Equals
0050b9418 	tbz	w0, #0, #36 ; -> 0x50b943c 
0050b941c 	and	w5, w25, #0x1
0050b9420 	mov	x0, x20
0050b9424 	mov	x1, x22
0050b9428 	mov	x2, x23
0050b942c 	mov	w3, w21
0050b9430 	mov	w4, w24
0050b9434 	bl	#1832 ; -> 0x50b9b5c EnemyBase::NormalMonsterDmg_Cal_PresetBattle
0050b9438 	b	#416 ; -> 0x50b95d8 
0050b943c 	ldr	x0, [x26]
0050b9440 	mov	w8, #2
0050b9444 	add	x1, sp, #60
0050b9448 	str	w8, [sp, #60]
0050b944c 	bl	#-11700324 ; -> 0x4590be8 
0050b9450 	ldr	x8, [x26]
0050b9454 	ldr	w9, [x20, #324]
0050b9458 	mov	x1, x0
0050b945c 	add	x0, sp, #32
0050b9460 	mov	x2, xzr
0050b9464 	stp	x8, x27, [sp, #32]
0050b9468 	str	w9, [sp, #48]
0050b946c 	bl	#64972180 ; -> 0x8eafa00 System.Enum::Equals
0050b9470 	tbz	w0, #0, #268 ; -> 0x50b957c 
0050b9474 	and	w5, w25, #0x1
0050b9478 	mov	x0, x20
0050b947c 	mov	x1, x22
0050b9480 	mov	x2, x23
0050b9484 	mov	w3, w21
0050b9488 	mov	w4, w24
0050b948c 	bl	#2044 ; -> 0x50b9c88 EnemyBase::BossMonsterDmg_Cal_PresetBattle
0050b9490 	b	#328 ; -> 0x50b95d8 
0050b9494 	mov	x0, x19
0050b9498 	bl	#-11700396 ; -> 0x4590bec 
0050b949c 	ldr	w27, [x0]
0050b94a0 	cmp	w27, #45
0050b94a4 	b.eq	#1320 ; -> 0x50b99cc 
0050b94a8 	mov	x0, x20
0050b94ac 	mov	x1, x22
0050b94b0 	mov	x2, x23
0050b94b4 	bl	#-4056 ; -> 0x50b84dc EnemyBase::AbnormalState_Cal
0050b94b8 	mov	x22, x0
0050b94bc 	cmp	w27, #3
0050b94c0 	mov	x23, x1
0050b94c4 	b.le	#788 ; -> 0x50b97d8 
0050b94c8 	cmp	w27, #29
0050b94cc 	b.ne	#904 ; -> 0x50b9854 
0050b94d0 	adrp	x8, #87277568 ; -> 0xa3f5000 
0050b94d4 	ldr	x8, [x8, #3904]
0050b94d8 	ldr	x8, [x8]
0050b94dc 	ldr	x8, [x8, #184]
0050b94e0 	ldr	x8, [x8]
0050b94e4 	cbz	x8, #1492 ; -> 0x50b9ab8 
0050b94e8 	ldr	x0, [x8, #1200]
0050b94ec 	cbz	x0, #1484 ; -> 0x50b9ab8 
0050b94f0 	adrp	x8, #87527424 ; -> 0xa432000 
0050b94f4 	add	x2, sp, #104
0050b94f8 	mov	w1, #29
0050b94fc 	ldr	x8, [x8, #2784]
0050b9500 	ldr	x3, [x8]
0050b9504 	bl	#49942028 ; -> 0x805a310 
0050b9508 	tbz	w0, #0, #1192 ; -> 0x50b99b0 
0050b950c 	ldr	x0, [sp, #104]
0050b9510 	cbz	x0, #1448 ; -> 0x50b9ab8 
0050b9514 	mov	x1, xzr
0050b9518 	bl	#2409364 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b951c 	cmp	w0, #2
0050b9520 	b.lt	#1168 ; -> 0x50b99b0 
0050b9524 	adrp	x29, #87523328 ; -> 0xa431000 
0050b9528 	mov	w8, #1
0050b952c 	add	x1, sp, #60
0050b9530 	ldr	x29, [x29, #112]
0050b9534 	str	w8, [sp, #60]
0050b9538 	ldr	x0, [x29]
0050b953c 	bl	#-11700564 ; -> 0x4590be8 
0050b9540 	ldr	x8, [x29]
0050b9544 	ldr	w10, [x20, #324]
0050b9548 	mov	x1, x0
0050b954c 	mov	x9, #-1
0050b9550 	add	x0, sp, #32
0050b9554 	mov	x2, xzr
0050b9558 	stp	x8, x9, [sp, #32]
0050b955c 	str	w10, [sp, #48]
0050b9560 	bl	#64971936 ; -> 0x8eafa00 System.Enum::Equals
0050b9564 	tbz	w0, #0, #1100 ; -> 0x50b99b0 
0050b9568 	mov	x0, x20
0050b956c 	mov	x1, x22
0050b9570 	mov	x2, x23
0050b9574 	bl	#-3800 ; -> 0x50b869c EnemyBase::SkillMastery_Normal_MonsterAddDmg_Cal
0050b9578 	b	#1072 ; -> 0x50b99a8 
0050b957c 	ldr	x0, [x26]
0050b9580 	mov	w8, #3
0050b9584 	add	x1, sp, #60
0050b9588 	str	w8, [sp, #60]
0050b958c 	bl	#-11700644 ; -> 0x4590be8 
0050b9590 	ldr	x8, [x26]
0050b9594 	ldr	w10, [x20, #324]
0050b9598 	mov	x1, x0
0050b959c 	mov	x9, #-1
0050b95a0 	add	x0, sp, #32
0050b95a4 	mov	x2, xzr
0050b95a8 	stp	x8, x9, [sp, #32]
0050b95ac 	str	w10, [sp, #48]
0050b95b0 	bl	#64971856 ; -> 0x8eafa00 System.Enum::Equals
0050b95b4 	tbz	w0, #0, #44 ; -> 0x50b95e0 
0050b95b8 	and	w5, w25, #0x1
0050b95bc 	mov	x0, x20
0050b95c0 	mov	x1, x22
0050b95c4 	mov	x2, x23
0050b95c8 	mov	w3, w21
0050b95cc 	mov	w4, w24
0050b95d0 	mov	x6, x19
0050b95d4 	bl	#-1888 ; -> 0x50b8e74 EnemyBase::SpecialBossDmg_Cal
0050b95d8 	mov	x22, x0
0050b95dc 	mov	x23, x1
0050b95e0 	cbz	x19, #56 ; -> 0x50b9618 
0050b95e4 	adrp	x8, #87265280 ; -> 0xa3f2000 
0050b95e8 	ldr	x8, [x8, #3056]
0050b95ec 	ldr	x9, [x19]
0050b95f0 	ldr	x8, [x8]
0050b95f4 	ldrb	w11, [x9, #304]
0050b95f8 	ldrb	w10, [x8, #304]
0050b95fc 	cmp	w11, w10
0050b9600 	b.lo	#24 ; -> 0x50b9618 
0050b9604 	ldr	x9, [x9, #200]
0050b9608 	add	x9, x9, x10, lsl #3
0050b960c 	ldur	x9, [x9, #-8]
0050b9610 	cmp	x9, x8
0050b9614 	b.eq	#44 ; -> 0x50b9640 
0050b9618 	ldr	x8, [x20]
0050b961c 	ldp	s0, s1, [x20, #152]
0050b9620 	ldr	s2, [x20, #160]
0050b9624 	mov	x0, x20
0050b9628 	mov	x1, x22
0050b962c 	ldr	x9, [x8, #680]
0050b9630 	ldr	x4, [x8, #688]
0050b9634 	mov	x2, x23
0050b9638 	mov	w3, w21
0050b963c 	blr	x9
0050b9640 	ldr	x8, [x20]
0050b9644 	cmp	w28, #3
0050b9648 	mov	w9, #1264
0050b964c 	mov	w10, #1248
0050b9650 	mov	w11, #1256
0050b9654 	mov	w12, #1240
0050b9658 	csel	x9, x10, x9, eq
0050b965c 	csel	x10, x12, x11, eq
0050b9660 	mov	x0, x20
0050b9664 	ldr	x10, [x8, x10]
0050b9668 	ldr	x3, [x8, x9]
0050b966c 	mov	x1, x22
0050b9670 	mov	x2, x23
0050b9674 	blr	x10
0050b9678 	adrp	x21, #87461888 ; -> 0xa422000 
0050b967c 	ldr	x21, [x21, #3032]
0050b9680 	ldr	x8, [x21]
0050b9684 	ldr	x8, [x8, #184]
0050b9688 	ldr	x0, [x8]
0050b968c 	cbz	x0, #1068 ; -> 0x50b9ab8 
0050b9690 	mov	x1, xzr
0050b9694 	bl	#1861996 ; -> 0x5280000 ReplayManager::get_NeedRecording
0050b9698 	tbz	w0, #0, #72 ; -> 0x50b96e0 
0050b969c 	ldr	x8, [x20]
0050b96a0 	mov	x0, x20
0050b96a4 	mov	x1, x19
0050b96a8 	mov	x2, x22
0050b96ac 	mov	x3, x23
0050b96b0 	ldr	x9, [x8, #1224]
0050b96b4 	ldr	x4, [x8, #1232]
0050b96b8 	blr	x9
0050b96bc 	ldr	x8, [x21]
0050b96c0 	ldr	x8, [x8, #184]
0050b96c4 	ldr	x0, [x8]
0050b96c8 	cbz	x0, #1008 ; -> 0x50b9ab8 
0050b96cc 	mov	x1, x19
0050b96d0 	mov	x2, x22
0050b96d4 	mov	x3, x23
0050b96d8 	mov	x4, xzr
0050b96dc 	bl	#1859960 ; -> 0x527f854 ReplayManager::AddFrameSkillDamage
0050b96e0 	ldrb	w8, [x20, #514]
0050b96e4 	cbz	w8, #56 ; -> 0x50b971c 
0050b96e8 	adrp	x20, #87265280 ; -> 0xa3f2000 
0050b96ec 	ldr	x20, [x20, #552]
0050b96f0 	ldr	x0, [x20]
0050b96f4 	ldr	w8, [x0, #228]
0050b96f8 	cbnz	w8, #12 ; -> 0x50b9704 
0050b96fc 	bl	#-11701020 ; -> 0x4590be0 
0050b9700 	ldr	x0, [x20]
0050b9704 	ldr	x8, [x0, #184]
0050b9708 	ldr	x0, [x8]
0050b970c 	cbz	x0, #940 ; -> 0x50b9ab8 
0050b9710 	mov	x1, xzr
0050b9714 	bl	#-2586560 ; -> 0x4e41f54 GameManager::get_gameMode
0050b9718 	cbz	w0, #40 ; -> 0x50b9740 
0050b971c 	ldp	x20, x19, [sp, #192]
0050b9720 	ldr	d8, [sp, #96]
0050b9724 	ldp	x22, x21, [sp, #176]
0050b9728 	ldp	x24, x23, [sp, #160]
0050b972c 	ldp	x26, x25, [sp, #144]
0050b9730 	ldp	x28, x27, [sp, #128]
0050b9734 	ldp	x29, x30, [sp, #112]
0050b9738 	add	sp, sp, #208
0050b973c 	ret
0050b9740 	ldr	x0, [x20]
0050b9744 	ldr	w8, [x0, #228]
0050b9748 	cbnz	w8, #12 ; -> 0x50b9754 
0050b974c 	bl	#-11701100 ; -> 0x4590be0 
0050b9750 	ldr	x0, [x20]
0050b9754 	ldr	x8, [x0, #184]
0050b9758 	ldr	x8, [x8]
0050b975c 	cbz	x8, #860 ; -> 0x50b9ab8 
0050b9760 	ldrb	w8, [x8, #1516]
0050b9764 	cbz	w8, #-72 ; -> 0x50b971c 
0050b9768 	cbz	x19, #-76 ; -> 0x50b971c 
0050b976c 	adrp	x20, #87220224 ; -> 0xa3e7000 
0050b9770 	ldr	x20, [x20, #1248]
0050b9774 	ldr	x8, [x19]
0050b9778 	ldr	x1, [x20, #72]
0050b977c 	cmp	x8, x1
0050b9780 	b.ne	#-100 ; -> 0x50b971c 
0050b9784 	mov	x0, x19
0050b9788 	bl	#-16340036 ; -> 0x4124344 
0050b978c 	ldr	w21, [x0]
0050b9790 	mov	x0, xzr
0050b9794 	bl	#1870876 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
0050b9798 	cbz	x0, #800 ; -> 0x50b9ab8 
0050b979c 	mov	x1, xzr
0050b97a0 	bl	#1871284 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
0050b97a4 	mov	x19, x0
0050b97a8 	ldr	x0, [x20, #72]
0050b97ac 	add	x1, sp, #32
0050b97b0 	str	w21, [sp, #32]
0050b97b4 	bl	#-11701196 ; -> 0x4590be8 
0050b97b8 	cbz	x19, #768 ; -> 0x50b9ab8 
0050b97bc 	mov	x2, x0
0050b97c0 	mov	x0, x19
0050b97c4 	mov	w1, #43
0050b97c8 	mov	w3, #1
0050b97cc 	mov	x4, xzr
0050b97d0 	bl	#1902160 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
0050b97d4 	b	#-184 ; -> 0x50b971c 
0050b97d8 	cbz	w27, #252 ; -> 0x50b98d4 
0050b97dc 	sub	w8, w27, #4
0050b97e0 	cmn	w8, #3
0050b97e4 	b.lo	#460 ; -> 0x50b99b0 
0050b97e8 	adrp	x8, #87277568 ; -> 0xa3f5000 
0050b97ec 	ldr	x8, [x8, #3904]
0050b97f0 	ldr	x8, [x8]
0050b97f4 	ldr	x8, [x8, #184]
0050b97f8 	ldr	x8, [x8]
0050b97fc 	cbz	x8, #700 ; -> 0x50b9ab8 
0050b9800 	ldr	x0, [x8, #1200]
0050b9804 	cbz	x0, #692 ; -> 0x50b9ab8 
0050b9808 	adrp	x8, #87527424 ; -> 0xa432000 
0050b980c 	add	x2, sp, #80
0050b9810 	mov	w1, w27
0050b9814 	ldr	x8, [x8, #2784]
0050b9818 	ldr	x3, [x8]
0050b981c 	bl	#49941236 ; -> 0x805a310 
0050b9820 	tbz	w0, #0, #400 ; -> 0x50b99b0 
0050b9824 	ldr	x0, [sp, #80]
0050b9828 	cbz	x0, #656 ; -> 0x50b9ab8 
0050b982c 	mov	x1, xzr
0050b9830 	bl	#2408572 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b9834 	cmp	w0, #3
0050b9838 	b.lt	#376 ; -> 0x50b99b0 
0050b983c 	mov	x0, x20
0050b9840 	mov	x1, x22
0050b9844 	mov	x2, x23
0050b9848 	mov	w3, #30
0050b984c 	bl	#-4048 ; -> 0x50b887c EnemyBase::BurnState_Cal
0050b9850 	b	#344 ; -> 0x50b99a8 
0050b9854 	sub	w8, w27, #37
0050b9858 	cmn	w8, #3
0050b985c 	b.hs	#164 ; -> 0x50b9900 
0050b9860 	sub	w8, w27, #12
0050b9864 	cmp	w8, #2
0050b9868 	b.hi	#328 ; -> 0x50b99b0 
0050b986c 	adrp	x8, #87277568 ; -> 0xa3f5000 
0050b9870 	ldr	x8, [x8, #3904]
0050b9874 	ldr	x8, [x8]
0050b9878 	ldr	x8, [x8, #184]
0050b987c 	ldr	x8, [x8]
0050b9880 	cbz	x8, #568 ; -> 0x50b9ab8 
0050b9884 	ldr	x0, [x8, #1200]
0050b9888 	cbz	x0, #560 ; -> 0x50b9ab8 
0050b988c 	adrp	x8, #87527424 ; -> 0xa432000 
0050b9890 	add	x2, sp, #72
0050b9894 	mov	w1, w27
0050b9898 	ldr	x8, [x8, #2784]
0050b989c 	ldr	x3, [x8]
0050b98a0 	bl	#49941104 ; -> 0x805a310 
0050b98a4 	tbz	w0, #0, #296 ; -> 0x50b99cc 
0050b98a8 	ldr	x0, [sp, #72]
0050b98ac 	cbz	x0, #524 ; -> 0x50b9ab8 
0050b98b0 	mov	x1, xzr
0050b98b4 	bl	#2408440 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b98b8 	cmp	w0, #2
0050b98bc 	b.lt	#244 ; -> 0x50b99b0 
0050b98c0 	mov	x0, x20
0050b98c4 	mov	x1, x22
0050b98c8 	mov	x2, x23
0050b98cc 	mov	w3, #50
0050b98d0 	b	#240 ; -> 0x50b99c0 
0050b98d4 	ldr	x0, [x29]
0050b98d8 	ldr	w8, [x0, #228]
0050b98dc 	cbnz	w8, #12 ; -> 0x50b98e8 
0050b98e0 	bl	#-11701504 ; -> 0x4590be0 
0050b98e4 	ldr	x0, [x29]
0050b98e8 	ldr	x8, [x0, #184]
0050b98ec 	ldr	x0, [x8]
0050b98f0 	cbz	x0, #456 ; -> 0x50b9ab8 
0050b98f4 	mov	x1, xzr
0050b98f8 	bl	#-1810920 ; -> 0x4eff710 PlayerBase::CheckRandomCameraShake
0050b98fc 	b	#180 ; -> 0x50b99b0 
0050b9900 	adrp	x8, #87277568 ; -> 0xa3f5000 
0050b9904 	ldr	x8, [x8, #3904]
0050b9908 	ldr	x8, [x8]
0050b990c 	ldr	x8, [x8, #184]
0050b9910 	ldr	x8, [x8]
0050b9914 	cbz	x8, #420 ; -> 0x50b9ab8 
0050b9918 	ldr	x0, [x8, #1200]
0050b991c 	cbz	x0, #412 ; -> 0x50b9ab8 
0050b9920 	adrp	x8, #87527424 ; -> 0xa432000 
0050b9924 	add	x2, sp, #88
0050b9928 	mov	w1, w27
0050b992c 	ldr	x8, [x8, #2784]
0050b9930 	ldr	x3, [x8]
0050b9934 	bl	#49940956 ; -> 0x805a310 
0050b9938 	tbz	w0, #0, #120 ; -> 0x50b99b0 
0050b993c 	ldr	x0, [sp, #88]
0050b9940 	cbz	x0, #376 ; -> 0x50b9ab8 
0050b9944 	mov	x1, xzr
0050b9948 	bl	#2408292 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b994c 	cmp	w0, #2
0050b9950 	b.lt	#96 ; -> 0x50b99b0 
0050b9954 	adrp	x29, #87523328 ; -> 0xa431000 
0050b9958 	mov	w8, #2
0050b995c 	add	x1, sp, #60
0050b9960 	ldr	x29, [x29, #112]
0050b9964 	str	w8, [sp, #60]
0050b9968 	ldr	x0, [x29]
0050b996c 	bl	#-11701636 ; -> 0x4590be8 
0050b9970 	ldr	x8, [x29]
0050b9974 	ldr	w10, [x20, #324]
0050b9978 	mov	x1, x0
0050b997c 	mov	x9, #-1
0050b9980 	add	x0, sp, #32
0050b9984 	mov	x2, xzr
0050b9988 	stp	x8, x9, [sp, #32]
0050b998c 	str	w10, [sp, #48]
0050b9990 	bl	#64970864 ; -> 0x8eafa00 System.Enum::Equals
0050b9994 	tbz	w0, #0, #28 ; -> 0x50b99b0 
0050b9998 	mov	x0, x20
0050b999c 	mov	x1, x22
0050b99a0 	mov	x2, x23
0050b99a4 	bl	#-4632 ; -> 0x50b878c EnemyBase::SkillMastery_Boss_MonsterAddDmg_Cal
0050b99a8 	mov	x22, x0
0050b99ac 	mov	x23, x1
0050b99b0 	mov	x0, x20
0050b99b4 	mov	x1, x22
0050b99b8 	mov	x2, x23
0050b99bc 	mov	w3, wzr
0050b99c0 	bl	#-4136 ; -> 0x50b8998 EnemyBase::IceState_Cal
0050b99c4 	mov	x22, x0
0050b99c8 	mov	x23, x1
0050b99cc 	ldr	w29, [x20, #304]
0050b99d0 	mov	x0, x20
0050b99d4 	mov	w1, w24
0050b99d8 	mov	x2, xzr
0050b99dc 	bl	#-660644 ; -> 0x5018538 Character::WinType
0050b99e0 	cmp	w27, #18
0050b99e4 	b.ne	#-1716 ; -> 0x50b9330 
0050b99e8 	cmp	w29, w0
0050b99ec 	b.ne	#-1724 ; -> 0x50b9330 
0050b99f0 	adrp	x8, #87277568 ; -> 0xa3f5000 
0050b99f4 	ldr	x8, [x8, #3904]
0050b99f8 	ldr	x8, [x8]
0050b99fc 	ldr	x8, [x8, #184]
0050b9a00 	ldr	x8, [x8]
0050b9a04 	cbz	x8, #180 ; -> 0x50b9ab8 
0050b9a08 	ldr	x0, [x8, #1200]
0050b9a0c 	cbz	x0, #172 ; -> 0x50b9ab8 
0050b9a10 	adrp	x8, #87527424 ; -> 0xa432000 
0050b9a14 	add	x2, sp, #64
0050b9a18 	mov	w1, #18
0050b9a1c 	ldr	x8, [x8, #2784]
0050b9a20 	ldr	x3, [x8]
0050b9a24 	bl	#49940716 ; -> 0x805a310 
0050b9a28 	tbz	w0, #0, #-1784 ; -> 0x50b9330 
0050b9a2c 	ldr	x0, [sp, #64]
0050b9a30 	cbz	x0, #136 ; -> 0x50b9ab8 
0050b9a34 	mov	x1, xzr
0050b9a38 	bl	#2408052 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b9a3c 	cmp	w0, #2
0050b9a40 	b.lt	#-1808 ; -> 0x50b9330 
0050b9a44 	adrp	x8, #87228416 ; -> 0xa3e9000 
0050b9a48 	ldr	x8, [x8, #3552]
0050b9a4c 	ldr	x0, [x8]
0050b9a50 	ldr	w8, [x0, #228]
0050b9a54 	cbnz	w8, #8 ; -> 0x50b9a5c 
0050b9a58 	bl	#-11701880 ; -> 0x4590be0 
0050b9a5c 	mov	w0, #15000
0050b9a60 	mov	x1, xzr
0050b9a64 	bl	#67907256 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
0050b9a68 	mov	x2, x0
0050b9a6c 	mov	x3, x1
0050b9a70 	mov	x0, x22
0050b9a74 	mov	x1, x23
0050b9a78 	mov	x4, xzr
0050b9a7c 	bl	#67898824 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b9a80 	mov	x22, x0
0050b9a84 	mov	x23, x1
0050b9a88 	mov	w0, #10000
0050b9a8c 	mov	x1, xzr
0050b9a90 	bl	#67908884 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b9a94 	mov	x2, x0
0050b9a98 	mov	x3, x1
0050b9a9c 	mov	x0, x22
0050b9aa0 	mov	x1, x23
0050b9aa4 	mov	x4, xzr
0050b9aa8 	bl	#67899280 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b9aac 	mov	x22, x0
0050b9ab0 	mov	x23, x1
0050b9ab4 	b	#-1924 ; -> 0x50b9330 
0050b9ab8 	bl	#-11701676 ; -> 0x4590d0c 
