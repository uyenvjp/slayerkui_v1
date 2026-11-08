004ee6264 	stp	x30, x19, [sp, #-16]!
004ee6268 	mov	x19, x0
004ee626c 	mov	w0, #32779
004ee6270 	mov	x1, xzr
004ee6274 	bl	#-2747600 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ee6278 	tbz	w0, #0, #36 ; -> 0x4ee629c 
004ee627c 	mov	w0, #32779
004ee6280 	mov	x1, xzr
004ee6284 	bl	#-2747436 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ee6288 	cbz	x0, #40 ; -> 0x4ee62b0 
004ee628c 	mov	x1, x19
004ee6290 	mov	x2, xzr
004ee6294 	ldp	x30, x19, [sp], #16
004ee6298 	b	#-3558616 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
004ee629c 	ldr	w8, [x19, #452]
004ee62a0 	cmp	w8, #0
004ee62a4 	cset	w0, gt
004ee62a8 	ldp	x30, x19, [sp], #16
004ee62ac 	ret
004ee62b0 	bl	#-9786788 ; -> 0x4590d0c 
