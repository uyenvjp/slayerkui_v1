004f17370 	stp	x30, x19, [sp, #-16]!
004f17374 	mov	x19, x0
004f17378 	mov	w0, #7853
004f1737c 	mov	x1, xzr
004f17380 	bl	#-2948572 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f17384 	tbz	w0, #0, #36 ; -> 0x4f173a8 
004f17388 	mov	w0, #7853
004f1738c 	mov	x1, xzr
004f17390 	bl	#-2948408 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f17394 	cbz	x0, #36 ; -> 0x4f173b8 
004f17398 	mov	x1, x19
004f1739c 	mov	x2, xzr
004f173a0 	ldp	x30, x19, [sp], #16
004f173a4 	b	#-3772036 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f173a8 	mov	w8, #-1
004f173ac 	str	w8, [x19, #212]
004f173b0 	ldp	x30, x19, [sp], #16
004f173b4 	ret
004f173b8 	bl	#-9987756 ; -> 0x4590d0c 
