004d504c0 	str	d10, [sp, #-80]!
004d504c4 	stp	d9, d8, [sp, #8]
004d504c8 	str	x29, [sp, #24]
004d504cc 	stp	x30, x23, [sp, #32]
004d504d0 	stp	x22, x21, [sp, #48]
004d504d4 	stp	x20, x19, [sp, #64]
004d504d8 	sub	sp, sp, #496
004d504dc 	mov	x20, x0
004d504e0 	mov	w0, #27257
004d504e4 	mov	x1, xzr
004d504e8 	mov	x19, x8
004d504ec 	bl	#-1085256 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d504f0 	tbz	w0, #0, #44 ; -> 0x4d5051c 
004d504f4 	mov	w0, #27257
004d504f8 	mov	x1, xzr
004d504fc 	bl	#-1085092 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d50500 	cbz	x0, #336 ; -> 0x4d50650 
004d50504 	add	x8, sp, #424
004d50508 	mov	x1, x20
004d5050c 	mov	x2, xzr
004d50510 	bl	#-1881424 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d50514 	add	x1, sp, #424
004d50518 	b	#268 ; -> 0x4d50624 
004d5051c 	mov	w8, #10528
004d50520 	add	x0, sp, #352
004d50524 	mov	w2, #72
004d50528 	add	x1, x20, x8
004d5052c 	add	x21, sp, #144
004d50530 	mov	w23, #12952
004d50534 	bl	#83997628 ; -> 0x9d6b8f0 
004d50538 	add	x0, sp, #352
004d5053c 	mov	x1, xzr
004d50540 	bl	#-2091032 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50544 	mov	w8, #7952
004d50548 	add	x0, sp, #280
004d5054c 	mov	w2, #72
004d50550 	add	x1, x20, x8
004d50554 	fmov	s8, s0
004d50558 	bl	#83997592 ; -> 0x9d6b8f0 
004d5055c 	add	x0, sp, #280
004d50560 	mov	x1, xzr
004d50564 	bl	#-2091068 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d50568 	mov	w8, #6368
004d5056c 	add	x0, sp, #208
004d50570 	mov	w2, #72
004d50574 	add	x1, x20, x8
004d50578 	fmov	s9, s0
004d5057c 	bl	#83997556 ; -> 0x9d6b8f0 
004d50580 	add	x0, sp, #208
004d50584 	mov	x1, xzr
004d50588 	bl	#-2091104 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d5058c 	fmov	s10, s0
004d50590 	ldp	q0, q1, [x20, #640]
004d50594 	add	x0, sp, #144
004d50598 	mov	x1, xzr
004d5059c 	stp	q0, q1, [x21]
004d505a0 	ldp	q0, q2, [x20, #672]
004d505a4 	stp	q0, q2, [x21, #32]
004d505a8 	bl	#-2089560 ; -> 0x4b52350 SilentInt::op_Implicit
004d505ac 	ldr	q0, [x20, #11504]
004d505b0 	ldr	q1, [x20, #11520]
004d505b4 	mov	w21, w0
004d505b8 	ldr	q2, [x20, #11536]
004d505bc 	add	x0, sp, #80
004d505c0 	mov	x1, xzr
004d505c4 	stp	q0, q1, [sp, #80]
004d505c8 	ldr	q0, [x20, #11552]
004d505cc 	stp	q2, q0, [sp, #112]
004d505d0 	bl	#-2088144 ; -> 0x4b52900 SilentLong::op_Implicit
004d505d4 	mov	w8, #13736
004d505d8 	mov	x22, x0
004d505dc 	add	x0, sp, #8
004d505e0 	add	x1, x20, x8
004d505e4 	mov	w2, #72
004d505e8 	bl	#83997448 ; -> 0x9d6b8f0 
004d505ec 	add	x0, sp, #8
004d505f0 	mov	x1, xzr
004d505f4 	bl	#-2091212 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d505f8 	fadd	s1, s8, s9
004d505fc 	scvtf	s2, w21
004d50600 	add	x0, x20, x23
004d50604 	mov	x1, xzr
004d50608 	fadd	s1, s1, s10
004d5060c 	fadd	s1, s1, s2
004d50610 	scvtf	s2, x22
004d50614 	fadd	s1, s1, s2
004d50618 	fadd	s0, s1, s0
004d5061c 	bl	#-2091620 ; -> 0x4b51bb8 SilentFloat::set_Value
004d50620 	add	x1, x20, x23
004d50624 	mov	x0, x19
004d50628 	mov	w2, #72
004d5062c 	bl	#83997380 ; -> 0x9d6b8f0 
004d50630 	add	sp, sp, #496
004d50634 	ldp	x20, x19, [sp, #64]
004d50638 	ldr	x29, [sp, #24]
004d5063c 	ldp	x22, x21, [sp, #48]
004d50640 	ldp	x30, x23, [sp, #32]
004d50644 	ldp	d9, d8, [sp, #8]
004d50648 	ldr	d10, [sp], #80
004d5064c 	ret
004d50650 	bl	#-8124740 ; -> 0x4590d0c 
