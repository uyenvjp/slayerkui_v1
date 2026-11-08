005305af0 	stp	x30, x19, [sp, #-16]!
005305af4 	mov	x19, x0
005305af8 	mov	w0, #32943
005305afc 	mov	x1, xzr
005305b00 	bl	#-7071068 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005305b04 	tbz	w0, #0, #36 ; -> 0x5305b28 
005305b08 	mov	w0, #32943
005305b0c 	mov	x1, xzr
005305b10 	bl	#-7070904 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005305b14 	cbz	x0, #44 ; -> 0x5305b40 
005305b18 	mov	x1, x19
005305b1c 	mov	x2, xzr
005305b20 	ldp	x30, x19, [sp], #16
005305b24 	b	#-7890672 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
005305b28 	mov	x0, x19
005305b2c 	bl	#-156 ; -> 0x5305a90 SkillData::get_CooltimeReduceFactor
005305b30 	ldr	s1, [x19, #88]
005305b34 	fmul	s0, s0, s1
005305b38 	ldp	x30, x19, [sp], #16
005305b3c 	ret
005305b40 	bl	#-14110260 ; -> 0x4590d0c 
