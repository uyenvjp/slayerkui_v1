004f009d4 	str	d8, [sp, #-112]!
004f009d8 	stp	x29, x30, [sp, #16]
004f009dc 	stp	x28, x27, [sp, #32]
004f009e0 	stp	x26, x25, [sp, #48]
004f009e4 	stp	x24, x23, [sp, #64]
004f009e8 	stp	x22, x21, [sp, #80]
004f009ec 	stp	x20, x19, [sp, #96]
004f009f0 	sub	sp, sp, #1344
004f009f4 	adrp	x21, #97341440 ; -> 0xabd5000 
004f009f8 	adrp	x29, #89305088 ; -> 0xa42b000 
004f009fc 	adrp	x20, #89305088 ; -> 0xa42b000 
004f00a00 	adrp	x28, #89034752 ; -> 0xa3e9000 
004f00a04 	ldr	x29, [x29, #2992]
004f00a08 	ldrb	w8, [x21, #1557]
004f00a0c 	ldr	x20, [x20, #3000]
004f00a10 	ldr	x28, [x28, #3552]
004f00a14 	mov	x19, x0
004f00a18 	tbnz	w8, #0, #132 ; -> 0x4f00a9c 
004f00a1c 	adrp	x0, #89034752 ; -> 0xa3e9000 
004f00a20 	ldr	x0, [x0, #3552]
004f00a24 	bl	#-9895876 ; -> 0x4590a60 
004f00a28 	adrp	x0, #89305088 ; -> 0xa42b000 
004f00a2c 	ldr	x0, [x0, #3008]
004f00a30 	bl	#-9895888 ; -> 0x4590a60 
004f00a34 	adrp	x0, #89305088 ; -> 0xa42b000 
004f00a38 	ldr	x0, [x0, #3016]
004f00a3c 	bl	#-9895900 ; -> 0x4590a60 
004f00a40 	adrp	x0, #89247744 ; -> 0xa41d000 
004f00a44 	ldr	x0, [x0, #2336]
004f00a48 	bl	#-9895912 ; -> 0x4590a60 
004f00a4c 	adrp	x0, #89305088 ; -> 0xa42b000 
004f00a50 	ldr	x0, [x0, #3000]
004f00a54 	bl	#-9895924 ; -> 0x4590a60 
004f00a58 	adrp	x0, #89305088 ; -> 0xa42b000 
004f00a5c 	ldr	x0, [x0, #2992]
004f00a60 	bl	#-9895936 ; -> 0x4590a60 
004f00a64 	adrp	x0, #89255936 ; -> 0xa41f000 
004f00a68 	ldr	x0, [x0, #120]
004f00a6c 	bl	#-9895948 ; -> 0x4590a60 
004f00a70 	adrp	x0, #89305088 ; -> 0xa42b000 
004f00a74 	ldr	x0, [x0, #3024]
004f00a78 	bl	#-9895960 ; -> 0x4590a60 
004f00a7c 	adrp	x0, #89280512 ; -> 0xa425000 
004f00a80 	ldr	x0, [x0, #3784]
004f00a84 	bl	#-9895972 ; -> 0x4590a60 
004f00a88 	adrp	x0, #89030656 ; -> 0xa3e8000 
004f00a8c 	ldr	x0, [x0, #720]
004f00a90 	bl	#-9895984 ; -> 0x4590a60 
004f00a94 	mov	w8, #1
004f00a98 	strb	w8, [x21, #1557]
004f00a9c 	adrp	x22, #89030656 ; -> 0xa3e8000 
004f00aa0 	adrp	x27, #89280512 ; -> 0xa425000 
004f00aa4 	adrp	x26, #89305088 ; -> 0xa42b000 
004f00aa8 	adrp	x25, #89305088 ; -> 0xa42b000 
004f00aac 	adrp	x24, #89247744 ; -> 0xa41d000 
004f00ab0 	adrp	x23, #89305088 ; -> 0xa42b000 
004f00ab4 	adrp	x21, #89255936 ; -> 0xa41f000 
004f00ab8 	ldr	x22, [x22, #720]
004f00abc 	ldr	x27, [x27, #3784]
004f00ac0 	ldr	x26, [x26, #3016]
004f00ac4 	ldr	x25, [x25, #3008]
004f00ac8 	ldr	x24, [x24, #2336]
004f00acc 	ldr	x23, [x23, #3024]
004f00ad0 	ldr	x21, [x21, #120]
004f00ad4 	ldr	x0, [x29]
004f00ad8 	bl	#-9895388 ; -> 0x4590cfc 
004f00adc 	ldr	x1, [x20]
004f00ae0 	mov	x20, x0
004f00ae4 	bl	#30439748 ; -> 0x6c08428 
004f00ae8 	add	x0, x19, #456
004f00aec 	mov	x1, x20
004f00af0 	str	x20, [x19, #456]
004f00af4 	bl	#-9896176 ; -> 0x4590a04 
004f00af8 	movi	v0.2d, #0000000000000000
004f00afc 	add	x0, sp, #1264
004f00b00 	mov	w1, #46
004f00b04 	mov	w2, wzr
004f00b08 	mov	x3, xzr
004f00b0c 	str	xzr, [sp, #1328]
004f00b10 	str	q0, [sp, #1312]
004f00b14 	str	q0, [sp, #1296]
004f00b18 	str	q0, [sp, #1280]
004f00b1c 	str	q0, [sp, #1264]
004f00b20 	bl	#-3862216 ; -> 0x4b51c58 SilentFloat::.ctor
004f00b24 	add	x0, x19, #496
004f00b28 	add	x1, sp, #1264
004f00b2c 	mov	w2, #72
004f00b30 	bl	#82226624 ; -> 0x9d6b8f0 
004f00b34 	add	x0, x19, #504
004f00b38 	mov	x1, xzr
004f00b3c 	bl	#-9896248 ; -> 0x4590a04 
004f00b40 	movi	v0.2d, #0000000000000000
004f00b44 	add	x0, sp, #1184
004f00b48 	mov	w1, #46
004f00b4c 	mov	w2, wzr
004f00b50 	mov	x3, xzr
004f00b54 	str	xzr, [sp, #1248]
004f00b58 	str	q0, [sp, #1232]
004f00b5c 	str	q0, [sp, #1216]
004f00b60 	str	q0, [sp, #1200]
004f00b64 	str	q0, [sp, #1184]
004f00b68 	bl	#-3862288 ; -> 0x4b51c58 SilentFloat::.ctor
004f00b6c 	add	x0, x19, #568
004f00b70 	add	x1, sp, #1184
004f00b74 	mov	w2, #72
004f00b78 	bl	#82226552 ; -> 0x9d6b8f0 
004f00b7c 	add	x0, x19, #576
004f00b80 	mov	x1, xzr
004f00b84 	bl	#-9896320 ; -> 0x4590a04 
004f00b88 	movi	v0.2d, #0000000000000000
004f00b8c 	mov	w20, #1065353216
004f00b90 	add	x0, sp, #1136
004f00b94 	mov	w1, #41
004f00b98 	mov	w2, wzr
004f00b9c 	mov	x3, xzr
004f00ba0 	str	xzr, [sp, #1168]
004f00ba4 	str	w20, [x19, #712]
004f00ba8 	str	q0, [sp, #1152]
004f00bac 	str	q0, [sp, #1136]
004f00bb0 	bl	#-3865820 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f00bb4 	ldr	q0, [sp, #1136]
004f00bb8 	ldr	q1, [sp, #1152]
004f00bbc 	add	x8, x19, #744
004f00bc0 	ldr	x9, [sp, #1168]
004f00bc4 	add	x0, x19, #752
004f00bc8 	mov	x1, xzr
004f00bcc 	stp	q0, q1, [x8]
004f00bd0 	str	x9, [x19, #776]
004f00bd4 	bl	#-9896400 ; -> 0x4590a04 
004f00bd8 	movi	v0.2d, #0000000000000000
004f00bdc 	add	x0, sp, #1088
004f00be0 	mov	w1, #42
004f00be4 	mov	w2, wzr
004f00be8 	mov	x3, xzr
004f00bec 	str	xzr, [sp, #1120]
004f00bf0 	str	q0, [sp, #1104]
004f00bf4 	str	q0, [sp, #1088]
004f00bf8 	bl	#-3865892 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f00bfc 	ldr	q0, [sp, #1088]
004f00c00 	ldr	q1, [sp, #1104]
004f00c04 	add	x0, x19, #792
004f00c08 	ldr	x8, [sp, #1120]
004f00c0c 	mov	x1, xzr
004f00c10 	stp	q0, q1, [x19, #784]
004f00c14 	str	x8, [x19, #816]
004f00c18 	bl	#-9896468 ; -> 0x4590a04 
004f00c1c 	movi	v0.2d, #0000000000000000
004f00c20 	add	x0, sp, #1040
004f00c24 	mov	w1, #43
004f00c28 	mov	w2, wzr
004f00c2c 	mov	x3, xzr
004f00c30 	str	xzr, [sp, #1072]
004f00c34 	str	q0, [sp, #1056]
004f00c38 	str	q0, [sp, #1040]
004f00c3c 	bl	#-3865960 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f00c40 	ldr	q0, [sp, #1040]
004f00c44 	ldr	q1, [sp, #1056]
004f00c48 	add	x8, x19, #824
004f00c4c 	ldr	x9, [sp, #1072]
004f00c50 	add	x0, x19, #832
004f00c54 	mov	x1, xzr
004f00c58 	stp	q0, q1, [x8]
004f00c5c 	str	x9, [x19, #856]
004f00c60 	bl	#-9896540 ; -> 0x4590a04 
004f00c64 	movi	v0.2d, #0000000000000000
004f00c68 	add	x0, sp, #960
004f00c6c 	mov	w1, #29
004f00c70 	mov	w2, wzr
004f00c74 	mov	x3, xzr
004f00c78 	str	xzr, [sp, #1024]
004f00c7c 	stp	q0, q0, [sp, #960]
004f00c80 	stp	q0, q0, [sp, #992]
004f00c84 	bl	#-3862572 ; -> 0x4b51c58 SilentFloat::.ctor
004f00c88 	add	x0, x19, #904
004f00c8c 	add	x1, sp, #960
004f00c90 	mov	w2, #72
004f00c94 	bl	#82226268 ; -> 0x9d6b8f0 
004f00c98 	add	x0, x19, #912
004f00c9c 	mov	x1, xzr
004f00ca0 	bl	#-9896604 ; -> 0x4590a04 
004f00ca4 	movi	v0.2d, #0000000000000000
004f00ca8 	add	x0, sp, #896
004f00cac 	mov	w1, #38
004f00cb0 	mov	w2, wzr
004f00cb4 	mov	x3, xzr
004f00cb8 	stp	q0, q0, [sp, #896]
004f00cbc 	stp	q0, q0, [sp, #928]
004f00cc0 	bl	#-3859596 ; -> 0x4b52834 SilentLong::.ctor
004f00cc4 	ldp	q0, q1, [sp, #896]
004f00cc8 	add	x8, x19, #1000
004f00ccc 	add	x0, x19, #1008
004f00cd0 	mov	x1, xzr
004f00cd4 	stp	q0, q1, [x8]
004f00cd8 	ldp	q0, q2, [sp, #928]
004f00cdc 	stp	q0, q2, [x8, #32]
004f00ce0 	bl	#-9896668 ; -> 0x4590a04 
004f00ce4 	movi	v0.2d, #0000000000000000
004f00ce8 	add	x0, sp, #832
004f00cec 	mov	w1, #38
004f00cf0 	mov	w2, wzr
004f00cf4 	mov	x3, xzr
004f00cf8 	stp	q0, q0, [sp, #832]
004f00cfc 	stp	q0, q0, [sp, #864]
004f00d00 	bl	#-3859660 ; -> 0x4b52834 SilentLong::.ctor
004f00d04 	ldp	q0, q1, [sp, #832]
004f00d08 	add	x8, x19, #1064
004f00d0c 	add	x0, x19, #1072
004f00d10 	mov	x1, xzr
004f00d14 	stp	q0, q1, [x8]
004f00d18 	ldp	q0, q2, [sp, #864]
004f00d1c 	stp	q0, q2, [x8, #32]
004f00d20 	bl	#-9896732 ; -> 0x4590a04 
004f00d24 	movi	v0.2d, #0000000000000000
004f00d28 	add	x0, sp, #768
004f00d2c 	mov	w1, #38
004f00d30 	mov	w2, wzr
004f00d34 	mov	x3, xzr
004f00d38 	stp	q0, q0, [sp, #768]
004f00d3c 	stp	q0, q0, [sp, #800]
004f00d40 	bl	#-3859724 ; -> 0x4b52834 SilentLong::.ctor
004f00d44 	ldp	q0, q1, [sp, #768]
004f00d48 	add	x8, x19, #1128
004f00d4c 	add	x0, x19, #1136
004f00d50 	mov	x1, xzr
004f00d54 	stp	q0, q1, [x8]
004f00d58 	ldp	q0, q2, [sp, #800]
004f00d5c 	stp	q0, q2, [x8, #32]
004f00d60 	bl	#-9896796 ; -> 0x4590a04 
004f00d64 	movi	v0.2d, #0000000000000000
004f00d68 	add	x0, sp, #704
004f00d6c 	mov	w1, #38
004f00d70 	mov	w2, wzr
004f00d74 	mov	x3, xzr
004f00d78 	stp	q0, q0, [sp, #704]
004f00d7c 	stp	q0, q0, [sp, #736]
004f00d80 	bl	#-3859788 ; -> 0x4b52834 SilentLong::.ctor
004f00d84 	ldp	q0, q1, [sp, #704]
004f00d88 	add	x8, x19, #1192
004f00d8c 	add	x0, x19, #1200
004f00d90 	mov	x1, xzr
004f00d94 	stp	q0, q1, [x8]
004f00d98 	ldp	q0, q2, [sp, #736]
004f00d9c 	stp	q0, q2, [x8, #32]
004f00da0 	bl	#-9896860 ; -> 0x4590a04 
004f00da4 	movi	v0.2d, #0000000000000000
004f00da8 	add	x0, sp, #640
004f00dac 	mov	w1, #38
004f00db0 	mov	w2, wzr
004f00db4 	mov	x3, xzr
004f00db8 	stp	q0, q0, [sp, #640]
004f00dbc 	stp	q0, q0, [sp, #672]
004f00dc0 	bl	#-3859852 ; -> 0x4b52834 SilentLong::.ctor
004f00dc4 	ldp	q0, q1, [sp, #640]
004f00dc8 	add	x8, x19, #1256
004f00dcc 	add	x0, x19, #1264
004f00dd0 	mov	x1, xzr
004f00dd4 	stp	q0, q1, [x8]
004f00dd8 	ldp	q0, q2, [sp, #672]
004f00ddc 	stp	q0, q2, [x8, #32]
004f00de0 	bl	#-9896924 ; -> 0x4590a04 
004f00de4 	movi	v0.2d, #0000000000000000
004f00de8 	add	x0, sp, #576
004f00dec 	mov	w1, #40
004f00df0 	mov	w2, wzr
004f00df4 	mov	x3, xzr
004f00df8 	stp	q0, q0, [sp, #576]
004f00dfc 	stp	q0, q0, [sp, #608]
004f00e00 	bl	#-3859916 ; -> 0x4b52834 SilentLong::.ctor
004f00e04 	ldp	q0, q1, [sp, #576]
004f00e08 	add	x0, x19, #1336
004f00e0c 	mov	x1, xzr
004f00e10 	str	q0, [x19, #1328]
004f00e14 	ldp	q0, q2, [sp, #608]
004f00e18 	str	q1, [x19, #1344]
004f00e1c 	str	q0, [x19, #1360]
004f00e20 	str	q2, [x19, #1376]
004f00e24 	bl	#-9896992 ; -> 0x4590a04 
004f00e28 	movi	v0.2d, #0000000000000000
004f00e2c 	add	x0, sp, #512
004f00e30 	mov	w1, #40
004f00e34 	mov	w2, wzr
004f00e38 	mov	x3, xzr
004f00e3c 	stp	q0, q0, [sp, #512]
004f00e40 	stp	q0, q0, [sp, #544]
004f00e44 	bl	#-3859984 ; -> 0x4b52834 SilentLong::.ctor
004f00e48 	ldp	q0, q1, [sp, #512]
004f00e4c 	add	x8, x19, #1400
004f00e50 	add	x0, x19, #1408
004f00e54 	mov	x1, xzr
004f00e58 	stp	q0, q1, [x8]
004f00e5c 	ldp	q0, q2, [sp, #544]
004f00e60 	stp	q0, q2, [x8, #32]
004f00e64 	bl	#-9897056 ; -> 0x4590a04 
004f00e68 	ldr	x0, [x28]
004f00e6c 	ldr	w8, [x0, #228]
004f00e70 	cbnz	w8, #8 ; -> 0x4f00e78 
004f00e74 	bl	#-9896596 ; -> 0x4590be0 
004f00e78 	mov	w0, #1
004f00e7c 	mov	x1, xzr
004f00e80 	bl	#69714212 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f00e84 	str	x0, [x19, #1464]
004f00e88 	add	x0, x19, #1472
004f00e8c 	str	x1, [x19, #1472]
004f00e90 	mov	x1, xzr
004f00e94 	bl	#-9897104 ; -> 0x4590a04 
004f00e98 	movi	v0.2d, #0000000000000000
004f00e9c 	add	x0, sp, #432
004f00ea0 	mov	w1, #97
004f00ea4 	mov	w2, wzr
004f00ea8 	mov	x3, xzr
004f00eac 	str	xzr, [sp, #496]
004f00eb0 	stp	q0, q0, [sp, #432]
004f00eb4 	stp	q0, q0, [sp, #464]
004f00eb8 	bl	#-3863136 ; -> 0x4b51c58 SilentFloat::.ctor
004f00ebc 	add	x0, x19, #1488
004f00ec0 	add	x1, sp, #432
004f00ec4 	mov	w2, #72
004f00ec8 	bl	#82225704 ; -> 0x9d6b8f0 
004f00ecc 	add	x0, x19, #1496
004f00ed0 	mov	x1, xzr
004f00ed4 	bl	#-9897168 ; -> 0x4590a04 
004f00ed8 	movi	v0.2d, #0000000000000000
004f00edc 	add	x0, sp, #352
004f00ee0 	mov	w1, #97
004f00ee4 	mov	w2, wzr
004f00ee8 	mov	x3, xzr
004f00eec 	str	xzr, [sp, #416]
004f00ef0 	stp	q0, q0, [sp, #352]
004f00ef4 	stp	q0, q0, [sp, #384]
004f00ef8 	bl	#-3863200 ; -> 0x4b51c58 SilentFloat::.ctor
004f00efc 	add	x0, x19, #1560
004f00f00 	add	x1, sp, #352
004f00f04 	mov	w2, #72
004f00f08 	bl	#82225640 ; -> 0x9d6b8f0 
004f00f0c 	add	x0, x19, #1568
004f00f10 	mov	x1, xzr
004f00f14 	bl	#-9897232 ; -> 0x4590a04 
004f00f18 	mov	w0, #1
004f00f1c 	mov	x1, xzr
004f00f20 	bl	#69714052 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f00f24 	str	x0, [x19, #1632]
004f00f28 	add	x0, x19, #1640
004f00f2c 	str	x1, [x19, #1640]
004f00f30 	mov	x1, xzr
004f00f34 	bl	#-9897264 ; -> 0x4590a04 
004f00f38 	mov	w0, #1
004f00f3c 	mov	x1, xzr
004f00f40 	bl	#69714020 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f00f44 	str	x0, [x19, #1696]
004f00f48 	add	x0, x19, #1704
004f00f4c 	str	x1, [x19, #1704]
004f00f50 	mov	x1, xzr
004f00f54 	bl	#-9897296 ; -> 0x4590a04 
004f00f58 	movi	v0.2d, #0000000000000000
004f00f5c 	add	x0, sp, #304
004f00f60 	mov	w1, #63
004f00f64 	mov	w2, wzr
004f00f68 	mov	x3, xzr
004f00f6c 	str	xzr, [sp, #336]
004f00f70 	stp	q0, q0, [sp, #304]
004f00f74 	bl	#-3866784 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f00f78 	ldp	q0, q1, [sp, #304]
004f00f7c 	add	x0, x19, #1720
004f00f80 	ldr	x8, [sp, #336]
004f00f84 	mov	x1, xzr
004f00f88 	str	q0, [x19, #1712]
004f00f8c 	str	q1, [x19, #1728]
004f00f90 	str	x8, [x19, #1744]
004f00f94 	bl	#-9897360 ; -> 0x4590a04 
004f00f98 	movi	v0.2d, #0000000000000000
004f00f9c 	add	x0, sp, #256
004f00fa0 	mov	w1, #64
004f00fa4 	mov	w2, wzr
004f00fa8 	mov	x3, xzr
004f00fac 	str	xzr, [sp, #288]
004f00fb0 	stp	q0, q0, [sp, #256]
004f00fb4 	bl	#-3866848 ; -> 0x4b50ed4 SilentBigInt::.ctor
004f00fb8 	ldp	q0, q1, [sp, #256]
004f00fbc 	add	x8, x19, #1752
004f00fc0 	ldr	x9, [sp, #288]
004f00fc4 	add	x0, x19, #1760
004f00fc8 	mov	x1, xzr
004f00fcc 	stp	q0, q1, [x8]
004f00fd0 	str	x9, [x19, #1784]
004f00fd4 	bl	#-9897424 ; -> 0x4590a04 
004f00fd8 	ldr	x0, [x22]
004f00fdc 	str	w20, [x19, #1848]
004f00fe0 	bl	#-9896676 ; -> 0x4590cfc 
004f00fe4 	adrp	x8, #-50163712 ; -> 0x1f29000 
004f00fe8 	mov	x1, xzr
004f00fec 	mov	x20, x0
004f00ff0 	ldr	s8, [x8, #1688]
004f00ff4 	fmov	s0, s8
004f00ff8 	bl	#78686984 ; -> 0x9a0bb00 UnityEngine.WaitForSeconds::.ctor
004f00ffc 	add	x0, x19, #1936
004f01000 	mov	x1, x20
004f01004 	str	x20, [x19, #1936]
004f01008 	bl	#-9897476 ; -> 0x4590a04 
004f0100c 	ldr	x0, [x27]
004f01010 	bl	#-9896724 ; -> 0x4590cfc 
004f01014 	mov	x1, xzr
004f01018 	mov	x20, x0
004f0101c 	bl	#78686940 ; -> 0x9a0baf8 UnityEngine.WaitForFixedUpdate::.ctor
004f01020 	add	x0, x19, #1944
004f01024 	mov	x1, x20
004f01028 	str	x20, [x19, #1944]
004f0102c 	bl	#-9897512 ; -> 0x4590a04 
004f01030 	mov	w8, #26214
004f01034 	ldr	x0, [x27]
004f01038 	movk	w8, #16358, lsl #16
004f0103c 	str	w8, [x19, #1968]
004f01040 	bl	#-9896772 ; -> 0x4590cfc 
004f01044 	mov	x1, xzr
004f01048 	mov	x20, x0
004f0104c 	bl	#78686892 ; -> 0x9a0baf8 UnityEngine.WaitForFixedUpdate::.ctor
004f01050 	add	x0, x19, #1976
004f01054 	mov	x1, x20
004f01058 	str	x20, [x19, #1976]
004f0105c 	bl	#-9897560 ; -> 0x4590a04 
004f01060 	ldr	x0, [x26]
004f01064 	bl	#-9896808 ; -> 0x4590cfc 
004f01068 	ldr	x1, [x25]
004f0106c 	mov	x20, x0
004f01070 	bl	#51736080 ; -> 0x8057e80 
004f01074 	add	x0, x19, #2016
004f01078 	mov	x1, x20
004f0107c 	str	x20, [x19, #2016]
004f01080 	bl	#-9897596 ; -> 0x4590a04 
004f01084 	ldr	x0, [x24]
004f01088 	mov	w1, #3
004f0108c 	bl	#-9897276 ; -> 0x4590b50 
004f01090 	ldr	x1, [x23]
004f01094 	mov	x2, xzr
004f01098 	mov	x20, x0
004f0109c 	bl	#65589520 ; -> 0x8d8e1ac System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray
004f010a0 	add	x0, x19, #2096
004f010a4 	mov	x1, x20
004f010a8 	str	x20, [x19, #2096]
004f010ac 	bl	#-9897640 ; -> 0x4590a04 
004f010b0 	movi	v0.2d, #0000000000000000
004f010b4 	add	x0, sp, #176
004f010b8 	mov	w1, #31
004f010bc 	mov	w2, wzr
004f010c0 	mov	x3, xzr
004f010c4 	str	xzr, [sp, #240]
004f010c8 	stp	q0, q0, [sp, #176]
004f010cc 	stp	q0, q0, [sp, #208]
004f010d0 	bl	#-3863672 ; -> 0x4b51c58 SilentFloat::.ctor
004f010d4 	add	x0, x19, #2120
004f010d8 	add	x1, sp, #176
004f010dc 	mov	w2, #72
004f010e0 	bl	#82225168 ; -> 0x9d6b8f0 
004f010e4 	add	x0, x19, #2128
004f010e8 	mov	x1, xzr
004f010ec 	bl	#-9897704 ; -> 0x4590a04 
004f010f0 	movi	v0.2d, #0000000000000000
004f010f4 	add	x0, sp, #96
004f010f8 	mov	w1, #31
004f010fc 	mov	w2, wzr
004f01100 	mov	x3, xzr
004f01104 	str	xzr, [sp, #160]
004f01108 	stp	q0, q0, [sp, #96]
004f0110c 	stp	q0, q0, [sp, #128]
004f01110 	bl	#-3863736 ; -> 0x4b51c58 SilentFloat::.ctor
004f01114 	add	x0, x19, #2192
004f01118 	add	x1, sp, #96
004f0111c 	mov	w2, #72
004f01120 	bl	#82225104 ; -> 0x9d6b8f0 
004f01124 	add	x0, x19, #2200
004f01128 	mov	x1, xzr
004f0112c 	bl	#-9897768 ; -> 0x4590a04 
004f01130 	movi	v0.2d, #0000000000000000
004f01134 	add	x0, sp, #16
004f01138 	mov	w1, #31
004f0113c 	mov	w2, wzr
004f01140 	mov	x3, xzr
004f01144 	str	xzr, [sp, #80]
004f01148 	stp	q0, q0, [sp, #16]
004f0114c 	stp	q0, q0, [sp, #48]
004f01150 	bl	#-3863800 ; -> 0x4b51c58 SilentFloat::.ctor
004f01154 	add	x0, x19, #2264
004f01158 	add	x1, sp, #16
004f0115c 	mov	w2, #72
004f01160 	bl	#82225040 ; -> 0x9d6b8f0 
004f01164 	add	x0, x19, #2272
004f01168 	mov	x1, xzr
004f0116c 	bl	#-9897832 ; -> 0x4590a04 
004f01170 	adrp	x8, #-50171904 ; -> 0x1f28000 
004f01174 	ldr	x0, [x22]
004f01178 	ldr	d0, [x8, #1320]
004f0117c 	mov	w8, #13107
004f01180 	movk	w8, #16179, lsl #16
004f01184 	str	d0, [x19, #2336]
004f01188 	str	w8, [x19, #2344]
004f0118c 	bl	#-9897104 ; -> 0x4590cfc 
004f01190 	fmov	s0, s8
004f01194 	mov	x1, xzr
004f01198 	mov	x20, x0
004f0119c 	bl	#78686564 ; -> 0x9a0bb00 UnityEngine.WaitForSeconds::.ctor
004f011a0 	add	x0, x19, #2696
004f011a4 	mov	x1, x20
004f011a8 	str	x20, [x19, #2696]
004f011ac 	bl	#-9897896 ; -> 0x4590a04 
004f011b0 	ldr	x0, [x21]
004f011b4 	mov	w1, #24
004f011b8 	bl	#-9897576 ; -> 0x4590b50 
004f011bc 	mov	x1, x0
004f011c0 	str	x0, [x19, #2856]
004f011c4 	add	x0, x19, #2856
004f011c8 	bl	#-9897924 ; -> 0x4590a04 
004f011cc 	ldr	x0, [x21]
004f011d0 	mov	w1, #24
004f011d4 	bl	#-9897604 ; -> 0x4590b50 
004f011d8 	mov	x1, x0
004f011dc 	str	x0, [x19, #2864]
004f011e0 	add	x0, x19, #2864
004f011e4 	bl	#-9897952 ; -> 0x4590a04 
004f011e8 	ldr	x0, [x21]
004f011ec 	mov	w1, #4
004f011f0 	bl	#-9897632 ; -> 0x4590b50 
004f011f4 	mov	x1, x0
004f011f8 	str	x0, [x19, #2872]
004f011fc 	add	x0, x19, #2872
004f01200 	bl	#-9897980 ; -> 0x4590a04 
004f01204 	ldr	x0, [x21]
004f01208 	mov	w1, #2
004f0120c 	bl	#-9897660 ; -> 0x4590b50 
004f01210 	mov	x1, x0
004f01214 	str	x0, [x19, #2880]
004f01218 	add	x0, x19, #2880
004f0121c 	bl	#-9898008 ; -> 0x4590a04 
004f01220 	ldr	x0, [x21]
004f01224 	mov	w1, #2
004f01228 	bl	#-9897688 ; -> 0x4590b50 
004f0122c 	mov	x1, x0
004f01230 	str	x0, [x19, #2888]
004f01234 	add	x0, x19, #2888
004f01238 	bl	#-9898036 ; -> 0x4590a04 
004f0123c 	ldr	x0, [x21]
004f01240 	mov	w1, #16
004f01244 	bl	#-9897716 ; -> 0x4590b50 
004f01248 	mov	x1, x0
004f0124c 	str	x0, [x19, #2896]
004f01250 	add	x0, x19, #2896
004f01254 	bl	#-9898064 ; -> 0x4590a04 
004f01258 	ldr	x0, [x21]
004f0125c 	mov	w1, #2
004f01260 	bl	#-9897744 ; -> 0x4590b50 
004f01264 	mov	x1, x0
004f01268 	str	x0, [x19, #2904]
004f0126c 	add	x0, x19, #2904
004f01270 	bl	#-9898092 ; -> 0x4590a04 
004f01274 	ldr	x0, [x21]
004f01278 	mov	w1, #6
004f0127c 	bl	#-9897772 ; -> 0x4590b50 
004f01280 	mov	x1, x0
004f01284 	str	x0, [x19, #2912]
004f01288 	add	x0, x19, #2912
004f0128c 	bl	#-9898120 ; -> 0x4590a04 
004f01290 	ldr	x0, [x21]
004f01294 	mov	w1, #6
004f01298 	bl	#-9897800 ; -> 0x4590b50 
004f0129c 	mov	x1, x0
004f012a0 	str	x0, [x19, #2920]
004f012a4 	add	x0, x19, #2920
004f012a8 	bl	#-9898148 ; -> 0x4590a04 
004f012ac 	ldr	x0, [x21]
004f012b0 	mov	w1, #4
004f012b4 	bl	#-9897828 ; -> 0x4590b50 
004f012b8 	mov	x1, x0
004f012bc 	str	x0, [x19, #2928]
004f012c0 	add	x0, x19, #2928
004f012c4 	bl	#-9898176 ; -> 0x4590a04 
004f012c8 	mov	x0, x19
004f012cc 	mov	x1, xzr
004f012d0 	bl	#1108272 ; -> 0x500fc00 Character::.ctor
004f012d4 	add	sp, sp, #1344
004f012d8 	ldp	x20, x19, [sp, #96]
004f012dc 	ldp	x22, x21, [sp, #80]
004f012e0 	ldp	x24, x23, [sp, #64]
004f012e4 	ldp	x26, x25, [sp, #48]
004f012e8 	ldp	x28, x27, [sp, #32]
004f012ec 	ldp	x29, x30, [sp, #16]
004f012f0 	ldr	d8, [sp], #112
004f012f4 	ret
