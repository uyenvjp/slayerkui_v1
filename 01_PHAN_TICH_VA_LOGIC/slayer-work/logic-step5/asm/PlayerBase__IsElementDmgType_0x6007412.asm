004effd0c 	str	x30, [sp, #-32]!
004effd10 	stp	x20, x19, [sp, #16]
004effd14 	mov	w19, w1
004effd18 	mov	x20, x0
004effd1c 	mov	w0, #31575
004effd20 	mov	x1, xzr
004effd24 	bl	#-2852736 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004effd28 	tbz	w0, #0, #44 ; -> 0x4effd54 
004effd2c 	mov	w0, #31575
004effd30 	mov	x1, xzr
004effd34 	bl	#-2852572 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004effd38 	cbz	x0, #52 ; -> 0x4effd6c 
004effd3c 	mov	x1, x20
004effd40 	mov	w2, w19
004effd44 	mov	x3, xzr
004effd48 	ldp	x20, x19, [sp, #16]
004effd4c 	ldr	x30, [sp], #32
004effd50 	b	#-3263428 ; -> 0x4be318c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1968
004effd54 	sub	w8, w19, #1
004effd58 	ldp	x20, x19, [sp, #16]
004effd5c 	cmp	w8, #4
004effd60 	cset	w0, lo
004effd64 	ldr	x30, [sp], #32
004effd68 	ret
004effd6c 	bl	#-9891936 ; -> 0x4590d0c 
