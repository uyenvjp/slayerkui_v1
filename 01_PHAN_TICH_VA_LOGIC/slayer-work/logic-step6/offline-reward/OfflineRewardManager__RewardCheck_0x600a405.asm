00523f594 	stp	x29, x30, [sp, #-96]!
00523f598 	stp	x28, x27, [sp, #16]
00523f59c 	stp	x26, x25, [sp, #32]
00523f5a0 	stp	x24, x23, [sp, #48]
00523f5a4 	stp	x22, x21, [sp, #64]
00523f5a8 	stp	x20, x19, [sp, #80]
00523f5ac 	sub	sp, sp, #1040
00523f5b0 	adrp	x21, #93941760 ; -> 0xabd6000 
00523f5b4 	mov	w20, w1
00523f5b8 	mov	x19, x0
00523f5bc 	ldrb	w8, [x21, #3696]
00523f5c0 	tbnz	w8, #0, #108 ; -> 0x523f62c 
00523f5c4 	adrp	x0, #85630976 ; -> 0xa3e9000 
00523f5c8 	ldr	x0, [x0, #3552]
00523f5cc 	bl	#-13298540 ; -> 0x4590a60 
00523f5d0 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f5d4 	ldr	x0, [x0, #2104]
00523f5d8 	bl	#-13298552 ; -> 0x4590a60 
00523f5dc 	adrp	x0, #85630976 ; -> 0xa3e9000 
00523f5e0 	ldr	x0, [x0, #1384]
00523f5e4 	bl	#-13298564 ; -> 0x4590a60 
00523f5e8 	adrp	x0, #85909504 ; -> 0xa42d000 
00523f5ec 	ldr	x0, [x0, #2872]
00523f5f0 	bl	#-13298576 ; -> 0x4590a60 
00523f5f4 	adrp	x0, #85659648 ; -> 0xa3f0000 
00523f5f8 	ldr	x0, [x0, #3416]
00523f5fc 	bl	#-13298588 ; -> 0x4590a60 
00523f600 	adrp	x0, #85630976 ; -> 0xa3e9000 
00523f604 	ldr	x0, [x0, #2488]
00523f608 	bl	#-13298600 ; -> 0x4590a60 
00523f60c 	adrp	x0, #85655552 ; -> 0xa3ef000 
00523f610 	ldr	x0, [x0, #3224]
00523f614 	bl	#-13298612 ; -> 0x4590a60 
00523f618 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f61c 	ldr	x0, [x0, #2048]
00523f620 	bl	#-13298624 ; -> 0x4590a60 
00523f624 	mov	w8, #1
00523f628 	strb	w8, [x21, #3696]
00523f62c 	mov	w0, #42222
00523f630 	mov	x1, xzr
00523f634 	str	xzr, [sp, #1032]
00523f638 	str	xzr, [sp, #1024]
00523f63c 	bl	#-6258840 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00523f640 	tbz	w0, #0, #64 ; -> 0x523f680 
00523f644 	mov	w0, #42222
00523f648 	mov	x1, xzr
00523f64c 	bl	#-6258676 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00523f650 	cbz	x0, #3080 ; -> 0x5240258 
00523f654 	mov	x1, x19
00523f658 	mov	w2, w20
00523f65c 	mov	x3, xzr
00523f660 	add	sp, sp, #1040
00523f664 	ldp	x20, x19, [sp, #80]
00523f668 	ldp	x22, x21, [sp, #64]
00523f66c 	ldp	x24, x23, [sp, #48]
00523f670 	ldp	x26, x25, [sp, #32]
00523f674 	ldp	x28, x27, [sp, #16]
00523f678 	ldp	x29, x30, [sp], #96
00523f67c 	b	#-7077088 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
00523f680 	cmp	w20, #6
00523f684 	b.ge	#52 ; -> 0x523f6b8 
00523f688 	ldr	x0, [x19, #64]
00523f68c 	cbz	x0, #3020 ; -> 0x5240258 
00523f690 	mov	w1, wzr
00523f694 	mov	x2, xzr
00523f698 	add	sp, sp, #1040
00523f69c 	ldp	x20, x19, [sp, #80]
00523f6a0 	ldp	x22, x21, [sp, #64]
00523f6a4 	ldp	x24, x23, [sp, #48]
00523f6a8 	ldp	x26, x25, [sp, #32]
00523f6ac 	ldp	x28, x27, [sp, #16]
00523f6b0 	ldp	x29, x30, [sp], #96
00523f6b4 	b	#75253024 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00523f6b8 	ldr	x8, [x19, #104]
00523f6bc 	cbz	x8, #2972 ; -> 0x5240258 
00523f6c0 	ldur	q0, [x8, #168]
00523f6c4 	ldur	q1, [x8, #184]
00523f6c8 	add	x0, sp, #976
00523f6cc 	ldur	q2, [x8, #200]
00523f6d0 	mov	x1, xzr
00523f6d4 	stp	q0, q1, [sp, #976]
00523f6d8 	str	q2, [sp, #1008]
00523f6dc 	bl	#-11913488 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f6e0 	cmp	w0, #1
00523f6e4 	b.lt	#2900 ; -> 0x5240238 
00523f6e8 	adrp	x23, #85651456 ; -> 0xa3ee000 
00523f6ec 	ldr	x23, [x23, #2104]
00523f6f0 	ldr	x0, [x23]
00523f6f4 	ldr	w8, [x0, #228]
00523f6f8 	cbnz	w8, #8 ; -> 0x523f700 
00523f6fc 	bl	#-13298460 ; -> 0x4590be0 
00523f700 	adrp	x24, #93913088 ; -> 0xabcf000 
00523f704 	ldrb	w8, [x24, #360]
00523f708 	cbnz	w8, #24 ; -> 0x523f720 
00523f70c 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f710 	ldr	x0, [x0, #2104]
00523f714 	bl	#-13298868 ; -> 0x4590a60 
00523f718 	mov	w8, #1
00523f71c 	strb	w8, [x24, #360]
00523f720 	ldr	x0, [x23]
00523f724 	ldr	w8, [x0, #228]
00523f728 	cbnz	w8, #12 ; -> 0x523f734 
00523f72c 	bl	#-13298508 ; -> 0x4590be0 
00523f730 	ldr	x0, [x23]
00523f734 	ldr	x8, [x0, #184]
00523f738 	ldr	x0, [x8]
00523f73c 	cbz	x0, #2844 ; -> 0x5240258 
00523f740 	mov	w1, #1
00523f744 	mov	x2, xzr
00523f748 	bl	#-5004072 ; -> 0x4d79c20 DataManager::GetConstantAchievementData
00523f74c 	cbz	x0, #2828 ; -> 0x5240258 
00523f750 	ldr	x0, [x0, #32]
00523f754 	mov	x1, xzr
00523f758 	bl	#63132348 ; -> 0x8e74a14 System.Int32::Parse
00523f75c 	ldr	x8, [x19, #104]
00523f760 	cmp	w0, w20
00523f764 	csel	w20, w0, w20, lt
00523f768 	cbz	x8, #2800 ; -> 0x5240258 
00523f76c 	ldr	w9, [x8, #936]
00523f770 	mov	w0, w20
00523f774 	mov	x1, xzr
00523f778 	add	w9, w9, w20
00523f77c 	str	w9, [x8, #936]
00523f780 	add	x8, sp, #928
00523f784 	bl	#-11941800 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f788 	ldp	q0, q1, [sp, #928]
00523f78c 	add	x0, x19, #312
00523f790 	ldr	q2, [sp, #960]
00523f794 	mov	x1, xzr
00523f798 	stp	q0, q1, [x0]
00523f79c 	str	q2, [x0, #32]
00523f7a0 	bl	#-13299100 ; -> 0x4590a04 
00523f7a4 	mov	x0, x19
00523f7a8 	bl	#3028 ; -> 0x524037c OfflineRewardManager::OfflineRewardSlot_Off
00523f7ac 	ldr	x0, [x19, #32]
00523f7b0 	cbz	x0, #2728 ; -> 0x5240258 
00523f7b4 	mov	w1, wzr
00523f7b8 	mov	x2, xzr
00523f7bc 	bl	#75252760 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00523f7c0 	ldr	x0, [x19, #64]
00523f7c4 	cbz	x0, #2708 ; -> 0x5240258 
00523f7c8 	mov	w1, #1
00523f7cc 	mov	x2, xzr
00523f7d0 	bl	#75252740 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00523f7d4 	ldr	x0, [x19, #72]
00523f7d8 	cbz	x0, #2688 ; -> 0x5240258 
00523f7dc 	mov	w1, #1
00523f7e0 	mov	x2, xzr
00523f7e4 	bl	#75252720 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00523f7e8 	ldr	x8, [x19, #104]
00523f7ec 	cbz	x8, #2668 ; -> 0x5240258 
00523f7f0 	ldr	x0, [x19, #80]
00523f7f4 	cbz	x0, #2660 ; -> 0x5240258 
00523f7f8 	ldrb	w8, [x8, #997]
00523f7fc 	mov	x2, xzr
00523f800 	cmp	w8, #0
00523f804 	cset	w1, eq
00523f808 	bl	#75252684 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00523f80c 	mov	x0, xzr
00523f810 	bl	#-11122624 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
00523f814 	cbz	x0, #2628 ; -> 0x5240258 
00523f818 	mov	w1, w20
00523f81c 	mov	w2, wzr
00523f820 	mov	w3, #1
00523f824 	mov	x4, xzr
00523f828 	bl	#-11117716 ; -> 0x47a5394 Gear2.GrowSlayer.Logging.KinesisLog::AutoReward
00523f82c 	ldr	x8, [x19, #104]
00523f830 	cbz	x8, #2600 ; -> 0x5240258 
00523f834 	ldur	q0, [x8, #72]
00523f838 	ldur	q1, [x8, #88]
00523f83c 	add	x0, sp, #880
00523f840 	ldur	q2, [x8, #104]
00523f844 	mov	x1, xzr
00523f848 	stp	q0, q1, [sp, #880]
00523f84c 	str	q2, [sp, #912]
00523f850 	bl	#-11913860 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f854 	ldr	x8, [x23]
00523f858 	mov	w22, w0
00523f85c 	ldr	w9, [x8, #228]
00523f860 	cbnz	w9, #12 ; -> 0x523f86c 
00523f864 	mov	x0, x8
00523f868 	bl	#-13298824 ; -> 0x4590be0 
00523f86c 	ldrb	w8, [x24, #360]
00523f870 	cbnz	w8, #24 ; -> 0x523f888 
00523f874 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f878 	ldr	x0, [x0, #2104]
00523f87c 	bl	#-13299228 ; -> 0x4590a60 
00523f880 	mov	w8, #1
00523f884 	strb	w8, [x24, #360]
00523f888 	ldr	x0, [x23]
00523f88c 	ldr	w8, [x0, #228]
00523f890 	cbnz	w8, #12 ; -> 0x523f89c 
00523f894 	bl	#-13298868 ; -> 0x4590be0 
00523f898 	ldr	x0, [x23]
00523f89c 	ldr	x8, [x0, #184]
00523f8a0 	ldr	x8, [x8]
00523f8a4 	cbz	x8, #2484 ; -> 0x5240258 
00523f8a8 	ldr	x0, [x8, #120]
00523f8ac 	cbz	x0, #2476 ; -> 0x5240258 
00523f8b0 	adrp	x25, #85909504 ; -> 0xa42d000 
00523f8b4 	ldr	x25, [x25, #2872]
00523f8b8 	ldr	x1, [x25]
00523f8bc 	bl	#48335888 ; -> 0x80584cc 
00523f8c0 	ldr	x8, [x19, #104]
00523f8c4 	cbz	x8, #2452 ; -> 0x5240258 
00523f8c8 	ldur	q0, [x8, #72]
00523f8cc 	ldur	q1, [x8, #88]
00523f8d0 	mov	w21, w0
00523f8d4 	ldur	q2, [x8, #104]
00523f8d8 	add	x0, sp, #832
00523f8dc 	mov	x1, xzr
00523f8e0 	stp	q0, q1, [sp, #832]
00523f8e4 	str	q2, [sp, #864]
00523f8e8 	bl	#-11914012 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f8ec 	cmp	w21, w0
00523f8f0 	b.gt	#100 ; -> 0x523f954 
00523f8f4 	ldr	x0, [x23]
00523f8f8 	ldr	w8, [x0, #228]
00523f8fc 	cbnz	w8, #8 ; -> 0x523f904 
00523f900 	bl	#-13298976 ; -> 0x4590be0 
00523f904 	ldrb	w8, [x24, #360]
00523f908 	cbnz	w8, #24 ; -> 0x523f920 
00523f90c 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f910 	ldr	x0, [x0, #2104]
00523f914 	bl	#-13299380 ; -> 0x4590a60 
00523f918 	mov	w8, #1
00523f91c 	strb	w8, [x24, #360]
00523f920 	ldr	x0, [x23]
00523f924 	ldr	w8, [x0, #228]
00523f928 	cbnz	w8, #12 ; -> 0x523f934 
00523f92c 	bl	#-13299020 ; -> 0x4590be0 
00523f930 	ldr	x0, [x23]
00523f934 	ldr	x8, [x0, #184]
00523f938 	ldr	x8, [x8]
00523f93c 	cbz	x8, #2332 ; -> 0x5240258 
00523f940 	ldr	x0, [x8, #120]
00523f944 	cbz	x0, #2324 ; -> 0x5240258 
00523f948 	ldr	x1, [x25]
00523f94c 	bl	#48335744 ; -> 0x80584cc 
00523f950 	sub	w22, w0, #1
00523f954 	ldr	x0, [x23]
00523f958 	ldr	w8, [x0, #228]
00523f95c 	cbnz	w8, #8 ; -> 0x523f964 
00523f960 	bl	#-13299072 ; -> 0x4590be0 
00523f964 	ldrb	w8, [x24, #360]
00523f968 	cbnz	w8, #24 ; -> 0x523f980 
00523f96c 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f970 	ldr	x0, [x0, #2104]
00523f974 	bl	#-13299476 ; -> 0x4590a60 
00523f978 	mov	w8, #1
00523f97c 	strb	w8, [x24, #360]
00523f980 	ldr	x0, [x23]
00523f984 	ldr	w8, [x0, #228]
00523f988 	cbnz	w8, #12 ; -> 0x523f994 
00523f98c 	bl	#-13299116 ; -> 0x4590be0 
00523f990 	ldr	x0, [x23]
00523f994 	ldr	x8, [x0, #184]
00523f998 	ldr	x8, [x8]
00523f99c 	cbz	x8, #2236 ; -> 0x5240258 
00523f9a0 	ldr	x0, [x8, #120]
00523f9a4 	cbz	x0, #2228 ; -> 0x5240258 
00523f9a8 	adrp	x8, #85659648 ; -> 0xa3f0000 
00523f9ac 	mov	w1, w22
00523f9b0 	ldr	x8, [x8, #3416]
00523f9b4 	ldr	x2, [x8]
00523f9b8 	bl	#48336348 ; -> 0x8058794 
00523f9bc 	mov	x21, x0
00523f9c0 	add	x8, sp, #928
00523f9c4 	mov	w0, w22
00523f9c8 	mov	x1, xzr
00523f9cc 	bl	#-11942384 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f9d0 	ldp	q0, q1, [sp, #928]
00523f9d4 	add	x0, x19, #360
00523f9d8 	ldr	q2, [sp, #960]
00523f9dc 	mov	x1, xzr
00523f9e0 	stp	q0, q1, [x0]
00523f9e4 	str	q2, [x0, #32]
00523f9e8 	bl	#-13299684 ; -> 0x4590a04 
00523f9ec 	ldr	x23, [x19, #40]
00523f9f0 	mov	x0, xzr
00523f9f4 	bl	#-9473484 ; -> 0x4936c28 STR::get_PER_MIN_KEY
00523f9f8 	adrp	x27, #85630976 ; -> 0xa3e9000 
00523f9fc 	mov	x24, x0
00523fa00 	ldr	x27, [x27, #1384]
00523fa04 	ldr	x8, [x27]
00523fa08 	ldr	w9, [x8, #228]
00523fa0c 	cbnz	w9, #16 ; -> 0x523fa1c 
00523fa10 	mov	x0, x8
00523fa14 	bl	#-13299252 ; -> 0x4590be0 
00523fa18 	ldr	x8, [x27]
00523fa1c 	cbz	x21, #2108 ; -> 0x5240258 
00523fa20 	add	x22, x21, #616
00523fa24 	ldr	x8, [x8, #184]
00523fa28 	ldr	x9, [x21, #648]
00523fa2c 	ldp	q0, q1, [x22]
00523fa30 	add	x0, sp, #784
00523fa34 	ldr	x25, [x8]
00523fa38 	mov	x1, xzr
00523fa3c 	str	x9, [sp, #816]
00523fa40 	stp	q0, q1, [sp, #784]
00523fa44 	bl	#-7268884 ; -> 0x4b51030 SilentBigInt::op_Implicit
00523fa48 	cbz	x25, #2064 ; -> 0x5240258 
00523fa4c 	mov	x2, x0
00523fa50 	mov	x3, x1
00523fa54 	mov	x0, x25
00523fa58 	mov	x1, x2
00523fa5c 	mov	x2, x3
00523fa60 	mov	w3, wzr
00523fa64 	mov	x4, xzr
00523fa68 	bl	#-5160640 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
00523fa6c 	adrp	x29, #85651456 ; -> 0xa3ee000 
00523fa70 	mov	x25, x0
00523fa74 	ldr	x29, [x29, #2048]
00523fa78 	ldr	x26, [x29]
00523fa7c 	ldr	x8, [x26, #56]
00523fa80 	cbnz	x8, #32 ; -> 0x523faa0 
00523fa84 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523fa88 	ldr	x0, [x0, #2056]
00523fa8c 	bl	#-13299756 ; -> 0x4590a60 
00523fa90 	ldr	x8, [x26, #56]
00523fa94 	cbnz	x8, #12 ; -> 0x523faa0 
00523fa98 	mov	x0, x26
00523fa9c 	bl	#-13069080 ; -> 0x45c8f84 
00523faa0 	adrp	x28, #85651456 ; -> 0xa3ee000 
00523faa4 	ldr	x28, [x28, #2056]
00523faa8 	ldr	x0, [x28]
00523faac 	ldr	w8, [x0, #228]
00523fab0 	cbnz	w8, #8 ; -> 0x523fab8 
00523fab4 	bl	#-13299412 ; -> 0x4590be0 
00523fab8 	ldr	x8, [x26, #56]
00523fabc 	mov	x0, x24
00523fac0 	mov	x1, x25
00523fac4 	ldr	x2, [x8, #8]
00523fac8 	bl	#-11053348 ; -> 0x47b51a4 
00523facc 	cbz	x23, #1932 ; -> 0x5240258 
00523fad0 	ldr	x8, [x23]
00523fad4 	mov	x1, x0
00523fad8 	mov	x0, x23
00523fadc 	ldr	x9, [x8, #1512]
00523fae0 	ldr	x2, [x8, #1520]
00523fae4 	blr	x9
00523fae8 	ldr	x23, [x19, #48]
00523faec 	mov	x0, xzr
00523faf0 	bl	#-9473736 ; -> 0x4936c28 STR::get_PER_MIN_KEY
00523faf4 	ldr	x8, [x27]
00523faf8 	ldp	q1, q0, [x21, #672]
00523fafc 	ldr	q2, [x21, #656]
00523fb00 	mov	x24, x0
00523fb04 	add	x0, sp, #736
00523fb08 	ldr	x8, [x8, #184]
00523fb0c 	mov	x1, xzr
00523fb10 	ldr	x25, [x8]
00523fb14 	stp	q1, q0, [sp, #752]
00523fb18 	str	q2, [sp, #736]
00523fb1c 	bl	#-11918032 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00523fb20 	cbz	x25, #1848 ; -> 0x5240258 
00523fb24 	mov	x1, x0
00523fb28 	mov	x0, x25
00523fb2c 	mov	w2, wzr
00523fb30 	mov	x3, xzr
00523fb34 	bl	#-5160504 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
00523fb38 	ldr	x26, [x29]
00523fb3c 	mov	x25, x0
00523fb40 	ldr	x8, [x26, #56]
00523fb44 	cbnz	x8, #32 ; -> 0x523fb64 
00523fb48 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523fb4c 	ldr	x0, [x0, #2056]
00523fb50 	bl	#-13299952 ; -> 0x4590a60 
00523fb54 	ldr	x8, [x26, #56]
00523fb58 	cbnz	x8, #12 ; -> 0x523fb64 
00523fb5c 	mov	x0, x26
00523fb60 	bl	#-13069276 ; -> 0x45c8f84 
00523fb64 	ldr	x0, [x28]
00523fb68 	ldr	w8, [x0, #228]
00523fb6c 	cbnz	w8, #8 ; -> 0x523fb74 
00523fb70 	bl	#-13299600 ; -> 0x4590be0 
00523fb74 	ldr	x8, [x26, #56]
00523fb78 	mov	x0, x24
00523fb7c 	mov	x1, x25
00523fb80 	ldr	x2, [x8, #8]
00523fb84 	bl	#-11053536 ; -> 0x47b51a4 
00523fb88 	cbz	x23, #1744 ; -> 0x5240258 
00523fb8c 	ldr	x8, [x23]
00523fb90 	mov	x1, x0
00523fb94 	mov	x0, x23
00523fb98 	ldr	x9, [x8, #1512]
00523fb9c 	ldr	x2, [x8, #1520]
00523fba0 	blr	x9
00523fba4 	ldr	x23, [x19, #56]
00523fba8 	mov	x0, xzr
00523fbac 	bl	#-9553412 ; -> 0x49235a8 STR::get_OFFLINE_REWARD_TIME
00523fbb0 	adrp	x8, #85655552 ; -> 0xa3ef000 
00523fbb4 	mov	x24, x0
00523fbb8 	ldr	x8, [x8, #3224]
00523fbbc 	ldr	x25, [x8]
00523fbc0 	ldr	x8, [x25, #56]
00523fbc4 	cbnz	x8, #32 ; -> 0x523fbe4 
00523fbc8 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523fbcc 	ldr	x0, [x0, #2056]
00523fbd0 	bl	#-13300080 ; -> 0x4590a60 
00523fbd4 	ldr	x8, [x25, #56]
00523fbd8 	cbnz	x8, #12 ; -> 0x523fbe4 
00523fbdc 	mov	x0, x25
00523fbe0 	bl	#-13069404 ; -> 0x45c8f84 
00523fbe4 	ldr	x0, [x28]
00523fbe8 	ldr	w8, [x0, #228]
00523fbec 	cbnz	w8, #8 ; -> 0x523fbf4 
00523fbf0 	bl	#-13299728 ; -> 0x4590be0 
00523fbf4 	ldr	x8, [x25, #56]
00523fbf8 	mov	x0, x24
00523fbfc 	mov	w1, w20
00523fc00 	ldr	x2, [x8, #8]
00523fc04 	bl	#-10892444 ; -> 0x47dc768 
00523fc08 	cbz	x23, #1616 ; -> 0x5240258 
00523fc0c 	ldr	x8, [x23]
00523fc10 	mov	x1, x0
00523fc14 	mov	x0, x23
00523fc18 	ldr	x9, [x8, #1512]
00523fc1c 	ldr	x2, [x8, #1520]
00523fc20 	blr	x9
00523fc24 	mov	x0, x22
00523fc28 	mov	x1, xzr
00523fc2c 	bl	#-7270872 ; -> 0x4b50a54 SilentBigInt::get_Value
00523fc30 	adrp	x24, #85630976 ; -> 0xa3e9000 
00523fc34 	mov	x22, x0
00523fc38 	mov	x23, x1
00523fc3c 	ldr	x24, [x24, #3552]
00523fc40 	ldr	x0, [x24]
00523fc44 	ldr	w8, [x0, #228]
00523fc48 	cbnz	w8, #8 ; -> 0x523fc50 
00523fc4c 	bl	#-13299820 ; -> 0x4590be0 
00523fc50 	mov	w0, w20
00523fc54 	mov	x1, xzr
00523fc58 	bl	#66310988 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00523fc5c 	mov	x2, x0
00523fc60 	mov	x3, x1
00523fc64 	mov	x0, x22
00523fc68 	mov	x1, x23
00523fc6c 	mov	x4, xzr
00523fc70 	bl	#66300884 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00523fc74 	mov	x2, x0
00523fc78 	mov	x3, x1
00523fc7c 	add	x0, x19, #112
00523fc80 	mov	x1, x2
00523fc84 	mov	x2, x3
00523fc88 	mov	x3, xzr
00523fc8c 	bl	#-7270036 ; -> 0x4b50df8 SilentBigInt::set_Value
00523fc90 	ldp	q0, q1, [x19, #112]
00523fc94 	add	x0, sp, #688
00523fc98 	ldur	x8, [x19, #144]
00523fc9c 	ldr	x22, [x19, #104]
00523fca0 	mov	x1, xzr
00523fca4 	stp	q0, q1, [sp, #688]
00523fca8 	str	x8, [sp, #720]
00523fcac 	bl	#-7269500 ; -> 0x4b51030 SilentBigInt::op_Implicit
00523fcb0 	cbz	x22, #1448 ; -> 0x5240258 
00523fcb4 	mov	x2, x0
00523fcb8 	mov	x3, x1
00523fcbc 	mov	x0, x22
00523fcc0 	mov	x1, x2
00523fcc4 	mov	x2, x3
00523fcc8 	mov	x3, xzr
00523fccc 	bl	#-5187464 ; -> 0x4d4d544 DatabaseManager::Gold_Cal
00523fcd0 	mov	x2, x0
00523fcd4 	mov	x3, x1
00523fcd8 	add	x0, x19, #112
00523fcdc 	mov	x1, x2
00523fce0 	mov	x2, x3
00523fce4 	mov	x3, xzr
00523fce8 	bl	#-7270128 ; -> 0x4b50df8 SilentBigInt::set_Value
00523fcec 	ldr	x8, [x27]
00523fcf0 	ldp	q0, q1, [x19, #112]
00523fcf4 	ldur	x9, [x19, #144]
00523fcf8 	add	x0, sp, #640
00523fcfc 	mov	x1, xzr
00523fd00 	ldr	x8, [x8, #184]
00523fd04 	ldr	x22, [x8]
00523fd08 	stp	q0, q1, [sp, #640]
00523fd0c 	str	x9, [sp, #672]
00523fd10 	bl	#-7269600 ; -> 0x4b51030 SilentBigInt::op_Implicit
00523fd14 	cbz	x22, #1348 ; -> 0x5240258 
00523fd18 	mov	x2, x0
00523fd1c 	mov	x3, x1
00523fd20 	mov	x0, x22
00523fd24 	mov	x1, x2
00523fd28 	mov	x2, x3
00523fd2c 	mov	w3, #1
00523fd30 	mov	x4, xzr
00523fd34 	bl	#-5161356 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
00523fd38 	mov	x2, x0
00523fd3c 	mov	x0, x19
00523fd40 	mov	w1, #8
00523fd44 	bl	#1800 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
00523fd48 	ldp	q0, q1, [x21, #656]
00523fd4c 	add	x0, sp, #592
00523fd50 	ldr	q2, [x21, #688]
00523fd54 	mov	x1, xzr
00523fd58 	stp	q0, q1, [sp, #592]
00523fd5c 	str	q2, [sp, #624]
00523fd60 	bl	#-11918612 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00523fd64 	sxtw	x23, w20
00523fd68 	mov	x1, xzr
00523fd6c 	mul	x0, x0, x23
00523fd70 	bl	#66309036 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
00523fd74 	mov	x2, x0
00523fd78 	mov	x3, x1
00523fd7c 	add	x0, x19, #152
00523fd80 	mov	x1, x2
00523fd84 	mov	x2, x3
00523fd88 	mov	x3, xzr
00523fd8c 	bl	#-7270292 ; -> 0x4b50df8 SilentBigInt::set_Value
00523fd90 	ldur	q0, [x19, #152]
00523fd94 	ldur	q1, [x19, #168]
00523fd98 	add	x0, sp, #544
00523fd9c 	ldr	x8, [x19, #184]
00523fda0 	ldr	x22, [x19, #104]
00523fda4 	mov	x1, xzr
00523fda8 	stp	q0, q1, [sp, #544]
00523fdac 	str	x8, [sp, #576]
00523fdb0 	bl	#-7269760 ; -> 0x4b51030 SilentBigInt::op_Implicit
00523fdb4 	cbz	x22, #1188 ; -> 0x5240258 
00523fdb8 	mov	x2, x0
00523fdbc 	mov	x3, x1
00523fdc0 	mov	x0, x22
00523fdc4 	mov	x1, x2
00523fdc8 	mov	x2, x3
00523fdcc 	mov	x3, xzr
00523fdd0 	bl	#-5186416 ; -> 0x4d4da60 DatabaseManager::Exp_Cal
00523fdd4 	mov	x2, x0
00523fdd8 	mov	x3, x1
00523fddc 	add	x0, x19, #152
00523fde0 	mov	x1, x2
00523fde4 	mov	x2, x3
00523fde8 	mov	x3, xzr
00523fdec 	bl	#-7270388 ; -> 0x4b50df8 SilentBigInt::set_Value
00523fdf0 	ldr	x8, [x27]
00523fdf4 	ldur	q0, [x19, #152]
00523fdf8 	add	x0, sp, #496
00523fdfc 	ldur	q1, [x19, #168]
00523fe00 	ldur	x9, [x19, #184]
00523fe04 	mov	x1, xzr
00523fe08 	ldr	x8, [x8, #184]
00523fe0c 	ldr	x22, [x8]
00523fe10 	stp	q0, q1, [sp, #496]
00523fe14 	str	x9, [sp, #528]
00523fe18 	bl	#-7269864 ; -> 0x4b51030 SilentBigInt::op_Implicit
00523fe1c 	cbz	x22, #1084 ; -> 0x5240258 
00523fe20 	mov	x2, x0
00523fe24 	mov	x3, x1
00523fe28 	mov	x0, x22
00523fe2c 	mov	x1, x2
00523fe30 	mov	x2, x3
00523fe34 	mov	w3, #1
00523fe38 	mov	x4, xzr
00523fe3c 	bl	#-5161620 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
00523fe40 	mov	x2, x0
00523fe44 	mov	x0, x19
00523fe48 	mov	w1, #24
00523fe4c 	bl	#1536 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
00523fe50 	ldp	q0, q1, [x21, #704]
00523fe54 	add	x0, sp, #448
00523fe58 	ldr	q2, [x21, #736]
00523fe5c 	mov	x1, xzr
00523fe60 	stp	q0, q1, [sp, #448]
00523fe64 	str	q2, [sp, #480]
00523fe68 	bl	#-11918876 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00523fe6c 	mul	x1, x0, x23
00523fe70 	ldr	x0, [x19, #104]
00523fe74 	str	x1, [x19, #192]
00523fe78 	cbz	x0, #992 ; -> 0x5240258 
00523fe7c 	mov	x2, xzr
00523fe80 	bl	#-5186268 ; -> 0x4d4dba4 DatabaseManager::UpgradeCube_Cal
00523fe84 	ldr	x8, [x27]
00523fe88 	str	x0, [x19, #192]
00523fe8c 	mov	x1, x0
00523fe90 	ldr	x8, [x8, #184]
00523fe94 	ldr	x0, [x8]
00523fe98 	cbz	x0, #960 ; -> 0x5240258 
00523fe9c 	mov	w2, #1
00523fea0 	mov	x3, xzr
00523fea4 	bl	#-5161384 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
00523fea8 	mov	x2, x0
00523feac 	mov	x0, x19
00523feb0 	mov	w1, #6
00523feb4 	bl	#1432 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
00523feb8 	str	wzr, [x19, #200]
00523febc 	add	x0, sp, #400
00523fec0 	mov	x1, xzr
00523fec4 	ldp	q0, q1, [x21, #752]
00523fec8 	ldr	q2, [x21, #784]
00523fecc 	str	q2, [sp, #432]
00523fed0 	stp	q0, q1, [sp, #400]
00523fed4 	bl	#-11913672 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00523fed8 	scvtf	s1, w20
00523fedc 	mov	w8, #2139095040
00523fee0 	fmul	s0, s0, s1
00523fee4 	fmov	s1, w8
00523fee8 	mov	w8, #-2147483648
00523feec 	fcvtzs	w9, s0
00523fef0 	fcmp	s0, s1
00523fef4 	csel	w22, w8, w9, eq
00523fef8 	cmp	w22, #4
00523fefc 	b.lt	#76 ; -> 0x523ff48 
00523ff00 	lsr	w8, w22, #2
00523ff04 	ldr	x0, [x27]
00523ff08 	str	w8, [x19, #200]
00523ff0c 	ldr	w8, [x0, #228]
00523ff10 	cbnz	w8, #12 ; -> 0x523ff1c 
00523ff14 	bl	#-13300532 ; -> 0x4590be0 
00523ff18 	ldr	x0, [x27]
00523ff1c 	ldr	x8, [x0, #184]
00523ff20 	ldr	x0, [x8]
00523ff24 	cbz	x0, #820 ; -> 0x5240258 
00523ff28 	and	w1, w22, #0x7ffffffc
00523ff2c 	mov	w2, #1
00523ff30 	mov	x3, xzr
00523ff34 	bl	#-5161528 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
00523ff38 	mov	x2, x0
00523ff3c 	mov	x0, x19
00523ff40 	mov	w1, #20
00523ff44 	bl	#1288 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
00523ff48 	add	x8, x21, #840
00523ff4c 	add	x0, sp, #352
00523ff50 	mov	x1, xzr
00523ff54 	ldp	q0, q1, [x8]
00523ff58 	ldr	q2, [x8, #32]
00523ff5c 	str	q2, [sp, #384]
00523ff60 	stp	q0, q1, [sp, #352]
00523ff64 	bl	#-11915672 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523ff68 	mul	w0, w0, w20
00523ff6c 	add	x8, sp, #928
00523ff70 	mov	x1, xzr
00523ff74 	bl	#-11943832 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523ff78 	ldp	q0, q1, [sp, #928]
00523ff7c 	add	x0, x19, #208
00523ff80 	ldr	q2, [sp, #960]
00523ff84 	mov	x1, xzr
00523ff88 	stp	q0, q1, [x19, #208]
00523ff8c 	str	q2, [x19, #240]
00523ff90 	bl	#-13301132 ; -> 0x4590a04 
00523ff94 	ldp	q0, q1, [x19, #208]
00523ff98 	add	x0, sp, #304
00523ff9c 	ldr	q2, [x19, #240]
00523ffa0 	ldr	x22, [x19, #104]
00523ffa4 	mov	x1, xzr
00523ffa8 	stp	q0, q1, [sp, #304]
00523ffac 	str	q2, [sp, #336]
00523ffb0 	bl	#-11915748 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523ffb4 	cbz	x22, #676 ; -> 0x5240258 
00523ffb8 	mov	w1, w0
00523ffbc 	mov	x0, x22
00523ffc0 	mov	x2, xzr
00523ffc4 	bl	#-5185468 ; -> 0x4d4e008 DatabaseManager::Dice_Cal
00523ffc8 	add	x8, sp, #256
00523ffcc 	mov	x1, xzr
00523ffd0 	bl	#-11943924 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523ffd4 	ldp	q0, q1, [sp, #256]
00523ffd8 	add	x0, x19, #208
00523ffdc 	ldr	q2, [sp, #288]
00523ffe0 	mov	x1, xzr
00523ffe4 	stp	q0, q1, [x19, #208]
00523ffe8 	stur	q2, [x19, #240]
00523ffec 	bl	#-13301224 ; -> 0x4590a04 
00523fff0 	ldp	q0, q1, [x19, #208]
00523fff4 	add	x0, sp, #208
00523fff8 	ldur	q2, [x19, #240]
00523fffc 	mov	x1, xzr
005240000 	stp	q0, q1, [sp, #208]
005240004 	str	q2, [sp, #240]
005240008 	bl	#-11915836 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00524000c 	cmp	w0, #1
005240010 	b.lt	#100 ; -> 0x5240074 
005240014 	ldr	x0, [x27]
005240018 	ldr	w8, [x0, #228]
00524001c 	cbnz	w8, #12 ; -> 0x5240028 
005240020 	bl	#-13300800 ; -> 0x4590be0 
005240024 	ldr	x0, [x27]
005240028 	ldr	x8, [x0, #184]
00524002c 	ldp	q0, q1, [x19, #208]
005240030 	ldur	q2, [x19, #240]
005240034 	add	x0, sp, #160
005240038 	mov	x1, xzr
00524003c 	ldr	x22, [x8]
005240040 	stp	q0, q1, [sp, #160]
005240044 	str	q2, [sp, #192]
005240048 	bl	#-11915900 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00524004c 	cbz	x22, #524 ; -> 0x5240258 
005240050 	sxtw	x1, w0
005240054 	mov	x0, x22
005240058 	mov	w2, #1
00524005c 	mov	x3, xzr
005240060 	bl	#-5161828 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
005240064 	mov	x2, x0
005240068 	mov	x0, x19
00524006c 	mov	w1, #4
005240070 	bl	#988 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
005240074 	add	x0, x21, #888
005240078 	mov	x1, xzr
00524007c 	bl	#-7271976 ; -> 0x4b50a54 SilentBigInt::get_Value
005240080 	mov	x22, x0
005240084 	ldr	x0, [x24]
005240088 	mov	x23, x1
00524008c 	ldr	w8, [x0, #228]
005240090 	cbnz	w8, #8 ; -> 0x5240098 
005240094 	bl	#-13300916 ; -> 0x4590be0 
005240098 	mov	w0, w20
00524009c 	mov	x1, xzr
0052400a0 	bl	#66309892 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0052400a4 	mov	x2, x0
0052400a8 	mov	x3, x1
0052400ac 	mov	x0, x22
0052400b0 	mov	x1, x23
0052400b4 	mov	x4, xzr
0052400b8 	bl	#66299788 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0052400bc 	str	x0, [sp, #1024]
0052400c0 	add	x0, sp, #1024
0052400c4 	str	x1, [sp, #1032]
0052400c8 	mov	x1, xzr
0052400cc 	bl	#66307440 ; -> 0x917c63c System.Numerics.BigInteger::ToString
0052400d0 	mov	x1, xzr
0052400d4 	bl	#-11943680 ; -> 0x46dc1d4 Liapp.SecureVariable.LiappSecureString::op_Implicit
0052400d8 	mov	x1, x0
0052400dc 	str	x0, [x19, #256]
0052400e0 	add	x0, x19, #256
0052400e4 	bl	#-13301472 ; -> 0x4590a04 
0052400e8 	ldr	x0, [x19, #256]
0052400ec 	mov	x1, xzr
0052400f0 	bl	#-11924756 ; -> 0x46e0bdc Liapp.SecureVariable.LiappSecureString::op_Implicit
0052400f4 	mov	x1, xzr
0052400f8 	bl	#66298720 ; -> 0x917a458 System.Numerics.BigInteger::Parse
0052400fc 	mov	x2, xzr
005240100 	mov	x3, xzr
005240104 	mov	x22, x0
005240108 	mov	x23, x1
00524010c 	bl	#66316440 ; -> 0x917e9a4 System.Numerics.BigInteger::op_GreaterThan
005240110 	tbz	w0, #0, #96 ; -> 0x5240170 
005240114 	ldr	x8, [x19, #104]
005240118 	cbz	x8, #320 ; -> 0x5240258 
00524011c 	ldr	x8, [x8, #48]
005240120 	cbz	x8, #312 ; -> 0x5240258 
005240124 	ldrb	w8, [x8, #39]
005240128 	cbz	w8, #72 ; -> 0x5240170 
00524012c 	ldr	x0, [x27]
005240130 	ldr	w8, [x0, #228]
005240134 	cbnz	w8, #12 ; -> 0x5240140 
005240138 	bl	#-13301080 ; -> 0x4590be0 
00524013c 	ldr	x0, [x27]
005240140 	ldr	x8, [x0, #184]
005240144 	ldr	x0, [x8]
005240148 	cbz	x0, #272 ; -> 0x5240258 
00524014c 	mov	x1, x22
005240150 	mov	x2, x23
005240154 	mov	w3, #1
005240158 	mov	x4, xzr
00524015c 	bl	#-5162420 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
005240160 	mov	x2, x0
005240164 	mov	x0, x19
005240168 	mov	w1, #16
00524016c 	bl	#736 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
005240170 	ldp	q0, q1, [x21, #928]
005240174 	add	x0, sp, #112
005240178 	ldr	q2, [x21, #960]
00524017c 	mov	x1, xzr
005240180 	stp	q0, q1, [sp, #112]
005240184 	str	q2, [sp, #144]
005240188 	bl	#-11916220 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00524018c 	mul	w0, w0, w20
005240190 	add	x8, sp, #928
005240194 	mov	x1, xzr
005240198 	bl	#-11944380 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00524019c 	ldp	q0, q1, [sp, #928]
0052401a0 	add	x20, x19, #264
0052401a4 	ldr	q2, [sp, #960]
0052401a8 	mov	x0, x20
0052401ac 	mov	x1, xzr
0052401b0 	stp	q0, q1, [x20]
0052401b4 	str	q2, [x20, #32]
0052401b8 	bl	#-13301684 ; -> 0x4590a04 
0052401bc 	ldp	q0, q1, [x20]
0052401c0 	add	x0, sp, #64
0052401c4 	ldr	q2, [x20, #32]
0052401c8 	mov	x1, xzr
0052401cc 	stp	q0, q1, [sp, #64]
0052401d0 	str	q2, [sp, #96]
0052401d4 	bl	#-11916296 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0052401d8 	cmp	w0, #1
0052401dc 	b.lt	#92 ; -> 0x5240238 
0052401e0 	ldp	q0, q1, [x20]
0052401e4 	add	x0, sp, #16
0052401e8 	ldr	q2, [x20, #32]
0052401ec 	mov	x1, xzr
0052401f0 	stp	q0, q1, [sp, #16]
0052401f4 	str	q2, [sp, #48]
0052401f8 	bl	#-11916332 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0052401fc 	adrp	x8, #85626880 ; -> 0xa3e9000 
005240200 	mov	w20, w0
005240204 	ldr	x8, [x8, #2488]
005240208 	ldr	x8, [x8]
00524020c 	ldr	w9, [x8, #228]
005240210 	cbnz	w9, #12 ; -> 0x524021c 
005240214 	mov	x0, x8
005240218 	bl	#-13301304 ; -> 0x4590be0 
00524021c 	mov	w0, w20
005240220 	mov	x1, xzr
005240224 	bl	#-7211040 ; -> 0x4b5fa04 Localization::ToString
005240228 	mov	x2, x0
00524022c 	mov	x0, x19
005240230 	mov	w1, #1
005240234 	bl	#536 ; -> 0x524044c OfflineRewardManager::OfflineRewardSlot_Setting
005240238 	add	sp, sp, #1040
00524023c 	ldp	x20, x19, [sp, #80]
005240240 	ldp	x22, x21, [sp, #64]
005240244 	ldp	x24, x23, [sp, #48]
005240248 	ldp	x26, x25, [sp, #32]
00524024c 	ldp	x28, x27, [sp, #16]
005240250 	ldp	x29, x30, [sp], #96
005240254 	ret
005240258 	bl	#-13301068 ; -> 0x4590d0c 
