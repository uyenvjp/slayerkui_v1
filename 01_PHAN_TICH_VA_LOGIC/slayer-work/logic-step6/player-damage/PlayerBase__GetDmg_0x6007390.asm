004ef68c4 	sub	sp, sp, #256
004ef68c8 	stp	d9, d8, [sp, #144]
004ef68cc 	str	x29, [sp, #160]
004ef68d0 	stp	x30, x27, [sp, #176]
004ef68d4 	stp	x26, x25, [sp, #192]
004ef68d8 	stp	x24, x23, [sp, #208]
004ef68dc 	stp	x22, x21, [sp, #224]
004ef68e0 	stp	x20, x19, [sp, #240]
004ef68e4 	fmov	s8, s0
004ef68e8 	adrp	x25, #97382400 ; -> 0xabd5000 
004ef68ec 	mov	w22, w5
004ef68f0 	ldrb	w8, [x25, #1485]
004ef68f4 	mov	x23, x4
004ef68f8 	mov	w24, w3
004ef68fc 	mov	x20, x2
004ef6900 	mov	x21, x1
004ef6904 	mov	x19, x0
004ef6908 	tbnz	w8, #0, #168 ; -> 0x4ef69b0 
004ef690c 	adrp	x0, #89075712 ; -> 0xa3e9000 
004ef6910 	ldr	x0, [x0, #3552]
004ef6914 	bl	#-9854644 ; -> 0x4590a60 
004ef6918 	adrp	x0, #89075712 ; -> 0xa3e9000 
004ef691c 	ldr	x0, [x0, #1384]
004ef6920 	bl	#-9854656 ; -> 0x4590a60 
004ef6924 	adrp	x0, #89337856 ; -> 0xa429000 
004ef6928 	ldr	x0, [x0, #248]
004ef692c 	bl	#-9854668 ; -> 0x4590a60 
004ef6930 	adrp	x0, #89112576 ; -> 0xa3f2000 
004ef6934 	ldr	x0, [x0, #552]
004ef6938 	bl	#-9854680 ; -> 0x4590a60 
004ef693c 	adrp	x0, #89100288 ; -> 0xa3ef000 
004ef6940 	ldr	x0, [x0, #3320]
004ef6944 	bl	#-9854692 ; -> 0x4590a60 
004ef6948 	adrp	x0, #89296896 ; -> 0xa41f000 
004ef694c 	ldr	x0, [x0, #1880]
004ef6950 	bl	#-9854704 ; -> 0x4590a60 
004ef6954 	adrp	x0, #89260032 ; -> 0xa416000 
004ef6958 	ldr	x0, [x0, #1664]
004ef695c 	bl	#-9854716 ; -> 0x4590a60 
004ef6960 	adrp	x0, #89124864 ; -> 0xa3f5000 
004ef6964 	ldr	x0, [x0, #3904]
004ef6968 	bl	#-9854728 ; -> 0x4590a60 
004ef696c 	adrp	x0, #89075712 ; -> 0xa3e9000 
004ef6970 	ldr	x0, [x0, #736]
004ef6974 	bl	#-9854740 ; -> 0x4590a60 
004ef6978 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef697c 	ldr	x0, [x0, #2600]
004ef6980 	bl	#-9854752 ; -> 0x4590a60 
004ef6984 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef6988 	ldr	x0, [x0, #2384]
004ef698c 	bl	#-9854764 ; -> 0x4590a60 
004ef6990 	adrp	x0, #89296896 ; -> 0xa41f000 
004ef6994 	ldr	x0, [x0, #1848]
004ef6998 	bl	#-9854776 ; -> 0x4590a60 
004ef699c 	adrp	x0, #89251840 ; -> 0xa414000 
004ef69a0 	ldr	x0, [x0, #3032]
004ef69a4 	bl	#-9854788 ; -> 0x4590a60 
004ef69a8 	mov	w8, #1
004ef69ac 	strb	w8, [x25, #1485]
004ef69b0 	mov	w0, #32898
004ef69b4 	mov	x1, xzr
004ef69b8 	bl	#-2814996 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef69bc 	tbz	w0, #0, #88 ; -> 0x4ef6a14 
004ef69c0 	mov	w0, #32898
004ef69c4 	mov	x1, xzr
004ef69c8 	bl	#-2814832 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef69cc 	cbz	x0, #3748 ; -> 0x4ef7870 
004ef69d0 	and	w6, w22, #0x1
004ef69d4 	mov	x1, x19
004ef69d8 	mov	x2, x21
004ef69dc 	mov	x3, x20
004ef69e0 	fmov	s0, s8
004ef69e4 	mov	w4, w24
004ef69e8 	mov	x5, x23
004ef69ec 	ldp	x20, x19, [sp, #240]
004ef69f0 	ldp	x22, x21, [sp, #224]
004ef69f4 	ldr	x29, [sp, #160]
004ef69f8 	ldp	x24, x23, [sp, #208]
004ef69fc 	mov	x7, xzr
004ef6a00 	ldp	x26, x25, [sp, #192]
004ef6a04 	ldp	x30, x27, [sp, #176]
004ef6a08 	ldp	d9, d8, [sp, #144]
004ef6a0c 	add	sp, sp, #256
004ef6a10 	b	#-3198940 ; -> 0x4be9a34 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2101
004ef6a14 	ldr	w8, [x19, #36]
004ef6a18 	cmp	w8, #3
004ef6a1c 	b.eq	#3632 ; -> 0x4ef784c 
004ef6a20 	ldrb	w8, [x19, #448]
004ef6a24 	cbz	w8, #3624 ; -> 0x4ef784c 
004ef6a28 	mov	x0, x19
004ef6a2c 	bl	#-67528 ; -> 0x4ee6264 PlayerBase::get_IsWaterReflectActive
004ef6a30 	tbz	w0, #0, #44 ; -> 0x4ef6a5c 
004ef6a34 	mov	x0, x19
004ef6a38 	ldp	x20, x19, [sp, #240]
004ef6a3c 	ldp	x22, x21, [sp, #224]
004ef6a40 	ldr	x29, [sp, #160]
004ef6a44 	ldp	x24, x23, [sp, #208]
004ef6a48 	ldp	x26, x25, [sp, #192]
004ef6a4c 	ldp	x30, x27, [sp, #176]
004ef6a50 	ldp	d9, d8, [sp, #144]
004ef6a54 	add	sp, sp, #256
004ef6a58 	b	#-1236 ; -> 0x4ef6584 PlayerBase::WaterReflect
004ef6a5c 	adrp	x26, #89112576 ; -> 0xa3f2000 
004ef6a60 	ldr	x26, [x26, #552]
004ef6a64 	ldr	x0, [x26]
004ef6a68 	ldr	w8, [x0, #228]
004ef6a6c 	cbnz	w8, #12 ; -> 0x4ef6a78 
004ef6a70 	bl	#-9854608 ; -> 0x4590be0 
004ef6a74 	ldr	x0, [x26]
004ef6a78 	ldr	x8, [x0, #184]
004ef6a7c 	ldr	x0, [x8]
004ef6a80 	cbz	x0, #3568 ; -> 0x4ef7870 
004ef6a84 	mov	x1, xzr
004ef6a88 	bl	#-740148 ; -> 0x4e41f54 GameManager::get_gameMode
004ef6a8c 	cmp	w0, #24
004ef6a90 	b.ne	#52 ; -> 0x4ef6ac4 
004ef6a94 	ldr	s0, [x19, #1832]
004ef6a98 	fcmp	s0, #0.0
004ef6a9c 	b.le	#40 ; -> 0x4ef6ac4 
004ef6aa0 	mov	w0, wzr
004ef6aa4 	mov	w1, #100
004ef6aa8 	mov	x2, xzr
004ef6aac 	bl	#78662484 ; -> 0x99fb600 UnityEngine.Random::Range
004ef6ab0 	scvtf	s0, w0
004ef6ab4 	ldr	s1, [x19, #1832]
004ef6ab8 	fcmp	s1, s0
004ef6abc 	cset	w24, gt
004ef6ac0 	b	#8 ; -> 0x4ef6ac8 
004ef6ac4 	mov	w24, wzr
004ef6ac8 	ldr	x8, [x19]
004ef6acc 	mov	x0, x19
004ef6ad0 	ldp	x9, x1, [x8, #472]
004ef6ad4 	blr	x9
004ef6ad8 	adrp	x25, #89075712 ; -> 0xa3e9000 
004ef6adc 	fmov	s9, s0
004ef6ae0 	ldr	x25, [x25, #736]
004ef6ae4 	ldr	x0, [x25]
004ef6ae8 	ldr	w8, [x0, #228]
004ef6aec 	cbnz	w8, #8 ; -> 0x4ef6af4 
004ef6af0 	bl	#-9854736 ; -> 0x4590be0 
004ef6af4 	fmov	s0, s8
004ef6af8 	fmov	s1, s9
004ef6afc 	mov	x0, xzr
004ef6b00 	bl	#-1915520 ; -> 0x4d23080 UsefulManager::Player_MissProbability
004ef6b04 	tbnz	w0, #0, #20 ; -> 0x4ef6b18 
004ef6b08 	ldrb	w8, [x19, #449]
004ef6b0c 	cmp	w8, #0
004ef6b10 	csinc	w8, w24, wzr, eq
004ef6b14 	tbz	w8, #0, #244 ; -> 0x4ef6c08 
004ef6b18 	ldr	x0, [x19, #168]
004ef6b1c 	cbz	x0, #3412 ; -> 0x4ef7870 
004ef6b20 	mov	x1, xzr
004ef6b24 	bl	#78759432 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef6b28 	adrp	x9, #89346048 ; -> 0xa42b000 
004ef6b2c 	adrp	x10, #89251840 ; -> 0xa414000 
004ef6b30 	ldr	x8, [x19]
004ef6b34 	ldr	x9, [x9, #2600]
004ef6b38 	ldr	x10, [x10, #3032]
004ef6b3c 	mov	x0, x19
004ef6b40 	ldr	x3, [x8, #704]
004ef6b44 	ldr	x1, [x9]
004ef6b48 	ldr	x2, [x10]
004ef6b4c 	ldr	x9, [x8, #696]
004ef6b50 	blr	x9
004ef6b54 	ldrb	w8, [x19, #449]
004ef6b58 	cbz	w8, #3316 ; -> 0x4ef784c 
004ef6b5c 	mov	x0, xzr
004ef6b60 	bl	#3717200 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004ef6b64 	cbz	x0, #3340 ; -> 0x4ef7870 
004ef6b68 	mov	x1, xzr
004ef6b6c 	bl	#3717608 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004ef6b70 	adrp	x8, #89067520 ; -> 0xa3e7000 
004ef6b74 	mov	x19, x0
004ef6b78 	mov	w9, #22
004ef6b7c 	ldr	x8, [x8, #1248]
004ef6b80 	add	x1, sp, #172
004ef6b84 	str	w9, [sp, #172]
004ef6b88 	ldr	x0, [x8, #72]
004ef6b8c 	bl	#-9854884 ; -> 0x4590be8 
004ef6b90 	cbz	x19, #3296 ; -> 0x4ef7870 
004ef6b94 	mov	x2, x0
004ef6b98 	mov	x0, x19
004ef6b9c 	mov	w1, #17
004ef6ba0 	mov	w3, #1
004ef6ba4 	mov	x4, xzr
004ef6ba8 	bl	#3748472 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004ef6bac 	ldr	x0, [x26]
004ef6bb0 	ldr	w8, [x0, #228]
004ef6bb4 	cbnz	w8, #12 ; -> 0x4ef6bc0 
004ef6bb8 	bl	#-9854936 ; -> 0x4590be0 
004ef6bbc 	ldr	x0, [x26]
004ef6bc0 	ldr	x8, [x0, #184]
004ef6bc4 	ldr	x0, [x8]
004ef6bc8 	cbz	x0, #3240 ; -> 0x4ef7870 
004ef6bcc 	mov	x1, xzr
004ef6bd0 	bl	#-740476 ; -> 0x4e41f54 GameManager::get_gameMode
004ef6bd4 	cmp	w0, #8
004ef6bd8 	b.ne	#3188 ; -> 0x4ef784c 
004ef6bdc 	adrp	x8, #89260032 ; -> 0xa416000 
004ef6be0 	ldr	x8, [x8, #1664]
004ef6be4 	ldr	x8, [x8]
004ef6be8 	ldr	x8, [x8, #184]
004ef6bec 	ldr	x0, [x8]
004ef6bf0 	cbz	x0, #3200 ; -> 0x4ef7870 
004ef6bf4 	mov	w1, #42
004ef6bf8 	mov	w2, #22
004ef6bfc 	mov	x3, xzr
004ef6c00 	bl	#3690740 ; -> 0x527bcf4 QuestManager::UpdateHighSlayerQuestType
004ef6c04 	b	#3144 ; -> 0x4ef784c 
004ef6c08 	cbz	x23, #68 ; -> 0x4ef6c4c 
004ef6c0c 	mov	x0, x19
004ef6c10 	bl	#-32232 ; -> 0x4eeee28 PlayerBase::get_Resistance
004ef6c14 	ldr	x0, [x25]
004ef6c18 	fmov	s9, s0
004ef6c1c 	ldr	w8, [x0, #228]
004ef6c20 	cbnz	w8, #8 ; -> 0x4ef6c28 
004ef6c24 	bl	#-9855044 ; -> 0x4590be0 
004ef6c28 	fmov	s0, s8
004ef6c2c 	fmov	s1, s9
004ef6c30 	mov	x0, xzr
004ef6c34 	bl	#-1915828 ; -> 0x4d23080 UsefulManager::Player_MissProbability
004ef6c38 	tbnz	w0, #0, #20 ; -> 0x4ef6c4c 
004ef6c3c 	ldr	x8, [x23, #24]
004ef6c40 	ldr	x0, [x23, #64]
004ef6c44 	ldr	x1, [x23, #40]
004ef6c48 	blr	x8
004ef6c4c 	ldr	x0, [x19, #336]
004ef6c50 	cbz	x0, #3104 ; -> 0x4ef7870 
004ef6c54 	adrp	x8, #89296896 ; -> 0xa41f000 
004ef6c58 	mov	x2, xzr
004ef6c5c 	ldr	x8, [x8, #1848]
004ef6c60 	ldr	x1, [x8]
004ef6c64 	bl	#78292548 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
004ef6c68 	ldr	x8, [x19]
004ef6c6c 	mov	x0, x19
004ef6c70 	ldr	x9, [x8, #584]
004ef6c74 	ldr	x1, [x8, #592]
004ef6c78 	blr	x9
004ef6c7c 	mov	x0, xzr
004ef6c80 	bl	#-1957588 ; -> 0x4d18dac SoundManager::get_instance
004ef6c84 	cbz	x0, #3052 ; -> 0x4ef7870 
004ef6c88 	ldr	x8, [x0]
004ef6c8c 	mov	x1, xzr
004ef6c90 	ldr	x9, [x8, #1864]
004ef6c94 	ldr	x2, [x8, #1872]
004ef6c98 	blr	x9
004ef6c9c 	ldr	x0, [x26]
004ef6ca0 	ldr	w8, [x0, #228]
004ef6ca4 	cbnz	w8, #12 ; -> 0x4ef6cb0 
004ef6ca8 	bl	#-9855176 ; -> 0x4590be0 
004ef6cac 	ldr	x0, [x26]
004ef6cb0 	ldr	x8, [x0, #184]
004ef6cb4 	ldr	x0, [x8]
004ef6cb8 	cbz	x0, #3000 ; -> 0x4ef7870 
004ef6cbc 	mov	x1, xzr
004ef6cc0 	bl	#-740716 ; -> 0x4e41f54 GameManager::get_gameMode
004ef6cc4 	cbnz	w0, #52 ; -> 0x4ef6cf8 
004ef6cc8 	ldr	x0, [x26]
004ef6ccc 	ldr	w8, [x0, #228]
004ef6cd0 	cbnz	w8, #12 ; -> 0x4ef6cdc 
004ef6cd4 	bl	#-9855220 ; -> 0x4590be0 
004ef6cd8 	ldr	x0, [x26]
004ef6cdc 	ldr	x8, [x0, #184]
004ef6ce0 	ldr	x8, [x8]
004ef6ce4 	cbz	x8, #2956 ; -> 0x4ef7870 
004ef6ce8 	ldrb	w8, [x8, #1516]
004ef6cec 	cbz	w8, #12 ; -> 0x4ef6cf8 
004ef6cf0 	mov	x0, x19
004ef6cf4 	bl	#2944 ; -> 0x4ef7874 PlayerBase::CheckHitRandomCameraShake
004ef6cf8 	tbnz	w22, #0, #600 ; -> 0x4ef6f50 
004ef6cfc 	ldr	x8, [x19]
004ef6d00 	mov	x0, x19
004ef6d04 	ldr	x9, [x8, #536]
004ef6d08 	ldr	x1, [x8, #544]
004ef6d0c 	blr	x9
004ef6d10 	adrp	x22, #89075712 ; -> 0xa3e9000 
004ef6d14 	fmov	s8, s0
004ef6d18 	ldr	x22, [x22, #3552]
004ef6d1c 	ldr	x0, [x22]
004ef6d20 	ldr	w8, [x0, #228]
004ef6d24 	cbnz	w8, #8 ; -> 0x4ef6d2c 
004ef6d28 	bl	#-9855304 ; -> 0x4590be0 
004ef6d2c 	mov	w8, #1120403456
004ef6d30 	mov	x1, xzr
004ef6d34 	fmov	s0, w8
004ef6d38 	mov	w8, #2139095040
004ef6d3c 	fsub	s1, s0, s8
004ef6d40 	fmul	s0, s1, s0
004ef6d44 	fmov	s1, w8
004ef6d48 	mov	w8, #-2147483648
004ef6d4c 	fcvtzs	w9, s0
004ef6d50 	fcmp	s0, s1
004ef6d54 	csel	w0, w8, w9, eq
004ef6d58 	bl	#69755468 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6d5c 	mov	x2, x0
004ef6d60 	mov	x3, x1
004ef6d64 	mov	x0, x21
004ef6d68 	mov	x1, x20
004ef6d6c 	mov	x4, xzr
004ef6d70 	bl	#69745364 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef6d74 	mov	x20, x0
004ef6d78 	mov	x21, x1
004ef6d7c 	mov	w0, #10000
004ef6d80 	mov	x1, xzr
004ef6d84 	bl	#69755424 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6d88 	mov	x2, x0
004ef6d8c 	mov	x3, x1
004ef6d90 	mov	x0, x20
004ef6d94 	mov	x1, x21
004ef6d98 	mov	x4, xzr
004ef6d9c 	bl	#69745820 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef6da0 	adrp	x23, #97374208 ; -> 0xabd3000 
004ef6da4 	mov	x20, x0
004ef6da8 	mov	x21, x1
004ef6dac 	ldrb	w8, [x23, #1983]
004ef6db0 	cbnz	w8, #24 ; -> 0x4ef6dc8 
004ef6db4 	adrp	x0, #89260032 ; -> 0xa416000 
004ef6db8 	ldr	x0, [x0, #296]
004ef6dbc 	bl	#-9855836 ; -> 0x4590a60 
004ef6dc0 	mov	w8, #1
004ef6dc4 	strb	w8, [x23, #1983]
004ef6dc8 	adrp	x8, #89260032 ; -> 0xa416000 
004ef6dcc 	ldr	x8, [x8, #296]
004ef6dd0 	ldr	x8, [x8]
004ef6dd4 	ldr	x8, [x8, #184]
004ef6dd8 	ldr	x8, [x8]
004ef6ddc 	cbz	x8, #2708 ; -> 0x4ef7870 
004ef6de0 	ldr	x0, [x8, #32]
004ef6de4 	cbz	x0, #2700 ; -> 0x4ef7870 
004ef6de8 	mov	x1, xzr
004ef6dec 	bl	#4311256 ; -> 0x53136c4 SkillGrindingDataManager::get_CurrentDmgReduce
004ef6df0 	ldr	x0, [x22]
004ef6df4 	fmov	s8, s0
004ef6df8 	ldr	w8, [x0, #228]
004ef6dfc 	cbnz	w8, #8 ; -> 0x4ef6e04 
004ef6e00 	bl	#-9855520 ; -> 0x4590be0 
004ef6e04 	mov	w8, #1120403456
004ef6e08 	mov	x1, xzr
004ef6e0c 	fmov	s0, w8
004ef6e10 	mov	w8, #2139095040
004ef6e14 	fsub	s1, s0, s8
004ef6e18 	fmul	s0, s1, s0
004ef6e1c 	fmov	s1, w8
004ef6e20 	mov	w8, #-2147483648
004ef6e24 	fcvtzs	w9, s0
004ef6e28 	fcmp	s0, s1
004ef6e2c 	csel	w0, w8, w9, eq
004ef6e30 	bl	#69755252 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6e34 	mov	x2, x0
004ef6e38 	mov	x3, x1
004ef6e3c 	mov	x0, x20
004ef6e40 	mov	x1, x21
004ef6e44 	mov	x4, xzr
004ef6e48 	bl	#69745148 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef6e4c 	mov	x20, x0
004ef6e50 	mov	x21, x1
004ef6e54 	mov	w0, #10000
004ef6e58 	mov	x1, xzr
004ef6e5c 	bl	#69755208 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6e60 	mov	x2, x0
004ef6e64 	mov	x3, x1
004ef6e68 	mov	x0, x20
004ef6e6c 	mov	x1, x21
004ef6e70 	mov	x4, xzr
004ef6e74 	bl	#69745604 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef6e78 	mov	x21, x0
004ef6e7c 	mov	x20, x1
004ef6e80 	add	x0, sp, #72
004ef6e84 	add	x1, x19, #904
004ef6e88 	mov	w2, #72
004ef6e8c 	bl	#82266724 ; -> 0x9d6b8f0 
004ef6e90 	add	x0, sp, #72
004ef6e94 	mov	x1, xzr
004ef6e98 	bl	#-3821936 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef6e9c 	fcmp	s0, #0.0
004ef6ea0 	b.le	#176 ; -> 0x4ef6f50 
004ef6ea4 	mov	x0, sp
004ef6ea8 	add	x1, x19, #904
004ef6eac 	mov	w2, #72
004ef6eb0 	bl	#82266688 ; -> 0x9d6b8f0 
004ef6eb4 	mov	x0, sp
004ef6eb8 	mov	x1, xzr
004ef6ebc 	bl	#-3821972 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef6ec0 	ldr	x0, [x22]
004ef6ec4 	fmov	s8, s0
004ef6ec8 	ldr	w8, [x0, #228]
004ef6ecc 	cbnz	w8, #8 ; -> 0x4ef6ed4 
004ef6ed0 	bl	#-9855728 ; -> 0x4590be0 
004ef6ed4 	mov	w8, #1120403456
004ef6ed8 	mov	x1, xzr
004ef6edc 	fmov	s0, w8
004ef6ee0 	mov	w8, #2139095040
004ef6ee4 	fsub	s1, s0, s8
004ef6ee8 	fmul	s0, s1, s0
004ef6eec 	fmov	s1, w8
004ef6ef0 	mov	w8, #-2147483648
004ef6ef4 	fcvtzs	w9, s0
004ef6ef8 	fcmp	s0, s1
004ef6efc 	csel	w0, w8, w9, eq
004ef6f00 	bl	#69755044 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6f04 	mov	x2, x0
004ef6f08 	mov	x3, x1
004ef6f0c 	mov	x0, x21
004ef6f10 	mov	x1, x20
004ef6f14 	mov	x4, xzr
004ef6f18 	bl	#69744940 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef6f1c 	mov	x20, x0
004ef6f20 	mov	x21, x1
004ef6f24 	mov	w0, #10000
004ef6f28 	mov	x1, xzr
004ef6f2c 	bl	#69755000 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef6f30 	mov	x2, x0
004ef6f34 	mov	x3, x1
004ef6f38 	mov	x0, x20
004ef6f3c 	mov	x1, x21
004ef6f40 	mov	x4, xzr
004ef6f44 	bl	#69745396 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef6f48 	mov	x21, x0
004ef6f4c 	mov	x20, x1
004ef6f50 	ldr	x0, [x26]
004ef6f54 	ldr	w8, [x0, #228]
004ef6f58 	cbnz	w8, #12 ; -> 0x4ef6f64 
004ef6f5c 	bl	#-9855868 ; -> 0x4590be0 
004ef6f60 	ldr	x0, [x26]
004ef6f64 	ldr	x8, [x0, #184]
004ef6f68 	ldr	x0, [x8]
004ef6f6c 	cbz	x0, #2308 ; -> 0x4ef7870 
004ef6f70 	mov	x1, xzr
004ef6f74 	bl	#-741408 ; -> 0x4e41f54 GameManager::get_gameMode
004ef6f78 	cmp	w0, #24
004ef6f7c 	b.ne	#176 ; -> 0x4ef702c 
004ef6f80 	ldr	s8, [x19, #1816]
004ef6f84 	fcmp	s8, #0.0
004ef6f88 	b.le	#164 ; -> 0x4ef702c 
004ef6f8c 	adrp	x8, #89075712 ; -> 0xa3e9000 
004ef6f90 	ldr	x8, [x8, #3552]
004ef6f94 	ldr	x0, [x8]
004ef6f98 	ldr	w8, [x0, #228]
004ef6f9c 	cbnz	w8, #8 ; -> 0x4ef6fa4 
004ef6fa0 	bl	#-9855936 ; -> 0x4590be0 
004ef6fa4 	mov	w8, #1120403456
004ef6fa8 	mov	w9, #2139095040
004ef6fac 	mov	w10, #100
004ef6fb0 	fmov	s0, w8
004ef6fb4 	fmov	s1, w9
004ef6fb8 	mov	x9, #-65436
004ef6fbc 	movk	x9, #32768, lsl #16
004ef6fc0 	mov	x1, xzr
004ef6fc4 	fmul	s0, s8, s0
004ef6fc8 	fcvtzs	w8, s0
004ef6fcc 	fcmp	s0, s1
004ef6fd0 	sub	w8, w10, w8
004ef6fd4 	sxtw	x8, w8
004ef6fd8 	csel	x0, x9, x8, eq
004ef6fdc 	bl	#69753152 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ef6fe0 	mov	x2, x0
004ef6fe4 	mov	x3, x1
004ef6fe8 	mov	x0, x21
004ef6fec 	mov	x1, x20
004ef6ff0 	mov	x4, xzr
004ef6ff4 	bl	#69744720 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef6ff8 	mov	x20, x0
004ef6ffc 	mov	x21, x1
004ef7000 	mov	w0, #100
004ef7004 	mov	x1, xzr
004ef7008 	bl	#69754780 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef700c 	mov	x2, x0
004ef7010 	mov	x3, x1
004ef7014 	mov	x0, x20
004ef7018 	mov	x1, x21
004ef701c 	mov	x4, xzr
004ef7020 	bl	#69745176 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef7024 	mov	x21, x0
004ef7028 	mov	x20, x1
004ef702c 	ldr	s8, [x19, #976]
004ef7030 	fcmp	s8, #0.0
004ef7034 	b.le	#152 ; -> 0x4ef70cc 
004ef7038 	adrp	x8, #89071616 ; -> 0xa3e9000 
004ef703c 	ldr	x8, [x8, #3552]
004ef7040 	ldr	x0, [x8]
004ef7044 	ldr	w8, [x0, #228]
004ef7048 	cbnz	w8, #8 ; -> 0x4ef7050 
004ef704c 	bl	#-9856108 ; -> 0x4590be0 
004ef7050 	mov	w8, #1120403456
004ef7054 	mov	x1, xzr
004ef7058 	fmov	s0, w8
004ef705c 	mov	w8, #2139095040
004ef7060 	fsub	s1, s0, s8
004ef7064 	fmul	s0, s1, s0
004ef7068 	fmov	s1, w8
004ef706c 	mov	w8, #-2147483648
004ef7070 	fcvtzs	w9, s0
004ef7074 	fcmp	s0, s1
004ef7078 	csel	w0, w8, w9, eq
004ef707c 	bl	#69754664 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef7080 	mov	x2, x0
004ef7084 	mov	x3, x1
004ef7088 	mov	x0, x21
004ef708c 	mov	x1, x20
004ef7090 	mov	x4, xzr
004ef7094 	bl	#69744560 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef7098 	mov	x20, x0
004ef709c 	mov	x21, x1
004ef70a0 	mov	w0, #10000
004ef70a4 	mov	x1, xzr
004ef70a8 	bl	#69754620 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef70ac 	mov	x2, x0
004ef70b0 	mov	x3, x1
004ef70b4 	mov	x0, x20
004ef70b8 	mov	x1, x21
004ef70bc 	mov	x4, xzr
004ef70c0 	bl	#69745016 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef70c4 	mov	x21, x0
004ef70c8 	mov	x20, x1
004ef70cc 	ldr	s8, [x19, #988]
004ef70d0 	fcmp	s8, #0.0
004ef70d4 	b.le	#152 ; -> 0x4ef716c 
004ef70d8 	adrp	x8, #89071616 ; -> 0xa3e9000 
004ef70dc 	ldr	x8, [x8, #3552]
004ef70e0 	ldr	x0, [x8]
004ef70e4 	ldr	w8, [x0, #228]
004ef70e8 	cbnz	w8, #8 ; -> 0x4ef70f0 
004ef70ec 	bl	#-9856268 ; -> 0x4590be0 
004ef70f0 	mov	w8, #1120403456
004ef70f4 	mov	x1, xzr
004ef70f8 	fmov	s0, w8
004ef70fc 	mov	w8, #2139095040
004ef7100 	fsub	s1, s0, s8
004ef7104 	fmul	s0, s1, s0
004ef7108 	fmov	s1, w8
004ef710c 	mov	w8, #-2147483648
004ef7110 	fcvtzs	w9, s0
004ef7114 	fcmp	s0, s1
004ef7118 	csel	w0, w8, w9, eq
004ef711c 	bl	#69754504 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef7120 	mov	x2, x0
004ef7124 	mov	x3, x1
004ef7128 	mov	x0, x21
004ef712c 	mov	x1, x20
004ef7130 	mov	x4, xzr
004ef7134 	bl	#69744400 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef7138 	mov	x20, x0
004ef713c 	mov	x21, x1
004ef7140 	mov	w0, #10000
004ef7144 	mov	x1, xzr
004ef7148 	bl	#69754460 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef714c 	mov	x2, x0
004ef7150 	mov	x3, x1
004ef7154 	mov	x0, x20
004ef7158 	mov	x1, x21
004ef715c 	mov	x4, xzr
004ef7160 	bl	#69744856 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef7164 	mov	x21, x0
004ef7168 	mov	x20, x1
004ef716c 	ldr	x0, [x26]
004ef7170 	ldr	w8, [x0, #228]
004ef7174 	cbnz	w8, #12 ; -> 0x4ef7180 
004ef7178 	bl	#-9856408 ; -> 0x4590be0 
004ef717c 	ldr	x0, [x26]
004ef7180 	ldr	x8, [x0, #184]
004ef7184 	ldr	x0, [x8]
004ef7188 	cbz	x0, #1768 ; -> 0x4ef7870 
004ef718c 	mov	x1, xzr
004ef7190 	bl	#-741948 ; -> 0x4e41f54 GameManager::get_gameMode
004ef7194 	cmp	w0, #24
004ef7198 	b.ne	#196 ; -> 0x4ef725c 
004ef719c 	adrp	x8, #89096192 ; -> 0xa3ef000 
004ef71a0 	ldr	x8, [x8, #3320]
004ef71a4 	ldr	x0, [x8]
004ef71a8 	bl	#-14506548 ; -> 0x4121774 
004ef71ac 	cbz	x0, #1732 ; -> 0x4ef7870 
004ef71b0 	ldr	x8, [x0, #48]
004ef71b4 	cbz	x8, #1724 ; -> 0x4ef7870 
004ef71b8 	ldr	x8, [x8, #104]
004ef71bc 	cbz	x8, #160 ; -> 0x4ef725c 
004ef71c0 	ldr	s8, [x8, #56]
004ef71c4 	fcmp	s8, #0.0
004ef71c8 	b.le	#148 ; -> 0x4ef725c 
004ef71cc 	adrp	x8, #89071616 ; -> 0xa3e9000 
004ef71d0 	ldr	x8, [x8, #3552]
004ef71d4 	ldr	x0, [x8]
004ef71d8 	ldr	w8, [x0, #228]
004ef71dc 	cbnz	w8, #8 ; -> 0x4ef71e4 
004ef71e0 	bl	#-9856512 ; -> 0x4590be0 
004ef71e4 	fcvtzs	w8, s8
004ef71e8 	mov	w9, #2139095040
004ef71ec 	mov	x1, xzr
004ef71f0 	fmov	s0, w9
004ef71f4 	mov	x9, #-65436
004ef71f8 	movk	x9, #32768, lsl #16
004ef71fc 	add	w8, w8, #100
004ef7200 	fcmp	s8, s0
004ef7204 	sxtw	x8, w8
004ef7208 	csel	x0, x9, x8, eq
004ef720c 	bl	#69752592 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ef7210 	mov	x2, x0
004ef7214 	mov	x3, x1
004ef7218 	mov	x0, x21
004ef721c 	mov	x1, x20
004ef7220 	mov	x4, xzr
004ef7224 	bl	#69744160 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef7228 	mov	x20, x0
004ef722c 	mov	x21, x1
004ef7230 	mov	w0, #100
004ef7234 	mov	x1, xzr
004ef7238 	bl	#69754220 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef723c 	mov	x2, x0
004ef7240 	mov	x3, x1
004ef7244 	mov	x0, x20
004ef7248 	mov	x1, x21
004ef724c 	mov	x4, xzr
004ef7250 	bl	#69744616 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef7254 	mov	x21, x0
004ef7258 	mov	x20, x1
004ef725c 	ldr	s8, [x19, #980]
004ef7260 	fcmp	s8, #0.0
004ef7264 	b.le	#148 ; -> 0x4ef72f8 
004ef7268 	adrp	x8, #89071616 ; -> 0xa3e9000 
004ef726c 	ldr	x8, [x8, #3552]
004ef7270 	ldr	x0, [x8]
004ef7274 	ldr	w8, [x0, #228]
004ef7278 	cbnz	w8, #8 ; -> 0x4ef7280 
004ef727c 	bl	#-9856668 ; -> 0x4590be0 
004ef7280 	fcvtzs	w8, s8
004ef7284 	mov	w9, #2139095040
004ef7288 	mov	x1, xzr
004ef728c 	fmov	s0, w9
004ef7290 	mov	x9, #-65436
004ef7294 	movk	x9, #32768, lsl #16
004ef7298 	add	w8, w8, #100
004ef729c 	fcmp	s8, s0
004ef72a0 	sxtw	x8, w8
004ef72a4 	csel	x0, x9, x8, eq
004ef72a8 	bl	#69752436 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ef72ac 	mov	x2, x0
004ef72b0 	mov	x3, x1
004ef72b4 	mov	x0, x21
004ef72b8 	mov	x1, x20
004ef72bc 	mov	x4, xzr
004ef72c0 	bl	#69744004 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef72c4 	mov	x20, x0
004ef72c8 	mov	x21, x1
004ef72cc 	mov	w0, #100
004ef72d0 	mov	x1, xzr
004ef72d4 	bl	#69754064 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef72d8 	mov	x2, x0
004ef72dc 	mov	x3, x1
004ef72e0 	mov	x0, x20
004ef72e4 	mov	x1, x21
004ef72e8 	mov	x4, xzr
004ef72ec 	bl	#69744460 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef72f0 	mov	x21, x0
004ef72f4 	mov	x20, x1
004ef72f8 	mov	x0, x19
004ef72fc 	bl	#-21392 ; -> 0x4ef1f6c PlayerBase::get_Shield_Cur
004ef7300 	adrp	x27, #89071616 ; -> 0xa3e9000 
004ef7304 	mov	x22, x0
004ef7308 	mov	x23, x1
004ef730c 	ldr	x27, [x27, #3552]
004ef7310 	ldr	x0, [x27]
004ef7314 	ldr	w8, [x0, #228]
004ef7318 	cbnz	w8, #8 ; -> 0x4ef7320 
004ef731c 	bl	#-9856828 ; -> 0x4590be0 
004ef7320 	mov	x0, x22
004ef7324 	mov	x1, x23
004ef7328 	mov	x2, xzr
004ef732c 	mov	x3, xzr
004ef7330 	bl	#69760628 ; -> 0x917e9a4 System.Numerics.BigInteger::op_GreaterThan
004ef7334 	tbz	w0, #0, #272 ; -> 0x4ef7444 
004ef7338 	mov	x0, x19
004ef733c 	bl	#-21456 ; -> 0x4ef1f6c PlayerBase::get_Shield_Cur
004ef7340 	mov	x22, x0
004ef7344 	ldr	x0, [x27]
004ef7348 	mov	x23, x1
004ef734c 	ldr	w8, [x0, #228]
004ef7350 	cbnz	w8, #8 ; -> 0x4ef7358 
004ef7354 	bl	#-9856884 ; -> 0x4590be0 
004ef7358 	mov	x0, x22
004ef735c 	mov	x1, x23
004ef7360 	mov	x2, x21
004ef7364 	mov	x3, x20
004ef7368 	mov	x4, xzr
004ef736c 	bl	#69759712 ; -> 0x917e64c System.Numerics.BigInteger::op_LessThanOrEqual
004ef7370 	tbz	w0, #0, #304 ; -> 0x4ef74a0 
004ef7374 	mov	x0, x19
004ef7378 	mov	x1, xzr
004ef737c 	bl	#1176260 ; -> 0x5016640 Character::get_Hp_cur
004ef7380 	mov	x22, x0
004ef7384 	mov	x0, x19
004ef7388 	mov	x23, x1
004ef738c 	bl	#-21536 ; -> 0x4ef1f6c PlayerBase::get_Shield_Cur
004ef7390 	mov	x24, x0
004ef7394 	ldr	x0, [x27]
004ef7398 	mov	x25, x1
004ef739c 	ldr	w8, [x0, #228]
004ef73a0 	cbnz	w8, #8 ; -> 0x4ef73a8 
004ef73a4 	bl	#-9856964 ; -> 0x4590be0 
004ef73a8 	mov	x0, x21
004ef73ac 	mov	x1, x20
004ef73b0 	mov	x2, x24
004ef73b4 	mov	x3, x25
004ef73b8 	mov	x4, xzr
004ef73bc 	bl	#69752652 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef73c0 	mov	x2, x0
004ef73c4 	mov	x3, x1
004ef73c8 	mov	x0, x22
004ef73cc 	mov	x1, x23
004ef73d0 	mov	x4, xzr
004ef73d4 	bl	#69752628 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef73d8 	mov	x2, x0
004ef73dc 	mov	x3, x1
004ef73e0 	mov	x0, x19
004ef73e4 	mov	x1, x2
004ef73e8 	mov	x2, x3
004ef73ec 	mov	x3, xzr
004ef73f0 	bl	#1176220 ; -> 0x501668c Character::set_Hp_cur
004ef73f4 	mov	w0, wzr
004ef73f8 	mov	x1, xzr
004ef73fc 	bl	#69753768 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef7400 	mov	x2, x0
004ef7404 	mov	x3, x1
004ef7408 	mov	x0, x19
004ef740c 	mov	x1, x2
004ef7410 	mov	x2, x3
004ef7414 	bl	#-21596 ; -> 0x4ef1fb8 PlayerBase::set_Shield_Cur
004ef7418 	mov	x0, x19
004ef741c 	bl	#-21336 ; -> 0x4ef20c4 PlayerBase::SetHpBar_Effect_FillAmount
004ef7420 	adrp	x8, #89120768 ; -> 0xa3f5000 
004ef7424 	ldr	x8, [x8, #3904]
004ef7428 	ldr	x8, [x8]
004ef742c 	ldr	x8, [x8, #184]
004ef7430 	ldr	x0, [x8]
004ef7434 	cbz	x0, #1084 ; -> 0x4ef7870 
004ef7438 	mov	x1, xzr
004ef743c 	bl	#1694152 ; -> 0x5094e04 SkillManager::SkillShieldOff
004ef7440 	b	#176 ; -> 0x4ef74f0 
004ef7444 	mov	x0, x19
004ef7448 	mov	x1, xzr
004ef744c 	bl	#1176052 ; -> 0x5016640 Character::get_Hp_cur
004ef7450 	mov	x22, x0
004ef7454 	ldr	x0, [x27]
004ef7458 	mov	x23, x1
004ef745c 	ldr	w8, [x0, #228]
004ef7460 	cbnz	w8, #8 ; -> 0x4ef7468 
004ef7464 	bl	#-9857156 ; -> 0x4590be0 
004ef7468 	mov	x0, x22
004ef746c 	mov	x1, x23
004ef7470 	mov	x2, x21
004ef7474 	mov	x3, x20
004ef7478 	mov	x4, xzr
004ef747c 	bl	#69752460 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef7480 	mov	x2, x0
004ef7484 	mov	x3, x1
004ef7488 	mov	x0, x19
004ef748c 	mov	x1, x2
004ef7490 	mov	x2, x3
004ef7494 	mov	x3, xzr
004ef7498 	bl	#1176052 ; -> 0x501668c Character::set_Hp_cur
004ef749c 	b	#84 ; -> 0x4ef74f0 
004ef74a0 	mov	x0, x19
004ef74a4 	bl	#-21816 ; -> 0x4ef1f6c PlayerBase::get_Shield_Cur
004ef74a8 	mov	x22, x0
004ef74ac 	ldr	x0, [x27]
004ef74b0 	mov	x23, x1
004ef74b4 	ldr	w8, [x0, #228]
004ef74b8 	cbnz	w8, #8 ; -> 0x4ef74c0 
004ef74bc 	bl	#-9857244 ; -> 0x4590be0 
004ef74c0 	mov	x0, x22
004ef74c4 	mov	x1, x23
004ef74c8 	mov	x2, x21
004ef74cc 	mov	x3, x20
004ef74d0 	mov	x4, xzr
004ef74d4 	bl	#69752372 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef74d8 	mov	x2, x0
004ef74dc 	mov	x3, x1
004ef74e0 	mov	x0, x19
004ef74e4 	mov	x1, x2
004ef74e8 	mov	x2, x3
004ef74ec 	bl	#-21812 ; -> 0x4ef1fb8 PlayerBase::set_Shield_Cur
004ef74f0 	ldr	x8, [x19, #1840]
004ef74f4 	cbz	x8, #892 ; -> 0x4ef7870 
004ef74f8 	ldr	x9, [x8, #24]
004ef74fc 	ldr	x0, [x8, #64]
004ef7500 	ldr	x1, [x8, #40]
004ef7504 	blr	x9
004ef7508 	ldr	x8, [x19]
004ef750c 	mov	x0, x19
004ef7510 	ldr	x9, [x8, #648]
004ef7514 	ldr	x1, [x8, #656]
004ef7518 	blr	x9
004ef751c 	ldr	x0, [x19, #168]
004ef7520 	cbz	x0, #848 ; -> 0x4ef7870 
004ef7524 	mov	x1, xzr
004ef7528 	bl	#78756868 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef752c 	ldr	x8, [x19]
004ef7530 	mov	x0, x19
004ef7534 	mov	x1, x21
004ef7538 	mov	x2, x20
004ef753c 	mov	w3, #1
004ef7540 	ldr	x9, [x8, #680]
004ef7544 	ldr	x4, [x8, #688]
004ef7548 	blr	x9
004ef754c 	ldrb	w8, [x19, #1812]
004ef7550 	cbz	w8, #308 ; -> 0x4ef7684 
004ef7554 	ldrb	w8, [x19, #1836]
004ef7558 	cbnz	w8, #300 ; -> 0x4ef7684 
004ef755c 	ldr	x0, [x26]
004ef7560 	ldr	w8, [x0, #228]
004ef7564 	cbnz	w8, #12 ; -> 0x4ef7570 
004ef7568 	bl	#-9857416 ; -> 0x4590be0 
004ef756c 	ldr	x0, [x26]
004ef7570 	ldr	x8, [x0, #184]
004ef7574 	ldr	x0, [x8]
004ef7578 	cbz	x0, #760 ; -> 0x4ef7870 
004ef757c 	mov	x1, xzr
004ef7580 	bl	#-742956 ; -> 0x4e41f54 GameManager::get_gameMode
004ef7584 	cmp	w0, #24
004ef7588 	b.ne	#252 ; -> 0x4ef7684 
004ef758c 	mov	x0, x19
004ef7590 	mov	x1, xzr
004ef7594 	bl	#1175724 ; -> 0x5016640 Character::get_Hp_cur
004ef7598 	mov	x20, x0
004ef759c 	ldr	x0, [x27]
004ef75a0 	mov	x21, x1
004ef75a4 	ldr	w8, [x0, #228]
004ef75a8 	cbnz	w8, #8 ; -> 0x4ef75b0 
004ef75ac 	bl	#-9857484 ; -> 0x4590be0 
004ef75b0 	mov	x0, x20
004ef75b4 	mov	x1, x21
004ef75b8 	mov	x2, xzr
004ef75bc 	mov	x3, xzr
004ef75c0 	bl	#69759972 ; -> 0x917e9a4 System.Numerics.BigInteger::op_GreaterThan
004ef75c4 	tbz	w0, #0, #192 ; -> 0x4ef7684 
004ef75c8 	mov	x0, x19
004ef75cc 	mov	x1, xzr
004ef75d0 	bl	#1175664 ; -> 0x5016640 Character::get_Hp_cur
004ef75d4 	mov	x20, x0
004ef75d8 	ldr	x0, [x27]
004ef75dc 	mov	x21, x1
004ef75e0 	ldr	w8, [x0, #228]
004ef75e4 	cbnz	w8, #8 ; -> 0x4ef75ec 
004ef75e8 	bl	#-9857544 ; -> 0x4590be0 
004ef75ec 	mov	x0, x20
004ef75f0 	mov	x1, x21
004ef75f4 	mov	x2, xzr
004ef75f8 	bl	#69754736 ; -> 0x917d568 System.Numerics.BigInteger::op_Explicit
004ef75fc 	mov	x0, x19
004ef7600 	mov	x1, xzr
004ef7604 	fmov	s8, s0
004ef7608 	bl	#1175420 ; -> 0x5016584 Character::get_Hp_max
004ef760c 	mov	x2, xzr
004ef7610 	bl	#69754712 ; -> 0x917d568 System.Numerics.BigInteger::op_Explicit
004ef7614 	fdiv	s0, s8, s0
004ef7618 	adrp	x8, #-50126848 ; -> 0x1f29000 
004ef761c 	ldr	s1, [x8, #1596]
004ef7620 	fcmp	s0, s1
004ef7624 	b.pl	#96 ; -> 0x4ef7684 
004ef7628 	adrp	x20, #89071616 ; -> 0xa3e9000 
004ef762c 	mov	w9, #1
004ef7630 	ldr	x20, [x20, #1384]
004ef7634 	strb	w9, [x19, #1836]
004ef7638 	ldr	x0, [x20]
004ef763c 	ldr	w8, [x0, #228]
004ef7640 	cbnz	w8, #12 ; -> 0x4ef764c 
004ef7644 	bl	#-9857636 ; -> 0x4590be0 
004ef7648 	ldr	x0, [x20]
004ef764c 	ldr	x8, [x0, #184]
004ef7650 	ldr	x0, [x8, #136]
004ef7654 	cbz	x0, #540 ; -> 0x4ef7870 
004ef7658 	adrp	x8, #89341952 ; -> 0xa42b000 
004ef765c 	adrp	x9, #89333760 ; -> 0xa429000 
004ef7660 	ldr	x8, [x8, #2384]
004ef7664 	ldr	x9, [x9, #248]
004ef7668 	ldr	x1, [x8]
004ef766c 	mov	w8, #1133903872
004ef7670 	ldr	x2, [x9]
004ef7674 	fmov	s0, w8
004ef7678 	bl	#53504784 ; -> 0x81fe188 
004ef767c 	mov	x0, x19
004ef7680 	bl	#-52596 ; -> 0x4eea90c PlayerBase::AttackSpeedSetting
004ef7684 	mov	x0, x19
004ef7688 	mov	x1, xzr
004ef768c 	bl	#1175476 ; -> 0x5016640 Character::get_Hp_cur
004ef7690 	mov	x20, x0
004ef7694 	ldr	x0, [x27]
004ef7698 	mov	x21, x1
004ef769c 	ldr	w8, [x0, #228]
004ef76a0 	cbnz	w8, #8 ; -> 0x4ef76a8 
004ef76a4 	bl	#-9857732 ; -> 0x4590be0 
004ef76a8 	mov	x0, x20
004ef76ac 	mov	x1, x21
004ef76b0 	mov	x2, xzr
004ef76b4 	mov	x3, xzr
004ef76b8 	bl	#69759612 ; -> 0x917e934 System.Numerics.BigInteger::op_LessThanOrEqual
004ef76bc 	tbz	w0, #0, #400 ; -> 0x4ef784c 
004ef76c0 	ldr	x0, [x26]
004ef76c4 	ldr	w8, [x0, #228]
004ef76c8 	cbnz	w8, #12 ; -> 0x4ef76d4 
004ef76cc 	bl	#-9857772 ; -> 0x4590be0 
004ef76d0 	ldr	x0, [x26]
004ef76d4 	ldr	x8, [x0, #184]
004ef76d8 	ldr	x0, [x8]
004ef76dc 	cbz	x0, #404 ; -> 0x4ef7870 
004ef76e0 	mov	x1, xzr
004ef76e4 	bl	#-743312 ; -> 0x4e41f54 GameManager::get_gameMode
004ef76e8 	cmp	w0, #24
004ef76ec 	b.ne	#320 ; -> 0x4ef782c 
004ef76f0 	ldrb	w8, [x19, #1820]
004ef76f4 	cbz	w8, #312 ; -> 0x4ef782c 
004ef76f8 	mov	x0, x19
004ef76fc 	mov	x1, xzr
004ef7700 	strb	wzr, [x19, #1820]
004ef7704 	bl	#1175168 ; -> 0x5016584 Character::get_Hp_max
004ef7708 	mov	x20, x0
004ef770c 	ldr	x0, [x27]
004ef7710 	mov	x21, x1
004ef7714 	ldr	w8, [x0, #228]
004ef7718 	cbnz	w8, #8 ; -> 0x4ef7720 
004ef771c 	bl	#-9857852 ; -> 0x4590be0 
004ef7720 	mov	w0, #2
004ef7724 	mov	x1, xzr
004ef7728 	bl	#69752956 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef772c 	mov	x2, x0
004ef7730 	mov	x3, x1
004ef7734 	mov	x0, x20
004ef7738 	mov	x1, x21
004ef773c 	mov	x4, xzr
004ef7740 	bl	#69743352 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef7744 	mov	x2, x0
004ef7748 	mov	x3, x1
004ef774c 	mov	x0, x19
004ef7750 	mov	x1, x2
004ef7754 	mov	x2, x3
004ef7758 	mov	x3, xzr
004ef775c 	bl	#1175344 ; -> 0x501668c Character::set_Hp_cur
004ef7760 	ldr	x8, [x19, #1840]
004ef7764 	cbz	x8, #268 ; -> 0x4ef7870 
004ef7768 	ldr	x9, [x8, #24]
004ef776c 	ldr	x0, [x8, #64]
004ef7770 	ldr	x1, [x8, #40]
004ef7774 	blr	x9
004ef7778 	ldr	x8, [x19]
004ef777c 	mov	x0, x19
004ef7780 	ldr	x9, [x8, #648]
004ef7784 	ldr	x1, [x8, #656]
004ef7788 	blr	x9
004ef778c 	adrp	x20, #89292800 ; -> 0xa41f000 
004ef7790 	ldr	x20, [x20, #1880]
004ef7794 	ldr	x8, [x20]
004ef7798 	ldr	x8, [x8, #184]
004ef779c 	ldr	x0, [x8]
004ef77a0 	cbz	x0, #208 ; -> 0x4ef7870 
004ef77a4 	mov	x1, xzr
004ef77a8 	bl	#-186980 ; -> 0x4ec9d44 ObjectPooler_Effect::SpawnReviveEffect
004ef77ac 	ldr	x8, [x20]
004ef77b0 	ldr	x8, [x8, #184]
004ef77b4 	ldr	x8, [x8]
004ef77b8 	cbz	x8, #184 ; -> 0x4ef7870 
004ef77bc 	mov	x20, x0
004ef77c0 	cbz	x0, #176 ; -> 0x4ef7870 
004ef77c4 	ldr	x1, [x8, #40]
004ef77c8 	mov	x0, x20
004ef77cc 	mov	x2, xzr
004ef77d0 	bl	#78759068 ; -> 0x9a13c6c UnityEngine.Transform::SetParent
004ef77d4 	mov	x0, x19
004ef77d8 	mov	x1, xzr
004ef77dc 	bl	#78679556 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004ef77e0 	cbz	x0, #144 ; -> 0x4ef7870 
004ef77e4 	mov	x1, xzr
004ef77e8 	bl	#78756164 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef77ec 	mov	x0, x20
004ef77f0 	mov	x1, xzr
004ef77f4 	bl	#78756372 ; -> 0x9a13208 UnityEngine.Transform::set_position
004ef77f8 	mov	x0, xzr
004ef77fc 	bl	#40440 ; -> 0x4f015f4 
004ef7800 	mov	x0, x20
004ef7804 	mov	x1, xzr
004ef7808 	bl	#78758468 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004ef780c 	mov	x0, x20
004ef7810 	mov	x1, xzr
004ef7814 	bl	#78679708 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ef7818 	cbz	x0, #88 ; -> 0x4ef7870 
004ef781c 	mov	w1, #1
004ef7820 	mov	x2, xzr
004ef7824 	bl	#78693296 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ef7828 	b	#36 ; -> 0x4ef784c 
004ef782c 	ldrb	w8, [x19, #2360]
004ef7830 	cbz	w8, #20 ; -> 0x4ef7844 
004ef7834 	mov	x0, x19
004ef7838 	mov	w1, #1
004ef783c 	bl	#320 ; -> 0x4ef797c PlayerBase::FakeDeath
004ef7840 	b	#12 ; -> 0x4ef784c 
004ef7844 	mov	x0, x19
004ef7848 	bl	#744 ; -> 0x4ef7b30 PlayerBase::Death
004ef784c 	ldp	x20, x19, [sp, #240]
004ef7850 	ldr	x29, [sp, #160]
004ef7854 	ldp	x22, x21, [sp, #224]
004ef7858 	ldp	x24, x23, [sp, #208]
004ef785c 	ldp	x26, x25, [sp, #192]
004ef7860 	ldp	x30, x27, [sp, #176]
004ef7864 	ldp	d9, d8, [sp, #144]
004ef7868 	add	sp, sp, #256
004ef786c 	ret
004ef7870 	bl	#-9857892 ; -> 0x4590d0c 
