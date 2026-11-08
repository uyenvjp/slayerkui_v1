0050b7810 	sub	sp, sp, #432
0050b7814 	stp	d9, d8, [sp, #320]
0050b7818 	stp	x29, x30, [sp, #336]
0050b781c 	stp	x28, x27, [sp, #352]
0050b7820 	stp	x26, x25, [sp, #368]
0050b7824 	stp	x24, x23, [sp, #384]
0050b7828 	stp	x22, x21, [sp, #400]
0050b782c 	stp	x20, x19, [sp, #416]
0050b7830 	adrp	x27, #95547392 ; -> 0xabd6000 
0050b7834 	ldr	w28, [sp, #432]
0050b7838 	mov	x19, x7
0050b783c 	ldrb	w8, [x27, #699]
0050b7840 	mov	w26, w6
0050b7844 	mov	w25, w5
0050b7848 	mov	w24, w4
0050b784c 	mov	w21, w3
0050b7850 	mov	x23, x2
0050b7854 	mov	x22, x1
0050b7858 	mov	x20, x0
0050b785c 	tbnz	w8, #0, #192 ; -> 0x50b791c 
0050b7860 	adrp	x0, #87236608 ; -> 0xa3e9000 
0050b7864 	ldr	x0, [x0, #3552]
0050b7868 	bl	#-11693576 ; -> 0x4590a60 
0050b786c 	adrp	x0, #87273472 ; -> 0xa3f2000 
0050b7870 	ldr	x0, [x0, #3032]
0050b7874 	bl	#-11693588 ; -> 0x4590a60 
0050b7878 	adrp	x0, #87535616 ; -> 0xa432000 
0050b787c 	ldr	x0, [x0, #2784]
0050b7880 	bl	#-11693600 ; -> 0x4590a60 
0050b7884 	adrp	x0, #87539712 ; -> 0xa433000 
0050b7888 	ldr	x0, [x0, #1552]
0050b788c 	bl	#-11693612 ; -> 0x4590a60 
0050b7890 	adrp	x0, #87273472 ; -> 0xa3f2000 
0050b7894 	ldr	x0, [x0, #3056]
0050b7898 	bl	#-11693624 ; -> 0x4590a60 
0050b789c 	adrp	x0, #87273472 ; -> 0xa3f2000 
0050b78a0 	ldr	x0, [x0, #552]
0050b78a4 	bl	#-11693636 ; -> 0x4590a60 
0050b78a8 	adrp	x0, #87531520 ; -> 0xa431000 
0050b78ac 	ldr	x0, [x0, #112]
0050b78b0 	bl	#-11693648 ; -> 0x4590a60 
0050b78b4 	adrp	x0, #87228416 ; -> 0xa3e7000 
0050b78b8 	ldr	x0, [x0, #1192]
0050b78bc 	bl	#-11693660 ; -> 0x4590a60 
0050b78c0 	adrp	x0, #87437312 ; -> 0xa41a000 
0050b78c4 	ldr	x0, [x0, #3856]
0050b78c8 	bl	#-11693672 ; -> 0x4590a60 
0050b78cc 	adrp	x0, #87470080 ; -> 0xa422000 
0050b78d0 	ldr	x0, [x0, #3032]
0050b78d4 	bl	#-11693684 ; -> 0x4590a60 
0050b78d8 	adrp	x0, #87285760 ; -> 0xa3f5000 
0050b78dc 	ldr	x0, [x0, #3904]
0050b78e0 	bl	#-11693696 ; -> 0x4590a60 
0050b78e4 	adrp	x0, #87236608 ; -> 0xa3e9000 
0050b78e8 	ldr	x0, [x0, #736]
0050b78ec 	bl	#-11693708 ; -> 0x4590a60 
0050b78f0 	adrp	x0, #87506944 ; -> 0xa42b000 
0050b78f4 	ldr	x0, [x0, #2600]
0050b78f8 	bl	#-11693720 ; -> 0x4590a60 
0050b78fc 	adrp	x0, #87457792 ; -> 0xa41f000 
0050b7900 	ldr	x0, [x0, #1848]
0050b7904 	bl	#-11693732 ; -> 0x4590a60 
0050b7908 	adrp	x0, #87412736 ; -> 0xa414000 
0050b790c 	ldr	x0, [x0, #3032]
0050b7910 	bl	#-11693744 ; -> 0x4590a60 
0050b7914 	mov	w8, #1
0050b7918 	strb	w8, [x27, #699]
0050b791c 	mov	w0, #31560
0050b7920 	mov	x1, xzr
0050b7924 	stp	xzr, xzr, [sp, #304]
0050b7928 	stp	xzr, xzr, [sp, #288]
0050b792c 	stp	xzr, xzr, [sp, #272]
0050b7930 	str	xzr, [sp, #264]
0050b7934 	bl	#-4653968 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b7938 	tbz	w0, #0, #68 ; -> 0x50b797c 
0050b793c 	mov	w0, #31560
0050b7940 	mov	x1, xzr
0050b7944 	bl	#-4653804 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b7948 	cbz	x0, #2960 ; -> 0x50b84d8 
0050b794c 	and	w6, w25, #0x1
0050b7950 	and	w7, w26, #0x1
0050b7954 	mov	x1, x20
0050b7958 	mov	x2, x22
0050b795c 	mov	x3, x23
0050b7960 	mov	w4, w21
0050b7964 	mov	w5, w24
0050b7968 	str	xzr, [sp, #16]
0050b796c 	str	w28, [sp, #8]
0050b7970 	str	x19, [sp]
0050b7974 	bl	#-5061308 ; -> 0x4be3eb8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1980
0050b7978 	b	#2724 ; -> 0x50b841c 
0050b797c 	ldrb	w8, [x20, #512]
0050b7980 	cbz	w8, #2716 ; -> 0x50b841c 
0050b7984 	ldrb	w8, [x20, #360]
0050b7988 	cbz	w8, #140 ; -> 0x50b7a14 
0050b798c 	adrp	x8, #87506944 ; -> 0xa42b000 
0050b7990 	adrp	x9, #87412736 ; -> 0xa414000 
0050b7994 	mov	x0, x20
0050b7998 	ldr	x8, [x8, #2600]
0050b799c 	ldr	x9, [x9, #3032]
0050b79a0 	ldr	x10, [x20]
0050b79a4 	ldp	s0, s1, [x20, #152]
0050b79a8 	ldr	s2, [x20, #160]
0050b79ac 	ldr	x1, [x8]
0050b79b0 	ldr	x2, [x9]
0050b79b4 	ldr	x8, [x10, #696]
0050b79b8 	ldr	x3, [x10, #704]
0050b79bc 	blr	x8
0050b79c0 	cmp	w28, #1
0050b79c4 	b.ne	#2648 ; -> 0x50b841c 
0050b79c8 	mov	x0, xzr
0050b79cc 	bl	#1878500 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
0050b79d0 	cbz	x0, #2824 ; -> 0x50b84d8 
0050b79d4 	mov	x1, xzr
0050b79d8 	bl	#1878908 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
0050b79dc 	cbz	x0, #2812 ; -> 0x50b84d8 
0050b79e0 	mov	x2, x19
0050b79e4 	ldp	x20, x19, [sp, #416]
0050b79e8 	ldp	x22, x21, [sp, #400]
0050b79ec 	mov	w1, #27
0050b79f0 	ldp	x24, x23, [sp, #384]
0050b79f4 	mov	w3, #1
0050b79f8 	ldp	x26, x25, [sp, #368]
0050b79fc 	mov	x4, xzr
0050b7a00 	ldp	x28, x27, [sp, #352]
0050b7a04 	ldp	x29, x30, [sp, #336]
0050b7a08 	ldp	d9, d8, [sp, #320]
0050b7a0c 	add	sp, sp, #432
0050b7a10 	b	#1909776 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
0050b7a14 	adrp	x8, #87228416 ; -> 0xa3e7000 
0050b7a18 	ldr	x8, [x8, #1192]
0050b7a1c 	ldr	x27, [x20, #528]
0050b7a20 	ldr	x0, [x8]
0050b7a24 	ldr	w8, [x0, #228]
0050b7a28 	cbnz	w8, #8 ; -> 0x50b7a30 
0050b7a2c 	bl	#-11693644 ; -> 0x4590be0 
0050b7a30 	mov	x0, x27
0050b7a34 	mov	x1, xzr
0050b7a38 	mov	x2, xzr
0050b7a3c 	bl	#76855380 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
0050b7a40 	tbz	w0, #0, #124 ; -> 0x50b7abc 
0050b7a44 	adrp	x27, #87437312 ; -> 0xa41a000 
0050b7a48 	ldr	x27, [x27, #3856]
0050b7a4c 	ldr	x0, [x27]
0050b7a50 	ldr	w8, [x0, #228]
0050b7a54 	cbnz	w8, #12 ; -> 0x50b7a60 
0050b7a58 	bl	#-11693688 ; -> 0x4590be0 
0050b7a5c 	ldr	x0, [x27]
0050b7a60 	ldr	x8, [x0, #184]
0050b7a64 	ldr	x0, [x8]
0050b7a68 	cbz	x0, #2672 ; -> 0x50b84d8 
0050b7a6c 	mov	x1, xzr
0050b7a70 	bl	#-1841424 ; -> 0x4ef6160 PlayerBase::get_AbnormalSkillValue
0050b7a74 	cmp	w28, #3
0050b7a78 	b.eq	#68 ; -> 0x50b7abc 
0050b7a7c 	fcmp	s0, #0.0
0050b7a80 	b.le	#60 ; -> 0x50b7abc 
0050b7a84 	cbz	x19, #48 ; -> 0x50b7ab4 
0050b7a88 	adrp	x8, #87228416 ; -> 0xa3e7000 
0050b7a8c 	ldr	x8, [x8, #1248]
0050b7a90 	ldr	x1, [x8, #72]
0050b7a94 	ldr	x8, [x19]
0050b7a98 	cmp	x8, x1
0050b7a9c 	b.ne	#24 ; -> 0x50b7ab4 
0050b7aa0 	mov	x0, x19
0050b7aa4 	bl	#-16332640 ; -> 0x4124344 
0050b7aa8 	ldr	w8, [x0]
0050b7aac 	cmp	w8, #1004
0050b7ab0 	b.eq	#12 ; -> 0x50b7abc 
0050b7ab4 	mov	x0, x20
0050b7ab8 	bl	#-2160 ; -> 0x50b7248 EnemyBase::ScheduleAbnormalAddDamage
0050b7abc 	adrp	x29, #87437312 ; -> 0xa41a000 
0050b7ac0 	ldr	x29, [x29, #3856]
0050b7ac4 	ldr	x0, [x29]
0050b7ac8 	ldr	w8, [x0, #228]
0050b7acc 	cbnz	w8, #12 ; -> 0x50b7ad8 
0050b7ad0 	bl	#-11693808 ; -> 0x4590be0 
0050b7ad4 	ldr	x0, [x29]
0050b7ad8 	ldr	x8, [x0, #184]
0050b7adc 	ldr	x0, [x8]
0050b7ae0 	cbz	x0, #2552 ; -> 0x50b84d8 
0050b7ae4 	ldr	x8, [x0]
0050b7ae8 	ldp	x9, x1, [x8, #504]
0050b7aec 	blr	x9
0050b7af0 	fmov	s8, s0
0050b7af4 	cbz	x19, #204 ; -> 0x50b7bc0 
0050b7af8 	adrp	x8, #87228416 ; -> 0xa3e7000 
0050b7afc 	ldr	x8, [x8, #1248]
0050b7b00 	ldr	x9, [x19]
0050b7b04 	ldr	x8, [x8, #72]
0050b7b08 	cmp	x9, x8
0050b7b0c 	b.ne	#180 ; -> 0x50b7bc0 
0050b7b10 	mov	x0, x19
0050b7b14 	bl	#-11693864 ; -> 0x4590bec 
0050b7b18 	adrp	x29, #95535104 ; -> 0xabd3000 
0050b7b1c 	ldr	w27, [x0]
0050b7b20 	ldrb	w8, [x29, #1983]
0050b7b24 	cbnz	w8, #24 ; -> 0x50b7b3c 
0050b7b28 	adrp	x0, #87420928 ; -> 0xa416000 
0050b7b2c 	ldr	x0, [x0, #296]
0050b7b30 	bl	#-11694288 ; -> 0x4590a60 
0050b7b34 	mov	w8, #1
0050b7b38 	strb	w8, [x29, #1983]
0050b7b3c 	adrp	x8, #87420928 ; -> 0xa416000 
0050b7b40 	ldr	x8, [x8, #296]
0050b7b44 	ldr	x8, [x8]
0050b7b48 	ldr	x8, [x8, #184]
0050b7b4c 	ldr	x8, [x8]
0050b7b50 	cbz	x8, #2440 ; -> 0x50b84d8 
0050b7b54 	adrp	x29, #87437312 ; -> 0xa41a000 
0050b7b58 	ldr	x0, [x8, #32]
0050b7b5c 	ldr	x29, [x29, #3856]
0050b7b60 	cbz	x0, #2424 ; -> 0x50b84d8 
0050b7b64 	mov	x1, xzr
0050b7b68 	bl	#2472440 ; -> 0x5313560 SkillGrindingDataManager::get_SkillGrindingOptionValue_Dic
0050b7b6c 	cbz	x0, #2412 ; -> 0x50b84d8 
0050b7b70 	adrp	x8, #87539712 ; -> 0xa433000 
0050b7b74 	add	x2, sp, #312
0050b7b78 	mov	w1, w27
0050b7b7c 	ldr	x8, [x8, #1552]
0050b7b80 	ldr	x3, [x8]
0050b7b84 	bl	#49948556 ; -> 0x805a310 
0050b7b88 	tbz	w0, #0, #56 ; -> 0x50b7bc0 
0050b7b8c 	ldr	x0, [sp, #312]
0050b7b90 	cbz	x0, #2376 ; -> 0x50b84d8 
0050b7b94 	add	x8, sp, #192
0050b7b98 	mov	x1, xzr
0050b7b9c 	bl	#2469704 ; -> 0x5312ae4 SkillGrindingOptionValue::get_Accuracy
0050b7ba0 	add	x0, sp, #120
0050b7ba4 	add	x1, sp, #192
0050b7ba8 	mov	w2, #72
0050b7bac 	bl	#80428356 ; -> 0x9d6b8f0 
0050b7bb0 	add	x0, sp, #120
0050b7bb4 	mov	x1, xzr
0050b7bb8 	bl	#-5660304 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050b7bbc 	fadd	s8, s8, s0
0050b7bc0 	ldr	x8, [x20]
0050b7bc4 	mov	x0, x20
0050b7bc8 	ldp	x9, x1, [x8, #472]
0050b7bcc 	blr	x9
0050b7bd0 	adrp	x8, #87236608 ; -> 0xa3e9000 
0050b7bd4 	fmov	s9, s0
0050b7bd8 	ldr	x8, [x8, #736]
0050b7bdc 	ldr	x0, [x8]
0050b7be0 	ldr	w8, [x0, #228]
0050b7be4 	cbnz	w8, #8 ; -> 0x50b7bec 
0050b7be8 	bl	#-11694088 ; -> 0x4590be0 
0050b7bec 	fmov	s0, s8
0050b7bf0 	fmov	s1, s9
0050b7bf4 	and	w0, w26, #0x1
0050b7bf8 	mov	x1, xzr
0050b7bfc 	bl	#-3755152 ; -> 0x4d22f6c UsefulManager::MissProbability
0050b7c00 	and	w8, w28, #0xfffffffe
0050b7c04 	cmp	w8, #2
0050b7c08 	b.eq	#64 ; -> 0x50b7c48 
0050b7c0c 	tbz	w0, #0, #60 ; -> 0x50b7c48 
0050b7c10 	adrp	x8, #87506944 ; -> 0xa42b000 
0050b7c14 	adrp	x9, #87412736 ; -> 0xa414000 
0050b7c18 	mov	x0, x20
0050b7c1c 	ldr	x8, [x8, #2600]
0050b7c20 	ldr	x9, [x9, #3032]
0050b7c24 	ldr	x10, [x20]
0050b7c28 	ldp	s0, s1, [x20, #152]
0050b7c2c 	ldr	s2, [x20, #160]
0050b7c30 	ldr	x1, [x8]
0050b7c34 	ldr	x2, [x9]
0050b7c38 	ldr	x8, [x10, #696]
0050b7c3c 	ldr	x3, [x10, #704]
0050b7c40 	blr	x8
0050b7c44 	b	#1948 ; -> 0x50b83e0 
0050b7c48 	add	x0, x20, #504
0050b7c4c 	mov	x1, x19
0050b7c50 	strb	wzr, [x20, #488]
0050b7c54 	str	x19, [x20, #504]
0050b7c58 	bl	#-11694676 ; -> 0x4590a04 
0050b7c5c 	cbz	x19, #1288 ; -> 0x50b8164 
0050b7c60 	adrp	x8, #87228416 ; -> 0xa3e7000 
0050b7c64 	ldr	x8, [x8, #1248]
0050b7c68 	ldr	x9, [x19]
0050b7c6c 	ldr	x8, [x8, #72]
0050b7c70 	cmp	x9, x8
0050b7c74 	b.ne	#1188 ; -> 0x50b8118 
0050b7c78 	mov	x0, x19
0050b7c7c 	bl	#-11694224 ; -> 0x4590bec 
0050b7c80 	ldr	w27, [x0]
0050b7c84 	cmp	w27, #45
0050b7c88 	b.eq	#716 ; -> 0x50b7f54 
0050b7c8c 	mov	x0, x20
0050b7c90 	mov	x1, x22
0050b7c94 	mov	x2, x23
0050b7c98 	bl	#2116 ; -> 0x50b84dc EnemyBase::AbnormalState_Cal
0050b7c9c 	mov	x22, x0
0050b7ca0 	cmp	w27, #3
0050b7ca4 	mov	x23, x1
0050b7ca8 	b.le	#184 ; -> 0x50b7d60 
0050b7cac 	cmp	w27, #29
0050b7cb0 	b.ne	#300 ; -> 0x50b7ddc 
0050b7cb4 	adrp	x8, #87285760 ; -> 0xa3f5000 
0050b7cb8 	ldr	x8, [x8, #3904]
0050b7cbc 	ldr	x8, [x8]
0050b7cc0 	ldr	x8, [x8, #184]
0050b7cc4 	ldr	x8, [x8]
0050b7cc8 	cbz	x8, #2064 ; -> 0x50b84d8 
0050b7ccc 	ldr	x0, [x8, #1200]
0050b7cd0 	cbz	x0, #2056 ; -> 0x50b84d8 
0050b7cd4 	adrp	x8, #87535616 ; -> 0xa432000 
0050b7cd8 	add	x2, sp, #304
0050b7cdc 	mov	w1, #29
0050b7ce0 	ldr	x8, [x8, #2784]
0050b7ce4 	ldr	x3, [x8]
0050b7ce8 	bl	#49948200 ; -> 0x805a310 
0050b7cec 	tbz	w0, #0, #588 ; -> 0x50b7f38 
0050b7cf0 	ldr	x0, [sp, #304]
0050b7cf4 	cbz	x0, #2020 ; -> 0x50b84d8 
0050b7cf8 	mov	x1, xzr
0050b7cfc 	bl	#2415536 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b7d00 	cmp	w0, #2
0050b7d04 	b.lt	#564 ; -> 0x50b7f38 
0050b7d08 	adrp	x29, #87531520 ; -> 0xa431000 
0050b7d0c 	mov	w8, #1
0050b7d10 	add	x1, sp, #116
0050b7d14 	ldr	x29, [x29, #112]
0050b7d18 	str	w8, [sp, #116]
0050b7d1c 	ldr	x0, [x29]
0050b7d20 	bl	#-11694392 ; -> 0x4590be8 
0050b7d24 	ldr	x8, [x29]
0050b7d28 	ldr	w10, [x20, #324]
0050b7d2c 	mov	x1, x0
0050b7d30 	mov	x9, #-1
0050b7d34 	add	x0, sp, #192
0050b7d38 	mov	x2, xzr
0050b7d3c 	stp	x8, x9, [sp, #192]
0050b7d40 	str	w10, [sp, #208]
0050b7d44 	bl	#64978108 ; -> 0x8eafa00 System.Enum::Equals
0050b7d48 	tbz	w0, #0, #496 ; -> 0x50b7f38 
0050b7d4c 	mov	x0, x20
0050b7d50 	mov	x1, x22
0050b7d54 	mov	x2, x23
0050b7d58 	bl	#2372 ; -> 0x50b869c EnemyBase::SkillMastery_Normal_MonsterAddDmg_Cal
0050b7d5c 	b	#468 ; -> 0x50b7f30 
0050b7d60 	cbz	w27, #252 ; -> 0x50b7e5c 
0050b7d64 	sub	w8, w27, #4
0050b7d68 	cmn	w8, #3
0050b7d6c 	b.lo	#460 ; -> 0x50b7f38 
0050b7d70 	adrp	x8, #87285760 ; -> 0xa3f5000 
0050b7d74 	ldr	x8, [x8, #3904]
0050b7d78 	ldr	x8, [x8]
0050b7d7c 	ldr	x8, [x8, #184]
0050b7d80 	ldr	x8, [x8]
0050b7d84 	cbz	x8, #1876 ; -> 0x50b84d8 
0050b7d88 	ldr	x0, [x8, #1200]
0050b7d8c 	cbz	x0, #1868 ; -> 0x50b84d8 
0050b7d90 	adrp	x8, #87535616 ; -> 0xa432000 
0050b7d94 	add	x2, sp, #288
0050b7d98 	mov	w1, w27
0050b7d9c 	ldr	x8, [x8, #2784]
0050b7da0 	ldr	x3, [x8]
0050b7da4 	bl	#49948012 ; -> 0x805a310 
0050b7da8 	tbz	w0, #0, #400 ; -> 0x50b7f38 
0050b7dac 	ldr	x0, [sp, #288]
0050b7db0 	cbz	x0, #1832 ; -> 0x50b84d8 
0050b7db4 	mov	x1, xzr
0050b7db8 	bl	#2415348 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b7dbc 	cmp	w0, #3
0050b7dc0 	b.lt	#376 ; -> 0x50b7f38 
0050b7dc4 	mov	x0, x20
0050b7dc8 	mov	x1, x22
0050b7dcc 	mov	x2, x23
0050b7dd0 	mov	w3, #30
0050b7dd4 	bl	#2728 ; -> 0x50b887c EnemyBase::BurnState_Cal
0050b7dd8 	b	#344 ; -> 0x50b7f30 
0050b7ddc 	sub	w8, w27, #37
0050b7de0 	cmn	w8, #3
0050b7de4 	b.hs	#164 ; -> 0x50b7e88 
0050b7de8 	sub	w8, w27, #12
0050b7dec 	cmp	w8, #2
0050b7df0 	b.hi	#328 ; -> 0x50b7f38 
0050b7df4 	adrp	x8, #87285760 ; -> 0xa3f5000 
0050b7df8 	ldr	x8, [x8, #3904]
0050b7dfc 	ldr	x8, [x8]
0050b7e00 	ldr	x8, [x8, #184]
0050b7e04 	ldr	x8, [x8]
0050b7e08 	cbz	x8, #1744 ; -> 0x50b84d8 
0050b7e0c 	ldr	x0, [x8, #1200]
0050b7e10 	cbz	x0, #1736 ; -> 0x50b84d8 
0050b7e14 	adrp	x8, #87535616 ; -> 0xa432000 
0050b7e18 	add	x2, sp, #280
0050b7e1c 	mov	w1, w27
0050b7e20 	ldr	x8, [x8, #2784]
0050b7e24 	ldr	x3, [x8]
0050b7e28 	bl	#49947880 ; -> 0x805a310 
0050b7e2c 	tbz	w0, #0, #296 ; -> 0x50b7f54 
0050b7e30 	ldr	x0, [sp, #280]
0050b7e34 	cbz	x0, #1700 ; -> 0x50b84d8 
0050b7e38 	mov	x1, xzr
0050b7e3c 	bl	#2415216 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b7e40 	cmp	w0, #2
0050b7e44 	b.lt	#244 ; -> 0x50b7f38 
0050b7e48 	mov	x0, x20
0050b7e4c 	mov	x1, x22
0050b7e50 	mov	x2, x23
0050b7e54 	mov	w3, #50
0050b7e58 	b	#240 ; -> 0x50b7f48 
0050b7e5c 	ldr	x0, [x29]
0050b7e60 	ldr	w8, [x0, #228]
0050b7e64 	cbnz	w8, #12 ; -> 0x50b7e70 
0050b7e68 	bl	#-11694728 ; -> 0x4590be0 
0050b7e6c 	ldr	x0, [x29]
0050b7e70 	ldr	x8, [x0, #184]
0050b7e74 	ldr	x0, [x8]
0050b7e78 	cbz	x0, #1632 ; -> 0x50b84d8 
0050b7e7c 	mov	x1, xzr
0050b7e80 	bl	#-1804144 ; -> 0x4eff710 PlayerBase::CheckRandomCameraShake
0050b7e84 	b	#180 ; -> 0x50b7f38 
0050b7e88 	adrp	x8, #87285760 ; -> 0xa3f5000 
0050b7e8c 	ldr	x8, [x8, #3904]
0050b7e90 	ldr	x8, [x8]
0050b7e94 	ldr	x8, [x8, #184]
0050b7e98 	ldr	x8, [x8]
0050b7e9c 	cbz	x8, #1596 ; -> 0x50b84d8 
0050b7ea0 	ldr	x0, [x8, #1200]
0050b7ea4 	cbz	x0, #1588 ; -> 0x50b84d8 
0050b7ea8 	adrp	x8, #87535616 ; -> 0xa432000 
0050b7eac 	add	x2, sp, #296
0050b7eb0 	mov	w1, w27
0050b7eb4 	ldr	x8, [x8, #2784]
0050b7eb8 	ldr	x3, [x8]
0050b7ebc 	bl	#49947732 ; -> 0x805a310 
0050b7ec0 	tbz	w0, #0, #120 ; -> 0x50b7f38 
0050b7ec4 	ldr	x0, [sp, #296]
0050b7ec8 	cbz	x0, #1552 ; -> 0x50b84d8 
0050b7ecc 	mov	x1, xzr
0050b7ed0 	bl	#2415068 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b7ed4 	cmp	w0, #2
0050b7ed8 	b.lt	#96 ; -> 0x50b7f38 
0050b7edc 	adrp	x29, #87531520 ; -> 0xa431000 
0050b7ee0 	mov	w8, #2
0050b7ee4 	add	x1, sp, #116
0050b7ee8 	ldr	x29, [x29, #112]
0050b7eec 	str	w8, [sp, #116]
0050b7ef0 	ldr	x0, [x29]
0050b7ef4 	bl	#-11694860 ; -> 0x4590be8 
0050b7ef8 	ldr	x8, [x29]
0050b7efc 	ldr	w10, [x20, #324]
0050b7f00 	mov	x1, x0
0050b7f04 	mov	x9, #-1
0050b7f08 	add	x0, sp, #192
0050b7f0c 	mov	x2, xzr
0050b7f10 	stp	x8, x9, [sp, #192]
0050b7f14 	str	w10, [sp, #208]
0050b7f18 	bl	#64977640 ; -> 0x8eafa00 System.Enum::Equals
0050b7f1c 	tbz	w0, #0, #28 ; -> 0x50b7f38 
0050b7f20 	mov	x0, x20
0050b7f24 	mov	x1, x22
0050b7f28 	mov	x2, x23
0050b7f2c 	bl	#2144 ; -> 0x50b878c EnemyBase::SkillMastery_Boss_MonsterAddDmg_Cal
0050b7f30 	mov	x22, x0
0050b7f34 	mov	x23, x1
0050b7f38 	mov	x0, x20
0050b7f3c 	mov	x1, x22
0050b7f40 	mov	x2, x23
0050b7f44 	mov	w3, wzr
0050b7f48 	bl	#2640 ; -> 0x50b8998 EnemyBase::IceState_Cal
0050b7f4c 	mov	x22, x0
0050b7f50 	mov	x23, x1
0050b7f54 	ldr	w29, [x20, #304]
0050b7f58 	mov	x0, x20
0050b7f5c 	mov	w1, w24
0050b7f60 	mov	x2, xzr
0050b7f64 	bl	#-653868 ; -> 0x5018538 Character::WinType
0050b7f68 	cmp	w29, w0
0050b7f6c 	b.ne	#428 ; -> 0x50b8118 
0050b7f70 	adrp	x29, #95535104 ; -> 0xabd3000 
0050b7f74 	ldrb	w8, [x29, #1983]
0050b7f78 	cbnz	w8, #24 ; -> 0x50b7f90 
0050b7f7c 	adrp	x0, #87420928 ; -> 0xa416000 
0050b7f80 	ldr	x0, [x0, #296]
0050b7f84 	bl	#-11695396 ; -> 0x4590a60 
0050b7f88 	mov	w8, #1
0050b7f8c 	strb	w8, [x29, #1983]
0050b7f90 	adrp	x8, #87420928 ; -> 0xa416000 
0050b7f94 	ldr	x8, [x8, #296]
0050b7f98 	ldr	x8, [x8]
0050b7f9c 	ldr	x8, [x8, #184]
0050b7fa0 	ldr	x8, [x8]
0050b7fa4 	cbz	x8, #1332 ; -> 0x50b84d8 
0050b7fa8 	ldr	x0, [x8, #32]
0050b7fac 	cbz	x0, #1324 ; -> 0x50b84d8 
0050b7fb0 	mov	x1, xzr
0050b7fb4 	bl	#2471340 ; -> 0x5313560 SkillGrindingDataManager::get_SkillGrindingOptionValue_Dic
0050b7fb8 	cbz	x0, #1312 ; -> 0x50b84d8 
0050b7fbc 	adrp	x8, #87539712 ; -> 0xa433000 
0050b7fc0 	add	x2, sp, #272
0050b7fc4 	mov	w1, w27
0050b7fc8 	ldr	x8, [x8, #1552]
0050b7fcc 	ldr	x3, [x8]
0050b7fd0 	bl	#49947456 ; -> 0x805a310 
0050b7fd4 	movi	d8, #0000000000000000
0050b7fd8 	tbz	w0, #0, #60 ; -> 0x50b8014 
0050b7fdc 	ldr	x0, [sp, #272]
0050b7fe0 	cbz	x0, #1272 ; -> 0x50b84d8 
0050b7fe4 	add	x8, sp, #192
0050b7fe8 	mov	x1, xzr
0050b7fec 	bl	#2468336 ; -> 0x53129dc SkillGrindingOptionValue::get_DmgType
0050b7ff0 	add	x0, sp, #40
0050b7ff4 	add	x1, sp, #192
0050b7ff8 	mov	w2, #72
0050b7ffc 	bl	#80427252 ; -> 0x9d6b8f0 
0050b8000 	add	x0, sp, #40
0050b8004 	mov	x1, xzr
0050b8008 	bl	#-5661408 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050b800c 	movi	d1, #0000000000000000
0050b8010 	fadd	s8, s0, s1
0050b8014 	cmp	w27, #18
0050b8018 	b.ne	#100 ; -> 0x50b807c 
0050b801c 	adrp	x8, #87281664 ; -> 0xa3f5000 
0050b8020 	ldr	x8, [x8, #3904]
0050b8024 	ldr	x8, [x8]
0050b8028 	ldr	x8, [x8, #184]
0050b802c 	ldr	x8, [x8]
0050b8030 	cbz	x8, #1192 ; -> 0x50b84d8 
0050b8034 	ldr	x0, [x8, #1200]
0050b8038 	cbz	x0, #1184 ; -> 0x50b84d8 
0050b803c 	adrp	x8, #87531520 ; -> 0xa432000 
0050b8040 	add	x2, sp, #264
0050b8044 	mov	w1, #18
0050b8048 	ldr	x8, [x8, #2784]
0050b804c 	ldr	x3, [x8]
0050b8050 	bl	#49947328 ; -> 0x805a310 
0050b8054 	tbz	w0, #0, #40 ; -> 0x50b807c 
0050b8058 	ldr	x0, [sp, #264]
0050b805c 	cbz	x0, #1148 ; -> 0x50b84d8 
0050b8060 	mov	x1, xzr
0050b8064 	bl	#2414664 ; -> 0x53058ac SkillData::get_MasteryLevel
0050b8068 	mov	w8, #1112014848
0050b806c 	cmp	w0, #2
0050b8070 	fmov	s0, w8
0050b8074 	fadd	s0, s8, s0
0050b8078 	fcsel	s8, s8, s0, lt
0050b807c 	fcmp	s8, #0.0
0050b8080 	b.le	#152 ; -> 0x50b8118 
0050b8084 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b8088 	ldr	x8, [x8, #3552]
0050b808c 	ldr	x0, [x8]
0050b8090 	ldr	w8, [x0, #228]
0050b8094 	cbnz	w8, #8 ; -> 0x50b809c 
0050b8098 	bl	#-11695288 ; -> 0x4590be0 
0050b809c 	mov	w8, #1120403456
0050b80a0 	mov	x1, xzr
0050b80a4 	fmov	s0, w8
0050b80a8 	mov	w8, #2139095040
0050b80ac 	fadd	s1, s8, s0
0050b80b0 	fmul	s0, s1, s0
0050b80b4 	fmov	s1, w8
0050b80b8 	mov	x8, #-9223372036854775808
0050b80bc 	fcvtzs	x9, s0
0050b80c0 	fcmp	s0, s1
0050b80c4 	csel	x0, x8, x9, eq
0050b80c8 	bl	#67913812 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
0050b80cc 	mov	x2, x0
0050b80d0 	mov	x3, x1
0050b80d4 	mov	x0, x22
0050b80d8 	mov	x1, x23
0050b80dc 	mov	x4, xzr
0050b80e0 	bl	#67905380 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b80e4 	mov	x22, x0
0050b80e8 	mov	x23, x1
0050b80ec 	mov	w0, #10000
0050b80f0 	mov	x1, xzr
0050b80f4 	bl	#67915440 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b80f8 	mov	x2, x0
0050b80fc 	mov	x3, x1
0050b8100 	mov	x0, x22
0050b8104 	mov	x1, x23
0050b8108 	mov	x4, xzr
0050b810c 	bl	#67905836 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b8110 	mov	x22, x0
0050b8114 	mov	x23, x1
0050b8118 	adrp	x8, #87269376 ; -> 0xa3f2000 
0050b811c 	ldr	x8, [x8, #3032]
0050b8120 	ldr	x9, [x19]
0050b8124 	ldr	x8, [x8]
0050b8128 	ldrb	w11, [x9, #304]
0050b812c 	ldrb	w10, [x8, #304]
0050b8130 	cmp	w11, w10
0050b8134 	b.lo	#48 ; -> 0x50b8164 
0050b8138 	ldr	x9, [x9, #200]
0050b813c 	add	x9, x9, x10, lsl #3
0050b8140 	ldur	x9, [x9, #-8]
0050b8144 	cmp	x9, x8
0050b8148 	b.ne	#28 ; -> 0x50b8164 
0050b814c 	mov	x0, x20
0050b8150 	mov	x1, x22
0050b8154 	mov	x2, x23
0050b8158 	bl	#900 ; -> 0x50b84dc EnemyBase::AbnormalState_Cal
0050b815c 	mov	x22, x0
0050b8160 	mov	x23, x1
0050b8164 	cmp	w28, #3
0050b8168 	b.ne	#12 ; -> 0x50b8174 
0050b816c 	strb	wzr, [x20, #488]
0050b8170 	b	#76 ; -> 0x50b81bc 
0050b8174 	ldr	x0, [x20, #344]
0050b8178 	cbz	x0, #864 ; -> 0x50b84d8 
0050b817c 	adrp	x8, #87453696 ; -> 0xa41f000 
0050b8180 	mov	x2, xzr
0050b8184 	ldr	x8, [x8, #1848]
0050b8188 	ldr	x1, [x8]
0050b818c 	bl	#76452124 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
0050b8190 	ldr	x8, [x20]
0050b8194 	mov	x0, x20
0050b8198 	ldr	x9, [x8, #584]
0050b819c 	ldr	x1, [x8, #592]
0050b81a0 	blr	x9
0050b81a4 	mov	x0, xzr
0050b81a8 	strb	wzr, [x20, #488]
0050b81ac 	bl	#-3798016 ; -> 0x4d18dac SoundManager::get_instance
0050b81b0 	cbz	x0, #808 ; -> 0x50b84d8 
0050b81b4 	mov	x1, xzr
0050b81b8 	bl	#-3790132 ; -> 0x4d1ac84 SoundManager::HitSound
0050b81bc 	tbnz	w26, #0, #292 ; -> 0x50b82e0 
0050b81c0 	adrp	x26, #87527424 ; -> 0xa431000 
0050b81c4 	mov	w8, #1
0050b81c8 	add	x1, sp, #116
0050b81cc 	ldr	x26, [x26, #112]
0050b81d0 	str	w8, [sp, #116]
0050b81d4 	ldr	x0, [x26]
0050b81d8 	bl	#-11695600 ; -> 0x4590be8 
0050b81dc 	ldr	x8, [x26]
0050b81e0 	ldr	w9, [x20, #324]
0050b81e4 	mov	x1, x0
0050b81e8 	mov	x27, #-1
0050b81ec 	add	x0, sp, #192
0050b81f0 	mov	x2, xzr
0050b81f4 	stp	x8, x27, [sp, #192]
0050b81f8 	str	w9, [sp, #208]
0050b81fc 	bl	#64976900 ; -> 0x8eafa00 System.Enum::Equals
0050b8200 	tbz	w0, #0, #36 ; -> 0x50b8224 
0050b8204 	and	w5, w25, #0x1
0050b8208 	mov	x0, x20
0050b820c 	mov	x1, x22
0050b8210 	mov	x2, x23
0050b8214 	mov	w3, w21
0050b8218 	mov	w4, w24
0050b821c 	bl	#2372 ; -> 0x50b8b60 EnemyBase::NormalMonsterDmg_Cal
0050b8220 	b	#184 ; -> 0x50b82d8 
0050b8224 	ldr	x0, [x26]
0050b8228 	mov	w8, #2
0050b822c 	add	x1, sp, #116
0050b8230 	str	w8, [sp, #116]
0050b8234 	bl	#-11695692 ; -> 0x4590be8 
0050b8238 	ldr	x8, [x26]
0050b823c 	ldr	w9, [x20, #324]
0050b8240 	mov	x1, x0
0050b8244 	add	x0, sp, #192
0050b8248 	mov	x2, xzr
0050b824c 	stp	x8, x27, [sp, #192]
0050b8250 	str	w9, [sp, #208]
0050b8254 	bl	#64976812 ; -> 0x8eafa00 System.Enum::Equals
0050b8258 	tbz	w0, #0, #36 ; -> 0x50b827c 
0050b825c 	and	w5, w25, #0x1
0050b8260 	mov	x0, x20
0050b8264 	mov	x1, x22
0050b8268 	mov	x2, x23
0050b826c 	mov	w3, w21
0050b8270 	mov	w4, w24
0050b8274 	bl	#2632 ; -> 0x50b8cbc EnemyBase::BossMonsterDmg_Cal
0050b8278 	b	#96 ; -> 0x50b82d8 
0050b827c 	ldr	x0, [x26]
0050b8280 	mov	w8, #3
0050b8284 	add	x1, sp, #116
0050b8288 	str	w8, [sp, #116]
0050b828c 	bl	#-11695780 ; -> 0x4590be8 
0050b8290 	ldr	x8, [x26]
0050b8294 	ldr	w10, [x20, #324]
0050b8298 	mov	x1, x0
0050b829c 	mov	x9, #-1
0050b82a0 	add	x0, sp, #192
0050b82a4 	mov	x2, xzr
0050b82a8 	stp	x8, x9, [sp, #192]
0050b82ac 	str	w10, [sp, #208]
0050b82b0 	bl	#64976720 ; -> 0x8eafa00 System.Enum::Equals
0050b82b4 	tbz	w0, #0, #44 ; -> 0x50b82e0 
0050b82b8 	and	w5, w25, #0x1
0050b82bc 	mov	x0, x20
0050b82c0 	mov	x1, x22
0050b82c4 	mov	x2, x23
0050b82c8 	mov	w3, w21
0050b82cc 	mov	w4, w24
0050b82d0 	mov	x6, x19
0050b82d4 	bl	#2976 ; -> 0x50b8e74 EnemyBase::SpecialBossDmg_Cal
0050b82d8 	mov	x22, x0
0050b82dc 	mov	x23, x1
0050b82e0 	cbz	x19, #56 ; -> 0x50b8318 
0050b82e4 	adrp	x8, #87269376 ; -> 0xa3f2000 
0050b82e8 	ldr	x8, [x8, #3056]
0050b82ec 	ldr	x9, [x19]
0050b82f0 	ldr	x8, [x8]
0050b82f4 	ldrb	w11, [x9, #304]
0050b82f8 	ldrb	w10, [x8, #304]
0050b82fc 	cmp	w11, w10
0050b8300 	b.lo	#24 ; -> 0x50b8318 
0050b8304 	ldr	x9, [x9, #200]
0050b8308 	add	x9, x9, x10, lsl #3
0050b830c 	ldur	x9, [x9, #-8]
0050b8310 	cmp	x9, x8
0050b8314 	b.eq	#44 ; -> 0x50b8340 
0050b8318 	ldr	x8, [x20]
0050b831c 	ldp	s0, s1, [x20, #152]
0050b8320 	ldr	s2, [x20, #160]
0050b8324 	mov	x0, x20
0050b8328 	mov	x1, x22
0050b832c 	ldr	x9, [x8, #680]
0050b8330 	ldr	x4, [x8, #688]
0050b8334 	mov	x2, x23
0050b8338 	mov	w3, w21
0050b833c 	blr	x9
0050b8340 	ldr	x8, [x20]
0050b8344 	cmp	w28, #3
0050b8348 	mov	w9, #1264
0050b834c 	mov	w10, #1248
0050b8350 	mov	w11, #1256
0050b8354 	mov	w12, #1240
0050b8358 	csel	x9, x10, x9, eq
0050b835c 	csel	x10, x12, x11, eq
0050b8360 	mov	x0, x20
0050b8364 	ldr	x10, [x8, x10]
0050b8368 	ldr	x3, [x8, x9]
0050b836c 	mov	x1, x22
0050b8370 	mov	x2, x23
0050b8374 	blr	x10
0050b8378 	adrp	x21, #87465984 ; -> 0xa422000 
0050b837c 	ldr	x21, [x21, #3032]
0050b8380 	ldr	x8, [x21]
0050b8384 	ldr	x8, [x8, #184]
0050b8388 	ldr	x0, [x8]
0050b838c 	cbz	x0, #332 ; -> 0x50b84d8 
0050b8390 	mov	x1, xzr
0050b8394 	bl	#1866860 ; -> 0x5280000 ReplayManager::get_NeedRecording
0050b8398 	tbz	w0, #0, #72 ; -> 0x50b83e0 
0050b839c 	ldr	x8, [x20]
0050b83a0 	mov	x0, x20
0050b83a4 	mov	x1, x19
0050b83a8 	mov	x2, x22
0050b83ac 	mov	x3, x23
0050b83b0 	ldr	x9, [x8, #1224]
0050b83b4 	ldr	x4, [x8, #1232]
0050b83b8 	blr	x9
0050b83bc 	ldr	x8, [x21]
0050b83c0 	ldr	x8, [x8, #184]
0050b83c4 	ldr	x0, [x8]
0050b83c8 	cbz	x0, #272 ; -> 0x50b84d8 
0050b83cc 	mov	x1, x19
0050b83d0 	mov	x2, x22
0050b83d4 	mov	x3, x23
0050b83d8 	mov	x4, xzr
0050b83dc 	bl	#1864824 ; -> 0x527f854 ReplayManager::AddFrameSkillDamage
0050b83e0 	ldrb	w8, [x20, #514]
0050b83e4 	cbz	w8, #56 ; -> 0x50b841c 
0050b83e8 	adrp	x20, #87269376 ; -> 0xa3f2000 
0050b83ec 	ldr	x20, [x20, #552]
0050b83f0 	ldr	x0, [x20]
0050b83f4 	ldr	w8, [x0, #228]
0050b83f8 	cbnz	w8, #12 ; -> 0x50b8404 
0050b83fc 	bl	#-11696156 ; -> 0x4590be0 
0050b8400 	ldr	x0, [x20]
0050b8404 	ldr	x8, [x0, #184]
0050b8408 	ldr	x0, [x8]
0050b840c 	cbz	x0, #204 ; -> 0x50b84d8 
0050b8410 	mov	x1, xzr
0050b8414 	bl	#-2581696 ; -> 0x4e41f54 GameManager::get_gameMode
0050b8418 	cbz	w0, #40 ; -> 0x50b8440 
0050b841c 	ldp	x20, x19, [sp, #416]
0050b8420 	ldp	x22, x21, [sp, #400]
0050b8424 	ldp	x24, x23, [sp, #384]
0050b8428 	ldp	x26, x25, [sp, #368]
0050b842c 	ldp	x28, x27, [sp, #352]
0050b8430 	ldp	x29, x30, [sp, #336]
0050b8434 	ldp	d9, d8, [sp, #320]
0050b8438 	add	sp, sp, #432
0050b843c 	ret
0050b8440 	ldr	x0, [x20]
0050b8444 	ldr	w8, [x0, #228]
0050b8448 	cbnz	w8, #12 ; -> 0x50b8454 
0050b844c 	bl	#-11696236 ; -> 0x4590be0 
0050b8450 	ldr	x0, [x20]
0050b8454 	ldr	x8, [x0, #184]
0050b8458 	ldr	x8, [x8]
0050b845c 	cbz	x8, #124 ; -> 0x50b84d8 
0050b8460 	ldrb	w8, [x8, #1516]
0050b8464 	cbz	w8, #-72 ; -> 0x50b841c 
0050b8468 	cbz	x19, #-76 ; -> 0x50b841c 
0050b846c 	adrp	x20, #87224320 ; -> 0xa3e7000 
0050b8470 	ldr	x20, [x20, #1248]
0050b8474 	ldr	x8, [x19]
0050b8478 	ldr	x1, [x20, #72]
0050b847c 	cmp	x8, x1
0050b8480 	b.ne	#-100 ; -> 0x50b841c 
0050b8484 	mov	x0, x19
0050b8488 	bl	#-16335172 ; -> 0x4124344 
0050b848c 	ldr	w21, [x0]
0050b8490 	mov	x0, xzr
0050b8494 	bl	#1875740 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
0050b8498 	cbz	x0, #64 ; -> 0x50b84d8 
0050b849c 	mov	x1, xzr
0050b84a0 	bl	#1876148 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
0050b84a4 	mov	x19, x0
0050b84a8 	ldr	x0, [x20, #72]
0050b84ac 	add	x1, sp, #192
0050b84b0 	str	w21, [sp, #192]
0050b84b4 	bl	#-11696332 ; -> 0x4590be8 
0050b84b8 	cbz	x19, #32 ; -> 0x50b84d8 
0050b84bc 	mov	x2, x0
0050b84c0 	mov	x0, x19
0050b84c4 	mov	w1, #43
0050b84c8 	mov	w3, #1
0050b84cc 	mov	x4, xzr
0050b84d0 	bl	#1907024 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
0050b84d4 	b	#-184 ; -> 0x50b841c 
0050b84d8 	bl	#-11696076 ; -> 0x4590d0c 
