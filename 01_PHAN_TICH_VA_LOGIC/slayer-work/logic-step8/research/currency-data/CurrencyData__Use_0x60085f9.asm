00501b5f4 	sub	sp, sp, #128
00501b5f8 	str	x30, [sp, #96]
00501b5fc 	stp	x20, x19, [sp, #112]
00501b600 	mov	x19, x1
00501b604 	mov	x20, x0
00501b608 	mov	w0, #2850
00501b60c 	mov	x1, xzr
00501b610 	bl	#-4014188 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501b614 	tbz	w0, #0, #48 ; -> 0x501b644 
00501b618 	mov	w0, #2850
00501b61c 	mov	x1, xzr
00501b620 	bl	#-4014024 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501b624 	cbz	x0, #152 ; -> 0x501b6bc 
00501b628 	mov	x1, x20
00501b62c 	mov	x2, x19
00501b630 	ldr	x30, [sp, #96]
00501b634 	ldp	x20, x19, [sp, #112]
00501b638 	mov	x3, xzr
00501b63c 	add	sp, sp, #128
00501b640 	b	#-4768836 ; -> 0x4b8f1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_323
00501b644 	ldp	q0, q1, [x20, #48]
00501b648 	add	x0, sp, #48
00501b64c 	ldr	q2, [x20, #80]
00501b650 	mov	x1, xzr
00501b654 	stp	q0, q1, [sp, #48]
00501b658 	str	q2, [sp, #80]
00501b65c 	bl	#-9672208 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00501b660 	sub	x0, x0, x19
00501b664 	mov	x8, sp
00501b668 	mov	x1, xzr
00501b66c 	bl	#-9696840 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
00501b670 	ldp	q0, q1, [sp]
00501b674 	add	x0, x20, #48
00501b678 	ldr	q2, [sp, #32]
00501b67c 	mov	x1, xzr
00501b680 	stp	q0, q1, [x20, #48]
00501b684 	str	q2, [x20, #80]
00501b688 	bl	#-11054212 ; -> 0x4590a04 
00501b68c 	ldp	x9, x8, [x20, #104]
00501b690 	add	x9, x9, x19
00501b694 	str	x9, [x20, #104]
00501b698 	cbz	x8, #20 ; -> 0x501b6ac 
00501b69c 	ldr	x9, [x8, #24]
00501b6a0 	ldr	x0, [x8, #64]
00501b6a4 	ldr	x1, [x8, #40]
00501b6a8 	blr	x9
00501b6ac 	ldp	x20, x19, [sp, #112]
00501b6b0 	ldr	x30, [sp, #96]
00501b6b4 	add	sp, sp, #128
00501b6b8 	ret
00501b6bc 	bl	#-11053488 ; -> 0x4590d0c 
