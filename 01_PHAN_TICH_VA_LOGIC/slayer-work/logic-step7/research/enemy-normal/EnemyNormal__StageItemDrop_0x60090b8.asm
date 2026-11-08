0050f9804 	str	d8, [sp, #-96]!
0050f9808 	str	x29, [sp, #8]
0050f980c 	stp	x30, x27, [sp, #16]
0050f9810 	stp	x26, x25, [sp, #32]
0050f9814 	stp	x24, x23, [sp, #48]
0050f9818 	stp	x22, x21, [sp, #64]
0050f981c 	stp	x20, x19, [sp, #80]
0050f9820 	sub	sp, sp, #752
0050f9824 	adrp	x20, #95277056 ; -> 0xabd6000 
0050f9828 	mov	x19, x0
0050f982c 	ldrb	w8, [x20, #1326]
0050f9830 	tbnz	w8, #0, #156 ; -> 0x50f98cc 
0050f9834 	adrp	x0, #86986752 ; -> 0xa3ee000 
0050f9838 	ldr	x0, [x0, #3648]
0050f983c 	bl	#-11963868 ; -> 0x4590a60 
0050f9840 	adrp	x0, #86986752 ; -> 0xa3ee000 
0050f9844 	ldr	x0, [x0, #2104]
0050f9848 	bl	#-11963880 ; -> 0x4590a60 
0050f984c 	adrp	x0, #86966272 ; -> 0xa3e9000 
0050f9850 	ldr	x0, [x0, #1384]
0050f9854 	bl	#-11963892 ; -> 0x4590a60 
0050f9858 	adrp	x0, #87281664 ; -> 0xa436000 
0050f985c 	ldr	x0, [x0, #2448]
0050f9860 	bl	#-11963904 ; -> 0x4590a60 
0050f9864 	adrp	x0, #87003136 ; -> 0xa3f2000 
0050f9868 	ldr	x0, [x0, #552]
0050f986c 	bl	#-11963916 ; -> 0x4590a60 
0050f9870 	adrp	x0, #86962176 ; -> 0xa3e8000 
0050f9874 	ldr	x0, [x0, #1536]
0050f9878 	bl	#-11963928 ; -> 0x4590a60 
0050f987c 	adrp	x0, #87142400 ; -> 0xa414000 
0050f9880 	ldr	x0, [x0, #3944]
0050f9884 	bl	#-11963940 ; -> 0x4590a60 
0050f9888 	adrp	x0, #87187456 ; -> 0xa41f000 
0050f988c 	ldr	x0, [x0, #1880]
0050f9890 	bl	#-11963952 ; -> 0x4590a60 
0050f9894 	adrp	x0, #86966272 ; -> 0xa3e9000 
0050f9898 	ldr	x0, [x0, #736]
0050f989c 	bl	#-11963964 ; -> 0x4590a60 
0050f98a0 	adrp	x0, #87281664 ; -> 0xa436000 
0050f98a4 	ldr	x0, [x0, #2456]
0050f98a8 	bl	#-11963976 ; -> 0x4590a60 
0050f98ac 	adrp	x0, #87281664 ; -> 0xa436000 
0050f98b0 	ldr	x0, [x0, #2464]
0050f98b4 	bl	#-11963988 ; -> 0x4590a60 
0050f98b8 	adrp	x0, #87281664 ; -> 0xa436000 
0050f98bc 	ldr	x0, [x0, #2472]
0050f98c0 	bl	#-11964000 ; -> 0x4590a60 
0050f98c4 	mov	w8, #1
0050f98c8 	strb	w8, [x20, #1326]
0050f98cc 	mov	w0, #38663
0050f98d0 	mov	x1, xzr
0050f98d4 	bl	#-4924208 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050f98d8 	tbz	w0, #0, #64 ; -> 0x50f9918 
0050f98dc 	mov	w0, #38663
0050f98e0 	mov	x1, xzr
0050f98e4 	bl	#-4924044 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050f98e8 	cbz	x0, #2860 ; -> 0x50fa414 
0050f98ec 	mov	x1, x19
0050f98f0 	mov	x2, xzr
0050f98f4 	add	sp, sp, #752
0050f98f8 	ldp	x20, x19, [sp, #80]
0050f98fc 	ldr	x29, [sp, #8]
0050f9900 	ldp	x22, x21, [sp, #64]
0050f9904 	ldp	x24, x23, [sp, #48]
0050f9908 	ldp	x26, x25, [sp, #32]
0050f990c 	ldp	x30, x27, [sp, #16]
0050f9910 	ldr	d8, [sp], #96
0050f9914 	b	#-5747700 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050f9918 	adrp	x23, #87003136 ; -> 0xa3f2000 
0050f991c 	ldr	x23, [x23, #552]
0050f9920 	ldr	x0, [x23]
0050f9924 	ldr	w8, [x0, #228]
0050f9928 	cbnz	w8, #12 ; -> 0x50f9934 
0050f992c 	bl	#-11963724 ; -> 0x4590be0 
0050f9930 	ldr	x0, [x23]
0050f9934 	ldr	x8, [x0, #184]
0050f9938 	ldr	x8, [x8]
0050f993c 	cbz	x8, #2776 ; -> 0x50fa414 
0050f9940 	ldr	x24, [x8, #520]
0050f9944 	movi	d0, #0000000000000000
0050f9948 	mov	w8, #1120403456
0050f994c 	fmov	s1, w8
0050f9950 	mov	x0, xzr
0050f9954 	bl	#76553324 ; -> 0x99fb5c0 UnityEngine.Random::Range
0050f9958 	adrp	x20, #87142400 ; -> 0xa414000 
0050f995c 	ldr	x20, [x20, #3944]
0050f9960 	ldr	x8, [x20]
0050f9964 	ldr	x0, [x8, #32]
0050f9968 	add	x8, x0, #309
0050f996c 	ldrh	w8, [x8]
0050f9970 	tbnz	w8, #0, #8 ; -> 0x50f9978 
0050f9974 	bl	#-11733580 ; -> 0x45c8f28 
0050f9978 	ldr	x8, [x0, #192]
0050f997c 	ldr	x0, [x8, #16]
0050f9980 	add	x8, x0, #309
0050f9984 	ldrh	w8, [x8]
0050f9988 	tbnz	w8, #0, #8 ; -> 0x50f9990 
0050f998c 	bl	#-11733604 ; -> 0x45c8f28 
0050f9990 	ldr	x8, [x0, #184]
0050f9994 	ldr	x0, [x8]
0050f9998 	cbz	x0, #2684 ; -> 0x50fa414 
0050f999c 	mov	x1, xzr
0050f99a0 	add	x22, sp, #304
0050f99a4 	bl	#2938416 ; -> 0x53c6fd4 ThemeDungeonEventManager::get_IsUsable
0050f99a8 	tbz	w0, #0, #320 ; -> 0x50f9ae8 
0050f99ac 	ldr	x8, [x20]
0050f99b0 	ldr	x0, [x8, #32]
0050f99b4 	add	x8, x0, #309
0050f99b8 	ldrh	w8, [x8]
0050f99bc 	tbnz	w8, #0, #8 ; -> 0x50f99c4 
0050f99c0 	bl	#-11733656 ; -> 0x45c8f28 
0050f99c4 	ldr	x8, [x0, #192]
0050f99c8 	ldr	x0, [x8, #16]
0050f99cc 	add	x8, x0, #309
0050f99d0 	ldrh	w8, [x8]
0050f99d4 	tbnz	w8, #0, #8 ; -> 0x50f99dc 
0050f99d8 	bl	#-11733680 ; -> 0x45c8f28 
0050f99dc 	ldr	x8, [x0, #184]
0050f99e0 	ldr	x8, [x8]
0050f99e4 	cbz	x8, #2608 ; -> 0x50fa414 
0050f99e8 	ldr	x8, [x8, #72]
0050f99ec 	cbz	x8, #2600 ; -> 0x50fa414 
0050f99f0 	ldr	w8, [x8, #40]
0050f99f4 	cmp	w8, #2
0050f99f8 	b.ne	#240 ; -> 0x50f9ae8 
0050f99fc 	adrp	x25, #87187456 ; -> 0xa41f000 
0050f9a00 	add	x26, x24, #552
0050f9a04 	mov	w27, #10
0050f9a08 	ldr	x25, [x25, #1880]
0050f9a0c 	ldr	x8, [x25]
0050f9a10 	mov	x0, x19
0050f9a14 	mov	x1, xzr
0050f9a18 	ldr	x8, [x8, #184]
0050f9a1c 	ldr	x20, [x8]
0050f9a20 	bl	#76573632 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9a24 	ldr	x8, [x23]
0050f9a28 	mov	x21, x0
0050f9a2c 	ldr	w9, [x8, #228]
0050f9a30 	cbnz	w9, #16 ; -> 0x50f9a40 
0050f9a34 	mov	x0, x8
0050f9a38 	bl	#-11963992 ; -> 0x4590be0 
0050f9a3c 	ldr	x8, [x23]
0050f9a40 	ldr	x8, [x8, #184]
0050f9a44 	ldr	x0, [x8]
0050f9a48 	cbz	x0, #2508 ; -> 0x50fa414 
0050f9a4c 	mov	x1, xzr
0050f9a50 	bl	#-2786972 ; -> 0x4e513b4 GameManager::get_StageGoldAmount
0050f9a54 	cbz	x20, #2496 ; -> 0x50fa414 
0050f9a58 	mov	x3, x0
0050f9a5c 	mov	x4, x1
0050f9a60 	mov	x0, x20
0050f9a64 	mov	x1, x21
0050f9a68 	mov	w2, #4
0050f9a6c 	mov	x5, xzr
0050f9a70 	bl	#-2308168 ; -> 0x4ec6228 ObjectPooler_Effect::CoinEffect
0050f9a74 	ldr	x8, [x25]
0050f9a78 	mov	x0, x19
0050f9a7c 	mov	x1, xzr
0050f9a80 	ldr	x8, [x8, #184]
0050f9a84 	ldr	x20, [x8]
0050f9a88 	bl	#76573528 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9a8c 	cbz	x24, #2440 ; -> 0x50fa414 
0050f9a90 	ldp	q0, q1, [x26]
0050f9a94 	mov	x21, x0
0050f9a98 	add	x0, sp, #688
0050f9a9c 	mov	x1, xzr
0050f9aa0 	stp	q0, q1, [x22, #384]
0050f9aa4 	ldp	q0, q2, [x26, #32]
0050f9aa8 	stp	q0, q2, [x22, #416]
0050f9aac 	bl	#-5927340 ; -> 0x4b52900 SilentLong::op_Implicit
0050f9ab0 	cbz	x20, #2404 ; -> 0x50fa414 
0050f9ab4 	ldr	w6, [x24, #32]
0050f9ab8 	mov	x4, x0
0050f9abc 	mov	x0, x20
0050f9ac0 	mov	x1, x21
0050f9ac4 	mov	w2, #4
0050f9ac8 	mov	w3, #24
0050f9acc 	mov	w5, #5
0050f9ad0 	mov	w7, wzr
0050f9ad4 	str	xzr, [sp]
0050f9ad8 	bl	#-2307264 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f9adc 	subs	w27, w27, #1
0050f9ae0 	b.ne	#-212 ; -> 0x50f9a0c 
0050f9ae4 	b	#224 ; -> 0x50f9bc4 
0050f9ae8 	adrp	x25, #87187456 ; -> 0xa41f000 
0050f9aec 	mov	x0, x19
0050f9af0 	mov	x1, xzr
0050f9af4 	ldr	x25, [x25, #1880]
0050f9af8 	ldr	x8, [x25]
0050f9afc 	ldr	x8, [x8, #184]
0050f9b00 	ldr	x20, [x8]
0050f9b04 	bl	#76573404 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9b08 	ldr	x8, [x23]
0050f9b0c 	mov	x21, x0
0050f9b10 	ldr	w9, [x8, #228]
0050f9b14 	cbnz	w9, #16 ; -> 0x50f9b24 
0050f9b18 	mov	x0, x8
0050f9b1c 	bl	#-11964220 ; -> 0x4590be0 
0050f9b20 	ldr	x8, [x23]
0050f9b24 	ldr	x8, [x8, #184]
0050f9b28 	ldr	x0, [x8]
0050f9b2c 	cbz	x0, #2280 ; -> 0x50fa414 
0050f9b30 	mov	x1, xzr
0050f9b34 	bl	#-2787200 ; -> 0x4e513b4 GameManager::get_StageGoldAmount
0050f9b38 	cbz	x20, #2268 ; -> 0x50fa414 
0050f9b3c 	mov	x3, x0
0050f9b40 	mov	x4, x1
0050f9b44 	mov	x0, x20
0050f9b48 	mov	x1, x21
0050f9b4c 	mov	w2, wzr
0050f9b50 	mov	x5, xzr
0050f9b54 	bl	#-2308396 ; -> 0x4ec6228 ObjectPooler_Effect::CoinEffect
0050f9b58 	ldr	x8, [x25]
0050f9b5c 	mov	x0, x19
0050f9b60 	mov	x1, xzr
0050f9b64 	ldr	x8, [x8, #184]
0050f9b68 	ldr	x20, [x8]
0050f9b6c 	bl	#76573300 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9b70 	cbz	x24, #2212 ; -> 0x50fa414 
0050f9b74 	add	x8, x24, #552
0050f9b78 	mov	x21, x0
0050f9b7c 	add	x0, sp, #624
0050f9b80 	ldp	q0, q1, [x8]
0050f9b84 	mov	x1, xzr
0050f9b88 	stp	q0, q1, [x22, #320]
0050f9b8c 	ldp	q0, q2, [x8, #32]
0050f9b90 	stp	q0, q2, [x22, #352]
0050f9b94 	bl	#-5927572 ; -> 0x4b52900 SilentLong::op_Implicit
0050f9b98 	cbz	x20, #2172 ; -> 0x50fa414 
0050f9b9c 	ldr	w6, [x24, #32]
0050f9ba0 	mov	x4, x0
0050f9ba4 	mov	x0, x20
0050f9ba8 	mov	x1, x21
0050f9bac 	mov	w2, wzr
0050f9bb0 	mov	w3, #24
0050f9bb4 	mov	w5, #5
0050f9bb8 	mov	w7, wzr
0050f9bbc 	str	xzr, [sp]
0050f9bc0 	bl	#-2307496 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f9bc4 	adrp	x23, #86966272 ; -> 0xa3e9000 
0050f9bc8 	ldr	x23, [x23, #736]
0050f9bcc 	ldr	x0, [x23]
0050f9bd0 	ldr	w8, [x0, #228]
0050f9bd4 	cbnz	w8, #8 ; -> 0x50f9bdc 
0050f9bd8 	bl	#-11964408 ; -> 0x4590be0 
0050f9bdc 	fmov	s0, #0.50000000
0050f9be0 	mov	x0, xzr
0050f9be4 	bl	#-4070084 ; -> 0x4d18120 UsefulManager::Probability
0050f9be8 	tbz	w0, #0, #116 ; -> 0x50f9c5c 
0050f9bec 	add	x8, x24, #504
0050f9bf0 	add	x0, sp, #576
0050f9bf4 	mov	x1, xzr
0050f9bf8 	ldp	q0, q1, [x8]
0050f9bfc 	ldr	q2, [x8, #32]
0050f9c00 	str	q2, [x22, #304]
0050f9c04 	stp	q0, q1, [x22, #272]
0050f9c08 	bl	#-10579516 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0050f9c0c 	adrp	x8, #87187456 ; -> 0xa41f000 
0050f9c10 	mov	w21, w0
0050f9c14 	mov	x0, x19
0050f9c18 	ldr	x8, [x8, #1880]
0050f9c1c 	mov	x1, xzr
0050f9c20 	ldr	x8, [x8]
0050f9c24 	ldr	x8, [x8, #184]
0050f9c28 	ldr	x20, [x8]
0050f9c2c 	bl	#76573108 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9c30 	cbz	x20, #2020 ; -> 0x50fa414 
0050f9c34 	ldr	w6, [x24, #32]
0050f9c38 	sxtw	x4, w21
0050f9c3c 	mov	x1, x0
0050f9c40 	mov	x0, x20
0050f9c44 	mov	w2, wzr
0050f9c48 	mov	w3, #4
0050f9c4c 	mov	w5, #5
0050f9c50 	mov	w7, wzr
0050f9c54 	str	xzr, [sp]
0050f9c58 	bl	#-2307648 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f9c5c 	add	x8, x24, #264
0050f9c60 	add	x0, sp, #528
0050f9c64 	mov	x1, xzr
0050f9c68 	ldp	q0, q1, [x8]
0050f9c6c 	ldr	q2, [x8, #32]
0050f9c70 	str	q2, [x22, #256]
0050f9c74 	stp	q0, q1, [x22, #224]
0050f9c78 	bl	#-10579628 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0050f9c7c 	ldr	x8, [x23]
0050f9c80 	mov	w20, w0
0050f9c84 	ldr	w9, [x8, #228]
0050f9c88 	cbnz	w9, #12 ; -> 0x50f9c94 
0050f9c8c 	mov	x0, x8
0050f9c90 	bl	#-11964592 ; -> 0x4590be0 
0050f9c94 	fmov	s0, #10.00000000
0050f9c98 	mov	x0, xzr
0050f9c9c 	bl	#-4070268 ; -> 0x4d18120 UsefulManager::Probability
0050f9ca0 	tbz	w0, #0, #224 ; -> 0x50f9d80 
0050f9ca4 	ldr	x8, [x19, #312]
0050f9ca8 	cbz	x8, #1900 ; -> 0x50fa414 
0050f9cac 	ldr	q0, [x8, #3520]
0050f9cb0 	ldr	q1, [x8, #3536]
0050f9cb4 	add	x0, sp, #480
0050f9cb8 	ldr	q2, [x8, #3552]
0050f9cbc 	mov	x1, xzr
0050f9cc0 	stp	q0, q1, [x22, #176]
0050f9cc4 	str	q2, [x22, #208]
0050f9cc8 	bl	#-10579708 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0050f9ccc 	mov	w8, w0
0050f9cd0 	add	w9, w20, w20, lsl #1
0050f9cd4 	ldr	x0, [x19, #312]
0050f9cd8 	cmp	w8, #1
0050f9cdc 	csel	w21, w20, w9, lt
0050f9ce0 	cbz	x0, #1844 ; -> 0x50fa414 
0050f9ce4 	mov	w1, #3
0050f9ce8 	mov	x2, xzr
0050f9cec 	bl	#-3790832 ; -> 0x4d5c4fc DatabaseManager::EventBuff_Active
0050f9cf0 	tbz	w0, #0, #68 ; -> 0x50f9d34 
0050f9cf4 	adrp	x20, #86966272 ; -> 0xa3e9000 
0050f9cf8 	ldr	x20, [x20, #1384]
0050f9cfc 	ldr	x0, [x20]
0050f9d00 	ldr	w8, [x0, #228]
0050f9d04 	cbnz	w8, #12 ; -> 0x50f9d10 
0050f9d08 	bl	#-11964712 ; -> 0x4590be0 
0050f9d0c 	ldr	x0, [x20]
0050f9d10 	ldr	x8, [x0, #184]
0050f9d14 	mov	w9, #34079
0050f9d18 	movk	w9, #20971, lsl #16
0050f9d1c 	ldr	w8, [x8, #336]
0050f9d20 	mul	w8, w8, w21
0050f9d24 	smull	x8, w8, w9
0050f9d28 	lsr	x9, x8, #63
0050f9d2c 	asr	x8, x8, #37
0050f9d30 	add	w21, w8, w9
0050f9d34 	adrp	x8, #87187456 ; -> 0xa41f000 
0050f9d38 	mov	x0, x19
0050f9d3c 	mov	x1, xzr
0050f9d40 	ldr	x8, [x8, #1880]
0050f9d44 	ldr	x8, [x8]
0050f9d48 	ldr	x8, [x8, #184]
0050f9d4c 	ldr	x20, [x8]
0050f9d50 	bl	#76572816 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9d54 	cbz	x20, #1728 ; -> 0x50fa414 
0050f9d58 	ldr	w6, [x24, #32]
0050f9d5c 	sxtw	x4, w21
0050f9d60 	mov	x1, x0
0050f9d64 	mov	x0, x20
0050f9d68 	mov	w2, wzr
0050f9d6c 	mov	w3, #6
0050f9d70 	mov	w5, #5
0050f9d74 	mov	w7, wzr
0050f9d78 	str	xzr, [sp]
0050f9d7c 	bl	#-2307940 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f9d80 	add	x0, sp, #408
0050f9d84 	add	x1, x24, #384
0050f9d88 	mov	w2, #72
0050f9d8c 	bl	#80157540 ; -> 0x9d6b8f0 
0050f9d90 	add	x0, sp, #408
0050f9d94 	mov	x1, xzr
0050f9d98 	bl	#-5931120 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050f9d9c 	ldr	x8, [x19, #312]
0050f9da0 	cbz	x8, #1652 ; -> 0x50fa414 
0050f9da4 	fmov	s8, s0
0050f9da8 	ldr	q0, [x8, #3568]
0050f9dac 	ldr	q1, [x8, #3584]
0050f9db0 	ldr	q2, [x8, #3600]
0050f9db4 	add	x0, sp, #352
0050f9db8 	mov	x1, xzr
0050f9dbc 	stp	q0, q1, [x22, #48]
0050f9dc0 	str	q2, [x22, #80]
0050f9dc4 	bl	#-10579960 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0050f9dc8 	fadd	s0, s8, s8
0050f9dcc 	cmp	w0, #1
0050f9dd0 	ldr	x0, [x23]
0050f9dd4 	ldr	w8, [x0, #228]
0050f9dd8 	fcsel	s8, s8, s0, lt
0050f9ddc 	cbnz	w8, #8 ; -> 0x50f9de4 
0050f9de0 	bl	#-11964928 ; -> 0x4590be0 
0050f9de4 	fmov	s0, s8
0050f9de8 	mov	x0, xzr
0050f9dec 	bl	#-4070604 ; -> 0x4d18120 UsefulManager::Probability
0050f9df0 	tbz	w0, #0, #504 ; -> 0x50f9fe8 
0050f9df4 	add	x8, x24, #456
0050f9df8 	add	x0, sp, #304
0050f9dfc 	mov	x1, xzr
0050f9e00 	ldp	q0, q1, [x8]
0050f9e04 	ldr	q2, [x8, #32]
0050f9e08 	str	q2, [x22, #32]
0050f9e0c 	stp	q0, q1, [x22]
0050f9e10 	bl	#-10580036 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0050f9e14 	adrp	x8, #87187456 ; -> 0xa41f000 
0050f9e18 	mov	w20, w0
0050f9e1c 	mov	x0, x19
0050f9e20 	ldr	x8, [x8, #1880]
0050f9e24 	ldr	w22, [x24, #32]
0050f9e28 	mov	x1, xzr
0050f9e2c 	ldr	x8, [x8]
0050f9e30 	ldr	x8, [x8, #184]
0050f9e34 	ldr	x21, [x8]
0050f9e38 	bl	#76572584 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f9e3c 	mov	w8, #52429
0050f9e40 	mov	w9, #26214
0050f9e44 	mov	x1, x0
0050f9e48 	movk	w8, #52428, lsl #16
0050f9e4c 	movk	w9, #58982, lsl #16
0050f9e50 	madd	w8, w22, w8, w9
0050f9e54 	mov	w9, #858993459
0050f9e58 	cmp	w8, w9
0050f9e5c 	b.lo	#16 ; -> 0x50f9e6c 
0050f9e60 	cbz	x21, #1460 ; -> 0x50fa414 
0050f9e64 	mov	w3, #100
0050f9e68 	b	#12 ; -> 0x50f9e74 
0050f9e6c 	cbz	x21, #1448 ; -> 0x50fa414 
0050f9e70 	mov	w3, #101
0050f9e74 	ldr	w6, [x24, #32]
0050f9e78 	sxtw	x4, w20
0050f9e7c 	mov	x0, x21
0050f9e80 	mov	w2, wzr
0050f9e84 	mov	w5, #5
0050f9e88 	mov	w7, wzr
0050f9e8c 	str	xzr, [sp]
0050f9e90 	bl	#-2308216 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f9e94 	fmov	s0, #10.00000000
0050f9e98 	fcmp	s8, s0
0050f9e9c 	b.lt	#164 ; -> 0x50f9f40 
0050f9ea0 	adrp	x8, #86986752 ; -> 0xa3ee000 
0050f9ea4 	ldr	x8, [x8, #3648]
0050f9ea8 	ldr	x0, [x8]
0050f9eac 	ldr	w8, [x0, #228]
0050f9eb0 	cbnz	w8, #8 ; -> 0x50f9eb8 
0050f9eb4 	bl	#-11965140 ; -> 0x4590be0 
0050f9eb8 	mov	w0, #8
0050f9ebc 	mov	x1, xzr
0050f9ec0 	bl	#-166376 ; -> 0x50d14d8 APIManager::HackerCount
0050f9ec4 	adrp	x8, #86958080 ; -> 0xa3e7000 
0050f9ec8 	add	x1, sp, #300
0050f9ecc 	ldr	x8, [x8, #1248]
0050f9ed0 	ldr	w9, [x24, #36]
0050f9ed4 	ldr	x0, [x8, #72]
0050f9ed8 	str	w9, [sp, #300]
0050f9edc 	bl	#-11965172 ; -> 0x4590be8 
0050f9ee0 	adrp	x8, #87281664 ; -> 0xa436000 
0050f9ee4 	mov	x1, x0
0050f9ee8 	mov	x2, xzr
0050f9eec 	ldr	x8, [x8, #2464]
0050f9ef0 	ldr	x8, [x8]
0050f9ef4 	mov	x0, x8
0050f9ef8 	bl	#62713228 ; -> 0x8cc8c84 System.String::Format
0050f9efc 	adrp	x22, #86966272 ; -> 0xa3e9000 
0050f9f00 	mov	x21, x0
0050f9f04 	ldr	x22, [x22, #1384]
0050f9f08 	ldr	x8, [x22]
0050f9f0c 	ldr	w9, [x8, #228]
0050f9f10 	cbnz	w9, #16 ; -> 0x50f9f20 
0050f9f14 	mov	x0, x8
0050f9f18 	bl	#-11965240 ; -> 0x4590be0 
0050f9f1c 	ldr	x8, [x22]
0050f9f20 	ldr	x8, [x8, #184]
0050f9f24 	ldr	x0, [x8]
0050f9f28 	cbz	x0, #1260 ; -> 0x50fa414 
0050f9f2c 	fmov	s0, s8
0050f9f30 	mov	w1, #6
0050f9f34 	mov	x2, x21
0050f9f38 	mov	x3, xzr
0050f9f3c 	bl	#-3853888 ; -> 0x4d4d0fc DatabaseManager::Post_WarningLog
0050f9f40 	cmp	w20, #20
0050f9f44 	b.lt	#164 ; -> 0x50f9fe8 
0050f9f48 	adrp	x8, #86986752 ; -> 0xa3ee000 
0050f9f4c 	ldr	x8, [x8, #3648]
0050f9f50 	ldr	x0, [x8]
0050f9f54 	ldr	w8, [x0, #228]
0050f9f58 	cbnz	w8, #8 ; -> 0x50f9f60 
0050f9f5c 	bl	#-11965308 ; -> 0x4590be0 
0050f9f60 	mov	w0, #8
0050f9f64 	mov	x1, xzr
0050f9f68 	bl	#-166544 ; -> 0x50d14d8 APIManager::HackerCount
0050f9f6c 	adrp	x8, #86958080 ; -> 0xa3e7000 
0050f9f70 	add	x1, sp, #300
0050f9f74 	ldr	x8, [x8, #1248]
0050f9f78 	ldr	w9, [x24, #36]
0050f9f7c 	ldr	x0, [x8, #72]
0050f9f80 	str	w9, [sp, #300]
0050f9f84 	bl	#-11965340 ; -> 0x4590be8 
0050f9f88 	adrp	x8, #87281664 ; -> 0xa436000 
0050f9f8c 	mov	x1, x0
0050f9f90 	mov	x2, xzr
0050f9f94 	ldr	x8, [x8, #2472]
0050f9f98 	ldr	x8, [x8]
0050f9f9c 	mov	x0, x8
0050f9fa0 	bl	#62713060 ; -> 0x8cc8c84 System.String::Format
0050f9fa4 	adrp	x22, #86966272 ; -> 0xa3e9000 
0050f9fa8 	mov	x21, x0
0050f9fac 	ldr	x22, [x22, #1384]
0050f9fb0 	ldr	x8, [x22]
0050f9fb4 	ldr	w9, [x8, #228]
0050f9fb8 	cbnz	w9, #16 ; -> 0x50f9fc8 
0050f9fbc 	mov	x0, x8
0050f9fc0 	bl	#-11965408 ; -> 0x4590be0 
0050f9fc4 	ldr	x8, [x22]
0050f9fc8 	ldr	x8, [x8, #184]
0050f9fcc 	ldr	x0, [x8]
0050f9fd0 	cbz	x0, #1092 ; -> 0x50fa414 
0050f9fd4 	scvtf	s0, w20
0050f9fd8 	mov	w1, #5
0050f9fdc 	mov	x2, x21
0050f9fe0 	mov	x3, xzr
0050f9fe4 	bl	#-3854056 ; -> 0x4d4d0fc DatabaseManager::Post_WarningLog
0050f9fe8 	add	x0, sp, #224
0050f9fec 	add	x1, x24, #312
0050f9ff0 	mov	w2, #72
0050f9ff4 	bl	#80156924 ; -> 0x9d6b8f0 
0050f9ff8 	add	x0, sp, #224
0050f9ffc 	mov	x1, xzr
0050fa000 	bl	#-5931736 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050fa004 	ldr	x0, [x23]
0050fa008 	fmov	s8, s0
0050fa00c 	ldr	w8, [x0, #228]
0050fa010 	cbnz	w8, #8 ; -> 0x50fa018 
0050fa014 	bl	#-11965492 ; -> 0x4590be0 
0050fa018 	fmov	s0, s8
0050fa01c 	mov	x0, xzr
0050fa020 	bl	#-4071168 ; -> 0x4d18120 UsefulManager::Probability
0050fa024 	tbz	w0, #0, #176 ; -> 0x50fa0d4 
0050fa028 	mov	w0, #1
0050fa02c 	mov	w1, #11
0050fa030 	mov	x2, xzr
0050fa034 	bl	#76551628 ; -> 0x99fb600 UnityEngine.Random::Range
0050fa038 	mov	w20, w0
0050fa03c 	mov	w0, wzr
0050fa040 	mov	w1, #4
0050fa044 	mov	x2, xzr
0050fa048 	bl	#76551608 ; -> 0x99fb600 UnityEngine.Random::Range
0050fa04c 	adrp	x8, #87183360 ; -> 0xa41f000 
0050fa050 	mov	w22, w0
0050fa054 	mov	x0, x19
0050fa058 	ldr	x8, [x8, #1880]
0050fa05c 	mov	x1, xzr
0050fa060 	ldr	x8, [x8]
0050fa064 	ldr	x8, [x8, #184]
0050fa068 	ldr	x21, [x8]
0050fa06c 	bl	#76572020 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050fa070 	cmp	w22, #2
0050fa074 	mov	x1, x0
0050fa078 	b.eq	#40 ; -> 0x50fa0a0 
0050fa07c 	cmp	w22, #1
0050fa080 	b.eq	#20 ; -> 0x50fa094 
0050fa084 	cbnz	w22, #40 ; -> 0x50fa0ac 
0050fa088 	cbz	x21, #908 ; -> 0x50fa414 
0050fa08c 	mov	w3, #5
0050fa090 	b	#36 ; -> 0x50fa0b4 
0050fa094 	cbz	x21, #896 ; -> 0x50fa414 
0050fa098 	mov	w3, #11
0050fa09c 	b	#24 ; -> 0x50fa0b4 
0050fa0a0 	cbz	x21, #884 ; -> 0x50fa414 
0050fa0a4 	mov	w3, #3
0050fa0a8 	b	#12 ; -> 0x50fa0b4 
0050fa0ac 	cbz	x21, #872 ; -> 0x50fa414 
0050fa0b0 	mov	w3, #12
0050fa0b4 	ldr	w6, [x24, #32]
0050fa0b8 	sxtw	x4, w20
0050fa0bc 	mov	x0, x21
0050fa0c0 	mov	w2, wzr
0050fa0c4 	mov	w5, #5
0050fa0c8 	mov	w7, wzr
0050fa0cc 	str	xzr, [sp]
0050fa0d0 	bl	#-2308792 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050fa0d4 	ldr	x8, [x19, #312]
0050fa0d8 	cbz	x8, #828 ; -> 0x50fa414 
0050fa0dc 	ldr	x8, [x8, #48]
0050fa0e0 	cbz	x8, #820 ; -> 0x50fa414 
0050fa0e4 	ldrb	w8, [x8, #39]
0050fa0e8 	cbz	w8, #776 ; -> 0x50fa3f0 
0050fa0ec 	adrp	x20, #86982656 ; -> 0xa3ee000 
0050fa0f0 	ldr	x20, [x20, #2104]
0050fa0f4 	ldr	x0, [x20]
0050fa0f8 	ldr	w8, [x0, #228]
0050fa0fc 	cbnz	w8, #8 ; -> 0x50fa104 
0050fa100 	bl	#-11965728 ; -> 0x4590be0 
0050fa104 	adrp	x21, #95244288 ; -> 0xabcf000 
0050fa108 	ldrb	w8, [x21, #360]
0050fa10c 	cbnz	w8, #24 ; -> 0x50fa124 
0050fa110 	adrp	x0, #86982656 ; -> 0xa3ee000 
0050fa114 	ldr	x0, [x0, #2104]
0050fa118 	bl	#-11966136 ; -> 0x4590a60 
0050fa11c 	mov	w8, #1
0050fa120 	strb	w8, [x21, #360]
0050fa124 	ldr	x0, [x20]
0050fa128 	ldr	w8, [x0, #228]
0050fa12c 	cbnz	w8, #12 ; -> 0x50fa138 
0050fa130 	bl	#-11965776 ; -> 0x4590be0 
0050fa134 	ldr	x0, [x20]
0050fa138 	ldr	x8, [x0, #184]
0050fa13c 	ldr	x8, [x8]
0050fa140 	cbz	x8, #724 ; -> 0x50fa414 
0050fa144 	ldr	x0, [x8, #664]
0050fa148 	cbz	x0, #716 ; -> 0x50fa414 
0050fa14c 	adrp	x8, #87277568 ; -> 0xa436000 
0050fa150 	ldr	x8, [x8, #2448]
0050fa154 	ldr	w1, [x24, #36]
0050fa158 	ldr	x2, [x8]
0050fa15c 	bl	#49669688 ; -> 0x8058794 
0050fa160 	cbz	x0, #692 ; -> 0x50fa414 
0050fa164 	ldr	w8, [x0, #20]
0050fa168 	mov	x20, x0
0050fa16c 	cbz	w8, #644 ; -> 0x50fa3f0 
0050fa170 	add	x0, sp, #152
0050fa174 	add	x1, x20, #24
0050fa178 	mov	w2, #72
0050fa17c 	bl	#80156548 ; -> 0x9d6b900 
0050fa180 	add	x0, sp, #152
0050fa184 	mov	x1, xzr
0050fa188 	bl	#-5932128 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050fa18c 	ldr	x0, [x23]
0050fa190 	fmov	s8, s0
0050fa194 	ldr	w8, [x0, #228]
0050fa198 	cbnz	w8, #8 ; -> 0x50fa1a0 
0050fa19c 	bl	#-11965884 ; -> 0x4590be0 
0050fa1a0 	fmov	s0, s8
0050fa1a4 	mov	x0, xzr
0050fa1a8 	bl	#-4071560 ; -> 0x4d18120 UsefulManager::Probability
0050fa1ac 	tbz	w0, #0, #580 ; -> 0x50fa3f0 
0050fa1b0 	adrp	x8, #-52236288 ; -> 0x1f29000 
0050fa1b4 	adrp	x9, #-52236288 ; -> 0x1f29000 
0050fa1b8 	mov	x0, xzr
0050fa1bc 	ldr	s0, [x8, #952]
0050fa1c0 	ldr	s1, [x9, #1340]
0050fa1c4 	bl	#76551164 ; -> 0x99fb5c0 UnityEngine.Random::Range
0050fa1c8 	adrp	x8, #86958080 ; -> 0xa3e8000 
0050fa1cc 	fcvt	d8, s0
0050fa1d0 	ldr	x8, [x8, #1536]
0050fa1d4 	ldr	x21, [x20, #96]
0050fa1d8 	ldr	x0, [x8]
0050fa1dc 	ldr	w8, [x0, #228]
0050fa1e0 	cbnz	w8, #8 ; -> 0x50fa1e8 
0050fa1e4 	bl	#-11965956 ; -> 0x4590be0 
0050fa1e8 	scvtf	d0, x21
0050fa1ec 	mov	x9, #9218868437227405312
0050fa1f0 	ldr	x0, [x19, #312]
0050fa1f4 	fmov	d1, x9
0050fa1f8 	fmul	d0, d8, d0
0050fa1fc 	fcvtps	x8, d0
0050fa200 	frintp	d0, d0
0050fa204 	cmp	x8, #1
0050fa208 	csinc	x8, x8, xzr, gt
0050fa20c 	fcmp	d0, d1
0050fa210 	csinc	x21, x8, xzr, ne
0050fa214 	cbz	x0, #512 ; -> 0x50fa414 
0050fa218 	mov	w1, #5
0050fa21c 	mov	x2, xzr
0050fa220 	bl	#-3792164 ; -> 0x4d5c4fc DatabaseManager::EventBuff_Active
0050fa224 	tbz	w0, #0, #76 ; -> 0x50fa270 
0050fa228 	adrp	x22, #86962176 ; -> 0xa3e9000 
0050fa22c 	ldr	x22, [x22, #1384]
0050fa230 	ldr	x0, [x22]
0050fa234 	ldr	w8, [x0, #228]
0050fa238 	cbnz	w8, #12 ; -> 0x50fa244 
0050fa23c 	bl	#-11966044 ; -> 0x4590be0 
0050fa240 	ldr	x0, [x22]
0050fa244 	ldr	x8, [x0, #184]
0050fa248 	mov	x9, #55051
0050fa24c 	movk	x9, #28835, lsl #16
0050fa250 	ldrsw	x8, [x8, #340]
0050fa254 	movk	x9, #2621, lsl #32
0050fa258 	movk	x9, #41943, lsl #48
0050fa25c 	mul	x8, x21, x8
0050fa260 	smulh	x9, x8, x9
0050fa264 	add	x8, x9, x8
0050fa268 	asr	x9, x8, #6
0050fa26c 	add	x21, x9, x8, lsr #63
0050fa270 	ldr	w22, [x20, #20]
0050fa274 	mov	w0, wzr
0050fa278 	mov	w1, #8
0050fa27c 	mov	x2, xzr
0050fa280 	bl	#76551040 ; -> 0x99fb600 UnityEngine.Random::Range
0050fa284 	cmp	w0, #5
0050fa288 	b.le	#28 ; -> 0x50fa2a4 
0050fa28c 	cmp	w0, #6
0050fa290 	b.ne	#28 ; -> 0x50fa2ac 
0050fa294 	mov	x0, x19
0050fa298 	mov	w1, w22
0050fa29c 	mov	w2, wzr
0050fa2a0 	b	#24 ; -> 0x50fa2b8 
0050fa2a4 	adrp	x8, #87183360 ; -> 0xa41f000 
0050fa2a8 	b	#28 ; -> 0x50fa2c4 
0050fa2ac 	mov	x0, x19
0050fa2b0 	mov	w1, w22
0050fa2b4 	mov	w2, #1
0050fa2b8 	bl	#2136 ; -> 0x50fab10 EnemyNormal::SoulDivision
0050fa2bc 	adrp	x8, #87183360 ; -> 0xa41f000 
0050fa2c0 	mov	w22, w0
0050fa2c4 	ldr	x8, [x8, #1880]
0050fa2c8 	ldr	x8, [x8]
0050fa2cc 	ldr	x8, [x8, #184]
0050fa2d0 	ldr	x23, [x8]
0050fa2d4 	mov	x0, x19
0050fa2d8 	mov	x1, xzr
0050fa2dc 	bl	#76571396 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050fa2e0 	cbz	x23, #308 ; -> 0x50fa414 
0050fa2e4 	ldr	w6, [x24, #32]
0050fa2e8 	mov	x1, x0
0050fa2ec 	mov	x0, x23
0050fa2f0 	mov	w2, wzr
0050fa2f4 	mov	w3, w22
0050fa2f8 	mov	x4, x21
0050fa2fc 	mov	w5, #5
0050fa300 	mov	w7, wzr
0050fa304 	str	xzr, [sp]
0050fa308 	bl	#-2309360 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050fa30c 	add	x0, sp, #80
0050fa310 	add	x1, x20, #24
0050fa314 	mov	w2, #72
0050fa318 	bl	#80156136 ; -> 0x9d6b900 
0050fa31c 	add	x0, sp, #80
0050fa320 	mov	x1, xzr
0050fa324 	bl	#-5932540 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050fa328 	fmov	s1, #5.00000000
0050fa32c 	fcmp	s0, s1
0050fa330 	b.lt	#192 ; -> 0x50fa3f0 
0050fa334 	adrp	x8, #86982656 ; -> 0xa3ee000 
0050fa338 	ldr	x8, [x8, #3648]
0050fa33c 	ldr	x0, [x8]
0050fa340 	ldr	w8, [x0, #228]
0050fa344 	cbnz	w8, #8 ; -> 0x50fa34c 
0050fa348 	bl	#-11966312 ; -> 0x4590be0 
0050fa34c 	mov	w0, #10
0050fa350 	mov	x1, xzr
0050fa354 	bl	#-167548 ; -> 0x50d14d8 APIManager::HackerCount
0050fa358 	adrp	x8, #86953984 ; -> 0xa3e7000 
0050fa35c 	add	x1, sp, #300
0050fa360 	ldr	x8, [x8, #1248]
0050fa364 	ldr	w9, [x24, #36]
0050fa368 	ldr	x0, [x8, #72]
0050fa36c 	str	w9, [sp, #300]
0050fa370 	bl	#-11966344 ; -> 0x4590be8 
0050fa374 	adrp	x8, #87277568 ; -> 0xa436000 
0050fa378 	mov	x1, x0
0050fa37c 	mov	x2, xzr
0050fa380 	ldr	x8, [x8, #2456]
0050fa384 	ldr	x8, [x8]
0050fa388 	mov	x0, x8
0050fa38c 	bl	#62712056 ; -> 0x8cc8c84 System.String::Format
0050fa390 	adrp	x21, #86962176 ; -> 0xa3e9000 
0050fa394 	mov	x19, x0
0050fa398 	ldr	x21, [x21, #1384]
0050fa39c 	ldr	x8, [x21]
0050fa3a0 	ldr	w9, [x8, #228]
0050fa3a4 	cbnz	w9, #16 ; -> 0x50fa3b4 
0050fa3a8 	mov	x0, x8
0050fa3ac 	bl	#-11966412 ; -> 0x4590be0 
0050fa3b0 	ldr	x8, [x21]
0050fa3b4 	ldr	x8, [x8, #184]
0050fa3b8 	add	x0, sp, #8
0050fa3bc 	add	x1, x20, #24
0050fa3c0 	mov	w2, #72
0050fa3c4 	ldr	x21, [x8]
0050fa3c8 	bl	#80155960 ; -> 0x9d6b900 
0050fa3cc 	add	x0, sp, #8
0050fa3d0 	mov	x1, xzr
0050fa3d4 	bl	#-5932716 ; -> 0x4b51d28 SilentFloat::op_Implicit
0050fa3d8 	cbz	x21, #60 ; -> 0x50fa414 
0050fa3dc 	mov	x0, x21
0050fa3e0 	mov	w1, #4
0050fa3e4 	mov	x2, x19
0050fa3e8 	mov	x3, xzr
0050fa3ec 	bl	#-3855088 ; -> 0x4d4d0fc DatabaseManager::Post_WarningLog
0050fa3f0 	add	sp, sp, #752
0050fa3f4 	ldp	x20, x19, [sp, #80]
0050fa3f8 	ldr	x29, [sp, #8]
0050fa3fc 	ldp	x22, x21, [sp, #64]
0050fa400 	ldp	x24, x23, [sp, #48]
0050fa404 	ldp	x26, x25, [sp, #32]
0050fa408 	ldp	x30, x27, [sp, #16]
0050fa40c 	ldr	d8, [sp], #96
0050fa410 	ret
0050fa414 	bl	#-11966216 ; -> 0x4590d0c 
