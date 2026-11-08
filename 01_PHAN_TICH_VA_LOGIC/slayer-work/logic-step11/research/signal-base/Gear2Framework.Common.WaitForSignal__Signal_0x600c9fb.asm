004745d14 	stp	x30, x19, [sp, #-16]!
004745d18 	mov	x19, x0
004745d1c 	mov	w0, #2433
004745d20 	mov	x1, xzr
004745d24 	bl	#5249152 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004745d28 	tbz	w0, #0, #36 ; -> 0x4745d4c 
004745d2c 	mov	w0, #2433
004745d30 	mov	x1, xzr
004745d34 	bl	#5249316 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004745d38 	cbz	x0, #36 ; -> 0x4745d5c 
004745d3c 	mov	x1, x19
004745d40 	mov	x2, xzr
004745d44 	ldp	x30, x19, [sp], #16
004745d48 	b	#4425688 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004745d4c 	mov	w8, #1
004745d50 	strb	w8, [x19, #16]
004745d54 	ldp	x30, x19, [sp], #16
004745d58 	ret
004745d5c 	bl	#-1790032 ; -> 0x4590d0c 
