004d4d664 	str	d10, [sp, #-80]!
004d4d668 	stp	d9, d8, [sp, #16]
004d4d66c 	stp	x29, x30, [sp, #32]
004d4d670 	stp	x22, x21, [sp, #48]
004d4d674 	stp	x20, x19, [sp, #64]
004d4d678 	sub	sp, sp, #1120
004d4d67c 	mov	x20, x0
004d4d680 	mov	w0, #1015
004d4d684 	mov	x1, xzr
004d4d688 	mov	x19, x8
004d4d68c 	bl	#-1073384 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4d690 	tbz	w0, #0, #44 ; -> 0x4d4d6bc 
004d4d694 	mov	w0, #1015
004d4d698 	mov	x1, xzr
004d4d69c 	bl	#-1073220 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4d6a0 	cbz	x0, #804 ; -> 0x4d4d9c4 
004d4d6a4 	add	x8, sp, #1048
004d4d6a8 	mov	x1, x20
004d4d6ac 	mov	x2, xzr
004d4d6b0 	bl	#-1869552 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d4d6b4 	add	x1, sp, #1048
004d4d6b8 	b	#740 ; -> 0x4d4d99c 
004d4d6bc 	mov	w8, #9608
004d4d6c0 	add	x0, sp, #976
004d4d6c4 	mov	x1, xzr
004d4d6c8 	add	x8, x20, x8
004d4d6cc 	ldp	q0, q1, [x8]
004d4d6d0 	stp	q0, q1, [sp, #976]
004d4d6d4 	ldp	q0, q2, [x8, #32]
004d4d6d8 	stp	q0, q2, [sp, #1008]
004d4d6dc 	bl	#-2077580 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d6e0 	mov	w8, #8888
004d4d6e4 	mov	w21, w0
004d4d6e8 	add	x0, sp, #904
004d4d6ec 	add	x1, x20, x8
004d4d6f0 	mov	w2, #72
004d4d6f4 	bl	#84009468 ; -> 0x9d6b8f0 
004d4d6f8 	add	x0, sp, #904
004d4d6fc 	mov	x1, xzr
004d4d700 	bl	#-2079192 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d704 	add	x0, sp, #832
004d4d708 	add	x1, x20, #2824
004d4d70c 	mov	w2, #72
004d4d710 	fmov	s8, s0
004d4d714 	bl	#84009436 ; -> 0x9d6b8f0 
004d4d718 	add	x0, sp, #832
004d4d71c 	mov	x1, xzr
004d4d720 	bl	#-2079224 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d724 	add	x8, x20, #1768
004d4d728 	fmov	s9, s0
004d4d72c 	add	x0, sp, #768
004d4d730 	ldp	q0, q1, [x8]
004d4d734 	mov	x1, xzr
004d4d738 	stp	q0, q1, [sp, #768]
004d4d73c 	ldp	q0, q2, [x8, #32]
004d4d740 	stp	q0, q2, [sp, #800]
004d4d744 	bl	#-2077684 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d748 	ldr	q0, [x20, #17200]
004d4d74c 	ldr	q1, [x20, #17216]
004d4d750 	mov	w22, w0
004d4d754 	ldr	q2, [x20, #17232]
004d4d758 	add	x0, sp, #704
004d4d75c 	mov	x1, xzr
004d4d760 	stp	q0, q1, [sp, #704]
004d4d764 	ldr	q0, [x20, #17248]
004d4d768 	stp	q2, q0, [sp, #736]
004d4d76c 	bl	#-2077724 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d770 	add	w8, w21, #100
004d4d774 	scvtf	s1, w22
004d4d778 	mov	x1, xzr
004d4d77c 	scvtf	s0, w8
004d4d780 	fadd	s0, s8, s0
004d4d784 	fadd	s0, s0, s9
004d4d788 	fadd	s0, s0, s1
004d4d78c 	scvtf	s1, w0
004d4d790 	add	x0, x20, #3264
004d4d794 	fadd	s0, s0, s1
004d4d798 	bl	#-2079712 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4d79c 	ldr	d0, [x20, #16360]
004d4d7a0 	fcmp	d0, #0.0
004d4d7a4 	b.le	#72 ; -> 0x4d4d7ec 
004d4d7a8 	add	x0, sp, #632
004d4d7ac 	add	x1, x20, #3264
004d4d7b0 	mov	w2, #72
004d4d7b4 	bl	#84009276 ; -> 0x9d6b8f0 
004d4d7b8 	add	x0, sp, #632
004d4d7bc 	mov	x1, xzr
004d4d7c0 	bl	#-2079384 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d7c4 	ldr	d1, [x20, #16360]
004d4d7c8 	mov	w8, #1120403456
004d4d7cc 	add	x0, x20, #3264
004d4d7d0 	fmov	s2, w8
004d4d7d4 	mov	x1, xzr
004d4d7d8 	fcvt	s1, d1
004d4d7dc 	fadd	s1, s1, s2
004d4d7e0 	fmul	s0, s0, s1
004d4d7e4 	fdiv	s0, s0, s2
004d4d7e8 	bl	#-2079792 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4d7ec 	add	x0, sp, #560
004d4d7f0 	add	x1, x20, #3264
004d4d7f4 	mov	w2, #72
004d4d7f8 	bl	#84009208 ; -> 0x9d6b8f0 
004d4d7fc 	add	x0, sp, #560
004d4d800 	mov	x1, xzr
004d4d804 	bl	#-2079452 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d808 	mov	w8, #6872
004d4d80c 	add	x0, sp, #488
004d4d810 	mov	w2, #72
004d4d814 	add	x1, x20, x8
004d4d818 	fmov	s8, s0
004d4d81c 	bl	#84009172 ; -> 0x9d6b8f0 
004d4d820 	add	x0, sp, #488
004d4d824 	mov	x1, xzr
004d4d828 	bl	#-2079488 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d82c 	fmov	s9, s0
004d4d830 	ldr	q0, [x20, #18704]
004d4d834 	ldr	q1, [x20, #18720]
004d4d838 	ldr	q2, [x20, #18736]
004d4d83c 	add	x0, sp, #416
004d4d840 	mov	x1, xzr
004d4d844 	stp	q0, q1, [sp, #416]
004d4d848 	ldr	q0, [x20, #18752]
004d4d84c 	stp	q2, q0, [sp, #448]
004d4d850 	bl	#-2077952 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d854 	mov	w8, #21592
004d4d858 	mov	w21, w0
004d4d85c 	add	x0, sp, #352
004d4d860 	add	x8, x20, x8
004d4d864 	mov	x1, xzr
004d4d868 	ldp	q0, q1, [x8]
004d4d86c 	stp	q0, q1, [sp, #352]
004d4d870 	ldp	q0, q2, [x8, #32]
004d4d874 	stp	q0, q2, [sp, #384]
004d4d878 	bl	#-2077992 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d87c 	mov	w8, #1120403456
004d4d880 	scvtf	s1, w21
004d4d884 	mov	x1, xzr
004d4d888 	fmov	s10, w8
004d4d88c 	fadd	s0, s9, s10
004d4d890 	fadd	s0, s0, s1
004d4d894 	scvtf	s1, w0
004d4d898 	add	x0, x20, #3264
004d4d89c 	fadd	s0, s0, s1
004d4d8a0 	fmul	s0, s8, s0
004d4d8a4 	fdiv	s0, s0, s10
004d4d8a8 	bl	#-2079984 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4d8ac 	add	x0, sp, #280
004d4d8b0 	add	x1, x20, #3264
004d4d8b4 	mov	w2, #72
004d4d8b8 	bl	#84009016 ; -> 0x9d6b8f0 
004d4d8bc 	add	x0, sp, #280
004d4d8c0 	mov	x1, xzr
004d4d8c4 	bl	#-2079644 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d8c8 	fmov	s8, s0
004d4d8cc 	ldr	q0, [x20, #18320]
004d4d8d0 	ldr	q1, [x20, #18336]
004d4d8d4 	ldr	q2, [x20, #18352]
004d4d8d8 	add	x0, sp, #208
004d4d8dc 	mov	x1, xzr
004d4d8e0 	stp	q0, q1, [sp, #208]
004d4d8e4 	ldr	q0, [x20, #18368]
004d4d8e8 	stp	q2, q0, [sp, #240]
004d4d8ec 	bl	#-2078108 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d8f0 	mov	w8, #21208
004d4d8f4 	mov	w21, w0
004d4d8f8 	add	x0, sp, #144
004d4d8fc 	add	x8, x20, x8
004d4d900 	mov	x1, xzr
004d4d904 	ldp	q0, q1, [x8]
004d4d908 	stp	q0, q1, [sp, #144]
004d4d90c 	ldp	q0, q2, [x8, #32]
004d4d910 	stp	q0, q2, [sp, #176]
004d4d914 	bl	#-2078148 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d918 	add	w8, w21, w0
004d4d91c 	add	x0, x20, #3264
004d4d920 	mov	x1, xzr
004d4d924 	add	w8, w8, #100
004d4d928 	scvtf	s0, w8
004d4d92c 	fmul	s0, s8, s0
004d4d930 	fdiv	s0, s0, s10
004d4d934 	bl	#-2080124 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4d938 	add	x0, sp, #72
004d4d93c 	add	x1, x20, #3264
004d4d940 	mov	w2, #72
004d4d944 	bl	#84008876 ; -> 0x9d6b8f0 
004d4d948 	add	x0, sp, #72
004d4d94c 	mov	x1, xzr
004d4d950 	bl	#-2079784 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4d954 	fmov	s8, s0
004d4d958 	ldr	q0, [x20, #22112]
004d4d95c 	ldr	q1, [x20, #22128]
004d4d960 	ldr	q2, [x20, #22144]
004d4d964 	mov	x0, sp
004d4d968 	mov	x1, xzr
004d4d96c 	stp	q0, q1, [sp]
004d4d970 	ldr	q0, [x20, #22160]
004d4d974 	stp	q2, q0, [sp, #32]
004d4d978 	bl	#-2078248 ; -> 0x4b52350 SilentInt::op_Implicit
004d4d97c 	add	w8, w0, #100
004d4d980 	add	x0, x20, #3264
004d4d984 	mov	x1, xzr
004d4d988 	scvtf	s0, w8
004d4d98c 	fmul	s0, s8, s0
004d4d990 	fdiv	s0, s0, s10
004d4d994 	bl	#-2080220 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4d998 	add	x1, x20, #3264
004d4d99c 	mov	x0, x19
004d4d9a0 	mov	w2, #72
004d4d9a4 	bl	#84008780 ; -> 0x9d6b8f0 
004d4d9a8 	add	sp, sp, #1120
004d4d9ac 	ldp	x20, x19, [sp, #64]
004d4d9b0 	ldp	x22, x21, [sp, #48]
004d4d9b4 	ldp	x29, x30, [sp, #32]
004d4d9b8 	ldp	d9, d8, [sp, #16]
004d4d9bc 	ldr	d10, [sp], #80
004d4d9c0 	ret
004d4d9c4 	bl	#-8113336 ; -> 0x4590d0c 
