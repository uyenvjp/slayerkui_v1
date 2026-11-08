004eef318 	sub	sp, sp, #176
004eef31c 	str	x30, [sp, #144]
004eef320 	stp	x20, x19, [sp, #160]
004eef324 	mov	x20, x0
004eef328 	mov	w0, #4403
004eef32c 	mov	x1, xzr
004eef330 	mov	x19, x8
004eef334 	bl	#-2784656 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eef338 	tbz	w0, #0, #52 ; -> 0x4eef36c 
004eef33c 	mov	w0, #4403
004eef340 	mov	x1, xzr
004eef344 	bl	#-2784492 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eef348 	cbz	x0, #164 ; -> 0x4eef3ec 
004eef34c 	add	x8, sp, #80
004eef350 	mov	x1, x20
004eef354 	mov	x2, xzr
004eef358 	bl	#-3582700 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eef35c 	ldp	q0, q1, [sp, #80]
004eef360 	str	q0, [x19]
004eef364 	ldp	q0, q2, [sp, #112]
004eef368 	b	#108 ; -> 0x4eef3d4 
004eef36c 	ldr	x8, [x20, #312]
004eef370 	cbz	x8, #124 ; -> 0x4eef3ec 
004eef374 	mov	w9, #5720
004eef378 	add	x0, sp, #8
004eef37c 	mov	w2, #72
004eef380 	add	x1, x8, x9
004eef384 	add	x20, x20, #1064
004eef388 	bl	#82298216 ; -> 0x9d6b8f0 
004eef38c 	add	x0, sp, #8
004eef390 	mov	x1, xzr
004eef394 	bl	#-3790444 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef398 	mov	w8, #1120403456
004eef39c 	mov	x0, x20
004eef3a0 	mov	x2, xzr
004eef3a4 	fmov	s1, w8
004eef3a8 	mov	w8, #2139095040
004eef3ac 	fadd	s0, s0, s1
004eef3b0 	fmov	s1, w8
004eef3b4 	mov	x8, #-9223372036854775808
004eef3b8 	fcvtzs	x9, s0
004eef3bc 	fcmp	s0, s1
004eef3c0 	csel	x1, x8, x9, eq
004eef3c4 	bl	#-3787816 ; -> 0x4b5279c SilentLong::set_Value
004eef3c8 	ldp	q0, q1, [x20]
004eef3cc 	str	q0, [x19]
004eef3d0 	ldp	q0, q2, [x20, #32]
004eef3d4 	stp	q1, q0, [x19, #16]
004eef3d8 	ldr	x30, [sp, #144]
004eef3dc 	str	q2, [x19, #48]
004eef3e0 	ldp	x20, x19, [sp, #160]
004eef3e4 	add	sp, sp, #176
004eef3e8 	ret
004eef3ec 	bl	#-9823968 ; -> 0x4590d0c 
