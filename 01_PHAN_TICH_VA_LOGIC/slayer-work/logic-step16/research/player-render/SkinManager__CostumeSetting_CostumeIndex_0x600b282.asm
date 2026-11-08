00535f768 	stp	x30, x23, [sp, #-48]!
00535f76c 	stp	x22, x21, [sp, #16]
00535f770 	stp	x20, x19, [sp, #32]
00535f774 	adrp	x21, #92766208 ; -> 0xabd7000 
00535f778 	mov	w20, w1
00535f77c 	mov	x19, x0
00535f780 	ldrb	w8, [x21, #1597]
00535f784 	tbnz	w8, #0, #48 ; -> 0x535f7b4 
00535f788 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f78c 	ldr	x0, [x0, #2104]
00535f790 	bl	#-14478640 ; -> 0x4590a60 
00535f794 	adrp	x0, #84697088 ; -> 0xa425000 
00535f798 	ldr	x0, [x0, #528]
00535f79c 	bl	#-14478652 ; -> 0x4590a60 
00535f7a0 	adrp	x0, #84705280 ; -> 0xa427000 
00535f7a4 	ldr	x0, [x0, #640]
00535f7a8 	bl	#-14478664 ; -> 0x4590a60 
00535f7ac 	mov	w8, #1
00535f7b0 	strb	w8, [x21, #1597]
00535f7b4 	mov	w0, #24902
00535f7b8 	mov	x1, xzr
00535f7bc 	bl	#-7438872 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00535f7c0 	tbz	w0, #0, #48 ; -> 0x535f7f0 
00535f7c4 	mov	w0, #24902
00535f7c8 	mov	x1, xzr
00535f7cc 	bl	#-7438708 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00535f7d0 	cbz	x0, #432 ; -> 0x535f980 
00535f7d4 	mov	x1, x19
00535f7d8 	mov	w2, w20
00535f7dc 	mov	x3, xzr
00535f7e0 	ldp	x20, x19, [sp, #32]
00535f7e4 	ldp	x22, x21, [sp, #16]
00535f7e8 	ldp	x30, x23, [sp], #48
00535f7ec 	b	#-8257104 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
00535f7f0 	adrp	x21, #84471808 ; -> 0xa3ee000 
00535f7f4 	ldr	x21, [x21, #2104]
00535f7f8 	ldr	x23, [x19, #32]
00535f7fc 	ldr	x0, [x21]
00535f800 	ldr	w8, [x0, #228]
00535f804 	cbnz	w8, #8 ; -> 0x535f80c 
00535f808 	bl	#-14478376 ; -> 0x4590be0 
00535f80c 	adrp	x22, #92733440 ; -> 0xabcf000 
00535f810 	ldrb	w8, [x22, #360]
00535f814 	cbnz	w8, #24 ; -> 0x535f82c 
00535f818 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f81c 	ldr	x0, [x0, #2104]
00535f820 	bl	#-14478784 ; -> 0x4590a60 
00535f824 	mov	w8, #1
00535f828 	strb	w8, [x22, #360]
00535f82c 	ldr	x0, [x21]
00535f830 	ldr	w8, [x0, #228]
00535f834 	cbnz	w8, #12 ; -> 0x535f840 
00535f838 	bl	#-14478424 ; -> 0x4590be0 
00535f83c 	ldr	x0, [x21]
00535f840 	ldr	x8, [x0, #184]
00535f844 	ldr	x0, [x8]
00535f848 	cbz	x0, #312 ; -> 0x535f980 
00535f84c 	mov	w1, w20
00535f850 	mov	x2, xzr
00535f854 	bl	#-6190988 ; -> 0x4d780c8 DataManager::GetCostume
00535f858 	cbz	x23, #296 ; -> 0x535f980 
00535f85c 	mov	x1, x0
00535f860 	str	x0, [x23, #1544]
00535f864 	add	x0, x23, #1544
00535f868 	bl	#-14478948 ; -> 0x4590a04 
00535f86c 	ldrb	w8, [x22, #360]
00535f870 	ldr	x23, [x19, #32]
00535f874 	cbnz	w8, #24 ; -> 0x535f88c 
00535f878 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f87c 	ldr	x0, [x0, #2104]
00535f880 	bl	#-14478880 ; -> 0x4590a60 
00535f884 	mov	w8, #1
00535f888 	strb	w8, [x22, #360]
00535f88c 	ldr	x0, [x21]
00535f890 	ldr	w8, [x0, #228]
00535f894 	cbnz	w8, #12 ; -> 0x535f8a0 
00535f898 	bl	#-14478520 ; -> 0x4590be0 
00535f89c 	ldr	x0, [x21]
00535f8a0 	ldr	x8, [x0, #184]
00535f8a4 	ldr	x8, [x8]
00535f8a8 	cbz	x8, #216 ; -> 0x535f980 
00535f8ac 	ldr	x0, [x19, #32]
00535f8b0 	cbz	x0, #208 ; -> 0x535f980 
00535f8b4 	ldr	x20, [x8, #480]
00535f8b8 	mov	x1, xzr
00535f8bc 	bl	#-6374232 ; -> 0x4d4b564 DatabaseManager::get_Skin_HatIndex
00535f8c0 	cbz	x20, #192 ; -> 0x535f980 
00535f8c4 	adrp	x8, #84705280 ; -> 0xa427000 
00535f8c8 	mov	w1, w0
00535f8cc 	mov	x0, x20
00535f8d0 	ldr	x8, [x8, #640]
00535f8d4 	ldr	x2, [x8]
00535f8d8 	bl	#47156924 ; -> 0x8058794 
00535f8dc 	cbz	x23, #164 ; -> 0x535f980 
00535f8e0 	mov	x1, x0
00535f8e4 	str	x0, [x23, #1512]
00535f8e8 	add	x0, x23, #1512
00535f8ec 	bl	#-14479080 ; -> 0x4590a04 
00535f8f0 	ldrb	w8, [x22, #360]
00535f8f4 	ldr	x20, [x19, #32]
00535f8f8 	cbnz	w8, #24 ; -> 0x535f910 
00535f8fc 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f900 	ldr	x0, [x0, #2104]
00535f904 	bl	#-14479012 ; -> 0x4590a60 
00535f908 	mov	w8, #1
00535f90c 	strb	w8, [x22, #360]
00535f910 	ldr	x0, [x21]
00535f914 	ldr	w8, [x0, #228]
00535f918 	cbnz	w8, #12 ; -> 0x535f924 
00535f91c 	bl	#-14478652 ; -> 0x4590be0 
00535f920 	ldr	x0, [x21]
00535f924 	ldr	x8, [x0, #184]
00535f928 	ldr	x8, [x8]
00535f92c 	cbz	x8, #84 ; -> 0x535f980 
00535f930 	ldr	x0, [x19, #32]
00535f934 	cbz	x0, #76 ; -> 0x535f980 
00535f938 	ldr	x19, [x8, #504]
00535f93c 	mov	x1, xzr
00535f940 	bl	#-6376896 ; -> 0x4d4ab80 DatabaseManager::get_Skin_CloakIndex
00535f944 	cbz	x19, #60 ; -> 0x535f980 
00535f948 	adrp	x8, #84697088 ; -> 0xa425000 
00535f94c 	mov	w1, w0
00535f950 	mov	x0, x19
00535f954 	ldr	x8, [x8, #528]
00535f958 	ldr	x2, [x8]
00535f95c 	bl	#47156792 ; -> 0x8058794 
00535f960 	cbz	x20, #32 ; -> 0x535f980 
00535f964 	mov	x1, x0
00535f968 	add	x0, x20, #1528
00535f96c 	str	x1, [x20, #1528]
00535f970 	ldp	x20, x19, [sp, #32]
00535f974 	ldp	x22, x21, [sp, #16]
00535f978 	ldp	x30, x23, [sp], #48
00535f97c 	b	#-14479224 ; -> 0x4590a04 
00535f980 	bl	#-14478452 ; -> 0x4590d0c 
