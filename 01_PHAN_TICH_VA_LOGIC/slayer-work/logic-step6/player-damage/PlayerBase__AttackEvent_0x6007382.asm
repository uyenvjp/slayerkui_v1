004ef55c0 	stp	x30, x19, [sp, #-16]!
004ef55c4 	mov	x19, x0
004ef55c8 	mov	w0, #32885
004ef55cc 	mov	x1, xzr
004ef55d0 	bl	#-2809900 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef55d4 	tbz	w0, #0, #36 ; -> 0x4ef55f8 
004ef55d8 	mov	w0, #32885
004ef55dc 	mov	x1, xzr
004ef55e0 	bl	#-2809736 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef55e4 	cbz	x0, #48 ; -> 0x4ef5614 
004ef55e8 	mov	x1, x19
004ef55ec 	mov	x2, xzr
004ef55f0 	ldp	x30, x19, [sp], #16
004ef55f4 	b	#-3633364 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef55f8 	ldr	x8, [x19, #2032]
004ef55fc 	cbz	x8, #24 ; -> 0x4ef5614 
004ef5600 	ldr	x0, [x8, #64]
004ef5604 	ldr	x1, [x8, #40]
004ef5608 	ldr	x2, [x8, #24]
004ef560c 	ldp	x30, x19, [sp], #16
004ef5610 	br	x2
004ef5614 	bl	#-9849096 ; -> 0x4590d0c 
