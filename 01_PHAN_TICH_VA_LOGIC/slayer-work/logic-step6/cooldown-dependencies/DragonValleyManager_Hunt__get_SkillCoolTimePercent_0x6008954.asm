005059db8 	stp	x30, x19, [sp, #-16]!
005059dbc 	mov	x19, x0
005059dc0 	mov	w0, #6947
005059dc4 	mov	x1, xzr
005059dc8 	bl	#-4270116 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005059dcc 	tbz	w0, #0, #36 ; -> 0x5059df0 
005059dd0 	mov	w0, #6947
005059dd4 	mov	x1, xzr
005059dd8 	bl	#-4269952 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005059ddc 	cbz	x0, #32 ; -> 0x5059dfc 
005059de0 	mov	x1, x19
005059de4 	mov	x2, xzr
005059de8 	ldp	x30, x19, [sp], #16
005059dec 	b	#-5089720 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
005059df0 	ldr	s0, [x19, #76]
005059df4 	ldp	x30, x19, [sp], #16
005059df8 	ret
005059dfc 	bl	#-11309296 ; -> 0x4590d0c 
