0053a086c 	stp	x29, x30, [sp, #-64]!
0053a0870 	stp	x24, x23, [sp, #16]
0053a0874 	stp	x22, x21, [sp, #32]
0053a0878 	stp	x20, x19, [sp, #48]
0053a087c 	sub	sp, sp, #944
0053a0880 	adrp	x21, #92499968 ; -> 0xabd7000 
0053a0884 	mov	x19, x1
0053a0888 	mov	x20, x0
0053a088c 	ldrb	w8, [x21, #2051]
0053a0890 	tbnz	w8, #0, #24 ; -> 0x53a08a8 
0053a0894 	adrp	x0, #84205568 ; -> 0xa3ee000 
0053a0898 	ldr	x0, [x0, #4008]
0053a089c 	bl	#-14745148 ; -> 0x4590a60 
0053a08a0 	mov	w8, #1
0053a08a4 	strb	w8, [x21, #2051]
0053a08a8 	movi	v0.2d, #0000000000000000
0053a08ac 	add	x0, sp, #896
0053a08b0 	mov	w1, #10
0053a08b4 	mov	w2, wzr
0053a08b8 	mov	x3, xzr
0053a08bc 	str	xzr, [sp, #928]
0053a08c0 	stp	q0, q0, [sp, #896]
0053a08c4 	bl	#-8714736 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a08c8 	ldp	q0, q1, [sp, #896]
0053a08cc 	add	x0, x20, #96
0053a08d0 	ldr	x8, [sp, #928]
0053a08d4 	mov	x1, xzr
0053a08d8 	stur	q0, [x20, #88]
0053a08dc 	stur	q1, [x20, #104]
0053a08e0 	str	x8, [x20, #120]
0053a08e4 	bl	#-14745312 ; -> 0x4590a04 
0053a08e8 	movi	v0.2d, #0000000000000000
0053a08ec 	add	x0, sp, #848
0053a08f0 	mov	w1, #11
0053a08f4 	mov	w2, wzr
0053a08f8 	mov	x3, xzr
0053a08fc 	str	xzr, [sp, #880]
0053a0900 	stp	q0, q0, [sp, #848]
0053a0904 	bl	#-8714800 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0908 	ldp	q0, q1, [sp, #848]
0053a090c 	add	x0, x20, #136
0053a0910 	ldr	x8, [sp, #880]
0053a0914 	mov	x1, xzr
0053a0918 	stp	q0, q1, [x20, #128]
0053a091c 	str	x8, [x20, #160]
0053a0920 	bl	#-14745372 ; -> 0x4590a04 
0053a0924 	movi	v0.2d, #0000000000000000
0053a0928 	add	x0, sp, #800
0053a092c 	mov	w1, #12
0053a0930 	mov	w2, wzr
0053a0934 	mov	x3, xzr
0053a0938 	str	xzr, [sp, #832]
0053a093c 	stp	q0, q0, [sp, #800]
0053a0940 	bl	#-8714860 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0944 	ldp	q0, q1, [sp, #800]
0053a0948 	add	x0, x20, #176
0053a094c 	ldr	x8, [sp, #832]
0053a0950 	mov	x1, xzr
0053a0954 	stur	q0, [x20, #168]
0053a0958 	stur	q1, [x20, #184]
0053a095c 	str	x8, [x20, #200]
0053a0960 	bl	#-14745436 ; -> 0x4590a04 
0053a0964 	movi	v0.2d, #0000000000000000
0053a0968 	add	x0, sp, #752
0053a096c 	mov	w1, #16
0053a0970 	mov	w2, wzr
0053a0974 	mov	x3, xzr
0053a0978 	str	xzr, [sp, #784]
0053a097c 	stp	q0, q0, [sp, #752]
0053a0980 	bl	#-8714924 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0984 	ldp	q0, q1, [sp, #752]
0053a0988 	add	x0, x20, #232
0053a098c 	ldr	x8, [sp, #784]
0053a0990 	mov	x1, xzr
0053a0994 	stp	q0, q1, [x20, #224]
0053a0998 	str	x8, [x20, #256]
0053a099c 	bl	#-14745496 ; -> 0x4590a04 
0053a09a0 	movi	v0.2d, #0000000000000000
0053a09a4 	add	x0, sp, #672
0053a09a8 	mov	w1, #7
0053a09ac 	mov	w2, wzr
0053a09b0 	mov	x3, xzr
0053a09b4 	str	xzr, [sp, #736]
0053a09b8 	stp	q0, q0, [sp, #672]
0053a09bc 	stp	q0, q0, [sp, #704]
0053a09c0 	bl	#-8711528 ; -> 0x4b51c58 SilentFloat::.ctor
0053a09c4 	add	x0, x20, #312
0053a09c8 	add	x1, sp, #672
0053a09cc 	mov	w2, #72
0053a09d0 	bl	#77377312 ; -> 0x9d6b8f0 
0053a09d4 	add	x0, x20, #320
0053a09d8 	mov	x1, xzr
0053a09dc 	bl	#-14745560 ; -> 0x4590a04 
0053a09e0 	movi	v0.2d, #0000000000000000
0053a09e4 	add	x0, sp, #592
0053a09e8 	mov	w1, #7
0053a09ec 	mov	w2, wzr
0053a09f0 	mov	x3, xzr
0053a09f4 	str	xzr, [sp, #656]
0053a09f8 	stp	q0, q0, [sp, #592]
0053a09fc 	stp	q0, q0, [sp, #624]
0053a0a00 	bl	#-8711592 ; -> 0x4b51c58 SilentFloat::.ctor
0053a0a04 	add	x0, x20, #384
0053a0a08 	add	x1, sp, #592
0053a0a0c 	mov	w2, #72
0053a0a10 	bl	#77377248 ; -> 0x9d6b8f0 
0053a0a14 	add	x0, x20, #392
0053a0a18 	mov	x1, xzr
0053a0a1c 	bl	#-14745624 ; -> 0x4590a04 
0053a0a20 	movi	v0.2d, #0000000000000000
0053a0a24 	add	x0, sp, #528
0053a0a28 	mov	w1, #15
0053a0a2c 	mov	w2, wzr
0053a0a30 	mov	x3, xzr
0053a0a34 	stp	q0, q0, [sp, #528]
0053a0a38 	stp	q0, q0, [sp, #560]
0053a0a3c 	bl	#-8708616 ; -> 0x4b52834 SilentLong::.ctor
0053a0a40 	ldp	q0, q1, [sp, #528]
0053a0a44 	add	x23, x20, #552
0053a0a48 	add	x0, x20, #560
0053a0a4c 	mov	x1, xzr
0053a0a50 	stp	q0, q1, [x23]
0053a0a54 	ldp	q0, q2, [sp, #560]
0053a0a58 	stp	q0, q2, [x23, #32]
0053a0a5c 	bl	#-14745688 ; -> 0x4590a04 
0053a0a60 	movi	v0.2d, #0000000000000000
0053a0a64 	add	x0, sp, #480
0053a0a68 	mov	w1, #18
0053a0a6c 	mov	w2, wzr
0053a0a70 	mov	x3, xzr
0053a0a74 	str	xzr, [sp, #512]
0053a0a78 	stp	q0, q0, [sp, #480]
0053a0a7c 	bl	#-8715176 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0a80 	ldp	q0, q1, [sp, #480]
0053a0a84 	add	x24, x20, #616
0053a0a88 	ldr	x8, [sp, #512]
0053a0a8c 	add	x0, x20, #624
0053a0a90 	mov	x1, xzr
0053a0a94 	stp	q0, q1, [x24]
0053a0a98 	str	x8, [x20, #648]
0053a0a9c 	bl	#-14745752 ; -> 0x4590a04 
0053a0aa0 	movi	v0.2d, #0000000000000000
0053a0aa4 	add	x0, sp, #432
0053a0aa8 	mov	w1, #19
0053a0aac 	mov	w2, wzr
0053a0ab0 	mov	x3, xzr
0053a0ab4 	str	xzr, [sp, #464]
0053a0ab8 	stp	q0, q0, [sp, #432]
0053a0abc 	bl	#-8715240 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0ac0 	ldp	q0, q1, [sp, #432]
0053a0ac4 	add	x0, x20, #808
0053a0ac8 	ldr	x8, [sp, #464]
0053a0acc 	mov	x1, xzr
0053a0ad0 	stp	q0, q1, [x20, #800]
0053a0ad4 	str	x8, [x20, #832]
0053a0ad8 	bl	#-14745812 ; -> 0x4590a04 
0053a0adc 	movi	v0.2d, #0000000000000000
0053a0ae0 	add	x0, sp, #384
0053a0ae4 	mov	w1, #92
0053a0ae8 	mov	w2, wzr
0053a0aec 	mov	x3, xzr
0053a0af0 	str	xzr, [sp, #416]
0053a0af4 	stp	q0, q0, [sp, #384]
0053a0af8 	bl	#-8715300 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0afc 	ldp	q0, q1, [sp, #384]
0053a0b00 	add	x21, x20, #888
0053a0b04 	ldr	x8, [sp, #416]
0053a0b08 	add	x0, x20, #896
0053a0b0c 	mov	x1, xzr
0053a0b10 	stp	q0, q1, [x21]
0053a0b14 	str	x8, [x20, #920]
0053a0b18 	bl	#-14745876 ; -> 0x4590a04 
0053a0b1c 	mov	x0, x20
0053a0b20 	mov	x1, xzr
0053a0b24 	bl	#61978372 ; -> 0x8ebc228 System.Object::.ctor
0053a0b28 	cbz	x19, #676 ; -> 0x53a0dcc 
0053a0b2c 	ldr	w8, [x19, #16]
0053a0b30 	ldr	x1, [x19, #24]
0053a0b34 	mov	x0, x20
0053a0b38 	str	w8, [x20, #32]
0053a0b3c 	str	x1, [x0, #16]!
0053a0b40 	bl	#-14745916 ; -> 0x4590a04 
0053a0b44 	ldr	d0, [x19, #32]
0053a0b48 	ldr	x1, [x19, #40]
0053a0b4c 	mov	x0, x20
0053a0b50 	stur	d0, [x20, #36]
0053a0b54 	str	x1, [x0, #24]!
0053a0b58 	bl	#-14745940 ; -> 0x4590a04 
0053a0b5c 	ldr	x1, [x19, #64]
0053a0b60 	ldur	d0, [x19, #52]
0053a0b64 	mov	x22, x20
0053a0b68 	ldr	w8, [x19, #48]
0053a0b6c 	str	x1, [x22, #64]!
0053a0b70 	mov	x0, x22
0053a0b74 	stur	d0, [x22, #-16]
0053a0b78 	ldr	s0, [x19, #60]
0053a0b7c 	stur	w8, [x22, #-20]
0053a0b80 	stur	s0, [x22, #-8]
0053a0b84 	bl	#-14745984 ; -> 0x4590a04 
0053a0b88 	ldr	d0, [x19, #72]
0053a0b8c 	add	x0, x20, #88
0053a0b90 	mov	x3, xzr
0053a0b94 	str	d0, [x22, #8]
0053a0b98 	ldr	s0, [x19, #84]
0053a0b9c 	ldr	w8, [x19, #80]
0053a0ba0 	str	s0, [x22, #20]
0053a0ba4 	str	w8, [x22, #16]
0053a0ba8 	ldp	x1, x2, [x19, #88]
0053a0bac 	bl	#-8715700 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0bb0 	ldp	x1, x2, [x19, #104]
0053a0bb4 	add	x0, x20, #128
0053a0bb8 	mov	x3, xzr
0053a0bbc 	bl	#-8715716 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0bc0 	ldp	x1, x2, [x19, #120]
0053a0bc4 	add	x0, x20, #168
0053a0bc8 	mov	x3, xzr
0053a0bcc 	bl	#-8715732 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0bd0 	ldr	d0, [x19, #136]
0053a0bd4 	add	x0, x20, #224
0053a0bd8 	mov	x3, xzr
0053a0bdc 	str	d0, [x22, #144]
0053a0be0 	ldr	s0, [x19, #144]
0053a0be4 	str	s0, [x22, #152]
0053a0be8 	ldp	x1, x2, [x19, #152]
0053a0bec 	bl	#-8715764 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0bf0 	ldr	w0, [x19, #168]
0053a0bf4 	add	x8, sp, #336
0053a0bf8 	mov	x1, xzr
0053a0bfc 	bl	#-13388832 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0c00 	ldp	q0, q1, [sp, #336]
0053a0c04 	add	x0, x22, #200
0053a0c08 	ldr	q2, [sp, #368]
0053a0c0c 	mov	x1, xzr
0053a0c10 	stur	q0, [x22, #200]
0053a0c14 	stur	q1, [x22, #216]
0053a0c18 	stur	q2, [x22, #232]
0053a0c1c 	bl	#-14746136 ; -> 0x4590a04 
0053a0c20 	ldr	s0, [x19, #172]
0053a0c24 	add	x0, x20, #312
0053a0c28 	mov	x1, xzr
0053a0c2c 	bl	#-8712308 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a0c30 	ldr	s0, [x19, #176]
0053a0c34 	add	x0, x20, #384
0053a0c38 	mov	x1, xzr
0053a0c3c 	bl	#-8712324 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a0c40 	ldr	w0, [x19, #180]
0053a0c44 	add	x8, sp, #288
0053a0c48 	mov	x1, xzr
0053a0c4c 	bl	#-13388912 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0c50 	ldp	q0, q1, [sp, #288]
0053a0c54 	add	x0, x22, #392
0053a0c58 	ldr	q2, [sp, #320]
0053a0c5c 	mov	x1, xzr
0053a0c60 	stp	q0, q1, [x0]
0053a0c64 	str	q2, [x0, #32]
0053a0c68 	bl	#-14746212 ; -> 0x4590a04 
0053a0c6c 	ldr	w0, [x19, #184]
0053a0c70 	add	x8, sp, #240
0053a0c74 	mov	x1, xzr
0053a0c78 	bl	#-13388956 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0c7c 	ldp	q0, q1, [sp, #240]
0053a0c80 	add	x0, x22, #440
0053a0c84 	ldr	q2, [sp, #272]
0053a0c88 	mov	x1, xzr
0053a0c8c 	stp	q0, q1, [x0]
0053a0c90 	str	q2, [x0, #32]
0053a0c94 	bl	#-14746256 ; -> 0x4590a04 
0053a0c98 	ldr	x1, [x19, #192]
0053a0c9c 	mov	x0, x23
0053a0ca0 	mov	x2, xzr
0053a0ca4 	bl	#-8709384 ; -> 0x4b5279c SilentLong::set_Value
0053a0ca8 	ldp	x1, x2, [x19, #200]
0053a0cac 	mov	x0, x24
0053a0cb0 	mov	x3, xzr
0053a0cb4 	bl	#-8715964 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0cb8 	ldr	x0, [x19, #216]
0053a0cbc 	add	x8, sp, #192
0053a0cc0 	mov	x1, xzr
0053a0cc4 	bl	#-13388960 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a0cc8 	ldp	q0, q1, [sp, #192]
0053a0ccc 	add	x0, x22, #592
0053a0cd0 	ldr	q2, [sp, #224]
0053a0cd4 	mov	x1, xzr
0053a0cd8 	stp	q0, q1, [x22, #592]
0053a0cdc 	str	q2, [x22, #624]
0053a0ce0 	bl	#-14746332 ; -> 0x4590a04 
0053a0ce4 	ldr	x0, [x19, #224]
0053a0ce8 	add	x8, sp, #144
0053a0cec 	mov	x1, xzr
0053a0cf0 	bl	#-13389004 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a0cf4 	ldp	q0, q1, [sp, #144]
0053a0cf8 	add	x0, x22, #640
0053a0cfc 	ldr	q2, [sp, #176]
0053a0d00 	mov	x1, xzr
0053a0d04 	stp	q0, q1, [x22, #640]
0053a0d08 	str	q2, [x22, #672]
0053a0d0c 	bl	#-14746376 ; -> 0x4590a04 
0053a0d10 	ldr	s0, [x19, #232]
0053a0d14 	add	x8, sp, #96
0053a0d18 	mov	x0, xzr
0053a0d1c 	bl	#-13389188 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
0053a0d20 	ldp	q0, q1, [sp, #96]
0053a0d24 	add	x0, x22, #688
0053a0d28 	ldr	q2, [sp, #128]
0053a0d2c 	mov	x1, xzr
0053a0d30 	stp	q0, q1, [x22, #688]
0053a0d34 	str	q2, [x22, #720]
0053a0d38 	bl	#-14746420 ; -> 0x4590a04 
0053a0d3c 	ldp	x1, x2, [x19, #240]
0053a0d40 	add	x0, x20, #800
0053a0d44 	mov	x3, xzr
0053a0d48 	bl	#-8716112 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0d4c 	ldr	w0, [x19, #256]
0053a0d50 	add	x8, sp, #48
0053a0d54 	mov	x1, xzr
0053a0d58 	bl	#-13389180 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0d5c 	ldp	q0, q1, [sp, #48]
0053a0d60 	add	x0, x22, #776
0053a0d64 	ldr	q2, [sp, #80]
0053a0d68 	mov	x1, xzr
0053a0d6c 	stp	q0, q1, [x0]
0053a0d70 	str	q2, [x0, #32]
0053a0d74 	bl	#-14746480 ; -> 0x4590a04 
0053a0d78 	ldp	x1, x2, [x19, #264]
0053a0d7c 	mov	x0, x21
0053a0d80 	mov	x3, xzr
0053a0d84 	bl	#-8716172 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0d88 	ldr	w0, [x19, #280]
0053a0d8c 	mov	x8, sp
0053a0d90 	mov	x1, xzr
0053a0d94 	bl	#-13389240 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0d98 	ldp	q0, q1, [sp]
0053a0d9c 	add	x0, x22, #864
0053a0da0 	ldr	q2, [sp, #32]
0053a0da4 	mov	x1, xzr
0053a0da8 	stp	q0, q1, [x22, #864]
0053a0dac 	str	q2, [x22, #896]
0053a0db0 	bl	#-14746540 ; -> 0x4590a04 
0053a0db4 	add	sp, sp, #944
0053a0db8 	ldp	x20, x19, [sp, #48]
0053a0dbc 	ldp	x22, x21, [sp, #32]
0053a0dc0 	ldp	x24, x23, [sp, #16]
0053a0dc4 	ldp	x29, x30, [sp], #64
0053a0dc8 	ret
0053a0dcc 	bl	#-14745792 ; -> 0x4590d0c 
