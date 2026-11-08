004d4c760 	str	x30, [sp, #-32]!
004d4c764 	stp	x20, x19, [sp, #16]
004d4c768 	mov	w19, w1
004d4c76c 	mov	x20, x0
004d4c770 	mov	w0, #3842
004d4c774 	mov	x1, xzr
004d4c778 	bl	#-1069524 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4c77c 	tbz	w0, #0, #44 ; -> 0x4d4c7a8 
004d4c780 	mov	w0, #3842
004d4c784 	mov	x1, xzr
004d4c788 	bl	#-1069360 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4c78c 	cbz	x0, #92 ; -> 0x4d4c7e8 
004d4c790 	mov	x1, x20
004d4c794 	mov	w2, w19
004d4c798 	mov	x3, xzr
004d4c79c 	ldp	x20, x19, [sp, #16]
004d4c7a0 	ldr	x30, [sp], #32
004d4c7a4 	b	#-1822048 ; -> 0x4b8fa44 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_332
004d4c7a8 	cbz	x20, #64 ; -> 0x4d4c7e8 
004d4c7ac 	ldr	w0, [x20, #20]
004d4c7b0 	cmp	w0, #19
004d4c7b4 	b.lt	#40 ; -> 0x4d4c7dc 
004d4c7b8 	cmp	w19, #6
004d4c7bc 	b.lt	#28 ; -> 0x4d4c7d8 
004d4c7c0 	mov	w8, #43691
004d4c7c4 	movk	w8, #43690, lsl #16
004d4c7c8 	umull	x8, w19, w8
004d4c7cc 	lsr	x8, x8, #34
004d4c7d0 	add	w0, w8, #19
004d4c7d4 	b	#8 ; -> 0x4d4c7dc 
004d4c7d8 	mov	w0, #19
004d4c7dc 	ldp	x20, x19, [sp, #16]
004d4c7e0 	ldr	x30, [sp], #32
004d4c7e4 	ret
004d4c7e8 	bl	#-8108764 ; -> 0x4590d0c 
