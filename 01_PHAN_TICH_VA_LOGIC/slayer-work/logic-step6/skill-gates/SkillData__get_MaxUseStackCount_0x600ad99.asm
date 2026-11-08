005306888 	sub	sp, sp, #96
00530688c 	str	x30, [sp, #64]
005306890 	stp	x20, x19, [sp, #80]
005306894 	mov	x20, x0
005306898 	mov	w0, #6944
00530689c 	mov	x1, xzr
0053068a0 	mov	x19, x8
0053068a4 	bl	#-7074560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053068a8 	tbz	w0, #0, #52 ; -> 0x53068dc 
0053068ac 	mov	w0, #6944
0053068b0 	mov	x1, xzr
0053068b4 	bl	#-7074396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053068b8 	cbz	x0, #72 ; -> 0x5306900 
0053068bc 	mov	x8, sp
0053068c0 	mov	x1, x20
0053068c4 	mov	x2, xzr
0053068c8 	bl	#-7762660 ; -> 0x4b9f5e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_630
0053068cc 	ldp	q0, q1, [sp]
0053068d0 	str	q0, [x19]
0053068d4 	ldp	q0, q2, [sp, #32]
0053068d8 	b	#16 ; -> 0x53068e8 
0053068dc 	ldp	q0, q1, [x20, #864]
0053068e0 	str	q0, [x19]
0053068e4 	ldp	q0, q2, [x20, #896]
0053068e8 	stp	q1, q0, [x19, #16]
0053068ec 	ldr	x30, [sp, #64]
0053068f0 	str	q2, [x19, #48]
0053068f4 	ldp	x20, x19, [sp, #80]
0053068f8 	add	sp, sp, #96
0053068fc 	ret
005306900 	bl	#-14113780 ; -> 0x4590d0c 
