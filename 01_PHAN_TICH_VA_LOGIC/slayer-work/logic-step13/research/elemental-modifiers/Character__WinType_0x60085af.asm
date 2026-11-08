005018538 	str	x30, [sp, #-32]!
00501853c 	stp	x20, x19, [sp, #16]
005018540 	mov	w19, w1
005018544 	mov	x20, x0
005018548 	mov	w0, #31598
00501854c 	mov	x1, xzr
005018550 	bl	#-4001708 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005018554 	tbz	w0, #0, #44 ; -> 0x5018580 
005018558 	mov	w0, #31598
00501855c 	mov	x1, xzr
005018560 	bl	#-4001544 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005018564 	cbz	x0, #72 ; -> 0x50185ac 
005018568 	mov	x1, x20
00501856c 	mov	w2, w19
005018570 	mov	x3, xzr
005018574 	ldp	x20, x19, [sp, #16]
005018578 	ldr	x30, [sp], #32
00501857c 	b	#-4695280 ; -> 0x4b9e08c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_605
005018580 	sub	w8, w19, #1
005018584 	cmp	w8, #3
005018588 	b.hi	#20 ; -> 0x501859c 
00501858c 	adrp	x9, #-51310592 ; -> 0x1f29000 
005018590 	add	x9, x9, #4016
005018594 	ldr	w0, [x9, w8, uxtw #2]
005018598 	b	#8 ; -> 0x50185a0 
00501859c 	mov	w0, wzr
0050185a0 	ldp	x20, x19, [sp, #16]
0050185a4 	ldr	x30, [sp], #32
0050185a8 	ret
0050185ac 	bl	#-11040928 ; -> 0x4590d0c 
