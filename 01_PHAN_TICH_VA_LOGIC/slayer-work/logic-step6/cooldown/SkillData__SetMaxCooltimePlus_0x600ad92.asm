005305b90 	sub	sp, sp, #208
005305b94 	str	d10, [sp, #144]
005305b98 	stp	d9, d8, [sp, #160]
005305b9c 	stp	x30, x21, [sp, #176]
005305ba0 	stp	x20, x19, [sp, #192]
005305ba4 	adrp	x20, #93134848 ; -> 0xabd7000 
005305ba8 	mov	x19, x0
005305bac 	ldrb	w8, [x20, #1016]
005305bb0 	tbnz	w8, #0, #48 ; -> 0x5305be0 
005305bb4 	adrp	x0, #84819968 ; -> 0xa3e9000 
005305bb8 	ldr	x0, [x0, #1384]
005305bbc 	bl	#-14111068 ; -> 0x4590a60 
005305bc0 	adrp	x0, #85123072 ; -> 0xa433000 
005305bc4 	ldr	x0, [x0, #1552]
005305bc8 	bl	#-14111080 ; -> 0x4590a60 
005305bcc 	adrp	x0, #85168128 ; -> 0xa43e000 
005305bd0 	ldr	x0, [x0, #3896]
005305bd4 	bl	#-14111092 ; -> 0x4590a60 
005305bd8 	mov	w8, #1
005305bdc 	strb	w8, [x20, #1016]
005305be0 	mov	w0, #6946
005305be4 	mov	x1, xzr
005305be8 	str	xzr, [sp, #152]
005305bec 	bl	#-7071304 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005305bf0 	tbz	w0, #0, #52 ; -> 0x5305c24 
005305bf4 	mov	w0, #6946
005305bf8 	mov	x1, xzr
005305bfc 	bl	#-7071140 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005305c00 	cbz	x0, #620 ; -> 0x5305e6c 
005305c04 	mov	x1, x19
005305c08 	ldp	x20, x19, [sp, #192]
005305c0c 	ldp	x30, x21, [sp, #176]
005305c10 	mov	x2, xzr
005305c14 	ldp	d9, d8, [sp, #160]
005305c18 	ldr	d10, [sp, #144]
005305c1c 	add	sp, sp, #208
005305c20 	b	#-7894784 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005305c24 	ldrb	w8, [x19, #312]
005305c28 	cbz	w8, #416 ; -> 0x5305dc8 
005305c2c 	add	x0, x19, #96
005305c30 	mov	x1, xzr
005305c34 	strb	wzr, [x19, #312]
005305c38 	bl	#-8078660 ; -> 0x4b516f4 SilentFloat::get_Value
005305c3c 	ldr	x8, [x19, #32]
005305c40 	cbz	x8, #556 ; -> 0x5305e6c 
005305c44 	fmov	s8, s0
005305c48 	ldr	w8, [x8, #148]
005305c4c 	cbz	w8, #404 ; -> 0x5305de0 
005305c50 	adrp	x20, #93118464 ; -> 0xabd3000 
005305c54 	ldrb	w8, [x20, #1983]
005305c58 	cbnz	w8, #24 ; -> 0x5305c70 
005305c5c 	adrp	x0, #85004288 ; -> 0xa416000 
005305c60 	ldr	x0, [x0, #296]
005305c64 	bl	#-14111236 ; -> 0x4590a60 
005305c68 	mov	w8, #1
005305c6c 	strb	w8, [x20, #1983]
005305c70 	adrp	x8, #85004288 ; -> 0xa416000 
005305c74 	ldr	x8, [x8, #296]
005305c78 	ldr	x8, [x8]
005305c7c 	ldr	x8, [x8, #184]
005305c80 	ldr	x8, [x8]
005305c84 	cbz	x8, #488 ; -> 0x5305e6c 
005305c88 	ldr	x0, [x8, #32]
005305c8c 	cbz	x0, #480 ; -> 0x5305e6c 
005305c90 	mov	x1, xzr
005305c94 	bl	#55500 ; -> 0x5313560 SkillGrindingDataManager::get_SkillGrindingOptionValue_Dic
005305c98 	ldr	x8, [x19, #32]
005305c9c 	cbz	x8, #464 ; -> 0x5305e6c 
005305ca0 	cbz	x0, #460 ; -> 0x5305e6c 
005305ca4 	adrp	x9, #85123072 ; -> 0xa433000 
005305ca8 	add	x2, sp, #152
005305cac 	ldr	x9, [x9, #1552]
005305cb0 	ldr	w1, [x8, #16]
005305cb4 	ldr	x3, [x9]
005305cb8 	bl	#47531608 ; -> 0x805a310 
005305cbc 	movi	d10, #0000000000000000
005305cc0 	adrp	x20, #-54378496 ; -> 0x1f29000 
005305cc4 	tbz	w0, #0, #60 ; -> 0x5305d00 
005305cc8 	ldr	x0, [sp, #152]
005305ccc 	cbz	x0, #416 ; -> 0x5305e6c 
005305cd0 	add	x8, sp, #72
005305cd4 	mov	x1, xzr
005305cd8 	bl	#51956 ; -> 0x53127cc SkillGrindingOptionValue::get_SkillCoolTimePercent
005305cdc 	mov	x0, sp
005305ce0 	add	x1, sp, #72
005305ce4 	mov	w2, #72
005305ce8 	bl	#78011400 ; -> 0x9d6b8f0 
005305cec 	mov	x0, sp
005305cf0 	mov	x1, xzr
005305cf4 	bl	#-8077260 ; -> 0x4b51d28 SilentFloat::op_Implicit
005305cf8 	ldr	s1, [x20, #1688]
005305cfc 	fmul	s10, s0, s1
005305d00 	adrp	x21, #84819968 ; -> 0xa3e9000 
005305d04 	ldr	x21, [x21, #1384]
005305d08 	ldr	x0, [x21]
005305d0c 	ldr	w8, [x0, #228]
005305d10 	cbnz	w8, #12 ; -> 0x5305d1c 
005305d14 	bl	#-14111028 ; -> 0x4590be0 
005305d18 	ldr	x0, [x21]
005305d1c 	ldr	x8, [x19, #32]
005305d20 	cbz	x8, #332 ; -> 0x5305e6c 
005305d24 	ldr	x9, [x0, #184]
005305d28 	ldr	x0, [x9, #256]
005305d2c 	cbz	x0, #320 ; -> 0x5305e6c 
005305d30 	adrp	x9, #85168128 ; -> 0xa43e000 
005305d34 	ldr	x9, [x9, #3896]
005305d38 	ldr	w1, [x8, #148]
005305d3c 	ldr	x2, [x9]
005305d40 	bl	#48090296 ; -> 0x80e29f8 
005305d44 	fmov	s9, s0
005305d48 	adrp	x21, #93102080 ; -> 0xabcf000 
005305d4c 	ldrb	w8, [x21, #636]
005305d50 	cbnz	w8, #24 ; -> 0x5305d68 
005305d54 	adrp	x0, #84844544 ; -> 0xa3ef000 
005305d58 	ldr	x0, [x0, #3328]
005305d5c 	bl	#-14111484 ; -> 0x4590a60 
005305d60 	mov	w8, #1
005305d64 	strb	w8, [x21, #636]
005305d68 	adrp	x8, #84844544 ; -> 0xa3ef000 
005305d6c 	ldr	x8, [x8, #3328]
005305d70 	ldr	x8, [x8]
005305d74 	ldr	x8, [x8, #184]
005305d78 	ldr	x8, [x8]
005305d7c 	cbz	x8, #240 ; -> 0x5305e6c 
005305d80 	ldr	x0, [x8, #48]
005305d84 	cbz	x0, #232 ; -> 0x5305e6c 
005305d88 	mov	x1, xzr
005305d8c 	bl	#-2801620 ; -> 0x5059db8 DragonValleyManager_Hunt::get_SkillCoolTimePercent
005305d90 	fadd	s0, s9, s0
005305d94 	ldr	s1, [x20, #1688]
005305d98 	adrp	x8, #-54378496 ; -> 0x1f29000 
005305d9c 	add	x0, x19, #168
005305da0 	mov	x1, xzr
005305da4 	fmul	s0, s0, s1
005305da8 	fmul	s0, s8, s0
005305dac 	fadd	s0, s8, s0
005305db0 	fmul	s1, s10, s0
005305db4 	fsub	s0, s0, s1
005305db8 	ldr	s1, [x8, #2100]
005305dbc 	fcmp	s0, #0.0
005305dc0 	fcsel	s0, s0, s1, hi
005305dc4 	bl	#-8077836 ; -> 0x4b51bb8 SilentFloat::set_Value
005305dc8 	ldp	x20, x19, [sp, #192]
005305dcc 	ldr	d10, [sp, #144]
005305dd0 	ldp	x30, x21, [sp, #176]
005305dd4 	ldp	d9, d8, [sp, #160]
005305dd8 	add	sp, sp, #208
005305ddc 	ret
005305de0 	adrp	x20, #93102080 ; -> 0xabcf000 
005305de4 	ldrb	w8, [x20, #636]
005305de8 	cbnz	w8, #24 ; -> 0x5305e00 
005305dec 	adrp	x0, #84844544 ; -> 0xa3ef000 
005305df0 	ldr	x0, [x0, #3328]
005305df4 	bl	#-14111636 ; -> 0x4590a60 
005305df8 	mov	w8, #1
005305dfc 	strb	w8, [x20, #636]
005305e00 	adrp	x8, #84844544 ; -> 0xa3ef000 
005305e04 	ldr	x8, [x8, #3328]
005305e08 	ldr	x8, [x8]
005305e0c 	ldr	x8, [x8, #184]
005305e10 	ldr	x8, [x8]
005305e14 	cbz	x8, #88 ; -> 0x5305e6c 
005305e18 	ldr	x0, [x8, #48]
005305e1c 	cbz	x0, #80 ; -> 0x5305e6c 
005305e20 	mov	x1, xzr
005305e24 	bl	#-2801772 ; -> 0x5059db8 DragonValleyManager_Hunt::get_SkillCoolTimePercent
005305e28 	adrp	x8, #-54378496 ; -> 0x1f29000 
005305e2c 	add	x0, x19, #240
005305e30 	ldr	d10, [sp, #144]
005305e34 	ldr	s1, [x8, #1688]
005305e38 	adrp	x8, #-54378496 ; -> 0x1f29000 
005305e3c 	mov	x1, xzr
005305e40 	ldp	x20, x19, [sp, #192]
005305e44 	fmul	s0, s0, s1
005305e48 	ldr	s1, [x8, #2100]
005305e4c 	ldp	x30, x21, [sp, #176]
005305e50 	fmul	s0, s8, s0
005305e54 	fadd	s0, s8, s0
005305e58 	ldp	d9, d8, [sp, #160]
005305e5c 	fcmp	s0, #0.0
005305e60 	fcsel	s0, s0, s1, hi
005305e64 	add	sp, sp, #208
005305e68 	b	#-8078000 ; -> 0x4b51bb8 SilentFloat::set_Value
005305e6c 	bl	#-14111072 ; -> 0x4590d0c 
