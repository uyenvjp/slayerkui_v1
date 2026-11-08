0052a4674 	sub	sp, sp, #112
0052a4678 	str	x30, [sp, #64]
0052a467c 	stp	x22, x21, [sp, #80]
0052a4680 	stp	x20, x19, [sp, #96]
0052a4684 	adrp	x21, #93532160 ; -> 0xabd7000 
0052a4688 	mov	x19, x1
0052a468c 	mov	x20, x0
0052a4690 	ldrb	w8, [x21, #430]
0052a4694 	tbnz	w8, #0, #24 ; -> 0x52a46ac 
0052a4698 	adrp	x0, #85561344 ; -> 0xa43d000 
0052a469c 	ldr	x0, [x0, #2312]
0052a46a0 	bl	#-13712448 ; -> 0x4590a60 
0052a46a4 	mov	w8, #1
0052a46a8 	strb	w8, [x21, #430]
0052a46ac 	movi	v0.2d, #0000000000000000
0052a46b0 	mov	w0, #43224
0052a46b4 	mov	x1, xzr
0052a46b8 	str	xzr, [sp, #48]
0052a46bc 	stp	q0, q0, [sp, #16]
0052a46c0 	str	q0, [sp]
0052a46c4 	bl	#-6672672 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a46c8 	tbz	w0, #0, #52 ; -> 0x52a46fc 
0052a46cc 	mov	w0, #43224
0052a46d0 	mov	x1, xzr
0052a46d4 	bl	#-6672508 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a46d8 	cbz	x0, #160 ; -> 0x52a4778 
0052a46dc 	mov	x1, x20
0052a46e0 	mov	x2, x19
0052a46e4 	ldr	x30, [sp, #64]
0052a46e8 	ldp	x20, x19, [sp, #96]
0052a46ec 	mov	x3, xzr
0052a46f0 	ldp	x22, x21, [sp, #80]
0052a46f4 	add	sp, sp, #112
0052a46f8 	b	#-7487528 ; -> 0x4b806d0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_46
0052a46fc 	adrp	x22, #85561344 ; -> 0xa43d000 
0052a4700 	mov	x21, sp
0052a4704 	mov	x1, xzr
0052a4708 	ldr	x22, [x22, #2312]
0052a470c 	orr	x0, x21, #0x8
0052a4710 	stp	xzr, xzr, [sp, #8]
0052a4714 	bl	#-13712656 ; -> 0x4590a04 
0052a4718 	add	x0, x21, #24
0052a471c 	mov	x1, x20
0052a4720 	str	x20, [sp, #24]
0052a4724 	bl	#-13712672 ; -> 0x4590a04 
0052a4728 	add	x0, x21, #32
0052a472c 	mov	x1, x19
0052a4730 	str	x19, [sp, #32]
0052a4734 	bl	#-13712688 ; -> 0x4590a04 
0052a4738 	ldr	x0, [x22]
0052a473c 	mov	w9, #-1
0052a4740 	str	w9, [sp]
0052a4744 	ldr	x8, [x0, #56]
0052a4748 	cbnz	x8, #8 ; -> 0x52a4750 
0052a474c 	bl	#-13481928 ; -> 0x45c8f84 
0052a4750 	mov	x0, sp
0052a4754 	bl	#17908 ; -> 0x52a8d48 SignManager+<MakeCharacter>d__113::MoveNext
0052a4758 	orr	x0, x21, #0x8
0052a475c 	mov	x1, xzr
0052a4760 	bl	#-12155240 ; -> 0x470cdf8 
0052a4764 	ldp	x20, x19, [sp, #96]
0052a4768 	ldr	x30, [sp, #64]
0052a476c 	ldp	x22, x21, [sp, #80]
0052a4770 	add	sp, sp, #112
0052a4774 	ret
0052a4778 	bl	#-13711980 ; -> 0x4590d0c 
