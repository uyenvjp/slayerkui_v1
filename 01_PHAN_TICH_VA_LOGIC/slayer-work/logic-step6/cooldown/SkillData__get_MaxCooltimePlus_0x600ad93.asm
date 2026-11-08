005305e70 	sub	sp, sp, #176
005305e74 	stp	x30, x19, [sp, #160]
005305e78 	movi	v0.2d, #0000000000000000
005305e7c 	mov	x19, x0
005305e80 	mov	w0, #6945
005305e84 	mov	x1, xzr
005305e88 	str	xzr, [sp, #144]
005305e8c 	stp	q0, q0, [sp, #80]
005305e90 	stp	q0, q0, [sp, #112]
005305e94 	bl	#-7071984 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005305e98 	tbz	w0, #0, #40 ; -> 0x5305ec0 
005305e9c 	mov	w0, #6945
005305ea0 	mov	x1, xzr
005305ea4 	bl	#-7071820 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005305ea8 	cbz	x0, #120 ; -> 0x5305f20 
005305eac 	mov	x1, x19
005305eb0 	ldp	x30, x19, [sp, #160]
005305eb4 	mov	x2, xzr
005305eb8 	add	sp, sp, #176
005305ebc 	b	#-7891592 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
005305ec0 	ldrb	w8, [x19, #312]
005305ec4 	cbz	w8, #12 ; -> 0x5305ed0 
005305ec8 	mov	x0, x19
005305ecc 	bl	#-828 ; -> 0x5305b90 SkillData::SetMaxCooltimePlus
005305ed0 	ldr	x8, [x19, #32]
005305ed4 	cbz	x8, #76 ; -> 0x5305f20 
005305ed8 	ldr	w8, [x8, #148]
005305edc 	add	x9, x19, #168
005305ee0 	add	x10, x19, #240
005305ee4 	add	x0, sp, #80
005305ee8 	mov	w2, #72
005305eec 	cmp	w8, #0
005305ef0 	csel	x1, x10, x9, eq
005305ef4 	bl	#78010876 ; -> 0x9d6b8f0 
005305ef8 	add	x0, sp, #8
005305efc 	add	x1, sp, #80
005305f00 	mov	w2, #72
005305f04 	bl	#78010860 ; -> 0x9d6b8f0 
005305f08 	add	x0, sp, #8
005305f0c 	mov	x1, xzr
005305f10 	bl	#-8077800 ; -> 0x4b51d28 SilentFloat::op_Implicit
005305f14 	ldp	x30, x19, [sp, #160]
005305f18 	add	sp, sp, #176
005305f1c 	ret
005305f20 	bl	#-14111252 ; -> 0x4590d0c 
