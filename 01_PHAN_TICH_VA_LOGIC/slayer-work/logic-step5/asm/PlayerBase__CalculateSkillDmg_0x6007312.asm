004eec3b8 	str	d10, [sp, #-128]!
004eec3bc 	stp	d9, d8, [sp, #16]
004eec3c0 	stp	x29, x30, [sp, #32]
004eec3c4 	stp	x28, x27, [sp, #48]
004eec3c8 	stp	x26, x25, [sp, #64]
004eec3cc 	stp	x24, x23, [sp, #80]
004eec3d0 	stp	x22, x21, [sp, #96]
004eec3d4 	stp	x20, x19, [sp, #112]
004eec3d8 	sub	sp, sp, #2768
004eec3dc 	fmov	s8, s0
004eec3e0 	adrp	x22, #97423360 ; -> 0xabd5000 
004eec3e4 	mov	w20, w3
004eec3e8 	ldrb	w8, [x22, #1433]
004eec3ec 	mov	w23, w2
004eec3f0 	mov	w21, w1
004eec3f4 	mov	x19, x0
004eec3f8 	add	x26, sp, #512
004eec3fc 	tbnz	w8, #0, #48 ; -> 0x4eec42c 
004eec400 	adrp	x0, #89116672 ; -> 0xa3e9000 
004eec404 	ldr	x0, [x0, #3552]
004eec408 	bl	#-9812392 ; -> 0x4590a60 
004eec40c 	adrp	x0, #89116672 ; -> 0xa3e9000 
004eec410 	ldr	x0, [x0, #1384]
004eec414 	bl	#-9812404 ; -> 0x4590a60 
004eec418 	adrp	x0, #89153536 ; -> 0xa3f2000 
004eec41c 	ldr	x0, [x0, #552]
004eec420 	bl	#-9812416 ; -> 0x4590a60 
004eec424 	mov	w8, #1
004eec428 	strb	w8, [x22, #1433]
004eec42c 	movi	v0.2d, #0000000000000000
004eec430 	mov	w0, #31573
004eec434 	mov	x1, xzr
004eec438 	str	xzr, [sp, #2752]
004eec43c 	str	q0, [x26, #2224]
004eec440 	str	q0, [x26, #2208]
004eec444 	bl	#-2772640 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eec448 	tbz	w0, #0, #84 ; -> 0x4eec49c 
004eec44c 	mov	w0, #31573
004eec450 	mov	x1, xzr
004eec454 	bl	#-2772476 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eec458 	cbz	x0, #5616 ; -> 0x4eeda48 
004eec45c 	and	w4, w20, #0x1
004eec460 	mov	x1, x19
004eec464 	mov	w2, w21
004eec468 	mov	w3, w23
004eec46c 	fmov	s0, s8
004eec470 	mov	x5, xzr
004eec474 	add	sp, sp, #2768
004eec478 	ldp	x20, x19, [sp, #112]
004eec47c 	ldp	x22, x21, [sp, #96]
004eec480 	ldp	x24, x23, [sp, #80]
004eec484 	ldp	x26, x25, [sp, #64]
004eec488 	ldp	x28, x27, [sp, #48]
004eec48c 	ldp	x29, x30, [sp, #32]
004eec490 	ldp	d9, d8, [sp, #16]
004eec494 	ldr	d10, [sp], #128
004eec498 	b	#-3182684 ; -> 0x4be343c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1971
004eec49c 	mov	x0, x19
004eec4a0 	bl	#5548 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004eec4a4 	cbz	x0, #68 ; -> 0x4eec4e8 
004eec4a8 	mov	x1, x0
004eec4ac 	and	w4, w20, #0x1
004eec4b0 	mov	x0, x19
004eec4b4 	mov	w2, w21
004eec4b8 	mov	w3, w23
004eec4bc 	fmov	s0, s8
004eec4c0 	add	sp, sp, #2768
004eec4c4 	ldp	x20, x19, [sp, #112]
004eec4c8 	ldp	x22, x21, [sp, #96]
004eec4cc 	ldp	x24, x23, [sp, #80]
004eec4d0 	ldp	x26, x25, [sp, #64]
004eec4d4 	ldp	x28, x27, [sp, #48]
004eec4d8 	ldp	x29, x30, [sp, #32]
004eec4dc 	ldp	d9, d8, [sp, #16]
004eec4e0 	ldr	d10, [sp], #128
004eec4e4 	b	#5720 ; -> 0x4eedb3c PlayerBase::CalculateSkillDmg_PresetBattle
004eec4e8 	cmp	w21, #2
004eec4ec 	b.eq	#28 ; -> 0x4eec508 
004eec4f0 	cmp	w21, #1
004eec4f4 	b.eq	#12 ; -> 0x4eec500 
004eec4f8 	add	x8, x19, #744
004eec4fc 	b	#16 ; -> 0x4eec50c 
004eec500 	add	x8, x19, #784
004eec504 	b	#8 ; -> 0x4eec50c 
004eec508 	add	x8, x19, #824
004eec50c 	ldp	q0, q1, [x8]
004eec510 	add	x0, sp, #2672
004eec514 	ldr	x8, [x8, #32]
004eec518 	mov	x1, xzr
004eec51c 	str	q0, [x26, #2208]
004eec520 	str	q1, [x26, #2224]
004eec524 	str	x8, [sp, #2752]
004eec528 	str	q0, [x26, #2160]
004eec52c 	str	q1, [x26, #2176]
004eec530 	str	x8, [sp, #2704]
004eec534 	bl	#-3781892 ; -> 0x4b51030 SilentBigInt::op_Implicit
004eec538 	adrp	x24, #89141248 ; -> 0xa3ef000 
004eec53c 	mov	x21, x0
004eec540 	mov	x22, x1
004eec544 	ldr	x24, [x24, #3328]
004eec548 	cmp	w23, #2
004eec54c 	adrp	x25, #97398784 ; -> 0xabcf000 
004eec550 	b.gt	#1084 ; -> 0x4eec98c 
004eec554 	cmp	w23, #1
004eec558 	b.eq	#2148 ; -> 0x4eecdbc 
004eec55c 	cmp	w23, #2
004eec560 	b.ne	#4400 ; -> 0x4eed690 
004eec564 	adrp	x28, #89116672 ; -> 0xa3e9000 
004eec568 	ldr	x28, [x28, #1384]
004eec56c 	ldr	x0, [x28]
004eec570 	ldr	w8, [x0, #228]
004eec574 	cbnz	w8, #12 ; -> 0x4eec580 
004eec578 	bl	#-9812376 ; -> 0x4590be0 
004eec57c 	ldr	x0, [x28]
004eec580 	ldr	x8, [x0, #184]
004eec584 	ldr	x0, [x8]
004eec588 	cbz	x0, #5312 ; -> 0x4eeda48 
004eec58c 	add	x8, sp, #2600
004eec590 	mov	x1, xzr
004eec594 	bl	#-1688168 ; -> 0x4d5032c DatabaseManager::get_WaterSkillDmg
004eec598 	add	x0, sp, #1880
004eec59c 	add	x1, sp, #2600
004eec5a0 	mov	w2, #72
004eec5a4 	bl	#82309964 ; -> 0x9d6b8f0 
004eec5a8 	add	x0, sp, #1880
004eec5ac 	mov	x1, xzr
004eec5b0 	bl	#-3778696 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec5b4 	ldr	x8, [x28]
004eec5b8 	ldr	x8, [x8, #184]
004eec5bc 	ldr	x8, [x8]
004eec5c0 	cbz	x8, #5256 ; -> 0x4eeda48 
004eec5c4 	mov	w9, #6152
004eec5c8 	add	x0, sp, #1808
004eec5cc 	mov	w2, #72
004eec5d0 	add	x1, x8, x9
004eec5d4 	fmov	s9, s0
004eec5d8 	bl	#82309912 ; -> 0x9d6b8f0 
004eec5dc 	add	x0, sp, #1808
004eec5e0 	mov	x1, xzr
004eec5e4 	bl	#-3778748 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec5e8 	adrp	x27, #89116672 ; -> 0xa3e9000 
004eec5ec 	fmov	s10, s0
004eec5f0 	ldr	x27, [x27, #3552]
004eec5f4 	ldr	x0, [x27]
004eec5f8 	ldr	w8, [x0, #228]
004eec5fc 	cbnz	w8, #8 ; -> 0x4eec604 
004eec600 	bl	#-9812512 ; -> 0x4590be0 
004eec604 	mov	w8, #1120403456
004eec608 	mov	x1, xzr
004eec60c 	fmov	s0, w8
004eec610 	mov	w8, #2139095040
004eec614 	fadd	s1, s9, s0
004eec618 	fadd	s0, s10, s0
004eec61c 	fmul	s1, s1, s8
004eec620 	fmul	s0, s1, s0
004eec624 	fmov	s1, w8
004eec628 	mov	x8, #-9223372036854775808
004eec62c 	fcvtzs	x9, s0
004eec630 	fcmp	s0, s1
004eec634 	csel	x0, x8, x9, eq
004eec638 	bl	#69796580 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eec63c 	mov	x2, x0
004eec640 	mov	x3, x1
004eec644 	mov	x0, x21
004eec648 	mov	x1, x22
004eec64c 	mov	x4, xzr
004eec650 	bl	#69788148 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eec654 	mov	x21, x0
004eec658 	mov	w0, #16960
004eec65c 	mov	x22, x1
004eec660 	movk	w0, #15, lsl #16
004eec664 	mov	x1, xzr
004eec668 	bl	#69798204 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eec66c 	mov	x2, x0
004eec670 	mov	x3, x1
004eec674 	mov	x0, x21
004eec678 	mov	x1, x22
004eec67c 	mov	x4, xzr
004eec680 	bl	#69788600 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eec684 	ldr	x8, [x28]
004eec688 	mov	x21, x0
004eec68c 	ldr	x8, [x8, #184]
004eec690 	ldr	x0, [x8]
004eec694 	cbz	x0, #5044 ; -> 0x4eeda48 
004eec698 	mov	x22, x1
004eec69c 	add	x8, sp, #2384
004eec6a0 	mov	x1, xzr
004eec6a4 	bl	#-1694452 ; -> 0x4d4ebb0 DatabaseManager::get_WaterDamageOption_BlackOrb
004eec6a8 	add	x0, sp, #1736
004eec6ac 	add	x1, sp, #2384
004eec6b0 	mov	w2, #72
004eec6b4 	bl	#82309692 ; -> 0x9d6b8f0 
004eec6b8 	add	x0, sp, #1736
004eec6bc 	mov	x1, xzr
004eec6c0 	bl	#-3778968 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec6c4 	ldr	x8, [x28]
004eec6c8 	ldr	x8, [x8, #184]
004eec6cc 	ldr	x8, [x8]
004eec6d0 	cbz	x8, #4984 ; -> 0x4eeda48 
004eec6d4 	mov	w9, #20888
004eec6d8 	fmov	s8, s0
004eec6dc 	add	x0, sp, #1664
004eec6e0 	add	x8, x8, x9
004eec6e4 	mov	x1, xzr
004eec6e8 	ldp	q0, q1, [x8]
004eec6ec 	str	q0, [x26, #1152]
004eec6f0 	ldp	q0, q2, [x8, #32]
004eec6f4 	str	q1, [x26, #1168]
004eec6f8 	str	q0, [x26, #1184]
004eec6fc 	str	q2, [x26, #1200]
004eec700 	bl	#-3777456 ; -> 0x4b52350 SilentInt::op_Implicit
004eec704 	ldrb	w8, [x25, #636]
004eec708 	mov	w23, w0
004eec70c 	cbnz	w8, #24 ; -> 0x4eec724 
004eec710 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eec714 	ldr	x0, [x0, #3328]
004eec718 	bl	#-9813176 ; -> 0x4590a60 
004eec71c 	mov	w8, #1
004eec720 	strb	w8, [x25, #636]
004eec724 	ldr	x8, [x24]
004eec728 	ldr	x8, [x8, #184]
004eec72c 	ldr	x8, [x8]
004eec730 	cbz	x8, #4888 ; -> 0x4eeda48 
004eec734 	ldr	x8, [x8, #104]
004eec738 	cbz	x8, #4880 ; -> 0x4eeda48 
004eec73c 	add	x0, sp, #1592
004eec740 	add	x1, x8, #784
004eec744 	mov	w2, #72
004eec748 	bl	#82309544 ; -> 0x9d6b8f0 
004eec74c 	add	x0, sp, #1592
004eec750 	mov	x1, xzr
004eec754 	bl	#-3779116 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec758 	fmov	s9, s0
004eec75c 	ldrb	w8, [x25, #636]
004eec760 	cbnz	w8, #24 ; -> 0x4eec778 
004eec764 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eec768 	ldr	x0, [x0, #3328]
004eec76c 	bl	#-9813260 ; -> 0x4590a60 
004eec770 	mov	w8, #1
004eec774 	strb	w8, [x25, #636]
004eec778 	ldr	x8, [x24]
004eec77c 	ldr	x8, [x8, #184]
004eec780 	ldr	x8, [x8]
004eec784 	cbz	x8, #4804 ; -> 0x4eeda48 
004eec788 	ldr	x8, [x8, #104]
004eec78c 	cbz	x8, #4796 ; -> 0x4eeda48 
004eec790 	add	x0, sp, #1520
004eec794 	add	x1, x8, #1072
004eec798 	mov	w2, #72
004eec79c 	bl	#82309460 ; -> 0x9d6b8f0 
004eec7a0 	add	x0, sp, #1520
004eec7a4 	mov	x1, xzr
004eec7a8 	bl	#-3779200 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec7ac 	mov	w8, #1120403456
004eec7b0 	scvtf	s2, w23
004eec7b4 	mov	x1, xzr
004eec7b8 	fmov	s1, w8
004eec7bc 	mov	w8, #2139095040
004eec7c0 	fadd	s1, s8, s1
004eec7c4 	fadd	s1, s1, s2
004eec7c8 	fadd	s1, s1, s9
004eec7cc 	fadd	s0, s1, s0
004eec7d0 	fmov	s1, w8
004eec7d4 	mov	x8, #-9223372036854775808
004eec7d8 	fcvtzs	x9, s0
004eec7dc 	fcmp	s0, s1
004eec7e0 	csel	x0, x8, x9, eq
004eec7e4 	bl	#69796152 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eec7e8 	mov	x2, x0
004eec7ec 	mov	x3, x1
004eec7f0 	mov	x0, x21
004eec7f4 	mov	x1, x22
004eec7f8 	mov	x4, xzr
004eec7fc 	bl	#69787720 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eec800 	mov	x21, x0
004eec804 	mov	x22, x1
004eec808 	mov	w0, #100
004eec80c 	mov	x1, xzr
004eec810 	bl	#69797780 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eec814 	mov	x2, x0
004eec818 	mov	x3, x1
004eec81c 	mov	x0, x21
004eec820 	mov	x1, x22
004eec824 	mov	x4, xzr
004eec828 	bl	#69788176 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eec82c 	mov	x21, x0
004eec830 	mov	x22, x1
004eec834 	tbz	w20, #0, #212 ; -> 0x4eec908 
004eec838 	ldr	x0, [x28]
004eec83c 	ldr	w8, [x0, #228]
004eec840 	cbnz	w8, #12 ; -> 0x4eec84c 
004eec844 	bl	#-9813092 ; -> 0x4590be0 
004eec848 	ldr	x0, [x28]
004eec84c 	ldr	x8, [x0, #184]
004eec850 	ldr	x0, [x8]
004eec854 	cbz	x0, #4596 ; -> 0x4eeda48 
004eec858 	add	x8, sp, #2600
004eec85c 	mov	x1, xzr
004eec860 	bl	#-1685692 ; -> 0x4d50fa4 DatabaseManager::get_SkillEffectwaterDmgBuff
004eec864 	add	x0, sp, #1448
004eec868 	add	x1, sp, #2600
004eec86c 	mov	w2, #72
004eec870 	bl	#82309248 ; -> 0x9d6b8f0 
004eec874 	add	x0, sp, #1448
004eec878 	mov	x1, xzr
004eec87c 	bl	#-3779412 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec880 	ldr	x0, [x27]
004eec884 	fmov	s8, s0
004eec888 	ldr	w8, [x0, #228]
004eec88c 	cbnz	w8, #8 ; -> 0x4eec894 
004eec890 	bl	#-9813168 ; -> 0x4590be0 
004eec894 	mov	w9, #2139095040
004eec898 	fcvtzs	w8, s8
004eec89c 	mov	x1, xzr
004eec8a0 	fmov	s0, w9
004eec8a4 	mov	w9, #100
004eec8a8 	movk	w9, #32768, lsl #16
004eec8ac 	fcmp	s8, s0
004eec8b0 	add	w8, w8, #100
004eec8b4 	csel	w0, w9, w8, eq
004eec8b8 	bl	#69797612 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eec8bc 	mov	x2, x0
004eec8c0 	mov	x3, x1
004eec8c4 	mov	x0, x21
004eec8c8 	mov	x1, x22
004eec8cc 	mov	x4, xzr
004eec8d0 	bl	#69787508 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eec8d4 	mov	x20, x0
004eec8d8 	mov	x21, x1
004eec8dc 	mov	w0, #100
004eec8e0 	mov	x1, xzr
004eec8e4 	bl	#69797568 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eec8e8 	mov	x2, x0
004eec8ec 	mov	x3, x1
004eec8f0 	mov	x0, x20
004eec8f4 	mov	x1, x21
004eec8f8 	mov	x4, xzr
004eec8fc 	bl	#69787964 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eec900 	mov	x21, x0
004eec904 	mov	x22, x1
004eec908 	ldrb	w8, [x25, #636]
004eec90c 	cbnz	w8, #24 ; -> 0x4eec924 
004eec910 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eec914 	ldr	x0, [x0, #3328]
004eec918 	bl	#-9813688 ; -> 0x4590a60 
004eec91c 	mov	w8, #1
004eec920 	strb	w8, [x25, #636]
004eec924 	ldr	x8, [x24]
004eec928 	ldr	x8, [x8, #184]
004eec92c 	ldr	x0, [x8]
004eec930 	cbz	x0, #4376 ; -> 0x4eeda48 
004eec934 	mov	x1, xzr
004eec938 	bl	#1392160 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eec93c 	tbz	w0, #0, #3412 ; -> 0x4eed690 
004eec940 	ldrb	w8, [x25, #636]
004eec944 	cbnz	w8, #24 ; -> 0x4eec95c 
004eec948 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eec94c 	ldr	x0, [x0, #3328]
004eec950 	bl	#-9813744 ; -> 0x4590a60 
004eec954 	mov	w8, #1
004eec958 	strb	w8, [x25, #636]
004eec95c 	ldr	x8, [x24]
004eec960 	ldr	x8, [x8, #184]
004eec964 	ldr	x8, [x8]
004eec968 	cbz	x8, #4320 ; -> 0x4eeda48 
004eec96c 	ldr	x8, [x8, #96]
004eec970 	cbz	x8, #4312 ; -> 0x4eeda48 
004eec974 	add	x0, sp, #1376
004eec978 	add	x1, x8, #1344
004eec97c 	mov	w2, #72
004eec980 	bl	#82308976 ; -> 0x9d6b8f0 
004eec984 	add	x0, sp, #1376
004eec988 	b	#3192 ; -> 0x4eed600 
004eec98c 	cmp	w23, #3
004eec990 	b.eq	#2132 ; -> 0x4eed1e4 
004eec994 	cmp	w23, #4
004eec998 	b.ne	#3320 ; -> 0x4eed690 
004eec99c 	adrp	x28, #89116672 ; -> 0xa3e9000 
004eec9a0 	ldr	x28, [x28, #1384]
004eec9a4 	ldr	x0, [x28]
004eec9a8 	ldr	w8, [x0, #228]
004eec9ac 	cbnz	w8, #12 ; -> 0x4eec9b8 
004eec9b0 	bl	#-9813456 ; -> 0x4590be0 
004eec9b4 	ldr	x0, [x28]
004eec9b8 	ldr	x8, [x0, #184]
004eec9bc 	ldr	x0, [x8]
004eec9c0 	cbz	x0, #4232 ; -> 0x4eeda48 
004eec9c4 	add	x8, sp, #2600
004eec9c8 	mov	x1, xzr
004eec9cc 	bl	#-1688440 ; -> 0x4d50654 DatabaseManager::get_EarthSkillDmg
004eec9d0 	add	x0, sp, #728
004eec9d4 	add	x1, sp, #2600
004eec9d8 	mov	w2, #72
004eec9dc 	bl	#82308884 ; -> 0x9d6b8f0 
004eec9e0 	add	x0, sp, #728
004eec9e4 	mov	x1, xzr
004eec9e8 	bl	#-3779776 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eec9ec 	ldr	x8, [x28]
004eec9f0 	ldr	x8, [x8, #184]
004eec9f4 	ldr	x8, [x8]
004eec9f8 	cbz	x8, #4176 ; -> 0x4eeda48 
004eec9fc 	mov	w9, #6152
004eeca00 	add	x0, sp, #656
004eeca04 	mov	w2, #72
004eeca08 	add	x1, x8, x9
004eeca0c 	fmov	s9, s0
004eeca10 	bl	#82308832 ; -> 0x9d6b8f0 
004eeca14 	add	x0, sp, #656
004eeca18 	mov	x1, xzr
004eeca1c 	bl	#-3779828 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeca20 	adrp	x27, #89116672 ; -> 0xa3e9000 
004eeca24 	fmov	s10, s0
004eeca28 	ldr	x27, [x27, #3552]
004eeca2c 	ldr	x0, [x27]
004eeca30 	ldr	w8, [x0, #228]
004eeca34 	cbnz	w8, #8 ; -> 0x4eeca3c 
004eeca38 	bl	#-9813592 ; -> 0x4590be0 
004eeca3c 	mov	w8, #1120403456
004eeca40 	mov	x1, xzr
004eeca44 	fmov	s0, w8
004eeca48 	mov	w8, #2139095040
004eeca4c 	fadd	s1, s9, s0
004eeca50 	fadd	s0, s10, s0
004eeca54 	fmul	s1, s1, s8
004eeca58 	fmul	s0, s1, s0
004eeca5c 	fmov	s1, w8
004eeca60 	mov	x8, #-9223372036854775808
004eeca64 	fcvtzs	x9, s0
004eeca68 	fcmp	s0, s1
004eeca6c 	csel	x0, x8, x9, eq
004eeca70 	bl	#69795500 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eeca74 	mov	x2, x0
004eeca78 	mov	x3, x1
004eeca7c 	mov	x0, x21
004eeca80 	mov	x1, x22
004eeca84 	mov	x4, xzr
004eeca88 	bl	#69787068 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eeca8c 	mov	x21, x0
004eeca90 	mov	w0, #16960
004eeca94 	mov	x22, x1
004eeca98 	movk	w0, #15, lsl #16
004eeca9c 	mov	x1, xzr
004eecaa0 	bl	#69797124 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eecaa4 	mov	x2, x0
004eecaa8 	mov	x3, x1
004eecaac 	mov	x0, x21
004eecab0 	mov	x1, x22
004eecab4 	mov	x4, xzr
004eecab8 	bl	#69787520 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eecabc 	ldr	x8, [x28]
004eecac0 	mov	x21, x0
004eecac4 	ldr	x8, [x8, #184]
004eecac8 	ldr	x0, [x8]
004eecacc 	cbz	x0, #3964 ; -> 0x4eeda48 
004eecad0 	mov	x22, x1
004eecad4 	add	x8, sp, #2384
004eecad8 	mov	x1, xzr
004eecadc 	bl	#-1694620 ; -> 0x4d4ef40 DatabaseManager::get_EarthDamageOption_BlackOrb
004eecae0 	add	x0, sp, #584
004eecae4 	add	x1, sp, #2384
004eecae8 	mov	w2, #72
004eecaec 	bl	#82308612 ; -> 0x9d6b8f0 
004eecaf0 	add	x0, sp, #584
004eecaf4 	mov	x1, xzr
004eecaf8 	bl	#-3780048 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eecafc 	ldr	x8, [x28]
004eecb00 	ldr	x8, [x8, #184]
004eecb04 	ldr	x8, [x8]
004eecb08 	cbz	x8, #3904 ; -> 0x4eeda48 
004eecb0c 	mov	w9, #21016
004eecb10 	fmov	s8, s0
004eecb14 	add	x0, sp, #512
004eecb18 	add	x8, x8, x9
004eecb1c 	mov	x1, xzr
004eecb20 	ldp	q0, q1, [x8]
004eecb24 	stp	q0, q1, [x26]
004eecb28 	ldp	q0, q2, [x8, #32]
004eecb2c 	stp	q0, q2, [x26, #32]
004eecb30 	bl	#-3778528 ; -> 0x4b52350 SilentInt::op_Implicit
004eecb34 	ldrb	w8, [x25, #636]
004eecb38 	mov	w23, w0
004eecb3c 	cbnz	w8, #24 ; -> 0x4eecb54 
004eecb40 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecb44 	ldr	x0, [x0, #3328]
004eecb48 	bl	#-9814248 ; -> 0x4590a60 
004eecb4c 	mov	w8, #1
004eecb50 	strb	w8, [x25, #636]
004eecb54 	ldr	x8, [x24]
004eecb58 	ldr	x8, [x8, #184]
004eecb5c 	ldr	x8, [x8]
004eecb60 	cbz	x8, #3816 ; -> 0x4eeda48 
004eecb64 	ldr	x8, [x8, #104]
004eecb68 	cbz	x8, #3808 ; -> 0x4eeda48 
004eecb6c 	add	x0, sp, #440
004eecb70 	add	x1, x8, #928
004eecb74 	mov	w2, #72
004eecb78 	bl	#82308472 ; -> 0x9d6b8f0 
004eecb7c 	add	x0, sp, #440
004eecb80 	mov	x1, xzr
004eecb84 	bl	#-3780188 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eecb88 	fmov	s9, s0
004eecb8c 	ldrb	w8, [x25, #636]
004eecb90 	cbnz	w8, #24 ; -> 0x4eecba8 
004eecb94 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecb98 	ldr	x0, [x0, #3328]
004eecb9c 	bl	#-9814332 ; -> 0x4590a60 
004eecba0 	mov	w8, #1
004eecba4 	strb	w8, [x25, #636]
004eecba8 	ldr	x8, [x24]
004eecbac 	ldr	x8, [x8, #184]
004eecbb0 	ldr	x8, [x8]
004eecbb4 	cbz	x8, #3732 ; -> 0x4eeda48 
004eecbb8 	ldr	x8, [x8, #104]
004eecbbc 	cbz	x8, #3724 ; -> 0x4eeda48 
004eecbc0 	add	x0, sp, #368
004eecbc4 	add	x1, x8, #1072
004eecbc8 	mov	w2, #72
004eecbcc 	bl	#82308388 ; -> 0x9d6b8f0 
004eecbd0 	add	x0, sp, #368
004eecbd4 	mov	x1, xzr
004eecbd8 	bl	#-3780272 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eecbdc 	mov	w8, #1120403456
004eecbe0 	scvtf	s2, w23
004eecbe4 	mov	x1, xzr
004eecbe8 	fmov	s1, w8
004eecbec 	mov	w8, #2139095040
004eecbf0 	fadd	s1, s8, s1
004eecbf4 	fadd	s1, s1, s2
004eecbf8 	fadd	s1, s1, s9
004eecbfc 	fadd	s0, s1, s0
004eecc00 	fmov	s1, w8
004eecc04 	mov	x8, #-9223372036854775808
004eecc08 	fcvtzs	x9, s0
004eecc0c 	fcmp	s0, s1
004eecc10 	csel	x0, x8, x9, eq
004eecc14 	bl	#69795080 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eecc18 	mov	x2, x0
004eecc1c 	mov	x3, x1
004eecc20 	mov	x0, x21
004eecc24 	mov	x1, x22
004eecc28 	mov	x4, xzr
004eecc2c 	bl	#69786648 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eecc30 	mov	x21, x0
004eecc34 	mov	x22, x1
004eecc38 	mov	w0, #100
004eecc3c 	mov	x1, xzr
004eecc40 	bl	#69796708 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eecc44 	mov	x2, x0
004eecc48 	mov	x3, x1
004eecc4c 	mov	x0, x21
004eecc50 	mov	x1, x22
004eecc54 	mov	x4, xzr
004eecc58 	bl	#69787104 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eecc5c 	mov	x21, x0
004eecc60 	mov	x22, x1
004eecc64 	tbz	w20, #0, #212 ; -> 0x4eecd38 
004eecc68 	ldr	x0, [x28]
004eecc6c 	ldr	w8, [x0, #228]
004eecc70 	cbnz	w8, #12 ; -> 0x4eecc7c 
004eecc74 	bl	#-9814164 ; -> 0x4590be0 
004eecc78 	ldr	x0, [x28]
004eecc7c 	ldr	x8, [x0, #184]
004eecc80 	ldr	x0, [x8]
004eecc84 	cbz	x0, #3524 ; -> 0x4eeda48 
004eecc88 	add	x8, sp, #2600
004eecc8c 	mov	x1, xzr
004eecc90 	bl	#-1685780 ; -> 0x4d5137c DatabaseManager::get_SkillEffectEarthDmgBuff
004eecc94 	add	x0, sp, #296
004eecc98 	add	x1, sp, #2600
004eecc9c 	mov	w2, #72
004eecca0 	bl	#82308176 ; -> 0x9d6b8f0 
004eecca4 	add	x0, sp, #296
004eecca8 	mov	x1, xzr
004eeccac 	bl	#-3780484 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeccb0 	ldr	x0, [x27]
004eeccb4 	fmov	s8, s0
004eeccb8 	ldr	w8, [x0, #228]
004eeccbc 	cbnz	w8, #8 ; -> 0x4eeccc4 
004eeccc0 	bl	#-9814240 ; -> 0x4590be0 
004eeccc4 	mov	w9, #2139095040
004eeccc8 	fcvtzs	w8, s8
004eecccc 	mov	x1, xzr
004eeccd0 	fmov	s0, w9
004eeccd4 	mov	w9, #100
004eeccd8 	movk	w9, #32768, lsl #16
004eeccdc 	fcmp	s8, s0
004eecce0 	add	w8, w8, #100
004eecce4 	csel	w0, w9, w8, eq
004eecce8 	bl	#69796540 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eeccec 	mov	x2, x0
004eeccf0 	mov	x3, x1
004eeccf4 	mov	x0, x21
004eeccf8 	mov	x1, x22
004eeccfc 	mov	x4, xzr
004eecd00 	bl	#69786436 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eecd04 	mov	x20, x0
004eecd08 	mov	x21, x1
004eecd0c 	mov	w0, #100
004eecd10 	mov	x1, xzr
004eecd14 	bl	#69796496 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eecd18 	mov	x2, x0
004eecd1c 	mov	x3, x1
004eecd20 	mov	x0, x20
004eecd24 	mov	x1, x21
004eecd28 	mov	x4, xzr
004eecd2c 	bl	#69786892 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eecd30 	mov	x21, x0
004eecd34 	mov	x22, x1
004eecd38 	ldrb	w8, [x25, #636]
004eecd3c 	cbnz	w8, #24 ; -> 0x4eecd54 
004eecd40 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecd44 	ldr	x0, [x0, #3328]
004eecd48 	bl	#-9814760 ; -> 0x4590a60 
004eecd4c 	mov	w8, #1
004eecd50 	strb	w8, [x25, #636]
004eecd54 	ldr	x8, [x24]
004eecd58 	ldr	x8, [x8, #184]
004eecd5c 	ldr	x0, [x8]
004eecd60 	cbz	x0, #3304 ; -> 0x4eeda48 
004eecd64 	mov	x1, xzr
004eecd68 	bl	#1391088 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eecd6c 	tbz	w0, #0, #2340 ; -> 0x4eed690 
004eecd70 	ldrb	w8, [x25, #636]
004eecd74 	cbnz	w8, #24 ; -> 0x4eecd8c 
004eecd78 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecd7c 	ldr	x0, [x0, #3328]
004eecd80 	bl	#-9814816 ; -> 0x4590a60 
004eecd84 	mov	w8, #1
004eecd88 	strb	w8, [x25, #636]
004eecd8c 	ldr	x8, [x24]
004eecd90 	ldr	x8, [x8, #184]
004eecd94 	ldr	x8, [x8]
004eecd98 	cbz	x8, #3248 ; -> 0x4eeda48 
004eecd9c 	ldr	x8, [x8, #96]
004eecda0 	cbz	x8, #3240 ; -> 0x4eeda48 
004eecda4 	add	x0, sp, #224
004eecda8 	add	x1, x8, #1488
004eecdac 	mov	w2, #72
004eecdb0 	bl	#82307904 ; -> 0x9d6b8f0 
004eecdb4 	add	x0, sp, #224
004eecdb8 	b	#2120 ; -> 0x4eed600 
004eecdbc 	adrp	x28, #89116672 ; -> 0xa3e9000 
004eecdc0 	ldr	x28, [x28, #1384]
004eecdc4 	ldr	x0, [x28]
004eecdc8 	ldr	w8, [x0, #228]
004eecdcc 	cbnz	w8, #12 ; -> 0x4eecdd8 
004eecdd0 	bl	#-9814512 ; -> 0x4590be0 
004eecdd4 	ldr	x0, [x28]
004eecdd8 	ldr	x8, [x0, #184]
004eecddc 	ldr	x0, [x8]
004eecde0 	cbz	x0, #3176 ; -> 0x4eeda48 
004eecde4 	add	x8, sp, #2600
004eecde8 	mov	x1, xzr
004eecdec 	bl	#-1690708 ; -> 0x4d50198 DatabaseManager::get_FireSkillDmg
004eecdf0 	add	x0, sp, #2528
004eecdf4 	add	x1, sp, #2600
004eecdf8 	mov	w2, #72
004eecdfc 	bl	#82307828 ; -> 0x9d6b8f0 
004eece00 	add	x0, sp, #2528
004eece04 	mov	x1, xzr
004eece08 	bl	#-3780832 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eece0c 	ldr	x8, [x28]
004eece10 	ldr	x8, [x8, #184]
004eece14 	ldr	x8, [x8]
004eece18 	cbz	x8, #3120 ; -> 0x4eeda48 
004eece1c 	mov	w9, #6152
004eece20 	add	x0, sp, #2456
004eece24 	mov	w2, #72
004eece28 	add	x1, x8, x9
004eece2c 	fmov	s9, s0
004eece30 	bl	#82307776 ; -> 0x9d6b8f0 
004eece34 	add	x0, sp, #2456
004eece38 	mov	x1, xzr
004eece3c 	bl	#-3780884 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eece40 	adrp	x27, #89116672 ; -> 0xa3e9000 
004eece44 	fmov	s10, s0
004eece48 	ldr	x27, [x27, #3552]
004eece4c 	ldr	x0, [x27]
004eece50 	ldr	w8, [x0, #228]
004eece54 	cbnz	w8, #8 ; -> 0x4eece5c 
004eece58 	bl	#-9814648 ; -> 0x4590be0 
004eece5c 	mov	w8, #1120403456
004eece60 	mov	x1, xzr
004eece64 	fmov	s0, w8
004eece68 	mov	w8, #2139095040
004eece6c 	fadd	s1, s9, s0
004eece70 	fadd	s0, s10, s0
004eece74 	fmul	s1, s1, s8
004eece78 	fmul	s0, s1, s0
004eece7c 	fmov	s1, w8
004eece80 	mov	x8, #-9223372036854775808
004eece84 	fcvtzs	x9, s0
004eece88 	fcmp	s0, s1
004eece8c 	csel	x0, x8, x9, eq
004eece90 	bl	#69794444 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eece94 	mov	x2, x0
004eece98 	mov	x3, x1
004eece9c 	mov	x0, x21
004eecea0 	mov	x1, x22
004eecea4 	mov	x4, xzr
004eecea8 	bl	#69786012 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eeceac 	mov	x21, x0
004eeceb0 	mov	w0, #16960
004eeceb4 	mov	x22, x1
004eeceb8 	movk	w0, #15, lsl #16
004eecebc 	mov	x1, xzr
004eecec0 	bl	#69796068 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eecec4 	mov	x2, x0
004eecec8 	mov	x3, x1
004eececc 	mov	x0, x21
004eeced0 	mov	x1, x22
004eeced4 	mov	x4, xzr
004eeced8 	bl	#69786464 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eecedc 	ldr	x8, [x28]
004eecee0 	mov	x21, x0
004eecee4 	ldr	x8, [x8, #184]
004eecee8 	ldr	x0, [x8]
004eeceec 	cbz	x0, #2908 ; -> 0x4eeda48 
004eecef0 	mov	x22, x1
004eecef4 	add	x8, sp, #2384
004eecef8 	mov	x1, xzr
004eecefc 	bl	#-1696268 ; -> 0x4d4ecf0 DatabaseManager::get_FireDamageOption_BlackOrb
004eecf00 	add	x0, sp, #2312
004eecf04 	add	x1, sp, #2384
004eecf08 	mov	w2, #72
004eecf0c 	bl	#82307556 ; -> 0x9d6b8f0 
004eecf10 	add	x0, sp, #2312
004eecf14 	mov	x1, xzr
004eecf18 	bl	#-3781104 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eecf1c 	ldr	x8, [x28]
004eecf20 	ldr	x8, [x8, #184]
004eecf24 	ldr	x8, [x8]
004eecf28 	cbz	x8, #2848 ; -> 0x4eeda48 
004eecf2c 	mov	w9, #20824
004eecf30 	fmov	s8, s0
004eecf34 	add	x0, sp, #2240
004eecf38 	add	x8, x8, x9
004eecf3c 	mov	x1, xzr
004eecf40 	ldp	q0, q1, [x8]
004eecf44 	str	q0, [x26, #1728]
004eecf48 	ldp	q0, q2, [x8, #32]
004eecf4c 	str	q1, [x26, #1744]
004eecf50 	str	q0, [x26, #1760]
004eecf54 	str	q2, [x26, #1776]
004eecf58 	bl	#-3779592 ; -> 0x4b52350 SilentInt::op_Implicit
004eecf5c 	ldrb	w8, [x25, #636]
004eecf60 	mov	w23, w0
004eecf64 	cbnz	w8, #24 ; -> 0x4eecf7c 
004eecf68 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecf6c 	ldr	x0, [x0, #3328]
004eecf70 	bl	#-9815312 ; -> 0x4590a60 
004eecf74 	mov	w8, #1
004eecf78 	strb	w8, [x25, #636]
004eecf7c 	ldr	x8, [x24]
004eecf80 	ldr	x8, [x8, #184]
004eecf84 	ldr	x8, [x8]
004eecf88 	cbz	x8, #2752 ; -> 0x4eeda48 
004eecf8c 	ldr	x8, [x8, #104]
004eecf90 	cbz	x8, #2744 ; -> 0x4eeda48 
004eecf94 	add	x0, sp, #2168
004eecf98 	add	x1, x8, #712
004eecf9c 	mov	w2, #72
004eecfa0 	bl	#82307408 ; -> 0x9d6b8f0 
004eecfa4 	add	x0, sp, #2168
004eecfa8 	mov	x1, xzr
004eecfac 	bl	#-3781252 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eecfb0 	fmov	s9, s0
004eecfb4 	ldrb	w8, [x25, #636]
004eecfb8 	cbnz	w8, #24 ; -> 0x4eecfd0 
004eecfbc 	adrp	x0, #89141248 ; -> 0xa3ef000 
004eecfc0 	ldr	x0, [x0, #3328]
004eecfc4 	bl	#-9815396 ; -> 0x4590a60 
004eecfc8 	mov	w8, #1
004eecfcc 	strb	w8, [x25, #636]
004eecfd0 	ldr	x8, [x24]
004eecfd4 	ldr	x8, [x8, #184]
004eecfd8 	ldr	x8, [x8]
004eecfdc 	cbz	x8, #2668 ; -> 0x4eeda48 
004eecfe0 	ldr	x8, [x8, #104]
004eecfe4 	cbz	x8, #2660 ; -> 0x4eeda48 
004eecfe8 	add	x0, sp, #2096
004eecfec 	add	x1, x8, #1072
004eecff0 	mov	w2, #72
004eecff4 	bl	#82307324 ; -> 0x9d6b8f0 
004eecff8 	add	x0, sp, #2096
004eecffc 	mov	x1, xzr
004eed000 	bl	#-3781336 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed004 	mov	w8, #1120403456
004eed008 	scvtf	s2, w23
004eed00c 	mov	x1, xzr
004eed010 	fmov	s1, w8
004eed014 	mov	w8, #2139095040
004eed018 	fadd	s1, s8, s1
004eed01c 	fadd	s1, s1, s2
004eed020 	fadd	s1, s1, s9
004eed024 	fadd	s0, s1, s0
004eed028 	fmov	s1, w8
004eed02c 	mov	x8, #-9223372036854775808
004eed030 	fcvtzs	x9, s0
004eed034 	fcmp	s0, s1
004eed038 	csel	x0, x8, x9, eq
004eed03c 	bl	#69794016 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed040 	mov	x2, x0
004eed044 	mov	x3, x1
004eed048 	mov	x0, x21
004eed04c 	mov	x1, x22
004eed050 	mov	x4, xzr
004eed054 	bl	#69785584 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed058 	mov	x21, x0
004eed05c 	mov	x22, x1
004eed060 	mov	w0, #100
004eed064 	mov	x1, xzr
004eed068 	bl	#69795644 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed06c 	mov	x2, x0
004eed070 	mov	x3, x1
004eed074 	mov	x0, x21
004eed078 	mov	x1, x22
004eed07c 	mov	x4, xzr
004eed080 	bl	#69786040 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed084 	mov	x21, x0
004eed088 	mov	x22, x1
004eed08c 	tbz	w20, #0, #212 ; -> 0x4eed160 
004eed090 	ldr	x0, [x28]
004eed094 	ldr	w8, [x0, #228]
004eed098 	cbnz	w8, #12 ; -> 0x4eed0a4 
004eed09c 	bl	#-9815228 ; -> 0x4590be0 
004eed0a0 	ldr	x0, [x28]
004eed0a4 	ldr	x8, [x0, #184]
004eed0a8 	ldr	x0, [x8]
004eed0ac 	cbz	x0, #2460 ; -> 0x4eeda48 
004eed0b0 	add	x8, sp, #2600
004eed0b4 	mov	x1, xzr
004eed0b8 	bl	#-1688320 ; -> 0x4d50db8 DatabaseManager::get_SkillEffectFireDmgBuff
004eed0bc 	add	x0, sp, #2024
004eed0c0 	add	x1, sp, #2600
004eed0c4 	mov	w2, #72
004eed0c8 	bl	#82307112 ; -> 0x9d6b8f0 
004eed0cc 	add	x0, sp, #2024
004eed0d0 	mov	x1, xzr
004eed0d4 	bl	#-3781548 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed0d8 	ldr	x0, [x27]
004eed0dc 	fmov	s8, s0
004eed0e0 	ldr	w8, [x0, #228]
004eed0e4 	cbnz	w8, #8 ; -> 0x4eed0ec 
004eed0e8 	bl	#-9815304 ; -> 0x4590be0 
004eed0ec 	mov	w9, #2139095040
004eed0f0 	fcvtzs	w8, s8
004eed0f4 	mov	x1, xzr
004eed0f8 	fmov	s0, w9
004eed0fc 	mov	w9, #100
004eed100 	movk	w9, #32768, lsl #16
004eed104 	fcmp	s8, s0
004eed108 	add	w8, w8, #100
004eed10c 	csel	w0, w9, w8, eq
004eed110 	bl	#69795476 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed114 	mov	x2, x0
004eed118 	mov	x3, x1
004eed11c 	mov	x0, x21
004eed120 	mov	x1, x22
004eed124 	mov	x4, xzr
004eed128 	bl	#69785372 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed12c 	mov	x20, x0
004eed130 	mov	x21, x1
004eed134 	mov	w0, #100
004eed138 	mov	x1, xzr
004eed13c 	bl	#69795432 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed140 	mov	x2, x0
004eed144 	mov	x3, x1
004eed148 	mov	x0, x20
004eed14c 	mov	x1, x21
004eed150 	mov	x4, xzr
004eed154 	bl	#69785828 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed158 	mov	x21, x0
004eed15c 	mov	x22, x1
004eed160 	ldrb	w8, [x25, #636]
004eed164 	cbnz	w8, #24 ; -> 0x4eed17c 
004eed168 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed16c 	ldr	x0, [x0, #3328]
004eed170 	bl	#-9815824 ; -> 0x4590a60 
004eed174 	mov	w8, #1
004eed178 	strb	w8, [x25, #636]
004eed17c 	ldr	x8, [x24]
004eed180 	ldr	x8, [x8, #184]
004eed184 	ldr	x0, [x8]
004eed188 	cbz	x0, #2240 ; -> 0x4eeda48 
004eed18c 	mov	x1, xzr
004eed190 	bl	#1390024 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eed194 	tbz	w0, #0, #1276 ; -> 0x4eed690 
004eed198 	ldrb	w8, [x25, #636]
004eed19c 	cbnz	w8, #24 ; -> 0x4eed1b4 
004eed1a0 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed1a4 	ldr	x0, [x0, #3328]
004eed1a8 	bl	#-9815880 ; -> 0x4590a60 
004eed1ac 	mov	w8, #1
004eed1b0 	strb	w8, [x25, #636]
004eed1b4 	ldr	x8, [x24]
004eed1b8 	ldr	x8, [x8, #184]
004eed1bc 	ldr	x8, [x8]
004eed1c0 	cbz	x8, #2184 ; -> 0x4eeda48 
004eed1c4 	ldr	x8, [x8, #96]
004eed1c8 	cbz	x8, #2176 ; -> 0x4eeda48 
004eed1cc 	add	x0, sp, #1952
004eed1d0 	add	x1, x8, #1272
004eed1d4 	mov	w2, #72
004eed1d8 	bl	#82306840 ; -> 0x9d6b8f0 
004eed1dc 	add	x0, sp, #1952
004eed1e0 	b	#1056 ; -> 0x4eed600 
004eed1e4 	adrp	x28, #89112576 ; -> 0xa3e9000 
004eed1e8 	ldr	x28, [x28, #1384]
004eed1ec 	ldr	x0, [x28]
004eed1f0 	ldr	w8, [x0, #228]
004eed1f4 	cbnz	w8, #12 ; -> 0x4eed200 
004eed1f8 	bl	#-9815576 ; -> 0x4590be0 
004eed1fc 	ldr	x0, [x28]
004eed200 	ldr	x8, [x0, #184]
004eed204 	ldr	x0, [x8]
004eed208 	cbz	x0, #2112 ; -> 0x4eeda48 
004eed20c 	add	x8, sp, #2600
004eed210 	mov	x1, xzr
004eed214 	bl	#-1690964 ; -> 0x4d504c0 DatabaseManager::get_WindSkillDmg
004eed218 	add	x0, sp, #1304
004eed21c 	add	x1, sp, #2600
004eed220 	mov	w2, #72
004eed224 	bl	#82306764 ; -> 0x9d6b8f0 
004eed228 	add	x0, sp, #1304
004eed22c 	mov	x1, xzr
004eed230 	bl	#-3781896 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed234 	ldr	x8, [x28]
004eed238 	ldr	x8, [x8, #184]
004eed23c 	ldr	x8, [x8]
004eed240 	cbz	x8, #2056 ; -> 0x4eeda48 
004eed244 	mov	w9, #6152
004eed248 	add	x0, sp, #1232
004eed24c 	mov	w2, #72
004eed250 	add	x1, x8, x9
004eed254 	fmov	s9, s0
004eed258 	bl	#82306712 ; -> 0x9d6b8f0 
004eed25c 	add	x0, sp, #1232
004eed260 	mov	x1, xzr
004eed264 	bl	#-3781948 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed268 	adrp	x27, #89112576 ; -> 0xa3e9000 
004eed26c 	fmov	s10, s0
004eed270 	ldr	x27, [x27, #3552]
004eed274 	ldr	x0, [x27]
004eed278 	ldr	w8, [x0, #228]
004eed27c 	cbnz	w8, #8 ; -> 0x4eed284 
004eed280 	bl	#-9815712 ; -> 0x4590be0 
004eed284 	mov	w8, #1120403456
004eed288 	mov	x1, xzr
004eed28c 	fmov	s0, w8
004eed290 	mov	w8, #2139095040
004eed294 	fadd	s1, s9, s0
004eed298 	fadd	s0, s10, s0
004eed29c 	fmul	s1, s1, s8
004eed2a0 	fmul	s0, s1, s0
004eed2a4 	fmov	s1, w8
004eed2a8 	mov	x8, #-9223372036854775808
004eed2ac 	fcvtzs	x9, s0
004eed2b0 	fcmp	s0, s1
004eed2b4 	csel	x0, x8, x9, eq
004eed2b8 	bl	#69793380 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed2bc 	mov	x2, x0
004eed2c0 	mov	x3, x1
004eed2c4 	mov	x0, x21
004eed2c8 	mov	x1, x22
004eed2cc 	mov	x4, xzr
004eed2d0 	bl	#69784948 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed2d4 	mov	x21, x0
004eed2d8 	mov	w0, #16960
004eed2dc 	mov	x22, x1
004eed2e0 	movk	w0, #15, lsl #16
004eed2e4 	mov	x1, xzr
004eed2e8 	bl	#69795004 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed2ec 	mov	x2, x0
004eed2f0 	mov	x3, x1
004eed2f4 	mov	x0, x21
004eed2f8 	mov	x1, x22
004eed2fc 	mov	x4, xzr
004eed300 	bl	#69785400 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed304 	ldr	x8, [x28]
004eed308 	mov	x21, x0
004eed30c 	ldr	x8, [x8, #184]
004eed310 	ldr	x0, [x8]
004eed314 	cbz	x0, #1844 ; -> 0x4eeda48 
004eed318 	mov	x22, x1
004eed31c 	add	x8, sp, #2384
004eed320 	mov	x1, xzr
004eed324 	bl	#-1697036 ; -> 0x4d4ee18 DatabaseManager::get_WindDamageOption_BlackOrb
004eed328 	add	x0, sp, #1160
004eed32c 	add	x1, sp, #2384
004eed330 	mov	w2, #72
004eed334 	bl	#82306492 ; -> 0x9d6b8f0 
004eed338 	add	x0, sp, #1160
004eed33c 	mov	x1, xzr
004eed340 	bl	#-3782168 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed344 	ldr	x8, [x28]
004eed348 	ldr	x8, [x8, #184]
004eed34c 	ldr	x8, [x8]
004eed350 	cbz	x8, #1784 ; -> 0x4eeda48 
004eed354 	mov	w9, #20952
004eed358 	fmov	s8, s0
004eed35c 	add	x0, sp, #1088
004eed360 	add	x8, x8, x9
004eed364 	mov	x1, xzr
004eed368 	ldp	q0, q1, [x8]
004eed36c 	stp	q0, q1, [x26, #576]
004eed370 	ldp	q0, q2, [x8, #32]
004eed374 	stp	q0, q2, [x26, #608]
004eed378 	bl	#-3780648 ; -> 0x4b52350 SilentInt::op_Implicit
004eed37c 	ldrb	w8, [x25, #636]
004eed380 	mov	w23, w0
004eed384 	cbnz	w8, #24 ; -> 0x4eed39c 
004eed388 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed38c 	ldr	x0, [x0, #3328]
004eed390 	bl	#-9816368 ; -> 0x4590a60 
004eed394 	mov	w8, #1
004eed398 	strb	w8, [x25, #636]
004eed39c 	ldr	x8, [x24]
004eed3a0 	ldr	x8, [x8, #184]
004eed3a4 	ldr	x8, [x8]
004eed3a8 	cbz	x8, #1696 ; -> 0x4eeda48 
004eed3ac 	ldr	x8, [x8, #104]
004eed3b0 	cbz	x8, #1688 ; -> 0x4eeda48 
004eed3b4 	add	x0, sp, #1016
004eed3b8 	add	x1, x8, #856
004eed3bc 	mov	w2, #72
004eed3c0 	bl	#82306352 ; -> 0x9d6b8f0 
004eed3c4 	add	x0, sp, #1016
004eed3c8 	mov	x1, xzr
004eed3cc 	bl	#-3782308 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed3d0 	fmov	s9, s0
004eed3d4 	ldrb	w8, [x25, #636]
004eed3d8 	cbnz	w8, #24 ; -> 0x4eed3f0 
004eed3dc 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed3e0 	ldr	x0, [x0, #3328]
004eed3e4 	bl	#-9816452 ; -> 0x4590a60 
004eed3e8 	mov	w8, #1
004eed3ec 	strb	w8, [x25, #636]
004eed3f0 	ldr	x8, [x24]
004eed3f4 	ldr	x8, [x8, #184]
004eed3f8 	ldr	x8, [x8]
004eed3fc 	cbz	x8, #1612 ; -> 0x4eeda48 
004eed400 	ldr	x8, [x8, #104]
004eed404 	cbz	x8, #1604 ; -> 0x4eeda48 
004eed408 	add	x0, sp, #944
004eed40c 	add	x1, x8, #1072
004eed410 	mov	w2, #72
004eed414 	bl	#82306268 ; -> 0x9d6b8f0 
004eed418 	add	x0, sp, #944
004eed41c 	mov	x1, xzr
004eed420 	bl	#-3782392 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed424 	mov	w8, #1120403456
004eed428 	scvtf	s2, w23
004eed42c 	mov	x1, xzr
004eed430 	fmov	s1, w8
004eed434 	mov	w8, #2139095040
004eed438 	fadd	s1, s8, s1
004eed43c 	fadd	s1, s1, s2
004eed440 	fadd	s1, s1, s9
004eed444 	fadd	s0, s1, s0
004eed448 	fmov	s1, w8
004eed44c 	mov	x8, #-9223372036854775808
004eed450 	fcvtzs	x9, s0
004eed454 	fcmp	s0, s1
004eed458 	csel	x0, x8, x9, eq
004eed45c 	bl	#69792960 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed460 	mov	x2, x0
004eed464 	mov	x3, x1
004eed468 	mov	x0, x21
004eed46c 	mov	x1, x22
004eed470 	mov	x4, xzr
004eed474 	bl	#69784528 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed478 	mov	x21, x0
004eed47c 	mov	x22, x1
004eed480 	mov	w0, #100
004eed484 	mov	x1, xzr
004eed488 	bl	#69794588 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed48c 	mov	x2, x0
004eed490 	mov	x3, x1
004eed494 	mov	x0, x21
004eed498 	mov	x1, x22
004eed49c 	mov	x4, xzr
004eed4a0 	bl	#69784984 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed4a4 	mov	x21, x0
004eed4a8 	mov	x22, x1
004eed4ac 	tbz	w20, #0, #212 ; -> 0x4eed580 
004eed4b0 	ldr	x0, [x28]
004eed4b4 	ldr	w8, [x0, #228]
004eed4b8 	cbnz	w8, #12 ; -> 0x4eed4c4 
004eed4bc 	bl	#-9816284 ; -> 0x4590be0 
004eed4c0 	ldr	x0, [x28]
004eed4c4 	ldr	x8, [x0, #184]
004eed4c8 	ldr	x0, [x8]
004eed4cc 	cbz	x0, #1404 ; -> 0x4eeda48 
004eed4d0 	add	x8, sp, #2600
004eed4d4 	mov	x1, xzr
004eed4d8 	bl	#-1688392 ; -> 0x4d51190 DatabaseManager::get_SkillEffectWindDmgBuff
004eed4dc 	add	x0, sp, #872
004eed4e0 	add	x1, sp, #2600
004eed4e4 	mov	w2, #72
004eed4e8 	bl	#82306056 ; -> 0x9d6b8f0 
004eed4ec 	add	x0, sp, #872
004eed4f0 	mov	x1, xzr
004eed4f4 	bl	#-3782604 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed4f8 	ldr	x0, [x27]
004eed4fc 	fmov	s8, s0
004eed500 	ldr	w8, [x0, #228]
004eed504 	cbnz	w8, #8 ; -> 0x4eed50c 
004eed508 	bl	#-9816360 ; -> 0x4590be0 
004eed50c 	mov	w9, #2139095040
004eed510 	fcvtzs	w8, s8
004eed514 	mov	x1, xzr
004eed518 	fmov	s0, w9
004eed51c 	mov	w9, #100
004eed520 	movk	w9, #32768, lsl #16
004eed524 	fcmp	s8, s0
004eed528 	add	w8, w8, #100
004eed52c 	csel	w0, w9, w8, eq
004eed530 	bl	#69794420 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed534 	mov	x2, x0
004eed538 	mov	x3, x1
004eed53c 	mov	x0, x21
004eed540 	mov	x1, x22
004eed544 	mov	x4, xzr
004eed548 	bl	#69784316 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed54c 	mov	x20, x0
004eed550 	mov	x21, x1
004eed554 	mov	w0, #100
004eed558 	mov	x1, xzr
004eed55c 	bl	#69794376 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed560 	mov	x2, x0
004eed564 	mov	x3, x1
004eed568 	mov	x0, x20
004eed56c 	mov	x1, x21
004eed570 	mov	x4, xzr
004eed574 	bl	#69784772 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed578 	mov	x21, x0
004eed57c 	mov	x22, x1
004eed580 	ldrb	w8, [x25, #636]
004eed584 	cbnz	w8, #24 ; -> 0x4eed59c 
004eed588 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed58c 	ldr	x0, [x0, #3328]
004eed590 	bl	#-9816880 ; -> 0x4590a60 
004eed594 	mov	w8, #1
004eed598 	strb	w8, [x25, #636]
004eed59c 	ldr	x8, [x24]
004eed5a0 	ldr	x8, [x8, #184]
004eed5a4 	ldr	x0, [x8]
004eed5a8 	cbz	x0, #1184 ; -> 0x4eeda48 
004eed5ac 	mov	x1, xzr
004eed5b0 	bl	#1388968 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eed5b4 	tbz	w0, #0, #220 ; -> 0x4eed690 
004eed5b8 	ldrb	w8, [x25, #636]
004eed5bc 	cbnz	w8, #24 ; -> 0x4eed5d4 
004eed5c0 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed5c4 	ldr	x0, [x0, #3328]
004eed5c8 	bl	#-9816936 ; -> 0x4590a60 
004eed5cc 	mov	w8, #1
004eed5d0 	strb	w8, [x25, #636]
004eed5d4 	ldr	x8, [x24]
004eed5d8 	ldr	x8, [x8, #184]
004eed5dc 	ldr	x8, [x8]
004eed5e0 	cbz	x8, #1128 ; -> 0x4eeda48 
004eed5e4 	ldr	x8, [x8, #96]
004eed5e8 	cbz	x8, #1120 ; -> 0x4eeda48 
004eed5ec 	add	x0, sp, #800
004eed5f0 	add	x1, x8, #1416
004eed5f4 	mov	w2, #72
004eed5f8 	bl	#82305784 ; -> 0x9d6b8f0 
004eed5fc 	add	x0, sp, #800
004eed600 	mov	x1, xzr
004eed604 	bl	#-3782876 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed608 	ldr	x0, [x27]
004eed60c 	fmov	s8, s0
004eed610 	ldr	w8, [x0, #228]
004eed614 	cbnz	w8, #8 ; -> 0x4eed61c 
004eed618 	bl	#-9816632 ; -> 0x4590be0 
004eed61c 	mov	w9, #2139095040
004eed620 	fcvtzs	w8, s8
004eed624 	mov	x1, xzr
004eed628 	fmov	s0, w9
004eed62c 	mov	w9, #100
004eed630 	movk	w9, #32768, lsl #16
004eed634 	fcmp	s8, s0
004eed638 	add	w8, w8, #100
004eed63c 	csel	w0, w9, w8, eq
004eed640 	bl	#69794148 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed644 	mov	x2, x0
004eed648 	mov	x3, x1
004eed64c 	mov	x0, x21
004eed650 	mov	x1, x22
004eed654 	mov	x4, xzr
004eed658 	bl	#69784044 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed65c 	mov	x20, x0
004eed660 	mov	x21, x1
004eed664 	mov	w0, #100
004eed668 	mov	x1, xzr
004eed66c 	bl	#69794104 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed670 	mov	x2, x0
004eed674 	mov	x3, x1
004eed678 	mov	x0, x20
004eed67c 	mov	x1, x21
004eed680 	mov	x4, xzr
004eed684 	bl	#69784500 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed688 	mov	x21, x0
004eed68c 	mov	x22, x1
004eed690 	adrp	x20, #89112576 ; -> 0xa3e9000 
004eed694 	ldr	x20, [x20, #1384]
004eed698 	ldr	x0, [x20]
004eed69c 	ldr	w8, [x0, #228]
004eed6a0 	cbnz	w8, #12 ; -> 0x4eed6ac 
004eed6a4 	bl	#-9816772 ; -> 0x4590be0 
004eed6a8 	ldr	x0, [x20]
004eed6ac 	ldr	x8, [x0, #184]
004eed6b0 	ldr	x0, [x8]
004eed6b4 	cbz	x0, #916 ; -> 0x4eeda48 
004eed6b8 	add	x8, sp, #2600
004eed6bc 	mov	x1, xzr
004eed6c0 	bl	#-1687896 ; -> 0x4d51568 DatabaseManager::get_SkillValueDemonAltar
004eed6c4 	add	x0, sp, #152
004eed6c8 	add	x1, sp, #2600
004eed6cc 	mov	w2, #72
004eed6d0 	bl	#82305568 ; -> 0x9d6b8f0 
004eed6d4 	add	x0, sp, #152
004eed6d8 	mov	x1, xzr
004eed6dc 	bl	#-3783092 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed6e0 	mov	x0, xzr
004eed6e4 	fmov	s8, s0
004eed6e8 	bl	#5277428 ; -> 0x53f5ddc WishDataManager::get_Instance
004eed6ec 	cbz	x0, #860 ; -> 0x4eeda48 
004eed6f0 	mov	w1, #9
004eed6f4 	mov	x2, xzr
004eed6f8 	bl	#5287216 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004eed6fc 	adrp	x23, #89112576 ; -> 0xa3e9000 
004eed700 	fmov	s9, s0
004eed704 	ldr	x23, [x23, #3552]
004eed708 	ldr	x0, [x23]
004eed70c 	ldr	w8, [x0, #228]
004eed710 	cbnz	w8, #8 ; -> 0x4eed718 
004eed714 	bl	#-9816884 ; -> 0x4590be0 
004eed718 	mov	w8, #1120403456
004eed71c 	mov	x1, xzr
004eed720 	fmov	s0, w8
004eed724 	mov	w8, #2139095040
004eed728 	fmov	s1, w8
004eed72c 	mov	x8, #-9223372036854775808
004eed730 	fadd	s0, s8, s0
004eed734 	fadd	s0, s0, s9
004eed738 	fcvtzs	x9, s0
004eed73c 	fcmp	s0, s1
004eed740 	csel	x0, x8, x9, eq
004eed744 	bl	#69792216 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed748 	mov	x2, x0
004eed74c 	mov	x3, x1
004eed750 	mov	x0, x21
004eed754 	mov	x1, x22
004eed758 	mov	x4, xzr
004eed75c 	bl	#69783784 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed760 	mov	x20, x0
004eed764 	mov	x21, x1
004eed768 	mov	w0, #100
004eed76c 	mov	x1, xzr
004eed770 	bl	#69793844 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed774 	mov	x2, x0
004eed778 	mov	x3, x1
004eed77c 	mov	x0, x20
004eed780 	mov	x1, x21
004eed784 	mov	x4, xzr
004eed788 	bl	#69784240 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed78c 	ldrb	w8, [x25, #636]
004eed790 	mov	x20, x0
004eed794 	mov	x21, x1
004eed798 	cbnz	w8, #24 ; -> 0x4eed7b0 
004eed79c 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed7a0 	ldr	x0, [x0, #3328]
004eed7a4 	bl	#-9817412 ; -> 0x4590a60 
004eed7a8 	mov	w8, #1
004eed7ac 	strb	w8, [x25, #636]
004eed7b0 	ldr	x8, [x24]
004eed7b4 	ldr	x8, [x8, #184]
004eed7b8 	ldr	x0, [x8]
004eed7bc 	cbz	x0, #652 ; -> 0x4eeda48 
004eed7c0 	mov	x1, xzr
004eed7c4 	bl	#1388436 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eed7c8 	tbz	w0, #0, #424 ; -> 0x4eed970 
004eed7cc 	ldrb	w8, [x25, #636]
004eed7d0 	cbnz	w8, #24 ; -> 0x4eed7e8 
004eed7d4 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed7d8 	ldr	x0, [x0, #3328]
004eed7dc 	bl	#-9817468 ; -> 0x4590a60 
004eed7e0 	mov	w8, #1
004eed7e4 	strb	w8, [x25, #636]
004eed7e8 	ldr	x8, [x24]
004eed7ec 	ldr	x8, [x8, #184]
004eed7f0 	ldr	x8, [x8]
004eed7f4 	cbz	x8, #596 ; -> 0x4eeda48 
004eed7f8 	ldr	x8, [x8, #48]
004eed7fc 	cbz	x8, #588 ; -> 0x4eeda48 
004eed800 	add	x0, sp, #80
004eed804 	add	x1, x8, #752
004eed808 	mov	w2, #72
004eed80c 	bl	#82305252 ; -> 0x9d6b8f0 
004eed810 	add	x0, sp, #80
004eed814 	mov	x1, xzr
004eed818 	bl	#-3783408 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed81c 	ldr	x0, [x23]
004eed820 	fmov	s8, s0
004eed824 	ldr	w8, [x0, #228]
004eed828 	cbnz	w8, #8 ; -> 0x4eed830 
004eed82c 	bl	#-9817164 ; -> 0x4590be0 
004eed830 	mov	w8, #1120403456
004eed834 	mov	x1, xzr
004eed838 	fmov	s0, w8
004eed83c 	mov	w8, #2139095040
004eed840 	fmov	s1, w8
004eed844 	mov	x8, #-9223372036854775808
004eed848 	fadd	s0, s8, s0
004eed84c 	fcvtzs	x9, s0
004eed850 	fcmp	s0, s1
004eed854 	csel	x0, x8, x9, eq
004eed858 	bl	#69791940 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed85c 	mov	x2, x0
004eed860 	mov	x3, x1
004eed864 	mov	x0, x20
004eed868 	mov	x1, x21
004eed86c 	mov	x4, xzr
004eed870 	bl	#69783508 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed874 	mov	x20, x0
004eed878 	mov	x21, x1
004eed87c 	mov	w0, #100
004eed880 	mov	x1, xzr
004eed884 	bl	#69793568 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed888 	mov	x2, x0
004eed88c 	mov	x3, x1
004eed890 	mov	x0, x20
004eed894 	mov	x1, x21
004eed898 	mov	x4, xzr
004eed89c 	bl	#69783964 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed8a0 	ldrb	w8, [x25, #636]
004eed8a4 	mov	x20, x0
004eed8a8 	mov	x21, x1
004eed8ac 	cbnz	w8, #24 ; -> 0x4eed8c4 
004eed8b0 	adrp	x0, #89137152 ; -> 0xa3ef000 
004eed8b4 	ldr	x0, [x0, #3328]
004eed8b8 	bl	#-9817688 ; -> 0x4590a60 
004eed8bc 	mov	w8, #1
004eed8c0 	strb	w8, [x25, #636]
004eed8c4 	ldr	x8, [x24]
004eed8c8 	ldr	x8, [x8, #184]
004eed8cc 	ldr	x8, [x8]
004eed8d0 	cbz	x8, #376 ; -> 0x4eeda48 
004eed8d4 	ldr	x8, [x8, #96]
004eed8d8 	cbz	x8, #368 ; -> 0x4eeda48 
004eed8dc 	add	x0, sp, #8
004eed8e0 	add	x1, x8, #1056
004eed8e4 	mov	w2, #72
004eed8e8 	bl	#82305032 ; -> 0x9d6b8f0 
004eed8ec 	add	x0, sp, #8
004eed8f0 	mov	x1, xzr
004eed8f4 	bl	#-3783628 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eed8f8 	mov	w8, #1120403456
004eed8fc 	mov	x1, xzr
004eed900 	fmov	s1, w8
004eed904 	mov	w8, #2139095040
004eed908 	fadd	s0, s0, s1
004eed90c 	fmov	s1, w8
004eed910 	mov	x8, #-9223372036854775808
004eed914 	fcvtzs	x9, s0
004eed918 	fcmp	s0, s1
004eed91c 	csel	x0, x8, x9, eq
004eed920 	bl	#69791740 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eed924 	mov	x2, x0
004eed928 	mov	x3, x1
004eed92c 	mov	x0, x20
004eed930 	mov	x1, x21
004eed934 	mov	x4, xzr
004eed938 	bl	#69783308 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed93c 	mov	x20, x0
004eed940 	mov	x21, x1
004eed944 	mov	w0, #100
004eed948 	mov	x1, xzr
004eed94c 	bl	#69793368 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed950 	mov	x2, x0
004eed954 	mov	x3, x1
004eed958 	mov	x0, x20
004eed95c 	mov	x1, x21
004eed960 	mov	x4, xzr
004eed964 	bl	#69783764 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eed968 	mov	x20, x0
004eed96c 	mov	x21, x1
004eed970 	adrp	x22, #89149440 ; -> 0xa3f2000 
004eed974 	ldr	x22, [x22, #552]
004eed978 	ldr	x0, [x22]
004eed97c 	ldr	w8, [x0, #228]
004eed980 	cbnz	w8, #12 ; -> 0x4eed98c 
004eed984 	bl	#-9817508 ; -> 0x4590be0 
004eed988 	ldr	x0, [x22]
004eed98c 	ldr	x8, [x0, #184]
004eed990 	ldr	x0, [x8]
004eed994 	cbz	x0, #180 ; -> 0x4eeda48 
004eed998 	mov	x1, xzr
004eed99c 	bl	#-703048 ; -> 0x4e41f54 GameManager::get_gameMode
004eed9a0 	cmp	w0, #24
004eed9a4 	b.ne	#116 ; -> 0x4eeda18 
004eed9a8 	ldrb	w8, [x19, #1828]
004eed9ac 	cbz	w8, #108 ; -> 0x4eeda18 
004eed9b0 	ldr	x0, [x23]
004eed9b4 	ldr	w8, [x0, #228]
004eed9b8 	cbnz	w8, #8 ; -> 0x4eed9c0 
004eed9bc 	bl	#-9817564 ; -> 0x4590be0 
004eed9c0 	mov	w0, #200
004eed9c4 	mov	x1, xzr
004eed9c8 	bl	#69793244 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed9cc 	mov	x2, x0
004eed9d0 	mov	x3, x1
004eed9d4 	mov	x0, x20
004eed9d8 	mov	x1, x21
004eed9dc 	mov	x4, xzr
004eed9e0 	bl	#69783140 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eed9e4 	mov	x19, x0
004eed9e8 	mov	x20, x1
004eed9ec 	mov	w0, #100
004eed9f0 	mov	x1, xzr
004eed9f4 	bl	#69793200 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eed9f8 	mov	x2, x0
004eed9fc 	mov	x3, x1
004eeda00 	mov	x0, x19
004eeda04 	mov	x1, x20
004eeda08 	mov	x4, xzr
004eeda0c 	bl	#69783596 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eeda10 	mov	x20, x0
004eeda14 	mov	x21, x1
004eeda18 	mov	x0, x20
004eeda1c 	mov	x1, x21
004eeda20 	add	sp, sp, #2768
004eeda24 	ldp	x20, x19, [sp, #112]
004eeda28 	ldp	x22, x21, [sp, #96]
004eeda2c 	ldp	x24, x23, [sp, #80]
004eeda30 	ldp	x26, x25, [sp, #64]
004eeda34 	ldp	x28, x27, [sp, #48]
004eeda38 	ldp	x29, x30, [sp, #32]
004eeda3c 	ldp	d9, d8, [sp, #16]
004eeda40 	ldr	d10, [sp], #128
004eeda44 	ret
004eeda48 	bl	#-9817404 ; -> 0x4590d0c 
