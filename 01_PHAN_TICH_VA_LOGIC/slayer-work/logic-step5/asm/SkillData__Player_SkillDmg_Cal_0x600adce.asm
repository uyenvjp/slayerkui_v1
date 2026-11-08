00530c3a0 	str	d8, [sp, #-80]!
00530c3a4 	str	x29, [sp, #8]
00530c3a8 	stp	x30, x25, [sp, #16]
00530c3ac 	stp	x24, x23, [sp, #32]
00530c3b0 	stp	x22, x21, [sp, #48]
00530c3b4 	stp	x20, x19, [sp, #64]
00530c3b8 	sub	sp, sp, #1136
00530c3bc 	adrp	x21, #93106176 ; -> 0xabd7000 
00530c3c0 	mov	w20, w1
00530c3c4 	mov	x19, x0
00530c3c8 	ldrb	w8, [x21, #1043]
00530c3cc 	tbnz	w8, #0, #60 ; -> 0x530c408 
00530c3d0 	adrp	x0, #84791296 ; -> 0xa3e9000 
00530c3d4 	ldr	x0, [x0, #3552]
00530c3d8 	bl	#-14137720 ; -> 0x4590a60 
00530c3dc 	adrp	x0, #85094400 ; -> 0xa433000 
00530c3e0 	ldr	x0, [x0, #1552]
00530c3e4 	bl	#-14137732 ; -> 0x4590a60 
00530c3e8 	adrp	x0, #84828160 ; -> 0xa3f2000 
00530c3ec 	ldr	x0, [x0, #552]
00530c3f0 	bl	#-14137744 ; -> 0x4590a60 
00530c3f4 	adrp	x0, #84992000 ; -> 0xa41a000 
00530c3f8 	ldr	x0, [x0, #3856]
00530c3fc 	bl	#-14137756 ; -> 0x4590a60 
00530c400 	mov	w8, #1
00530c404 	strb	w8, [x21, #1043]
00530c408 	movi	v0.2d, #0000000000000000
00530c40c 	mov	w0, #43286
00530c410 	mov	x1, xzr
00530c414 	str	xzr, [sp, #1080]
00530c418 	str	q0, [sp, #1120]
00530c41c 	str	q0, [sp, #1104]
00530c420 	str	q0, [sp, #1088]
00530c424 	bl	#-7097984 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530c428 	tbz	w0, #0, #48 ; -> 0x530c458 
00530c42c 	mov	w0, #43286
00530c430 	mov	x1, xzr
00530c434 	bl	#-7097820 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530c438 	cbz	x0, #3308 ; -> 0x530d124 
00530c43c 	mov	x1, x19
00530c440 	mov	w2, w20
00530c444 	mov	x3, xzr
00530c448 	bl	#-7329168 ; -> 0x4c0eeb8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2828
00530c44c 	mov	x20, x0
00530c450 	mov	x21, x1
00530c454 	b	#3240 ; -> 0x530d0fc 
00530c458 	adrp	x21, #93073408 ; -> 0xabcf000 
00530c45c 	ldrb	w8, [x21, #635]
00530c460 	cbnz	w8, #24 ; -> 0x530c478 
00530c464 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530c468 	ldr	x0, [x0, #3248]
00530c46c 	bl	#-14137868 ; -> 0x4590a60 
00530c470 	mov	w8, #1
00530c474 	strb	w8, [x21, #635]
00530c478 	adrp	x8, #84815872 ; -> 0xa3ef000 
00530c47c 	ldr	x8, [x8, #3248]
00530c480 	ldr	x8, [x8]
00530c484 	ldr	x8, [x8, #184]
00530c488 	ldr	x8, [x8]
00530c48c 	cbz	x8, #3224 ; -> 0x530d124 
00530c490 	ldr	x8, [x8, #88]
00530c494 	cbz	x8, #3216 ; -> 0x530d124 
00530c498 	ldr	x9, [x19, #32]
00530c49c 	cbz	x9, #3208 ; -> 0x530d124 
00530c4a0 	ldr	x21, [x8, #24]
00530c4a4 	ldr	w22, [x9, #16]
00530c4a8 	add	x0, x19, #704
00530c4ac 	mov	x1, xzr
00530c4b0 	bl	#-8105404 ; -> 0x4b516f4 SilentFloat::get_Value
00530c4b4 	add	x8, sp, #856
00530c4b8 	mov	x0, xzr
00530c4bc 	bl	#-12780836 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530c4c0 	cbz	x21, #3172 ; -> 0x530d124 
00530c4c4 	add	x23, sp, #856
00530c4c8 	add	x8, sp, #1032
00530c4cc 	add	x2, sp, #976
00530c4d0 	ldp	q0, q1, [x23]
00530c4d4 	ldr	q2, [x23, #32]
00530c4d8 	mov	x0, x21
00530c4dc 	mov	w1, w22
00530c4e0 	mov	x3, xzr
00530c4e4 	str	q2, [sp, #1008]
00530c4e8 	stp	q0, q1, [sp, #976]
00530c4ec 	bl	#-1064332 ; -> 0x5208760 GuildManager_Quest_FieldEffect::ApplySkillValue
00530c4f0 	adrp	x21, #84992000 ; -> 0xa41a000 
00530c4f4 	ldr	x21, [x21, #3856]
00530c4f8 	ldp	q0, q1, [x23, #176]
00530c4fc 	ldr	q2, [x23, #208]
00530c500 	ldr	x0, [x21]
00530c504 	str	q0, [sp, #1088]
00530c508 	ldr	w8, [x0, #228]
00530c50c 	str	q1, [sp, #1104]
00530c510 	str	q2, [sp, #1120]
00530c514 	cbnz	w8, #12 ; -> 0x530c520 
00530c518 	bl	#-14137656 ; -> 0x4590be0 
00530c51c 	ldr	x0, [x21]
00530c520 	ldr	x8, [x19, #32]
00530c524 	cbz	x8, #3072 ; -> 0x530d124 
00530c528 	ldr	x9, [x0, #184]
00530c52c 	ldr	q0, [sp, #1088]
00530c530 	add	x0, sp, #928
00530c534 	ldr	q1, [sp, #1104]
00530c538 	ldr	q2, [sp, #1120]
00530c53c 	mov	x1, xzr
00530c540 	ldr	x21, [x9]
00530c544 	ldr	w22, [x8, #148]
00530c548 	stp	q0, q1, [sp, #928]
00530c54c 	str	q2, [sp, #960]
00530c550 	bl	#-12750916 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530c554 	cbz	x21, #3024 ; -> 0x530d124 
00530c558 	mov	x0, x21
00530c55c 	mov	w1, w20
00530c560 	mov	w2, w22
00530c564 	mov	w3, #1
00530c568 	mov	x4, xzr
00530c56c 	mov	w22, #1
00530c570 	bl	#-4325816 ; -> 0x4eec3b8 PlayerBase::CalculateSkillDmg
00530c574 	adrp	x23, #93089792 ; -> 0xabd3000 
00530c578 	mov	x20, x0
00530c57c 	mov	x21, x1
00530c580 	ldrb	w8, [x23, #1983]
00530c584 	cbnz	w8, #20 ; -> 0x530c598 
00530c588 	adrp	x0, #84975616 ; -> 0xa416000 
00530c58c 	ldr	x0, [x0, #296]
00530c590 	bl	#-14138160 ; -> 0x4590a60 
00530c594 	strb	w22, [x23, #1983]
00530c598 	adrp	x8, #84975616 ; -> 0xa416000 
00530c59c 	ldr	x8, [x8, #296]
00530c5a0 	ldr	x8, [x8]
00530c5a4 	ldr	x8, [x8, #184]
00530c5a8 	ldr	x8, [x8]
00530c5ac 	cbz	x8, #2936 ; -> 0x530d124 
00530c5b0 	ldr	x0, [x8, #32]
00530c5b4 	cbz	x0, #2928 ; -> 0x530d124 
00530c5b8 	mov	x1, xzr
00530c5bc 	bl	#28580 ; -> 0x5313560 SkillGrindingDataManager::get_SkillGrindingOptionValue_Dic
00530c5c0 	ldr	x8, [x19, #32]
00530c5c4 	cbz	x8, #2912 ; -> 0x530d124 
00530c5c8 	cbz	x0, #2908 ; -> 0x530d124 
00530c5cc 	adrp	x9, #85094400 ; -> 0xa433000 
00530c5d0 	add	x2, sp, #1080
00530c5d4 	ldr	x9, [x9, #1552]
00530c5d8 	ldr	w1, [x8, #16]
00530c5dc 	ldr	x3, [x9]
00530c5e0 	bl	#47504688 ; -> 0x805a310 
00530c5e4 	tbz	w0, #0, #244 ; -> 0x530c6d8 
00530c5e8 	ldr	x0, [sp, #1080]
00530c5ec 	cbz	x0, #2872 ; -> 0x530d124 
00530c5f0 	add	x8, sp, #856
00530c5f4 	mov	x1, xzr
00530c5f8 	bl	#25308 ; -> 0x53128d4 SkillGrindingOptionValue::get_SkillDamage
00530c5fc 	add	x0, sp, #784
00530c600 	add	x1, sp, #856
00530c604 	mov	w2, #72
00530c608 	bl	#77984488 ; -> 0x9d6b8f0 
00530c60c 	add	x0, sp, #784
00530c610 	mov	x1, xzr
00530c614 	bl	#-8104172 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530c618 	adrp	x8, #84791296 ; -> 0xa3e9000 
00530c61c 	fmov	s8, s0
00530c620 	ldr	x8, [x8, #3552]
00530c624 	ldr	x0, [x8]
00530c628 	ldr	w8, [x0, #228]
00530c62c 	cbnz	w8, #8 ; -> 0x530c634 
00530c630 	bl	#-14137936 ; -> 0x4590be0 
00530c634 	mov	w8, #1120403456
00530c638 	mov	x1, xzr
00530c63c 	fmov	s0, w8
00530c640 	mov	w8, #2139095040
00530c644 	fmov	s1, w8
00530c648 	mov	x8, #-9223372036854775808
00530c64c 	fadd	s0, s8, s0
00530c650 	fcvtzs	x9, s0
00530c654 	fcmp	s0, s1
00530c658 	csel	x0, x8, x9, eq
00530c65c 	bl	#65471168 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530c660 	mov	x2, x0
00530c664 	mov	x3, x1
00530c668 	mov	x0, x20
00530c66c 	mov	x1, x21
00530c670 	mov	x4, xzr
00530c674 	bl	#65462736 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c678 	mov	x20, x0
00530c67c 	mov	x21, x1
00530c680 	mov	w0, #100
00530c684 	mov	x1, xzr
00530c688 	bl	#65472796 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c68c 	mov	x2, x0
00530c690 	mov	x3, x1
00530c694 	mov	x0, x20
00530c698 	mov	x1, x21
00530c69c 	mov	x4, xzr
00530c6a0 	bl	#65462692 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c6a4 	mov	x20, x0
00530c6a8 	mov	x21, x1
00530c6ac 	mov	w0, #10000
00530c6b0 	mov	x1, xzr
00530c6b4 	bl	#65472752 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c6b8 	mov	x2, x0
00530c6bc 	mov	x3, x1
00530c6c0 	mov	x0, x20
00530c6c4 	mov	x1, x21
00530c6c8 	mov	x4, xzr
00530c6cc 	bl	#65463148 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530c6d0 	mov	x20, x0
00530c6d4 	mov	x21, x1
00530c6d8 	adrp	x22, #84828160 ; -> 0xa3f2000 
00530c6dc 	ldr	x22, [x22, #552]
00530c6e0 	ldr	x0, [x22]
00530c6e4 	ldr	w8, [x0, #228]
00530c6e8 	cbnz	w8, #12 ; -> 0x530c6f4 
00530c6ec 	bl	#-14138124 ; -> 0x4590be0 
00530c6f0 	ldr	x0, [x22]
00530c6f4 	ldr	x8, [x0, #184]
00530c6f8 	ldr	x0, [x8]
00530c6fc 	cbz	x0, #2600 ; -> 0x530d124 
00530c700 	mov	x1, xzr
00530c704 	bl	#-5023664 ; -> 0x4e41f54 GameManager::get_gameMode
00530c708 	sub	w8, w0, #19
00530c70c 	cmp	w8, #1
00530c710 	b.hi	#716 ; -> 0x530c9dc 
00530c714 	ldr	x8, [x19, #32]
00530c718 	cbz	x8, #2572 ; -> 0x530d124 
00530c71c 	ldr	w8, [x8, #16]
00530c720 	and	w8, w8, #0xfffffffe
00530c724 	cmp	w8, #28
00530c728 	b.ne	#288 ; -> 0x530c848 
00530c72c 	adrp	x23, #93073408 ; -> 0xabcf000 
00530c730 	ldrb	w8, [x23, #636]
00530c734 	cbnz	w8, #24 ; -> 0x530c74c 
00530c738 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530c73c 	ldr	x0, [x0, #3328]
00530c740 	bl	#-14138592 ; -> 0x4590a60 
00530c744 	mov	w8, #1
00530c748 	strb	w8, [x23, #636]
00530c74c 	adrp	x8, #84815872 ; -> 0xa3ef000 
00530c750 	ldr	x8, [x8, #3328]
00530c754 	ldr	x8, [x8]
00530c758 	ldr	x8, [x8, #184]
00530c75c 	ldr	x8, [x8]
00530c760 	cbz	x8, #2500 ; -> 0x530d124 
00530c764 	ldr	x8, [x8, #96]
00530c768 	cbz	x8, #2492 ; -> 0x530d124 
00530c76c 	add	x0, sp, #712
00530c770 	add	x1, x8, #624
00530c774 	mov	w2, #72
00530c778 	bl	#77984120 ; -> 0x9d6b8f0 
00530c77c 	add	x0, sp, #712
00530c780 	mov	x1, xzr
00530c784 	bl	#-8104540 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530c788 	adrp	x8, #84791296 ; -> 0xa3e9000 
00530c78c 	fmov	s8, s0
00530c790 	ldr	x8, [x8, #3552]
00530c794 	ldr	x0, [x8]
00530c798 	ldr	w8, [x0, #228]
00530c79c 	cbnz	w8, #8 ; -> 0x530c7a4 
00530c7a0 	bl	#-14138304 ; -> 0x4590be0 
00530c7a4 	mov	w8, #1120403456
00530c7a8 	mov	x1, xzr
00530c7ac 	fmov	s0, w8
00530c7b0 	mov	w8, #2139095040
00530c7b4 	fmov	s1, w8
00530c7b8 	mov	x8, #-9223372036854775808
00530c7bc 	fadd	s0, s8, s0
00530c7c0 	fcvtzs	x9, s0
00530c7c4 	fcmp	s0, s1
00530c7c8 	csel	x0, x8, x9, eq
00530c7cc 	bl	#65470800 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530c7d0 	mov	x2, x0
00530c7d4 	mov	x3, x1
00530c7d8 	mov	x0, x20
00530c7dc 	mov	x1, x21
00530c7e0 	mov	x4, xzr
00530c7e4 	bl	#65462368 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c7e8 	mov	x20, x0
00530c7ec 	mov	x21, x1
00530c7f0 	mov	w0, #100
00530c7f4 	mov	x1, xzr
00530c7f8 	bl	#65472428 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c7fc 	mov	x2, x0
00530c800 	mov	x3, x1
00530c804 	mov	x0, x20
00530c808 	mov	x1, x21
00530c80c 	mov	x4, xzr
00530c810 	bl	#65462324 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c814 	mov	x20, x0
00530c818 	mov	x21, x1
00530c81c 	mov	w0, #10000
00530c820 	mov	x1, xzr
00530c824 	bl	#65472384 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c828 	mov	x2, x0
00530c82c 	mov	x3, x1
00530c830 	mov	x0, x20
00530c834 	mov	x1, x21
00530c838 	mov	x4, xzr
00530c83c 	bl	#65462780 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530c840 	mov	x20, x0
00530c844 	mov	x21, x1
00530c848 	adrp	x23, #93073408 ; -> 0xabcf000 
00530c84c 	ldrb	w8, [x23, #636]
00530c850 	cbnz	w8, #24 ; -> 0x530c868 
00530c854 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530c858 	ldr	x0, [x0, #3328]
00530c85c 	bl	#-14138876 ; -> 0x4590a60 
00530c860 	mov	w8, #1
00530c864 	strb	w8, [x23, #636]
00530c868 	adrp	x24, #84815872 ; -> 0xa3ef000 
00530c86c 	ldr	x24, [x24, #3328]
00530c870 	ldr	x8, [x24]
00530c874 	ldr	x8, [x8, #184]
00530c878 	ldr	x8, [x8]
00530c87c 	cbz	x8, #2216 ; -> 0x530d124 
00530c880 	ldr	x8, [x8, #96]
00530c884 	cbz	x8, #2208 ; -> 0x530d124 
00530c888 	add	x0, sp, #640
00530c88c 	add	x1, x8, #1704
00530c890 	mov	w2, #72
00530c894 	bl	#77983836 ; -> 0x9d6b8f0 
00530c898 	add	x0, sp, #640
00530c89c 	mov	x1, xzr
00530c8a0 	bl	#-8104824 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530c8a4 	fcmp	s0, #0.0
00530c8a8 	b.le	#308 ; -> 0x530c9dc 
00530c8ac 	ldr	x8, [x19, #32]
00530c8b0 	cbz	x8, #2164 ; -> 0x530d124 
00530c8b4 	ldr	w9, [x8, #56]
00530c8b8 	cbnz	w9, #292 ; -> 0x530c9dc 
00530c8bc 	ldr	w9, [x8, #136]
00530c8c0 	cbnz	w9, #284 ; -> 0x530c9dc 
00530c8c4 	ldr	w8, [x8, #444]
00530c8c8 	cbz	w8, #276 ; -> 0x530c9dc 
00530c8cc 	ldrb	w8, [x23, #636]
00530c8d0 	cbnz	w8, #24 ; -> 0x530c8e8 
00530c8d4 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530c8d8 	ldr	x0, [x0, #3328]
00530c8dc 	bl	#-14139004 ; -> 0x4590a60 
00530c8e0 	mov	w8, #1
00530c8e4 	strb	w8, [x23, #636]
00530c8e8 	ldr	x8, [x24]
00530c8ec 	ldr	x8, [x8, #184]
00530c8f0 	ldr	x8, [x8]
00530c8f4 	cbz	x8, #2096 ; -> 0x530d124 
00530c8f8 	ldr	x8, [x8, #96]
00530c8fc 	cbz	x8, #2088 ; -> 0x530d124 
00530c900 	add	x0, sp, #568
00530c904 	add	x1, x8, #1704
00530c908 	mov	w2, #72
00530c90c 	bl	#77983716 ; -> 0x9d6b8f0 
00530c910 	add	x0, sp, #568
00530c914 	mov	x1, xzr
00530c918 	bl	#-8104944 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530c91c 	adrp	x8, #84791296 ; -> 0xa3e9000 
00530c920 	fmov	s8, s0
00530c924 	ldr	x8, [x8, #3552]
00530c928 	ldr	x0, [x8]
00530c92c 	ldr	w8, [x0, #228]
00530c930 	cbnz	w8, #8 ; -> 0x530c938 
00530c934 	bl	#-14138708 ; -> 0x4590be0 
00530c938 	mov	w8, #1120403456
00530c93c 	mov	x1, xzr
00530c940 	fmov	s0, w8
00530c944 	mov	w8, #2139095040
00530c948 	fmov	s1, w8
00530c94c 	mov	x8, #-9223372036854775808
00530c950 	fadd	s0, s8, s0
00530c954 	fcvtzs	x9, s0
00530c958 	fcmp	s0, s1
00530c95c 	csel	x0, x8, x9, eq
00530c960 	bl	#65470396 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530c964 	mov	x2, x0
00530c968 	mov	x3, x1
00530c96c 	mov	x0, x20
00530c970 	mov	x1, x21
00530c974 	mov	x4, xzr
00530c978 	bl	#65461964 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c97c 	mov	x20, x0
00530c980 	mov	x21, x1
00530c984 	mov	w0, #100
00530c988 	mov	x1, xzr
00530c98c 	bl	#65472024 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c990 	mov	x2, x0
00530c994 	mov	x3, x1
00530c998 	mov	x0, x20
00530c99c 	mov	x1, x21
00530c9a0 	mov	x4, xzr
00530c9a4 	bl	#65461920 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530c9a8 	mov	x20, x0
00530c9ac 	mov	x21, x1
00530c9b0 	mov	w0, #10000
00530c9b4 	mov	x1, xzr
00530c9b8 	bl	#65471980 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530c9bc 	mov	x2, x0
00530c9c0 	mov	x3, x1
00530c9c4 	mov	x0, x20
00530c9c8 	mov	x1, x21
00530c9cc 	mov	x4, xzr
00530c9d0 	bl	#65462376 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530c9d4 	mov	x20, x0
00530c9d8 	mov	x21, x1
00530c9dc 	ldr	x0, [x22]
00530c9e0 	ldr	w8, [x0, #228]
00530c9e4 	cbnz	w8, #12 ; -> 0x530c9f0 
00530c9e8 	bl	#-14138888 ; -> 0x4590be0 
00530c9ec 	ldr	x0, [x22]
00530c9f0 	ldr	x8, [x0, #184]
00530c9f4 	ldr	x0, [x8]
00530c9f8 	cbz	x0, #1836 ; -> 0x530d124 
00530c9fc 	mov	x1, xzr
00530ca00 	bl	#-5024428 ; -> 0x4e41f54 GameManager::get_gameMode
00530ca04 	cmp	w0, #20
00530ca08 	b.ne	#1780 ; -> 0x530d0fc 
00530ca0c 	adrp	x23, #93073408 ; -> 0xabcf000 
00530ca10 	ldrb	w8, [x23, #636]
00530ca14 	cbnz	w8, #24 ; -> 0x530ca2c 
00530ca18 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530ca1c 	ldr	x0, [x0, #3328]
00530ca20 	bl	#-14139328 ; -> 0x4590a60 
00530ca24 	mov	w8, #1
00530ca28 	strb	w8, [x23, #636]
00530ca2c 	adrp	x24, #84815872 ; -> 0xa3ef000 
00530ca30 	ldr	x24, [x24, #3328]
00530ca34 	ldr	x8, [x24]
00530ca38 	ldr	x8, [x8, #184]
00530ca3c 	ldr	x8, [x8]
00530ca40 	cbz	x8, #1764 ; -> 0x530d124 
00530ca44 	ldr	x8, [x8, #48]
00530ca48 	cbz	x8, #1756 ; -> 0x530d124 
00530ca4c 	add	x0, sp, #496
00530ca50 	add	x1, x8, #968
00530ca54 	mov	w2, #72
00530ca58 	bl	#77983384 ; -> 0x9d6b8f0 
00530ca5c 	add	x0, sp, #496
00530ca60 	mov	x1, xzr
00530ca64 	bl	#-8105276 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530ca68 	fmov	s8, s0
00530ca6c 	ldrb	w8, [x23, #636]
00530ca70 	cbnz	w8, #24 ; -> 0x530ca88 
00530ca74 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530ca78 	ldr	x0, [x0, #3328]
00530ca7c 	bl	#-14139420 ; -> 0x4590a60 
00530ca80 	mov	w8, #1
00530ca84 	strb	w8, [x23, #636]
00530ca88 	ldr	x8, [x24]
00530ca8c 	ldr	x8, [x8, #184]
00530ca90 	ldr	x8, [x8]
00530ca94 	cbz	x8, #1680 ; -> 0x530d124 
00530ca98 	ldr	x8, [x8, #48]
00530ca9c 	cbz	x8, #1672 ; -> 0x530d124 
00530caa0 	ldr	q0, [x8, #1040]
00530caa4 	ldr	q1, [x8, #1056]
00530caa8 	add	x0, sp, #432
00530caac 	ldr	q2, [x8, #1072]
00530cab0 	mov	x1, xzr
00530cab4 	stp	q0, q1, [sp, #432]
00530cab8 	ldr	q0, [x8, #1088]
00530cabc 	stp	q2, q0, [sp, #464]
00530cac0 	bl	#-8103792 ; -> 0x4b52350 SilentInt::op_Implicit
00530cac4 	adrp	x25, #84791296 ; -> 0xa3e9000 
00530cac8 	mov	w22, w0
00530cacc 	ldr	x25, [x25, #3552]
00530cad0 	ldr	x8, [x25]
00530cad4 	ldr	w9, [x8, #228]
00530cad8 	cbnz	w9, #12 ; -> 0x530cae4 
00530cadc 	mov	x0, x8
00530cae0 	bl	#-14139136 ; -> 0x4590be0 
00530cae4 	scvtf	s0, w22
00530cae8 	mov	w8, #1120403456
00530caec 	mov	x1, xzr
00530caf0 	fmov	s1, w8
00530caf4 	mov	w8, #2139095040
00530caf8 	fmul	s0, s8, s0
00530cafc 	fadd	s0, s0, s1
00530cb00 	fmov	s1, w8
00530cb04 	mov	x8, #-9223372036854775808
00530cb08 	fcvtzs	x9, s0
00530cb0c 	fcmp	s0, s1
00530cb10 	csel	x0, x8, x9, eq
00530cb14 	bl	#65469960 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530cb18 	mov	x2, x0
00530cb1c 	mov	x3, x1
00530cb20 	mov	x0, x20
00530cb24 	mov	x1, x21
00530cb28 	mov	x4, xzr
00530cb2c 	bl	#65461528 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cb30 	mov	x20, x0
00530cb34 	mov	x21, x1
00530cb38 	mov	w0, #100
00530cb3c 	mov	x1, xzr
00530cb40 	bl	#65471588 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cb44 	mov	x2, x0
00530cb48 	mov	x3, x1
00530cb4c 	mov	x0, x20
00530cb50 	mov	x1, x21
00530cb54 	mov	x4, xzr
00530cb58 	bl	#65461484 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cb5c 	mov	x20, x0
00530cb60 	mov	x21, x1
00530cb64 	mov	w0, #10000
00530cb68 	mov	x1, xzr
00530cb6c 	bl	#65471544 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cb70 	mov	x2, x0
00530cb74 	mov	x3, x1
00530cb78 	mov	x0, x20
00530cb7c 	mov	x1, x21
00530cb80 	mov	x4, xzr
00530cb84 	bl	#65461940 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530cb88 	ldrb	w8, [x23, #636]
00530cb8c 	mov	x20, x0
00530cb90 	mov	x21, x1
00530cb94 	cbnz	w8, #24 ; -> 0x530cbac 
00530cb98 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530cb9c 	ldr	x0, [x0, #3328]
00530cba0 	bl	#-14139712 ; -> 0x4590a60 
00530cba4 	mov	w8, #1
00530cba8 	strb	w8, [x23, #636]
00530cbac 	ldr	x8, [x24]
00530cbb0 	ldr	x8, [x8, #184]
00530cbb4 	ldr	x8, [x8]
00530cbb8 	cbz	x8, #1388 ; -> 0x530d124 
00530cbbc 	ldr	x8, [x8, #96]
00530cbc0 	cbz	x8, #1380 ; -> 0x530d124 
00530cbc4 	add	x0, sp, #360
00530cbc8 	add	x1, x8, #200
00530cbcc 	mov	w2, #72
00530cbd0 	bl	#77983008 ; -> 0x9d6b8f0 
00530cbd4 	add	x0, sp, #360
00530cbd8 	mov	x1, xzr
00530cbdc 	bl	#-8105652 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530cbe0 	fmov	s8, s0
00530cbe4 	ldrb	w8, [x23, #636]
00530cbe8 	cbnz	w8, #24 ; -> 0x530cc00 
00530cbec 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530cbf0 	ldr	x0, [x0, #3328]
00530cbf4 	bl	#-14139796 ; -> 0x4590a60 
00530cbf8 	mov	w8, #1
00530cbfc 	strb	w8, [x23, #636]
00530cc00 	ldr	x8, [x24]
00530cc04 	ldr	x8, [x8, #184]
00530cc08 	ldr	x8, [x8]
00530cc0c 	cbz	x8, #1304 ; -> 0x530d124 
00530cc10 	ldr	x8, [x8, #96]
00530cc14 	cbz	x8, #1296 ; -> 0x530d124 
00530cc18 	ldp	q0, q1, [x8, #272]
00530cc1c 	add	x0, sp, #288
00530cc20 	mov	x1, xzr
00530cc24 	stp	q0, q1, [sp, #288]
00530cc28 	ldp	q0, q2, [x8, #304]
00530cc2c 	stp	q0, q2, [sp, #320]
00530cc30 	bl	#-8104160 ; -> 0x4b52350 SilentInt::op_Implicit
00530cc34 	scvtf	s0, w0
00530cc38 	mov	w8, #1120403456
00530cc3c 	mov	x1, xzr
00530cc40 	fmov	s1, w8
00530cc44 	mov	w8, #2139095040
00530cc48 	fmul	s0, s8, s0
00530cc4c 	fadd	s0, s0, s1
00530cc50 	fmov	s1, w8
00530cc54 	mov	x8, #-9223372036854775808
00530cc58 	fcvtzs	x9, s0
00530cc5c 	fcmp	s0, s1
00530cc60 	csel	x0, x8, x9, eq
00530cc64 	bl	#65469624 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530cc68 	mov	x2, x0
00530cc6c 	mov	x3, x1
00530cc70 	mov	x0, x20
00530cc74 	mov	x1, x21
00530cc78 	mov	x4, xzr
00530cc7c 	bl	#65461192 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cc80 	mov	x20, x0
00530cc84 	mov	x21, x1
00530cc88 	mov	w0, #100
00530cc8c 	mov	x1, xzr
00530cc90 	bl	#65471252 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cc94 	mov	x2, x0
00530cc98 	mov	x3, x1
00530cc9c 	mov	x0, x20
00530cca0 	mov	x1, x21
00530cca4 	mov	x4, xzr
00530cca8 	bl	#65461148 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530ccac 	mov	x20, x0
00530ccb0 	mov	x21, x1
00530ccb4 	mov	w0, #10000
00530ccb8 	mov	x1, xzr
00530ccbc 	bl	#65471208 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530ccc0 	mov	x2, x0
00530ccc4 	mov	x3, x1
00530ccc8 	mov	x0, x20
00530cccc 	mov	x1, x21
00530ccd0 	mov	x4, xzr
00530ccd4 	bl	#65461604 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530ccd8 	ldr	x8, [x19, #32]
00530ccdc 	cbz	x8, #1096 ; -> 0x530d124 
00530cce0 	ldr	w9, [x8, #140]
00530cce4 	mov	x20, x0
00530cce8 	mov	x21, x1
00530ccec 	cmp	w9, #4
00530ccf0 	b.ne	#520 ; -> 0x530cef8 
00530ccf4 	ldrb	w8, [x23, #636]
00530ccf8 	cbnz	w8, #24 ; -> 0x530cd10 
00530ccfc 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530cd00 	ldr	x0, [x0, #3328]
00530cd04 	bl	#-14140068 ; -> 0x4590a60 
00530cd08 	mov	w8, #1
00530cd0c 	strb	w8, [x23, #636]
00530cd10 	ldr	x8, [x24]
00530cd14 	ldr	x8, [x8, #184]
00530cd18 	ldr	x8, [x8]
00530cd1c 	cbz	x8, #1032 ; -> 0x530d124 
00530cd20 	ldr	x8, [x8, #48]
00530cd24 	cbz	x8, #1024 ; -> 0x530d124 
00530cd28 	add	x0, sp, #216
00530cd2c 	add	x1, x8, #896
00530cd30 	mov	w2, #72
00530cd34 	bl	#77982652 ; -> 0x9d6b8f0 
00530cd38 	add	x0, sp, #216
00530cd3c 	mov	x1, xzr
00530cd40 	bl	#-8106008 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530cd44 	ldr	x0, [x25]
00530cd48 	fmov	s8, s0
00530cd4c 	ldr	w8, [x0, #228]
00530cd50 	cbnz	w8, #8 ; -> 0x530cd58 
00530cd54 	bl	#-14139764 ; -> 0x4590be0 
00530cd58 	mov	w8, #1120403456
00530cd5c 	mov	x1, xzr
00530cd60 	fmov	s0, w8
00530cd64 	mov	w8, #2139095040
00530cd68 	fmov	s1, w8
00530cd6c 	mov	x8, #-9223372036854775808
00530cd70 	fadd	s0, s8, s0
00530cd74 	fcvtzs	x9, s0
00530cd78 	fcmp	s0, s1
00530cd7c 	csel	x0, x8, x9, eq
00530cd80 	bl	#65469340 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530cd84 	mov	x2, x0
00530cd88 	mov	x3, x1
00530cd8c 	mov	x0, x20
00530cd90 	mov	x1, x21
00530cd94 	mov	x4, xzr
00530cd98 	bl	#65460908 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cd9c 	mov	x20, x0
00530cda0 	mov	x21, x1
00530cda4 	mov	w0, #100
00530cda8 	mov	x1, xzr
00530cdac 	bl	#65470968 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cdb0 	mov	x2, x0
00530cdb4 	mov	x3, x1
00530cdb8 	mov	x0, x20
00530cdbc 	mov	x1, x21
00530cdc0 	mov	x4, xzr
00530cdc4 	bl	#65460864 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cdc8 	mov	x20, x0
00530cdcc 	mov	x21, x1
00530cdd0 	mov	w0, #10000
00530cdd4 	mov	x1, xzr
00530cdd8 	bl	#65470924 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cddc 	mov	x2, x0
00530cde0 	mov	x3, x1
00530cde4 	mov	x0, x20
00530cde8 	mov	x1, x21
00530cdec 	mov	x4, xzr
00530cdf0 	bl	#65461320 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530cdf4 	ldrb	w8, [x23, #636]
00530cdf8 	mov	x20, x0
00530cdfc 	mov	x21, x1
00530ce00 	cbnz	w8, #24 ; -> 0x530ce18 
00530ce04 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530ce08 	ldr	x0, [x0, #3328]
00530ce0c 	bl	#-14140332 ; -> 0x4590a60 
00530ce10 	mov	w8, #1
00530ce14 	strb	w8, [x23, #636]
00530ce18 	ldr	x8, [x24]
00530ce1c 	ldr	x8, [x8, #184]
00530ce20 	ldr	x8, [x8]
00530ce24 	cbz	x8, #768 ; -> 0x530d124 
00530ce28 	ldr	x8, [x8, #96]
00530ce2c 	cbz	x8, #760 ; -> 0x530d124 
00530ce30 	add	x0, sp, #144
00530ce34 	add	x1, x8, #128
00530ce38 	mov	w2, #72
00530ce3c 	bl	#77982388 ; -> 0x9d6b8f0 
00530ce40 	add	x0, sp, #144
00530ce44 	mov	x1, xzr
00530ce48 	bl	#-8106272 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530ce4c 	mov	w8, #1120403456
00530ce50 	mov	x1, xzr
00530ce54 	fmov	s1, w8
00530ce58 	mov	w8, #2139095040
00530ce5c 	fadd	s0, s0, s1
00530ce60 	fmov	s1, w8
00530ce64 	mov	x8, #-9223372036854775808
00530ce68 	fcvtzs	x9, s0
00530ce6c 	fcmp	s0, s1
00530ce70 	csel	x0, x8, x9, eq
00530ce74 	bl	#65469096 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530ce78 	mov	x2, x0
00530ce7c 	mov	x3, x1
00530ce80 	mov	x0, x20
00530ce84 	mov	x1, x21
00530ce88 	mov	x4, xzr
00530ce8c 	bl	#65460664 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530ce90 	mov	x20, x0
00530ce94 	mov	x21, x1
00530ce98 	mov	w0, #100
00530ce9c 	mov	x1, xzr
00530cea0 	bl	#65470724 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cea4 	mov	x2, x0
00530cea8 	mov	x3, x1
00530ceac 	mov	x0, x20
00530ceb0 	mov	x1, x21
00530ceb4 	mov	x4, xzr
00530ceb8 	bl	#65460620 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cebc 	mov	x20, x0
00530cec0 	mov	x21, x1
00530cec4 	mov	w0, #10000
00530cec8 	mov	x1, xzr
00530cecc 	bl	#65470680 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530ced0 	mov	x2, x0
00530ced4 	mov	x3, x1
00530ced8 	mov	x0, x20
00530cedc 	mov	x1, x21
00530cee0 	mov	x4, xzr
00530cee4 	bl	#65461076 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530cee8 	ldr	x8, [x19, #32]
00530ceec 	cbz	x8, #568 ; -> 0x530d124 
00530cef0 	mov	x20, x0
00530cef4 	mov	x21, x1
00530cef8 	ldr	w8, [x8, #16]
00530cefc 	cmp	w8, #34
00530cf00 	b.ne	#508 ; -> 0x530d0fc 
00530cf04 	ldrb	w8, [x23, #636]
00530cf08 	cbnz	w8, #24 ; -> 0x530cf20 
00530cf0c 	adrp	x0, #84815872 ; -> 0xa3ef000 
00530cf10 	ldr	x0, [x0, #3328]
00530cf14 	bl	#-14140596 ; -> 0x4590a60 
00530cf18 	mov	w8, #1
00530cf1c 	strb	w8, [x23, #636]
00530cf20 	ldr	x8, [x24]
00530cf24 	ldr	x8, [x8, #184]
00530cf28 	ldr	x8, [x8]
00530cf2c 	cbz	x8, #504 ; -> 0x530d124 
00530cf30 	ldr	x8, [x8, #48]
00530cf34 	cbz	x8, #496 ; -> 0x530d124 
00530cf38 	add	x0, sp, #72
00530cf3c 	add	x1, x8, #1312
00530cf40 	mov	w2, #72
00530cf44 	bl	#77982124 ; -> 0x9d6b8f0 
00530cf48 	add	x0, sp, #72
00530cf4c 	mov	x1, xzr
00530cf50 	bl	#-8106536 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530cf54 	ldr	x0, [x25]
00530cf58 	fmov	s8, s0
00530cf5c 	ldr	w8, [x0, #228]
00530cf60 	cbnz	w8, #8 ; -> 0x530cf68 
00530cf64 	bl	#-14140292 ; -> 0x4590be0 
00530cf68 	mov	w8, #1120403456
00530cf6c 	mov	x1, xzr
00530cf70 	fmov	s0, w8
00530cf74 	mov	w8, #2139095040
00530cf78 	fmov	s1, w8
00530cf7c 	mov	x8, #-9223372036854775808
00530cf80 	fadd	s0, s8, s0
00530cf84 	fcvtzs	x9, s0
00530cf88 	fcmp	s0, s1
00530cf8c 	csel	x0, x8, x9, eq
00530cf90 	bl	#65468812 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530cf94 	mov	x2, x0
00530cf98 	mov	x3, x1
00530cf9c 	mov	x0, x20
00530cfa0 	mov	x1, x21
00530cfa4 	mov	x4, xzr
00530cfa8 	bl	#65460380 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cfac 	mov	x19, x0
00530cfb0 	mov	x20, x1
00530cfb4 	mov	w0, #100
00530cfb8 	mov	x1, xzr
00530cfbc 	bl	#65470440 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cfc0 	mov	x2, x0
00530cfc4 	mov	x3, x1
00530cfc8 	mov	x0, x19
00530cfcc 	mov	x1, x20
00530cfd0 	mov	x4, xzr
00530cfd4 	bl	#65460336 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530cfd8 	mov	x19, x0
00530cfdc 	mov	x20, x1
00530cfe0 	mov	w0, #10000
00530cfe4 	mov	x1, xzr
00530cfe8 	bl	#65470396 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530cfec 	mov	x2, x0
00530cff0 	mov	x3, x1
00530cff4 	mov	x0, x19
00530cff8 	mov	x1, x20
00530cffc 	mov	x4, xzr
00530d000 	bl	#65460792 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530d004 	ldrb	w8, [x23, #636]
00530d008 	mov	x19, x0
00530d00c 	mov	x20, x1
00530d010 	cbnz	w8, #24 ; -> 0x530d028 
00530d014 	adrp	x0, #84811776 ; -> 0xa3ef000 
00530d018 	ldr	x0, [x0, #3328]
00530d01c 	bl	#-14140860 ; -> 0x4590a60 
00530d020 	mov	w8, #1
00530d024 	strb	w8, [x23, #636]
00530d028 	ldr	x8, [x24]
00530d02c 	ldr	x8, [x8, #184]
00530d030 	ldr	x8, [x8]
00530d034 	cbz	x8, #240 ; -> 0x530d124 
00530d038 	ldr	x8, [x8, #96]
00530d03c 	cbz	x8, #232 ; -> 0x530d124 
00530d040 	mov	x0, sp
00530d044 	add	x1, x8, #696
00530d048 	mov	w2, #72
00530d04c 	bl	#77981860 ; -> 0x9d6b8f0 
00530d050 	mov	x0, sp
00530d054 	mov	x1, xzr
00530d058 	bl	#-8106800 ; -> 0x4b51d28 SilentFloat::op_Implicit
00530d05c 	mov	w8, #1120403456
00530d060 	mov	x1, xzr
00530d064 	fmov	s1, w8
00530d068 	mov	w8, #2139095040
00530d06c 	fadd	s0, s0, s1
00530d070 	fmov	s1, w8
00530d074 	mov	x8, #-9223372036854775808
00530d078 	fcvtzs	x9, s0
00530d07c 	fcmp	s0, s1
00530d080 	csel	x0, x8, x9, eq
00530d084 	bl	#65468568 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00530d088 	mov	x2, x0
00530d08c 	mov	x3, x1
00530d090 	mov	x0, x19
00530d094 	mov	x1, x20
00530d098 	mov	x4, xzr
00530d09c 	bl	#65460136 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530d0a0 	mov	x19, x0
00530d0a4 	mov	x20, x1
00530d0a8 	mov	w0, #100
00530d0ac 	mov	x1, xzr
00530d0b0 	bl	#65470196 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530d0b4 	mov	x2, x0
00530d0b8 	mov	x3, x1
00530d0bc 	mov	x0, x19
00530d0c0 	mov	x1, x20
00530d0c4 	mov	x4, xzr
00530d0c8 	bl	#65460092 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00530d0cc 	mov	x19, x0
00530d0d0 	mov	x20, x1
00530d0d4 	mov	w0, #10000
00530d0d8 	mov	x1, xzr
00530d0dc 	bl	#65470152 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00530d0e0 	mov	x2, x0
00530d0e4 	mov	x3, x1
00530d0e8 	mov	x0, x19
00530d0ec 	mov	x1, x20
00530d0f0 	mov	x4, xzr
00530d0f4 	bl	#65460548 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
00530d0f8 	b	#-3244 ; -> 0x530c44c 
00530d0fc 	mov	x0, x20
00530d100 	mov	x1, x21
00530d104 	add	sp, sp, #1136
00530d108 	ldp	x20, x19, [sp, #64]
00530d10c 	ldr	x29, [sp, #8]
00530d110 	ldp	x22, x21, [sp, #48]
00530d114 	ldp	x24, x23, [sp, #32]
00530d118 	ldp	x30, x25, [sp, #16]
00530d11c 	ldr	d8, [sp], #80
00530d120 	ret
00530d124 	bl	#-14140440 ; -> 0x4590d0c 
