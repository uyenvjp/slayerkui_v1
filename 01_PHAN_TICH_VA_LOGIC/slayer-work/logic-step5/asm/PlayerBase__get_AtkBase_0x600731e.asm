004eeef44 	stp	d11, d10, [sp, #-112]!
004eeef48 	stp	d9, d8, [sp, #16]
004eeef4c 	stp	x29, x30, [sp, #32]
004eeef50 	stp	x26, x25, [sp, #48]
004eeef54 	stp	x24, x23, [sp, #64]
004eeef58 	stp	x22, x21, [sp, #80]
004eeef5c 	stp	x20, x19, [sp, #96]
004eeef60 	sub	sp, sp, #688
004eeef64 	adrp	x21, #97415168 ; -> 0xabd5000 
004eeef68 	mov	x20, x0
004eeef6c 	mov	x19, x8
004eeef70 	ldrb	w9, [x21, #1439]
004eeef74 	tbnz	w9, #0, #24 ; -> 0x4eeef8c 
004eeef78 	adrp	x0, #89108480 ; -> 0xa3e9000 
004eeef7c 	ldr	x0, [x0, #1384]
004eeef80 	bl	#-9823520 ; -> 0x4590a60 
004eeef84 	mov	w8, #1
004eeef88 	strb	w8, [x21, #1439]
004eeef8c 	mov	w0, #4399
004eeef90 	mov	x1, xzr
004eeef94 	add	x25, sp, #144
004eeef98 	bl	#-2783732 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eeef9c 	tbz	w0, #0, #52 ; -> 0x4eeefd0 
004eeefa0 	mov	w0, #4399
004eeefa4 	mov	x1, xzr
004eeefa8 	bl	#-2783568 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eeefac 	cbz	x0, #724 ; -> 0x4eef280 
004eeefb0 	add	x8, sp, #624
004eeefb4 	mov	x1, x20
004eeefb8 	mov	x2, xzr
004eeefbc 	bl	#-3581776 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eeefc0 	ldp	q0, q1, [x25, #480]
004eeefc4 	str	q0, [x19]
004eeefc8 	ldp	q0, q2, [x25, #512]
004eeefcc 	b	#648 ; -> 0x4eef254 
004eeefd0 	ldr	x8, [x20, #312]
004eeefd4 	cbz	x8, #684 ; -> 0x4eef280 
004eeefd8 	ldr	q0, [x8, #4464]
004eeefdc 	ldr	q1, [x8, #4480]
004eeefe0 	add	x0, sp, #560
004eeefe4 	ldr	q2, [x8, #4496]
004eeefe8 	mov	x1, xzr
004eeefec 	stp	q0, q1, [x25, #416]
004eeeff0 	ldr	q0, [x8, #4512]
004eeeff4 	stp	q2, q0, [x25, #448]
004eeeff8 	bl	#-3787944 ; -> 0x4b52350 SilentInt::op_Implicit
004eeeffc 	ldr	x8, [x20, #312]
004eef000 	cbz	x8, #640 ; -> 0x4eef280 
004eef004 	ldr	q0, [x8, #4944]
004eef008 	ldr	q1, [x8, #4960]
004eef00c 	mov	w21, w0
004eef010 	ldr	q2, [x8, #4976]
004eef014 	add	x0, sp, #496
004eef018 	mov	x1, xzr
004eef01c 	stp	q0, q1, [x25, #352]
004eef020 	ldr	q0, [x8, #4992]
004eef024 	stp	q2, q0, [x25, #384]
004eef028 	bl	#-3786536 ; -> 0x4b52900 SilentLong::op_Implicit
004eef02c 	ldr	x8, [x20, #312]
004eef030 	cbz	x8, #592 ; -> 0x4eef280 
004eef034 	add	x8, x8, #1176
004eef038 	mov	x22, x0
004eef03c 	add	x0, sp, #432
004eef040 	ldp	q0, q1, [x8]
004eef044 	mov	x1, xzr
004eef048 	stp	q0, q1, [x25, #288]
004eef04c 	ldp	q0, q2, [x8, #32]
004eef050 	stp	q0, q2, [x25, #320]
004eef054 	bl	#-3786580 ; -> 0x4b52900 SilentLong::op_Implicit
004eef058 	ldr	x8, [x20, #312]
004eef05c 	cbz	x8, #548 ; -> 0x4eef280 
004eef060 	mov	w9, #19744
004eef064 	mov	x23, x0
004eef068 	add	x0, sp, #360
004eef06c 	add	x1, x8, x9
004eef070 	mov	w2, #72
004eef074 	bl	#82299004 ; -> 0x9d6b8f0 
004eef078 	add	x0, sp, #360
004eef07c 	mov	x1, xzr
004eef080 	bl	#-3789656 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef084 	ldr	x8, [x20, #312]
004eef088 	cbz	x8, #504 ; -> 0x4eef280 
004eef08c 	add	x8, x8, #1832
004eef090 	fmov	s8, s0
004eef094 	add	x0, sp, #288
004eef098 	ldp	q0, q1, [x8]
004eef09c 	mov	x1, xzr
004eef0a0 	stp	q0, q1, [x25, #144]
004eef0a4 	ldp	q0, q2, [x8, #32]
004eef0a8 	stp	q0, q2, [x25, #176]
004eef0ac 	bl	#-3788124 ; -> 0x4b52350 SilentInt::op_Implicit
004eef0b0 	mov	w24, w0
004eef0b4 	mov	x0, xzr
004eef0b8 	bl	#4341432 ; -> 0x5312f70 SkillGrindingDataManager::get_Instance
004eef0bc 	cbz	x0, #452 ; -> 0x4eef280 
004eef0c0 	mov	x8, x0
004eef0c4 	add	x0, sp, #216
004eef0c8 	mov	w2, #72
004eef0cc 	add	x1, x8, #64
004eef0d0 	bl	#82298928 ; -> 0x9d6b900 
004eef0d4 	add	x0, sp, #216
004eef0d8 	mov	x1, xzr
004eef0dc 	bl	#-3789748 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef0e0 	mov	x0, xzr
004eef0e4 	fmov	s9, s0
004eef0e8 	bl	#5270772 ; -> 0x53f5ddc WishDataManager::get_Instance
004eef0ec 	cbz	x0, #404 ; -> 0x4eef280 
004eef0f0 	mov	w1, #1
004eef0f4 	mov	x2, xzr
004eef0f8 	bl	#5280560 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004eef0fc 	adrp	x26, #89104384 ; -> 0xa3e9000 
004eef100 	fmov	s10, s0
004eef104 	ldr	x26, [x26, #1384]
004eef108 	ldr	x0, [x26]
004eef10c 	ldr	w8, [x0, #228]
004eef110 	cbnz	w8, #12 ; -> 0x4eef11c 
004eef114 	bl	#-9823540 ; -> 0x4590be0 
004eef118 	ldr	x0, [x26]
004eef11c 	ldr	x8, [x0, #184]
004eef120 	ldr	x8, [x8]
004eef124 	cbz	x8, #348 ; -> 0x4eef280 
004eef128 	ldr	q0, [x8, #21856]
004eef12c 	ldr	q1, [x8, #21872]
004eef130 	add	x0, sp, #144
004eef134 	ldr	q2, [x8, #21888]
004eef138 	mov	x1, xzr
004eef13c 	stp	q0, q1, [x25]
004eef140 	ldr	q0, [x8, #21904]
004eef144 	stp	q2, q0, [x25, #32]
004eef148 	bl	#-3788280 ; -> 0x4b52350 SilentInt::op_Implicit
004eef14c 	ldr	x8, [x20, #312]
004eef150 	cbz	x8, #304 ; -> 0x4eef280 
004eef154 	add	x8, x8, #3064
004eef158 	mov	w25, w0
004eef15c 	add	x0, sp, #80
004eef160 	ldp	q0, q1, [x8]
004eef164 	mov	x1, xzr
004eef168 	stp	q0, q1, [sp, #80]
004eef16c 	ldp	q0, q2, [x8, #32]
004eef170 	stp	q0, q2, [sp, #112]
004eef174 	bl	#-3786868 ; -> 0x4b52900 SilentLong::op_Implicit
004eef178 	ldr	x8, [x20, #312]
004eef17c 	cbz	x8, #260 ; -> 0x4eef280 
004eef180 	mov	w9, #20248
004eef184 	mov	x26, x0
004eef188 	add	x0, sp, #8
004eef18c 	add	x1, x8, x9
004eef190 	mov	w2, #72
004eef194 	bl	#82298716 ; -> 0x9d6b8f0 
004eef198 	add	x0, sp, #8
004eef19c 	mov	x1, xzr
004eef1a0 	bl	#-3789944 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef1a4 	mov	x0, xzr
004eef1a8 	fmov	s11, s0
004eef1ac 	bl	#5270576 ; -> 0x53f5ddc WishDataManager::get_Instance
004eef1b0 	cbz	x0, #208 ; -> 0x4eef280 
004eef1b4 	mov	w8, #1120403456
004eef1b8 	scvtf	s2, w24
004eef1bc 	mov	w1, #3
004eef1c0 	fmov	s0, w8
004eef1c4 	add	x8, x22, w21, sxtw
004eef1c8 	mov	x2, xzr
004eef1cc 	add	x8, x8, x23
004eef1d0 	fadd	s1, s8, s0
004eef1d4 	fadd	s1, s1, s2
004eef1d8 	scvtf	s2, w25
004eef1dc 	fadd	s1, s1, s9
004eef1e0 	fadd	s1, s1, s10
004eef1e4 	fadd	s1, s1, s2
004eef1e8 	fdiv	s0, s1, s0
004eef1ec 	scvtf	d1, x8
004eef1f0 	fcvt	d0, s0
004eef1f4 	fmul	d8, d1, d0
004eef1f8 	bl	#5280304 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004eef1fc 	mov	w8, #1120403456
004eef200 	add	x20, x20, #1000
004eef204 	mov	x2, xzr
004eef208 	fmov	s1, w8
004eef20c 	mov	x8, #9218868437227405312
004eef210 	mov	x0, x20
004eef214 	fadd	s2, s11, s1
004eef218 	fadd	s0, s2, s0
004eef21c 	fdiv	s0, s0, s1
004eef220 	scvtf	d1, x26
004eef224 	fcvt	d0, s0
004eef228 	fmul	d0, d1, d0
004eef22c 	fmov	d1, x8
004eef230 	mov	x8, #-9223372036854775808
004eef234 	fadd	d0, d8, d0
004eef238 	fcvtzs	x9, d0
004eef23c 	fcmp	d0, d1
004eef240 	csel	x1, x8, x9, eq
004eef244 	bl	#-3787432 ; -> 0x4b5279c SilentLong::set_Value
004eef248 	ldp	q0, q1, [x20]
004eef24c 	str	q0, [x19]
004eef250 	ldp	q0, q2, [x20, #32]
004eef254 	stp	q1, q0, [x19, #16]
004eef258 	str	q2, [x19, #48]
004eef25c 	add	sp, sp, #688
004eef260 	ldp	x20, x19, [sp, #96]
004eef264 	ldp	x22, x21, [sp, #80]
004eef268 	ldp	x24, x23, [sp, #64]
004eef26c 	ldp	x26, x25, [sp, #48]
004eef270 	ldp	x29, x30, [sp, #32]
004eef274 	ldp	d9, d8, [sp, #16]
004eef278 	ldp	d11, d10, [sp], #112
004eef27c 	ret
004eef280 	bl	#-9823604 ; -> 0x4590d0c 
