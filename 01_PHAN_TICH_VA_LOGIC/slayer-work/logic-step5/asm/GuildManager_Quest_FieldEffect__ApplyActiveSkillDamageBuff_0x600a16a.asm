005208568 	sub	sp, sp, #160
00520856c 	str	d8, [sp, #96]
005208570 	stp	x30, x23, [sp, #112]
005208574 	stp	x22, x21, [sp, #128]
005208578 	stp	x20, x19, [sp, #144]
00520857c 	adrp	x23, #94167040 ; -> 0xabd6000 
005208580 	mov	x19, x3
005208584 	mov	x20, x2
005208588 	ldrb	w8, [x23, #3350]
00520858c 	mov	x21, x1
005208590 	mov	x22, x0
005208594 	tbnz	w8, #0, #24 ; -> 0x52085ac 
005208598 	adrp	x0, #85856256 ; -> 0xa3e9000 
00520859c 	ldr	x0, [x0, #3552]
0052085a0 	bl	#-13073216 ; -> 0x4590a60 
0052085a4 	mov	w8, #1
0052085a8 	strb	w8, [x23, #3350]
0052085ac 	mov	w0, #41921
0052085b0 	mov	x1, xzr
0052085b4 	bl	#-6033424 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052085b8 	tbz	w0, #0, #64 ; -> 0x52085f8 
0052085bc 	mov	w0, #41921
0052085c0 	mov	x1, xzr
0052085c4 	bl	#-6033260 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052085c8 	cbz	x0, #404 ; -> 0x520875c 
0052085cc 	mov	x1, x22
0052085d0 	mov	x2, x21
0052085d4 	mov	x3, x20
0052085d8 	mov	x4, x19
0052085dc 	ldp	x20, x19, [sp, #144]
0052085e0 	ldp	x22, x21, [sp, #128]
0052085e4 	ldr	d8, [sp, #96]
0052085e8 	ldp	x30, x23, [sp, #112]
0052085ec 	mov	x5, xzr
0052085f0 	add	sp, sp, #160
0052085f4 	b	#-6424544 ; -> 0x4be7e14 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2068
0052085f8 	ldr	x8, [x22, #40]
0052085fc 	cbz	x8, #320 ; -> 0x520873c 
005208600 	ldr	w9, [x8, #24]
005208604 	cmp	w9, #3
005208608 	b.eq	#80 ; -> 0x5208658 
00520860c 	cmp	w9, #2
005208610 	b.eq	#44 ; -> 0x520863c 
005208614 	cmp	w9, #1
005208618 	b.ne	#292 ; -> 0x520873c 
00520861c 	cbz	x21, #320 ; -> 0x520875c 
005208620 	ldr	x9, [x21, #32]
005208624 	cbz	x9, #312 ; -> 0x520875c 
005208628 	ldr	w9, [x9, #56]
00520862c 	ldr	w10, [x8, #28]
005208630 	cmp	w9, w10
005208634 	b.eq	#60 ; -> 0x5208670 
005208638 	b	#260 ; -> 0x520873c 
00520863c 	cbz	x21, #288 ; -> 0x520875c 
005208640 	ldr	x9, [x21, #32]
005208644 	cbz	x9, #280 ; -> 0x520875c 
005208648 	ldr	w9, [x9, #140]
00520864c 	cmp	w9, #4
005208650 	b.eq	#32 ; -> 0x5208670 
005208654 	b	#232 ; -> 0x520873c 
005208658 	cbz	x21, #260 ; -> 0x520875c 
00520865c 	ldr	x9, [x21, #32]
005208660 	cbz	x9, #252 ; -> 0x520875c 
005208664 	ldr	w9, [x9, #140]
005208668 	cmp	w9, #2
00520866c 	b.ne	#208 ; -> 0x520873c 
005208670 	ldr	s0, [x8, #32]
005208674 	add	x8, sp, #48
005208678 	mov	x0, xzr
00520867c 	bl	#-11716324 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005208680 	ldp	q0, q1, [sp, #48]
005208684 	mov	x0, sp
005208688 	ldr	q2, [sp, #80]
00520868c 	mov	x1, xzr
005208690 	stp	q0, q1, [sp]
005208694 	str	q2, [sp, #32]
005208698 	bl	#-11686284 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00520869c 	adrp	x8, #85856256 ; -> 0xa3e9000 
0052086a0 	fmov	s8, s0
0052086a4 	ldr	x8, [x8, #3552]
0052086a8 	ldr	x0, [x8]
0052086ac 	ldr	w8, [x0, #228]
0052086b0 	cbnz	w8, #8 ; -> 0x52086b8 
0052086b4 	bl	#-13073108 ; -> 0x4590be0 
0052086b8 	mov	w8, #1120403456
0052086bc 	mov	x1, xzr
0052086c0 	fmov	s0, w8
0052086c4 	adrp	x8, #-53342208 ; -> 0x1f29000 
0052086c8 	ldr	s1, [x8, #2416]
0052086cc 	mov	w8, #2139095040
0052086d0 	fmul	s0, s8, s0
0052086d4 	fadd	s0, s0, s1
0052086d8 	fmov	s1, w8
0052086dc 	mov	w8, #-2147483648
0052086e0 	fcvtzs	w9, s0
0052086e4 	fcmp	s0, s1
0052086e8 	csel	w0, w8, w9, eq
0052086ec 	bl	#66537656 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0052086f0 	mov	x2, x0
0052086f4 	mov	x3, x1
0052086f8 	mov	x0, x20
0052086fc 	mov	x1, x19
005208700 	mov	x4, xzr
005208704 	bl	#66527552 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
005208708 	mov	x19, x0
00520870c 	mov	x20, x1
005208710 	mov	w0, #10000
005208714 	mov	x1, xzr
005208718 	bl	#66537612 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00520871c 	mov	x2, x0
005208720 	mov	x3, x1
005208724 	mov	x0, x19
005208728 	mov	x1, x20
00520872c 	mov	x4, xzr
005208730 	bl	#66528008 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
005208734 	mov	x20, x0
005208738 	mov	x19, x1
00520873c 	mov	x0, x20
005208740 	mov	x1, x19
005208744 	ldr	d8, [sp, #96]
005208748 	ldp	x20, x19, [sp, #144]
00520874c 	ldp	x22, x21, [sp, #128]
005208750 	ldp	x30, x23, [sp, #112]
005208754 	add	sp, sp, #160
005208758 	ret
00520875c 	bl	#-13072976 ; -> 0x4590d0c 
