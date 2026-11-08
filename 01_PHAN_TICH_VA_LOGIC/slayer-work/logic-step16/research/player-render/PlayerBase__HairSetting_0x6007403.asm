004efe5a4 	sub	sp, sp, #112
004efe5a8 	stp	x30, x25, [sp, #48]
004efe5ac 	stp	x24, x23, [sp, #64]
004efe5b0 	stp	x22, x21, [sp, #80]
004efe5b4 	stp	x20, x19, [sp, #96]
004efe5b8 	adrp	x20, #97349632 ; -> 0xabd5000 
004efe5bc 	mov	x19, x0
004efe5c0 	ldrb	w8, [x20, #1543]
004efe5c4 	tbnz	w8, #0, #84 ; -> 0x4efe618 
004efe5c8 	adrp	x0, #89042944 ; -> 0xa3e9000 
004efe5cc 	ldr	x0, [x0, #2376]
004efe5d0 	bl	#-9886576 ; -> 0x4590a60 
004efe5d4 	adrp	x0, #89063424 ; -> 0xa3ee000 
004efe5d8 	ldr	x0, [x0, #2104]
004efe5dc 	bl	#-9886588 ; -> 0x4590a60 
004efe5e0 	adrp	x0, #89255936 ; -> 0xa41d000 
004efe5e4 	ldr	x0, [x0, #1112]
004efe5e8 	bl	#-9886600 ; -> 0x4590a60 
004efe5ec 	adrp	x0, #89288704 ; -> 0xa425000 
004efe5f0 	ldr	x0, [x0, #560]
004efe5f4 	bl	#-9886612 ; -> 0x4590a60 
004efe5f8 	adrp	x0, #89067520 ; -> 0xa3ef000 
004efe5fc 	ldr	x0, [x0, #1744]
004efe600 	bl	#-9886624 ; -> 0x4590a60 
004efe604 	adrp	x0, #89042944 ; -> 0xa3e9000 
004efe608 	ldr	x0, [x0, #736]
004efe60c 	bl	#-9886636 ; -> 0x4590a60 
004efe610 	mov	w8, #1
004efe614 	strb	w8, [x20, #1543]
004efe618 	mov	w0, #24910
004efe61c 	mov	x1, xzr
004efe620 	stp	xzr, xzr, [sp, #32]
004efe624 	bl	#-2846848 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efe628 	tbz	w0, #0, #52 ; -> 0x4efe65c 
004efe62c 	mov	w0, #24910
004efe630 	mov	x1, xzr
004efe634 	bl	#-2846684 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efe638 	cbz	x0, #1864 ; -> 0x4efed80 
004efe63c 	mov	x1, x19
004efe640 	ldp	x20, x19, [sp, #96]
004efe644 	ldp	x22, x21, [sp, #80]
004efe648 	mov	x2, xzr
004efe64c 	ldp	x24, x23, [sp, #64]
004efe650 	ldp	x30, x25, [sp, #48]
004efe654 	add	sp, sp, #112
004efe658 	b	#-3670328 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004efe65c 	ldr	x8, [x19, #312]
004efe660 	cbz	x8, #1824 ; -> 0x4efed80 
004efe664 	ldr	x8, [x8, #1504]
004efe668 	cbz	x8, #1816 ; -> 0x4efed80 
004efe66c 	adrp	x22, #89042944 ; -> 0xa3e9000 
004efe670 	ldr	x22, [x22, #2376]
004efe674 	ldr	x20, [x8, #88]
004efe678 	ldr	x0, [x22]
004efe67c 	ldr	w9, [x0, #228]
004efe680 	cbnz	w9, #8 ; -> 0x4efe688 
004efe684 	bl	#-9886372 ; -> 0x4590be0 
004efe688 	mov	x0, x20
004efe68c 	mov	x1, xzr
004efe690 	bl	#-2307524 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004efe694 	mov	x1, x0
004efe698 	str	x0, [x19, #2912]
004efe69c 	add	x0, x19, #2912
004efe6a0 	bl	#-9886876 ; -> 0x4590a04 
004efe6a4 	ldr	x8, [x19, #312]
004efe6a8 	cbz	x8, #1752 ; -> 0x4efed80 
004efe6ac 	ldr	x8, [x8, #1504]
004efe6b0 	cbz	x8, #1744 ; -> 0x4efed80 
004efe6b4 	ldr	w8, [x8, #104]
004efe6b8 	ldr	x0, [x19, #2760]
004efe6bc 	adrp	x23, #97325056 ; -> 0xabcf000 
004efe6c0 	cbz	w8, #648 ; -> 0x4efe948 
004efe6c4 	cbz	x0, #1724 ; -> 0x4efed80 
004efe6c8 	mov	x1, xzr
004efe6cc 	bl	#78651364 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efe6d0 	cbz	x0, #1712 ; -> 0x4efed80 
004efe6d4 	mov	w1, #1
004efe6d8 	mov	x2, xzr
004efe6dc 	bl	#78664952 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efe6e0 	adrp	x25, #89063424 ; -> 0xa3ee000 
004efe6e4 	ldr	x25, [x25, #2104]
004efe6e8 	ldr	x0, [x25]
004efe6ec 	ldr	w8, [x0, #228]
004efe6f0 	cbnz	w8, #8 ; -> 0x4efe6f8 
004efe6f4 	bl	#-9886484 ; -> 0x4590be0 
004efe6f8 	ldrb	w8, [x23, #360]
004efe6fc 	cbnz	w8, #24 ; -> 0x4efe714 
004efe700 	adrp	x0, #89063424 ; -> 0xa3ee000 
004efe704 	ldr	x0, [x0, #2104]
004efe708 	bl	#-9886888 ; -> 0x4590a60 
004efe70c 	mov	w8, #1
004efe710 	strb	w8, [x23, #360]
004efe714 	ldr	x0, [x25]
004efe718 	ldr	w8, [x0, #228]
004efe71c 	cbnz	w8, #12 ; -> 0x4efe728 
004efe720 	bl	#-9886528 ; -> 0x4590be0 
004efe724 	ldr	x0, [x25]
004efe728 	ldr	x8, [x0, #184]
004efe72c 	ldr	x8, [x8]
004efe730 	cbz	x8, #1616 ; -> 0x4efed80 
004efe734 	ldr	x9, [x19, #312]
004efe738 	cbz	x9, #1608 ; -> 0x4efed80 
004efe73c 	ldr	x9, [x9, #1504]
004efe740 	cbz	x9, #1600 ; -> 0x4efed80 
004efe744 	ldr	x0, [x8, #464]
004efe748 	cbz	x0, #1592 ; -> 0x4efed80 
004efe74c 	adrp	x8, #89288704 ; -> 0xa425000 
004efe750 	ldr	x8, [x8, #560]
004efe754 	ldr	w1, [x9, #104]
004efe758 	ldr	x2, [x8]
004efe75c 	bl	#51748920 ; -> 0x8058794 
004efe760 	cbz	x0, #1568 ; -> 0x4efed80 
004efe764 	ldr	x8, [x22]
004efe768 	ldr	x20, [x0, #24]
004efe76c 	ldr	w9, [x8, #228]
004efe770 	cbnz	w9, #12 ; -> 0x4efe77c 
004efe774 	mov	x0, x8
004efe778 	bl	#-9886616 ; -> 0x4590be0 
004efe77c 	mov	x0, x20
004efe780 	mov	x1, xzr
004efe784 	bl	#-2307768 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004efe788 	mov	x1, x0
004efe78c 	str	x0, [x19, #2920]
004efe790 	add	x0, x19, #2920
004efe794 	bl	#-9887120 ; -> 0x4590a04 
004efe798 	ldr	x0, [x19, #312]
004efe79c 	cbz	x0, #1508 ; -> 0x4efed80 
004efe7a0 	ldr	x20, [x19, #2760]
004efe7a4 	mov	x1, xzr
004efe7a8 	bl	#-1782752 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efe7ac 	adrp	x24, #89042944 ; -> 0xa3e9000 
004efe7b0 	mov	w21, w0
004efe7b4 	ldr	x24, [x24, #736]
004efe7b8 	ldr	x8, [x24]
004efe7bc 	ldr	w9, [x8, #228]
004efe7c0 	cbnz	w9, #12 ; -> 0x4efe7cc 
004efe7c4 	mov	x0, x8
004efe7c8 	bl	#-9886696 ; -> 0x4590be0 
004efe7cc 	mov	w0, w21
004efe7d0 	mov	x1, xzr
004efe7d4 	bl	#-1942904 ; -> 0x4d2425c UsefulManager::HairColor
004efe7d8 	cbz	x20, #1448 ; -> 0x4efed80 
004efe7dc 	mov	x0, x20
004efe7e0 	mov	x1, xzr
004efe7e4 	bl	#78331044 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004efe7e8 	ldrb	w8, [x23, #360]
004efe7ec 	cbnz	w8, #24 ; -> 0x4efe804 
004efe7f0 	adrp	x0, #89063424 ; -> 0xa3ee000 
004efe7f4 	ldr	x0, [x0, #2104]
004efe7f8 	bl	#-9887128 ; -> 0x4590a60 
004efe7fc 	mov	w8, #1
004efe800 	strb	w8, [x23, #360]
004efe804 	ldr	x0, [x25]
004efe808 	ldr	w8, [x0, #228]
004efe80c 	cbnz	w8, #12 ; -> 0x4efe818 
004efe810 	bl	#-9886768 ; -> 0x4590be0 
004efe814 	ldr	x0, [x25]
004efe818 	ldr	x8, [x0, #184]
004efe81c 	ldr	x8, [x8]
004efe820 	cbz	x8, #1376 ; -> 0x4efed80 
004efe824 	ldr	x0, [x19, #312]
004efe828 	cbz	x0, #1368 ; -> 0x4efed80 
004efe82c 	ldr	x20, [x8, #472]
004efe830 	mov	x1, xzr
004efe834 	bl	#-1782892 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efe838 	cbz	x20, #1352 ; -> 0x4efed80 
004efe83c 	adrp	x8, #89255936 ; -> 0xa41d000 
004efe840 	mov	w1, w0
004efe844 	add	x2, sp, #40
004efe848 	ldr	x8, [x8, #1112]
004efe84c 	mov	x0, x20
004efe850 	ldr	x3, [x8]
004efe854 	bl	#51755708 ; -> 0x805a310 
004efe858 	tbz	w0, #0, #268 ; -> 0x4efe964 
004efe85c 	ldr	x8, [sp, #40]
004efe860 	cbz	x8, #1312 ; -> 0x4efed80 
004efe864 	ldr	x9, [x19, #312]
004efe868 	cbz	x9, #1304 ; -> 0x4efed80 
004efe86c 	ldr	x9, [x9, #1504]
004efe870 	cbz	x9, #1296 ; -> 0x4efed80 
004efe874 	ldr	x0, [x8, #112]
004efe878 	cbz	x0, #1288 ; -> 0x4efed80 
004efe87c 	adrp	x8, #89067520 ; -> 0xa3ef000 
004efe880 	ldr	x8, [x8, #1744]
004efe884 	ldr	w1, [x9, #24]
004efe888 	ldr	x2, [x8]
004efe88c 	bl	#30129060 ; -> 0x6bba430 
004efe890 	tbz	w0, #0, #76 ; -> 0x4efe8dc 
004efe894 	ldr	x0, [x19, #312]
004efe898 	cbz	x0, #1256 ; -> 0x4efed80 
004efe89c 	ldr	x20, [x19, #2760]
004efe8a0 	mov	x1, xzr
004efe8a4 	bl	#-1783004 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efe8a8 	ldr	x8, [x24]
004efe8ac 	mov	w21, w0
004efe8b0 	ldr	w9, [x8, #228]
004efe8b4 	cbnz	w9, #12 ; -> 0x4efe8c0 
004efe8b8 	mov	x0, x8
004efe8bc 	bl	#-9886940 ; -> 0x4590be0 
004efe8c0 	mov	w0, w21
004efe8c4 	mov	x1, xzr
004efe8c8 	bl	#-1942856 ; -> 0x4d24380 UsefulManager::HairLinkedColor
004efe8cc 	cbz	x20, #1204 ; -> 0x4efed80 
004efe8d0 	mov	x0, x20
004efe8d4 	mov	x1, xzr
004efe8d8 	bl	#78330800 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004efe8dc 	ldr	x0, [x19, #312]
004efe8e0 	cbz	x0, #1184 ; -> 0x4efed80 
004efe8e4 	ldr	x8, [x0, #1504]
004efe8e8 	cbz	x8, #1176 ; -> 0x4efed80 
004efe8ec 	ldr	w20, [x8, #24]
004efe8f0 	mov	x1, xzr
004efe8f4 	bl	#-1783084 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efe8f8 	ldr	x8, [x24]
004efe8fc 	mov	w21, w0
004efe900 	ldr	w9, [x8, #228]
004efe904 	cbnz	w9, #12 ; -> 0x4efe910 
004efe908 	mov	x0, x8
004efe90c 	bl	#-9887020 ; -> 0x4590be0 
004efe910 	add	x8, sp, #12
004efe914 	mov	w0, w20
004efe918 	mov	w1, w21
004efe91c 	mov	x2, xzr
004efe920 	bl	#-1942652 ; -> 0x4d244a4 UsefulManager::HairBackExceptColor
004efe924 	ldr	w8, [sp, #12]
004efe928 	tbz	w8, #0, #60 ; -> 0x4efe964 
004efe92c 	ldr	x0, [x19, #2760]
004efe930 	cbz	x0, #1104 ; -> 0x4efed80 
004efe934 	ldp	s0, s1, [sp, #16]
004efe938 	mov	x1, xzr
004efe93c 	ldp	s2, s3, [sp, #24]
004efe940 	bl	#78330696 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004efe944 	b	#32 ; -> 0x4efe964 
004efe948 	cbz	x0, #1080 ; -> 0x4efed80 
004efe94c 	mov	x1, xzr
004efe950 	bl	#78650720 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efe954 	cbz	x0, #1068 ; -> 0x4efed80 
004efe958 	mov	w1, wzr
004efe95c 	mov	x2, xzr
004efe960 	bl	#78664308 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efe964 	adrp	x24, #89042944 ; -> 0xa3e9000 
004efe968 	ldr	x24, [x24, #736]
004efe96c 	ldr	x0, [x24]
004efe970 	ldr	w8, [x0, #228]
004efe974 	cbnz	w8, #12 ; -> 0x4efe980 
004efe978 	bl	#-9887128 ; -> 0x4590be0 
004efe97c 	ldr	x0, [x24]
004efe980 	ldr	x8, [x19, #312]
004efe984 	cbz	x8, #1020 ; -> 0x4efed80 
004efe988 	ldr	x9, [x0, #184]
004efe98c 	ldr	x21, [x19, #2744]
004efe990 	mov	x0, x8
004efe994 	mov	x1, xzr
004efe998 	ldr	x20, [x9]
004efe99c 	bl	#-1784372 ; -> 0x4d4af68 DatabaseManager::get_HairBleach
004efe9a0 	ldr	x8, [x19, #312]
004efe9a4 	cbz	x8, #988 ; -> 0x4efed80 
004efe9a8 	ldr	x8, [x8, #1504]
004efe9ac 	cbz	x8, #980 ; -> 0x4efed80 
004efe9b0 	cbz	x20, #976 ; -> 0x4efed80 
004efe9b4 	ldr	w8, [x8, #80]
004efe9b8 	and	w2, w0, #0x1
004efe9bc 	mov	x0, x20
004efe9c0 	mov	x1, x21
004efe9c4 	mov	x4, xzr
004efe9c8 	cmp	w8, #2
004efe9cc 	cset	w3, eq
004efe9d0 	bl	#-1933940 ; -> 0x4d2675c UsefulManager::SetHairMaterial_Sprite
004efe9d4 	ldr	x0, [x19, #312]
004efe9d8 	cbz	x0, #936 ; -> 0x4efed80 
004efe9dc 	ldr	x8, [x24]
004efe9e0 	ldr	x21, [x19, #2760]
004efe9e4 	mov	x1, xzr
004efe9e8 	ldr	x8, [x8, #184]
004efe9ec 	ldr	x20, [x8]
004efe9f0 	bl	#-1784456 ; -> 0x4d4af68 DatabaseManager::get_HairBleach
004efe9f4 	ldr	x8, [x19, #312]
004efe9f8 	cbz	x8, #904 ; -> 0x4efed80 
004efe9fc 	ldr	x8, [x8, #1504]
004efea00 	cbz	x8, #896 ; -> 0x4efed80 
004efea04 	cbz	x20, #892 ; -> 0x4efed80 
004efea08 	ldr	w8, [x8, #80]
004efea0c 	and	w2, w0, #0x1
004efea10 	mov	x0, x20
004efea14 	mov	x1, x21
004efea18 	mov	x4, xzr
004efea1c 	cmp	w8, #2
004efea20 	cset	w3, eq
004efea24 	bl	#-1934024 ; -> 0x4d2675c UsefulManager::SetHairMaterial_Sprite
004efea28 	ldr	x0, [x19, #312]
004efea2c 	cbz	x0, #852 ; -> 0x4efed80 
004efea30 	ldr	x20, [x19, #2744]
004efea34 	mov	x1, xzr
004efea38 	bl	#-1783408 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efea3c 	mov	x1, xzr
004efea40 	bl	#-1943524 ; -> 0x4d2425c UsefulManager::HairColor
004efea44 	cbz	x20, #828 ; -> 0x4efed80 
004efea48 	mov	x0, x20
004efea4c 	mov	x1, xzr
004efea50 	bl	#78330424 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004efea54 	adrp	x20, #89063424 ; -> 0xa3ee000 
004efea58 	ldr	x20, [x20, #2104]
004efea5c 	ldr	x0, [x20]
004efea60 	ldr	w8, [x0, #228]
004efea64 	cbnz	w8, #8 ; -> 0x4efea6c 
004efea68 	bl	#-9887368 ; -> 0x4590be0 
004efea6c 	ldrb	w8, [x23, #360]
004efea70 	cbnz	w8, #24 ; -> 0x4efea88 
004efea74 	adrp	x0, #89063424 ; -> 0xa3ee000 
004efea78 	ldr	x0, [x0, #2104]
004efea7c 	bl	#-9887772 ; -> 0x4590a60 
004efea80 	mov	w8, #1
004efea84 	strb	w8, [x23, #360]
004efea88 	ldr	x0, [x20]
004efea8c 	ldr	w8, [x0, #228]
004efea90 	cbnz	w8, #12 ; -> 0x4efea9c 
004efea94 	bl	#-9887412 ; -> 0x4590be0 
004efea98 	ldr	x0, [x20]
004efea9c 	ldr	x8, [x0, #184]
004efeaa0 	ldr	x8, [x8]
004efeaa4 	cbz	x8, #732 ; -> 0x4efed80 
004efeaa8 	ldr	x0, [x19, #312]
004efeaac 	cbz	x0, #724 ; -> 0x4efed80 
004efeab0 	ldr	x20, [x8, #472]
004efeab4 	mov	x1, xzr
004efeab8 	bl	#-1783536 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efeabc 	cbz	x20, #708 ; -> 0x4efed80 
004efeac0 	adrp	x8, #89255936 ; -> 0xa41d000 
004efeac4 	mov	w1, w0
004efeac8 	add	x2, sp, #32
004efeacc 	ldr	x8, [x8, #1112]
004efead0 	mov	x0, x20
004efead4 	ldr	x3, [x8]
004efead8 	bl	#51755064 ; -> 0x805a310 
004efeadc 	tbz	w0, #0, #132 ; -> 0x4efeb60 
004efeae0 	ldr	x8, [sp, #32]
004efeae4 	cbz	x8, #668 ; -> 0x4efed80 
004efeae8 	ldr	x9, [x19, #312]
004efeaec 	cbz	x9, #660 ; -> 0x4efed80 
004efeaf0 	ldr	x9, [x9, #1504]
004efeaf4 	cbz	x9, #652 ; -> 0x4efed80 
004efeaf8 	ldr	x0, [x8, #112]
004efeafc 	cbz	x0, #644 ; -> 0x4efed80 
004efeb00 	adrp	x8, #89067520 ; -> 0xa3ef000 
004efeb04 	ldr	x8, [x8, #1744]
004efeb08 	ldr	w1, [x9, #24]
004efeb0c 	ldr	x2, [x8]
004efeb10 	bl	#30128416 ; -> 0x6bba430 
004efeb14 	tbz	w0, #0, #76 ; -> 0x4efeb60 
004efeb18 	ldr	x0, [x19, #312]
004efeb1c 	cbz	x0, #612 ; -> 0x4efed80 
004efeb20 	ldr	x20, [x19, #2744]
004efeb24 	mov	x1, xzr
004efeb28 	bl	#-1783648 ; -> 0x4d4b3c8 DatabaseManager::get_Skin_HairColor
004efeb2c 	ldr	x8, [x24]
004efeb30 	mov	w21, w0
004efeb34 	ldr	w9, [x8, #228]
004efeb38 	cbnz	w9, #12 ; -> 0x4efeb44 
004efeb3c 	mov	x0, x8
004efeb40 	bl	#-9887584 ; -> 0x4590be0 
004efeb44 	mov	w0, w21
004efeb48 	mov	x1, xzr
004efeb4c 	bl	#-1943500 ; -> 0x4d24380 UsefulManager::HairLinkedColor
004efeb50 	cbz	x20, #560 ; -> 0x4efed80 
004efeb54 	mov	x0, x20
004efeb58 	mov	x1, xzr
004efeb5c 	bl	#78330156 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004efeb60 	ldr	x8, [x19, #312]
004efeb64 	cbz	x8, #540 ; -> 0x4efed80 
004efeb68 	ldr	x8, [x8, #1512]
004efeb6c 	cbz	x8, #532 ; -> 0x4efed80 
004efeb70 	ldr	w8, [x8, #24]
004efeb74 	cbz	w8, #272 ; -> 0x4efec84 
004efeb78 	ldr	x0, [x19, #2752]
004efeb7c 	mov	w8, #1
004efeb80 	strb	w8, [x19, #2936]
004efeb84 	cbz	x0, #508 ; -> 0x4efed80 
004efeb88 	mov	x1, xzr
004efeb8c 	bl	#78650148 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efeb90 	cbz	x0, #496 ; -> 0x4efed80 
004efeb94 	mov	w1, #1
004efeb98 	mov	x2, xzr
004efeb9c 	bl	#78663736 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efeba0 	ldr	x9, [x19, #312]
004efeba4 	cbz	x9, #476 ; -> 0x4efed80 
004efeba8 	ldr	x8, [x9, #1512]
004efebac 	cbz	x8, #468 ; -> 0x4efed80 
004efebb0 	ldrb	w10, [x8, #114]
004efebb4 	cbnz	w10, #28 ; -> 0x4efebd0 
004efebb8 	ldr	w9, [x9, #1384]
004efebbc 	cmp	w9, #1
004efebc0 	b.ne	#16 ; -> 0x4efebd0 
004efebc4 	ldr	x0, [x22]
004efebc8 	ldr	x20, [x8, #120]
004efebcc 	b	#12 ; -> 0x4efebd8 
004efebd0 	ldr	x0, [x22]
004efebd4 	ldr	x20, [x8, #88]
004efebd8 	ldr	w9, [x0, #228]
004efebdc 	cbnz	w9, #8 ; -> 0x4efebe4 
004efebe0 	bl	#-9887744 ; -> 0x4590be0 
004efebe4 	mov	x0, x20
004efebe8 	mov	x1, xzr
004efebec 	bl	#-2308896 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004efebf0 	mov	x1, x0
004efebf4 	str	x0, [x19, #2904]
004efebf8 	add	x0, x19, #2904
004efebfc 	bl	#-9888248 ; -> 0x4590a04 
004efec00 	ldr	x8, [x19, #312]
004efec04 	cbz	x8, #380 ; -> 0x4efed80 
004efec08 	ldr	x9, [x8, #1512]
004efec0c 	cbz	x9, #372 ; -> 0x4efed80 
004efec10 	ldrb	w9, [x9, #112]
004efec14 	cbz	w9, #48 ; -> 0x4efec44 
004efec18 	ldr	x8, [x8, #1504]
004efec1c 	cbz	x8, #356 ; -> 0x4efed80 
004efec20 	ldr	w8, [x8, #104]
004efec24 	cbz	w8, #32 ; -> 0x4efec44 
004efec28 	ldr	x0, [x19, #2760]
004efec2c 	cbz	x0, #340 ; -> 0x4efed80 
004efec30 	mov	x1, xzr
004efec34 	bl	#78649980 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efec38 	cbz	x0, #328 ; -> 0x4efed80 
004efec3c 	mov	w1, #1
004efec40 	b	#28 ; -> 0x4efec5c 
004efec44 	ldr	x0, [x19, #2760]
004efec48 	cbz	x0, #312 ; -> 0x4efed80 
004efec4c 	mov	x1, xzr
004efec50 	bl	#78649952 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efec54 	cbz	x0, #300 ; -> 0x4efed80 
004efec58 	mov	w1, wzr
004efec5c 	mov	x2, xzr
004efec60 	bl	#78663540 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efec64 	ldr	x8, [x19, #312]
004efec68 	cbz	x8, #280 ; -> 0x4efed80 
004efec6c 	ldr	w9, [x8, #1384]
004efec70 	ldr	x8, [x8, #1512]
004efec74 	cbz	w9, #88 ; -> 0x4efeccc 
004efec78 	cbz	x8, #264 ; -> 0x4efed80 
004efec7c 	add	x8, x8, #108
004efec80 	b	#84 ; -> 0x4efecd4 
004efec84 	ldr	x0, [x19, #2752]
004efec88 	strb	wzr, [x19, #2936]
004efec8c 	cbz	x0, #244 ; -> 0x4efed80 
004efec90 	mov	x1, xzr
004efec94 	bl	#78649884 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efec98 	cbz	x0, #232 ; -> 0x4efed80 
004efec9c 	mov	w1, wzr
004efeca0 	mov	x2, xzr
004efeca4 	bl	#78663472 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efeca8 	ldr	x0, [x19, #2744]
004efecac 	cbz	x0, #212 ; -> 0x4efed80 
004efecb0 	mov	x1, xzr
004efecb4 	bl	#78649852 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efecb8 	cbz	x0, #200 ; -> 0x4efed80 
004efecbc 	mov	w1, #1
004efecc0 	mov	x2, xzr
004efecc4 	bl	#78663440 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efecc8 	b	#100 ; -> 0x4efed2c 
004efeccc 	cbz	x8, #180 ; -> 0x4efed80 
004efecd0 	add	x8, x8, #104
004efecd4 	ldr	w20, [x8]
004efecd8 	ldr	x0, [x19, #2744]
004efecdc 	cmp	w20, #2
004efece0 	b.ne	#36 ; -> 0x4efed04 
004efece4 	cbz	x0, #156 ; -> 0x4efed80 
004efece8 	mov	x1, xzr
004efecec 	bl	#78649796 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efecf0 	cbz	x0, #144 ; -> 0x4efed80 
004efecf4 	mov	w1, wzr
004efecf8 	mov	x2, xzr
004efecfc 	bl	#78663384 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efed00 	b	#72 ; -> 0x4efed48 
004efed04 	cbz	x0, #124 ; -> 0x4efed80 
004efed08 	mov	x1, xzr
004efed0c 	bl	#78649764 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efed10 	cbz	x0, #112 ; -> 0x4efed80 
004efed14 	mov	w1, #1
004efed18 	mov	x2, xzr
004efed1c 	bl	#78663352 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efed20 	cmp	w20, #1
004efed24 	b.eq	#36 ; -> 0x4efed48 
004efed28 	cbnz	w20, #64 ; -> 0x4efed68 
004efed2c 	ldr	x0, [x19, #2768]
004efed30 	cbz	x0, #80 ; -> 0x4efed80 
004efed34 	mov	x1, xzr
004efed38 	bl	#78649720 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efed3c 	cbz	x0, #68 ; -> 0x4efed80 
004efed40 	mov	w1, #1
004efed44 	b	#28 ; -> 0x4efed60 
004efed48 	ldr	x0, [x19, #2768]
004efed4c 	cbz	x0, #52 ; -> 0x4efed80 
004efed50 	mov	x1, xzr
004efed54 	bl	#78649692 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efed58 	cbz	x0, #40 ; -> 0x4efed80 
004efed5c 	mov	w1, wzr
004efed60 	mov	x2, xzr
004efed64 	bl	#78663280 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efed68 	ldp	x20, x19, [sp, #96]
004efed6c 	ldp	x22, x21, [sp, #80]
004efed70 	ldp	x24, x23, [sp, #64]
004efed74 	ldp	x30, x25, [sp, #48]
004efed78 	add	sp, sp, #112
004efed7c 	ret
004efed80 	bl	#-9887860 ; -> 0x4590d0c 
