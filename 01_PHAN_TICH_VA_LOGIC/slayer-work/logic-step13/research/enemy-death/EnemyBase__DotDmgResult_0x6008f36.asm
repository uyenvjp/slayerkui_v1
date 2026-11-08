0050baf38 	stp	x30, x21, [sp, #-32]!
0050baf3c 	stp	x20, x19, [sp, #16]
0050baf40 	mov	x20, x1
0050baf44 	mov	x21, x0
0050baf48 	mov	w0, #31626
0050baf4c 	mov	x1, xzr
0050baf50 	mov	x19, x2
0050baf54 	bl	#-4667824 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050baf58 	tbz	w0, #0, #48 ; -> 0x50baf88 
0050baf5c 	mov	w0, #31626
0050baf60 	mov	x1, xzr
0050baf64 	bl	#-4667660 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050baf68 	cbz	x0, #68 ; -> 0x50bafac 
0050baf6c 	mov	x2, x20
0050baf70 	mov	x3, x19
0050baf74 	mov	x1, x21
0050baf78 	ldp	x20, x19, [sp, #16]
0050baf7c 	mov	x4, xzr
0050baf80 	ldp	x30, x21, [sp], #32
0050baf84 	b	#-5423172 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
0050baf88 	ldr	x8, [x21]
0050baf8c 	mov	x1, x20
0050baf90 	mov	x2, x19
0050baf94 	ldp	x20, x19, [sp, #16]
0050baf98 	mov	x0, x21
0050baf9c 	ldr	x3, [x8, #1264]
0050bafa0 	ldr	x4, [x8, #1256]
0050bafa4 	ldp	x30, x21, [sp], #32
0050bafa8 	br	x4
0050bafac 	bl	#-11707040 ; -> 0x4590d0c 
