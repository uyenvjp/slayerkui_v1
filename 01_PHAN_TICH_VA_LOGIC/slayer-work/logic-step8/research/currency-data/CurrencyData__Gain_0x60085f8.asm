00501b524 	sub	sp, sp, #128
00501b528 	str	x30, [sp, #96]
00501b52c 	stp	x20, x19, [sp, #112]
00501b530 	mov	x19, x1
00501b534 	mov	x20, x0
00501b538 	mov	w0, #2138
00501b53c 	mov	x1, xzr
00501b540 	bl	#-4013980 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501b544 	tbz	w0, #0, #48 ; -> 0x501b574 
00501b548 	mov	w0, #2138
00501b54c 	mov	x1, xzr
00501b550 	bl	#-4013816 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501b554 	cbz	x0, #156 ; -> 0x501b5f0 
00501b558 	mov	x1, x20
00501b55c 	mov	x2, x19
00501b560 	ldr	x30, [sp, #96]
00501b564 	ldp	x20, x19, [sp, #112]
00501b568 	mov	x3, xzr
00501b56c 	add	sp, sp, #128
00501b570 	b	#-4768628 ; -> 0x4b8f1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_323
00501b574 	ldp	q0, q1, [x20, #48]
00501b578 	add	x0, sp, #48
00501b57c 	ldr	q2, [x20, #80]
00501b580 	mov	x1, xzr
00501b584 	stp	q0, q1, [sp, #48]
00501b588 	str	q2, [sp, #80]
00501b58c 	bl	#-9672000 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00501b590 	mov	x8, sp
00501b594 	add	x0, x0, x19
00501b598 	mov	x1, xzr
00501b59c 	bl	#-9696632 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
00501b5a0 	ldp	q0, q1, [sp]
00501b5a4 	add	x0, x20, #48
00501b5a8 	ldr	q2, [sp, #32]
00501b5ac 	mov	x1, xzr
00501b5b0 	stp	q0, q1, [x20, #48]
00501b5b4 	str	q2, [x20, #80]
00501b5b8 	bl	#-11054004 ; -> 0x4590a04 
00501b5bc 	ldr	x9, [x20, #96]
00501b5c0 	ldr	x8, [x20, #112]
00501b5c4 	add	x9, x9, x19
00501b5c8 	str	x9, [x20, #96]
00501b5cc 	cbz	x8, #20 ; -> 0x501b5e0 
00501b5d0 	ldr	x9, [x8, #24]
00501b5d4 	ldr	x0, [x8, #64]
00501b5d8 	ldr	x1, [x8, #40]
00501b5dc 	blr	x9
00501b5e0 	ldp	x20, x19, [sp, #112]
00501b5e4 	ldr	x30, [sp, #96]
00501b5e8 	add	sp, sp, #128
00501b5ec 	ret
00501b5f0 	bl	#-11053284 ; -> 0x4590d0c 
