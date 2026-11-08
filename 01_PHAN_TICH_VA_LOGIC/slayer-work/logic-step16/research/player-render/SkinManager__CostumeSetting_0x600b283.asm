00535f984 	stp	x30, x23, [sp, #-48]!
00535f988 	stp	x22, x21, [sp, #16]
00535f98c 	stp	x20, x19, [sp, #32]
00535f990 	adrp	x20, #92766208 ; -> 0xabd7000 
00535f994 	mov	x19, x0
00535f998 	ldrb	w8, [x20, #1598]
00535f99c 	tbnz	w8, #0, #84 ; -> 0x535f9f0 
00535f9a0 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f9a4 	ldr	x0, [x0, #2104]
00535f9a8 	bl	#-14479176 ; -> 0x4590a60 
00535f9ac 	adrp	x0, #84697088 ; -> 0xa425000 
00535f9b0 	ldr	x0, [x0, #504]
00535f9b4 	bl	#-14479188 ; -> 0x4590a60 
00535f9b8 	adrp	x0, #84697088 ; -> 0xa425000 
00535f9bc 	ldr	x0, [x0, #520]
00535f9c0 	bl	#-14479200 ; -> 0x4590a60 
00535f9c4 	adrp	x0, #84697088 ; -> 0xa425000 
00535f9c8 	ldr	x0, [x0, #528]
00535f9cc 	bl	#-14479212 ; -> 0x4590a60 
00535f9d0 	adrp	x0, #84684800 ; -> 0xa422000 
00535f9d4 	ldr	x0, [x0, #2992]
00535f9d8 	bl	#-14479224 ; -> 0x4590a60 
00535f9dc 	adrp	x0, #84705280 ; -> 0xa427000 
00535f9e0 	ldr	x0, [x0, #640]
00535f9e4 	bl	#-14479236 ; -> 0x4590a60 
00535f9e8 	mov	w8, #1
00535f9ec 	strb	w8, [x20, #1598]
00535f9f0 	mov	w0, #24900
00535f9f4 	mov	x1, xzr
00535f9f8 	bl	#-7439444 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00535f9fc 	tbz	w0, #0, #44 ; -> 0x535fa28 
00535fa00 	mov	w0, #24900
00535fa04 	mov	x1, xzr
00535fa08 	bl	#-7439280 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00535fa0c 	cbz	x0, #1064 ; -> 0x535fe34 
00535fa10 	mov	x1, x19
00535fa14 	ldp	x20, x19, [sp, #32]
00535fa18 	ldp	x22, x21, [sp, #16]
00535fa1c 	mov	x2, xzr
00535fa20 	ldp	x30, x23, [sp], #48
00535fa24 	b	#-8262916 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00535fa28 	ldr	x0, [x19, #32]
00535fa2c 	cbz	x0, #1032 ; -> 0x535fe34 
00535fa30 	mov	x1, xzr
00535fa34 	bl	#-6304820 ; -> 0x4d5c600 DatabaseManager::get_EventBuff_UsingCheck
00535fa38 	tbz	w0, #0, #1360 ; -> 0x535ff88 
00535fa3c 	ldr	x20, [x19, #32]
00535fa40 	cbz	x20, #1016 ; -> 0x535fe38 
00535fa44 	mov	w8, #20546
00535fa48 	ldrb	w8, [x20, x8]
00535fa4c 	cbz	w8, #296 ; -> 0x535fb74 
00535fa50 	adrp	x21, #84471808 ; -> 0xa3ee000 
00535fa54 	ldr	x21, [x21, #2104]
00535fa58 	ldr	x0, [x21]
00535fa5c 	ldr	w8, [x0, #228]
00535fa60 	cbnz	w8, #8 ; -> 0x535fa68 
00535fa64 	bl	#-14478980 ; -> 0x4590be0 
00535fa68 	adrp	x22, #92733440 ; -> 0xabcf000 
00535fa6c 	ldrb	w8, [x22, #360]
00535fa70 	cbnz	w8, #24 ; -> 0x535fa88 
00535fa74 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fa78 	ldr	x0, [x0, #2104]
00535fa7c 	bl	#-14479388 ; -> 0x4590a60 
00535fa80 	mov	w8, #1
00535fa84 	strb	w8, [x22, #360]
00535fa88 	ldr	x0, [x21]
00535fa8c 	ldr	w8, [x0, #228]
00535fa90 	cbnz	w8, #12 ; -> 0x535fa9c 
00535fa94 	bl	#-14479028 ; -> 0x4590be0 
00535fa98 	ldr	x0, [x21]
00535fa9c 	ldr	x8, [x0, #184]
00535faa0 	ldr	x9, [x8]
00535faa4 	cbz	x9, #920 ; -> 0x535fe3c 
00535faa8 	ldr	x8, [x19, #32]
00535faac 	cbz	x8, #916 ; -> 0x535fe40 
00535fab0 	ldr	x0, [x9, #544]
00535fab4 	cbz	x0, #912 ; -> 0x535fe44 
00535fab8 	adrp	x9, #84684800 ; -> 0xa422000 
00535fabc 	mov	w10, #20552
00535fac0 	ldr	x9, [x9, #2992]
00535fac4 	ldr	w1, [x8, x10]
00535fac8 	ldr	x2, [x9]
00535facc 	bl	#47156424 ; -> 0x8058794 
00535fad0 	mov	x1, x0
00535fad4 	str	x1, [x20, #1544]
00535fad8 	add	x0, x20, #1544
00535fadc 	bl	#-14479576 ; -> 0x4590a04 
00535fae0 	ldr	x20, [x19, #32]
00535fae4 	cbz	x20, #868 ; -> 0x535fe48 
00535fae8 	mov	w8, #20556
00535faec 	ldr	x0, [x21]
00535faf0 	ldr	w9, [x20, x8]
00535faf4 	ldr	w8, [x0, #228]
00535faf8 	cmp	w9, #1000
00535fafc 	b.ge	#132 ; -> 0x535fb80 
00535fb00 	cbnz	w8, #8 ; -> 0x535fb08 
00535fb04 	bl	#-14479140 ; -> 0x4590be0 
00535fb08 	ldrb	w8, [x22, #360]
00535fb0c 	cbnz	w8, #24 ; -> 0x535fb24 
00535fb10 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fb14 	ldr	x0, [x0, #2104]
00535fb18 	bl	#-14479544 ; -> 0x4590a60 
00535fb1c 	mov	w8, #1
00535fb20 	strb	w8, [x22, #360]
00535fb24 	ldr	x0, [x21]
00535fb28 	ldr	w8, [x0, #228]
00535fb2c 	cbnz	w8, #12 ; -> 0x535fb38 
00535fb30 	bl	#-14479184 ; -> 0x4590be0 
00535fb34 	ldr	x0, [x21]
00535fb38 	ldr	x8, [x0, #184]
00535fb3c 	ldr	x8, [x8]
00535fb40 	cbz	x8, #816 ; -> 0x535fe70 
00535fb44 	ldr	x0, [x8, #480]
00535fb48 	cbz	x0, #816 ; -> 0x535fe78 
00535fb4c 	adrp	x8, #84705280 ; -> 0xa427000 
00535fb50 	ldr	x8, [x8, #640]
00535fb54 	ldr	x2, [x8]
00535fb58 	mov	w1, wzr
00535fb5c 	bl	#47156280 ; -> 0x8058794 
00535fb60 	mov	x1, x0
00535fb64 	str	x1, [x20, #1512]
00535fb68 	add	x0, x20, #1512
00535fb6c 	bl	#-14479720 ; -> 0x4590a04 
00535fb70 	b	#140 ; -> 0x535fbfc 
00535fb74 	mov	x0, x19
00535fb78 	bl	#-2068 ; -> 0x535f364 SkinManager::CostumeSetting_Default
00535fb7c 	b	#680 ; -> 0x535fe24 
00535fb80 	cbnz	w8, #8 ; -> 0x535fb88 
00535fb84 	bl	#-14479268 ; -> 0x4590be0 
00535fb88 	ldrb	w8, [x22, #360]
00535fb8c 	cbnz	w8, #24 ; -> 0x535fba4 
00535fb90 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fb94 	ldr	x0, [x0, #2104]
00535fb98 	bl	#-14479672 ; -> 0x4590a60 
00535fb9c 	mov	w8, #1
00535fba0 	strb	w8, [x22, #360]
00535fba4 	ldr	x0, [x21]
00535fba8 	ldr	w8, [x0, #228]
00535fbac 	cbnz	w8, #12 ; -> 0x535fbb8 
00535fbb0 	bl	#-14479312 ; -> 0x4590be0 
00535fbb4 	ldr	x0, [x21]
00535fbb8 	ldr	x8, [x0, #184]
00535fbbc 	ldr	x9, [x8]
00535fbc0 	cbz	x9, #692 ; -> 0x535fe74 
00535fbc4 	ldr	x8, [x19, #32]
00535fbc8 	cbz	x8, #692 ; -> 0x535fe7c 
00535fbcc 	ldr	x0, [x9, #552]
00535fbd0 	cbz	x0, #688 ; -> 0x535fe80 
00535fbd4 	adrp	x9, #84705280 ; -> 0xa427000 
00535fbd8 	mov	w10, #20556
00535fbdc 	ldr	x9, [x9, #640]
00535fbe0 	ldr	w1, [x8, x10]
00535fbe4 	ldr	x2, [x9]
00535fbe8 	bl	#47156140 ; -> 0x8058794 
00535fbec 	mov	x1, x0
00535fbf0 	str	x1, [x20, #1512]
00535fbf4 	add	x0, x20, #1512
00535fbf8 	bl	#-14479860 ; -> 0x4590a04 
00535fbfc 	ldr	x20, [x19, #32]
00535fc00 	cbz	x20, #588 ; -> 0x535fe4c 
00535fc04 	mov	w8, #20560
00535fc08 	ldr	x0, [x21]
00535fc0c 	ldr	w9, [x20, x8]
00535fc10 	ldr	w8, [x0, #228]
00535fc14 	cmp	w9, #1000
00535fc18 	b.ge	#120 ; -> 0x535fc90 
00535fc1c 	cbnz	w8, #8 ; -> 0x535fc24 
00535fc20 	bl	#-14479424 ; -> 0x4590be0 
00535fc24 	ldrb	w8, [x22, #360]
00535fc28 	cbnz	w8, #24 ; -> 0x535fc40 
00535fc2c 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fc30 	ldr	x0, [x0, #2104]
00535fc34 	bl	#-14479828 ; -> 0x4590a60 
00535fc38 	mov	w8, #1
00535fc3c 	strb	w8, [x22, #360]
00535fc40 	ldr	x0, [x21]
00535fc44 	ldr	w8, [x0, #228]
00535fc48 	cbnz	w8, #12 ; -> 0x535fc54 
00535fc4c 	bl	#-14479468 ; -> 0x4590be0 
00535fc50 	ldr	x0, [x21]
00535fc54 	ldr	x8, [x0, #184]
00535fc58 	ldr	x8, [x8]
00535fc5c 	cbz	x8, #552 ; -> 0x535fe84 
00535fc60 	ldr	x0, [x8, #504]
00535fc64 	cbz	x0, #552 ; -> 0x535fe8c 
00535fc68 	adrp	x8, #84697088 ; -> 0xa425000 
00535fc6c 	ldr	x8, [x8, #528]
00535fc70 	ldr	x2, [x8]
00535fc74 	mov	w1, wzr
00535fc78 	bl	#47155996 ; -> 0x8058794 
00535fc7c 	mov	x1, x0
00535fc80 	str	x1, [x20, #1528]
00535fc84 	add	x0, x20, #1528
00535fc88 	bl	#-14480004 ; -> 0x4590a04 
00535fc8c 	b	#128 ; -> 0x535fd0c 
00535fc90 	cbnz	w8, #8 ; -> 0x535fc98 
00535fc94 	bl	#-14479540 ; -> 0x4590be0 
00535fc98 	ldrb	w8, [x22, #360]
00535fc9c 	cbnz	w8, #24 ; -> 0x535fcb4 
00535fca0 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fca4 	ldr	x0, [x0, #2104]
00535fca8 	bl	#-14479944 ; -> 0x4590a60 
00535fcac 	mov	w8, #1
00535fcb0 	strb	w8, [x22, #360]
00535fcb4 	ldr	x0, [x21]
00535fcb8 	ldr	w8, [x0, #228]
00535fcbc 	cbnz	w8, #12 ; -> 0x535fcc8 
00535fcc0 	bl	#-14479584 ; -> 0x4590be0 
00535fcc4 	ldr	x0, [x21]
00535fcc8 	ldr	x8, [x0, #184]
00535fccc 	ldr	x9, [x8]
00535fcd0 	cbz	x9, #440 ; -> 0x535fe88 
00535fcd4 	ldr	x8, [x19, #32]
00535fcd8 	cbz	x8, #440 ; -> 0x535fe90 
00535fcdc 	ldr	x0, [x9, #568]
00535fce0 	cbz	x0, #436 ; -> 0x535fe94 
00535fce4 	adrp	x9, #84697088 ; -> 0xa425000 
00535fce8 	mov	w10, #20560
00535fcec 	ldr	x9, [x9, #528]
00535fcf0 	ldr	w1, [x8, x10]
00535fcf4 	ldr	x2, [x9]
00535fcf8 	bl	#47155868 ; -> 0x8058794 
00535fcfc 	mov	x1, x0
00535fd00 	str	x1, [x20, #1528]
00535fd04 	add	x0, x20, #1528
00535fd08 	bl	#-14480132 ; -> 0x4590a04 
00535fd0c 	ldr	x0, [x21]
00535fd10 	ldr	x23, [x19, #32]
00535fd14 	ldr	w8, [x0, #228]
00535fd18 	cbnz	w8, #8 ; -> 0x535fd20 
00535fd1c 	bl	#-14479676 ; -> 0x4590be0 
00535fd20 	ldrb	w8, [x22, #360]
00535fd24 	cbnz	w8, #24 ; -> 0x535fd3c 
00535fd28 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fd2c 	ldr	x0, [x0, #2104]
00535fd30 	bl	#-14480080 ; -> 0x4590a60 
00535fd34 	mov	w8, #1
00535fd38 	strb	w8, [x22, #360]
00535fd3c 	ldr	x0, [x21]
00535fd40 	ldr	w8, [x0, #228]
00535fd44 	cbnz	w8, #12 ; -> 0x535fd50 
00535fd48 	bl	#-14479720 ; -> 0x4590be0 
00535fd4c 	ldr	x0, [x21]
00535fd50 	ldr	x8, [x0, #184]
00535fd54 	ldr	x8, [x8]
00535fd58 	cbz	x8, #248 ; -> 0x535fe50 
00535fd5c 	ldr	x0, [x19, #32]
00535fd60 	cbz	x0, #244 ; -> 0x535fe54 
00535fd64 	ldr	x20, [x8, #512]
00535fd68 	mov	x1, xzr
00535fd6c 	bl	#-6377664 ; -> 0x4d4acac DatabaseManager::get_Skin_FaceDecoIndex
00535fd70 	mov	w1, w0
00535fd74 	cbz	x20, #228 ; -> 0x535fe58 
00535fd78 	adrp	x8, #84697088 ; -> 0xa425000 
00535fd7c 	ldr	x8, [x8, #504]
00535fd80 	ldr	x2, [x8]
00535fd84 	mov	x0, x20
00535fd88 	bl	#47155724 ; -> 0x8058794 
00535fd8c 	mov	x1, x0
00535fd90 	cbz	x23, #204 ; -> 0x535fe5c 
00535fd94 	str	x1, [x23, #1552]
00535fd98 	add	x0, x23, #1552
00535fd9c 	bl	#-14480280 ; -> 0x4590a04 
00535fda0 	ldrb	w8, [x22, #360]
00535fda4 	ldr	x23, [x19, #32]
00535fda8 	cbnz	w8, #24 ; -> 0x535fdc0 
00535fdac 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535fdb0 	ldr	x0, [x0, #2104]
00535fdb4 	bl	#-14480212 ; -> 0x4590a60 
00535fdb8 	mov	w8, #1
00535fdbc 	strb	w8, [x22, #360]
00535fdc0 	ldr	x0, [x21]
00535fdc4 	ldr	w8, [x0, #228]
00535fdc8 	cbnz	w8, #12 ; -> 0x535fdd4 
00535fdcc 	bl	#-14479852 ; -> 0x4590be0 
00535fdd0 	ldr	x0, [x21]
00535fdd4 	ldr	x8, [x0, #184]
00535fdd8 	ldr	x8, [x8]
00535fddc 	cbz	x8, #132 ; -> 0x535fe60 
00535fde0 	ldr	x0, [x19, #32]
00535fde4 	cbz	x0, #128 ; -> 0x535fe64 
00535fde8 	ldr	x20, [x8, #520]
00535fdec 	mov	x1, xzr
00535fdf0 	bl	#-6377708 ; -> 0x4d4ad04 DatabaseManager::get_Skin_EarringIndex
00535fdf4 	mov	w1, w0
00535fdf8 	cbz	x20, #112 ; -> 0x535fe68 
00535fdfc 	adrp	x8, #84697088 ; -> 0xa425000 
00535fe00 	ldr	x8, [x8, #520]
00535fe04 	ldr	x2, [x8]
00535fe08 	mov	x0, x20
00535fe0c 	bl	#47155592 ; -> 0x8058794 
00535fe10 	mov	x1, x0
00535fe14 	cbz	x23, #88 ; -> 0x535fe6c 
00535fe18 	str	x1, [x23, #1560]
00535fe1c 	add	x0, x23, #1560
00535fe20 	bl	#-14480412 ; -> 0x4590a04 
00535fe24 	ldp	x20, x19, [sp, #32]
00535fe28 	ldp	x22, x21, [sp, #16]
00535fe2c 	ldp	x30, x23, [sp], #48
00535fe30 	ret
00535fe34 	bl	#-14479656 ; -> 0x4590d0c 
00535fe38 	bl	#-14479660 ; -> 0x4590d0c 
00535fe3c 	bl	#-14479664 ; -> 0x4590d0c 
00535fe40 	bl	#-14479668 ; -> 0x4590d0c 
00535fe44 	bl	#-14479672 ; -> 0x4590d0c 
00535fe48 	bl	#-14479676 ; -> 0x4590d0c 
00535fe4c 	bl	#-14479680 ; -> 0x4590d0c 
00535fe50 	bl	#-14479684 ; -> 0x4590d0c 
00535fe54 	bl	#-14479688 ; -> 0x4590d0c 
00535fe58 	bl	#-14479692 ; -> 0x4590d0c 
00535fe5c 	bl	#-14479696 ; -> 0x4590d0c 
00535fe60 	bl	#-14479700 ; -> 0x4590d0c 
00535fe64 	bl	#-14479704 ; -> 0x4590d0c 
00535fe68 	bl	#-14479708 ; -> 0x4590d0c 
00535fe6c 	bl	#-14479712 ; -> 0x4590d0c 
00535fe70 	bl	#-14479716 ; -> 0x4590d0c 
00535fe74 	bl	#-14479720 ; -> 0x4590d0c 
00535fe78 	bl	#-14479724 ; -> 0x4590d0c 
00535fe7c 	bl	#-14479728 ; -> 0x4590d0c 
00535fe80 	bl	#-14479732 ; -> 0x4590d0c 
00535fe84 	bl	#-14479736 ; -> 0x4590d0c 
00535fe88 	bl	#-14479740 ; -> 0x4590d0c 
00535fe8c 	bl	#-14479744 ; -> 0x4590d0c 
00535fe90 	bl	#-14479748 ; -> 0x4590d0c 
00535fe94 	bl	#-14479752 ; -> 0x4590d0c 
00535fe98 	b	#140 ; -> 0x535ff24 
00535fe9c 	b	#136 ; -> 0x535ff24 
00535fea0 	b	#132 ; -> 0x535ff24 
00535fea4 	b	#128 ; -> 0x535ff24 
00535fea8 	b	#124 ; -> 0x535ff24 
00535feac 	b	#120 ; -> 0x535ff24 
00535feb0 	b	#116 ; -> 0x535ff24 
00535feb4 	b	#112 ; -> 0x535ff24 
00535feb8 	b	#108 ; -> 0x535ff24 
00535febc 	b	#104 ; -> 0x535ff24 
00535fec0 	b	#100 ; -> 0x535ff24 
00535fec4 	b	#96 ; -> 0x535ff24 
00535fec8 	b	#92 ; -> 0x535ff24 
00535fecc 	b	#88 ; -> 0x535ff24 
00535fed0 	b	#84 ; -> 0x535ff24 
00535fed4 	b	#80 ; -> 0x535ff24 
00535fed8 	b	#76 ; -> 0x535ff24 
00535fedc 	b	#72 ; -> 0x535ff24 
00535fee0 	b	#68 ; -> 0x535ff24 
00535fee4 	b	#64 ; -> 0x535ff24 
00535fee8 	b	#60 ; -> 0x535ff24 
00535feec 	b	#56 ; -> 0x535ff24 
00535fef0 	b	#52 ; -> 0x535ff24 
00535fef4 	b	#48 ; -> 0x535ff24 
00535fef8 	b	#44 ; -> 0x535ff24 
00535fefc 	b	#40 ; -> 0x535ff24 
00535ff00 	b	#36 ; -> 0x535ff24 
00535ff04 	b	#32 ; -> 0x535ff24 
00535ff08 	b	#28 ; -> 0x535ff24 
00535ff0c 	b	#24 ; -> 0x535ff24 
00535ff10 	b	#20 ; -> 0x535ff24 
00535ff14 	b	#16 ; -> 0x535ff24 
00535ff18 	b	#12 ; -> 0x535ff24 
00535ff1c 	b	#8 ; -> 0x535ff24 
00535ff20 	b	#4 ; -> 0x535ff24 
00535ff24 	mov	x20, x0
00535ff28 	cmp	w1, #1
00535ff2c 	b.ne	#152 ; -> 0x535ffc4 
00535ff30 	mov	x0, x20
00535ff34 	bl	#77642060 ; -> 0x9d6b880 
00535ff38 	mov	x20, x0
00535ff3c 	adrp	x0, #84443136 ; -> 0xa3e7000 
00535ff40 	ldr	x0, [x0, #3064]
00535ff44 	bl	#-14480592 ; -> 0x4590a74 
00535ff48 	ldr	x8, [x20]
00535ff4c 	ldr	x1, [x8]
00535ff50 	bl	#-14478908 ; -> 0x4591114 
00535ff54 	tbz	w0, #0, #72 ; -> 0x535ff9c 
00535ff58 	bl	#77642040 ; -> 0x9d6b890 
00535ff5c 	adrp	x0, #84443136 ; -> 0xa3e7000 
00535ff60 	ldr	x0, [x0, #1328]
00535ff64 	bl	#-14480624 ; -> 0x4590a74 
00535ff68 	ldr	w8, [x0, #228]
00535ff6c 	cbnz	w8, #8 ; -> 0x535ff74 
00535ff70 	bl	#-14480272 ; -> 0x4590be0 
00535ff74 	adrp	x0, #84807680 ; -> 0xa440000 
00535ff78 	ldr	x0, [x0, #632]
00535ff7c 	bl	#-14480648 ; -> 0x4590a74 
00535ff80 	mov	x1, xzr
00535ff84 	bl	#73795924 ; -> 0x99c08d8 UnityEngine.Debug::Log
00535ff88 	mov	x0, x19
00535ff8c 	ldp	x20, x19, [sp, #32]
00535ff90 	ldp	x22, x21, [sp, #16]
00535ff94 	ldp	x30, x23, [sp], #48
00535ff98 	b	#-3124 ; -> 0x535f364 SkinManager::CostumeSetting_Default
00535ff9c 	mov	w0, #8
00535ffa0 	bl	#77642000 ; -> 0x9d6b8b0 
00535ffa4 	ldr	x8, [x20]
00535ffa8 	str	x8, [x0]
00535ffac 	adrp	x1, #77668352 ; -> 0x9d71000 
00535ffb0 	add	x1, x1, #3672
00535ffb4 	mov	x2, xzr
00535ffb8 	bl	#77641992 ; -> 0x9d6b8c0 
00535ffbc 	mov	x20, x0
00535ffc0 	bl	#77641936 ; -> 0x9d6b890 
00535ffc4 	mov	x0, x20
00535ffc8 	bl	#-13295532 ; -> 0x46b201c 
00535ffcc 	bl	#-19150700 ; -> 0x411c860 
