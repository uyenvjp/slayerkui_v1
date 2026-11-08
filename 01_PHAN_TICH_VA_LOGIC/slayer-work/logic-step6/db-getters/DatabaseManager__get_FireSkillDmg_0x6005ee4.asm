004d50198 	str	d10, [sp, #-80]!
004d5019c 	stp	d9, d8, [sp, #8]
004d501a0 	str	x29, [sp, #24]
004d501a4 	stp	x30, x23, [sp, #32]
004d501a8 	stp	x22, x21, [sp, #48]
004d501ac 	stp	x20, x19, [sp, #64]
004d501b0 	sub	sp, sp, #496
004d501b4 	mov	x20, x0
004d501b8 	mov	w0, #27255
004d501bc 	mov	x1, xzr
004d501c0 	mov	x19, x8
004d501c4 	bl	#-1084448 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d501c8 	tbz	w0, #0, #44 ; -> 0x4d501f4 
004d501cc 	mov	w0, #27255
004d501d0 	mov	x1, xzr
004d501d4 	bl	#-1084284 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d501d8 	cbz	x0, #336 ; -> 0x4d50328 
004d501dc 	add	x8, sp, #424
004d501e0 	mov	x1, x20
004d501e4 	mov	x2, xzr
004d501e8 	bl	#-1880616 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d501ec 	add	x1, sp, #424
004d501f0 	b	#268 ; -> 0x4d502fc 
004d501f4 	mov	w8, #10312
004d501f8 	add	x0, sp, #352
004d501fc 	mov	w2, #72
004d50200 	add	x1, x20, x8
004d50204 	add	x21, sp, #144
004d50208 	mov	w23, #12808
004d5020c 	bl	#83998436 ; -> 0x9d6b8f0 
004d50210 	add	x0, sp, #352
004d50214 	mov	x1, xzr
004d50218 	bl	#-2090224 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d5021c 	mov	w8, #8096
004d50220 	add	x0, sp, #280
004d50224 	mov	w2, #72
004d50228 	add	x1, x20, x8
004d5022c 	fmov	s8, s0
004d50230 	bl	#83998400 ; -> 0x9d6b8f0 
004d50234 	add	x0, sp, #280
004d50238 	mov	x1, xzr
004d5023c 	bl	#-2090260 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50240 	mov	w8, #6800
004d50244 	add	x0, sp, #208
004d50248 	mov	w2, #72
004d5024c 	add	x1, x20, x8
004d50250 	fmov	s9, s0
004d50254 	bl	#83998364 ; -> 0x9d6b8f0 
004d50258 	add	x0, sp, #208
004d5025c 	mov	x1, xzr
004d50260 	bl	#-2090296 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50264 	fmov	s10, s0
004d50268 	ldp	q0, q1, [x20, #640]
004d5026c 	add	x0, sp, #144
004d50270 	mov	x1, xzr
004d50274 	stp	q0, q1, [x21]
004d50278 	ldp	q0, q2, [x20, #672]
004d5027c 	stp	q0, q2, [x21, #32]
004d50280 	bl	#-2088752 ; -> 0x4b52350 SilentInt::op_Implicit
004d50284 	ldr	q0, [x20, #11440]
004d50288 	ldr	q1, [x20, #11456]
004d5028c 	mov	w21, w0
004d50290 	ldr	q2, [x20, #11472]
004d50294 	add	x0, sp, #80
004d50298 	mov	x1, xzr
004d5029c 	stp	q0, q1, [sp, #80]
004d502a0 	ldr	q0, [x20, #11488]
004d502a4 	stp	q2, q0, [sp, #112]
004d502a8 	bl	#-2087336 ; -> 0x4b52900 SilentLong::op_Implicit
004d502ac 	mov	w8, #13736
004d502b0 	mov	x22, x0
004d502b4 	add	x0, sp, #8
004d502b8 	add	x1, x20, x8
004d502bc 	mov	w2, #72
004d502c0 	bl	#83998256 ; -> 0x9d6b8f0 
004d502c4 	add	x0, sp, #8
004d502c8 	mov	x1, xzr
004d502cc 	bl	#-2090404 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d502d0 	fadd	s1, s8, s9
004d502d4 	scvtf	s2, w21
004d502d8 	add	x0, x20, x23
004d502dc 	mov	x1, xzr
004d502e0 	fadd	s1, s1, s10
004d502e4 	fadd	s1, s1, s2
004d502e8 	scvtf	s2, x22
004d502ec 	fadd	s1, s1, s2
004d502f0 	fadd	s0, s1, s0
004d502f4 	bl	#-2090812 ; -> 0x4b51bb8 SilentFloat::set_Value
004d502f8 	add	x1, x20, x23
004d502fc 	mov	x0, x19
004d50300 	mov	w2, #72
004d50304 	bl	#83998188 ; -> 0x9d6b8f0 
004d50308 	add	sp, sp, #496
004d5030c 	ldp	x20, x19, [sp, #64]
004d50310 	ldr	x29, [sp, #24]
004d50314 	ldp	x22, x21, [sp, #48]
004d50318 	ldp	x30, x23, [sp, #32]
004d5031c 	ldp	d9, d8, [sp, #8]
004d50320 	ldr	d10, [sp], #80
004d50324 	ret
004d50328 	bl	#-8123932 ; -> 0x4590d0c 
