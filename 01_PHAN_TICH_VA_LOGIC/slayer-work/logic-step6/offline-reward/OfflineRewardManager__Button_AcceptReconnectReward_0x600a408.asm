005240934 	sub	sp, sp, #432
005240938 	stp	x29, x30, [sp, #336]
00524093c 	stp	x28, x27, [sp, #352]
005240940 	stp	x26, x25, [sp, #368]
005240944 	stp	x24, x23, [sp, #384]
005240948 	stp	x22, x21, [sp, #400]
00524094c 	stp	x20, x19, [sp, #416]
005240950 	adrp	x21, #93937664 ; -> 0xabd6000 
005240954 	mov	w19, w1
005240958 	mov	x20, x0
00524095c 	ldrb	w8, [x21, #3699]
005240960 	tbnz	w8, #0, #168 ; -> 0x5240a08 
005240964 	adrp	x0, #85647360 ; -> 0xa3ee000 
005240968 	ldr	x0, [x0, #3648]
00524096c 	bl	#-13303564 ; -> 0x4590a60 
005240970 	adrp	x0, #85626880 ; -> 0xa3e9000 
005240974 	ldr	x0, [x0, #3552]
005240978 	bl	#-13303576 ; -> 0x4590a60 
00524097c 	adrp	x0, #85655552 ; -> 0xa3f0000 
005240980 	ldr	x0, [x0, #88]
005240984 	bl	#-13303588 ; -> 0x4590a60 
005240988 	adrp	x0, #85647360 ; -> 0xa3ee000 
00524098c 	ldr	x0, [x0, #2104]
005240990 	bl	#-13303600 ; -> 0x4590a60 
005240994 	adrp	x0, #85626880 ; -> 0xa3e9000 
005240998 	ldr	x0, [x0, #1384]
00524099c 	bl	#-13303612 ; -> 0x4590a60 
0052409a0 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409a4 	ldr	x0, [x0, #2368]
0052409a8 	bl	#-13303624 ; -> 0x4590a60 
0052409ac 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409b0 	ldr	x0, [x0, #2376]
0052409b4 	bl	#-13303636 ; -> 0x4590a60 
0052409b8 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409bc 	ldr	x0, [x0, #2384]
0052409c0 	bl	#-13303648 ; -> 0x4590a60 
0052409c4 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409c8 	ldr	x0, [x0, #2392]
0052409cc 	bl	#-13303660 ; -> 0x4590a60 
0052409d0 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409d4 	ldr	x0, [x0, #2400]
0052409d8 	bl	#-13303672 ; -> 0x4590a60 
0052409dc 	adrp	x0, #85962752 ; -> 0xa43b000 
0052409e0 	ldr	x0, [x0, #2408]
0052409e4 	bl	#-13303684 ; -> 0x4590a60 
0052409e8 	adrp	x0, #85618688 ; -> 0xa3e7000 
0052409ec 	ldr	x0, [x0, #1192]
0052409f0 	bl	#-13303696 ; -> 0x4590a60 
0052409f4 	adrp	x0, #85651456 ; -> 0xa3ef000 
0052409f8 	ldr	x0, [x0, #3424]
0052409fc 	bl	#-13303708 ; -> 0x4590a60 
005240a00 	mov	w8, #1
005240a04 	strb	w8, [x21, #3699]
005240a08 	mov	w0, #42236
005240a0c 	mov	x1, xzr
005240a10 	bl	#-6263916 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005240a14 	tbz	w0, #0, #64 ; -> 0x5240a54 
005240a18 	mov	w0, #42236
005240a1c 	mov	x1, xzr
005240a20 	bl	#-6263752 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005240a24 	cbz	x0, #1764 ; -> 0x5241108 
005240a28 	and	w2, w19, #0x1
005240a2c 	mov	x1, x20
005240a30 	mov	x3, xzr
005240a34 	ldp	x20, x19, [sp, #416]
005240a38 	ldp	x22, x21, [sp, #400]
005240a3c 	ldp	x24, x23, [sp, #384]
005240a40 	ldp	x26, x25, [sp, #368]
005240a44 	ldp	x28, x27, [sp, #352]
005240a48 	ldp	x29, x30, [sp, #336]
005240a4c 	add	sp, sp, #432
005240a50 	b	#-7082328 ; -> 0x4b7f8f8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_26
005240a54 	adrp	x21, #85647360 ; -> 0xa3ee000 
005240a58 	ldr	x21, [x21, #2104]
005240a5c 	ldr	x0, [x21]
005240a60 	ldr	w8, [x0, #228]
005240a64 	cbnz	w8, #8 ; -> 0x5240a6c 
005240a68 	bl	#-13303432 ; -> 0x4590be0 
005240a6c 	adrp	x22, #93908992 ; -> 0xabcf000 
005240a70 	ldrb	w8, [x22, #360]
005240a74 	cbnz	w8, #24 ; -> 0x5240a8c 
005240a78 	adrp	x0, #85647360 ; -> 0xa3ee000 
005240a7c 	ldr	x0, [x0, #2104]
005240a80 	bl	#-13303840 ; -> 0x4590a60 
005240a84 	mov	w8, #1
005240a88 	strb	w8, [x22, #360]
005240a8c 	ldr	x0, [x21]
005240a90 	ldr	w8, [x0, #228]
005240a94 	cbnz	w8, #12 ; -> 0x5240aa0 
005240a98 	bl	#-13303480 ; -> 0x4590be0 
005240a9c 	ldr	x0, [x21]
005240aa0 	ldr	x8, [x0, #184]
005240aa4 	ldr	x0, [x8]
005240aa8 	cbz	x0, #1632 ; -> 0x5241108 
005240aac 	mov	w1, #2
005240ab0 	mov	x2, xzr
005240ab4 	bl	#-5009044 ; -> 0x4d79c20 DataManager::GetConstantAchievementData
005240ab8 	tbz	w19, #0, #28 ; -> 0x5240ad4 
005240abc 	cbz	x0, #1612 ; -> 0x5241108 
005240ac0 	ldr	x0, [x0, #32]
005240ac4 	mov	x1, xzr
005240ac8 	bl	#63127372 ; -> 0x8e74a14 System.Int32::Parse
005240acc 	add	w21, w0, #100
005240ad0 	b	#8 ; -> 0x5240ad8 
005240ad4 	mov	w21, #100
005240ad8 	ldr	x0, [x20, #32]
005240adc 	cbz	x0, #1580 ; -> 0x5241108 
005240ae0 	mov	w1, wzr
005240ae4 	mov	x2, xzr
005240ae8 	bl	#75247852 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005240aec 	ldr	x0, [x20, #64]
005240af0 	cbz	x0, #1560 ; -> 0x5241108 
005240af4 	mov	w1, wzr
005240af8 	mov	x2, xzr
005240afc 	bl	#75247832 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005240b00 	adrp	x22, #85626880 ; -> 0xa3e9000 
005240b04 	ldr	x22, [x22, #1384]
005240b08 	ldr	x0, [x22]
005240b0c 	ldr	w8, [x0, #228]
005240b10 	cbnz	w8, #12 ; -> 0x5240b1c 
005240b14 	bl	#-13303604 ; -> 0x4590be0 
005240b18 	ldr	x0, [x22]
005240b1c 	ldr	x8, [x0, #184]
005240b20 	add	x0, x20, #112
005240b24 	mov	x1, xzr
005240b28 	ldr	x22, [x8]
005240b2c 	bl	#-7274712 ; -> 0x4b50a54 SilentBigInt::get_Value
005240b30 	adrp	x27, #85626880 ; -> 0xa3e9000 
005240b34 	mov	x23, x0
005240b38 	mov	x24, x1
005240b3c 	ldr	x27, [x27, #3552]
005240b40 	ldr	x0, [x27]
005240b44 	ldr	w8, [x0, #228]
005240b48 	cbnz	w8, #8 ; -> 0x5240b50 
005240b4c 	bl	#-13303660 ; -> 0x4590be0 
005240b50 	mov	w0, w21
005240b54 	mov	x1, xzr
005240b58 	bl	#66307148 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240b5c 	mov	x2, x0
005240b60 	mov	x3, x1
005240b64 	mov	x0, x23
005240b68 	mov	x1, x24
005240b6c 	mov	x4, xzr
005240b70 	bl	#66297044 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
005240b74 	mov	x23, x0
005240b78 	mov	x24, x1
005240b7c 	mov	w0, #100
005240b80 	mov	x1, xzr
005240b84 	bl	#66307104 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240b88 	mov	x2, x0
005240b8c 	mov	x3, x1
005240b90 	mov	x0, x23
005240b94 	mov	x1, x24
005240b98 	mov	x4, xzr
005240b9c 	bl	#66297500 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
005240ba0 	cbz	x22, #1384 ; -> 0x5241108 
005240ba4 	mov	x2, x0
005240ba8 	mov	x3, x1
005240bac 	mov	x0, x22
005240bb0 	mov	x1, x2
005240bb4 	mov	x2, x3
005240bb8 	mov	x3, xzr
005240bbc 	bl	#-5217464 ; -> 0x4d46f04 DatabaseManager::Gold_Get
005240bc0 	adrp	x8, #85651456 ; -> 0xa3ef000 
005240bc4 	add	x0, x20, #152
005240bc8 	mov	x1, xzr
005240bcc 	ldr	x8, [x8, #3424]
005240bd0 	ldr	x8, [x8]
005240bd4 	ldr	x8, [x8, #184]
005240bd8 	ldr	x22, [x8]
005240bdc 	bl	#-7274888 ; -> 0x4b50a54 SilentBigInt::get_Value
005240be0 	mov	x23, x0
005240be4 	mov	x24, x1
005240be8 	mov	w0, w21
005240bec 	mov	x1, xzr
005240bf0 	bl	#66306996 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240bf4 	mov	x2, x0
005240bf8 	mov	x3, x1
005240bfc 	mov	x0, x23
005240c00 	mov	x1, x24
005240c04 	mov	x4, xzr
005240c08 	bl	#66296892 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
005240c0c 	mov	x23, x0
005240c10 	mov	x24, x1
005240c14 	mov	w0, #100
005240c18 	mov	x1, xzr
005240c1c 	bl	#66306952 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240c20 	mov	x2, x0
005240c24 	mov	x3, x1
005240c28 	mov	x0, x23
005240c2c 	mov	x1, x24
005240c30 	mov	x4, xzr
005240c34 	bl	#66297348 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
005240c38 	cbz	x22, #1232 ; -> 0x5241108 
005240c3c 	mov	x2, x0
005240c40 	mov	x3, x1
005240c44 	mov	x0, x22
005240c48 	mov	x1, x2
005240c4c 	mov	x2, x3
005240c50 	mov	x3, xzr
005240c54 	bl	#-3313004 ; -> 0x4f17ee8 StatManager::Get_Exp_NoBuff
005240c58 	ldr	x0, [x20, #40]
005240c5c 	cbz	x0, #1196 ; -> 0x5241108 
005240c60 	adrp	x26, #85655552 ; -> 0xa3f0000 
005240c64 	mov	x1, xzr
005240c68 	ldr	x26, [x26, #88]
005240c6c 	ldr	x8, [x26]
005240c70 	ldr	x8, [x8, #184]
005240c74 	ldr	x22, [x8]
005240c78 	bl	#75233640 ; -> 0x9a005e0 UnityEngine.Component::get_transform
005240c7c 	cbz	x22, #1164 ; -> 0x5241108 
005240c80 	mov	x2, x0
005240c84 	mov	x0, x22
005240c88 	mov	w1, #15
005240c8c 	mov	x3, xzr
005240c90 	bl	#-5703440 ; -> 0x4cd0580 CoinEffectManager::CoinMagnetEffect
005240c94 	adrp	x8, #85962752 ; -> 0xa43b000 
005240c98 	ldr	x8, [x8, #2400]
005240c9c 	ldr	x0, [x8]
005240ca0 	bl	#-13303716 ; -> 0x4590cfc 
005240ca4 	adrp	x8, #85962752 ; -> 0xa43b000 
005240ca8 	mov	x22, x0
005240cac 	ldr	x8, [x8, #2376]
005240cb0 	ldr	x1, [x8]
005240cb4 	bl	#48637364 ; -> 0x80a3268 
005240cb8 	adrp	x8, #85962752 ; -> 0xa43b000 
005240cbc 	ldr	x8, [x8, #2408]
005240cc0 	ldr	x0, [x8]
005240cc4 	bl	#-13303752 ; -> 0x4590cfc 
005240cc8 	adrp	x8, #85962752 ; -> 0xa43b000 
005240ccc 	mov	x23, x0
005240cd0 	ldr	x8, [x8, #2368]
005240cd4 	ldr	x1, [x8]
005240cd8 	bl	#48546656 ; -> 0x808d038 
005240cdc 	cbz	x22, #1068 ; -> 0x5241108 
005240ce0 	ldr	x8, [x20, #192]
005240ce4 	sxtw	x9, w21
005240ce8 	adrp	x28, #85962752 ; -> 0xa43b000 
005240cec 	ldr	x28, [x28, #2384]
005240cf0 	mov	x0, x22
005240cf4 	mov	w1, #6
005240cf8 	mul	x8, x8, x9
005240cfc 	mov	x9, #55051
005240d00 	movk	x9, #28835, lsl #16
005240d04 	ldr	x3, [x28]
005240d08 	movk	x9, #2621, lsl #32
005240d0c 	movk	x9, #41943, lsl #48
005240d10 	smulh	x9, x8, x9
005240d14 	add	x8, x9, x8
005240d18 	asr	x9, x8, #6
005240d1c 	add	x2, x9, x8, lsr #63
005240d20 	bl	#48639720 ; -> 0x80a3c08 
005240d24 	ldr	w8, [x20, #200]
005240d28 	cmp	w8, #1
005240d2c 	b.lt	#184 ; -> 0x5240de4 
005240d30 	mul	w8, w8, w21
005240d34 	mov	w24, #34079
005240d38 	ldr	x3, [x28]
005240d3c 	movk	w24, #20971, lsl #16
005240d40 	mov	x0, x22
005240d44 	mov	w1, #5
005240d48 	smull	x8, w8, w24
005240d4c 	lsr	x9, x8, #63
005240d50 	asr	x8, x8, #37
005240d54 	add	w8, w8, w9
005240d58 	sxtw	x2, w8
005240d5c 	bl	#48639660 ; -> 0x80a3c08 
005240d60 	ldr	w8, [x20, #200]
005240d64 	ldr	x3, [x28]
005240d68 	mov	x0, x22
005240d6c 	mov	w1, #11
005240d70 	mul	w8, w8, w21
005240d74 	smull	x8, w8, w24
005240d78 	lsr	x9, x8, #63
005240d7c 	asr	x8, x8, #37
005240d80 	add	w8, w8, w9
005240d84 	sxtw	x2, w8
005240d88 	bl	#48639616 ; -> 0x80a3c08 
005240d8c 	ldr	w8, [x20, #200]
005240d90 	ldr	x3, [x28]
005240d94 	mov	x0, x22
005240d98 	mov	w1, #12
005240d9c 	mul	w8, w8, w21
005240da0 	smull	x8, w8, w24
005240da4 	lsr	x9, x8, #63
005240da8 	asr	x8, x8, #37
005240dac 	add	w8, w8, w9
005240db0 	sxtw	x2, w8
005240db4 	bl	#48639572 ; -> 0x80a3c08 
005240db8 	ldr	w8, [x20, #200]
005240dbc 	ldr	x3, [x28]
005240dc0 	mov	x0, x22
005240dc4 	mov	w1, #3
005240dc8 	mul	w8, w8, w21
005240dcc 	smull	x8, w8, w24
005240dd0 	lsr	x9, x8, #63
005240dd4 	asr	x8, x8, #37
005240dd8 	add	w8, w8, w9
005240ddc 	sxtw	x2, w8
005240de0 	bl	#48639528 ; -> 0x80a3c08 
005240de4 	ldp	q0, q1, [x20, #208]
005240de8 	add	x0, sp, #288
005240dec 	ldr	q2, [x20, #240]
005240df0 	mov	x1, xzr
005240df4 	stp	q0, q1, [sp, #288]
005240df8 	str	q2, [sp, #320]
005240dfc 	bl	#-11919408 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005240e00 	cmp	w0, #1
005240e04 	b.lt	#80 ; -> 0x5240e54 
005240e08 	ldp	q0, q1, [x20, #208]
005240e0c 	add	x0, sp, #240
005240e10 	ldur	q2, [x20, #240]
005240e14 	mov	x1, xzr
005240e18 	stp	q0, q1, [sp, #240]
005240e1c 	str	q2, [sp, #272]
005240e20 	bl	#-11919444 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005240e24 	mul	w9, w0, w21
005240e28 	mov	w8, #34079
005240e2c 	ldr	x3, [x28]
005240e30 	movk	w8, #20971, lsl #16
005240e34 	mov	x0, x22
005240e38 	mov	w1, #4
005240e3c 	smull	x8, w9, w8
005240e40 	lsr	x9, x8, #32
005240e44 	lsr	x8, x8, #63
005240e48 	add	w8, w8, w9, asr #5
005240e4c 	sxtw	x2, w8
005240e50 	bl	#48639416 ; -> 0x80a3c08 
005240e54 	ldr	x0, [x20, #256]
005240e58 	mov	x1, xzr
005240e5c 	bl	#-11928192 ; -> 0x46e0bdc Liapp.SecureVariable.LiappSecureString::op_Implicit
005240e60 	ldr	x8, [x27]
005240e64 	mov	x24, x0
005240e68 	ldr	w9, [x8, #228]
005240e6c 	cbnz	w9, #12 ; -> 0x5240e78 
005240e70 	mov	x0, x8
005240e74 	bl	#-13304468 ; -> 0x4590be0 
005240e78 	mov	x0, x24
005240e7c 	mov	x1, xzr
005240e80 	bl	#66295256 ; -> 0x917a458 System.Numerics.BigInteger::Parse
005240e84 	mov	x2, xzr
005240e88 	mov	x3, xzr
005240e8c 	mov	x24, x0
005240e90 	mov	x25, x1
005240e94 	bl	#66312976 ; -> 0x917e9a4 System.Numerics.BigInteger::op_GreaterThan
005240e98 	tbz	w0, #0, #136 ; -> 0x5240f20 
005240e9c 	ldr	x0, [x27]
005240ea0 	ldr	w8, [x0, #228]
005240ea4 	cbnz	w8, #8 ; -> 0x5240eac 
005240ea8 	bl	#-13304520 ; -> 0x4590be0 
005240eac 	mov	w0, w21
005240eb0 	mov	x1, xzr
005240eb4 	bl	#66306288 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240eb8 	mov	x2, x0
005240ebc 	mov	x3, x1
005240ec0 	mov	x0, x24
005240ec4 	mov	x1, x25
005240ec8 	mov	x4, xzr
005240ecc 	bl	#66296184 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
005240ed0 	mov	x24, x0
005240ed4 	mov	x25, x1
005240ed8 	mov	w0, #100
005240edc 	mov	x1, xzr
005240ee0 	bl	#66306244 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
005240ee4 	mov	x2, x0
005240ee8 	mov	x3, x1
005240eec 	mov	x0, x24
005240ef0 	mov	x1, x25
005240ef4 	mov	x4, xzr
005240ef8 	bl	#66296640 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
005240efc 	cbz	x23, #524 ; -> 0x5241108 
005240f00 	adrp	x8, #85962752 ; -> 0xa43b000 
005240f04 	mov	x2, x0
005240f08 	mov	x3, x1
005240f0c 	ldr	x8, [x8, #2392]
005240f10 	mov	x0, x23
005240f14 	mov	w1, #16
005240f18 	ldr	x4, [x8]
005240f1c 	bl	#48548540 ; -> 0x808d9d8 
005240f20 	add	x24, x20, #264
005240f24 	add	x0, sp, #192
005240f28 	mov	x1, xzr
005240f2c 	ldp	q0, q1, [x24]
005240f30 	ldr	q2, [x24, #32]
005240f34 	str	q2, [sp, #224]
005240f38 	stp	q0, q1, [sp, #192]
005240f3c 	bl	#-11919728 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005240f40 	cmp	w0, #1
005240f44 	b.lt	#80 ; -> 0x5240f94 
005240f48 	ldp	q0, q1, [x24]
005240f4c 	add	x0, sp, #144
005240f50 	ldr	q2, [x24, #32]
005240f54 	mov	x1, xzr
005240f58 	stp	q0, q1, [sp, #144]
005240f5c 	str	q2, [sp, #176]
005240f60 	bl	#-11919764 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005240f64 	mul	w9, w0, w21
005240f68 	mov	w8, #34079
005240f6c 	ldr	x3, [x28]
005240f70 	movk	w8, #20971, lsl #16
005240f74 	mov	x0, x22
005240f78 	mov	w1, #1
005240f7c 	smull	x8, w9, w8
005240f80 	lsr	x9, x8, #32
005240f84 	lsr	x8, x8, #63
005240f88 	add	w8, w8, w9, asr #5
005240f8c 	sxtw	x2, w8
005240f90 	bl	#48639096 ; -> 0x80a3c08 
005240f94 	mov	x0, xzr
005240f98 	bl	#-11128648 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
005240f9c 	add	x8, x20, #312
005240fa0 	mov	x21, x0
005240fa4 	add	x0, sp, #96
005240fa8 	ldp	q0, q1, [x8]
005240fac 	ldr	q2, [x8, #32]
005240fb0 	mov	x1, xzr
005240fb4 	str	q2, [sp, #128]
005240fb8 	stp	q0, q1, [sp, #96]
005240fbc 	bl	#-11919856 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005240fc0 	cbz	x21, #328 ; -> 0x5241108 
005240fc4 	mov	w1, w0
005240fc8 	and	w2, w19, #0x1
005240fcc 	mov	x0, x21
005240fd0 	mov	w3, #2
005240fd4 	mov	x4, xzr
005240fd8 	bl	#-11123780 ; -> 0x47a5394 Gear2.GrowSlayer.Logging.KinesisLog::AutoReward
005240fdc 	adrp	x8, #85618688 ; -> 0xa3e7000 
005240fe0 	ldr	x8, [x8, #1192]
005240fe4 	ldr	x21, [x20, #440]
005240fe8 	ldr	x0, [x8]
005240fec 	ldr	w8, [x0, #228]
005240ff0 	cbnz	w8, #8 ; -> 0x5240ff8 
005240ff4 	bl	#-13304852 ; -> 0x4590be0 
005240ff8 	mov	x0, x21
005240ffc 	mov	x1, xzr
005241000 	mov	x2, xzr
005241004 	bl	#75244172 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
005241008 	tbz	w0, #0, #116 ; -> 0x524107c 
00524100c 	ldr	x8, [x26]
005241010 	ldp	q0, q1, [x24]
005241014 	ldr	q2, [x24, #32]
005241018 	add	x0, sp, #48
00524101c 	mov	x1, xzr
005241020 	ldr	x8, [x8, #184]
005241024 	ldr	x21, [x8]
005241028 	stp	q0, q1, [sp, #48]
00524102c 	str	q2, [sp, #80]
005241030 	bl	#-11919972 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
005241034 	ldr	x8, [x20, #440]
005241038 	cbz	x8, #208 ; -> 0x5241108 
00524103c 	mov	w24, w0
005241040 	mov	x0, x8
005241044 	mov	x1, xzr
005241048 	bl	#75232664 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00524104c 	cbz	x0, #188 ; -> 0x5241108 
005241050 	mov	x1, xzr
005241054 	bl	#75309272 ; -> 0x9a1312c UnityEngine.Transform::get_position
005241058 	cbz	x21, #176 ; -> 0x5241108 
00524105c 	mov	x0, x21
005241060 	mov	w1, w24
005241064 	mov	x2, xzr
005241068 	bl	#-5704028 ; -> 0x4cd070c CoinEffectManager::DiaMagnetEffect
00524106c 	add	x0, x20, #440
005241070 	mov	x1, xzr
005241074 	str	xzr, [x20, #440]
005241078 	bl	#-13305460 ; -> 0x4590a04 
00524107c 	add	x8, x20, #360
005241080 	mov	x0, sp
005241084 	mov	x1, xzr
005241088 	ldp	q0, q1, [x8]
00524108c 	ldr	q2, [x8, #32]
005241090 	str	q2, [sp, #32]
005241094 	stp	q0, q1, [sp]
005241098 	bl	#-11920076 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00524109c 	adrp	x8, #85643264 ; -> 0xa3ee000 
0052410a0 	mov	w20, w0
0052410a4 	ldr	x8, [x8, #3648]
0052410a8 	ldr	x8, [x8]
0052410ac 	ldr	w9, [x8, #228]
0052410b0 	cbnz	w9, #12 ; -> 0x52410bc 
0052410b4 	mov	x0, x8
0052410b8 	bl	#-13305048 ; -> 0x4590be0 
0052410bc 	and	w3, w19, #0x1
0052410c0 	mov	w0, w20
0052410c4 	mov	x1, x22
0052410c8 	mov	x2, x23
0052410cc 	mov	x4, xzr
0052410d0 	bl	#-1512452 ; -> 0x50cfccc APIManager::RewardOffline
0052410d4 	mov	x0, xzr
0052410d8 	bl	#1633564 ; -> 0x53cfdf4 TimeAttackManager::get_Instance
0052410dc 	cbz	x0, #44 ; -> 0x5241108 
0052410e0 	mov	x1, xzr
0052410e4 	bl	#1634560 ; -> 0x53d01e4 TimeAttackManager::TryShowIcon
0052410e8 	ldp	x20, x19, [sp, #416]
0052410ec 	ldp	x22, x21, [sp, #400]
0052410f0 	ldp	x24, x23, [sp, #384]
0052410f4 	ldp	x26, x25, [sp, #368]
0052410f8 	ldp	x28, x27, [sp, #352]
0052410fc 	ldp	x29, x30, [sp, #336]
005241100 	add	sp, sp, #432
005241104 	ret
005241108 	bl	#-13304828 ; -> 0x4590d0c 
