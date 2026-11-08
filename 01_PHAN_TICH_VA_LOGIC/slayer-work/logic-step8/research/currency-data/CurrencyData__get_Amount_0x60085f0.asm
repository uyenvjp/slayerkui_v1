00501b168 	sub	sp, sp, #80
00501b16c 	str	x30, [sp, #48]
00501b170 	stp	x20, x19, [sp, #64]
00501b174 	mov	x20, x0
00501b178 	mov	w0, #1862
00501b17c 	mov	x1, xzr
00501b180 	mov	x19, x8
00501b184 	bl	#-4013024 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501b188 	tbz	w0, #0, #48 ; -> 0x501b1b8 
00501b18c 	mov	w0, #1862
00501b190 	mov	x1, xzr
00501b194 	bl	#-4012860 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501b198 	cbz	x0, #64 ; -> 0x501b1d8 
00501b19c 	mov	x8, sp
00501b1a0 	mov	x1, x20
00501b1a4 	mov	x2, xzr
00501b1a8 	bl	#-4780592 ; -> 0x4b8bf78 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_261
00501b1ac 	ldp	q0, q1, [sp]
00501b1b0 	ldr	q2, [sp, #32]
00501b1b4 	b	#12 ; -> 0x501b1c0 
00501b1b8 	ldp	q0, q1, [x20, #48]
00501b1bc 	ldr	q2, [x20, #80]
00501b1c0 	stp	q0, q1, [x19]
00501b1c4 	ldr	x30, [sp, #48]
00501b1c8 	str	q2, [x19, #32]
00501b1cc 	ldp	x20, x19, [sp, #64]
00501b1d0 	add	sp, sp, #80
00501b1d4 	ret
00501b1d8 	bl	#-11052236 ; -> 0x4590d0c 
