004ef0d74 	str	d10, [sp, #-96]!
004ef0d78 	stp	d9, d8, [sp, #16]
004ef0d7c 	stp	x29, x30, [sp, #32]
004ef0d80 	stp	x24, x23, [sp, #48]
004ef0d84 	stp	x22, x21, [sp, #64]
004ef0d88 	stp	x20, x19, [sp, #80]
004ef0d8c 	sub	sp, sp, #480
004ef0d90 	adrp	x20, #97406976 ; -> 0xabd5000 
004ef0d94 	mov	x19, x0
004ef0d98 	ldrb	w8, [x20, #1447]
004ef0d9c 	tbnz	w8, #0, #24 ; -> 0x4ef0db4 
004ef0da0 	adrp	x0, #89100288 ; -> 0xa3e9000 
004ef0da4 	ldr	x0, [x0, #1384]
004ef0da8 	bl	#-9831240 ; -> 0x4590a60 
004ef0dac 	mov	w8, #1
004ef0db0 	strb	w8, [x20, #1447]
004ef0db4 	mov	w0, #2366
004ef0db8 	mov	x1, xzr
004ef0dbc 	bl	#-2791448 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef0dc0 	tbz	w0, #0, #60 ; -> 0x4ef0dfc 
004ef0dc4 	mov	w0, #2366
004ef0dc8 	mov	x1, xzr
004ef0dcc 	bl	#-2791284 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef0dd0 	cbz	x0, #544 ; -> 0x4ef0ff0 
004ef0dd4 	mov	x1, x19
004ef0dd8 	mov	x2, xzr
004ef0ddc 	add	sp, sp, #480
004ef0de0 	ldp	x20, x19, [sp, #80]
004ef0de4 	ldp	x22, x21, [sp, #64]
004ef0de8 	ldp	x24, x23, [sp, #48]
004ef0dec 	ldp	x29, x30, [sp, #32]
004ef0df0 	ldp	d9, d8, [sp, #16]
004ef0df4 	ldr	d10, [sp], #96
004ef0df8 	b	#-3594228 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
004ef0dfc 	ldr	x8, [x19, #312]
004ef0e00 	cbz	x8, #496 ; -> 0x4ef0ff0 
004ef0e04 	ldr	q0, [x8, #4528]
004ef0e08 	ldr	q1, [x8, #4544]
004ef0e0c 	add	x0, sp, #416
004ef0e10 	ldr	q2, [x8, #4560]
004ef0e14 	mov	x1, xzr
004ef0e18 	stp	q0, q1, [sp, #416]
004ef0e1c 	ldr	q0, [x8, #4576]
004ef0e20 	stp	q2, q0, [sp, #448]
004ef0e24 	bl	#-3795668 ; -> 0x4b52350 SilentInt::op_Implicit
004ef0e28 	ldr	x8, [x19, #312]
004ef0e2c 	cbz	x8, #452 ; -> 0x4ef0ff0 
004ef0e30 	ldr	q0, [x8, #5008]
004ef0e34 	ldr	q1, [x8, #5024]
004ef0e38 	mov	w20, w0
004ef0e3c 	ldr	q2, [x8, #5040]
004ef0e40 	add	x0, sp, #352
004ef0e44 	mov	x1, xzr
004ef0e48 	stp	q0, q1, [sp, #352]
004ef0e4c 	ldr	q0, [x8, #5056]
004ef0e50 	stp	q2, q0, [sp, #384]
004ef0e54 	bl	#-3794260 ; -> 0x4b52900 SilentLong::op_Implicit
004ef0e58 	ldr	x8, [x19, #312]
004ef0e5c 	cbz	x8, #404 ; -> 0x4ef0ff0 
004ef0e60 	add	x8, x8, #1240
004ef0e64 	mov	x21, x0
004ef0e68 	add	x0, sp, #288
004ef0e6c 	ldp	q0, q1, [x8]
004ef0e70 	mov	x1, xzr
004ef0e74 	stp	q0, q1, [sp, #288]
004ef0e78 	ldp	q0, q2, [x8, #32]
004ef0e7c 	stp	q0, q2, [sp, #320]
004ef0e80 	bl	#-3794304 ; -> 0x4b52900 SilentLong::op_Implicit
004ef0e84 	ldr	x8, [x19, #312]
004ef0e88 	cbz	x8, #360 ; -> 0x4ef0ff0 
004ef0e8c 	mov	w9, #19816
004ef0e90 	mov	x22, x0
004ef0e94 	add	x0, sp, #216
004ef0e98 	add	x1, x8, x9
004ef0e9c 	mov	w2, #72
004ef0ea0 	bl	#82291280 ; -> 0x9d6b8f0 
004ef0ea4 	add	x0, sp, #216
004ef0ea8 	mov	x1, xzr
004ef0eac 	bl	#-3797380 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef0eb0 	ldr	x8, [x19, #312]
004ef0eb4 	cbz	x8, #316 ; -> 0x4ef0ff0 
004ef0eb8 	add	x8, x8, #1896
004ef0ebc 	fmov	s8, s0
004ef0ec0 	add	x0, sp, #144
004ef0ec4 	ldp	q0, q1, [x8]
004ef0ec8 	mov	x1, xzr
004ef0ecc 	stp	q0, q1, [sp, #144]
004ef0ed0 	ldp	q0, q2, [x8, #32]
004ef0ed4 	stp	q0, q2, [sp, #176]
004ef0ed8 	bl	#-3795848 ; -> 0x4b52350 SilentInt::op_Implicit
004ef0edc 	mov	w23, w0
004ef0ee0 	mov	x0, xzr
004ef0ee4 	bl	#4333708 ; -> 0x5312f70 SkillGrindingDataManager::get_Instance
004ef0ee8 	cbz	x0, #264 ; -> 0x4ef0ff0 
004ef0eec 	mov	x8, x0
004ef0ef0 	add	x0, sp, #72
004ef0ef4 	mov	w2, #72
004ef0ef8 	add	x1, x8, #136
004ef0efc 	bl	#82291188 ; -> 0x9d6b8f0 
004ef0f00 	add	x0, sp, #72
004ef0f04 	mov	x1, xzr
004ef0f08 	bl	#-3797472 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef0f0c 	mov	x0, xzr
004ef0f10 	fmov	s9, s0
004ef0f14 	bl	#5263048 ; -> 0x53f5ddc WishDataManager::get_Instance
004ef0f18 	cbz	x0, #216 ; -> 0x4ef0ff0 
004ef0f1c 	mov	w1, #2
004ef0f20 	mov	x2, xzr
004ef0f24 	bl	#5272836 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004ef0f28 	adrp	x24, #89100288 ; -> 0xa3e9000 
004ef0f2c 	fmov	s10, s0
004ef0f30 	ldr	x24, [x24, #1384]
004ef0f34 	ldr	x0, [x24]
004ef0f38 	ldr	w8, [x0, #228]
004ef0f3c 	cbnz	w8, #12 ; -> 0x4ef0f48 
004ef0f40 	bl	#-9831264 ; -> 0x4590be0 
004ef0f44 	ldr	x0, [x24]
004ef0f48 	ldr	x8, [x0, #184]
004ef0f4c 	ldr	x8, [x8]
004ef0f50 	cbz	x8, #160 ; -> 0x4ef0ff0 
004ef0f54 	ldr	q0, [x8, #21920]
004ef0f58 	ldr	q1, [x8, #21936]
004ef0f5c 	add	x9, x21, w20, sxtw
004ef0f60 	ldr	q2, [x8, #21952]
004ef0f64 	mov	x0, sp
004ef0f68 	mov	x1, xzr
004ef0f6c 	stp	q0, q1, [sp]
004ef0f70 	ldr	q0, [x8, #21968]
004ef0f74 	add	x20, x9, x22
004ef0f78 	stp	q2, q0, [sp, #32]
004ef0f7c 	bl	#-3796012 ; -> 0x4b52350 SilentInt::op_Implicit
004ef0f80 	mov	w8, #1120403456
004ef0f84 	scvtf	s2, w23
004ef0f88 	fmov	s0, w8
004ef0f8c 	mov	x8, #9218868437227405312
004ef0f90 	fadd	s1, s8, s0
004ef0f94 	fadd	s1, s1, s2
004ef0f98 	scvtf	s2, w0
004ef0f9c 	fadd	s1, s1, s9
004ef0fa0 	fadd	s1, s1, s10
004ef0fa4 	fadd	s1, s1, s2
004ef0fa8 	fdiv	s0, s1, s0
004ef0fac 	scvtf	d1, x20
004ef0fb0 	fcvt	d0, s0
004ef0fb4 	fmul	d0, d1, d0
004ef0fb8 	fmov	d1, x8
004ef0fbc 	mov	x8, #-9223372036854775808
004ef0fc0 	fcvtzs	x9, d0
004ef0fc4 	fcmp	d0, d1
004ef0fc8 	csel	x0, x8, x9, eq
004ef0fcc 	str	x0, [x19, #1648]
004ef0fd0 	add	sp, sp, #480
004ef0fd4 	ldp	x20, x19, [sp, #80]
004ef0fd8 	ldp	x22, x21, [sp, #64]
004ef0fdc 	ldp	x24, x23, [sp, #48]
004ef0fe0 	ldp	x29, x30, [sp, #32]
004ef0fe4 	ldp	d9, d8, [sp, #16]
004ef0fe8 	ldr	d10, [sp], #96
004ef0fec 	ret
004ef0ff0 	bl	#-9831140 ; -> 0x4590d0c 
