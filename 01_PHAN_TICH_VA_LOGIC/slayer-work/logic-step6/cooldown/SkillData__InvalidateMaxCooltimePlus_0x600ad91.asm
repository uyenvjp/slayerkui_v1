005305b44 	stp	x30, x19, [sp, #-16]!
005305b48 	mov	x19, x0
005305b4c 	mov	w0, #7521
005305b50 	mov	x1, xzr
005305b54 	bl	#-7071152 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005305b58 	tbz	w0, #0, #36 ; -> 0x5305b7c 
005305b5c 	mov	w0, #7521
005305b60 	mov	x1, xzr
005305b64 	bl	#-7070988 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005305b68 	cbz	x0, #36 ; -> 0x5305b8c 
005305b6c 	mov	x1, x19
005305b70 	mov	x2, xzr
005305b74 	ldp	x30, x19, [sp], #16
005305b78 	b	#-7894616 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005305b7c 	mov	w8, #1
005305b80 	strb	w8, [x19, #312]
005305b84 	ldp	x30, x19, [sp], #16
005305b88 	ret
005305b8c 	bl	#-14110336 ; -> 0x4590d0c 
