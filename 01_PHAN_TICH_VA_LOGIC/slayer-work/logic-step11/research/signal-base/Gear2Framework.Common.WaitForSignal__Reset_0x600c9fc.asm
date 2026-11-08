004745d60 	stp	x30, x19, [sp, #-16]!
004745d64 	mov	x19, x0
004745d68 	mov	w0, #47353
004745d6c 	mov	x1, xzr
004745d70 	bl	#5249076 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004745d74 	tbz	w0, #0, #36 ; -> 0x4745d98 
004745d78 	mov	w0, #47353
004745d7c 	mov	x1, xzr
004745d80 	bl	#5249240 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004745d84 	cbz	x0, #32 ; -> 0x4745da4 
004745d88 	mov	x1, x19
004745d8c 	mov	x2, xzr
004745d90 	ldp	x30, x19, [sp], #16
004745d94 	b	#4425612 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004745d98 	strb	wzr, [x19, #16]
004745d9c 	ldp	x30, x19, [sp], #16
004745da0 	ret
004745da4 	bl	#-1790104 ; -> 0x4590d0c 
