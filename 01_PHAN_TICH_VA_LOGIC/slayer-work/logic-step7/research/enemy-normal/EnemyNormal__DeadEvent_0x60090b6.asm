0050f9388 	sub	sp, sp, #128
0050f938c 	str	x30, [sp, #32]
0050f9390 	stp	x28, x27, [sp, #48]
0050f9394 	stp	x26, x25, [sp, #64]
0050f9398 	stp	x24, x23, [sp, #80]
0050f939c 	stp	x22, x21, [sp, #96]
0050f93a0 	stp	x20, x19, [sp, #112]
0050f93a4 	adrp	x20, #95277056 ; -> 0xabd6000 
0050f93a8 	mov	x19, x0
0050f93ac 	ldrb	w8, [x20, #1324]
0050f93b0 	tbnz	w8, #0, #108 ; -> 0x50f941c 
0050f93b4 	adrp	x0, #86994944 ; -> 0xa3f0000 
0050f93b8 	ldr	x0, [x0]
0050f93bc 	bl	#-11962716 ; -> 0x4590a60 
0050f93c0 	adrp	x0, #86966272 ; -> 0xa3e9000 
0050f93c4 	ldr	x0, [x0, #1384]
0050f93c8 	bl	#-11962728 ; -> 0x4590a60 
0050f93cc 	adrp	x0, #86990848 ; -> 0xa3ef000 
0050f93d0 	ldr	x0, [x0, #3688]
0050f93d4 	bl	#-11962740 ; -> 0x4590a60 
0050f93d8 	adrp	x0, #87003136 ; -> 0xa3f2000 
0050f93dc 	ldr	x0, [x0, #552]
0050f93e0 	bl	#-11962752 ; -> 0x4590a60 
0050f93e4 	adrp	x0, #86986752 ; -> 0xa3ee000 
0050f93e8 	ldr	x0, [x0, #2840]
0050f93ec 	bl	#-11962764 ; -> 0x4590a60 
0050f93f0 	adrp	x0, #87187456 ; -> 0xa41f000 
0050f93f4 	ldr	x0, [x0, #1880]
0050f93f8 	bl	#-11962776 ; -> 0x4590a60 
0050f93fc 	adrp	x0, #87166976 ; -> 0xa41a000 
0050f9400 	ldr	x0, [x0, #3856]
0050f9404 	bl	#-11962788 ; -> 0x4590a60 
0050f9408 	adrp	x0, #87015424 ; -> 0xa3f5000 
0050f940c 	ldr	x0, [x0, #3904]
0050f9410 	bl	#-11962800 ; -> 0x4590a60 
0050f9414 	mov	w8, #1
0050f9418 	strb	w8, [x20, #1324]
0050f941c 	mov	w0, #38662
0050f9420 	mov	x1, xzr
0050f9424 	bl	#-4923008 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050f9428 	tbz	w0, #0, #60 ; -> 0x50f9464 
0050f942c 	mov	w0, #38662
0050f9430 	mov	x1, xzr
0050f9434 	bl	#-4922844 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050f9438 	cbz	x0, #968 ; -> 0x50f9800 
0050f943c 	mov	x1, x19
0050f9440 	ldp	x20, x19, [sp, #112]
0050f9444 	ldp	x22, x21, [sp, #96]
0050f9448 	mov	x2, xzr
0050f944c 	ldp	x24, x23, [sp, #80]
0050f9450 	ldr	x30, [sp, #32]
0050f9454 	ldp	x26, x25, [sp, #64]
0050f9458 	ldp	x28, x27, [sp, #48]
0050f945c 	add	sp, sp, #128
0050f9460 	b	#-5746496 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050f9464 	adrp	x20, #86966272 ; -> 0xa3e9000 
0050f9468 	ldr	x20, [x20, #1384]
0050f946c 	ldr	x0, [x20]
0050f9470 	ldr	w8, [x0, #228]
0050f9474 	cbnz	w8, #12 ; -> 0x50f9480 
0050f9478 	bl	#-11962520 ; -> 0x4590be0 
0050f947c 	ldr	x0, [x20]
0050f9480 	ldr	x8, [x0, #184]
0050f9484 	ldr	x8, [x8, #216]
0050f9488 	cbz	x8, #888 ; -> 0x50f9800 
0050f948c 	ldr	x9, [x8, #24]
0050f9490 	ldr	x0, [x8, #64]
0050f9494 	ldr	x1, [x8, #40]
0050f9498 	blr	x9
0050f949c 	adrp	x23, #87003136 ; -> 0xa3f2000 
0050f94a0 	ldr	x23, [x23, #552]
0050f94a4 	ldr	x0, [x23]
0050f94a8 	ldr	w8, [x0, #228]
0050f94ac 	cbnz	w8, #12 ; -> 0x50f94b8 
0050f94b0 	bl	#-11962576 ; -> 0x4590be0 
0050f94b4 	ldr	x0, [x23]
0050f94b8 	ldr	x8, [x0, #184]
0050f94bc 	ldr	x0, [x8]
0050f94c0 	cbz	x0, #832 ; -> 0x50f9800 
0050f94c4 	mov	x1, xzr
0050f94c8 	bl	#-2848116 ; -> 0x4e41f54 GameManager::get_gameMode
0050f94cc 	adrp	x21, #86986752 ; -> 0xa3ee000 
0050f94d0 	mov	w20, w0
0050f94d4 	add	x1, sp, #44
0050f94d8 	ldr	x21, [x21, #2840]
0050f94dc 	str	wzr, [sp, #44]
0050f94e0 	ldr	x0, [x21]
0050f94e4 	bl	#-11962620 ; -> 0x4590be8 
0050f94e8 	ldr	x8, [x21]
0050f94ec 	mov	x1, x0
0050f94f0 	mov	x9, #-1
0050f94f4 	add	x0, sp, #8
0050f94f8 	mov	x2, xzr
0050f94fc 	str	w20, [sp, #24]
0050f9500 	stp	x8, x9, [sp, #8]
0050f9504 	bl	#64709884 ; -> 0x8eafa00 System.Enum::Equals
0050f9508 	tbz	w0, #0, #16 ; -> 0x50f9518 
0050f950c 	mov	x0, x19
0050f9510 	bl	#756 ; -> 0x50f9804 EnemyNormal::StageItemDrop
0050f9514 	b	#112 ; -> 0x50f9584 
0050f9518 	ldr	x0, [x23]
0050f951c 	ldr	w8, [x0, #228]
0050f9520 	cbnz	w8, #12 ; -> 0x50f952c 
0050f9524 	bl	#-11962692 ; -> 0x4590be0 
0050f9528 	ldr	x0, [x23]
0050f952c 	ldr	x8, [x0, #184]
0050f9530 	ldr	x0, [x8]
0050f9534 	cbz	x0, #716 ; -> 0x50f9800 
0050f9538 	mov	x1, xzr
0050f953c 	bl	#-2848232 ; -> 0x4e41f54 GameManager::get_gameMode
0050f9540 	mov	w20, w0
0050f9544 	ldr	x0, [x21]
0050f9548 	mov	w8, #4
0050f954c 	add	x1, sp, #44
0050f9550 	str	w8, [sp, #44]
0050f9554 	bl	#-11962732 ; -> 0x4590be8 
0050f9558 	ldr	x8, [x21]
0050f955c 	mov	x1, x0
0050f9560 	mov	x9, #-1
0050f9564 	add	x0, sp, #8
0050f9568 	mov	x2, xzr
0050f956c 	str	w20, [sp, #24]
0050f9570 	stp	x8, x9, [sp, #8]
0050f9574 	bl	#64709772 ; -> 0x8eafa00 System.Enum::Equals
0050f9578 	tbz	w0, #0, #12 ; -> 0x50f9584 
0050f957c 	mov	x0, x19
0050f9580 	bl	#3736 ; -> 0x50fa418 EnemyNormal::MineItemDrop
0050f9584 	adrp	x21, #86990848 ; -> 0xa3ef000 
0050f9588 	mov	x0, x19
0050f958c 	mov	x1, xzr
0050f9590 	ldr	x21, [x21, #3688]
0050f9594 	ldr	x8, [x21]
0050f9598 	ldr	x8, [x8, #184]
0050f959c 	ldr	x20, [x8]
0050f95a0 	bl	#76574784 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f95a4 	cbz	x20, #604 ; -> 0x50f9800 
0050f95a8 	fmov	s0, #1.00000000
0050f95ac 	mov	x1, x0
0050f95b0 	mov	x0, x20
0050f95b4 	mov	x2, xzr
0050f95b8 	bl	#-4126864 ; -> 0x4d09d28 EffectManager::DeadEffect
0050f95bc 	ldr	x8, [x21]
0050f95c0 	mov	x0, x19
0050f95c4 	mov	x1, xzr
0050f95c8 	ldr	x8, [x8, #184]
0050f95cc 	ldr	x20, [x8]
0050f95d0 	bl	#76574736 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f95d4 	cbz	x20, #556 ; -> 0x50f9800 
0050f95d8 	fmov	s0, #8.00000000
0050f95dc 	mov	x1, x0
0050f95e0 	mov	x0, x20
0050f95e4 	mov	x2, xzr
0050f95e8 	bl	#-4125120 ; -> 0x4d0a428 EffectManager::SlashEffect
0050f95ec 	ldr	w8, [x19, #408]
0050f95f0 	cmp	w8, #8
0050f95f4 	b.ne	#40 ; -> 0x50f961c 
0050f95f8 	adrp	x8, #86994944 ; -> 0xa3f0000 
0050f95fc 	ldr	x8, [x8]
0050f9600 	ldr	x8, [x8]
0050f9604 	ldr	x8, [x8, #184]
0050f9608 	ldr	x0, [x8]
0050f960c 	cbz	x0, #500 ; -> 0x50f9800 
0050f9610 	mov	x1, xzr
0050f9614 	bl	#-1053912 ; -> 0x4ff813c CameraController::DarkMapCoroutine_Func
0050f9618 	ldr	w8, [x19, #408]
0050f961c 	cmp	w8, #9
0050f9620 	b.ne	#332 ; -> 0x50f976c 
0050f9624 	adrp	x8, #87015424 ; -> 0xa3f5000 
0050f9628 	ldr	x8, [x8, #3904]
0050f962c 	ldr	x8, [x8]
0050f9630 	ldr	x8, [x8, #184]
0050f9634 	ldr	x0, [x8]
0050f9638 	cbz	x0, #456 ; -> 0x50f9800 
0050f963c 	mov	x1, xzr
0050f9640 	bl	#-495060 ; -> 0x508086c SkillManager::SkillCoolTimeBuff
0050f9644 	adrp	x24, #87187456 ; -> 0xa41f000 
0050f9648 	adrp	x20, #86962176 ; -> 0xa3e8000 
0050f964c 	adrp	x25, #87166976 ; -> 0xa41a000 
0050f9650 	ldr	x24, [x24, #1880]
0050f9654 	ldr	x20, [x20, #632]
0050f9658 	ldr	x25, [x25, #3856]
0050f965c 	mov	w26, #6
0050f9660 	adrp	x27, #95248384 ; -> 0xabcf000 
0050f9664 	mov	w28, #1
0050f9668 	ldr	x8, [x24]
0050f966c 	ldr	x8, [x8, #184]
0050f9670 	ldr	x0, [x8]
0050f9674 	cbz	x0, #396 ; -> 0x50f9800 
0050f9678 	mov	x1, xzr
0050f967c 	bl	#-2293032 ; -> 0x4ec9954 ObjectPooler_Effect::SpawnCooltimeDropEffect
0050f9680 	cbz	x0, #384 ; -> 0x50f9800 
0050f9684 	mov	x1, xzr
0050f9688 	mov	x21, x0
0050f968c 	bl	#76574548 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9690 	mov	x22, x0
0050f9694 	mov	x0, x19
0050f9698 	mov	x1, xzr
0050f969c 	bl	#76574532 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f96a0 	cbz	x0, #352 ; -> 0x50f9800 
0050f96a4 	mov	x1, xzr
0050f96a8 	bl	#76651140 ; -> 0x9a1312c UnityEngine.Transform::get_position
0050f96ac 	cbz	x22, #340 ; -> 0x50f9800 
0050f96b0 	mov	x0, x22
0050f96b4 	mov	x1, xzr
0050f96b8 	bl	#76651344 ; -> 0x9a13208 UnityEngine.Transform::set_position
0050f96bc 	mov	x0, x21
0050f96c0 	mov	x1, xzr
0050f96c4 	bl	#76574492 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f96c8 	ldrb	w8, [x27, #362]
0050f96cc 	mov	x22, x0
0050f96d0 	cbnz	w8, #16 ; -> 0x50f96e0 
0050f96d4 	mov	x0, x20
0050f96d8 	bl	#-11963512 ; -> 0x4590a60 
0050f96dc 	strb	w28, [x27, #362]
0050f96e0 	cbz	x22, #288 ; -> 0x50f9800 
0050f96e4 	ldr	x8, [x20]
0050f96e8 	mov	x0, x22
0050f96ec 	mov	x1, xzr
0050f96f0 	ldr	x8, [x8, #184]
0050f96f4 	ldp	s1, s2, [x8, #16]
0050f96f8 	ldr	s0, [x8, #12]
0050f96fc 	bl	#76653392 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
0050f9700 	mov	x0, x21
0050f9704 	mov	w1, #1
0050f9708 	mov	x2, xzr
0050f970c 	bl	#-5840976 ; -> 0x4b676bc SExtesion_Mono::SetActive
0050f9710 	mov	x0, x19
0050f9714 	mov	x1, xzr
0050f9718 	bl	#76574408 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f971c 	ldr	x8, [x25]
0050f9720 	mov	x22, x0
0050f9724 	ldr	w9, [x8, #228]
0050f9728 	cbnz	w9, #16 ; -> 0x50f9738 
0050f972c 	mov	x0, x8
0050f9730 	bl	#-11963216 ; -> 0x4590be0 
0050f9734 	ldr	x8, [x25]
0050f9738 	ldr	x8, [x8, #184]
0050f973c 	ldr	x0, [x8]
0050f9740 	cbz	x0, #192 ; -> 0x50f9800 
0050f9744 	mov	x1, xzr
0050f9748 	bl	#76574360 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f974c 	mov	x2, x0
0050f9750 	mov	x0, x21
0050f9754 	mov	x1, x22
0050f9758 	mov	x3, xzr
0050f975c 	bl	#-1328884 ; -> 0x4fb5068 CooltimeDropEffect::SetEffect
0050f9760 	subs	w26, w26, #1
0050f9764 	b.ne	#-252 ; -> 0x50f9668 
0050f9768 	ldr	w8, [x19, #408]
0050f976c 	cmp	w8, #7
0050f9770 	b.ne	#64 ; -> 0x50f97b0 
0050f9774 	adrp	x20, #87166976 ; -> 0xa41a000 
0050f9778 	ldr	x20, [x20, #3856]
0050f977c 	ldr	x0, [x20]
0050f9780 	ldr	w8, [x0, #228]
0050f9784 	cbnz	w8, #12 ; -> 0x50f9790 
0050f9788 	bl	#-11963304 ; -> 0x4590be0 
0050f978c 	ldr	x0, [x20]
0050f9790 	ldr	x8, [x0, #184]
0050f9794 	ldr	x0, [x8]
0050f9798 	cbz	x0, #104 ; -> 0x50f9800 
0050f979c 	mov	w8, #1117782016
0050f97a0 	fmov	s1, #1.50000000
0050f97a4 	mov	x1, xzr
0050f97a8 	fmov	s0, w8
0050f97ac 	bl	#-2151924 ; -> 0x4eec1b8 PlayerBase::SlowEffect
0050f97b0 	ldr	x0, [x23]
0050f97b4 	ldr	w8, [x0, #228]
0050f97b8 	cbnz	w8, #12 ; -> 0x50f97c4 
0050f97bc 	bl	#-11963356 ; -> 0x4590be0 
0050f97c0 	ldr	x0, [x23]
0050f97c4 	ldr	x8, [x0, #184]
0050f97c8 	ldr	x0, [x8]
0050f97cc 	cbz	x0, #52 ; -> 0x50f9800 
0050f97d0 	mov	x1, x19
0050f97d4 	mov	w2, #1
0050f97d8 	mov	x3, xzr
0050f97dc 	bl	#-2830564 ; -> 0x4e466f8 GameManager::Enemy_Dead
0050f97e0 	ldp	x20, x19, [sp, #112]
0050f97e4 	ldr	x30, [sp, #32]
0050f97e8 	ldp	x22, x21, [sp, #96]
0050f97ec 	ldp	x24, x23, [sp, #80]
0050f97f0 	ldp	x26, x25, [sp, #64]
0050f97f4 	ldp	x28, x27, [sp, #48]
0050f97f8 	add	sp, sp, #128
0050f97fc 	ret
0050f9800 	bl	#-11963124 ; -> 0x4590d0c 
