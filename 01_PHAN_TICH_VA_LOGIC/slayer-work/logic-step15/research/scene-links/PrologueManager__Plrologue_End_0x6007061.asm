004ea6b6c 	stp	x30, x19, [sp, #-16]!
004ea6b70 	mov	x19, x0
004ea6b74 	mov	w0, #32373
004ea6b78 	mov	x1, xzr
004ea6b7c 	bl	#-2487768 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ea6b80 	tbz	w0, #0, #36 ; -> 0x4ea6ba4 
004ea6b84 	mov	w0, #32373
004ea6b88 	mov	x1, xzr
004ea6b8c 	bl	#-2487604 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ea6b90 	cbz	x0, #28 ; -> 0x4ea6bac 
004ea6b94 	mov	x1, x19
004ea6b98 	mov	x2, xzr
004ea6b9c 	ldp	x30, x19, [sp], #16
004ea6ba0 	b	#-3311232 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ea6ba4 	ldp	x30, x19, [sp], #16
004ea6ba8 	ret
004ea6bac 	bl	#-9526944 ; -> 0x4590d0c 
