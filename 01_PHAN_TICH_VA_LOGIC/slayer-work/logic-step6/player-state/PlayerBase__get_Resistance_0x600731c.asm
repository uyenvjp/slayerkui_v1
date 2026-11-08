004eeee28 	sub	sp, sp, #176
004eeee2c 	str	d8, [sp, #144]
004eeee30 	stp	x30, x19, [sp, #160]
004eeee34 	mov	x19, x0
004eeee38 	mov	w0, #32840
004eeee3c 	mov	x1, xzr
004eeee40 	bl	#-2783388 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eeee44 	tbz	w0, #0, #44 ; -> 0x4eeee70 
004eeee48 	mov	w0, #32840
004eeee4c 	mov	x1, xzr
004eeee50 	bl	#-2783224 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eeee54 	cbz	x0, #144 ; -> 0x4eeeee4 
004eeee58 	mov	x1, x19
004eeee5c 	ldp	x30, x19, [sp, #160]
004eeee60 	ldr	d8, [sp, #144]
004eeee64 	mov	x2, xzr
004eeee68 	add	sp, sp, #176
004eeee6c 	b	#-3603000 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004eeee70 	ldr	x8, [x19, #312]
004eeee74 	cbz	x8, #112 ; -> 0x4eeeee4 
004eeee78 	mov	w9, #8960
004eeee7c 	add	x0, sp, #72
004eeee80 	mov	w2, #72
004eeee84 	add	x1, x8, x9
004eeee88 	bl	#82299496 ; -> 0x9d6b8f0 
004eeee8c 	add	x0, sp, #72
004eeee90 	mov	x1, xzr
004eeee94 	bl	#-3789164 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeee98 	ldr	x8, [x19, #312]
004eeee9c 	cbz	x8, #72 ; -> 0x4eeeee4 
004eeeea0 	mov	w9, #9672
004eeeea4 	fmov	s8, s0
004eeeea8 	mov	x0, sp
004eeeeac 	add	x8, x8, x9
004eeeeb0 	mov	x1, xzr
004eeeeb4 	ldp	q0, q1, [x8]
004eeeeb8 	stp	q0, q1, [sp]
004eeeebc 	ldp	q0, q2, [x8, #32]
004eeeec0 	stp	q0, q2, [sp, #32]
004eeeec4 	bl	#-3787636 ; -> 0x4b52350 SilentInt::op_Implicit
004eeeec8 	scvtf	s0, w0
004eeeecc 	fadd	s0, s8, s0
004eeeed0 	ldr	d8, [sp, #144]
004eeeed4 	str	s0, [x19, #992]
004eeeed8 	ldp	x30, x19, [sp, #160]
004eeeedc 	add	sp, sp, #176
004eeeee0 	ret
004eeeee4 	bl	#-9822680 ; -> 0x4590d0c 
