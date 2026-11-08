004ef1f6c 	stp	x30, x19, [sp, #-16]!
004ef1f70 	mov	x19, x0
004ef1f74 	mov	w0, #32818
004ef1f78 	mov	x1, xzr
004ef1f7c 	bl	#-2795992 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef1f80 	tbz	w0, #0, #36 ; -> 0x4ef1fa4 
004ef1f84 	mov	w0, #32818
004ef1f88 	mov	x1, xzr
004ef1f8c 	bl	#-2795828 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef1f90 	cbz	x0, #36 ; -> 0x4ef1fb4 
004ef1f94 	mov	x1, x19
004ef1f98 	mov	x2, xzr
004ef1f9c 	ldp	x30, x19, [sp], #16
004ef1fa0 	b	#-3590768 ; -> 0x4b85530 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_138
004ef1fa4 	add	x0, x19, #1752
004ef1fa8 	mov	x1, xzr
004ef1fac 	ldp	x30, x19, [sp], #16
004ef1fb0 	b	#-3806556 ; -> 0x4b50a54 SilentBigInt::get_Value
004ef1fb4 	bl	#-9835176 ; -> 0x4590d0c 
