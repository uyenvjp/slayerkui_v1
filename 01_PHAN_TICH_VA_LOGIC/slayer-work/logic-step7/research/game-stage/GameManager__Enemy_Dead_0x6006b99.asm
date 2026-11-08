004e466f8 	sub	sp, sp, #112
004e466fc 	str	d10, [sp, #32]
004e46700 	stp	d9, d8, [sp, #48]
004e46704 	stp	x30, x23, [sp, #64]
004e46708 	stp	x22, x21, [sp, #80]
004e4670c 	stp	x20, x19, [sp, #96]
004e46710 	adrp	x22, #98103296 ; -> 0xabd5000 
004e46714 	mov	w21, w2
004e46718 	mov	x20, x1
004e4671c 	ldrb	w8, [x22, #291]
004e46720 	mov	x19, x0
004e46724 	tbnz	w8, #0, #204 ; -> 0x4e467f0 
004e46728 	adrp	x0, #89788416 ; -> 0xa3e7000 
004e4672c 	ldr	x0, [x0, #2992]
004e46730 	bl	#-9133264 ; -> 0x4590a60 
004e46734 	adrp	x0, #89788416 ; -> 0xa3e7000 
004e46738 	ldr	x0, [x0, #1328]
004e4673c 	bl	#-9133276 ; -> 0x4590a60 
004e46740 	adrp	x0, #90054656 ; -> 0xa428000 
004e46744 	ldr	x0, [x0, #2152]
004e46748 	bl	#-9133288 ; -> 0x4590a60 
004e4674c 	adrp	x0, #90054656 ; -> 0xa428000 
004e46750 	ldr	x0, [x0, #2160]
004e46754 	bl	#-9133300 ; -> 0x4590a60 
004e46758 	adrp	x0, #90054656 ; -> 0xa428000 
004e4675c 	ldr	x0, [x0, #2168]
004e46760 	bl	#-9133312 ; -> 0x4590a60 
004e46764 	adrp	x0, #90054656 ; -> 0xa428000 
004e46768 	ldr	x0, [x0, #2176]
004e4676c 	bl	#-9133324 ; -> 0x4590a60 
004e46770 	adrp	x0, #90054656 ; -> 0xa428000 
004e46774 	ldr	x0, [x0, #2184]
004e46778 	bl	#-9133336 ; -> 0x4590a60 
004e4677c 	adrp	x0, #89817088 ; -> 0xa3ee000 
004e46780 	ldr	x0, [x0, #2840]
004e46784 	bl	#-9133348 ; -> 0x4590a60 
004e46788 	adrp	x0, #90054656 ; -> 0xa428000 
004e4678c 	ldr	x0, [x0, #2136]
004e46790 	bl	#-9133360 ; -> 0x4590a60 
004e46794 	adrp	x0, #89821184 ; -> 0xa3ef000 
004e46798 	ldr	x0, [x0, #3320]
004e4679c 	bl	#-9133372 ; -> 0x4590a60 
004e467a0 	adrp	x0, #89788416 ; -> 0xa3e7000 
004e467a4 	ldr	x0, [x0, #1192]
004e467a8 	bl	#-9133384 ; -> 0x4590a60 
004e467ac 	adrp	x0, #89997312 ; -> 0xa41a000 
004e467b0 	ldr	x0, [x0, #3856]
004e467b4 	bl	#-9133396 ; -> 0x4590a60 
004e467b8 	adrp	x0, #89833472 ; -> 0xa3f2000 
004e467bc 	ldr	x0, [x0, #3528]
004e467c0 	bl	#-9133408 ; -> 0x4590a60 
004e467c4 	adrp	x0, #90054656 ; -> 0xa428000 
004e467c8 	ldr	x0, [x0, #2192]
004e467cc 	bl	#-9133420 ; -> 0x4590a60 
004e467d0 	adrp	x0, #90054656 ; -> 0xa428000 
004e467d4 	ldr	x0, [x0, #2200]
004e467d8 	bl	#-9133432 ; -> 0x4590a60 
004e467dc 	adrp	x0, #90054656 ; -> 0xa428000 
004e467e0 	ldr	x0, [x0, #2208]
004e467e4 	bl	#-9133444 ; -> 0x4590a60 
004e467e8 	mov	w8, #1
004e467ec 	strb	w8, [x22, #291]
004e467f0 	mov	w0, #30226
004e467f4 	mov	x1, xzr
004e467f8 	bl	#-2093652 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e467fc 	tbz	w0, #0, #64 ; -> 0x4e4683c 
004e46800 	mov	w0, #30226
004e46804 	mov	x1, xzr
004e46808 	bl	#-2093488 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4680c 	cbz	x0, #4572 ; -> 0x4e479e8 
004e46810 	and	w3, w21, #0x1
004e46814 	mov	x1, x19
004e46818 	mov	x2, x20
004e4681c 	ldp	x20, x19, [sp, #96]
004e46820 	ldr	d10, [sp, #32]
004e46824 	ldp	x22, x21, [sp, #80]
004e46828 	mov	x4, xzr
004e4682c 	ldp	x30, x23, [sp, #64]
004e46830 	ldp	d9, d8, [sp, #48]
004e46834 	add	sp, sp, #112
004e46838 	b	#-2868796 ; -> 0x4b8a1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_225
004e4683c 	adrp	x22, #89817088 ; -> 0xa3ee000 
004e46840 	and	w2, w21, #0x1
004e46844 	mov	x0, x19
004e46848 	ldr	x22, [x22, #2840]
004e4684c 	mov	x1, x20
004e46850 	bl	#-824 ; -> 0x4e46518 GameManager::EnemyRemove
004e46854 	mov	x0, x19
004e46858 	bl	#-18692 ; -> 0x4e41f54 GameManager::get_gameMode
004e4685c 	mov	w21, w0
004e46860 	ldr	x0, [x22]
004e46864 	add	x1, sp, #44
004e46868 	str	wzr, [sp, #44]
004e4686c 	bl	#-9133188 ; -> 0x4590be8 
004e46870 	ldr	x8, [x22]
004e46874 	mov	x1, x0
004e46878 	mov	x23, #-1
004e4687c 	add	x0, sp, #8
004e46880 	mov	x2, xzr
004e46884 	str	w21, [sp, #24]
004e46888 	stp	x8, x23, [sp, #8]
004e4688c 	bl	#67539316 ; -> 0x8eafa00 System.Enum::Equals
004e46890 	tbz	w0, #0, #160 ; -> 0x4e46930 
004e46894 	ldr	x8, [x19, #320]
004e46898 	cbz	x8, #4432 ; -> 0x4e479e8 
004e4689c 	ldr	w8, [x8, #24]
004e468a0 	cmp	w8, #0
004e468a4 	b.gt	#4392 ; -> 0x4e479cc 
004e468a8 	ldr	w8, [x19, #1416]
004e468ac 	add	w8, w8, #1
004e468b0 	cmp	w8, #9
004e468b4 	str	w8, [x19, #1416]
004e468b8 	b.le	#896 ; -> 0x4e46c38 
004e468bc 	cmp	w8, #10
004e468c0 	b.ne	#1212 ; -> 0x4e46d7c 
004e468c4 	adrp	x20, #98095104 ; -> 0xabd3000 
004e468c8 	ldr	d9, [x19, #1424]
004e468cc 	ldr	s8, [x19, #1432]
004e468d0 	ldrb	w8, [x20, #1724]
004e468d4 	cbnz	w8, #24 ; -> 0x4e468ec 
004e468d8 	adrp	x0, #89792512 ; -> 0xa3e8000 
004e468dc 	ldr	x0, [x0, #632]
004e468e0 	bl	#-9133696 ; -> 0x4590a60 
004e468e4 	mov	w8, #1
004e468e8 	strb	w8, [x20, #1724]
004e468ec 	adrp	x8, #89792512 ; -> 0xa3e8000 
004e468f0 	mov	w9, #1108082688
004e468f4 	mov	x0, x19
004e468f8 	ldr	x8, [x8, #632]
004e468fc 	dup	v0.2s, w9
004e46900 	fmov	s2, w9
004e46904 	ldr	x8, [x8]
004e46908 	ldr	x8, [x8, #184]
004e4690c 	ldur	d1, [x8, #60]
004e46910 	fmul	v0.2s, v1.2s, v0.2s
004e46914 	ldr	s1, [x8, #68]
004e46918 	fmul	s1, s1, s2
004e4691c 	fadd	v0.2s, v9.2s, v0.2s
004e46920 	fadd	s2, s8, s1
004e46924 	mov	s1, v0.s[1]
004e46928 	bl	#5208 ; -> 0x4e47d80 GameManager::MakeEnemy_RewardBox
004e4692c 	b	#788 ; -> 0x4e46c40 
004e46930 	mov	x0, x19
004e46934 	bl	#-18912 ; -> 0x4e41f54 GameManager::get_gameMode
004e46938 	mov	w21, w0
004e4693c 	ldr	x0, [x22]
004e46940 	mov	w8, #1
004e46944 	add	x1, sp, #44
004e46948 	str	w8, [sp, #44]
004e4694c 	bl	#-9133412 ; -> 0x4590be8 
004e46950 	ldr	x8, [x22]
004e46954 	mov	x1, x0
004e46958 	add	x0, sp, #8
004e4695c 	mov	x2, xzr
004e46960 	str	w21, [sp, #24]
004e46964 	stp	x8, x23, [sp, #8]
004e46968 	bl	#67539096 ; -> 0x8eafa00 System.Enum::Equals
004e4696c 	tbz	w0, #0, #128 ; -> 0x4e469ec 
004e46970 	fmov	s0, #-1.00000000
004e46974 	ldr	s1, [x19, #1512]
004e46978 	ldr	x0, [x19, #752]
004e4697c 	fadd	s0, s1, s0
004e46980 	str	s0, [x19, #1512]
004e46984 	cbz	x0, #4196 ; -> 0x4e479e8 
004e46988 	ldr	s1, [x19, #1508]
004e4698c 	mov	x1, xzr
004e46990 	fdiv	s0, s0, s1
004e46994 	bl	#80602632 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46998 	ldr	x8, [x19, #320]
004e4699c 	cbz	x8, #4172 ; -> 0x4e479e8 
004e469a0 	ldr	w8, [x8, #24]
004e469a4 	cmp	w8, #0
004e469a8 	b.gt	#4132 ; -> 0x4e479cc 
004e469ac 	ldr	w8, [x19, #1416]
004e469b0 	add	w9, w8, #1
004e469b4 	cmp	w8, #4
004e469b8 	str	w9, [x19, #1416]
004e469bc 	b.eq	#1252 ; -> 0x4e46ea0 
004e469c0 	cmp	w8, #3
004e469c4 	b.ne	#980 ; -> 0x4e46d98 
004e469c8 	ldrb	w8, [x19, #1516]
004e469cc 	cbz	w8, #972 ; -> 0x4e46d98 
004e469d0 	adrp	x8, #89788416 ; -> 0xa3e7000 
004e469d4 	ldr	x8, [x8, #2992]
004e469d8 	ldr	x0, [x8]
004e469dc 	bl	#-9133280 ; -> 0x4590cfc 
004e469e0 	adrp	x8, #90054656 ; -> 0xa428000 
004e469e4 	ldr	x8, [x8, #2152]
004e469e8 	b	#200 ; -> 0x4e46ab0 
004e469ec 	mov	x0, x19
004e469f0 	bl	#-19100 ; -> 0x4e41f54 GameManager::get_gameMode
004e469f4 	mov	w21, w0
004e469f8 	ldr	x0, [x22]
004e469fc 	mov	w8, #4
004e46a00 	add	x1, sp, #44
004e46a04 	str	w8, [sp, #44]
004e46a08 	bl	#-9133600 ; -> 0x4590be8 
004e46a0c 	ldr	x8, [x22]
004e46a10 	mov	x1, x0
004e46a14 	mov	x23, #-1
004e46a18 	add	x0, sp, #8
004e46a1c 	mov	x2, xzr
004e46a20 	str	w21, [sp, #24]
004e46a24 	stp	x8, x23, [sp, #8]
004e46a28 	bl	#67538904 ; -> 0x8eafa00 System.Enum::Equals
004e46a2c 	tbz	w0, #0, #204 ; -> 0x4e46af8 
004e46a30 	mov	x0, x19
004e46a34 	bl	#8080 ; -> 0x4e489c4 GameManager::MineMonsterCountUp
004e46a38 	fmov	s0, #-1.00000000
004e46a3c 	ldr	s1, [x19, #1512]
004e46a40 	ldr	x0, [x19, #752]
004e46a44 	fadd	s0, s1, s0
004e46a48 	str	s0, [x19, #1512]
004e46a4c 	cbz	x0, #3996 ; -> 0x4e479e8 
004e46a50 	ldr	s1, [x19, #1508]
004e46a54 	mov	x1, xzr
004e46a58 	fdiv	s0, s0, s1
004e46a5c 	bl	#80602432 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46a60 	ldr	x8, [x19, #320]
004e46a64 	cbz	x8, #3972 ; -> 0x4e479e8 
004e46a68 	ldr	w8, [x8, #24]
004e46a6c 	cmp	w8, #0
004e46a70 	b.gt	#3932 ; -> 0x4e479cc 
004e46a74 	ldr	w8, [x19, #1416]
004e46a78 	add	w9, w8, #1
004e46a7c 	cmp	w8, #4
004e46a80 	str	w9, [x19, #1416]
004e46a84 	b.eq	#1768 ; -> 0x4e4716c 
004e46a88 	cmp	w8, #3
004e46a8c 	b.ne	#1056 ; -> 0x4e46eac 
004e46a90 	ldrb	w8, [x19, #1516]
004e46a94 	cbz	w8, #1048 ; -> 0x4e46eac 
004e46a98 	adrp	x8, #89788416 ; -> 0xa3e7000 
004e46a9c 	ldr	x8, [x8, #2992]
004e46aa0 	ldr	x0, [x8]
004e46aa4 	bl	#-9133480 ; -> 0x4590cfc 
004e46aa8 	adrp	x8, #90054656 ; -> 0xa428000 
004e46aac 	ldr	x8, [x8, #2160]
004e46ab0 	ldr	x2, [x8]
004e46ab4 	mov	x1, x19
004e46ab8 	mov	x3, xzr
004e46abc 	mov	x20, x0
004e46ac0 	bl	#66625436 ; -> 0x8dd0a5c System.Action::.ctor
004e46ac4 	mov	x0, x19
004e46ac8 	mov	x1, x20
004e46acc 	mov	w2, #1
004e46ad0 	bl	#6136 ; -> 0x4e482c8 GameManager::BossStart_Coroutine
004e46ad4 	mov	x1, x0
004e46ad8 	mov	x0, x19
004e46adc 	bl	#6344 ; -> 0x4e483a4 GameManager::Start_Boss
004e46ae0 	ldr	x0, [x19, #752]
004e46ae4 	cbz	x0, #3844 ; -> 0x4e479e8 
004e46ae8 	movi	d0, #0000000000000000
004e46aec 	mov	x1, xzr
004e46af0 	bl	#80602284 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46af4 	b	#3800 ; -> 0x4e479cc 
004e46af8 	mov	x0, x19
004e46afc 	bl	#-19368 ; -> 0x4e41f54 GameManager::get_gameMode
004e46b00 	mov	w21, w0
004e46b04 	ldr	x0, [x22]
004e46b08 	mov	w8, #3
004e46b0c 	add	x1, sp, #44
004e46b10 	str	w8, [sp, #44]
004e46b14 	bl	#-9133868 ; -> 0x4590be8 
004e46b18 	ldr	x8, [x22]
004e46b1c 	mov	x1, x0
004e46b20 	add	x0, sp, #8
004e46b24 	mov	x2, xzr
004e46b28 	str	w21, [sp, #24]
004e46b2c 	stp	x8, x23, [sp, #8]
004e46b30 	bl	#67538640 ; -> 0x8eafa00 System.Enum::Equals
004e46b34 	tbz	w0, #0, #280 ; -> 0x4e46c4c 
004e46b38 	ldr	w8, [x19, #1500]
004e46b3c 	cmp	w8, #5
004e46b40 	b.eq	#1068 ; -> 0x4e46f6c 
004e46b44 	cmp	w8, #3
004e46b48 	b.eq	#880 ; -> 0x4e46eb8 
004e46b4c 	cmp	w8, #1
004e46b50 	b.ne	#3708 ; -> 0x4e479cc 
004e46b54 	ldr	w8, [x19, #1504]
004e46b58 	cmp	w8, #2
004e46b5c 	b.ne	#16 ; -> 0x4e46b6c 
004e46b60 	fmov	s0, #1.00000000
004e46b64 	mov	x0, x19
004e46b68 	bl	#9376 ; -> 0x4e49008 GameManager::Battle_TimeCharge
004e46b6c 	fmov	s0, #-1.00000000
004e46b70 	ldr	s1, [x19, #1512]
004e46b74 	ldr	x0, [x19, #752]
004e46b78 	fadd	s0, s1, s0
004e46b7c 	str	s0, [x19, #1512]
004e46b80 	cbz	x0, #3688 ; -> 0x4e479e8 
004e46b84 	ldr	s1, [x19, #1508]
004e46b88 	mov	x1, xzr
004e46b8c 	fdiv	s0, s0, s1
004e46b90 	bl	#80602124 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46b94 	ldr	x8, [x19, #320]
004e46b98 	cbz	x8, #3664 ; -> 0x4e479e8 
004e46b9c 	ldr	w8, [x8, #24]
004e46ba0 	cmp	w8, #0
004e46ba4 	b.le	#2396 ; -> 0x4e47500 
004e46ba8 	cmp	w8, #1
004e46bac 	b.ne	#3616 ; -> 0x4e479cc 
004e46bb0 	ldr	s0, [x19, #1512]
004e46bb4 	fcmp	s0, #0.0
004e46bb8 	b.hi	#3604 ; -> 0x4e479cc 
004e46bbc 	ldr	w8, [x19, #1504]
004e46bc0 	cmp	w8, #12
004e46bc4 	b.ne	#3592 ; -> 0x4e479cc 
004e46bc8 	adrp	x20, #89997312 ; -> 0xa41a000 
004e46bcc 	ldr	x20, [x20, #3856]
004e46bd0 	ldr	x0, [x20]
004e46bd4 	ldr	w8, [x0, #228]
004e46bd8 	cbnz	w8, #12 ; -> 0x4e46be4 
004e46bdc 	bl	#-9134076 ; -> 0x4590be0 
004e46be0 	ldr	x0, [x20]
004e46be4 	ldr	x8, [x0, #184]
004e46be8 	ldr	x8, [x8]
004e46bec 	cbz	x8, #3580 ; -> 0x4e479e8 
004e46bf0 	ldr	s0, [x8, #1968]
004e46bf4 	ldr	s1, [x19, #2428]
004e46bf8 	fadd	s0, s0, s1
004e46bfc 	str	s0, [x8, #1968]
004e46c00 	ldr	x0, [x19, #680]
004e46c04 	cbz	x0, #3556 ; -> 0x4e479e8 
004e46c08 	mov	w1, #1
004e46c0c 	mov	x2, xzr
004e46c10 	bl	#79417284 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e46c14 	ldr	x0, [x19, #752]
004e46c18 	cbz	x0, #3536 ; -> 0x4e479e8 
004e46c1c 	mov	x1, xzr
004e46c20 	bl	#79403664 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004e46c24 	cbz	x0, #3524 ; -> 0x4e479e8 
004e46c28 	mov	w1, wzr
004e46c2c 	mov	x2, xzr
004e46c30 	bl	#79417252 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e46c34 	b	#3480 ; -> 0x4e479cc 
004e46c38 	mov	x0, x19
004e46c3c 	bl	#3504 ; -> 0x4e479ec GameManager::Start_MakeEnemy_Stage
004e46c40 	mov	x0, x19
004e46c44 	bl	#4324 ; -> 0x4e47d28 GameManager::StageBar_Update
004e46c48 	b	#3460 ; -> 0x4e479cc 
004e46c4c 	mov	x0, x19
004e46c50 	bl	#-19708 ; -> 0x4e41f54 GameManager::get_gameMode
004e46c54 	mov	w21, w0
004e46c58 	ldr	x0, [x22]
004e46c5c 	mov	w8, #24
004e46c60 	add	x1, sp, #44
004e46c64 	str	w8, [sp, #44]
004e46c68 	bl	#-9134208 ; -> 0x4590be8 
004e46c6c 	ldr	x8, [x22]
004e46c70 	mov	x1, x0
004e46c74 	mov	x23, #-1
004e46c78 	add	x0, sp, #8
004e46c7c 	mov	x2, xzr
004e46c80 	str	w21, [sp, #24]
004e46c84 	stp	x8, x23, [sp, #8]
004e46c88 	bl	#67538296 ; -> 0x8eafa00 System.Enum::Equals
004e46c8c 	tbz	w0, #0, #280 ; -> 0x4e46da4 
004e46c90 	adrp	x8, #89821184 ; -> 0xa3ef000 
004e46c94 	ldr	x8, [x8, #3320]
004e46c98 	ldr	x0, [x8]
004e46c9c 	bl	#-13784360 ; -> 0x4121774 
004e46ca0 	cbz	x0, #3400 ; -> 0x4e479e8 
004e46ca4 	ldr	x21, [x0, #48]
004e46ca8 	cbz	x21, #3392 ; -> 0x4e479e8 
004e46cac 	ldr	w8, [x21, #52]
004e46cb0 	cmp	w8, #1
004e46cb4 	b.eq	#1220 ; -> 0x4e47178 
004e46cb8 	cmp	w8, #3
004e46cbc 	b.ne	#3344 ; -> 0x4e479cc 
004e46cc0 	fmov	s0, #-1.00000000
004e46cc4 	ldr	s1, [x19, #1512]
004e46cc8 	ldr	x0, [x19, #768]
004e46ccc 	fadd	s0, s1, s0
004e46cd0 	str	s0, [x19, #1512]
004e46cd4 	cbz	x0, #3348 ; -> 0x4e479e8 
004e46cd8 	ldr	s1, [x19, #1508]
004e46cdc 	mov	x1, xzr
004e46ce0 	fdiv	s0, s0, s1
004e46ce4 	bl	#80601784 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46ce8 	ldr	x20, [x19, #776]
004e46cec 	add	x0, x19, #1512
004e46cf0 	mov	x1, xzr
004e46cf4 	bl	#67386936 ; -> 0x8e8ab2c System.Single::ToString
004e46cf8 	mov	x22, x0
004e46cfc 	add	x0, x19, #1508
004e46d00 	mov	x1, xzr
004e46d04 	bl	#67386920 ; -> 0x8e8ab2c System.Single::ToString
004e46d08 	adrp	x8, #89833472 ; -> 0xa3f2000 
004e46d0c 	mov	x2, x0
004e46d10 	mov	x0, x22
004e46d14 	ldr	x8, [x8, #3528]
004e46d18 	mov	x3, xzr
004e46d1c 	ldr	x1, [x8]
004e46d20 	bl	#65614348 ; -> 0x8cd9f2c System.String::Concat
004e46d24 	cbz	x20, #3268 ; -> 0x4e479e8 
004e46d28 	ldr	x8, [x20]
004e46d2c 	mov	x1, x0
004e46d30 	mov	x0, x20
004e46d34 	ldr	x9, [x8, #1512]
004e46d38 	ldr	x2, [x8, #1520]
004e46d3c 	blr	x9
004e46d40 	ldr	x8, [x19, #320]
004e46d44 	cbz	x8, #3236 ; -> 0x4e479e8 
004e46d48 	ldr	w8, [x8, #24]
004e46d4c 	cmp	w8, #20
004e46d50 	b.gt	#3196 ; -> 0x4e479cc 
004e46d54 	ldr	x9, [x21, #32]
004e46d58 	cbz	x9, #3216 ; -> 0x4e479e8 
004e46d5c 	ldr	w10, [x9, #160]
004e46d60 	ldr	w9, [x19, #1416]
004e46d64 	sub	w10, w10, #1
004e46d68 	cmp	w9, w10
004e46d6c 	b.ge	#2264 ; -> 0x4e47644 
004e46d70 	add	w8, w9, #1
004e46d74 	str	w8, [x19, #1416]
004e46d78 	b	#2516 ; -> 0x4e4774c 
004e46d7c 	mov	x0, x19
004e46d80 	bl	#5280 ; -> 0x4e48220 GameManager::Stage_RestartIE
004e46d84 	mov	x1, x0
004e46d88 	mov	x0, x19
004e46d8c 	mov	x2, xzr
004e46d90 	bl	#79425132 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e46d94 	b	#3128 ; -> 0x4e479cc 
004e46d98 	mov	x0, x19
004e46d9c 	bl	#5980 ; -> 0x4e484f8 GameManager::Start_MakeEnemy_Adventure
004e46da0 	b	#3116 ; -> 0x4e479cc 
004e46da4 	mov	x0, x19
004e46da8 	bl	#-20052 ; -> 0x4e41f54 GameManager::get_gameMode
004e46dac 	mov	w20, w0
004e46db0 	ldr	x0, [x22]
004e46db4 	mov	w8, #6
004e46db8 	add	x1, sp, #44
004e46dbc 	str	w8, [sp, #44]
004e46dc0 	bl	#-9134552 ; -> 0x4590be8 
004e46dc4 	ldr	x8, [x22]
004e46dc8 	mov	x1, x0
004e46dcc 	add	x0, sp, #8
004e46dd0 	mov	x2, xzr
004e46dd4 	str	w20, [sp, #24]
004e46dd8 	stp	x8, x23, [sp, #8]
004e46ddc 	bl	#67537956 ; -> 0x8eafa00 System.Enum::Equals
004e46de0 	tbz	w0, #0, #624 ; -> 0x4e47050 
004e46de4 	fmov	s0, #-1.00000000
004e46de8 	ldr	s1, [x19, #1512]
004e46dec 	ldr	x0, [x19, #768]
004e46df0 	fadd	s0, s1, s0
004e46df4 	str	s0, [x19, #1512]
004e46df8 	cbz	x0, #3056 ; -> 0x4e479e8 
004e46dfc 	ldr	s1, [x19, #1508]
004e46e00 	mov	x1, xzr
004e46e04 	fdiv	s0, s0, s1
004e46e08 	bl	#80601492 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46e0c 	ldr	x20, [x19, #776]
004e46e10 	add	x0, x19, #1512
004e46e14 	mov	x1, xzr
004e46e18 	bl	#67386644 ; -> 0x8e8ab2c System.Single::ToString
004e46e1c 	mov	x21, x0
004e46e20 	add	x0, x19, #1508
004e46e24 	mov	x1, xzr
004e46e28 	bl	#67386628 ; -> 0x8e8ab2c System.Single::ToString
004e46e2c 	adrp	x8, #89833472 ; -> 0xa3f2000 
004e46e30 	mov	x2, x0
004e46e34 	mov	x0, x21
004e46e38 	ldr	x8, [x8, #3528]
004e46e3c 	mov	x3, xzr
004e46e40 	ldr	x1, [x8]
004e46e44 	bl	#65614056 ; -> 0x8cd9f2c System.String::Concat
004e46e48 	cbz	x20, #2976 ; -> 0x4e479e8 
004e46e4c 	ldr	x8, [x20]
004e46e50 	mov	x1, x0
004e46e54 	mov	x0, x20
004e46e58 	ldr	x9, [x8, #1512]
004e46e5c 	ldr	x2, [x8, #1520]
004e46e60 	blr	x9
004e46e64 	ldr	x8, [x19, #320]
004e46e68 	cbz	x8, #2944 ; -> 0x4e479e8 
004e46e6c 	ldr	w8, [x8, #24]
004e46e70 	cmp	w8, #1
004e46e74 	b.gt	#2904 ; -> 0x4e479cc 
004e46e78 	ldr	w10, [x19, #1496]
004e46e7c 	ldr	w9, [x19, #1416]
004e46e80 	sub	w10, w10, #1
004e46e84 	cmp	w9, w10
004e46e88 	b.ge	#1948 ; -> 0x4e47624 
004e46e8c 	add	w8, w9, #1
004e46e90 	mov	x0, x19
004e46e94 	str	w8, [x19, #1416]
004e46e98 	bl	#11988 ; -> 0x4e49d6c GameManager::Start_MakeEnemy_Cave
004e46e9c 	b	#2864 ; -> 0x4e479cc 
004e46ea0 	mov	x0, x19
004e46ea4 	bl	#5512 ; -> 0x4e4842c GameManager::AdventureClear
004e46ea8 	b	#2852 ; -> 0x4e479cc 
004e46eac 	mov	x0, x19
004e46eb0 	bl	#7316 ; -> 0x4e48b44 GameManager::Start_MakeEnemy_Mine
004e46eb4 	b	#2840 ; -> 0x4e479cc 
004e46eb8 	fmov	s0, #-1.00000000
004e46ebc 	ldr	s1, [x19, #1512]
004e46ec0 	ldr	x0, [x19, #768]
004e46ec4 	fadd	s0, s1, s0
004e46ec8 	str	s0, [x19, #1512]
004e46ecc 	cbz	x0, #2844 ; -> 0x4e479e8 
004e46ed0 	ldr	s1, [x19, #1508]
004e46ed4 	mov	x1, xzr
004e46ed8 	fdiv	s0, s0, s1
004e46edc 	bl	#80601280 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46ee0 	ldr	x20, [x19, #776]
004e46ee4 	add	x0, x19, #1512
004e46ee8 	mov	x1, xzr
004e46eec 	bl	#67386432 ; -> 0x8e8ab2c System.Single::ToString
004e46ef0 	mov	x21, x0
004e46ef4 	add	x0, x19, #1508
004e46ef8 	mov	x1, xzr
004e46efc 	bl	#67386416 ; -> 0x8e8ab2c System.Single::ToString
004e46f00 	adrp	x8, #89833472 ; -> 0xa3f2000 
004e46f04 	mov	x2, x0
004e46f08 	mov	x0, x21
004e46f0c 	ldr	x8, [x8, #3528]
004e46f10 	mov	x3, xzr
004e46f14 	ldr	x1, [x8]
004e46f18 	bl	#65613844 ; -> 0x8cd9f2c System.String::Concat
004e46f1c 	cbz	x20, #2764 ; -> 0x4e479e8 
004e46f20 	ldr	x8, [x20]
004e46f24 	mov	x1, x0
004e46f28 	mov	x0, x20
004e46f2c 	ldr	x9, [x8, #1512]
004e46f30 	ldr	x2, [x8, #1520]
004e46f34 	blr	x9
004e46f38 	ldr	x8, [x19, #320]
004e46f3c 	cbz	x8, #2732 ; -> 0x4e479e8 
004e46f40 	ldr	w8, [x8, #24]
004e46f44 	cmp	w8, #20
004e46f48 	b.gt	#2692 ; -> 0x4e479cc 
004e46f4c 	ldr	w10, [x19, #1496]
004e46f50 	ldr	w9, [x19, #1416]
004e46f54 	sub	w10, w10, #1
004e46f58 	cmp	w9, w10
004e46f5c 	b.ge	#1652 ; -> 0x4e475d0 
004e46f60 	add	w8, w9, #1
004e46f64 	str	w8, [x19, #1416]
004e46f68 	b	#1628 ; -> 0x4e475c4 
004e46f6c 	fmov	s0, #-1.00000000
004e46f70 	ldr	s1, [x19, #1512]
004e46f74 	ldr	w8, [x19, #1504]
004e46f78 	cmp	w8, #15
004e46f7c 	fadd	s0, s1, s0
004e46f80 	str	s0, [x19, #1512]
004e46f84 	b.ne	#2632 ; -> 0x4e479cc 
004e46f88 	ldr	x0, [x19, #1064]
004e46f8c 	cbz	x0, #2652 ; -> 0x4e479e8 
004e46f90 	ldr	s1, [x19, #1508]
004e46f94 	ldr	x20, [x19, #1048]
004e46f98 	mov	x1, xzr
004e46f9c 	fsub	s0, s1, s0
004e46fa0 	fdiv	s8, s0, s1
004e46fa4 	fmov	s0, s8
004e46fa8 	bl	#80601076 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46fac 	cbz	x20, #2620 ; -> 0x4e479e8 
004e46fb0 	fmov	s0, s8
004e46fb4 	mov	x0, x20
004e46fb8 	mov	x1, xzr
004e46fbc 	bl	#80601056 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e46fc0 	ldr	x0, [x19, #1056]
004e46fc4 	cbz	x0, #2596 ; -> 0x4e479e8 
004e46fc8 	mov	w1, #1
004e46fcc 	mov	x2, xzr
004e46fd0 	bl	#79416324 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e46fd4 	ldr	x8, [x19, #320]
004e46fd8 	cbz	x8, #2576 ; -> 0x4e479e8 
004e46fdc 	ldr	w8, [x8, #24]
004e46fe0 	cmp	w8, #1
004e46fe4 	b.gt	#2536 ; -> 0x4e479cc 
004e46fe8 	ldr	w8, [x19, #1496]
004e46fec 	ldr	w9, [x19, #1416]
004e46ff0 	sub	w8, w8, #2
004e46ff4 	add	w10, w9, #1
004e46ff8 	cmp	w9, w8
004e46ffc 	str	w10, [x19, #1416]
004e47000 	b.ne	#1476 ; -> 0x4e475c4 
004e47004 	ldrb	w8, [x19, #1516]
004e47008 	cbz	w8, #1468 ; -> 0x4e475c4 
004e4700c 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e47010 	ldr	x8, [x8, #1192]
004e47014 	ldr	x20, [x19, #2720]
004e47018 	ldr	x0, [x8]
004e4701c 	ldr	w8, [x0, #228]
004e47020 	cbnz	w8, #8 ; -> 0x4e47028 
004e47024 	bl	#-9135172 ; -> 0x4590be0 
004e47028 	mov	x0, x20
004e4702c 	mov	x1, xzr
004e47030 	mov	x2, xzr
004e47034 	bl	#79413852 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004e47038 	tbz	w0, #0, #2452 ; -> 0x4e479cc 
004e4703c 	ldr	x0, [x19, #2720]
004e47040 	cbz	x0, #2472 ; -> 0x4e479e8 
004e47044 	mov	x1, xzr
004e47048 	bl	#2437860 ; -> 0x509a32c CruelKnightBoss::SetChaseEnd
004e4704c 	b	#2432 ; -> 0x4e479cc 
004e47050 	mov	x0, x19
004e47054 	bl	#-20736 ; -> 0x4e41f54 GameManager::get_gameMode
004e47058 	mov	w20, w0
004e4705c 	ldr	x0, [x22]
004e47060 	mov	w8, #12
004e47064 	add	x1, sp, #44
004e47068 	str	w8, [sp, #44]
004e4706c 	bl	#-9135236 ; -> 0x4590be8 
004e47070 	ldr	x8, [x22]
004e47074 	mov	x1, x0
004e47078 	mov	x21, #-1
004e4707c 	add	x0, sp, #8
004e47080 	mov	x2, xzr
004e47084 	str	w20, [sp, #24]
004e47088 	stp	x8, x21, [sp, #8]
004e4708c 	bl	#67537268 ; -> 0x8eafa00 System.Enum::Equals
004e47090 	tbz	w0, #0, #500 ; -> 0x4e47284 
004e47094 	fmov	s0, #1.50000000
004e47098 	mov	x0, x19
004e4709c 	bl	#8044 ; -> 0x4e49008 GameManager::Battle_TimeCharge
004e470a0 	ldr	w8, [x19, #1984]
004e470a4 	mov	x0, x19
004e470a8 	add	w8, w8, #1
004e470ac 	str	w8, [x19, #1984]
004e470b0 	bl	#12360 ; -> 0x4e4a0f8 GameManager::SpiritForest_RewardUpdate
004e470b4 	fmov	s0, #-1.00000000
004e470b8 	ldr	s1, [x19, #1512]
004e470bc 	ldr	x0, [x19, #768]
004e470c0 	fadd	s0, s1, s0
004e470c4 	str	s0, [x19, #1512]
004e470c8 	cbz	x0, #2336 ; -> 0x4e479e8 
004e470cc 	ldr	s1, [x19, #1508]
004e470d0 	mov	x1, xzr
004e470d4 	fdiv	s0, s0, s1
004e470d8 	bl	#80600772 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e470dc 	ldr	x20, [x19, #776]
004e470e0 	add	x0, x19, #1512
004e470e4 	mov	x1, xzr
004e470e8 	bl	#67385924 ; -> 0x8e8ab2c System.Single::ToString
004e470ec 	mov	x21, x0
004e470f0 	add	x0, x19, #1508
004e470f4 	mov	x1, xzr
004e470f8 	bl	#67385908 ; -> 0x8e8ab2c System.Single::ToString
004e470fc 	adrp	x8, #89829376 ; -> 0xa3f2000 
004e47100 	mov	x2, x0
004e47104 	mov	x0, x21
004e47108 	ldr	x8, [x8, #3528]
004e4710c 	mov	x3, xzr
004e47110 	ldr	x1, [x8]
004e47114 	bl	#65613336 ; -> 0x8cd9f2c System.String::Concat
004e47118 	cbz	x20, #2256 ; -> 0x4e479e8 
004e4711c 	ldr	x8, [x20]
004e47120 	mov	x1, x0
004e47124 	mov	x0, x20
004e47128 	ldr	x9, [x8, #1512]
004e4712c 	ldr	x2, [x8, #1520]
004e47130 	blr	x9
004e47134 	ldr	x8, [x19, #320]
004e47138 	cbz	x8, #2224 ; -> 0x4e479e8 
004e4713c 	ldr	w8, [x8, #24]
004e47140 	cmp	w8, #0
004e47144 	b.gt	#2184 ; -> 0x4e479cc 
004e47148 	ldr	w8, [x19, #1416]
004e4714c 	ldr	w9, [x19, #1496]
004e47150 	add	w8, w8, #1
004e47154 	cmp	w8, w9
004e47158 	str	w8, [x19, #1416]
004e4715c 	b.ne	#1536 ; -> 0x4e4775c 
004e47160 	mov	x0, x19
004e47164 	bl	#12536 ; -> 0x4e4a25c GameManager::SpiritForestClear_Coroutine
004e47168 	b	#1228 ; -> 0x4e47634 
004e4716c 	mov	x0, x19
004e47170 	bl	#6420 ; -> 0x4e48a84 GameManager::MineClear
004e47174 	b	#2136 ; -> 0x4e479cc 
004e47178 	ldr	w8, [x19, #1504]
004e4717c 	cmp	w8, #2
004e47180 	b.ne	#16 ; -> 0x4e47190 
004e47184 	fmov	s0, #1.00000000
004e47188 	mov	x0, x19
004e4718c 	bl	#7804 ; -> 0x4e49008 GameManager::Battle_TimeCharge
004e47190 	fmov	s0, #-1.00000000
004e47194 	ldr	s1, [x19, #1512]
004e47198 	ldr	x0, [x19, #752]
004e4719c 	fadd	s0, s1, s0
004e471a0 	str	s0, [x19, #1512]
004e471a4 	cbz	x0, #2116 ; -> 0x4e479e8 
004e471a8 	ldr	s1, [x19, #1508]
004e471ac 	mov	x1, xzr
004e471b0 	fdiv	s0, s0, s1
004e471b4 	bl	#80600552 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e471b8 	ldr	x8, [x19, #320]
004e471bc 	cbz	x8, #2092 ; -> 0x4e479e8 
004e471c0 	ldr	w8, [x8, #24]
004e471c4 	cmp	w8, #0
004e471c8 	b.gt	#2052 ; -> 0x4e479cc 
004e471cc 	ldr	w9, [x19, #1416]
004e471d0 	add	w8, w9, #1
004e471d4 	str	w8, [x19, #1416]
004e471d8 	ldr	x10, [x21, #32]
004e471dc 	cbz	x10, #2060 ; -> 0x4e479e8 
004e471e0 	ldr	w10, [x10, #160]
004e471e4 	sub	w10, w10, #2
004e471e8 	cmp	w9, w10
004e471ec 	b.ne	#1364 ; -> 0x4e47740 
004e471f0 	ldr	x0, [x19, #752]
004e471f4 	cbz	x0, #2036 ; -> 0x4e479e8 
004e471f8 	movi	d0, #0000000000000000
004e471fc 	mov	x1, xzr
004e47200 	bl	#80600476 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e47204 	ldr	w8, [x21, #48]
004e47208 	cmp	w8, #9
004e4720c 	b.eq	#1476 ; -> 0x4e477d0 
004e47210 	cmp	w8, #8
004e47214 	b.ne	#1976 ; -> 0x4e479cc 
004e47218 	cbz	x20, #2000 ; -> 0x4e479e8 
004e4721c 	mov	x0, x20
004e47220 	mov	x1, xzr
004e47224 	bl	#79401916 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e47228 	cbz	x0, #1984 ; -> 0x4e479e8 
004e4722c 	mov	x1, xzr
004e47230 	bl	#79478524 ; -> 0x9a1312c UnityEngine.Transform::get_position
004e47234 	mov	x0, xzr
004e47238 	fmov	s8, s0
004e4723c 	fmov	s9, s1
004e47240 	bl	#212976 ; -> 0x4e7b230 
004e47244 	mov	w8, #1112014848
004e47248 	mov	x0, x21
004e4724c 	mov	x1, xzr
004e47250 	fmov	s2, w8
004e47254 	fmul	s0, s0, s2
004e47258 	fmul	s1, s1, s2
004e4725c 	fadd	s0, s8, s0
004e47260 	fadd	s1, s9, s1
004e47264 	bl	#453428 ; -> 0x4eb5d98 WorldBossModule_Battle::MakeDarkBoss_IE
004e47268 	mov	x1, x0
004e4726c 	mov	x0, x19
004e47270 	mov	x2, xzr
004e47274 	bl	#79423880 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e47278 	mov	x1, x0
004e4727c 	str	x0, [x21, #144]!
004e47280 	b	#1020 ; -> 0x4e4767c 
004e47284 	mov	x0, x19
004e47288 	bl	#-21300 ; -> 0x4e41f54 GameManager::get_gameMode
004e4728c 	mov	w20, w0
004e47290 	ldr	x0, [x22]
004e47294 	mov	w8, #7
004e47298 	add	x1, sp, #44
004e4729c 	str	w8, [sp, #44]
004e472a0 	bl	#-9135800 ; -> 0x4590be8 
004e472a4 	ldr	x8, [x22]
004e472a8 	mov	x1, x0
004e472ac 	add	x0, sp, #8
004e472b0 	mov	x2, xzr
004e472b4 	str	w20, [sp, #24]
004e472b8 	stp	x8, x21, [sp, #8]
004e472bc 	bl	#67536708 ; -> 0x8eafa00 System.Enum::Equals
004e472c0 	tbnz	w0, #0, #400 ; -> 0x4e47450 
004e472c4 	mov	x0, x19
004e472c8 	bl	#-21364 ; -> 0x4e41f54 GameManager::get_gameMode
004e472cc 	mov	w20, w0
004e472d0 	ldr	x0, [x22]
004e472d4 	mov	w8, #9
004e472d8 	add	x1, sp, #44
004e472dc 	str	w8, [sp, #44]
004e472e0 	bl	#-9135864 ; -> 0x4590be8 
004e472e4 	ldr	x8, [x22]
004e472e8 	mov	x1, x0
004e472ec 	mov	x21, #-1
004e472f0 	add	x0, sp, #8
004e472f4 	mov	x2, xzr
004e472f8 	str	w20, [sp, #24]
004e472fc 	stp	x8, x21, [sp, #8]
004e47300 	bl	#67536640 ; -> 0x8eafa00 System.Enum::Equals
004e47304 	tbnz	w0, #0, #332 ; -> 0x4e47450 
004e47308 	mov	x0, x19
004e4730c 	bl	#-21432 ; -> 0x4e41f54 GameManager::get_gameMode
004e47310 	mov	w20, w0
004e47314 	ldr	x0, [x22]
004e47318 	mov	w8, #17
004e4731c 	add	x1, sp, #44
004e47320 	str	w8, [sp, #44]
004e47324 	bl	#-9135932 ; -> 0x4590be8 
004e47328 	ldr	x8, [x22]
004e4732c 	mov	x1, x0
004e47330 	add	x0, sp, #8
004e47334 	mov	x2, xzr
004e47338 	str	w20, [sp, #24]
004e4733c 	stp	x8, x21, [sp, #8]
004e47340 	bl	#67536576 ; -> 0x8eafa00 System.Enum::Equals
004e47344 	tbnz	w0, #0, #268 ; -> 0x4e47450 
004e47348 	mov	x0, x19
004e4734c 	bl	#-21496 ; -> 0x4e41f54 GameManager::get_gameMode
004e47350 	mov	w20, w0
004e47354 	ldr	x0, [x22]
004e47358 	mov	w8, #18
004e4735c 	add	x1, sp, #44
004e47360 	str	w8, [sp, #44]
004e47364 	bl	#-9135996 ; -> 0x4590be8 
004e47368 	ldr	x8, [x22]
004e4736c 	mov	x1, x0
004e47370 	mov	x21, #-1
004e47374 	add	x0, sp, #8
004e47378 	mov	x2, xzr
004e4737c 	str	w20, [sp, #24]
004e47380 	stp	x8, x21, [sp, #8]
004e47384 	bl	#67536508 ; -> 0x8eafa00 System.Enum::Equals
004e47388 	tbnz	w0, #0, #200 ; -> 0x4e47450 
004e4738c 	mov	x0, x19
004e47390 	bl	#-21564 ; -> 0x4e41f54 GameManager::get_gameMode
004e47394 	mov	w20, w0
004e47398 	ldr	x0, [x22]
004e4739c 	mov	w8, #19
004e473a0 	add	x1, sp, #44
004e473a4 	str	w8, [sp, #44]
004e473a8 	bl	#-9136064 ; -> 0x4590be8 
004e473ac 	ldr	x8, [x22]
004e473b0 	mov	x1, x0
004e473b4 	add	x0, sp, #8
004e473b8 	mov	x2, xzr
004e473bc 	str	w20, [sp, #24]
004e473c0 	stp	x8, x21, [sp, #8]
004e473c4 	bl	#67536444 ; -> 0x8eafa00 System.Enum::Equals
004e473c8 	tbnz	w0, #0, #136 ; -> 0x4e47450 
004e473cc 	mov	x0, x19
004e473d0 	bl	#-21628 ; -> 0x4e41f54 GameManager::get_gameMode
004e473d4 	mov	w20, w0
004e473d8 	ldr	x0, [x22]
004e473dc 	mov	w8, #21
004e473e0 	add	x1, sp, #44
004e473e4 	str	w8, [sp, #44]
004e473e8 	bl	#-9136128 ; -> 0x4590be8 
004e473ec 	ldr	x8, [x22]
004e473f0 	mov	x1, x0
004e473f4 	mov	x21, #-1
004e473f8 	add	x0, sp, #8
004e473fc 	mov	x2, xzr
004e47400 	str	w20, [sp, #24]
004e47404 	stp	x8, x21, [sp, #8]
004e47408 	bl	#67536376 ; -> 0x8eafa00 System.Enum::Equals
004e4740c 	tbnz	w0, #0, #68 ; -> 0x4e47450 
004e47410 	mov	x0, x19
004e47414 	bl	#-21696 ; -> 0x4e41f54 GameManager::get_gameMode
004e47418 	mov	w20, w0
004e4741c 	ldr	x0, [x22]
004e47420 	mov	w8, #22
004e47424 	add	x1, sp, #44
004e47428 	str	w8, [sp, #44]
004e4742c 	bl	#-9136196 ; -> 0x4590be8 
004e47430 	ldr	x8, [x22]
004e47434 	mov	x1, x0
004e47438 	add	x0, sp, #8
004e4743c 	mov	x2, xzr
004e47440 	str	w20, [sp, #24]
004e47444 	stp	x8, x21, [sp, #8]
004e47448 	bl	#67536312 ; -> 0x8eafa00 System.Enum::Equals
004e4744c 	tbz	w0, #0, #1408 ; -> 0x4e479cc 
004e47450 	ldr	w8, [x19, #1500]
004e47454 	cmp	w8, #3
004e47458 	b.eq	#560 ; -> 0x4e47688 
004e4745c 	cmp	w8, #1
004e47460 	b.ne	#1388 ; -> 0x4e479cc 
004e47464 	ldr	x8, [x19, #2216]
004e47468 	cbz	x8, #1408 ; -> 0x4e479e8 
004e4746c 	ldr	w8, [x8, #112]
004e47470 	cmp	w8, #2
004e47474 	b.ne	#16 ; -> 0x4e47484 
004e47478 	fmov	s0, #1.00000000
004e4747c 	mov	x0, x19
004e47480 	bl	#7048 ; -> 0x4e49008 GameManager::Battle_TimeCharge
004e47484 	fmov	s0, #-1.00000000
004e47488 	ldr	s1, [x19, #1512]
004e4748c 	ldr	x0, [x19, #752]
004e47490 	fadd	s0, s1, s0
004e47494 	str	s0, [x19, #1512]
004e47498 	cbz	x0, #1360 ; -> 0x4e479e8 
004e4749c 	ldr	s1, [x19, #1508]
004e474a0 	mov	x1, xzr
004e474a4 	fdiv	s0, s0, s1
004e474a8 	bl	#80599796 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e474ac 	ldr	x8, [x19, #320]
004e474b0 	cbz	x8, #1336 ; -> 0x4e479e8 
004e474b4 	ldr	w8, [x8, #24]
004e474b8 	cmp	w8, #0
004e474bc 	b.gt	#1296 ; -> 0x4e479cc 
004e474c0 	ldr	w8, [x19, #1496]
004e474c4 	ldr	w10, [x19, #1416]
004e474c8 	sub	w11, w8, #2
004e474cc 	add	w9, w10, #1
004e474d0 	cmp	w10, w11
004e474d4 	str	w9, [x19, #1416]
004e474d8 	b.ne	#736 ; -> 0x4e477b8 
004e474dc 	ldrb	w10, [x19, #1516]
004e474e0 	cbz	w10, #728 ; -> 0x4e477b8 
004e474e4 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e474e8 	ldr	x8, [x8, #2992]
004e474ec 	ldr	x0, [x8]
004e474f0 	bl	#-9136116 ; -> 0x4590cfc 
004e474f4 	adrp	x8, #90050560 ; -> 0xa428000 
004e474f8 	ldr	x8, [x8, #2176]
004e474fc 	b	#-2636 ; -> 0x4e46ab0 
004e47500 	ldr	w8, [x19, #1496]
004e47504 	ldr	w10, [x19, #1416]
004e47508 	sub	w11, w8, #2
004e4750c 	add	w9, w10, #1
004e47510 	cmp	w10, w11
004e47514 	str	w9, [x19, #1416]
004e47518 	b.ne	#140 ; -> 0x4e475a4 
004e4751c 	ldrb	w10, [x19, #1516]
004e47520 	cbz	w10, #132 ; -> 0x4e475a4 
004e47524 	ldr	x0, [x19, #752]
004e47528 	cbz	x0, #1216 ; -> 0x4e479e8 
004e4752c 	movi	d0, #0000000000000000
004e47530 	mov	x1, xzr
004e47534 	bl	#80599656 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e47538 	ldr	w8, [x19, #1504]
004e4753c 	cmp	w8, #8
004e47540 	b.gt	#552 ; -> 0x4e47768 
004e47544 	cmp	w8, #5
004e47548 	b.eq	#884 ; -> 0x4e478bc 
004e4754c 	cmp	w8, #8
004e47550 	b.ne	#800 ; -> 0x4e47870 
004e47554 	cbz	x20, #1172 ; -> 0x4e479e8 
004e47558 	mov	x0, x20
004e4755c 	mov	x1, xzr
004e47560 	bl	#79401088 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e47564 	cbz	x0, #1156 ; -> 0x4e479e8 
004e47568 	mov	x1, xzr
004e4756c 	bl	#79477696 ; -> 0x9a1312c UnityEngine.Transform::get_position
004e47570 	mov	x0, xzr
004e47574 	fmov	s8, s0
004e47578 	fmov	s9, s1
004e4757c 	bl	#212148 ; -> 0x4e7b230 
004e47580 	mov	w8, #1112014848
004e47584 	mov	x0, x19
004e47588 	fmov	s2, w8
004e4758c 	fmul	s0, s0, s2
004e47590 	fmul	s1, s1, s2
004e47594 	fadd	s0, s8, s0
004e47598 	fadd	s1, s9, s1
004e4759c 	bl	#7240 ; -> 0x4e491e4 GameManager::MakeDarkBoss_IE
004e475a0 	b	#-2076 ; -> 0x4e46d84 
004e475a4 	cmp	w9, w8
004e475a8 	b.ne	#28 ; -> 0x4e475c4 
004e475ac 	ldr	w8, [x19, #1504]
004e475b0 	cmp	w8, #18
004e475b4 	b.eq	#1048 ; -> 0x4e479cc 
004e475b8 	mov	x0, x19
004e475bc 	bl	#8016 ; -> 0x4e4950c GameManager::PlayerClassBattleClear
004e475c0 	b	#1036 ; -> 0x4e479cc 
004e475c4 	mov	x0, x19
004e475c8 	bl	#8388 ; -> 0x4e4968c GameManager::MakeEnemy_PlayerClassBattle
004e475cc 	b	#1024 ; -> 0x4e479cc 
004e475d0 	cmp	w8, #0
004e475d4 	b.gt	#1016 ; -> 0x4e479cc 
004e475d8 	ldr	w8, [x19, #1504]
004e475dc 	cmp	w8, #14
004e475e0 	b.eq	#1004 ; -> 0x4e479cc 
004e475e4 	cmp	w8, #10
004e475e8 	b.eq	#628 ; -> 0x4e4785c 
004e475ec 	cmp	w8, #4
004e475f0 	b.ne	#632 ; -> 0x4e47868 
004e475f4 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e475f8 	ldr	x8, [x8, #1328]
004e475fc 	ldr	x0, [x8]
004e47600 	ldr	w8, [x0, #228]
004e47604 	cbnz	w8, #8 ; -> 0x4e4760c 
004e47608 	bl	#-9136680 ; -> 0x4590be0 
004e4760c 	adrp	x8, #90050560 ; -> 0xa428000 
004e47610 	mov	x1, xzr
004e47614 	ldr	x8, [x8, #2192]
004e47618 	ldr	x0, [x8]
004e4761c 	bl	#79141128 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004e47620 	b	#940 ; -> 0x4e479cc 
004e47624 	cmp	w8, #1
004e47628 	b.eq	#932 ; -> 0x4e479cc 
004e4762c 	mov	x0, x19
004e47630 	bl	#10572 ; -> 0x4e49f7c GameManager::CaveClear_Coroutine
004e47634 	mov	x1, x0
004e47638 	mov	x0, x19
004e4763c 	bl	#10728 ; -> 0x4e4a024 GameManager::Start_Clear
004e47640 	b	#908 ; -> 0x4e479cc 
004e47644 	cmp	w8, #0
004e47648 	b.gt	#900 ; -> 0x4e479cc 
004e4764c 	ldr	w8, [x21, #48]
004e47650 	cmp	w8, #10
004e47654 	b.ne	#888 ; -> 0x4e479cc 
004e47658 	mov	x0, x21
004e4765c 	mov	x1, xzr
004e47660 	bl	#453096 ; -> 0x4eb6048 WorldBossModule_Battle::MakeWorldInfinentBoss_IE
004e47664 	mov	x1, x0
004e47668 	mov	x0, x19
004e4766c 	mov	x2, xzr
004e47670 	bl	#79422860 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e47674 	mov	x1, x0
004e47678 	str	x0, [x21, #136]!
004e4767c 	mov	x0, x21
004e47680 	bl	#-9137276 ; -> 0x4590a04 
004e47684 	b	#840 ; -> 0x4e479cc 
004e47688 	fmov	s0, #-1.00000000
004e4768c 	ldr	s1, [x19, #1512]
004e47690 	ldr	x0, [x19, #768]
004e47694 	fadd	s0, s1, s0
004e47698 	str	s0, [x19, #1512]
004e4769c 	cbz	x0, #844 ; -> 0x4e479e8 
004e476a0 	ldr	s1, [x19, #1508]
004e476a4 	mov	x1, xzr
004e476a8 	fdiv	s0, s0, s1
004e476ac 	bl	#80599280 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
004e476b0 	ldr	x20, [x19, #776]
004e476b4 	add	x0, x19, #1512
004e476b8 	mov	x1, xzr
004e476bc 	bl	#67384432 ; -> 0x8e8ab2c System.Single::ToString
004e476c0 	mov	x21, x0
004e476c4 	add	x0, x19, #1508
004e476c8 	mov	x1, xzr
004e476cc 	bl	#67384416 ; -> 0x8e8ab2c System.Single::ToString
004e476d0 	adrp	x8, #89829376 ; -> 0xa3f2000 
004e476d4 	mov	x2, x0
004e476d8 	mov	x0, x21
004e476dc 	ldr	x8, [x8, #3528]
004e476e0 	mov	x3, xzr
004e476e4 	ldr	x1, [x8]
004e476e8 	bl	#65611844 ; -> 0x8cd9f2c System.String::Concat
004e476ec 	cbz	x20, #764 ; -> 0x4e479e8 
004e476f0 	ldr	x8, [x20]
004e476f4 	mov	x1, x0
004e476f8 	mov	x0, x20
004e476fc 	ldr	x9, [x8, #1512]
004e47700 	ldr	x2, [x8, #1520]
004e47704 	blr	x9
004e47708 	ldr	x8, [x19, #320]
004e4770c 	cbz	x8, #732 ; -> 0x4e479e8 
004e47710 	ldr	w8, [x8, #24]
004e47714 	cmp	w8, #20
004e47718 	b.gt	#692 ; -> 0x4e479cc 
004e4771c 	ldr	w10, [x19, #1496]
004e47720 	ldr	w9, [x19, #1416]
004e47724 	sub	w10, w10, #1
004e47728 	cmp	w9, w10
004e4772c 	b.ge	#232 ; -> 0x4e47814 
004e47730 	add	w8, w9, #1
004e47734 	ldr	x1, [x19, #2216]
004e47738 	str	w8, [x19, #1416]
004e4773c 	b	#136 ; -> 0x4e477c4 
004e47740 	ldr	w9, [x19, #1496]
004e47744 	cmp	w8, w9
004e47748 	b.eq	#644 ; -> 0x4e479cc 
004e4774c 	mov	x0, x21
004e47750 	mov	x1, xzr
004e47754 	bl	#444176 ; -> 0x4eb3e64 WorldBossModule_Battle::MakeEnemy_WorldBoss
004e47758 	b	#628 ; -> 0x4e479cc 
004e4775c 	mov	x0, x19
004e47760 	bl	#11172 ; -> 0x4e4a304 GameManager::Start_MakeEnemy_SpiritForest
004e47764 	b	#616 ; -> 0x4e479cc 
004e47768 	cmp	w8, #9
004e4776c 	b.eq	#376 ; -> 0x4e478e4 
004e47770 	cmp	w8, #12
004e47774 	b.ne	#252 ; -> 0x4e47870 
004e47778 	ldr	s8, [x19, #1424]
004e4777c 	ldr	s9, [x19, #1428]
004e47780 	mov	x0, xzr
004e47784 	ldr	s10, [x19, #1432]
004e47788 	bl	#211624 ; -> 0x4e7b230 
004e4778c 	mov	w8, #1108082688
004e47790 	mov	x0, x19
004e47794 	fmov	s3, w8
004e47798 	fmul	s0, s0, s3
004e4779c 	fmul	s1, s1, s3
004e477a0 	fmul	s2, s2, s3
004e477a4 	fadd	s0, s8, s0
004e477a8 	fadd	s1, s9, s1
004e477ac 	fadd	s2, s10, s2
004e477b0 	bl	#7292 ; -> 0x4e4942c GameManager::MakeHellMoonBoss_IE
004e477b4 	b	#-2608 ; -> 0x4e46d84 
004e477b8 	cmp	w9, w8
004e477bc 	b.eq	#132 ; -> 0x4e47840 
004e477c0 	ldr	x1, [x19, #2216]
004e477c4 	mov	x0, x19
004e477c8 	bl	#14960 ; -> 0x4e4b238 GameManager::MakeEnemy_Battle
004e477cc 	b	#512 ; -> 0x4e479cc 
004e477d0 	ldr	s8, [x19, #1424]
004e477d4 	ldr	s9, [x19, #1428]
004e477d8 	mov	x0, xzr
004e477dc 	bl	#211540 ; -> 0x4e7b230 
004e477e0 	mov	w8, #1108082688
004e477e4 	mov	x0, x21
004e477e8 	mov	x2, xzr
004e477ec 	fmov	s2, w8
004e477f0 	adrp	x8, #90050560 ; -> 0xa428000 
004e477f4 	ldr	x8, [x8, #2208]
004e477f8 	fmul	s0, s0, s2
004e477fc 	fmul	s1, s1, s2
004e47800 	ldr	x1, [x8]
004e47804 	fadd	s0, s8, s0
004e47808 	fadd	s1, s9, s1
004e4780c 	bl	#452216 ; -> 0x4eb5e84 WorldBossModule_Battle::MakeBoss_WorldBoss
004e47810 	b	#444 ; -> 0x4e479cc 
004e47814 	cmp	w8, #0
004e47818 	b.gt	#436 ; -> 0x4e479cc 
004e4781c 	ldrb	w8, [x19, #1516]
004e47820 	cbz	w8, #32 ; -> 0x4e47840 
004e47824 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e47828 	ldr	x8, [x8, #2992]
004e4782c 	ldr	x0, [x8]
004e47830 	bl	#-9136948 ; -> 0x4590cfc 
004e47834 	adrp	x8, #90050560 ; -> 0xa428000 
004e47838 	ldr	x8, [x8, #2184]
004e4783c 	b	#76 ; -> 0x4e47888 
004e47840 	mov	x0, x19
004e47844 	bl	#-22768 ; -> 0x4e41f54 GameManager::get_gameMode
004e47848 	cmp	w0, #7
004e4784c 	b.ne	#216 ; -> 0x4e47924 
004e47850 	mov	x0, x19
004e47854 	bl	#11820 ; -> 0x4e4a680 GameManager::SkinBattleClear
004e47858 	b	#372 ; -> 0x4e479cc 
004e4785c 	mov	x0, x19
004e47860 	bl	#9316 ; -> 0x4e49cc4 GameManager::MakeInfinentBoss_IE
004e47864 	b	#-2784 ; -> 0x4e46d84 
004e47868 	ldrb	w8, [x19, #1516]
004e4786c 	cbz	w8, #-692 ; -> 0x4e475b8 
004e47870 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e47874 	ldr	x8, [x8, #2992]
004e47878 	ldr	x0, [x8]
004e4787c 	bl	#-9137024 ; -> 0x4590cfc 
004e47880 	adrp	x8, #90050560 ; -> 0xa428000 
004e47884 	ldr	x8, [x8, #2168]
004e47888 	ldr	x2, [x8]
004e4788c 	mov	x1, x19
004e47890 	mov	x3, xzr
004e47894 	mov	x20, x0
004e47898 	bl	#66621892 ; -> 0x8dd0a5c System.Action::.ctor
004e4789c 	mov	x0, x19
004e478a0 	mov	x1, x20
004e478a4 	mov	w2, #1
004e478a8 	bl	#2592 ; -> 0x4e482c8 GameManager::BossStart_Coroutine
004e478ac 	mov	x1, x0
004e478b0 	mov	x0, x19
004e478b4 	bl	#2800 ; -> 0x4e483a4 GameManager::Start_Boss
004e478b8 	b	#276 ; -> 0x4e479cc 
004e478bc 	cbz	x20, #300 ; -> 0x4e479e8 
004e478c0 	mov	x0, x20
004e478c4 	mov	x1, xzr
004e478c8 	bl	#79400216 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e478cc 	cbz	x0, #284 ; -> 0x4e479e8 
004e478d0 	mov	x1, xzr
004e478d4 	bl	#79476824 ; -> 0x9a1312c UnityEngine.Transform::get_position
004e478d8 	mov	x0, x19
004e478dc 	bl	#6208 ; -> 0x4e4911c GameManager::MakeDragonosBoss_IE
004e478e0 	b	#-2908 ; -> 0x4e46d84 
004e478e4 	ldr	s8, [x19, #1424]
004e478e8 	ldr	s9, [x19, #1428]
004e478ec 	mov	x0, xzr
004e478f0 	bl	#211264 ; -> 0x4e7b230 
004e478f4 	mov	w8, #1108082688
004e478f8 	mov	x0, x19
004e478fc 	fmov	s2, w8
004e47900 	adrp	x8, #90050560 ; -> 0xa428000 
004e47904 	ldr	x8, [x8, #2200]
004e47908 	fmul	s0, s0, s2
004e4790c 	fmul	s1, s1, s2
004e47910 	ldr	x1, [x8]
004e47914 	fadd	s0, s8, s0
004e47918 	fadd	s1, s9, s1
004e4791c 	bl	#6544 ; -> 0x4e492ac GameManager::MakeBoss_PlayerClass
004e47920 	b	#172 ; -> 0x4e479cc 
004e47924 	mov	x0, x19
004e47928 	bl	#-22996 ; -> 0x4e41f54 GameManager::get_gameMode
004e4792c 	cmp	w0, #9
004e47930 	b.ne	#16 ; -> 0x4e47940 
004e47934 	mov	x0, x19
004e47938 	bl	#11828 ; -> 0x4e4a76c GameManager::CampaignClear
004e4793c 	b	#144 ; -> 0x4e479cc 
004e47940 	mov	x0, x19
004e47944 	bl	#-23024 ; -> 0x4e41f54 GameManager::get_gameMode
004e47948 	cmp	w0, #17
004e4794c 	b.ne	#16 ; -> 0x4e4795c 
004e47950 	mov	x0, x19
004e47954 	bl	#12004 ; -> 0x4e4a838 GameManager::TimeAttackBattleClear
004e47958 	b	#116 ; -> 0x4e479cc 
004e4795c 	mov	x0, x19
004e47960 	bl	#-23052 ; -> 0x4e41f54 GameManager::get_gameMode
004e47964 	cmp	w0, #18
004e47968 	b.ne	#16 ; -> 0x4e47978 
004e4796c 	mov	x0, x19
004e47970 	bl	#12204 ; -> 0x4e4a91c GameManager::SkillMasteryBattleClear
004e47974 	b	#88 ; -> 0x4e479cc 
004e47978 	mov	x0, x19
004e4797c 	bl	#-23080 ; -> 0x4e41f54 GameManager::get_gameMode
004e47980 	cmp	w0, #19
004e47984 	b.ne	#20 ; -> 0x4e47998 
004e47988 	mov	x0, x19
004e4798c 	mov	w1, #3
004e47990 	bl	#12400 ; -> 0x4e4aa00 GameManager::DragonValleySearchBattleClear
004e47994 	b	#56 ; -> 0x4e479cc 
004e47998 	mov	x0, x19
004e4799c 	bl	#-23112 ; -> 0x4e41f54 GameManager::get_gameMode
004e479a0 	cmp	w0, #21
004e479a4 	b.ne	#16 ; -> 0x4e479b4 
004e479a8 	mov	x0, x19
004e479ac 	bl	#13568 ; -> 0x4e4aeac GameManager::GuildQuestBattleClear
004e479b0 	b	#28 ; -> 0x4e479cc 
004e479b4 	mov	x0, x19
004e479b8 	bl	#-23140 ; -> 0x4e41f54 GameManager::get_gameMode
004e479bc 	cmp	w0, #22
004e479c0 	b.ne	#12 ; -> 0x4e479cc 
004e479c4 	mov	x0, x19
004e479c8 	bl	#13768 ; -> 0x4e4af90 GameManager::ThemeDungeonBattleAClear
004e479cc 	ldp	x20, x19, [sp, #96]
004e479d0 	ldr	d10, [sp, #32]
004e479d4 	ldp	x22, x21, [sp, #80]
004e479d8 	ldp	x30, x23, [sp, #64]
004e479dc 	ldp	d9, d8, [sp, #48]
004e479e0 	add	sp, sp, #112
004e479e4 	ret
004e479e8 	bl	#-9137372 ; -> 0x4590d0c 
