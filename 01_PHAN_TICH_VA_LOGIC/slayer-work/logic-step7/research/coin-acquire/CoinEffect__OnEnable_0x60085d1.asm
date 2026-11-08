0050197e4 	sub	sp, sp, #144
0050197e8 	stp	d15, d14, [sp, #32]
0050197ec 	stp	d13, d12, [sp, #48]
0050197f0 	stp	d11, d10, [sp, #64]
0050197f4 	stp	d9, d8, [sp, #80]
0050197f8 	str	x30, [sp, #96]
0050197fc 	stp	x22, x21, [sp, #112]
005019800 	stp	x20, x19, [sp, #128]
005019804 	adrp	x20, #96190464 ; -> 0xabd5000 
005019808 	mov	x19, x0
00501980c 	ldrb	w8, [x20, #3690]
005019810 	tbnz	w8, #0, #84 ; -> 0x5019864 
005019814 	adrp	x0, #87875584 ; -> 0xa3e7000 
005019818 	ldr	x0, [x0, #2992]
00501981c 	bl	#-11046332 ; -> 0x4590a60 
005019820 	adrp	x0, #88174592 ; -> 0xa430000 
005019824 	ldr	x0, [x0, #1184]
005019828 	bl	#-11046344 ; -> 0x4590a60 
00501982c 	adrp	x0, #88174592 ; -> 0xa430000 
005019830 	ldr	x0, [x0, #1192]
005019834 	bl	#-11046356 ; -> 0x4590a60 
005019838 	adrp	x0, #87891968 ; -> 0xa3eb000 
00501983c 	ldr	x0, [x0, #1360]
005019840 	bl	#-11046368 ; -> 0x4590a60 
005019844 	adrp	x0, #87908352 ; -> 0xa3ef000 
005019848 	ldr	x0, [x0, #1528]
00501984c 	bl	#-11046380 ; -> 0x4590a60 
005019850 	adrp	x0, #87891968 ; -> 0xa3eb000 
005019854 	ldr	x0, [x0, #1384]
005019858 	bl	#-11046392 ; -> 0x4590a60 
00501985c 	mov	w8, #1
005019860 	strb	w8, [x20, #3690]
005019864 	mov	w0, #36544
005019868 	mov	x1, xzr
00501986c 	bl	#-4006600 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005019870 	tbz	w0, #0, #64 ; -> 0x50198b0 
005019874 	mov	w0, #36544
005019878 	mov	x1, xzr
00501987c 	bl	#-4006436 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005019880 	cbz	x0, #1416 ; -> 0x5019e08 
005019884 	mov	x1, x19
005019888 	ldp	x20, x19, [sp, #128]
00501988c 	ldp	x22, x21, [sp, #112]
005019890 	mov	x2, xzr
005019894 	ldp	d9, d8, [sp, #80]
005019898 	ldr	x30, [sp, #96]
00501989c 	ldp	d11, d10, [sp, #64]
0050198a0 	ldp	d13, d12, [sp, #48]
0050198a4 	ldp	d15, d14, [sp, #32]
0050198a8 	add	sp, sp, #144
0050198ac 	b	#-4830092 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050198b0 	ldr	w8, [x19, #96]
0050198b4 	cmp	w8, #2
0050198b8 	b.gt	#252 ; -> 0x50199b4 
0050198bc 	cbz	w8, #372 ; -> 0x5019a30 
0050198c0 	cmp	w8, #1
0050198c4 	b.eq	#12 ; -> 0x50198d0 
0050198c8 	cmp	w8, #2
0050198cc 	b.ne	#980 ; -> 0x5019ca0 
0050198d0 	fmov	s0, #5.00000000
0050198d4 	fmov	s1, #20.00000000
0050198d8 	mov	x0, xzr
0050198dc 	bl	#77470948 ; -> 0x99fb5c0 UnityEngine.Random::Range
0050198e0 	str	s0, [x19, #100]
0050198e4 	fmov	s0, #1.00000000
0050198e8 	fmov	s1, #8.00000000
0050198ec 	mov	x0, xzr
0050198f0 	bl	#77470928 ; -> 0x99fb5c0 UnityEngine.Random::Range
0050198f4 	adrp	x20, #96182272 ; -> 0xabd3000 
0050198f8 	str	s0, [x19, #104]
0050198fc 	ldrb	w8, [x20, #1724]
005019900 	cbnz	w8, #24 ; -> 0x5019918 
005019904 	adrp	x0, #87879680 ; -> 0xa3e8000 
005019908 	ldr	x0, [x0, #632]
00501990c 	bl	#-11046572 ; -> 0x4590a60 
005019910 	mov	w8, #1
005019914 	strb	w8, [x20, #1724]
005019918 	adrp	x20, #87879680 ; -> 0xa3e8000 
00501991c 	adrp	x21, #96161792 ; -> 0xabce000 
005019920 	ldr	x20, [x20, #632]
005019924 	ldrb	w9, [x21, #2298]
005019928 	ldr	s0, [x19, #100]
00501992c 	ldr	x8, [x20]
005019930 	str	q0, [sp, #16]
005019934 	ldr	x8, [x8, #184]
005019938 	ldur	d8, [x8, #60]
00501993c 	ldr	s9, [x8, #68]
005019940 	cbnz	w9, #28 ; -> 0x501995c 
005019944 	mov	x0, x20
005019948 	bl	#-11046632 ; -> 0x4590a60 
00501994c 	ldr	x8, [x20]
005019950 	mov	w9, #1
005019954 	strb	w9, [x21, #2298]
005019958 	ldr	x8, [x8, #184]
00501995c 	movi	d0, #0000000000000000
005019960 	fmov	s1, #3.00000000
005019964 	ldr	d10, [x8, #24]
005019968 	ldr	s11, [x8, #32]
00501996c 	mov	x0, xzr
005019970 	bl	#77470800 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019974 	ldr	x20, [x19, #88]
005019978 	cbz	x20, #1168 ; -> 0x5019e08 
00501997c 	ldr	q3, [sp, #16]
005019980 	fmul	s2, s11, s0
005019984 	mov	x0, x20
005019988 	mov	x1, xzr
00501998c 	fmul	v10.2s, v10.2s, v0.s[0]
005019990 	fmul	s1, s9, s3
005019994 	fmul	v8.2s, v8.2s, v3.s[0]
005019998 	fadd	s9, s1, s2
00501999c 	bl	#77567888 ; -> 0x9a1312c UnityEngine.Transform::get_position
0050199a0 	fadd	v3.2s, v8.2s, v10.2s
0050199a4 	fadd	s2, s9, s2
0050199a8 	fmov	s4, #1.00000000
0050199ac 	mov	v0.s[1], v1.s[0]
0050199b0 	b	#592 ; -> 0x5019c00 
0050199b4 	cmp	w8, #3
0050199b8 	b.eq	#356 ; -> 0x5019b1c 
0050199bc 	cmp	w8, #4
0050199c0 	b.eq	#772 ; -> 0x5019cc4 
0050199c4 	cmp	w8, #5
0050199c8 	b.ne	#728 ; -> 0x5019ca0 
0050199cc 	mov	w0, #7
0050199d0 	mov	w1, #35
0050199d4 	mov	x2, xzr
0050199d8 	bl	#77470760 ; -> 0x99fb600 UnityEngine.Random::Range
0050199dc 	scvtf	s0, w0
0050199e0 	mov	w0, #2
0050199e4 	mov	w1, #14
0050199e8 	mov	x2, xzr
0050199ec 	str	s0, [x19, #100]
0050199f0 	bl	#77470736 ; -> 0x99fb600 UnityEngine.Random::Range
0050199f4 	scvtf	s0, w0
0050199f8 	mov	x0, xzr
0050199fc 	str	s0, [x19, #104]
005019a00 	bl	#-1697744 ; -> 0x4e7b230 
005019a04 	ldr	s11, [x19, #100]
005019a08 	mov	x0, xzr
005019a0c 	stp	s2, s0, [sp, #12]
005019a10 	str	s1, [sp, #108]
005019a14 	bl	#-1697696 ; -> 0x4e7b274 
005019a18 	str	s0, [sp, #104]
005019a1c 	fmov	s12, s1
005019a20 	fmov	s13, s2
005019a24 	movi	d0, #0000000000000000
005019a28 	fmov	s1, #6.00000000
005019a2c 	b	#752 ; -> 0x5019d1c 
005019a30 	fmov	s0, #5.00000000
005019a34 	fmov	s1, #10.00000000
005019a38 	mov	x0, xzr
005019a3c 	bl	#77470596 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019a40 	str	s0, [x19, #100]
005019a44 	adrp	x8, #-51314688 ; -> 0x1f29000 
005019a48 	fmov	s0, #1.00000000
005019a4c 	ldr	s1, [x8, #2012]
005019a50 	mov	x0, xzr
005019a54 	bl	#77470572 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019a58 	adrp	x20, #96182272 ; -> 0xabd3000 
005019a5c 	str	s0, [x19, #104]
005019a60 	ldrb	w8, [x20, #1724]
005019a64 	cbnz	w8, #24 ; -> 0x5019a7c 
005019a68 	adrp	x0, #87879680 ; -> 0xa3e8000 
005019a6c 	ldr	x0, [x0, #632]
005019a70 	bl	#-11046928 ; -> 0x4590a60 
005019a74 	mov	w8, #1
005019a78 	strb	w8, [x20, #1724]
005019a7c 	ldr	x20, [x19, #88]
005019a80 	cbz	x20, #904 ; -> 0x5019e08 
005019a84 	adrp	x8, #87879680 ; -> 0xa3e8000 
005019a88 	mov	x0, x20
005019a8c 	mov	x1, xzr
005019a90 	ldr	x8, [x8, #632]
005019a94 	ldr	s0, [x19, #100]
005019a98 	ldr	x8, [x8]
005019a9c 	ldr	x8, [x8, #184]
005019aa0 	ldp	s2, s1, [x8, #64]
005019aa4 	ldr	s3, [x8, #60]
005019aa8 	fmul	s10, s0, s3
005019aac 	fmul	s8, s1, s0
005019ab0 	fmul	s9, s0, s2
005019ab4 	bl	#77567608 ; -> 0x9a1312c UnityEngine.Transform::get_position
005019ab8 	fadd	s0, s10, s0
005019abc 	fadd	s1, s9, s1
005019ac0 	ldr	s3, [x19, #104]
005019ac4 	fadd	s2, s8, s2
005019ac8 	ldr	w1, [x19, #108]
005019acc 	ldr	s4, [x19, #112]
005019ad0 	mov	x0, x20
005019ad4 	mov	w2, wzr
005019ad8 	mov	x3, xzr
005019adc 	bl	#9643136 ; -> 0x594bf5c DG.Tweening.ShortcutExtensions::DOJump
005019ae0 	adrp	x8, #87891968 ; -> 0xa3eb000 
005019ae4 	mov	w1, #1
005019ae8 	ldr	x8, [x8, #1384]
005019aec 	ldr	x2, [x8]
005019af0 	bl	#18068232 ; -> 0x6154df8 
005019af4 	mov	x0, x19
005019af8 	ldp	x20, x19, [sp, #128]
005019afc 	ldp	x22, x21, [sp, #112]
005019b00 	ldr	x30, [sp, #96]
005019b04 	ldp	d9, d8, [sp, #80]
005019b08 	ldp	d11, d10, [sp, #64]
005019b0c 	ldp	d13, d12, [sp, #48]
005019b10 	ldp	d15, d14, [sp, #32]
005019b14 	add	sp, sp, #144
005019b18 	b	#756 ; -> 0x5019e0c CoinEffect::PassCoin_FollowPlayer
005019b1c 	fmov	s0, #5.00000000
005019b20 	fmov	s1, #20.00000000
005019b24 	mov	x0, xzr
005019b28 	bl	#77470360 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019b2c 	str	s0, [x19, #100]
005019b30 	fmov	s0, #1.00000000
005019b34 	fmov	s1, #8.00000000
005019b38 	mov	x0, xzr
005019b3c 	bl	#77470340 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019b40 	adrp	x20, #96182272 ; -> 0xabd3000 
005019b44 	str	s0, [x19, #104]
005019b48 	ldrb	w8, [x20, #1724]
005019b4c 	cbnz	w8, #24 ; -> 0x5019b64 
005019b50 	adrp	x0, #87879680 ; -> 0xa3e8000 
005019b54 	ldr	x0, [x0, #632]
005019b58 	bl	#-11047160 ; -> 0x4590a60 
005019b5c 	mov	w8, #1
005019b60 	strb	w8, [x20, #1724]
005019b64 	adrp	x20, #87879680 ; -> 0xa3e8000 
005019b68 	adrp	x21, #96161792 ; -> 0xabce000 
005019b6c 	ldr	x20, [x20, #632]
005019b70 	ldrb	w9, [x21, #2298]
005019b74 	ldr	s0, [x19, #100]
005019b78 	ldr	x8, [x20]
005019b7c 	str	q0, [sp, #16]
005019b80 	ldr	x8, [x8, #184]
005019b84 	ldur	d8, [x8, #60]
005019b88 	ldr	s9, [x8, #68]
005019b8c 	cbnz	w9, #28 ; -> 0x5019ba8 
005019b90 	mov	x0, x20
005019b94 	bl	#-11047220 ; -> 0x4590a60 
005019b98 	ldr	x8, [x20]
005019b9c 	mov	w9, #1
005019ba0 	strb	w9, [x21, #2298]
005019ba4 	ldr	x8, [x8, #184]
005019ba8 	movi	d0, #0000000000000000
005019bac 	fmov	s1, #3.00000000
005019bb0 	ldr	d10, [x8, #24]
005019bb4 	ldr	s11, [x8, #32]
005019bb8 	mov	x0, xzr
005019bbc 	bl	#77470212 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019bc0 	ldr	x20, [x19, #88]
005019bc4 	cbz	x20, #580 ; -> 0x5019e08 
005019bc8 	ldr	q3, [sp, #16]
005019bcc 	fmul	s2, s11, s0
005019bd0 	mov	x0, x20
005019bd4 	mov	x1, xzr
005019bd8 	fmul	v10.2s, v10.2s, v0.s[0]
005019bdc 	fmul	s1, s9, s3
005019be0 	fmul	v8.2s, v8.2s, v3.s[0]
005019be4 	fadd	s9, s1, s2
005019be8 	bl	#77567300 ; -> 0x9a1312c UnityEngine.Transform::get_position
005019bec 	fadd	v3.2s, v8.2s, v10.2s
005019bf0 	adrp	x8, #-51314688 ; -> 0x1f29000 
005019bf4 	fadd	s2, s9, s2
005019bf8 	mov	v0.s[1], v1.s[0]
005019bfc 	ldr	s4, [x8, #2372]
005019c00 	fadd	v0.2s, v3.2s, v0.2s
005019c04 	ldr	s3, [x19, #104]
005019c08 	mov	s1, v0.s[1]
005019c0c 	mov	x0, x20
005019c10 	mov	w1, wzr
005019c14 	mov	w2, wzr
005019c18 	mov	x3, xzr
005019c1c 	bl	#9642816 ; -> 0x594bf5c DG.Tweening.ShortcutExtensions::DOJump
005019c20 	adrp	x8, #87891968 ; -> 0xa3eb000 
005019c24 	mov	w1, #1
005019c28 	ldr	x8, [x8, #1384]
005019c2c 	ldr	x2, [x8]
005019c30 	bl	#18067912 ; -> 0x6154df8 
005019c34 	adrp	x8, #87891968 ; -> 0xa3eb000 
005019c38 	mov	x20, x0
005019c3c 	ldr	x8, [x8, #1360]
005019c40 	ldr	x8, [x8]
005019c44 	mov	x0, x8
005019c48 	bl	#-11046732 ; -> 0x4590cfc 
005019c4c 	adrp	x8, #88174592 ; -> 0xa430000 
005019c50 	mov	x1, x19
005019c54 	mov	x3, xzr
005019c58 	ldr	x8, [x8, #1184]
005019c5c 	mov	x21, x0
005019c60 	ldr	x2, [x8]
005019c64 	bl	#9578100 ; -> 0x593c2d8 DG.Tweening.TweenCallback::.ctor
005019c68 	adrp	x8, #87908352 ; -> 0xa3ef000 
005019c6c 	mov	x0, x20
005019c70 	mov	x1, x21
005019c74 	ldr	x8, [x8, #1528]
005019c78 	ldp	x20, x19, [sp, #128]
005019c7c 	ldp	x22, x21, [sp, #112]
005019c80 	ldr	x30, [sp, #96]
005019c84 	ldp	d9, d8, [sp, #80]
005019c88 	ldr	x2, [x8]
005019c8c 	ldp	d11, d10, [sp, #64]
005019c90 	ldp	d13, d12, [sp, #48]
005019c94 	ldp	d15, d14, [sp, #32]
005019c98 	add	sp, sp, #144
005019c9c 	b	#18065852 ; -> 0x6154658 
005019ca0 	ldp	x20, x19, [sp, #128]
005019ca4 	ldr	x30, [sp, #96]
005019ca8 	ldp	x22, x21, [sp, #112]
005019cac 	ldp	d9, d8, [sp, #80]
005019cb0 	ldp	d11, d10, [sp, #64]
005019cb4 	ldp	d13, d12, [sp, #48]
005019cb8 	ldp	d15, d14, [sp, #32]
005019cbc 	add	sp, sp, #144
005019cc0 	ret
005019cc4 	fmov	s0, #5.00000000
005019cc8 	fmov	s1, #20.00000000
005019ccc 	mov	x0, xzr
005019cd0 	bl	#77469936 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019cd4 	str	s0, [x19, #100]
005019cd8 	fmov	s0, #1.00000000
005019cdc 	fmov	s1, #8.00000000
005019ce0 	mov	x0, xzr
005019ce4 	bl	#77469916 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019ce8 	mov	x0, xzr
005019cec 	str	s0, [x19, #104]
005019cf0 	bl	#-1698496 ; -> 0x4e7b230 
005019cf4 	ldr	s11, [x19, #100]
005019cf8 	mov	x0, xzr
005019cfc 	stp	s2, s0, [sp, #12]
005019d00 	str	s1, [sp, #108]
005019d04 	bl	#-1698448 ; -> 0x4e7b274 
005019d08 	str	s0, [sp, #104]
005019d0c 	fmov	s12, s1
005019d10 	fmov	s13, s2
005019d14 	movi	d0, #0000000000000000
005019d18 	fmov	s1, #3.00000000
005019d1c 	mov	x0, xzr
005019d20 	bl	#77469856 ; -> 0x99fb5c0 UnityEngine.Random::Range
005019d24 	ldr	x20, [x19, #88]
005019d28 	cbz	x20, #224 ; -> 0x5019e08 
005019d2c 	adrp	x8, #88174592 ; -> 0xa430000 
005019d30 	mov	x0, x20
005019d34 	mov	x1, xzr
005019d38 	ldr	x8, [x8, #1192]
005019d3c 	fmov	s14, s0
005019d40 	ldr	x8, [x8]
005019d44 	ldr	x8, [x8, #184]
005019d48 	ldr	x21, [x8]
005019d4c 	bl	#77566944 ; -> 0x9a1312c UnityEngine.Transform::get_position
005019d50 	adrp	x8, #87875584 ; -> 0xa3e7000 
005019d54 	ldr	s15, [x19, #104]
005019d58 	fmov	s8, s0
005019d5c 	ldr	x8, [x8, #2992]
005019d60 	fmov	s9, s1
005019d64 	fmov	s10, s2
005019d68 	ldr	x0, [x8]
005019d6c 	bl	#-11047024 ; -> 0x4590cfc 
005019d70 	adrp	x8, #88174592 ; -> 0xa430000 
005019d74 	mov	x1, x19
005019d78 	mov	x3, xzr
005019d7c 	ldr	x8, [x8, #1184]
005019d80 	mov	x22, x0
005019d84 	ldr	x2, [x8]
005019d88 	bl	#64711892 ; -> 0x8dd0a5c System.Action::.ctor
005019d8c 	cbz	x21, #124 ; -> 0x5019e08 
005019d90 	ldp	s0, s4, [sp, #12]
005019d94 	fmul	s1, s13, s14
005019d98 	ldp	s5, s2, [sp, #104]
005019d9c 	fmul	s3, s12, s14
005019da0 	adrp	x8, #-51314688 ; -> 0x1f29000 
005019da4 	mov	x0, x21
005019da8 	mov	x1, x20
005019dac 	fmul	s0, s0, s11
005019db0 	fmul	s4, s4, s11
005019db4 	mov	x2, x22
005019db8 	fmul	s2, s2, s11
005019dbc 	fmul	s5, s5, s14
005019dc0 	ldr	x30, [sp, #96]
005019dc4 	ldp	x20, x19, [sp, #128]
005019dc8 	mov	x3, xzr
005019dcc 	ldp	x22, x21, [sp, #112]
005019dd0 	fadd	s0, s0, s1
005019dd4 	ldp	d13, d12, [sp, #48]
005019dd8 	fadd	s1, s2, s3
005019ddc 	fadd	s3, s4, s5
005019de0 	ldr	s4, [x8, #2372]
005019de4 	fadd	s2, s0, s10
005019de8 	ldp	d11, d10, [sp, #64]
005019dec 	fadd	s1, s1, s9
005019df0 	fadd	s0, s3, s8
005019df4 	fmov	s3, s15
005019df8 	ldp	d9, d8, [sp, #80]
005019dfc 	ldp	d15, d14, [sp, #32]
005019e00 	add	sp, sp, #144
005019e04 	b	#349452 ; -> 0x506f310 DropObjectJumpManager::RegisterJump
005019e08 	bl	#-11047164 ; -> 0x4590d0c 
