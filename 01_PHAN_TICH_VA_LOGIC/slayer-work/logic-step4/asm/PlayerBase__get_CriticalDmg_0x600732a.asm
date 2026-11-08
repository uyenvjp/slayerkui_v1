004eefeec 	stp	d11, d10, [sp, #-96]!
004eefef0 	stp	d9, d8, [sp, #16]
004eefef4 	str	x29, [sp, #32]
004eefef8 	stp	x30, x23, [sp, #48]
004eefefc 	stp	x22, x21, [sp, #64]
004eeff00 	stp	x20, x19, [sp, #80]
004eeff04 	sub	sp, sp, #624
004eeff08 	mov	x20, x0
004eeff0c 	mov	w0, #1002
004eeff10 	mov	x1, xzr
004eeff14 	mov	x19, x8
004eeff18 	add	x23, sp, #224
004eeff1c 	bl	#-2787704 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eeff20 	tbz	w0, #0, #52 ; -> 0x4eeff54 
004eeff24 	mov	w0, #1002
004eeff28 	mov	x1, xzr
004eeff2c 	bl	#-2787540 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eeff30 	cbz	x0, #532 ; -> 0x4ef0144 
004eeff34 	add	x8, sp, #560
004eeff38 	mov	x1, x20
004eeff3c 	mov	x2, xzr
004eeff40 	bl	#-3585748 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eeff44 	ldp	q0, q1, [x23, #336]
004eeff48 	str	q0, [x19]
004eeff4c 	ldp	q0, q2, [x23, #368]
004eeff50 	b	#460 ; -> 0x4ef011c 
004eeff54 	ldr	x8, [x20, #312]
004eeff58 	cbz	x8, #492 ; -> 0x4ef0144 
004eeff5c 	ldr	q0, [x8, #4656]
004eeff60 	ldr	q1, [x8, #4672]
004eeff64 	add	x0, sp, #496
004eeff68 	ldr	q2, [x8, #4688]
004eeff6c 	mov	x1, xzr
004eeff70 	stp	q0, q1, [x23, #272]
004eeff74 	ldr	q0, [x8, #4704]
004eeff78 	stp	q2, q0, [x23, #304]
004eeff7c 	bl	#-3791916 ; -> 0x4b52350 SilentInt::op_Implicit
004eeff80 	ldr	x8, [x20, #312]
004eeff84 	cbz	x8, #448 ; -> 0x4ef0144 
004eeff88 	ldr	q0, [x8, #5136]
004eeff8c 	ldr	q1, [x8, #5152]
004eeff90 	mov	w21, w0
004eeff94 	ldr	q2, [x8, #5168]
004eeff98 	add	x0, sp, #432
004eeff9c 	mov	x1, xzr
004eeffa0 	stp	q0, q1, [x23, #208]
004eeffa4 	ldr	q0, [x8, #5184]
004eeffa8 	stp	q2, q0, [x23, #240]
004eeffac 	bl	#-3791964 ; -> 0x4b52350 SilentInt::op_Implicit
004eeffb0 	ldr	x8, [x20, #312]
004eeffb4 	cbz	x8, #400 ; -> 0x4ef0144 
004eeffb8 	mov	w22, w0
004eeffbc 	add	x0, sp, #360
004eeffc0 	add	x1, x8, #2496
004eeffc4 	mov	w2, #72
004eeffc8 	bl	#82295080 ; -> 0x9d6b8f0 
004eeffcc 	add	x0, sp, #360
004eeffd0 	mov	x1, xzr
004eeffd4 	bl	#-3793580 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeffd8 	ldr	x8, [x20, #312]
004eeffdc 	cbz	x8, #360 ; -> 0x4ef0144 
004eeffe0 	mov	w9, #5648
004eeffe4 	add	x0, sp, #288
004eeffe8 	mov	w2, #72
004eeffec 	add	x1, x8, x9
004eefff0 	fmov	s8, s0
004eefff4 	bl	#82295036 ; -> 0x9d6b8f0 
004eefff8 	add	x0, sp, #288
004eefffc 	mov	x1, xzr
004ef0000 	bl	#-3793624 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef0004 	ldr	x8, [x20, #312]
004ef0008 	cbz	x8, #316 ; -> 0x4ef0144 
004ef000c 	mov	w9, #9096
004ef0010 	fmov	s9, s0
004ef0014 	add	x0, sp, #224
004ef0018 	add	x8, x8, x9
004ef001c 	mov	x1, xzr
004ef0020 	ldp	q0, q1, [x8]
004ef0024 	stp	q0, q1, [x23]
004ef0028 	ldp	q0, q2, [x8, #32]
004ef002c 	stp	q0, q2, [x23, #32]
004ef0030 	bl	#-3792096 ; -> 0x4b52350 SilentInt::op_Implicit
004ef0034 	ldr	x8, [x20, #312]
004ef0038 	cbz	x8, #268 ; -> 0x4ef0144 
004ef003c 	mov	w9, #8312
004ef0040 	mov	w23, w0
004ef0044 	add	x0, sp, #152
004ef0048 	add	x1, x8, x9
004ef004c 	mov	w2, #72
004ef0050 	bl	#82294944 ; -> 0x9d6b8f0 
004ef0054 	add	x0, sp, #152
004ef0058 	mov	x1, xzr
004ef005c 	bl	#-3793716 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef0060 	ldr	x8, [x20, #312]
004ef0064 	cbz	x8, #224 ; -> 0x4ef0144 
004ef0068 	mov	w9, #19960
004ef006c 	add	x0, sp, #80
004ef0070 	mov	w2, #72
004ef0074 	add	x1, x8, x9
004ef0078 	fmov	s10, s0
004ef007c 	bl	#82294900 ; -> 0x9d6b8f0 
004ef0080 	add	x0, sp, #80
004ef0084 	mov	x1, xzr
004ef0088 	bl	#-3793760 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef008c 	mov	x0, xzr
004ef0090 	fmov	s11, s0
004ef0094 	bl	#4337372 ; -> 0x5312f70 SkillGrindingDataManager::get_Instance
004ef0098 	cbz	x0, #172 ; -> 0x4ef0144 
004ef009c 	mov	x8, x0
004ef00a0 	add	x0, sp, #8
004ef00a4 	mov	w2, #72
004ef00a8 	add	x1, x8, #208
004ef00ac 	add	x20, x20, #1328
004ef00b0 	bl	#82294848 ; -> 0x9d6b8f0 
004ef00b4 	add	x0, sp, #8
004ef00b8 	mov	x1, xzr
004ef00bc 	bl	#-3793812 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef00c0 	add	w8, w22, w21
004ef00c4 	scvtf	s2, w23
004ef00c8 	mov	w9, #2139095040
004ef00cc 	scvtf	s1, w8
004ef00d0 	mov	x0, x20
004ef00d4 	mov	x2, xzr
004ef00d8 	fadd	s1, s8, s1
004ef00dc 	fadd	s1, s1, s9
004ef00e0 	fadd	s1, s1, s2
004ef00e4 	fadd	s1, s1, s10
004ef00e8 	fadd	s1, s1, s11
004ef00ec 	fadd	s0, s1, s0
004ef00f0 	fmov	s1, w9
004ef00f4 	mov	x9, #100
004ef00f8 	movk	x9, #32768, lsl #48
004ef00fc 	fcvtzs	x8, s0
004ef0100 	fcmp	s0, s1
004ef0104 	add	x8, x8, #100
004ef0108 	csel	x1, x9, x8, eq
004ef010c 	bl	#-3791216 ; -> 0x4b5279c SilentLong::set_Value
004ef0110 	ldp	q0, q1, [x20]
004ef0114 	str	q0, [x19]
004ef0118 	ldp	q0, q2, [x20, #32]
004ef011c 	stp	q1, q0, [x19, #16]
004ef0120 	str	q2, [x19, #48]
004ef0124 	add	sp, sp, #624
004ef0128 	ldp	x20, x19, [sp, #80]
004ef012c 	ldr	x29, [sp, #32]
004ef0130 	ldp	x22, x21, [sp, #64]
004ef0134 	ldp	x30, x23, [sp, #48]
004ef0138 	ldp	d9, d8, [sp, #16]
004ef013c 	ldp	d11, d10, [sp], #96
004ef0140 	ret
004ef0144 	bl	#-9827384 ; -> 0x4590d0c 
