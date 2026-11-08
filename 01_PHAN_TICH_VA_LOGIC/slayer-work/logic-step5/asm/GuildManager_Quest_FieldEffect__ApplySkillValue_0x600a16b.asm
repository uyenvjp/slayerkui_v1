005208760 	sub	sp, sp, #192
005208764 	stp	x30, x23, [sp, #144]
005208768 	stp	x22, x21, [sp, #160]
00520876c 	stp	x20, x19, [sp, #176]
005208770 	adrp	x23, #94167040 ; -> 0xabd6000 
005208774 	mov	x20, x2
005208778 	mov	w22, w1
00520877c 	ldrb	w9, [x23, #3351]
005208780 	mov	x21, x0
005208784 	mov	x19, x8
005208788 	tbnz	w9, #0, #24 ; -> 0x52087a0 
00520878c 	adrp	x0, #85893120 ; -> 0xa3f2000 
005208790 	ldr	x0, [x0, #552]
005208794 	bl	#-13073716 ; -> 0x4590a60 
005208798 	mov	w8, #1
00520879c 	strb	w8, [x23, #3351]
0052087a0 	mov	w0, #41922
0052087a4 	mov	x1, xzr
0052087a8 	bl	#-6033924 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052087ac 	tbz	w0, #0, #72 ; -> 0x52087f4 
0052087b0 	mov	w0, #41922
0052087b4 	mov	x1, xzr
0052087b8 	bl	#-6033760 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052087bc 	cbz	x0, #268 ; -> 0x52088c8 
0052087c0 	ldp	q0, q1, [x20]
0052087c4 	add	x8, sp, #96
0052087c8 	ldr	q2, [x20, #32]
0052087cc 	add	x3, sp, #48
0052087d0 	mov	x1, x21
0052087d4 	mov	w2, w22
0052087d8 	mov	x4, xzr
0052087dc 	stp	q0, q1, [sp, #48]
0052087e0 	str	q2, [sp, #80]
0052087e4 	bl	#-6302700 ; -> 0x4c05bf8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2672
0052087e8 	ldp	q0, q1, [sp, #96]
0052087ec 	ldr	q2, [sp, #128]
0052087f0 	b	#188 ; -> 0x52088ac 
0052087f4 	adrp	x23, #85893120 ; -> 0xa3f2000 
0052087f8 	ldr	x23, [x23, #552]
0052087fc 	ldr	x0, [x23]
005208800 	ldr	w8, [x0, #228]
005208804 	cbnz	w8, #12 ; -> 0x5208810 
005208808 	bl	#-13073448 ; -> 0x4590be0 
00520880c 	ldr	x0, [x23]
005208810 	ldr	x8, [x0, #184]
005208814 	ldr	x0, [x8]
005208818 	cbz	x0, #176 ; -> 0x52088c8 
00520881c 	mov	x1, xzr
005208820 	bl	#-3958988 ; -> 0x4e41f54 GameManager::get_gameMode
005208824 	cmp	w0, #21
005208828 	b.ne	#124 ; -> 0x52088a4 
00520882c 	ldr	x8, [x21, #40]
005208830 	cbz	x8, #116 ; -> 0x52088a4 
005208834 	ldr	w9, [x8, #24]
005208838 	cmp	w9, #7
00520883c 	b.ne	#104 ; -> 0x52088a4 
005208840 	ldr	w8, [x8, #28]
005208844 	cmp	w8, w22
005208848 	b.ne	#92 ; -> 0x52088a4 
00520884c 	ldp	q0, q1, [x20]
005208850 	mov	x0, sp
005208854 	ldr	q2, [x20, #32]
005208858 	mov	x1, xzr
00520885c 	stp	q0, q1, [sp]
005208860 	str	q2, [sp, #32]
005208864 	bl	#-11686744 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005208868 	ldr	x8, [x21, #40]
00520886c 	cbz	x8, #92 ; -> 0x52088c8 
005208870 	ldr	s1, [x8, #32]
005208874 	mov	w8, #1120403456
005208878 	mov	x0, xzr
00520887c 	fmov	s2, w8
005208880 	add	x8, sp, #96
005208884 	fadd	s1, s1, s2
005208888 	fmul	s0, s0, s1
00520888c 	fdiv	s0, s0, s2
005208890 	bl	#-11716856 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005208894 	ldp	q0, q1, [sp, #96]
005208898 	ldr	q2, [sp, #128]
00520889c 	str	q2, [x20, #32]
0052088a0 	stp	q0, q1, [x20]
0052088a4 	ldp	q0, q1, [x20]
0052088a8 	ldr	q2, [x20, #32]
0052088ac 	stp	q0, q1, [x19]
0052088b0 	ldp	x22, x21, [sp, #160]
0052088b4 	str	q2, [x19, #32]
0052088b8 	ldp	x20, x19, [sp, #176]
0052088bc 	ldp	x30, x23, [sp, #144]
0052088c0 	add	sp, sp, #192
0052088c4 	ret
0052088c8 	bl	#-13073340 ; -> 0x4590d0c 
