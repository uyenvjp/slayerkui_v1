0050184c0 	str	x30, [sp, #-32]!
0050184c4 	stp	x20, x19, [sp, #16]
0050184c8 	mov	w19, w1
0050184cc 	mov	x20, x0
0050184d0 	mov	w0, #31610
0050184d4 	mov	x1, xzr
0050184d8 	bl	#-4001588 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
0050184dc 	tbz	w0, #0, #44 ; -> 0x5018508
0050184e0 	mov	w0, #31610
0050184e4 	mov	x1, xzr
0050184e8 	bl	#-4001424 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
0050184ec 	cbz	x0, #72 ; -> 0x5018534
0050184f0 	mov	x1, x20
0050184f4 	mov	w2, w19
0050184f8 	mov	x3, xzr
0050184fc 	ldp	x20, x19, [sp, #16]
005018500 	ldr	x30, [sp], #32
005018504 	b	#-4695160 ; -> 0x4b9e08c [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_605]
005018508 	sub	w8, w19, #1
00501850c 	cmp	w8, #3
005018510 	b.hi	#20 ; -> 0x5018524
005018514 	adrp	x9, #-51306496 ; -> 0x1f2a000
005018518 	add	x9, x9, #2560
00501851c 	ldr	w0, [x9, w8, uxtw #2]
005018520 	b	#8 ; -> 0x5018528
005018524 	mov	w0, wzr
005018528 	ldp	x20, x19, [sp, #16]
00501852c 	ldr	x30, [sp], #32
005018530 	ret
005018534 	bl	#-11040808 ; -> 0x4590d0c