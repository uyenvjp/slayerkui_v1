0051f19c0 	sub	sp, sp, #128
0051f19c4 	stp	x30, x27, [sp, #48]
0051f19c8 	stp	x26, x25, [sp, #64]
0051f19cc 	stp	x24, x23, [sp, #80]
0051f19d0 	stp	x22, x21, [sp, #96]
0051f19d4 	stp	x20, x19, [sp, #112]
0051f19d8 	adrp	x20, #94261248 ; -> 0xabd6000 
0051f19dc 	mov	x19, x0
0051f19e0 	ldrb	w8, [x20, #3165]
0051f19e4 	tbnz	w8, #0, #108 ; -> 0x51f1a50 
0051f19e8 	adrp	x0, #85970944 ; -> 0xa3ee000 
0051f19ec 	ldr	x0, [x0, #3648]
0051f19f0 	bl	#-12980112 ; -> 0x4590a60 
0051f19f4 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f19f8 	ldr	x0, [x0, #200]
0051f19fc 	bl	#-12980124 ; -> 0x4590a60 
0051f1a00 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1a04 	ldr	x0, [x0, #208]
0051f1a08 	bl	#-12980136 ; -> 0x4590a60 
0051f1a0c 	adrp	x0, #85995520 ; -> 0xa3f4000 
0051f1a10 	ldr	x0, [x0, #624]
0051f1a14 	bl	#-12980148 ; -> 0x4590a60 
0051f1a18 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1a1c 	ldr	x0, [x0, #2048]
0051f1a20 	bl	#-12980160 ; -> 0x4590a60 
0051f1a24 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1a28 	ldr	x0, [x0, #216]
0051f1a2c 	bl	#-12980172 ; -> 0x4590a60 
0051f1a30 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1a34 	ldr	x0, [x0, #224]
0051f1a38 	bl	#-12980184 ; -> 0x4590a60 
0051f1a3c 	adrp	x0, #85950464 ; -> 0xa3e9000 
0051f1a40 	ldr	x0, [x0, #1344]
0051f1a44 	bl	#-12980196 ; -> 0x4590a60 
0051f1a48 	mov	w8, #1
0051f1a4c 	strb	w8, [x20, #3165]
0051f1a50 	adrp	x23, #86282240 ; -> 0xa43a000 
0051f1a54 	adrp	x24, #86282240 ; -> 0xa43a000 
0051f1a58 	adrp	x25, #85970944 ; -> 0xa3ee000 
0051f1a5c 	adrp	x26, #85950464 ; -> 0xa3e9000 
0051f1a60 	ldr	x23, [x23, #200]
0051f1a64 	ldr	x24, [x24, #216]
0051f1a68 	ldr	x25, [x25, #3648]
0051f1a6c 	ldr	x26, [x26, #1344]
0051f1a70 	stp	xzr, xzr, [sp, #16]
0051f1a74 	adrp	x27, #85950464 ; -> 0xa3e9000 
0051f1a78 	ldr	w8, [x19]
0051f1a7c 	ldr	x27, [x27, #1888]
0051f1a80 	str	wzr, [sp, #8]
0051f1a84 	cbz	w8, #124 ; -> 0x51f1b00 
0051f1a88 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1a8c 	ldr	x8, [x8, #224]
0051f1a90 	ldr	x0, [x8]
0051f1a94 	bl	#-12979608 ; -> 0x4590cfc 
0051f1a98 	mov	x1, xzr
0051f1a9c 	mov	x21, x0
0051f1aa0 	bl	#63743880 ; -> 0x8ebc228 System.Object::.ctor
0051f1aa4 	mov	x20, x19
0051f1aa8 	str	x21, [x20, #48]!
0051f1aac 	mov	x0, x20
0051f1ab0 	mov	x1, x21
0051f1ab4 	bl	#-12980400 ; -> 0x4590a04 
0051f1ab8 	adrp	x8, #85995520 ; -> 0xa3f4000 
0051f1abc 	ldr	x8, [x8, #624]
0051f1ac0 	ldr	x21, [x19, #48]
0051f1ac4 	str	wzr, [x19, #56]
0051f1ac8 	ldr	x0, [x8]
0051f1acc 	bl	#-12979664 ; -> 0x4590cfc 
0051f1ad0 	mov	x1, xzr
0051f1ad4 	mov	x22, x0
0051f1ad8 	bl	#-11188716 ; -> 0x47460ec Gear2Framework.Common.AwaitForSignal::.ctor
0051f1adc 	cbz	x21, #60 ; -> 0x51f1b18 
0051f1ae0 	str	x22, [x21, #24]!
0051f1ae4 	mov	x0, x21
0051f1ae8 	mov	x1, x22
0051f1aec 	bl	#-12980456 ; -> 0x4590a04 
0051f1af0 	ldr	x20, [x20]
0051f1af4 	cbz	x20, #40 ; -> 0x51f1b1c 
0051f1af8 	strb	wzr, [x20, #16]
0051f1afc 	b	#528 ; -> 0x51f1d0c 
0051f1b00 	ldr	q0, [x19, #64]
0051f1b04 	mov	w8, #-1
0051f1b08 	stp	xzr, xzr, [x19, #64]
0051f1b0c 	str	w8, [x19]
0051f1b10 	str	q0, [sp, #16]
0051f1b14 	b	#348 ; -> 0x51f1c70 
0051f1b18 	bl	#-12979724 ; -> 0x4590d0c 
0051f1b1c 	bl	#-12979728 ; -> 0x4590d0c 
0051f1b20 	b	#720 ; -> 0x51f1df0 
0051f1b24 	b	#716 ; -> 0x51f1df0 
0051f1b28 	b	#712 ; -> 0x51f1df0 
0051f1b2c 	ldr	x21, [x19, #40]
0051f1b30 	ldr	x0, [x23]
0051f1b34 	bl	#-12979768 ; -> 0x4590cfc 
0051f1b38 	mov	x22, x0
0051f1b3c 	ldr	x2, [x24]
0051f1b40 	mov	x1, x20
0051f1b44 	mov	x3, xzr
0051f1b48 	bl	#20537844 ; -> 0x6587d3c 
0051f1b4c 	ldr	x0, [x25]
0051f1b50 	ldr	w8, [x0, #228]
0051f1b54 	cbnz	w8, #8 ; -> 0x51f1b5c 
0051f1b58 	bl	#-12980088 ; -> 0x4590be0 
0051f1b5c 	mov	x0, x21
0051f1b60 	mov	x1, x22
0051f1b64 	mov	x2, xzr
0051f1b68 	bl	#-1180984 ; -> 0x50d1630 APIManager::SetClientData
0051f1b6c 	ldr	x8, [x19, #48]
0051f1b70 	cbz	x8, #592 ; -> 0x51f1dc0 
0051f1b74 	ldr	x0, [x8, #24]
0051f1b78 	cbz	x0, #588 ; -> 0x51f1dc4 
0051f1b7c 	mov	x1, xzr
0051f1b80 	bl	#-11189108 ; -> 0x474600c Gear2Framework.Common.AwaitForSignal::UniTaskWait
0051f1b84 	mov	x20, x0
0051f1b88 	ldr	x0, [x26]
0051f1b8c 	mov	x21, x1
0051f1b90 	ldr	w8, [x0, #228]
0051f1b94 	cbnz	w8, #8 ; -> 0x51f1b9c 
0051f1b98 	bl	#-12980152 ; -> 0x4590be0 
0051f1b9c 	stp	x20, x21, [sp, #32]
0051f1ba0 	add	x0, sp, #32
0051f1ba4 	mov	x1, xzr
0051f1ba8 	bl	#-12980644 ; -> 0x4590a04 
0051f1bac 	adrp	x22, #94228480 ; -> 0xabce000 
0051f1bb0 	ldp	x20, x21, [sp, #32]
0051f1bb4 	ldrb	w8, [x22, #2740]
0051f1bb8 	stp	x20, x21, [sp, #16]
0051f1bbc 	cbnz	w8, #24 ; -> 0x51f1bd4 
0051f1bc0 	adrp	x0, #85950464 ; -> 0xa3e9000 
0051f1bc4 	ldr	x0, [x0, #1344]
0051f1bc8 	bl	#-12980584 ; -> 0x4590a60 
0051f1bcc 	mov	w8, #1
0051f1bd0 	strb	w8, [x22, #2740]
0051f1bd4 	ldr	x0, [x26]
0051f1bd8 	ldr	w8, [x0, #228]
0051f1bdc 	cbnz	w8, #8 ; -> 0x51f1be4 
0051f1be0 	bl	#-12980224 ; -> 0x4590be0 
0051f1be4 	adrp	x22, #94228480 ; -> 0xabce000 
0051f1be8 	ldrb	w8, [x22, #2741]
0051f1bec 	cbz	w8, #12 ; -> 0x51f1bf8 
0051f1bf0 	cbnz	x20, #32 ; -> 0x51f1c10 
0051f1bf4 	b	#124 ; -> 0x51f1c70 
0051f1bf8 	adrp	x0, #85950464 ; -> 0xa3e9000 
0051f1bfc 	ldr	x0, [x0, #1888]
0051f1c00 	bl	#-12980640 ; -> 0x4590a60 
0051f1c04 	mov	w8, #1
0051f1c08 	strb	w8, [x22, #2741]
0051f1c0c 	cbz	x20, #100 ; -> 0x51f1c70 
0051f1c10 	ldr	x8, [x20]
0051f1c14 	ldr	x1, [x27]
0051f1c18 	ldrh	w9, [x8, #302]
0051f1c1c 	cbz	x9, #36 ; -> 0x51f1c40 
0051f1c20 	ldr	x10, [x8, #176]
0051f1c24 	add	x10, x10, #8
0051f1c28 	ldur	x11, [x10, #-8]
0051f1c2c 	cmp	x11, x1
0051f1c30 	b.eq	#32 ; -> 0x51f1c50 
0051f1c34 	subs	x9, x9, #1
0051f1c38 	add	x10, x10, #16
0051f1c3c 	b.ne	#-20 ; -> 0x51f1c28 
0051f1c40 	mov	x0, x20
0051f1c44 	mov	w2, wzr
0051f1c48 	bl	#-12749284 ; -> 0x45c9264 
0051f1c4c 	b	#16 ; -> 0x51f1c5c 
0051f1c50 	ldrsw	x9, [x10]
0051f1c54 	add	x8, x8, x9, lsl #4
0051f1c58 	add	x0, x8, #312
0051f1c5c 	ldp	x8, x2, [x0]
0051f1c60 	mov	x0, x20
0051f1c64 	mov	w1, w21
0051f1c68 	blr	x8
0051f1c6c 	cbz	w0, #256 ; -> 0x51f1d6c 
0051f1c70 	adrp	x20, #94228480 ; -> 0xabce000 
0051f1c74 	ldrb	w8, [x20, #2742]
0051f1c78 	cbnz	w8, #24 ; -> 0x51f1c90 
0051f1c7c 	adrp	x0, #85950464 ; -> 0xa3e9000 
0051f1c80 	ldr	x0, [x0, #1888]
0051f1c84 	bl	#-12980772 ; -> 0x4590a60 
0051f1c88 	mov	w8, #1
0051f1c8c 	strb	w8, [x20, #2742]
0051f1c90 	ldr	x20, [sp, #16]
0051f1c94 	cbz	x20, #104 ; -> 0x51f1cfc 
0051f1c98 	ldr	x8, [x20]
0051f1c9c 	ldrh	w21, [sp, #24]
0051f1ca0 	ldr	x1, [x27]
0051f1ca4 	ldrh	w9, [x8, #302]
0051f1ca8 	cbz	x9, #36 ; -> 0x51f1ccc 
0051f1cac 	ldr	x10, [x8, #176]
0051f1cb0 	add	x10, x10, #8
0051f1cb4 	ldur	x11, [x10, #-8]
0051f1cb8 	cmp	x11, x1
0051f1cbc 	b.eq	#32 ; -> 0x51f1cdc 
0051f1cc0 	subs	x9, x9, #1
0051f1cc4 	add	x10, x10, #16
0051f1cc8 	b.ne	#-20 ; -> 0x51f1cb4 
0051f1ccc 	mov	x0, x20
0051f1cd0 	mov	w2, #2
0051f1cd4 	bl	#-12749424 ; -> 0x45c9264 
0051f1cd8 	b	#20 ; -> 0x51f1cec 
0051f1cdc 	ldr	w9, [x10]
0051f1ce0 	add	w9, w9, #2
0051f1ce4 	add	x8, x8, w9, sxtw #4
0051f1ce8 	add	x0, x8, #312
0051f1cec 	ldp	x8, x2, [x0]
0051f1cf0 	mov	x0, x20
0051f1cf4 	mov	w1, w21
0051f1cf8 	blr	x8
0051f1cfc 	ldr	x20, [x19, #48]
0051f1d00 	cbz	x20, #188 ; -> 0x51f1dbc 
0051f1d04 	ldrb	w8, [x20, #16]
0051f1d08 	cbnz	w8, #28 ; -> 0x51f1d24 
0051f1d0c 	ldr	w8, [x19, #56]
0051f1d10 	add	w9, w8, #1
0051f1d14 	cmp	w8, #3
0051f1d18 	str	w9, [x19, #56]
0051f1d1c 	b.lt	#-496 ; -> 0x51f1b2c 
0051f1d20 	b	#32 ; -> 0x51f1d40 
0051f1d24 	adrp	x8, #85979136 ; -> 0xa3f0000 
0051f1d28 	ldr	x8, [x8, #2048]
0051f1d2c 	ldr	x0, [x8]
0051f1d30 	ldr	w8, [x0, #228]
0051f1d34 	cbnz	w8, #8 ; -> 0x51f1d3c 
0051f1d38 	bl	#-12980568 ; -> 0x4590be0 
0051f1d3c 	bl	#-6744 ; -> 0x51f02e4 ServerPrefs::ResetAllDirtyFlag
0051f1d40 	mov	w8, #-2
0051f1d44 	mov	x20, x19
0051f1d48 	mov	x1, xzr
0051f1d4c 	str	xzr, [x19, #48]!
0051f1d50 	mov	x0, x19
0051f1d54 	str	w8, [x20], #8
0051f1d58 	bl	#-12981076 ; -> 0x4590a04 
0051f1d5c 	mov	x0, x20
0051f1d60 	mov	x1, xzr
0051f1d64 	bl	#62499168 ; -> 0x8d8c6c4 System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetResult
0051f1d68 	b	#56 ; -> 0x51f1da0 
0051f1d6c 	ldr	q0, [sp, #16]
0051f1d70 	str	wzr, [x19]
0051f1d74 	str	q0, [x19, #64]
0051f1d78 	add	x0, x19, #64
0051f1d7c 	mov	x1, xzr
0051f1d80 	bl	#-12981116 ; -> 0x4590a04 
0051f1d84 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1d88 	ldr	x8, [x8, #208]
0051f1d8c 	ldr	x3, [x8]
0051f1d90 	add	x0, x19, #8
0051f1d94 	add	x1, sp, #16
0051f1d98 	mov	x2, x19
0051f1d9c 	bl	#12770040 ; -> 0x5e1f894 
0051f1da0 	ldp	x20, x19, [sp, #112]
0051f1da4 	ldp	x22, x21, [sp, #96]
0051f1da8 	ldp	x24, x23, [sp, #80]
0051f1dac 	ldp	x26, x25, [sp, #64]
0051f1db0 	ldp	x30, x27, [sp, #48]
0051f1db4 	add	sp, sp, #128
0051f1db8 	ret
0051f1dbc 	bl	#-12980400 ; -> 0x4590d0c 
0051f1dc0 	bl	#-12980404 ; -> 0x4590d0c 
0051f1dc4 	bl	#-12980408 ; -> 0x4590d0c 
0051f1dc8 	b	#40 ; -> 0x51f1df0 
0051f1dcc 	b	#36 ; -> 0x51f1df0 
0051f1dd0 	b	#32 ; -> 0x51f1df0 
0051f1dd4 	b	#28 ; -> 0x51f1df0 
0051f1dd8 	b	#24 ; -> 0x51f1df0 
0051f1ddc 	b	#20 ; -> 0x51f1df0 
0051f1de0 	b	#16 ; -> 0x51f1df0 
0051f1de4 	b	#12 ; -> 0x51f1df0 
0051f1de8 	b	#8 ; -> 0x51f1df0 
0051f1dec 	b	#4 ; -> 0x51f1df0 
0051f1df0 	mov	x20, x0
0051f1df4 	cmp	w1, #1
0051f1df8 	b.ne	#160 ; -> 0x51f1e98 
0051f1dfc 	mov	x0, x20
0051f1e00 	bl	#79141504 ; -> 0x9d6b880 
0051f1e04 	mov	x20, x0
0051f1e08 	adrp	x0, #85942272 ; -> 0xa3e7000 
0051f1e0c 	ldr	x0, [x0, #3064]
0051f1e10 	bl	#-12981148 ; -> 0x4590a74 
0051f1e14 	ldr	x8, [x20]
0051f1e18 	ldr	x1, [x8]
0051f1e1c 	bl	#-12979464 ; -> 0x4591114 
0051f1e20 	tbz	w0, #0, #80 ; -> 0x51f1e70 
0051f1e24 	ldrsw	x21, [sp, #8]
0051f1e28 	ldr	x20, [x20]
0051f1e2c 	mov	x8, sp
0051f1e30 	str	x20, [x8, x21, lsl #3]
0051f1e34 	add	w8, w21, #1
0051f1e38 	str	w8, [sp, #8]
0051f1e3c 	bl	#79141460 ; -> 0x9d6b890 
0051f1e40 	mov	w8, #-2
0051f1e44 	mov	x0, x19
0051f1e48 	mov	x1, xzr
0051f1e4c 	str	w8, [x19]
0051f1e50 	str	xzr, [x0, #48]!
0051f1e54 	bl	#-12981328 ; -> 0x4590a04 
0051f1e58 	add	x0, x19, #8
0051f1e5c 	mov	x1, x20
0051f1e60 	mov	x2, xzr
0051f1e64 	bl	#62499280 ; -> 0x8d8c834 System.Runtime.CompilerServices.AsyncVoidMethodBuilder::SetException
0051f1e68 	str	w21, [sp, #8]
0051f1e6c 	b	#-204 ; -> 0x51f1da0 
0051f1e70 	mov	w0, #8
0051f1e74 	bl	#79141436 ; -> 0x9d6b8b0 
0051f1e78 	ldr	x8, [x20]
0051f1e7c 	str	x8, [x0]
0051f1e80 	adrp	x1, #79167488 ; -> 0x9d71000 
0051f1e84 	add	x1, x1, #3672
0051f1e88 	mov	x2, xzr
0051f1e8c 	bl	#79141428 ; -> 0x9d6b8c0 
0051f1e90 	mov	x20, x0
0051f1e94 	bl	#79141372 ; -> 0x9d6b890 
0051f1e98 	mov	x0, x20
0051f1e9c 	bl	#-11796096 ; -> 0x46b201c 
0051f1ea0 	bl	#-17651264 ; -> 0x411c860 
