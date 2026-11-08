004e425bc 	sub	sp, sp, #208
004e425c0 	str	x30, [sp, #144]
004e425c4 	stp	x24, x23, [sp, #160]
004e425c8 	stp	x22, x21, [sp, #176]
004e425cc 	stp	x20, x19, [sp, #192]
004e425d0 	adrp	x20, #98119680 ; -> 0xabd5000 
004e425d4 	mov	x19, x0
004e425d8 	ldrb	w8, [x20, #326]
004e425dc 	tbnz	w8, #0, #276 ; -> 0x4e426f0 
004e425e0 	adrp	x0, #89849856 ; -> 0xa3f2000 
004e425e4 	ldr	x0, [x0, #840]
004e425e8 	bl	#-9116552 ; -> 0x4590a60 
004e425ec 	adrp	x0, #89841664 ; -> 0xa3f0000 
004e425f0 	ldr	x0, [x0]
004e425f4 	bl	#-9116564 ; -> 0x4590a60 
004e425f8 	adrp	x0, #90038272 ; -> 0xa420000 
004e425fc 	ldr	x0, [x0, #1528]
004e42600 	bl	#-9116576 ; -> 0x4590a60 
004e42604 	adrp	x0, #89833472 ; -> 0xa3ee000 
004e42608 	ldr	x0, [x0, #2104]
004e4260c 	bl	#-9116588 ; -> 0x4590a60 
004e42610 	adrp	x0, #89812992 ; -> 0xa3e9000 
004e42614 	ldr	x0, [x0, #1384]
004e42618 	bl	#-9116600 ; -> 0x4590a60 
004e4261c 	adrp	x0, #89841664 ; -> 0xa3f0000 
004e42620 	ldr	x0, [x0, #3416]
004e42624 	bl	#-9116612 ; -> 0x4590a60 
004e42628 	adrp	x0, #89853952 ; -> 0xa3f3000 
004e4262c 	ldr	x0, [x0, #3296]
004e42630 	bl	#-9116624 ; -> 0x4590a60 
004e42634 	adrp	x0, #89812992 ; -> 0xa3e9000 
004e42638 	ldr	x0, [x0, #1352]
004e4263c 	bl	#-9116636 ; -> 0x4590a60 
004e42640 	adrp	x0, #89849856 ; -> 0xa3f2000 
004e42644 	ldr	x0, [x0, #552]
004e42648 	bl	#-9116648 ; -> 0x4590a60 
004e4264c 	adrp	x0, #90071040 ; -> 0xa428000 
004e42650 	ldr	x0, [x0, #1792]
004e42654 	bl	#-9116660 ; -> 0x4590a60 
004e42658 	adrp	x0, #89841664 ; -> 0xa3f0000 
004e4265c 	ldr	x0, [x0, #744]
004e42660 	bl	#-9116672 ; -> 0x4590a60 
004e42664 	adrp	x0, #89837568 ; -> 0xa3ef000 
004e42668 	ldr	x0, [x0, #3320]
004e4266c 	bl	#-9116684 ; -> 0x4590a60 
004e42670 	adrp	x0, #89989120 ; -> 0xa414000 
004e42674 	ldr	x0, [x0, #3944]
004e42678 	bl	#-9116696 ; -> 0x4590a60 
004e4267c 	adrp	x0, #89841664 ; -> 0xa3f0000 
004e42680 	ldr	x0, [x0, #3216]
004e42684 	bl	#-9116708 ; -> 0x4590a60 
004e42688 	adrp	x0, #90013696 ; -> 0xa41a000 
004e4268c 	ldr	x0, [x0, #3856]
004e42690 	bl	#-9116720 ; -> 0x4590a60 
004e42694 	adrp	x0, #90025984 ; -> 0xa41d000 
004e42698 	ldr	x0, [x0, #2824]
004e4269c 	bl	#-9116732 ; -> 0x4590a60 
004e426a0 	adrp	x0, #89862144 ; -> 0xa3f5000 
004e426a4 	ldr	x0, [x0, #3904]
004e426a8 	bl	#-9116744 ; -> 0x4590a60 
004e426ac 	adrp	x0, #90071040 ; -> 0xa428000 
004e426b0 	ldr	x0, [x0, #1800]
004e426b4 	bl	#-9116756 ; -> 0x4590a60 
004e426b8 	adrp	x0, #90071040 ; -> 0xa428000 
004e426bc 	ldr	x0, [x0, #1808]
004e426c0 	bl	#-9116768 ; -> 0x4590a60 
004e426c4 	adrp	x0, #89812992 ; -> 0xa3e9000 
004e426c8 	ldr	x0, [x0, #1344]
004e426cc 	bl	#-9116780 ; -> 0x4590a60 
004e426d0 	adrp	x0, #90071040 ; -> 0xa428000 
004e426d4 	ldr	x0, [x0, #1816]
004e426d8 	bl	#-9116792 ; -> 0x4590a60 
004e426dc 	adrp	x0, #89808896 ; -> 0xa3e8000 
004e426e0 	ldr	x0, [x0, #1824]
004e426e4 	bl	#-9116804 ; -> 0x4590a60 
004e426e8 	mov	w8, #1
004e426ec 	strb	w8, [x20, #326]
004e426f0 	mov	w0, #7680
004e426f4 	mov	x1, xzr
004e426f8 	str	wzr, [sp, #156]
004e426fc 	bl	#-2077016 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e42700 	tbz	w0, #0, #52 ; -> 0x4e42734 
004e42704 	mov	w0, #7680
004e42708 	mov	x1, xzr
004e4270c 	bl	#-2076852 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e42710 	cbz	x0, #2376 ; -> 0x4e43058 
004e42714 	mov	x1, x19
004e42718 	ldp	x20, x19, [sp, #192]
004e4271c 	ldp	x22, x21, [sp, #176]
004e42720 	mov	x2, xzr
004e42724 	ldp	x24, x23, [sp, #160]
004e42728 	ldr	x30, [sp, #144]
004e4272c 	add	sp, sp, #208
004e42730 	b	#-2900496 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e42734 	ldr	w8, [x19, #532]
004e42738 	cmp	w8, #100
004e4273c 	b.lt	#16 ; -> 0x4e4274c 
004e42740 	mov	x0, x19
004e42744 	bl	#54328 ; -> 0x4e4fb7c GameManager::ClearMemory
004e42748 	str	wzr, [x19, #532]
004e4274c 	mov	x0, x19
004e42750 	bl	#-2044 ; -> 0x4e41f54 GameManager::get_gameMode
004e42754 	str	w0, [x19, #528]
004e42758 	mov	x0, x19
004e4275c 	mov	w1, wzr
004e42760 	bl	#-1988 ; -> 0x4e41f9c GameManager::set_gameMode
004e42764 	mov	x0, x19
004e42768 	bl	#54480 ; -> 0x4e4fc38 GameManager::get_CurrentPresetBattle
004e4276c 	cbz	x0, #76 ; -> 0x4e427b8 
004e42770 	mov	x0, x19
004e42774 	bl	#54468 ; -> 0x4e4fc38 GameManager::get_CurrentPresetBattle
004e42778 	cbz	x0, #2272 ; -> 0x4e43058 
004e4277c 	mov	x1, xzr
004e42780 	bl	#4313436 ; -> 0x525f8dc PresetBattle::End
004e42784 	adrp	x20, #90013696 ; -> 0xa41a000 
004e42788 	ldr	x20, [x20, #3856]
004e4278c 	ldr	x0, [x20]
004e42790 	ldr	w8, [x0, #228]
004e42794 	cbnz	w8, #12 ; -> 0x4e427a0 
004e42798 	bl	#-9116600 ; -> 0x4590be0 
004e4279c 	ldr	x0, [x20]
004e427a0 	ldr	x8, [x0, #184]
004e427a4 	ldr	x0, [x8]
004e427a8 	cbz	x0, #2224 ; -> 0x4e43058 
004e427ac 	mov	w1, wzr
004e427b0 	mov	x2, xzr
004e427b4 	bl	#775364 ; -> 0x4effc78 PlayerBase::RefreshBattleStat
004e427b8 	adrp	x20, #89853952 ; -> 0xa3f3000 
004e427bc 	ldr	x20, [x20, #3296]
004e427c0 	ldr	x0, [x20]
004e427c4 	ldr	w8, [x0, #228]
004e427c8 	cbnz	w8, #12 ; -> 0x4e427d4 
004e427cc 	bl	#-9116652 ; -> 0x4590be0 
004e427d0 	ldr	x0, [x20]
004e427d4 	ldr	x8, [x0, #184]
004e427d8 	ldr	x8, [x8]
004e427dc 	cbz	x8, #2172 ; -> 0x4e43058 
004e427e0 	adrp	x23, #89849856 ; -> 0xa3f2000 
004e427e4 	ldr	x23, [x23, #552]
004e427e8 	strb	wzr, [x8, #1200]
004e427ec 	strb	wzr, [x8, #1424]
004e427f0 	ldr	x0, [x23]
004e427f4 	ldr	w9, [x0, #228]
004e427f8 	cbnz	w9, #12 ; -> 0x4e42804 
004e427fc 	bl	#-9116700 ; -> 0x4590be0 
004e42800 	ldr	x0, [x23]
004e42804 	ldr	x8, [x0, #184]
004e42808 	ldr	x0, [x8, #48]
004e4280c 	cbz	x0, #2124 ; -> 0x4e43058 
004e42810 	adrp	x8, #90071040 ; -> 0xa428000 
004e42814 	ldr	x8, [x8, #1792]
004e42818 	ldr	w1, [x19, #528]
004e4281c 	ldr	x2, [x8]
004e42820 	bl	#26647616 ; -> 0x67ac460 
004e42824 	tbz	w0, #0, #44 ; -> 0x4e42850 
004e42828 	adrp	x8, #89849856 ; -> 0xa3f2000 
004e4282c 	ldr	x8, [x8, #840]
004e42830 	ldr	x8, [x8]
004e42834 	ldr	x8, [x8, #184]
004e42838 	ldrb	w9, [x8, #20]
004e4283c 	cbz	w9, #20 ; -> 0x4e42850 
004e42840 	ldr	x0, [x8]
004e42844 	cbz	x0, #2068 ; -> 0x4e43058 
004e42848 	mov	x1, xzr
004e4284c 	bl	#1536020 ; -> 0x4fb9860 BattleSettingManager::DefaultBattlePreset
004e42850 	ldr	w8, [x19, #528]
004e42854 	cmp	w8, #16
004e42858 	b.ne	#44 ; -> 0x4e42884 
004e4285c 	adrp	x8, #89849856 ; -> 0xa3f2000 
004e42860 	ldr	x8, [x8, #840]
004e42864 	ldr	x8, [x8]
004e42868 	ldr	x8, [x8, #184]
004e4286c 	ldrb	w9, [x8, #20]
004e42870 	cbz	w9, #20 ; -> 0x4e42884 
004e42874 	ldr	x0, [x8]
004e42878 	cbz	x0, #2016 ; -> 0x4e43058 
004e4287c 	mov	x1, xzr
004e42880 	bl	#1535968 ; -> 0x4fb9860 BattleSettingManager::DefaultBattlePreset
004e42884 	adrp	x24, #90013696 ; -> 0xa41a000 
004e42888 	ldr	x24, [x24, #3856]
004e4288c 	ldr	x0, [x24]
004e42890 	ldr	w8, [x0, #228]
004e42894 	cbnz	w8, #12 ; -> 0x4e428a0 
004e42898 	bl	#-9116856 ; -> 0x4590be0 
004e4289c 	ldr	x0, [x24]
004e428a0 	ldr	x8, [x0, #184]
004e428a4 	ldr	x8, [x8]
004e428a8 	cbz	x8, #1968 ; -> 0x4e43058 
004e428ac 	adrp	x20, #89833472 ; -> 0xa3ee000 
004e428b0 	mov	w10, #26214
004e428b4 	ldr	x20, [x20, #2104]
004e428b8 	movk	w10, #16358, lsl #16
004e428bc 	str	w10, [x8, #1968]
004e428c0 	ldr	x0, [x20]
004e428c4 	ldr	w9, [x0, #228]
004e428c8 	cbnz	w9, #8 ; -> 0x4e428d0 
004e428cc 	bl	#-9116908 ; -> 0x4590be0 
004e428d0 	adrp	x21, #98095104 ; -> 0xabcf000 
004e428d4 	ldrb	w8, [x21, #360]
004e428d8 	cbnz	w8, #24 ; -> 0x4e428f0 
004e428dc 	adrp	x0, #89833472 ; -> 0xa3ee000 
004e428e0 	ldr	x0, [x0, #2104]
004e428e4 	bl	#-9117316 ; -> 0x4590a60 
004e428e8 	mov	w8, #1
004e428ec 	strb	w8, [x21, #360]
004e428f0 	ldr	x0, [x20]
004e428f4 	ldr	w8, [x0, #228]
004e428f8 	cbnz	w8, #12 ; -> 0x4e42904 
004e428fc 	bl	#-9116956 ; -> 0x4590be0 
004e42900 	ldr	x0, [x20]
004e42904 	ldr	x8, [x0, #184]
004e42908 	ldr	x8, [x8]
004e4290c 	cbz	x8, #1868 ; -> 0x4e43058 
004e42910 	ldr	x9, [x19, #32]
004e42914 	cbz	x9, #1860 ; -> 0x4e43058 
004e42918 	ldur	q0, [x9, #120]
004e4291c 	ldur	q1, [x9, #136]
004e42920 	add	x0, sp, #96
004e42924 	ldur	q2, [x9, #152]
004e42928 	ldr	x20, [x8, #120]
004e4292c 	mov	x1, xzr
004e42930 	stp	q0, q1, [sp, #96]
004e42934 	str	q2, [sp, #128]
004e42938 	bl	#-7732076 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e4293c 	cbz	x20, #1820 ; -> 0x4e43058 
004e42940 	adrp	x8, #89841664 ; -> 0xa3f0000 
004e42944 	mov	w1, w0
004e42948 	mov	x0, x20
004e4294c 	ldr	x8, [x8, #3416]
004e42950 	ldr	x2, [x8]
004e42954 	bl	#52518464 ; -> 0x8058794 
004e42958 	add	x20, x19, #520
004e4295c 	mov	x1, x0
004e42960 	str	x0, [x19, #520]
004e42964 	mov	x0, x20
004e42968 	bl	#-9117540 ; -> 0x4590a04 
004e4296c 	ldr	x8, [x19, #520]
004e42970 	cbz	x8, #1768 ; -> 0x4e43058 
004e42974 	ldur	q0, [x8, #88]
004e42978 	ldur	q1, [x8, #104]
004e4297c 	add	x0, sp, #48
004e42980 	ldr	x8, [x8, #120]
004e42984 	mov	x1, xzr
004e42988 	stp	q0, q1, [sp, #48]
004e4298c 	str	x8, [sp, #80]
004e42990 	bl	#-3086688 ; -> 0x4b51030 SilentBigInt::op_Implicit
004e42994 	mov	x2, x0
004e42998 	mov	x3, x1
004e4299c 	mov	x0, x19
004e429a0 	mov	x1, x2
004e429a4 	mov	x2, x3
004e429a8 	bl	#54092 ; -> 0x4e4fcf4 GameManager::set_enemyHp
004e429ac 	ldr	x0, [x19, #648]
004e429b0 	cbz	x0, #1704 ; -> 0x4e43058 
004e429b4 	mov	w1, #1
004e429b8 	mov	x2, xzr
004e429bc 	bl	#79434264 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e429c0 	ldr	x0, [x19, #624]
004e429c4 	cbz	x0, #1684 ; -> 0x4e43058 
004e429c8 	mov	w1, #1
004e429cc 	mov	x2, xzr
004e429d0 	bl	#79434244 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e429d4 	mov	x0, x19
004e429d8 	bl	#54156 ; -> 0x4e4fd64 GameManager::ReleaseMapAndMonsterResources
004e429dc 	adrp	x8, #90025984 ; -> 0xa41d000 
004e429e0 	ldr	x8, [x8, #2824]
004e429e4 	ldr	x8, [x8]
004e429e8 	ldr	x8, [x8, #184]
004e429ec 	ldr	x0, [x8]
004e429f0 	cbz	x0, #1640 ; -> 0x4e43058 
004e429f4 	mov	w1, #1
004e429f8 	mov	x2, xzr
004e429fc 	bl	#6022260 ; -> 0x5400e70 SeasonRankingManager::SetActiveSeasonRankingIcon
004e42a00 	mov	x0, xzr
004e42a04 	bl	#3311672 ; -> 0x516b23c EventMainManager::get_Instance
004e42a08 	cbz	x0, #1616 ; -> 0x4e43058 
004e42a0c 	mov	w1, #1
004e42a10 	mov	x2, xzr
004e42a14 	bl	#3311768 ; -> 0x516b2ac EventMainManager::SetActiveEventRoot
004e42a18 	mov	x0, xzr
004e42a1c 	bl	#4454804 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e42a20 	cbz	x0, #1592 ; -> 0x4e43058 
004e42a24 	mov	w1, #1
004e42a28 	mov	x2, xzr
004e42a2c 	bl	#4458924 ; -> 0x52833d8 SeasonSkillEventManager::SetActiveSeasonSkillEventIconRoot_OnMain
004e42a30 	mov	x0, xzr
004e42a34 	bl	#4448236 ; -> 0x5280a20 SeasonBuffManager::get_Instance
004e42a38 	cbz	x0, #1568 ; -> 0x4e43058 
004e42a3c 	mov	w1, #1
004e42a40 	mov	x2, xzr
004e42a44 	bl	#4449104 ; -> 0x5280d94 SeasonBuffManager::SetSeasonBuffRootActive
004e42a48 	adrp	x8, #89989120 ; -> 0xa414000 
004e42a4c 	ldr	x8, [x8, #3944]
004e42a50 	ldr	x8, [x8]
004e42a54 	ldr	x0, [x8, #32]
004e42a58 	add	x8, x0, #309
004e42a5c 	ldrh	w8, [x8]
004e42a60 	tbnz	w8, #0, #8 ; -> 0x4e42a68 
004e42a64 	bl	#-8887100 ; -> 0x45c8f28 
004e42a68 	ldr	x8, [x0, #192]
004e42a6c 	ldr	x0, [x8, #16]
004e42a70 	add	x8, x0, #309
004e42a74 	ldrh	w8, [x8]
004e42a78 	tbnz	w8, #0, #8 ; -> 0x4e42a80 
004e42a7c 	bl	#-8887124 ; -> 0x45c8f28 
004e42a80 	ldr	x8, [x0, #184]
004e42a84 	ldr	x0, [x8]
004e42a88 	cbz	x0, #1488 ; -> 0x4e43058 
004e42a8c 	mov	w1, #1
004e42a90 	mov	x2, xzr
004e42a94 	bl	#5795528 ; -> 0x53c995c ThemeDungeonEventManager::SetActiveEventRoot
004e42a98 	mov	x0, x19
004e42a9c 	bl	#54100 ; -> 0x4e4fdf0 GameManager::ResetAllDragonValleyBuffs
004e42aa0 	mov	x0, x19
004e42aa4 	bl	#52560 ; -> 0x4e4f7f4 GameManager::ResetDragonValleyBuffIcons
004e42aa8 	mov	x0, x19
004e42aac 	bl	#54356 ; -> 0x4e4ff00 GameManager::InitSandStormBuff
004e42ab0 	adrp	x21, #89837568 ; -> 0xa3ef000 
004e42ab4 	ldr	x21, [x21, #3320]
004e42ab8 	ldr	x8, [x21]
004e42abc 	ldr	x0, [x8, #32]
004e42ac0 	add	x8, x0, #309
004e42ac4 	ldrh	w8, [x8]
004e42ac8 	tbnz	w8, #0, #8 ; -> 0x4e42ad0 
004e42acc 	bl	#-8887204 ; -> 0x45c8f28 
004e42ad0 	ldr	x8, [x0, #192]
004e42ad4 	ldr	x0, [x8, #16]
004e42ad8 	add	x8, x0, #309
004e42adc 	ldrh	w8, [x8]
004e42ae0 	tbnz	w8, #0, #8 ; -> 0x4e42ae8 
004e42ae4 	bl	#-8887228 ; -> 0x45c8f28 
004e42ae8 	ldr	x8, [x0, #184]
004e42aec 	ldr	x8, [x8]
004e42af0 	cbz	x8, #1384 ; -> 0x4e43058 
004e42af4 	ldr	x0, [x8, #96]
004e42af8 	mov	w1, wzr
004e42afc 	mov	x2, xzr
004e42b00 	bl	#-2995268 ; -> 0x4b676bc SExtesion_Mono::SetActive
004e42b04 	ldr	x8, [x21]
004e42b08 	ldr	x0, [x8, #32]
004e42b0c 	add	x8, x0, #309
004e42b10 	ldrh	w8, [x8]
004e42b14 	tbnz	w8, #0, #8 ; -> 0x4e42b1c 
004e42b18 	bl	#-8887280 ; -> 0x45c8f28 
004e42b1c 	ldr	x8, [x0, #192]
004e42b20 	ldr	x0, [x8, #16]
004e42b24 	add	x8, x0, #309
004e42b28 	ldrh	w8, [x8]
004e42b2c 	tbnz	w8, #0, #8 ; -> 0x4e42b34 
004e42b30 	bl	#-8887304 ; -> 0x45c8f28 
004e42b34 	ldr	x8, [x0, #184]
004e42b38 	ldr	x8, [x8]
004e42b3c 	cbz	x8, #1308 ; -> 0x4e43058 
004e42b40 	ldr	x0, [x8, #104]
004e42b44 	mov	w1, wzr
004e42b48 	mov	x2, xzr
004e42b4c 	bl	#-2995344 ; -> 0x4b676bc SExtesion_Mono::SetActive
004e42b50 	adrp	x21, #98095104 ; -> 0xabcf000 
004e42b54 	ldrb	w8, [x21, #635]
004e42b58 	cbnz	w8, #24 ; -> 0x4e42b70 
004e42b5c 	adrp	x0, #89837568 ; -> 0xa3ef000 
004e42b60 	ldr	x0, [x0, #3248]
004e42b64 	bl	#-9117956 ; -> 0x4590a60 
004e42b68 	mov	w8, #1
004e42b6c 	strb	w8, [x21, #635]
004e42b70 	adrp	x8, #89837568 ; -> 0xa3ef000 
004e42b74 	ldr	x8, [x8, #3248]
004e42b78 	ldr	x8, [x8]
004e42b7c 	ldr	x8, [x8, #184]
004e42b80 	ldr	x8, [x8]
004e42b84 	cbz	x8, #1236 ; -> 0x4e43058 
004e42b88 	ldr	x8, [x8, #88]
004e42b8c 	cbz	x8, #1228 ; -> 0x4e43058 
004e42b90 	ldr	x0, [x8, #24]
004e42b94 	cbz	x0, #1220 ; -> 0x4e43058 
004e42b98 	mov	x1, xzr
004e42b9c 	bl	#3961252 ; -> 0x5209d40 GuildManager_Quest_FieldEffect::RemoveBuffAndDebuff
004e42ba0 	mov	x0, x19
004e42ba4 	bl	#54520 ; -> 0x4e5009c GameManager::TurnOffGuildQuestFieldEffectIcon
004e42ba8 	adrp	x21, #90038272 ; -> 0xa420000 
004e42bac 	ldr	x21, [x21, #1528]
004e42bb0 	ldr	x0, [x21]
004e42bb4 	ldr	w8, [x0, #228]
004e42bb8 	cbnz	w8, #12 ; -> 0x4e42bc4 
004e42bbc 	bl	#-9117660 ; -> 0x4590be0 
004e42bc0 	ldr	x0, [x21]
004e42bc4 	ldr	x8, [x0, #184]
004e42bc8 	ldr	w9, [x19, #528]
004e42bcc 	str	wzr, [x8]
004e42bd0 	cbz	w9, #36 ; -> 0x4e42bf4 
004e42bd4 	adrp	x8, #89862144 ; -> 0xa3f5000 
004e42bd8 	ldr	x8, [x8, #3904]
004e42bdc 	ldr	x8, [x8]
004e42be0 	ldr	x8, [x8, #184]
004e42be4 	ldr	x0, [x8]
004e42be8 	cbz	x0, #1136 ; -> 0x4e43058 
004e42bec 	mov	x1, xzr
004e42bf0 	bl	#2431788 ; -> 0x509471c SkillManager::SetActiveSkillGainShortCut
004e42bf4 	mov	x0, x19
004e42bf8 	mov	w1, #1
004e42bfc 	bl	#54536 ; -> 0x4e50104 GameManager::BattleSettingUISetActive
004e42c00 	mov	x0, x19
004e42c04 	mov	w1, #1
004e42c08 	bl	#54820 ; -> 0x4e5022c GameManager::OfflineRewardTfSetActive
004e42c0c 	mov	x0, xzr
004e42c10 	bl	#1283884 ; -> 0x4f7c33c DamageInfoManager::get_Instance
004e42c14 	cbz	x0, #1092 ; -> 0x4e43058 
004e42c18 	ldr	w8, [x0, #24]
004e42c1c 	cmp	w8, #3
004e42c20 	b.ne	#116 ; -> 0x4e42c94 
004e42c24 	adrp	x21, #89812992 ; -> 0xa3e9000 
004e42c28 	ldr	x21, [x21, #1384]
004e42c2c 	ldr	x0, [x21]
004e42c30 	ldr	w8, [x0, #228]
004e42c34 	cbnz	w8, #12 ; -> 0x4e42c40 
004e42c38 	bl	#-9117784 ; -> 0x4590be0 
004e42c3c 	ldr	x0, [x21]
004e42c40 	ldr	x8, [x0, #184]
004e42c44 	ldr	x8, [x8]
004e42c48 	cbz	x8, #1040 ; -> 0x4e43058 
004e42c4c 	ldur	q0, [x8, #72]
004e42c50 	ldur	q1, [x8, #88]
004e42c54 	mov	x0, sp
004e42c58 	ldur	q2, [x8, #104]
004e42c5c 	mov	x1, xzr
004e42c60 	stp	q0, q1, [sp]
004e42c64 	str	q2, [sp, #32]
004e42c68 	bl	#-7732892 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e42c6c 	mov	w8, #52429
004e42c70 	mov	w9, #39320
004e42c74 	movk	w8, #52428, lsl #16
004e42c78 	movk	w9, #6553, lsl #16
004e42c7c 	madd	w8, w0, w8, w9
004e42c80 	mov	w9, #52428
004e42c84 	movk	w9, #3276, lsl #16
004e42c88 	ror	w8, w8, #2
004e42c8c 	cmp	w8, w9
004e42c90 	b.hi	#28 ; -> 0x4e42cac 
004e42c94 	mov	x0, xzr
004e42c98 	bl	#1283748 ; -> 0x4f7c33c DamageInfoManager::get_Instance
004e42c9c 	cbz	x0, #956 ; -> 0x4e43058 
004e42ca0 	ldr	w8, [x0, #24]
004e42ca4 	cmp	w8, #2
004e42ca8 	b.ne	#128 ; -> 0x4e42d28 
004e42cac 	adrp	x21, #98095104 ; -> 0xabcf000 
004e42cb0 	ldrb	w8, [x21, #1537]
004e42cb4 	cbnz	w8, #24 ; -> 0x4e42ccc 
004e42cb8 	adrp	x0, #89849856 ; -> 0xa3f2000 
004e42cbc 	ldr	x0, [x0, #3960]
004e42cc0 	bl	#-9118304 ; -> 0x4590a60 
004e42cc4 	mov	w8, #1
004e42cc8 	strb	w8, [x21, #1537]
004e42ccc 	adrp	x22, #89849856 ; -> 0xa3f2000 
004e42cd0 	ldr	x22, [x22, #3960]
004e42cd4 	ldr	x8, [x22]
004e42cd8 	ldr	x8, [x8, #184]
004e42cdc 	ldr	x0, [x8]
004e42ce0 	cbz	x0, #888 ; -> 0x4e43058 
004e42ce4 	mov	w1, #1502
004e42ce8 	mov	x2, xzr
004e42cec 	bl	#4334460 ; -> 0x5265068 PromotionPackageBundleManager::TryShowPackage
004e42cf0 	ldrb	w8, [x21, #1537]
004e42cf4 	cbnz	w8, #24 ; -> 0x4e42d0c 
004e42cf8 	adrp	x0, #89849856 ; -> 0xa3f2000 
004e42cfc 	ldr	x0, [x0, #3960]
004e42d00 	bl	#-9118368 ; -> 0x4590a60 
004e42d04 	mov	w8, #1
004e42d08 	strb	w8, [x21, #1537]
004e42d0c 	ldr	x8, [x22]
004e42d10 	ldr	x8, [x8, #184]
004e42d14 	ldr	x0, [x8]
004e42d18 	cbz	x0, #832 ; -> 0x4e43058 
004e42d1c 	mov	w1, #1507
004e42d20 	mov	x2, xzr
004e42d24 	bl	#4334404 ; -> 0x5265068 PromotionPackageBundleManager::TryShowPackage
004e42d28 	mov	x0, xzr
004e42d2c 	bl	#1283600 ; -> 0x4f7c33c DamageInfoManager::get_Instance
004e42d30 	cbz	x0, #808 ; -> 0x4e43058 
004e42d34 	ldr	w8, [x0, #24]
004e42d38 	cmp	w8, #3
004e42d3c 	b.ne	#104 ; -> 0x4e42da4 
004e42d40 	adrp	x8, #90071040 ; -> 0xa428000 
004e42d44 	adrp	x9, #89812992 ; -> 0xa3e9000 
004e42d48 	ldr	x8, [x8, #1808]
004e42d4c 	ldr	x8, [x8]
004e42d50 	ldr	x8, [x8, #184]
004e42d54 	ldr	x9, [x9, #1352]
004e42d58 	ldr	x0, [x9]
004e42d5c 	ldr	x22, [x8]
004e42d60 	bl	#-9117796 ; -> 0x4590cfc 
004e42d64 	adrp	x8, #90071040 ; -> 0xa428000 
004e42d68 	mov	x1, x22
004e42d6c 	mov	x3, xzr
004e42d70 	ldr	x8, [x8, #1800]
004e42d74 	mov	x21, x0
004e42d78 	ldr	x2, [x8]
004e42d7c 	bl	#26152872 ; -> 0x6733d24 
004e42d80 	adrp	x8, #89812992 ; -> 0xa3e9000 
004e42d84 	ldr	x8, [x8, #1344]
004e42d88 	ldr	x0, [x8]
004e42d8c 	ldr	w8, [x0, #228]
004e42d90 	cbnz	w8, #8 ; -> 0x4e42d98 
004e42d94 	bl	#-9118132 ; -> 0x4590be0 
004e42d98 	mov	x0, x21
004e42d9c 	mov	x1, xzr
004e42da0 	bl	#73717404 ; -> 0x949043c Cysharp.Threading.Tasks.UniTask::Void
004e42da4 	mov	x0, x19
004e42da8 	bl	#2780 ; -> 0x4e43884 GameManager::StageGoldRenew
004e42dac 	ldr	x8, [x19, #520]
004e42db0 	cbz	x8, #680 ; -> 0x4e43058 
004e42db4 	ldr	w8, [x8, #72]
004e42db8 	mov	x0, x19
004e42dbc 	str	w8, [x19, #1420]
004e42dc0 	bl	#14384 ; -> 0x4e465f0 GameManager::EnemyClear
004e42dc4 	ldr	x8, [x19, #520]
004e42dc8 	strb	wzr, [x19, #1516]
004e42dcc 	cbz	x8, #652 ; -> 0x4e43058 
004e42dd0 	adrp	x9, #89841664 ; -> 0xa3f0000 
004e42dd4 	ldr	x9, [x9, #744]
004e42dd8 	ldr	x9, [x9]
004e42ddc 	ldr	x9, [x9, #184]
004e42de0 	ldr	x0, [x9]
004e42de4 	cbz	x0, #628 ; -> 0x4e43058 
004e42de8 	ldr	w1, [x8, #76]
004e42dec 	mov	x2, xzr
004e42df0 	bl	#515736 ; -> 0x4ec0c88 MapManager::MapSetting_Index
004e42df4 	ldr	x0, [x23]
004e42df8 	ldr	w8, [x0, #228]
004e42dfc 	cbnz	w8, #12 ; -> 0x4e42e08 
004e42e00 	bl	#-9118240 ; -> 0x4590be0 
004e42e04 	ldr	x0, [x23]
004e42e08 	ldr	x8, [x0, #184]
004e42e0c 	ldr	x8, [x8, #56]
004e42e10 	cbz	x8, #584 ; -> 0x4e43058 
004e42e14 	ldr	x9, [x8, #24]
004e42e18 	ldr	x0, [x8, #64]
004e42e1c 	ldr	x1, [x8, #40]
004e42e20 	blr	x9
004e42e24 	ldr	x0, [x24]
004e42e28 	ldr	w8, [x0, #228]
004e42e2c 	cbnz	w8, #12 ; -> 0x4e42e38 
004e42e30 	bl	#-9118288 ; -> 0x4590be0 
004e42e34 	ldr	x0, [x24]
004e42e38 	ldr	x8, [x0, #184]
004e42e3c 	ldr	x0, [x8]
004e42e40 	cbz	x0, #536 ; -> 0x4e43058 
004e42e44 	mov	x1, xzr
004e42e48 	bl	#728088 ; -> 0x4ef4a60 PlayerBase::PlayerBattleStart
004e42e4c 	ldr	x8, [x20]
004e42e50 	cbz	x8, #520 ; -> 0x4e43058 
004e42e54 	adrp	x20, #89841664 ; -> 0xa3f0000 
004e42e58 	ldr	x20, [x20]
004e42e5c 	ldr	x9, [x20]
004e42e60 	ldr	x9, [x9, #184]
004e42e64 	ldr	x0, [x9]
004e42e68 	cbz	x0, #496 ; -> 0x4e43058 
004e42e6c 	ldr	s0, [x8, #48]
004e42e70 	mov	x1, xzr
004e42e74 	bl	#1798240 ; -> 0x4ff9ed4 CameraController::View_CameraSetting
004e42e78 	ldr	x8, [x20]
004e42e7c 	ldr	x8, [x8, #184]
004e42e80 	ldr	x8, [x8]
004e42e84 	cbz	x8, #468 ; -> 0x4e43058 
004e42e88 	ldr	x8, [x8, #40]
004e42e8c 	cbz	x8, #460 ; -> 0x4e43058 
004e42e90 	ldr	x0, [x19, #1192]
004e42e94 	mov	w9, #1065353216
004e42e98 	str	wzr, [x19, #1416]
004e42e9c 	str	w9, [x8, #72]
004e42ea0 	cbz	x0, #440 ; -> 0x4e43058 
004e42ea4 	mov	w1, #1
004e42ea8 	mov	x2, xzr
004e42eac 	bl	#79433000 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e42eb0 	ldr	x0, [x19, #1200]
004e42eb4 	cbz	x0, #420 ; -> 0x4e43058 
004e42eb8 	movi	d0, #0000000000000000
004e42ebc 	mov	x1, xzr
004e42ec0 	bl	#80617692 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e42ec4 	ldr	x0, [x19, #1136]
004e42ec8 	cbz	x0, #400 ; -> 0x4e43058 
004e42ecc 	mov	w1, #1
004e42ed0 	mov	x2, xzr
004e42ed4 	bl	#79432960 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e42ed8 	ldr	x0, [x19, #1152]
004e42edc 	cbz	x0, #380 ; -> 0x4e43058 
004e42ee0 	mov	w1, #1
004e42ee4 	mov	x2, xzr
004e42ee8 	bl	#79432940 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e42eec 	adrp	x8, #90071040 ; -> 0xa428000 
004e42ef0 	ldr	x8, [x8, #1816]
004e42ef4 	ldr	x8, [x8]
004e42ef8 	ldr	x8, [x8, #184]
004e42efc 	ldr	x0, [x8]
004e42f00 	cbz	x0, #344 ; -> 0x4e43058 
004e42f04 	mov	x1, xzr
004e42f08 	bl	#5975012 ; -> 0x53f5aec WeatherEffectManager::SetEventEffect
004e42f0c 	ldr	x0, [x19, #1208]
004e42f10 	cbz	x0, #328 ; -> 0x4e43058 
004e42f14 	mov	w1, wzr
004e42f18 	mov	x2, xzr
004e42f1c 	bl	#79432888 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e42f20 	ldr	x0, [x19, #520]
004e42f24 	cbz	x0, #308 ; -> 0x4e43058 
004e42f28 	ldr	x20, [x19, #1160]
004e42f2c 	mov	x1, xzr
004e42f30 	bl	#5622796 ; -> 0x539fb3c StageInfo::get_StageName
004e42f34 	cbz	x20, #292 ; -> 0x4e43058 
004e42f38 	ldr	x8, [x20]
004e42f3c 	mov	x1, x0
004e42f40 	mov	x0, x20
004e42f44 	ldr	x9, [x8, #1512]
004e42f48 	ldr	x2, [x8, #1520]
004e42f4c 	blr	x9
004e42f50 	ldr	x20, [x19, #1168]
004e42f54 	mov	x0, xzr
004e42f58 	bl	#-5401172 ; -> 0x491c504 STR::get_GAME_MODE_TITLE_STAGE
004e42f5c 	ldr	x8, [x19, #520]
004e42f60 	cbz	x8, #248 ; -> 0x4e43058 
004e42f64 	ldr	w8, [x8, #32]
004e42f68 	mov	x21, x0
004e42f6c 	add	x0, sp, #156
004e42f70 	mov	x1, xzr
004e42f74 	add	w8, w8, #1
004e42f78 	str	w8, [sp, #156]
004e42f7c 	bl	#67311464 ; -> 0x8e746e4 System.Int32::ToString
004e42f80 	adrp	x8, #89808896 ; -> 0xa3e8000 
004e42f84 	mov	x2, x0
004e42f88 	mov	x0, x21
004e42f8c 	ldr	x8, [x8, #1824]
004e42f90 	mov	x3, xzr
004e42f94 	ldr	x1, [x8]
004e42f98 	bl	#65630100 ; -> 0x8cd9f2c System.String::Concat
004e42f9c 	cbz	x20, #188 ; -> 0x4e43058 
004e42fa0 	ldr	x8, [x20]
004e42fa4 	mov	x1, x0
004e42fa8 	mov	x0, x20
004e42fac 	ldr	x9, [x8, #1512]
004e42fb0 	ldr	x2, [x8, #1520]
004e42fb4 	blr	x9
004e42fb8 	ldr	x20, [x19, #32]
004e42fbc 	cbz	x20, #156 ; -> 0x4e43058 
004e42fc0 	mov	x22, xzr
004e42fc4 	mov	x0, x20
004e42fc8 	mov	x1, xzr
004e42fcc 	bl	#-1048412 ; -> 0x4d43070 DatabaseManager::get_SkillDeckNumber
004e42fd0 	mov	w1, w0
004e42fd4 	mov	x0, x20
004e42fd8 	mov	x2, xzr
004e42fdc 	bl	#-1048040 ; -> 0x4d431f4 DatabaseManager::SkillDeck
004e42fe0 	cbz	x0, #120 ; -> 0x4e43058 
004e42fe4 	ldrsw	x8, [x0, #24]
004e42fe8 	cmp	x22, x8
004e42fec 	b.ge	#132 ; -> 0x4e43070 
004e42ff0 	mov	x0, xzr
004e42ff4 	bl	#4453308 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e42ff8 	ldr	x21, [x19, #32]
004e42ffc 	cbz	x21, #92 ; -> 0x4e43058 
004e43000 	mov	x20, x0
004e43004 	mov	x0, x21
004e43008 	mov	x1, xzr
004e4300c 	bl	#-1048476 ; -> 0x4d43070 DatabaseManager::get_SkillDeckNumber
004e43010 	mov	w1, w0
004e43014 	mov	x0, x21
004e43018 	mov	x2, xzr
004e4301c 	bl	#-1048104 ; -> 0x4d431f4 DatabaseManager::SkillDeck
004e43020 	cbz	x0, #56 ; -> 0x4e43058 
004e43024 	ldr	w8, [x0, #24]
004e43028 	cmp	x22, x8
004e4302c 	b.hs	#460 ; -> 0x4e431f8 
004e43030 	cbz	x20, #40 ; -> 0x4e43058 
004e43034 	add	x8, x0, x22, lsl #2
004e43038 	mov	x0, x20
004e4303c 	mov	x2, xzr
004e43040 	ldr	w1, [x8, #32]
004e43044 	bl	#4461700 ; -> 0x52844c8 SeasonSkillEventManager::CheckContainSeasonSkill
004e43048 	tbnz	w0, #0, #20 ; -> 0x4e4305c 
004e4304c 	ldr	x20, [x19, #32]
004e43050 	add	x22, x22, #1
004e43054 	cbnz	x20, #-144 ; -> 0x4e42fc4 
004e43058 	bl	#-9118540 ; -> 0x4590d0c 
004e4305c 	mov	x0, xzr
004e43060 	bl	#4453200 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004e43064 	cbz	x0, #-12 ; -> 0x4e43058 
004e43068 	mov	x1, xzr
004e4306c 	bl	#4463008 ; -> 0x5284a0c SeasonSkillEventManager::CheckUnmountSeasonSkill
004e43070 	adrp	x20, #89837568 ; -> 0xa3f0000 
004e43074 	ldr	x20, [x20, #3216]
004e43078 	ldr	x8, [x20]
004e4307c 	ldr	x0, [x8, #32]
004e43080 	add	x8, x0, #309
004e43084 	ldrh	w8, [x8]
004e43088 	tbnz	w8, #0, #8 ; -> 0x4e43090 
004e4308c 	bl	#-8888676 ; -> 0x45c8f28 
004e43090 	ldr	x8, [x0, #192]
004e43094 	ldr	x0, [x8, #16]
004e43098 	add	x8, x0, #309
004e4309c 	ldrh	w8, [x8]
004e430a0 	tbnz	w8, #0, #8 ; -> 0x4e430a8 
004e430a4 	bl	#-8888700 ; -> 0x45c8f28 
004e430a8 	ldr	x8, [x0, #184]
004e430ac 	ldr	x8, [x8]
004e430b0 	cbz	x8, #-88 ; -> 0x4e43058 
004e430b4 	ldr	x0, [x8, #56]
004e430b8 	cbz	x0, #-96 ; -> 0x4e43058 
004e430bc 	mov	x1, xzr
004e430c0 	bl	#1681052 ; -> 0x4fdd75c BeastManagerModule_Skill::InitBeastSkillCondition
004e430c4 	ldr	x8, [x20]
004e430c8 	ldr	x0, [x8, #32]
004e430cc 	add	x8, x0, #309
004e430d0 	ldrh	w8, [x8]
004e430d4 	tbnz	w8, #0, #8 ; -> 0x4e430dc 
004e430d8 	bl	#-8888752 ; -> 0x45c8f28 
004e430dc 	ldr	x8, [x0, #192]
004e430e0 	ldr	x0, [x8, #16]
004e430e4 	add	x8, x0, #309
004e430e8 	ldrh	w8, [x8]
004e430ec 	tbnz	w8, #0, #8 ; -> 0x4e430f4 
004e430f0 	bl	#-8888776 ; -> 0x45c8f28 
004e430f4 	ldr	x8, [x0, #184]
004e430f8 	ldr	x8, [x8]
004e430fc 	cbz	x8, #-164 ; -> 0x4e43058 
004e43100 	ldr	x0, [x8, #48]
004e43104 	cbz	x0, #-172 ; -> 0x4e43058 
004e43108 	mov	x1, xzr
004e4310c 	bl	#1575768 ; -> 0x4fc3c64 BeastManagerModule_Hunt::CheckRiding
004e43110 	ldr	x0, [x19, #1176]
004e43114 	cbz	x0, #-188 ; -> 0x4e43058 
004e43118 	mov	x1, xzr
004e4311c 	bl	#79435648 ; -> 0x9a0489c UnityEngine.GameObject::get_gameObject
004e43120 	cbz	x0, #-200 ; -> 0x4e43058 
004e43124 	mov	w1, #1
004e43128 	mov	x2, xzr
004e4312c 	bl	#79432360 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e43130 	ldr	x0, [x19, #520]
004e43134 	cbz	x0, #-220 ; -> 0x4e43058 
004e43138 	ldr	x20, [x19, #1184]
004e4313c 	mov	x1, xzr
004e43140 	bl	#5622268 ; -> 0x539fb3c StageInfo::get_StageName
004e43144 	cbz	x20, #-236 ; -> 0x4e43058 
004e43148 	ldr	x8, [x20]
004e4314c 	mov	x1, x0
004e43150 	mov	x0, x20
004e43154 	ldr	x9, [x8, #1512]
004e43158 	ldr	x2, [x8, #1520]
004e4315c 	blr	x9
004e43160 	ldr	x0, [x19, #48]
004e43164 	cbz	x0, #-268 ; -> 0x4e43058 
004e43168 	mov	x1, xzr
004e4316c 	bl	#79495104 ; -> 0x9a1312c UnityEngine.Transform::get_position
004e43170 	mov	x0, x19
004e43174 	str	s0, [x19, #1424]
004e43178 	str	s1, [x19, #1428]
004e4317c 	str	s2, [x19, #1432]
004e43180 	bl	#18540 ; -> 0x4e479ec GameManager::Start_MakeEnemy_Stage
004e43184 	adrp	x19, #98091008 ; -> 0xabcf000 
004e43188 	ldrb	w8, [x19, #1161]
004e4318c 	cbnz	w8, #24 ; -> 0x4e431a4 
004e43190 	adrp	x0, #89841664 ; -> 0xa3f1000 
004e43194 	ldr	x0, [x0, #4032]
004e43198 	bl	#-9119544 ; -> 0x4590a60 
004e4319c 	mov	w8, #1
004e431a0 	strb	w8, [x19, #1161]
004e431a4 	adrp	x8, #89841664 ; -> 0xa3f1000 
004e431a8 	ldr	x8, [x8, #4032]
004e431ac 	ldr	x8, [x8]
004e431b0 	ldr	x8, [x8, #184]
004e431b4 	ldr	x8, [x8]
004e431b8 	cbz	x8, #-352 ; -> 0x4e43058 
004e431bc 	ldr	x0, [x8, #48]
004e431c0 	cbz	x0, #-360 ; -> 0x4e43058 
004e431c4 	mov	x1, xzr
004e431c8 	bl	#2004084 ; -> 0x502c63c DemonManager_Sanctuary::CheckReddot
004e431cc 	mov	x0, xzr
004e431d0 	bl	#-6943104 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
004e431d4 	cbz	x0, #-380 ; -> 0x4e43058 
004e431d8 	mov	x1, xzr
004e431dc 	bl	#-6942564 ; -> 0x47a4278 Gear2.GrowSlayer.Logging.KinesisLog::StartStopwatch
004e431e0 	ldp	x20, x19, [sp, #192]
004e431e4 	ldr	x30, [sp, #144]
004e431e8 	ldp	x22, x21, [sp, #176]
004e431ec 	ldp	x24, x23, [sp, #160]
004e431f0 	add	sp, sp, #208
004e431f4 	ret
004e431f8 	bl	#-9118948 ; -> 0x4590d14 
