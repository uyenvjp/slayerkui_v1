004e98704 	sub	sp, sp, #80
004e98708 	str	x30, [sp, #48]
004e9870c 	stp	x20, x19, [sp, #64]
004e98710 	adrp	x20, #97767424 ; -> 0xabd5000 
004e98714 	mov	x19, x0
004e98718 	ldrb	w8, [x20, #843]
004e9871c 	tbnz	w8, #0, #24 ; -> 0x4e98734 
004e98720 	adrp	x0, #89460736 ; -> 0xa3e9000 
004e98724 	ldr	x0, [x0, #1384]
004e98728 	bl	#-9469128 ; -> 0x4590a60 
004e9872c 	mov	w8, #1
004e98730 	strb	w8, [x20, #843]
004e98734 	mov	w0, #32250
004e98738 	mov	x1, xzr
004e9873c 	bl	#-2429336 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e98740 	tbz	w0, #0, #44 ; -> 0x4e9876c 
004e98744 	mov	w0, #32250
004e98748 	mov	x1, xzr
004e9874c 	bl	#-2429172 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e98750 	cbz	x0, #128 ; -> 0x4e987d0 
004e98754 	mov	x1, x19
004e98758 	ldp	x20, x19, [sp, #64]
004e9875c 	ldr	x30, [sp, #48]
004e98760 	mov	x2, xzr
004e98764 	add	sp, sp, #80
004e98768 	b	#-3234920 ; -> 0x4b82b00 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_91
004e9876c 	adrp	x19, #89460736 ; -> 0xa3e9000 
004e98770 	ldr	x19, [x19, #1384]
004e98774 	ldr	x0, [x19]
004e98778 	ldr	w8, [x0, #228]
004e9877c 	cbnz	w8, #12 ; -> 0x4e98788 
004e98780 	bl	#-9468832 ; -> 0x4590be0 
004e98784 	ldr	x0, [x19]
004e98788 	ldr	x8, [x0, #184]
004e9878c 	ldr	x8, [x8]
004e98790 	cbz	x8, #64 ; -> 0x4e987d0 
004e98794 	ldr	q0, [x8, #2176]
004e98798 	ldr	q1, [x8, #2192]
004e9879c 	mov	x0, sp
004e987a0 	ldr	q2, [x8, #2208]
004e987a4 	mov	x1, xzr
004e987a8 	stp	q0, q1, [sp]
004e987ac 	str	q2, [sp, #32]
004e987b0 	bl	#-8083940 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e987b4 	ldp	x20, x19, [sp, #64]
004e987b8 	mov	w8, #50
004e987bc 	ldr	x30, [sp, #48]
004e987c0 	mov	w9, #200
004e987c4 	madd	w0, w0, w8, w9
004e987c8 	add	sp, sp, #80
004e987cc 	ret
004e987d0 	bl	#-9468612 ; -> 0x4590d0c 
