004ef1a5c 	str	d10, [sp, #-112]!
004ef1a60 	stp	d9, d8, [sp, #8]
004ef1a64 	str	x29, [sp, #24]
004ef1a68 	stp	x30, x27, [sp, #32]
004ef1a6c 	stp	x26, x25, [sp, #48]
004ef1a70 	stp	x24, x23, [sp, #64]
004ef1a74 	stp	x22, x21, [sp, #80]
004ef1a78 	stp	x20, x19, [sp, #96]
004ef1a7c 	sub	sp, sp, #816
004ef1a80 	mrs	x24, TPIDR_EL0
004ef1a84 	adrp	x20, #97402880 ; -> 0xabd5000 
004ef1a88 	mov	x19, x0
004ef1a8c 	ldr	x8, [x24, #40]
004ef1a90 	add	x25, sp, #640
004ef1a94 	str	x8, [sp, #808]
004ef1a98 	ldrb	w8, [x20, #1451]
004ef1a9c 	tbnz	w8, #0, #84 ; -> 0x4ef1af0 
004ef1aa0 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1aa4 	ldr	x0, [x0, #2352]
004ef1aa8 	bl	#-9834568 ; -> 0x4590a60 
004ef1aac 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1ab0 	ldr	x0, [x0, #2360]
004ef1ab4 	bl	#-9834580 ; -> 0x4590a60 
004ef1ab8 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1abc 	ldr	x0, [x0, #2368]
004ef1ac0 	bl	#-9834592 ; -> 0x4590a60 
004ef1ac4 	adrp	x0, #89112576 ; -> 0xa3ed000 
004ef1ac8 	ldr	x0, [x0, #3016]
004ef1acc 	bl	#-9834604 ; -> 0x4590a60 
004ef1ad0 	adrp	x0, #89366528 ; -> 0xa42b000 
004ef1ad4 	ldr	x0, [x0, #2376]
004ef1ad8 	bl	#-9834616 ; -> 0x4590a60 
004ef1adc 	adrp	x0, #89124864 ; -> 0xa3f0000 
004ef1ae0 	ldr	x0, [x0, #1296]
004ef1ae4 	bl	#-9834628 ; -> 0x4590a60 
004ef1ae8 	mov	w8, #1
004ef1aec 	strb	w8, [x20, #1451]
004ef1af0 	movi	v0.2d, #0000000000000000
004ef1af4 	mov	w0, #2379
004ef1af8 	mov	x1, xzr
004ef1afc 	stur	q0, [x25, #143]
004ef1b00 	stp	q0, q0, [x25]
004ef1b04 	stp	q0, q0, [x25, #80]
004ef1b08 	stp	q0, q0, [x25, #112]
004ef1b0c 	stur	q0, [x25, #63]
004ef1b10 	stp	q0, q0, [x25, #32]
004ef1b14 	bl	#-2794864 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef1b18 	tbz	w0, #0, #84 ; -> 0x4ef1b6c 
004ef1b1c 	mov	w0, #2379
004ef1b20 	mov	x1, xzr
004ef1b24 	bl	#-2794700 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef1b28 	cbz	x0, #788 ; -> 0x4ef1e3c 
004ef1b2c 	ldr	x8, [x24, #40]
004ef1b30 	ldr	x9, [sp, #808]
004ef1b34 	cmp	x8, x9
004ef1b38 	b.ne	#792 ; -> 0x4ef1e50 
004ef1b3c 	mov	x1, x19
004ef1b40 	mov	x2, xzr
004ef1b44 	add	sp, sp, #816
004ef1b48 	ldp	x20, x19, [sp, #96]
004ef1b4c 	ldr	x29, [sp, #24]
004ef1b50 	ldp	x22, x21, [sp, #80]
004ef1b54 	ldp	x24, x23, [sp, #64]
004ef1b58 	ldp	x26, x25, [sp, #48]
004ef1b5c 	ldp	x30, x27, [sp, #32]
004ef1b60 	ldp	d9, d8, [sp, #8]
004ef1b64 	ldr	d10, [sp], #112
004ef1b68 	b	#-3600488 ; -> 0x4b82b00 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_91
004ef1b6c 	ldr	x8, [x19, #312]
004ef1b70 	cbz	x8, #716 ; -> 0x4ef1e3c 
004ef1b74 	mov	w9, #9952
004ef1b78 	add	x0, sp, #496
004ef1b7c 	mov	w2, #72
004ef1b80 	add	x1, x8, x9
004ef1b84 	bl	#82287980 ; -> 0x9d6b8f0 
004ef1b88 	add	x0, sp, #496
004ef1b8c 	mov	x1, xzr
004ef1b90 	bl	#-3800680 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef1b94 	ldr	x8, [x19, #312]
004ef1b98 	cbz	x8, #676 ; -> 0x4ef1e3c 
004ef1b9c 	mov	w9, #9224
004ef1ba0 	fmov	s8, s0
004ef1ba4 	add	x26, sp, #80
004ef1ba8 	add	x8, x8, x9
004ef1bac 	add	x0, sp, #432
004ef1bb0 	mov	x1, xzr
004ef1bb4 	ldp	q0, q1, [x8]
004ef1bb8 	stp	q0, q1, [x26, #352]
004ef1bbc 	ldp	q0, q2, [x8, #32]
004ef1bc0 	stp	q0, q2, [x26, #384]
004ef1bc4 	bl	#-3799156 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1bc8 	ldr	x8, [x19, #312]
004ef1bcc 	cbz	x8, #624 ; -> 0x4ef1e3c 
004ef1bd0 	mov	w9, #8456
004ef1bd4 	mov	w20, w0
004ef1bd8 	add	x0, sp, #360
004ef1bdc 	add	x1, x8, x9
004ef1be0 	mov	w2, #72
004ef1be4 	bl	#82287884 ; -> 0x9d6b8f0 
004ef1be8 	add	x0, sp, #360
004ef1bec 	mov	x1, xzr
004ef1bf0 	bl	#-3800776 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef1bf4 	ldr	x8, [x19, #312]
004ef1bf8 	cbz	x8, #580 ; -> 0x4ef1e3c 
004ef1bfc 	fmov	s9, s0
004ef1c00 	ldr	q0, [x8, #17072]
004ef1c04 	ldr	q1, [x8, #17088]
004ef1c08 	ldr	q2, [x8, #17104]
004ef1c0c 	add	x0, sp, #288
004ef1c10 	mov	x1, xzr
004ef1c14 	stp	q0, q1, [x26, #208]
004ef1c18 	ldr	q0, [x8, #17120]
004ef1c1c 	stp	q2, q0, [x26, #240]
004ef1c20 	bl	#-3799248 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1c24 	ldr	x8, [x19, #312]
004ef1c28 	cbz	x8, #532 ; -> 0x4ef1e3c 
004ef1c2c 	ldr	q0, [x8, #18064]
004ef1c30 	ldr	q1, [x8, #18080]
004ef1c34 	mov	w21, w0
004ef1c38 	ldr	q2, [x8, #18096]
004ef1c3c 	add	x0, sp, #224
004ef1c40 	mov	x1, xzr
004ef1c44 	stp	q0, q1, [x26, #144]
004ef1c48 	ldr	q0, [x8, #18112]
004ef1c4c 	stp	q2, q0, [x26, #176]
004ef1c50 	bl	#-3799296 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1c54 	ldr	x8, [x19, #312]
004ef1c58 	cbz	x8, #484 ; -> 0x4ef1e3c 
004ef1c5c 	mov	w9, #20760
004ef1c60 	mov	w22, w0
004ef1c64 	add	x0, sp, #160
004ef1c68 	add	x8, x8, x9
004ef1c6c 	mov	x1, xzr
004ef1c70 	ldp	q0, q1, [x8]
004ef1c74 	stp	q0, q1, [x26, #80]
004ef1c78 	ldp	q0, q2, [x8, #32]
004ef1c7c 	stp	q0, q2, [x26, #112]
004ef1c80 	bl	#-3799344 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1c84 	adrp	x27, #97378304 ; -> 0xabcf000 
004ef1c88 	mov	w23, w0
004ef1c8c 	ldrb	w8, [x27, #636]
004ef1c90 	cbnz	w8, #24 ; -> 0x4ef1ca8 
004ef1c94 	adrp	x0, #89120768 ; -> 0xa3ef000 
004ef1c98 	ldr	x0, [x0, #3328]
004ef1c9c 	bl	#-9835068 ; -> 0x4590a60 
004ef1ca0 	mov	w8, #1
004ef1ca4 	strb	w8, [x27, #636]
004ef1ca8 	adrp	x8, #89120768 ; -> 0xa3ef000 
004ef1cac 	ldr	x8, [x8, #3328]
004ef1cb0 	ldr	x8, [x8]
004ef1cb4 	ldr	x8, [x8, #184]
004ef1cb8 	ldr	x8, [x8]
004ef1cbc 	cbz	x8, #260 ; -> 0x4ef1dc0 
004ef1cc0 	ldr	x8, [x8, #104]
004ef1cc4 	cbz	x8, #376 ; -> 0x4ef1e3c 
004ef1cc8 	add	x0, sp, #568
004ef1ccc 	add	x1, x8, #496
004ef1cd0 	mov	w2, #72
004ef1cd4 	bl	#82287644 ; -> 0x9d6b8f0 
004ef1cd8 	movi	v0.2d, #0000000000000000
004ef1cdc 	adrp	x8, #89366528 ; -> 0xa42b000 
004ef1ce0 	add	x0, sp, #80
004ef1ce4 	add	x1, sp, #568
004ef1ce8 	add	x25, sp, #80
004ef1cec 	str	q0, [x26, #64]
004ef1cf0 	ldr	x8, [x8, #2368]
004ef1cf4 	stp	q0, q0, [sp, #80]
004ef1cf8 	stp	q0, q0, [sp, #112]
004ef1cfc 	ldr	x2, [x8]
004ef1d00 	bl	#34271976 ; -> 0x6fa0fe8 
004ef1d04 	ldrb	w26, [sp, #80]
004ef1d08 	add	x0, sp, #640
004ef1d0c 	orr	x1, x25, #0x1
004ef1d10 	mov	w2, #79
004ef1d14 	bl	#82287580 ; -> 0x9d6b8f0 
004ef1d18 	add	x0, sp, #720
004ef1d1c 	add	x1, sp, #640
004ef1d20 	mov	w2, #79
004ef1d24 	add	x25, sp, #720
004ef1d28 	bl	#82287560 ; -> 0x9d6b8f0 
004ef1d2c 	movi	d10, #0000000000000000
004ef1d30 	cbz	w26, #176 ; -> 0x4ef1de0 
004ef1d34 	add	x0, sp, #8
004ef1d38 	orr	x1, x25, #0x7
004ef1d3c 	mov	w2, #72
004ef1d40 	bl	#82287536 ; -> 0x9d6b8f0 
004ef1d44 	add	x0, sp, #8
004ef1d48 	mov	x1, xzr
004ef1d4c 	bl	#-3801124 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef1d50 	adrp	x25, #89112576 ; -> 0xa3ed000 
004ef1d54 	add	x0, sp, #80
004ef1d58 	ldr	x25, [x25, #3016]
004ef1d5c 	str	xzr, [sp, #80]
004ef1d60 	ldr	x1, [x25]
004ef1d64 	bl	#34273156 ; -> 0x6fa14e8 
004ef1d68 	ldr	x8, [sp, #80]
004ef1d6c 	tst	x8, #0xff
004ef1d70 	b.eq	#112 ; -> 0x4ef1de0 
004ef1d74 	scvtf	s0, w20
004ef1d78 	scvtf	s1, w21
004ef1d7c 	lsr	x8, x8, #32
004ef1d80 	ldr	x1, [x25]
004ef1d84 	add	x0, sp, #80
004ef1d88 	str	xzr, [sp, #80]
004ef1d8c 	fadd	s0, s8, s0
004ef1d90 	fadd	s0, s0, s9
004ef1d94 	fadd	s0, s0, s1
004ef1d98 	scvtf	s1, w22
004ef1d9c 	fadd	s0, s0, s1
004ef1da0 	scvtf	s1, w23
004ef1da4 	fadd	s0, s0, s1
004ef1da8 	fmov	s1, w8
004ef1dac 	fadd	s0, s0, s1
004ef1db0 	bl	#34273080 ; -> 0x6fa14e8 
004ef1db4 	ldr	s0, [sp, #84]
004ef1db8 	fcvt	d10, s0
004ef1dbc 	b	#36 ; -> 0x4ef1de0 
004ef1dc0 	movi	v0.2d, #0000000000000000
004ef1dc4 	movi	d10, #0000000000000000
004ef1dc8 	stur	q0, [x25, #63]
004ef1dcc 	stp	q0, q0, [x25]
004ef1dd0 	stp	q0, q0, [x25, #32]
004ef1dd4 	stp	q0, q0, [x25, #80]
004ef1dd8 	stp	q0, q0, [x25, #112]
004ef1ddc 	stur	q0, [x25, #143]
004ef1de0 	mov	x9, #9218868437227405312
004ef1de4 	fcvtzs	w8, d10
004ef1de8 	fmov	d0, x9
004ef1dec 	mov	w9, #100
004ef1df0 	movk	w9, #32768, lsl #16
004ef1df4 	fcmp	d10, d0
004ef1df8 	add	w8, w8, #100
004ef1dfc 	csel	w0, w9, w8, eq
004ef1e00 	str	w0, [x19, #1688]
004ef1e04 	ldr	x8, [x24, #40]
004ef1e08 	ldr	x9, [sp, #808]
004ef1e0c 	cmp	x8, x9
004ef1e10 	b.ne	#64 ; -> 0x4ef1e50 
004ef1e14 	add	sp, sp, #816
004ef1e18 	ldp	x20, x19, [sp, #96]
004ef1e1c 	ldr	x29, [sp, #24]
004ef1e20 	ldp	x22, x21, [sp, #80]
004ef1e24 	ldp	x24, x23, [sp, #64]
004ef1e28 	ldp	x26, x25, [sp, #48]
004ef1e2c 	ldp	x30, x27, [sp, #32]
004ef1e30 	ldp	d9, d8, [sp, #8]
004ef1e34 	ldr	d10, [sp], #112
004ef1e38 	ret
004ef1e3c 	ldr	x8, [x24, #40]
004ef1e40 	ldr	x9, [sp, #808]
004ef1e44 	cmp	x8, x9
004ef1e48 	b.ne	#8 ; -> 0x4ef1e50 
004ef1e4c 	bl	#-9834816 ; -> 0x4590d0c 
004ef1e50 	bl	#82287344 ; -> 0x9d6b940 
