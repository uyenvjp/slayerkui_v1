00506f7d4 	sub	sp, sp, #80
00506f7d8 	stp	x30, x23, [sp, #32]
00506f7dc 	stp	x22, x21, [sp, #48]
00506f7e0 	stp	x20, x19, [sp, #64]
00506f7e4 	adrp	x21, #95842304 ; -> 0xabd6000 
00506f7e8 	mov	x20, x1
00506f7ec 	mov	x19, x0
00506f7f0 	ldrb	w8, [x21, #166]
00506f7f4 	tbnz	w8, #0, #156 ; -> 0x506f890 
00506f7f8 	adrp	x0, #87531520 ; -> 0xa3e9000 
00506f7fc 	ldr	x0, [x0, #3552]
00506f800 	bl	#-11398560 ; -> 0x4590a60 
00506f804 	adrp	x0, #87552000 ; -> 0xa3ee000 
00506f808 	ldr	x0, [x0, #2104]
00506f80c 	bl	#-11398572 ; -> 0x4590a60 
00506f810 	adrp	x0, #87531520 ; -> 0xa3e9000 
00506f814 	ldr	x0, [x0, #1384]
00506f818 	bl	#-11398584 ; -> 0x4590a60 
00506f81c 	adrp	x0, #87560192 ; -> 0xa3f0000 
00506f820 	ldr	x0, [x0, #40]
00506f824 	bl	#-11398596 ; -> 0x4590a60 
00506f828 	adrp	x0, #87560192 ; -> 0xa3f0000 
00506f82c 	ldr	x0, [x0, #48]
00506f830 	bl	#-11398608 ; -> 0x4590a60 
00506f834 	adrp	x0, #87560192 ; -> 0xa3f0000 
00506f838 	ldr	x0, [x0, #56]
00506f83c 	bl	#-11398620 ; -> 0x4590a60 
00506f840 	adrp	x0, #87568384 ; -> 0xa3f2000 
00506f844 	ldr	x0, [x0, #552]
00506f848 	bl	#-11398632 ; -> 0x4590a60 
00506f84c 	adrp	x0, #87552000 ; -> 0xa3ee000 
00506f850 	ldr	x0, [x0, #2840]
00506f854 	bl	#-11398644 ; -> 0x4590a60 
00506f858 	adrp	x0, #87805952 ; -> 0xa42c000 
00506f85c 	ldr	x0, [x0, #488]
00506f860 	bl	#-11398656 ; -> 0x4590a60 
00506f864 	adrp	x0, #87556096 ; -> 0xa3ef000 
00506f868 	ldr	x0, [x0, #3424]
00506f86c 	bl	#-11398668 ; -> 0x4590a60 
00506f870 	adrp	x0, #87556096 ; -> 0xa3ef000 
00506f874 	ldr	x0, [x0, #3552]
00506f878 	bl	#-11398680 ; -> 0x4590a60 
00506f87c 	adrp	x0, #87752704 ; -> 0xa41f000 
00506f880 	ldr	x0, [x0, #1528]
00506f884 	bl	#-11398692 ; -> 0x4590a60 
00506f888 	mov	w8, #1
00506f88c 	strb	w8, [x21, #166]
00506f890 	mov	w0, #37489
00506f894 	mov	x1, xzr
00506f898 	bl	#-4358900 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00506f89c 	tbz	w0, #0, #52 ; -> 0x506f8d0 
00506f8a0 	mov	w0, #37489
00506f8a4 	mov	x1, xzr
00506f8a8 	bl	#-4358736 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00506f8ac 	cbz	x0, #2344 ; -> 0x50701d4 
00506f8b0 	mov	x1, x19
00506f8b4 	mov	x2, x20
00506f8b8 	mov	x3, xzr
00506f8bc 	ldp	x20, x19, [sp, #64]
00506f8c0 	ldp	x22, x21, [sp, #48]
00506f8c4 	ldp	x30, x23, [sp, #32]
00506f8c8 	add	sp, sp, #80
00506f8cc 	b	#-5181624 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
00506f8d0 	cbz	x20, #2308 ; -> 0x50701d4 
00506f8d4 	mov	x0, x20
00506f8d8 	mov	x1, xzr
00506f8dc 	bl	#77139204 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00506f8e0 	cbz	x0, #2292 ; -> 0x50701d4 
00506f8e4 	mov	x1, xzr
00506f8e8 	bl	#77140888 ; -> 0x9a00c80 UnityEngine.Component::get_tag
00506f8ec 	adrp	x8, #87752704 ; -> 0xa41f000 
00506f8f0 	mov	x2, xzr
00506f8f4 	ldr	x8, [x8, #1528]
00506f8f8 	ldr	x1, [x8]
00506f8fc 	bl	#63280572 ; -> 0x8cc8eb8 System.String::op_Equality
00506f900 	tbz	w0, #0, #2240 ; -> 0x50701c0 
00506f904 	ldr	w0, [x19, #76]
00506f908 	cmp	w0, #12
00506f90c 	b.le	#116 ; -> 0x506f980 
00506f910 	cmp	w0, #99
00506f914 	b.gt	#144 ; -> 0x506f9a4 
00506f918 	sub	w8, w0, #13
00506f91c 	cmp	w8, #3
00506f920 	b.hs	#648 ; -> 0x506fba8 
00506f924 	add	x0, x19, #88
00506f928 	mov	x1, xzr
00506f92c 	bl	#-5369560 ; -> 0x4b50a54 SilentBigInt::get_Value
00506f930 	ldr	w8, [x19, #76]
00506f934 	cmp	w8, #15
00506f938 	b.eq	#1936 ; -> 0x50700c8 
00506f93c 	cmp	w8, #14
00506f940 	b.eq	#1876 ; -> 0x5070094 
00506f944 	cmp	w8, #13
00506f948 	b.ne	#1968 ; -> 0x50700f8 
00506f94c 	ldr	x20, [x19, #32]
00506f950 	add	x0, x19, #88
00506f954 	mov	x1, xzr
00506f958 	bl	#-5369604 ; -> 0x4b50a54 SilentBigInt::get_Value
00506f95c 	cbz	x20, #2168 ; -> 0x50701d4 
00506f960 	mov	x2, x0
00506f964 	mov	x3, x1
00506f968 	mov	x0, x20
00506f96c 	mov	x1, x2
00506f970 	mov	x2, x3
00506f974 	mov	x3, xzr
00506f978 	bl	#-3282700 ; -> 0x4d4e26c DatabaseManager::SoulGreen_Cal
00506f97c 	b	#1916 ; -> 0x50700f8 
00506f980 	cmp	w0, #5
00506f984 	b.gt	#196 ; -> 0x506fa48 
00506f988 	cmp	w0, #3
00506f98c 	b.eq	#200 ; -> 0x506fa54 
00506f990 	cmp	w0, #4
00506f994 	b.eq	#1484 ; -> 0x506ff60 
00506f998 	cmp	w0, #5
00506f99c 	b.eq	#184 ; -> 0x506fa54 
00506f9a0 	b	#1712 ; -> 0x5070050 
00506f9a4 	cmp	w0, #102
00506f9a8 	b.gt	#412 ; -> 0x506fb44 
00506f9ac 	cmp	w0, #100
00506f9b0 	b.eq	#824 ; -> 0x506fce8 
00506f9b4 	cmp	w0, #101
00506f9b8 	b.ne	#1688 ; -> 0x5070050 
00506f9bc 	adrp	x8, #87805952 ; -> 0xa42c000 
00506f9c0 	adrp	x9, #87552000 ; -> 0xa3ee000 
00506f9c4 	ldr	x8, [x8, #488]
00506f9c8 	ldr	x9, [x9, #2104]
00506f9cc 	ldr	x8, [x8]
00506f9d0 	ldr	x0, [x9]
00506f9d4 	ldr	x8, [x8, #184]
00506f9d8 	ldr	w9, [x0, #228]
00506f9dc 	ldr	x20, [x8]
00506f9e0 	cbnz	w9, #8 ; -> 0x506f9e8 
00506f9e4 	bl	#-11398660 ; -> 0x4590be0 
00506f9e8 	mov	x0, xzr
00506f9ec 	bl	#-8522488 ; -> 0x484eef4 
00506f9f0 	cbz	x0, #2020 ; -> 0x50701d4 
00506f9f4 	ldr	x21, [x0, #40]
00506f9f8 	add	x0, x19, #88
00506f9fc 	mov	x1, xzr
00506fa00 	bl	#-5369772 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fa04 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506fa08 	mov	x22, x0
00506fa0c 	mov	x23, x1
00506fa10 	ldr	x8, [x8, #3552]
00506fa14 	ldr	x0, [x8]
00506fa18 	ldr	w8, [x0, #228]
00506fa1c 	cbnz	w8, #8 ; -> 0x506fa24 
00506fa20 	bl	#-11398720 ; -> 0x4590be0 
00506fa24 	mov	x0, x22
00506fa28 	mov	x1, x23
00506fa2c 	mov	x2, xzr
00506fa30 	bl	#68212384 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fa34 	cbz	x21, #1952 ; -> 0x50701d4 
00506fa38 	adrp	x8, #87560192 ; -> 0xa3f0000 
00506fa3c 	mov	w1, w0
00506fa40 	ldr	x8, [x8, #56]
00506fa44 	b	#812 ; -> 0x506fd70 
00506fa48 	sub	w8, w0, #11
00506fa4c 	cmp	w8, #2
00506fa50 	b.hs	#420 ; -> 0x506fbf4 
00506fa54 	adrp	x8, #87805952 ; -> 0xa42c000 
00506fa58 	adrp	x21, #87531520 ; -> 0xa3e9000 
00506fa5c 	ldr	x8, [x8, #488]
00506fa60 	ldr	x21, [x21, #1384]
00506fa64 	ldr	x8, [x8]
00506fa68 	ldr	x0, [x21]
00506fa6c 	ldr	x8, [x8, #184]
00506fa70 	ldr	w9, [x0, #228]
00506fa74 	ldr	x20, [x8]
00506fa78 	cbnz	w9, #12 ; -> 0x506fa84 
00506fa7c 	bl	#-11398812 ; -> 0x4590be0 
00506fa80 	ldr	x0, [x21]
00506fa84 	ldr	x8, [x0, #184]
00506fa88 	add	x0, x19, #88
00506fa8c 	mov	x1, xzr
00506fa90 	ldr	x21, [x8]
00506fa94 	bl	#-5369920 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fa98 	cbz	x21, #1852 ; -> 0x50701d4 
00506fa9c 	mov	x2, x0
00506faa0 	mov	x3, x1
00506faa4 	mov	x0, x21
00506faa8 	mov	x1, x2
00506faac 	mov	x2, x3
00506fab0 	mov	w3, #1
00506fab4 	mov	x4, xzr
00506fab8 	bl	#-3260176 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
00506fabc 	adrp	x8, #87556096 ; -> 0xa3ef000 
00506fac0 	mov	x1, x0
00506fac4 	mov	x2, xzr
00506fac8 	ldr	x8, [x8, #3552]
00506facc 	ldr	x8, [x8]
00506fad0 	mov	x0, x8
00506fad4 	bl	#63292276 ; -> 0x8ccbe48 System.String::Concat
00506fad8 	cbz	x20, #1788 ; -> 0x50701d4 
00506fadc 	ldr	x2, [x19, #80]
00506fae0 	mov	x1, x0
00506fae4 	mov	x0, x20
00506fae8 	mov	x3, xzr
00506faec 	bl	#1731936 ; -> 0x521684c ItemDropManager::ItemDropLog
00506faf0 	ldr	w20, [x19, #76]
00506faf4 	add	x0, x19, #88
00506faf8 	mov	x1, xzr
00506fafc 	bl	#-5370024 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fb00 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506fb04 	mov	x21, x0
00506fb08 	mov	x22, x1
00506fb0c 	ldr	x8, [x8, #3552]
00506fb10 	ldr	x0, [x8]
00506fb14 	ldr	w8, [x0, #228]
00506fb18 	cbnz	w8, #8 ; -> 0x506fb20 
00506fb1c 	bl	#-11398972 ; -> 0x4590be0 
00506fb20 	mov	x0, x21
00506fb24 	mov	x1, x22
00506fb28 	mov	x2, xzr
00506fb2c 	bl	#68212132 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fb30 	sxtw	x2, w0
00506fb34 	mov	w1, w20
00506fb38 	mov	x0, x19
00506fb3c 	bl	#1692 ; -> 0x50701d8 DropObject::AddCurrency
00506fb40 	b	#1624 ; -> 0x5070198 
00506fb44 	cmp	w0, #103
00506fb48 	b.eq	#652 ; -> 0x506fdd4 
00506fb4c 	cmp	w0, #900
00506fb50 	b.ne	#1280 ; -> 0x5070050 
00506fb54 	adrp	x20, #87568384 ; -> 0xa3f2000 
00506fb58 	ldr	x20, [x20, #552]
00506fb5c 	ldr	x0, [x20]
00506fb60 	ldr	w8, [x0, #228]
00506fb64 	cbnz	w8, #12 ; -> 0x506fb70 
00506fb68 	bl	#-11399048 ; -> 0x4590be0 
00506fb6c 	ldr	x0, [x20]
00506fb70 	ldr	x8, [x0, #184]
00506fb74 	ldr	x0, [x8]
00506fb78 	cbz	x0, #1628 ; -> 0x50701d4 
00506fb7c 	mov	x1, xzr
00506fb80 	bl	#-2198160 ; -> 0x4e570f0 GameManager::MineBoxGet
00506fb84 	adrp	x8, #87805952 ; -> 0xa42c000 
00506fb88 	mov	x0, xzr
00506fb8c 	ldr	x8, [x8, #488]
00506fb90 	ldr	x8, [x8]
00506fb94 	ldr	x8, [x8, #184]
00506fb98 	ldr	x20, [x8]
00506fb9c 	bl	#-7075916 ; -> 0x49b0350 STR::get_GOODS_NAME_MINEBOX
00506fba0 	cbnz	x20, #1244 ; -> 0x507007c 
00506fba4 	b	#1584 ; -> 0x50701d4 
00506fba8 	cmp	w0, #24
00506fbac 	b.ne	#1188 ; -> 0x5070050 
00506fbb0 	adrp	x8, #87556096 ; -> 0xa3ef000 
00506fbb4 	add	x0, x19, #88
00506fbb8 	mov	x1, xzr
00506fbbc 	ldr	x8, [x8, #3424]
00506fbc0 	ldr	x8, [x8]
00506fbc4 	ldr	x8, [x8, #184]
00506fbc8 	ldr	x20, [x8]
00506fbcc 	bl	#-5370232 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fbd0 	cbz	x20, #1540 ; -> 0x50701d4 
00506fbd4 	mov	x2, x0
00506fbd8 	mov	x3, x1
00506fbdc 	mov	x0, x20
00506fbe0 	mov	x1, x2
00506fbe4 	mov	x2, x3
00506fbe8 	mov	x3, xzr
00506fbec 	bl	#-1409556 ; -> 0x4f179d8 StatManager::Get_Exp
00506fbf0 	b	#1448 ; -> 0x5070198 
00506fbf4 	cmp	w0, #6
00506fbf8 	b.ne	#1112 ; -> 0x5070050 
00506fbfc 	ldr	x20, [x19, #32]
00506fc00 	add	x0, x19, #88
00506fc04 	mov	x1, xzr
00506fc08 	bl	#-5370292 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fc0c 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506fc10 	mov	x21, x0
00506fc14 	mov	x22, x1
00506fc18 	ldr	x8, [x8, #3552]
00506fc1c 	ldr	x0, [x8]
00506fc20 	ldr	w8, [x0, #228]
00506fc24 	cbnz	w8, #8 ; -> 0x506fc2c 
00506fc28 	bl	#-11399240 ; -> 0x4590be0 
00506fc2c 	mov	x0, x21
00506fc30 	mov	x1, x22
00506fc34 	mov	x2, xzr
00506fc38 	bl	#68212684 ; -> 0x917d404 System.Numerics.BigInteger::op_Explicit
00506fc3c 	cbz	x20, #1432 ; -> 0x50701d4 
00506fc40 	mov	x1, x0
00506fc44 	mov	x0, x20
00506fc48 	mov	x2, xzr
00506fc4c 	bl	#-3285160 ; -> 0x4d4dba4 DatabaseManager::UpgradeCube_Cal
00506fc50 	adrp	x8, #87805952 ; -> 0xa42c000 
00506fc54 	adrp	x22, #87531520 ; -> 0xa3e9000 
00506fc58 	mov	x20, x0
00506fc5c 	ldr	x8, [x8, #488]
00506fc60 	ldr	x22, [x22, #1384]
00506fc64 	ldr	x9, [x8]
00506fc68 	ldr	x8, [x22]
00506fc6c 	ldr	x9, [x9, #184]
00506fc70 	ldr	w10, [x8, #228]
00506fc74 	ldr	x21, [x9]
00506fc78 	cbnz	w10, #16 ; -> 0x506fc88 
00506fc7c 	mov	x0, x8
00506fc80 	bl	#-11399328 ; -> 0x4590be0 
00506fc84 	ldr	x8, [x22]
00506fc88 	ldr	x8, [x8, #184]
00506fc8c 	ldr	x0, [x8]
00506fc90 	cbz	x0, #1348 ; -> 0x50701d4 
00506fc94 	mov	x1, x20
00506fc98 	mov	w2, #1
00506fc9c 	mov	x3, xzr
00506fca0 	bl	#-3260324 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
00506fca4 	adrp	x8, #87556096 ; -> 0xa3ef000 
00506fca8 	mov	x1, x0
00506fcac 	mov	x2, xzr
00506fcb0 	ldr	x8, [x8, #3552]
00506fcb4 	ldr	x8, [x8]
00506fcb8 	mov	x0, x8
00506fcbc 	bl	#63291788 ; -> 0x8ccbe48 System.String::Concat
00506fcc0 	cbz	x21, #1300 ; -> 0x50701d4 
00506fcc4 	ldr	x2, [x19, #80]
00506fcc8 	mov	x1, x0
00506fccc 	mov	x0, x21
00506fcd0 	mov	x3, xzr
00506fcd4 	bl	#1731448 ; -> 0x521684c ItemDropManager::ItemDropLog
00506fcd8 	ldr	w1, [x19, #76]
00506fcdc 	mov	x0, x19
00506fce0 	mov	x2, x20
00506fce4 	b	#-424 ; -> 0x506fb3c 
00506fce8 	adrp	x8, #87805952 ; -> 0xa42c000 
00506fcec 	adrp	x9, #87552000 ; -> 0xa3ee000 
00506fcf0 	ldr	x8, [x8, #488]
00506fcf4 	ldr	x9, [x9, #2104]
00506fcf8 	ldr	x8, [x8]
00506fcfc 	ldr	x0, [x9]
00506fd00 	ldr	x8, [x8, #184]
00506fd04 	ldr	w9, [x0, #228]
00506fd08 	ldr	x20, [x8]
00506fd0c 	cbnz	w9, #8 ; -> 0x506fd14 
00506fd10 	bl	#-11399472 ; -> 0x4590be0 
00506fd14 	mov	x0, xzr
00506fd18 	bl	#-8523300 ; -> 0x484eef4 
00506fd1c 	cbz	x0, #1208 ; -> 0x50701d4 
00506fd20 	ldr	x21, [x0, #48]
00506fd24 	add	x0, x19, #88
00506fd28 	mov	x1, xzr
00506fd2c 	bl	#-5370584 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fd30 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506fd34 	mov	x22, x0
00506fd38 	mov	x23, x1
00506fd3c 	ldr	x8, [x8, #3552]
00506fd40 	ldr	x0, [x8]
00506fd44 	ldr	w8, [x0, #228]
00506fd48 	cbnz	w8, #8 ; -> 0x506fd50 
00506fd4c 	bl	#-11399532 ; -> 0x4590be0 
00506fd50 	mov	x0, x22
00506fd54 	mov	x1, x23
00506fd58 	mov	x2, xzr
00506fd5c 	bl	#68211572 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fd60 	cbz	x21, #1140 ; -> 0x50701d4 
00506fd64 	adrp	x8, #87560192 ; -> 0xa3f0000 
00506fd68 	mov	w1, w0
00506fd6c 	ldr	x8, [x8, #48]
00506fd70 	ldr	x2, [x8]
00506fd74 	mov	x0, x21
00506fd78 	bl	#50235932 ; -> 0x8058794 
00506fd7c 	cbz	x0, #1112 ; -> 0x50701d4 
00506fd80 	ldr	x8, [x0]
00506fd84 	ldp	x9, x1, [x8, #408]
00506fd88 	blr	x9
00506fd8c 	cbz	x20, #1096 ; -> 0x50701d4 
00506fd90 	ldr	x2, [x19, #80]
00506fd94 	mov	x1, x0
00506fd98 	mov	x0, x20
00506fd9c 	mov	x3, xzr
00506fda0 	bl	#1731244 ; -> 0x521684c ItemDropManager::ItemDropLog
00506fda4 	ldr	w20, [x19, #76]
00506fda8 	add	x0, x19, #88
00506fdac 	mov	x1, xzr
00506fdb0 	bl	#-5370716 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fdb4 	mov	x2, xzr
00506fdb8 	bl	#68211480 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fdbc 	mov	w2, w0
00506fdc0 	mov	x0, x19
00506fdc4 	mov	w1, w20
00506fdc8 	mov	w3, #1
00506fdcc 	bl	#2388 ; -> 0x5070720 DropObject::AddEquipment
00506fdd0 	b	#968 ; -> 0x5070198 
00506fdd4 	adrp	x8, #87805952 ; -> 0xa42c000 
00506fdd8 	adrp	x9, #87552000 ; -> 0xa3ee000 
00506fddc 	ldr	x8, [x8, #488]
00506fde0 	ldr	x9, [x9, #2104]
00506fde4 	ldr	x8, [x8]
00506fde8 	ldr	x0, [x9]
00506fdec 	ldr	x8, [x8, #184]
00506fdf0 	ldr	w9, [x0, #228]
00506fdf4 	ldr	x20, [x8]
00506fdf8 	cbnz	w9, #8 ; -> 0x506fe00 
00506fdfc 	bl	#-11399708 ; -> 0x4590be0 
00506fe00 	mov	x0, xzr
00506fe04 	bl	#-8523536 ; -> 0x484eef4 
00506fe08 	cbz	x0, #972 ; -> 0x50701d4 
00506fe0c 	ldr	x21, [x0, #56]
00506fe10 	add	x0, x19, #88
00506fe14 	mov	x1, xzr
00506fe18 	bl	#-5370820 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fe1c 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506fe20 	mov	x22, x0
00506fe24 	mov	x23, x1
00506fe28 	ldr	x8, [x8, #3552]
00506fe2c 	ldr	x0, [x8]
00506fe30 	ldr	w8, [x0, #228]
00506fe34 	cbnz	w8, #8 ; -> 0x506fe3c 
00506fe38 	bl	#-11399768 ; -> 0x4590be0 
00506fe3c 	mov	x0, x22
00506fe40 	mov	x1, x23
00506fe44 	mov	x2, xzr
00506fe48 	bl	#68211336 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fe4c 	cbz	x21, #904 ; -> 0x50701d4 
00506fe50 	adrp	x8, #87560192 ; -> 0xa3f0000 
00506fe54 	mov	w1, w0
00506fe58 	mov	x0, x21
00506fe5c 	ldr	x8, [x8, #40]
00506fe60 	ldr	x2, [x8]
00506fe64 	bl	#50235696 ; -> 0x8058794 
00506fe68 	cbz	x0, #876 ; -> 0x50701d4 
00506fe6c 	ldr	x8, [x0]
00506fe70 	ldp	x9, x1, [x8, #408]
00506fe74 	blr	x9
00506fe78 	cbz	x20, #860 ; -> 0x50701d4 
00506fe7c 	ldr	x2, [x19, #80]
00506fe80 	mov	x1, x0
00506fe84 	mov	x0, x20
00506fe88 	mov	x3, xzr
00506fe8c 	bl	#1731008 ; -> 0x521684c ItemDropManager::ItemDropLog
00506fe90 	ldr	w20, [x19, #76]
00506fe94 	add	x0, x19, #88
00506fe98 	mov	x1, xzr
00506fe9c 	bl	#-5370952 ; -> 0x4b50a54 SilentBigInt::get_Value
00506fea0 	mov	x2, xzr
00506fea4 	bl	#68211244 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506fea8 	mov	w2, w0
00506feac 	mov	x0, x19
00506feb0 	mov	w1, w20
00506feb4 	mov	w3, #1
00506feb8 	bl	#2152 ; -> 0x5070720 DropObject::AddEquipment
00506febc 	adrp	x21, #87568384 ; -> 0xa3f2000 
00506fec0 	ldr	x21, [x21, #552]
00506fec4 	ldr	x0, [x21]
00506fec8 	ldr	w8, [x0, #228]
00506fecc 	cbnz	w8, #12 ; -> 0x506fed8 
00506fed0 	bl	#-11399920 ; -> 0x4590be0 
00506fed4 	ldr	x0, [x21]
00506fed8 	ldr	x8, [x0, #184]
00506fedc 	ldr	x0, [x8]
00506fee0 	cbz	x0, #756 ; -> 0x50701d4 
00506fee4 	mov	x1, xzr
00506fee8 	bl	#-2285460 ; -> 0x4e41f54 GameManager::get_gameMode
00506feec 	adrp	x22, #87552000 ; -> 0xa3ee000 
00506fef0 	mov	w20, w0
00506fef4 	mov	w8, #6
00506fef8 	ldr	x22, [x22, #2840]
00506fefc 	add	x1, sp, #28
00506ff00 	str	w8, [sp, #28]
00506ff04 	ldr	x0, [x22]
00506ff08 	bl	#-11399968 ; -> 0x4590be8 
00506ff0c 	ldr	x8, [x22]
00506ff10 	mov	x1, x0
00506ff14 	mov	x9, #-1
00506ff18 	mov	x0, sp
00506ff1c 	mov	x2, xzr
00506ff20 	str	w20, [sp, #16]
00506ff24 	stp	x8, x9, [sp]
00506ff28 	bl	#65272536 ; -> 0x8eafa00 System.Enum::Equals
00506ff2c 	tbz	w0, #0, #620 ; -> 0x5070198 
00506ff30 	ldr	x0, [x21]
00506ff34 	ldr	w8, [x0, #228]
00506ff38 	cbnz	w8, #12 ; -> 0x506ff44 
00506ff3c 	bl	#-11400028 ; -> 0x4590be0 
00506ff40 	ldr	x0, [x21]
00506ff44 	ldr	x8, [x0, #184]
00506ff48 	ldr	x8, [x8]
00506ff4c 	cbz	x8, #648 ; -> 0x50701d4 
00506ff50 	ldr	w9, [x8, #1928]
00506ff54 	add	w9, w9, #1
00506ff58 	str	w9, [x8, #1928]
00506ff5c 	b	#572 ; -> 0x5070198 
00506ff60 	ldr	x20, [x19, #32]
00506ff64 	add	x0, x19, #88
00506ff68 	mov	x1, xzr
00506ff6c 	bl	#-5371160 ; -> 0x4b50a54 SilentBigInt::get_Value
00506ff70 	adrp	x8, #87531520 ; -> 0xa3e9000 
00506ff74 	mov	x21, x0
00506ff78 	mov	x22, x1
00506ff7c 	ldr	x8, [x8, #3552]
00506ff80 	ldr	x0, [x8]
00506ff84 	ldr	w8, [x0, #228]
00506ff88 	cbnz	w8, #8 ; -> 0x506ff90 
00506ff8c 	bl	#-11400108 ; -> 0x4590be0 
00506ff90 	mov	x0, x21
00506ff94 	mov	x1, x22
00506ff98 	mov	x2, xzr
00506ff9c 	bl	#68210996 ; -> 0x917d0d0 System.Numerics.BigInteger::op_Explicit
00506ffa0 	cbz	x20, #564 ; -> 0x50701d4 
00506ffa4 	mov	w1, w0
00506ffa8 	mov	x0, x20
00506ffac 	mov	x2, xzr
00506ffb0 	bl	#-3284904 ; -> 0x4d4e008 DatabaseManager::Dice_Cal
00506ffb4 	adrp	x8, #87805952 ; -> 0xa42c000 
00506ffb8 	adrp	x22, #87531520 ; -> 0xa3e9000 
00506ffbc 	mov	w21, w0
00506ffc0 	ldr	x8, [x8, #488]
00506ffc4 	ldr	x22, [x22, #1384]
00506ffc8 	ldr	x9, [x8]
00506ffcc 	ldr	x8, [x22]
00506ffd0 	ldr	x9, [x9, #184]
00506ffd4 	ldr	w10, [x8, #228]
00506ffd8 	ldr	x20, [x9]
00506ffdc 	cbnz	w10, #16 ; -> 0x506ffec 
00506ffe0 	mov	x0, x8
00506ffe4 	bl	#-11400196 ; -> 0x4590be0 
00506ffe8 	ldr	x8, [x22]
00506ffec 	ldr	x8, [x8, #184]
00506fff0 	ldr	x0, [x8]
00506fff4 	cbz	x0, #480 ; -> 0x50701d4 
00506fff8 	sxtw	x21, w21
00506fffc 	mov	w2, #1
005070000 	mov	x3, xzr
005070004 	mov	x1, x21
005070008 	bl	#-3261196 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
00507000c 	adrp	x8, #87552000 ; -> 0xa3ef000 
005070010 	mov	x1, x0
005070014 	mov	x2, xzr
005070018 	ldr	x8, [x8, #3552]
00507001c 	ldr	x8, [x8]
005070020 	mov	x0, x8
005070024 	bl	#63290916 ; -> 0x8ccbe48 System.String::Concat
005070028 	cbz	x20, #428 ; -> 0x50701d4 
00507002c 	ldr	x2, [x19, #80]
005070030 	mov	x1, x0
005070034 	mov	x0, x20
005070038 	mov	x3, xzr
00507003c 	bl	#1730576 ; -> 0x521684c ItemDropManager::ItemDropLog
005070040 	ldr	w1, [x19, #76]
005070044 	mov	x0, x19
005070048 	mov	x2, x21
00507004c 	b	#-1296 ; -> 0x506fb3c 
005070050 	and	w8, w0, #0xfffffffe
005070054 	cmp	w8, #3000
005070058 	b.ne	#320 ; -> 0x5070198 
00507005c 	adrp	x8, #87801856 ; -> 0xa42c000 
005070060 	mov	x1, xzr
005070064 	ldr	x8, [x8, #488]
005070068 	ldr	x8, [x8]
00507006c 	ldr	x8, [x8, #184]
005070070 	ldr	x20, [x8]
005070074 	bl	#-5284424 ; -> 0x4b65e2c SExtension::GetName
005070078 	cbz	x20, #348 ; -> 0x50701d4 
00507007c 	ldr	x2, [x19, #80]
005070080 	mov	x1, x0
005070084 	mov	x0, x20
005070088 	mov	x3, xzr
00507008c 	bl	#1730496 ; -> 0x521684c ItemDropManager::ItemDropLog
005070090 	b	#264 ; -> 0x5070198 
005070094 	ldr	x20, [x19, #32]
005070098 	add	x0, x19, #88
00507009c 	mov	x1, xzr
0050700a0 	bl	#-5371468 ; -> 0x4b50a54 SilentBigInt::get_Value
0050700a4 	cbz	x20, #304 ; -> 0x50701d4 
0050700a8 	mov	x2, x0
0050700ac 	mov	x3, x1
0050700b0 	mov	x0, x20
0050700b4 	mov	x1, x2
0050700b8 	mov	x2, x3
0050700bc 	mov	x3, xzr
0050700c0 	bl	#-3284240 ; -> 0x4d4e3b0 DatabaseManager::SoulBlue_Cal
0050700c4 	b	#52 ; -> 0x50700f8 
0050700c8 	ldr	x20, [x19, #32]
0050700cc 	add	x0, x19, #88
0050700d0 	mov	x1, xzr
0050700d4 	bl	#-5371520 ; -> 0x4b50a54 SilentBigInt::get_Value
0050700d8 	cbz	x20, #252 ; -> 0x50701d4 
0050700dc 	mov	x2, x0
0050700e0 	mov	x3, x1
0050700e4 	mov	x0, x20
0050700e8 	mov	x1, x2
0050700ec 	mov	x2, x3
0050700f0 	mov	x3, xzr
0050700f4 	bl	#-3283968 ; -> 0x4d4e4f4 DatabaseManager::SoulRed_Cal
0050700f8 	adrp	x8, #87801856 ; -> 0xa42c000 
0050700fc 	adrp	x23, #87527424 ; -> 0xa3e9000 
005070100 	mov	x20, x0
005070104 	ldr	x8, [x8, #488]
005070108 	ldr	x23, [x23, #1384]
00507010c 	mov	x21, x1
005070110 	ldr	x8, [x8]
005070114 	ldr	x0, [x23]
005070118 	ldr	x8, [x8, #184]
00507011c 	ldr	w9, [x0, #228]
005070120 	ldr	x22, [x8]
005070124 	cbnz	w9, #12 ; -> 0x5070130 
005070128 	bl	#-11400520 ; -> 0x4590be0 
00507012c 	ldr	x0, [x23]
005070130 	ldr	x8, [x0, #184]
005070134 	ldr	x0, [x8]
005070138 	cbz	x0, #156 ; -> 0x50701d4 
00507013c 	mov	x1, x20
005070140 	mov	x2, x21
005070144 	mov	w3, #1
005070148 	mov	x4, xzr
00507014c 	bl	#-3261860 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
005070150 	adrp	x8, #87552000 ; -> 0xa3ef000 
005070154 	mov	x1, x0
005070158 	mov	x2, xzr
00507015c 	ldr	x8, [x8, #3552]
005070160 	ldr	x8, [x8]
005070164 	mov	x0, x8
005070168 	bl	#63290592 ; -> 0x8ccbe48 System.String::Concat
00507016c 	cbz	x22, #104 ; -> 0x50701d4 
005070170 	ldr	x2, [x19, #80]
005070174 	mov	x1, x0
005070178 	mov	x0, x22
00507017c 	mov	x3, xzr
005070180 	bl	#1730252 ; -> 0x521684c ItemDropManager::ItemDropLog
005070184 	ldr	w1, [x19, #76]
005070188 	mov	x0, x19
00507018c 	mov	x2, x20
005070190 	mov	x3, x21
005070194 	bl	#680 ; -> 0x507043c DropObject::AddCurrency
005070198 	mov	x0, xzr
00507019c 	bl	#-3503088 ; -> 0x4d18dac SoundManager::get_instance
0050701a0 	cbz	x0, #52 ; -> 0x50701d4 
0050701a4 	ldr	x8, [x0]
0050701a8 	mov	x1, xzr
0050701ac 	ldr	x9, [x8, #1368]
0050701b0 	ldr	x2, [x8, #1376]
0050701b4 	blr	x9
0050701b8 	mov	x0, x19
0050701bc 	bl	#-2724 ; -> 0x506f718 DropObject::ActiveFalse
0050701c0 	ldp	x20, x19, [sp, #64]
0050701c4 	ldp	x22, x21, [sp, #48]
0050701c8 	ldp	x30, x23, [sp, #32]
0050701cc 	add	sp, sp, #80
0050701d0 	ret
0050701d4 	bl	#-11400392 ; -> 0x4590d0c 
