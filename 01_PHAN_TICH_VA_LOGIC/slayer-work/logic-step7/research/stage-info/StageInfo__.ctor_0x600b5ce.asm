00539fda4 	stp	x29, x30, [sp, #-64]!
00539fda8 	stp	x24, x23, [sp, #16]
00539fdac 	stp	x22, x21, [sp, #32]
00539fdb0 	stp	x20, x19, [sp, #48]
00539fdb4 	sub	sp, sp, #944
00539fdb8 	adrp	x21, #92504064 ; -> 0xabd7000 
00539fdbc 	mov	x19, x1
00539fdc0 	mov	x20, x0
00539fdc4 	ldrb	w8, [x21, #2049]
00539fdc8 	tbnz	w8, #0, #24 ; -> 0x539fde0 
00539fdcc 	adrp	x0, #84209664 ; -> 0xa3ee000 
00539fdd0 	ldr	x0, [x0, #4008]
00539fdd4 	bl	#-14742388 ; -> 0x4590a60 
00539fdd8 	mov	w8, #1
00539fddc 	strb	w8, [x21, #2049]
00539fde0 	movi	v0.2d, #0000000000000000
00539fde4 	add	x0, sp, #896
00539fde8 	mov	w1, #10
00539fdec 	mov	w2, wzr
00539fdf0 	mov	x3, xzr
00539fdf4 	str	xzr, [sp, #928]
00539fdf8 	stp	q0, q0, [sp, #896]
00539fdfc 	bl	#-8711976 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539fe00 	ldp	q0, q1, [sp, #896]
00539fe04 	add	x0, x20, #96
00539fe08 	ldr	x8, [sp, #928]
00539fe0c 	mov	x1, xzr
00539fe10 	stur	q0, [x20, #88]
00539fe14 	stur	q1, [x20, #104]
00539fe18 	str	x8, [x20, #120]
00539fe1c 	bl	#-14742552 ; -> 0x4590a04 
00539fe20 	movi	v0.2d, #0000000000000000
00539fe24 	add	x0, sp, #848
00539fe28 	mov	w1, #11
00539fe2c 	mov	w2, wzr
00539fe30 	mov	x3, xzr
00539fe34 	str	xzr, [sp, #880]
00539fe38 	stp	q0, q0, [sp, #848]
00539fe3c 	bl	#-8712040 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539fe40 	ldp	q0, q1, [sp, #848]
00539fe44 	add	x0, x20, #136
00539fe48 	ldr	x8, [sp, #880]
00539fe4c 	mov	x1, xzr
00539fe50 	stp	q0, q1, [x20, #128]
00539fe54 	str	x8, [x20, #160]
00539fe58 	bl	#-14742612 ; -> 0x4590a04 
00539fe5c 	movi	v0.2d, #0000000000000000
00539fe60 	add	x0, sp, #800
00539fe64 	mov	w1, #12
00539fe68 	mov	w2, wzr
00539fe6c 	mov	x3, xzr
00539fe70 	str	xzr, [sp, #832]
00539fe74 	stp	q0, q0, [sp, #800]
00539fe78 	bl	#-8712100 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539fe7c 	ldp	q0, q1, [sp, #800]
00539fe80 	add	x0, x20, #176
00539fe84 	ldr	x8, [sp, #832]
00539fe88 	mov	x1, xzr
00539fe8c 	stur	q0, [x20, #168]
00539fe90 	stur	q1, [x20, #184]
00539fe94 	str	x8, [x20, #200]
00539fe98 	bl	#-14742676 ; -> 0x4590a04 
00539fe9c 	movi	v0.2d, #0000000000000000
00539fea0 	add	x0, sp, #752
00539fea4 	mov	w1, #16
00539fea8 	mov	w2, wzr
00539feac 	mov	x3, xzr
00539feb0 	str	xzr, [sp, #784]
00539feb4 	stp	q0, q0, [sp, #752]
00539feb8 	bl	#-8712164 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539febc 	ldp	q0, q1, [sp, #752]
00539fec0 	add	x0, x20, #232
00539fec4 	ldr	x8, [sp, #784]
00539fec8 	mov	x1, xzr
00539fecc 	stp	q0, q1, [x20, #224]
00539fed0 	str	x8, [x20, #256]
00539fed4 	bl	#-14742736 ; -> 0x4590a04 
00539fed8 	movi	v0.2d, #0000000000000000
00539fedc 	add	x0, sp, #672
00539fee0 	mov	w1, #7
00539fee4 	mov	w2, wzr
00539fee8 	mov	x3, xzr
00539feec 	str	xzr, [sp, #736]
00539fef0 	stp	q0, q0, [sp, #672]
00539fef4 	stp	q0, q0, [sp, #704]
00539fef8 	bl	#-8708768 ; -> 0x4b51c58 SilentFloat::.ctor
00539fefc 	add	x0, x20, #312
00539ff00 	add	x1, sp, #672
00539ff04 	mov	w2, #72
00539ff08 	bl	#77380072 ; -> 0x9d6b8f0 
00539ff0c 	add	x0, x20, #320
00539ff10 	mov	x1, xzr
00539ff14 	bl	#-14742800 ; -> 0x4590a04 
00539ff18 	movi	v0.2d, #0000000000000000
00539ff1c 	add	x0, sp, #592
00539ff20 	mov	w1, #7
00539ff24 	mov	w2, wzr
00539ff28 	mov	x3, xzr
00539ff2c 	str	xzr, [sp, #656]
00539ff30 	stp	q0, q0, [sp, #592]
00539ff34 	stp	q0, q0, [sp, #624]
00539ff38 	bl	#-8708832 ; -> 0x4b51c58 SilentFloat::.ctor
00539ff3c 	add	x0, x20, #384
00539ff40 	add	x1, sp, #592
00539ff44 	mov	w2, #72
00539ff48 	bl	#77380008 ; -> 0x9d6b8f0 
00539ff4c 	add	x0, x20, #392
00539ff50 	mov	x1, xzr
00539ff54 	bl	#-14742864 ; -> 0x4590a04 
00539ff58 	movi	v0.2d, #0000000000000000
00539ff5c 	add	x0, sp, #528
00539ff60 	mov	w1, #15
00539ff64 	mov	w2, wzr
00539ff68 	mov	x3, xzr
00539ff6c 	stp	q0, q0, [sp, #528]
00539ff70 	stp	q0, q0, [sp, #560]
00539ff74 	bl	#-8705856 ; -> 0x4b52834 SilentLong::.ctor
00539ff78 	ldp	q0, q1, [sp, #528]
00539ff7c 	add	x23, x20, #552
00539ff80 	add	x0, x20, #560
00539ff84 	mov	x1, xzr
00539ff88 	stp	q0, q1, [x23]
00539ff8c 	ldp	q0, q2, [sp, #560]
00539ff90 	stp	q0, q2, [x23, #32]
00539ff94 	bl	#-14742928 ; -> 0x4590a04 
00539ff98 	movi	v0.2d, #0000000000000000
00539ff9c 	add	x0, sp, #480
00539ffa0 	mov	w1, #18
00539ffa4 	mov	w2, wzr
00539ffa8 	mov	x3, xzr
00539ffac 	str	xzr, [sp, #512]
00539ffb0 	stp	q0, q0, [sp, #480]
00539ffb4 	bl	#-8712416 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539ffb8 	ldp	q0, q1, [sp, #480]
00539ffbc 	add	x24, x20, #616
00539ffc0 	ldr	x8, [sp, #512]
00539ffc4 	add	x0, x20, #624
00539ffc8 	mov	x1, xzr
00539ffcc 	stp	q0, q1, [x24]
00539ffd0 	str	x8, [x20, #648]
00539ffd4 	bl	#-14742992 ; -> 0x4590a04 
00539ffd8 	movi	v0.2d, #0000000000000000
00539ffdc 	add	x0, sp, #432
00539ffe0 	mov	w1, #19
00539ffe4 	mov	w2, wzr
00539ffe8 	mov	x3, xzr
00539ffec 	str	xzr, [sp, #464]
00539fff0 	stp	q0, q0, [sp, #432]
00539fff4 	bl	#-8712480 ; -> 0x4b50ed4 SilentBigInt::.ctor
00539fff8 	ldp	q0, q1, [sp, #432]
00539fffc 	add	x0, x20, #808
0053a0000 	ldr	x8, [sp, #464]
0053a0004 	mov	x1, xzr
0053a0008 	stp	q0, q1, [x20, #800]
0053a000c 	str	x8, [x20, #832]
0053a0010 	bl	#-14743052 ; -> 0x4590a04 
0053a0014 	movi	v0.2d, #0000000000000000
0053a0018 	add	x0, sp, #384
0053a001c 	mov	w1, #92
0053a0020 	mov	w2, wzr
0053a0024 	mov	x3, xzr
0053a0028 	str	xzr, [sp, #416]
0053a002c 	stp	q0, q0, [sp, #384]
0053a0030 	bl	#-8712540 ; -> 0x4b50ed4 SilentBigInt::.ctor
0053a0034 	ldp	q0, q1, [sp, #384]
0053a0038 	add	x21, x20, #888
0053a003c 	ldr	x8, [sp, #416]
0053a0040 	add	x0, x20, #896
0053a0044 	mov	x1, xzr
0053a0048 	stp	q0, q1, [x21]
0053a004c 	str	x8, [x20, #920]
0053a0050 	bl	#-14743116 ; -> 0x4590a04 
0053a0054 	mov	x0, x20
0053a0058 	mov	x1, xzr
0053a005c 	bl	#61981132 ; -> 0x8ebc228 System.Object::.ctor
0053a0060 	cbz	x19, #676 ; -> 0x53a0304 
0053a0064 	ldr	w8, [x19, #16]
0053a0068 	ldr	x1, [x19, #24]
0053a006c 	mov	x0, x20
0053a0070 	str	w8, [x20, #32]
0053a0074 	str	x1, [x0, #16]!
0053a0078 	bl	#-14743156 ; -> 0x4590a04 
0053a007c 	ldr	d0, [x19, #32]
0053a0080 	ldr	x1, [x19, #40]
0053a0084 	mov	x0, x20
0053a0088 	stur	d0, [x20, #36]
0053a008c 	str	x1, [x0, #24]!
0053a0090 	bl	#-14743180 ; -> 0x4590a04 
0053a0094 	ldr	x1, [x19, #64]
0053a0098 	ldur	d0, [x19, #52]
0053a009c 	mov	x22, x20
0053a00a0 	ldr	w8, [x19, #48]
0053a00a4 	str	x1, [x22, #64]!
0053a00a8 	mov	x0, x22
0053a00ac 	stur	d0, [x22, #-16]
0053a00b0 	ldr	s0, [x19, #60]
0053a00b4 	stur	w8, [x22, #-20]
0053a00b8 	stur	s0, [x22, #-8]
0053a00bc 	bl	#-14743224 ; -> 0x4590a04 
0053a00c0 	ldr	d0, [x19, #72]
0053a00c4 	add	x0, x20, #88
0053a00c8 	mov	x3, xzr
0053a00cc 	str	d0, [x22, #8]
0053a00d0 	ldr	s0, [x19, #84]
0053a00d4 	ldr	w8, [x19, #80]
0053a00d8 	str	s0, [x22, #20]
0053a00dc 	str	w8, [x22, #16]
0053a00e0 	ldp	x1, x2, [x19, #88]
0053a00e4 	bl	#-8712940 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a00e8 	ldp	x1, x2, [x19, #104]
0053a00ec 	add	x0, x20, #128
0053a00f0 	mov	x3, xzr
0053a00f4 	bl	#-8712956 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a00f8 	ldp	x1, x2, [x19, #120]
0053a00fc 	add	x0, x20, #168
0053a0100 	mov	x3, xzr
0053a0104 	bl	#-8712972 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0108 	ldr	d0, [x19, #136]
0053a010c 	add	x0, x20, #224
0053a0110 	mov	x3, xzr
0053a0114 	str	d0, [x22, #144]
0053a0118 	ldr	s0, [x19, #144]
0053a011c 	str	s0, [x22, #152]
0053a0120 	ldp	x1, x2, [x19, #152]
0053a0124 	bl	#-8713004 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0128 	ldr	w0, [x19, #168]
0053a012c 	add	x8, sp, #336
0053a0130 	mov	x1, xzr
0053a0134 	bl	#-13386072 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0138 	ldp	q0, q1, [sp, #336]
0053a013c 	add	x0, x22, #200
0053a0140 	ldr	q2, [sp, #368]
0053a0144 	mov	x1, xzr
0053a0148 	stur	q0, [x22, #200]
0053a014c 	stur	q1, [x22, #216]
0053a0150 	stur	q2, [x22, #232]
0053a0154 	bl	#-14743376 ; -> 0x4590a04 
0053a0158 	ldr	s0, [x19, #172]
0053a015c 	add	x0, x20, #312
0053a0160 	mov	x1, xzr
0053a0164 	bl	#-8709548 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a0168 	ldr	s0, [x19, #176]
0053a016c 	add	x0, x20, #384
0053a0170 	mov	x1, xzr
0053a0174 	bl	#-8709564 ; -> 0x4b51bb8 SilentFloat::set_Value
0053a0178 	ldr	w0, [x19, #180]
0053a017c 	add	x8, sp, #288
0053a0180 	mov	x1, xzr
0053a0184 	bl	#-13386152 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0188 	ldp	q0, q1, [sp, #288]
0053a018c 	add	x0, x22, #392
0053a0190 	ldr	q2, [sp, #320]
0053a0194 	mov	x1, xzr
0053a0198 	stp	q0, q1, [x0]
0053a019c 	str	q2, [x0, #32]
0053a01a0 	bl	#-14743452 ; -> 0x4590a04 
0053a01a4 	ldr	w0, [x19, #184]
0053a01a8 	add	x8, sp, #240
0053a01ac 	mov	x1, xzr
0053a01b0 	bl	#-13386196 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a01b4 	ldp	q0, q1, [sp, #240]
0053a01b8 	add	x0, x22, #440
0053a01bc 	ldr	q2, [sp, #272]
0053a01c0 	mov	x1, xzr
0053a01c4 	stp	q0, q1, [x0]
0053a01c8 	str	q2, [x0, #32]
0053a01cc 	bl	#-14743496 ; -> 0x4590a04 
0053a01d0 	ldrsw	x1, [x19, #188]
0053a01d4 	mov	x0, x23
0053a01d8 	mov	x2, xzr
0053a01dc 	bl	#-8706624 ; -> 0x4b5279c SilentLong::set_Value
0053a01e0 	ldp	x1, x2, [x19, #192]
0053a01e4 	mov	x0, x24
0053a01e8 	mov	x3, xzr
0053a01ec 	bl	#-8713204 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a01f0 	ldr	x0, [x19, #208]
0053a01f4 	add	x8, sp, #192
0053a01f8 	mov	x1, xzr
0053a01fc 	bl	#-13386200 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a0200 	ldp	q0, q1, [sp, #192]
0053a0204 	add	x0, x22, #592
0053a0208 	ldr	q2, [sp, #224]
0053a020c 	mov	x1, xzr
0053a0210 	stp	q0, q1, [x22, #592]
0053a0214 	str	q2, [x22, #624]
0053a0218 	bl	#-14743572 ; -> 0x4590a04 
0053a021c 	ldr	x0, [x19, #216]
0053a0220 	add	x8, sp, #144
0053a0224 	mov	x1, xzr
0053a0228 	bl	#-13386244 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
0053a022c 	ldp	q0, q1, [sp, #144]
0053a0230 	add	x0, x22, #640
0053a0234 	ldr	q2, [sp, #176]
0053a0238 	mov	x1, xzr
0053a023c 	stp	q0, q1, [x22, #640]
0053a0240 	str	q2, [x22, #672]
0053a0244 	bl	#-14743616 ; -> 0x4590a04 
0053a0248 	ldr	s0, [x19, #224]
0053a024c 	add	x8, sp, #96
0053a0250 	mov	x0, xzr
0053a0254 	bl	#-13386428 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
0053a0258 	ldp	q0, q1, [sp, #96]
0053a025c 	add	x0, x22, #688
0053a0260 	ldr	q2, [sp, #128]
0053a0264 	mov	x1, xzr
0053a0268 	stp	q0, q1, [x22, #688]
0053a026c 	str	q2, [x22, #720]
0053a0270 	bl	#-14743660 ; -> 0x4590a04 
0053a0274 	ldp	x1, x2, [x19, #232]
0053a0278 	add	x0, x20, #800
0053a027c 	mov	x3, xzr
0053a0280 	bl	#-8713352 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a0284 	ldr	w0, [x19, #248]
0053a0288 	add	x8, sp, #48
0053a028c 	mov	x1, xzr
0053a0290 	bl	#-13386420 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a0294 	ldp	q0, q1, [sp, #48]
0053a0298 	add	x0, x22, #776
0053a029c 	ldr	q2, [sp, #80]
0053a02a0 	mov	x1, xzr
0053a02a4 	stp	q0, q1, [x0]
0053a02a8 	str	q2, [x0, #32]
0053a02ac 	bl	#-14743720 ; -> 0x4590a04 
0053a02b0 	ldp	x1, x2, [x19, #256]
0053a02b4 	mov	x0, x21
0053a02b8 	mov	x3, xzr
0053a02bc 	bl	#-8713412 ; -> 0x4b50df8 SilentBigInt::set_Value
0053a02c0 	ldr	w0, [x19, #272]
0053a02c4 	mov	x8, sp
0053a02c8 	mov	x1, xzr
0053a02cc 	bl	#-13386480 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
0053a02d0 	ldp	q0, q1, [sp]
0053a02d4 	add	x0, x22, #864
0053a02d8 	ldr	q2, [sp, #32]
0053a02dc 	mov	x1, xzr
0053a02e0 	stp	q0, q1, [x22, #864]
0053a02e4 	str	q2, [x22, #896]
0053a02e8 	bl	#-14743780 ; -> 0x4590a04 
0053a02ec 	add	sp, sp, #944
0053a02f0 	ldp	x20, x19, [sp, #48]
0053a02f4 	ldp	x22, x21, [sp, #32]
0053a02f8 	ldp	x24, x23, [sp, #16]
0053a02fc 	ldp	x29, x30, [sp], #64
0053a0300 	ret
0053a0304 	bl	#-14743032 ; -> 0x4590d0c 
