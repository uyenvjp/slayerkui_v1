005305a90 	stp	x30, x19, [sp, #-16]!
005305a94 	mov	x19, x0
005305a98 	mov	w0, #32944
005305a9c 	mov	x1, xzr
005305aa0 	bl	#-7070972 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005305aa4 	tbz	w0, #0, #36 ; -> 0x5305ac8 
005305aa8 	mov	w0, #32944
005305aac 	mov	x1, xzr
005305ab0 	bl	#-7070808 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005305ab4 	cbz	x0, #56 ; -> 0x5305aec 
005305ab8 	mov	x1, x19
005305abc 	mov	x2, xzr
005305ac0 	ldp	x30, x19, [sp], #16
005305ac4 	b	#-7890576 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
005305ac8 	fmov	s0, #1.00000000
005305acc 	ldr	s1, [x19, #76]
005305ad0 	fadd	s1, s1, s0
005305ad4 	ldr	s0, [x19, #84]
005305ad8 	fcmp	s0, s1
005305adc 	b.pl	#8 ; -> 0x5305ae4 
005305ae0 	fmov	s0, s1
005305ae4 	ldp	x30, x19, [sp], #16
005305ae8 	ret
005305aec 	bl	#-14110176 ; -> 0x4590d0c 
