004eef484 	stp	d11, d10, [sp, #-128]!
004eef488 	stp	d9, d8, [sp, #16]
004eef48c 	stp	x29, x30, [sp, #32]
004eef490 	stp	x28, x27, [sp, #48]
004eef494 	stp	x26, x25, [sp, #64]
004eef498 	stp	x24, x23, [sp, #80]
004eef49c 	stp	x22, x21, [sp, #96]
004eef4a0 	stp	x20, x19, [sp, #112]
004eef4a4 	sub	sp, sp, #880
004eef4a8 	mrs	x25, TPIDR_EL0
004eef4ac 	mov	x19, x8
004eef4b0 	adrp	x21, #97411072 ; -> 0xabd5000 
004eef4b4 	ldr	x8, [x25, #40]
004eef4b8 	mov	x20, x0
004eef4bc 	add	x26, sp, #704
004eef4c0 	str	x8, [sp, #872]
004eef4c4 	ldrb	w8, [x21, #1440]
004eef4c8 	tbnz	w8, #0, #84 ; -> 0x4eef51c 
004eef4cc 	adrp	x0, #89374720 ; -> 0xa42b000 
004eef4d0 	ldr	x0, [x0, #2352]
004eef4d4 	bl	#-9824884 ; -> 0x4590a60 
004eef4d8 	adrp	x0, #89374720 ; -> 0xa42b000 
004eef4dc 	ldr	x0, [x0, #2360]
004eef4e0 	bl	#-9824896 ; -> 0x4590a60 
004eef4e4 	adrp	x0, #89374720 ; -> 0xa42b000 
004eef4e8 	ldr	x0, [x0, #2368]
004eef4ec 	bl	#-9824908 ; -> 0x4590a60 
004eef4f0 	adrp	x0, #89120768 ; -> 0xa3ed000 
004eef4f4 	ldr	x0, [x0, #3016]
004eef4f8 	bl	#-9824920 ; -> 0x4590a60 
004eef4fc 	adrp	x0, #89374720 ; -> 0xa42b000 
004eef500 	ldr	x0, [x0, #2376]
004eef504 	bl	#-9824932 ; -> 0x4590a60 
004eef508 	adrp	x0, #89133056 ; -> 0xa3f0000 
004eef50c 	ldr	x0, [x0, #1296]
004eef510 	bl	#-9824944 ; -> 0x4590a60 
004eef514 	mov	w8, #1
004eef518 	strb	w8, [x21, #1440]
004eef51c 	movi	v0.2d, #0000000000000000
004eef520 	mov	w0, #4401
004eef524 	mov	x1, xzr
004eef528 	stur	q0, [x26, #143]
004eef52c 	stp	q0, q0, [x26]
004eef530 	stp	q0, q0, [x26, #80]
004eef534 	stp	q0, q0, [x26, #112]
004eef538 	stur	q0, [x26, #63]
004eef53c 	stp	q0, q0, [x26, #32]
004eef540 	bl	#-2785180 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eef544 	tbz	w0, #0, #52 ; -> 0x4eef578 
004eef548 	mov	w0, #4401
004eef54c 	mov	x1, xzr
004eef550 	bl	#-2785016 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eef554 	cbz	x0, #836 ; -> 0x4eef898 
004eef558 	add	x8, sp, #80
004eef55c 	mov	x1, x20
004eef560 	mov	x2, xzr
004eef564 	bl	#-3583224 ; -> 0x4b8486c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_126
004eef568 	ldp	q0, q1, [sp, #80]
004eef56c 	str	q0, [x19]
004eef570 	ldp	q0, q2, [sp, #112]
004eef574 	b	#740 ; -> 0x4eef858 
004eef578 	ldr	x8, [x20, #312]
004eef57c 	cbz	x8, #796 ; -> 0x4eef898 
004eef580 	mov	w9, #9736
004eef584 	add	x0, sp, #560
004eef588 	mov	w2, #72
004eef58c 	add	x1, x8, x9
004eef590 	bl	#82297696 ; -> 0x9d6b8f0 
004eef594 	add	x0, sp, #560
004eef598 	mov	x1, xzr
004eef59c 	bl	#-3790964 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef5a0 	ldr	x8, [x20, #312]
004eef5a4 	cbz	x8, #756 ; -> 0x4eef898 
004eef5a8 	mov	w9, #9032
004eef5ac 	fmov	s8, s0
004eef5b0 	add	x27, sp, #80
004eef5b4 	add	x8, x8, x9
004eef5b8 	add	x0, sp, #496
004eef5bc 	mov	x1, xzr
004eef5c0 	ldp	q0, q1, [x8]
004eef5c4 	stp	q0, q1, [x27, #416]
004eef5c8 	ldp	q0, q2, [x8, #32]
004eef5cc 	stp	q0, q2, [x27, #448]
004eef5d0 	bl	#-3789440 ; -> 0x4b52350 SilentInt::op_Implicit
004eef5d4 	ldr	x8, [x20, #312]
004eef5d8 	cbz	x8, #704 ; -> 0x4eef898 
004eef5dc 	mov	w9, #8240
004eef5e0 	mov	w21, w0
004eef5e4 	add	x0, sp, #424
004eef5e8 	add	x1, x8, x9
004eef5ec 	mov	w2, #72
004eef5f0 	bl	#82297600 ; -> 0x9d6b8f0 
004eef5f4 	add	x0, sp, #424
004eef5f8 	mov	x1, xzr
004eef5fc 	bl	#-3791060 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef600 	ldr	x8, [x20, #312]
004eef604 	cbz	x8, #660 ; -> 0x4eef898 
004eef608 	mov	w9, #5432
004eef60c 	add	x0, sp, #352
004eef610 	mov	w2, #72
004eef614 	add	x1, x8, x9
004eef618 	fmov	s9, s0
004eef61c 	bl	#82297556 ; -> 0x9d6b8f0 
004eef620 	add	x0, sp, #352
004eef624 	mov	x1, xzr
004eef628 	bl	#-3791104 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef62c 	ldr	x8, [x20, #312]
004eef630 	cbz	x8, #616 ; -> 0x4eef898 
004eef634 	fmov	s10, s0
004eef638 	ldr	q0, [x8, #16944]
004eef63c 	ldr	q1, [x8, #16960]
004eef640 	ldr	q2, [x8, #16976]
004eef644 	add	x0, sp, #288
004eef648 	mov	x1, xzr
004eef64c 	stp	q0, q1, [x27, #208]
004eef650 	ldr	q0, [x8, #16992]
004eef654 	stp	q2, q0, [x27, #240]
004eef658 	bl	#-3789576 ; -> 0x4b52350 SilentInt::op_Implicit
004eef65c 	ldr	x8, [x20, #312]
004eef660 	cbz	x8, #568 ; -> 0x4eef898 
004eef664 	ldr	q0, [x8, #17936]
004eef668 	ldr	q1, [x8, #17952]
004eef66c 	mov	w22, w0
004eef670 	ldr	q2, [x8, #17968]
004eef674 	add	x0, sp, #224
004eef678 	mov	x1, xzr
004eef67c 	stp	q0, q1, [x27, #144]
004eef680 	ldr	q0, [x8, #17984]
004eef684 	stp	q2, q0, [x27, #176]
004eef688 	bl	#-3789624 ; -> 0x4b52350 SilentInt::op_Implicit
004eef68c 	ldr	x8, [x20, #312]
004eef690 	cbz	x8, #520 ; -> 0x4eef898 
004eef694 	mov	w9, #20632
004eef698 	mov	w23, w0
004eef69c 	add	x0, sp, #160
004eef6a0 	add	x8, x8, x9
004eef6a4 	mov	x1, xzr
004eef6a8 	ldp	q0, q1, [x8]
004eef6ac 	stp	q0, q1, [x27, #80]
004eef6b0 	ldp	q0, q2, [x8, #32]
004eef6b4 	stp	q0, q2, [x27, #112]
004eef6b8 	bl	#-3789672 ; -> 0x4b52350 SilentInt::op_Implicit
004eef6bc 	adrp	x28, #97386496 ; -> 0xabcf000 
004eef6c0 	mov	w24, w0
004eef6c4 	ldrb	w8, [x28, #636]
004eef6c8 	cbnz	w8, #24 ; -> 0x4eef6e0 
004eef6cc 	adrp	x0, #89128960 ; -> 0xa3ef000 
004eef6d0 	ldr	x0, [x0, #3328]
004eef6d4 	bl	#-9825396 ; -> 0x4590a60 
004eef6d8 	mov	w8, #1
004eef6dc 	strb	w8, [x28, #636]
004eef6e0 	adrp	x8, #89128960 ; -> 0xa3ef000 
004eef6e4 	ldr	x8, [x8, #3328]
004eef6e8 	ldr	x8, [x8]
004eef6ec 	ldr	x8, [x8, #184]
004eef6f0 	ldr	x8, [x8]
004eef6f4 	cbz	x8, #264 ; -> 0x4eef7fc 
004eef6f8 	ldr	x8, [x8, #104]
004eef6fc 	cbz	x8, #412 ; -> 0x4eef898 
004eef700 	add	x0, sp, #632
004eef704 	add	x1, x8, #352
004eef708 	mov	w2, #72
004eef70c 	bl	#82297316 ; -> 0x9d6b8f0 
004eef710 	movi	v0.2d, #0000000000000000
004eef714 	adrp	x8, #89374720 ; -> 0xa42b000 
004eef718 	add	x0, sp, #80
004eef71c 	add	x1, sp, #632
004eef720 	add	x26, sp, #80
004eef724 	str	q0, [x27, #64]
004eef728 	ldr	x8, [x8, #2368]
004eef72c 	stp	q0, q0, [sp, #80]
004eef730 	stp	q0, q0, [sp, #112]
004eef734 	ldr	x2, [x8]
004eef738 	bl	#34281648 ; -> 0x6fa0fe8 
004eef73c 	ldrb	w27, [sp, #80]
004eef740 	add	x0, sp, #704
004eef744 	orr	x1, x26, #0x1
004eef748 	mov	w2, #79
004eef74c 	bl	#82297252 ; -> 0x9d6b8f0 
004eef750 	add	x0, sp, #784
004eef754 	add	x1, sp, #704
004eef758 	mov	w2, #79
004eef75c 	add	x26, sp, #784
004eef760 	bl	#82297232 ; -> 0x9d6b8f0 
004eef764 	movi	d11, #0000000000000000
004eef768 	cbz	w27, #180 ; -> 0x4eef81c 
004eef76c 	add	x0, sp, #8
004eef770 	orr	x1, x26, #0x7
004eef774 	mov	w2, #72
004eef778 	bl	#82297208 ; -> 0x9d6b8f0 
004eef77c 	add	x0, sp, #8
004eef780 	mov	x1, xzr
004eef784 	bl	#-3791452 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eef788 	adrp	x26, #89120768 ; -> 0xa3ed000 
004eef78c 	add	x0, sp, #80
004eef790 	ldr	x26, [x26, #3016]
004eef794 	str	xzr, [sp, #80]
004eef798 	ldr	x1, [x26]
004eef79c 	bl	#34282828 ; -> 0x6fa14e8 
004eef7a0 	ldr	x8, [sp, #80]
004eef7a4 	tst	x8, #0xff
004eef7a8 	b.eq	#116 ; -> 0x4eef81c 
004eef7ac 	scvtf	s0, w21
004eef7b0 	scvtf	s1, w22
004eef7b4 	lsr	x8, x8, #32
004eef7b8 	ldr	x1, [x26]
004eef7bc 	add	x0, sp, #80
004eef7c0 	str	xzr, [sp, #80]
004eef7c4 	fadd	s0, s8, s0
004eef7c8 	fadd	s0, s0, s9
004eef7cc 	fadd	s0, s0, s10
004eef7d0 	fadd	s0, s0, s1
004eef7d4 	scvtf	s1, w23
004eef7d8 	fadd	s0, s0, s1
004eef7dc 	scvtf	s1, w24
004eef7e0 	fadd	s0, s0, s1
004eef7e4 	fmov	s1, w8
004eef7e8 	fadd	s0, s0, s1
004eef7ec 	bl	#34282748 ; -> 0x6fa14e8 
004eef7f0 	ldr	s0, [sp, #84]
004eef7f4 	fcvt	d11, s0
004eef7f8 	b	#36 ; -> 0x4eef81c 
004eef7fc 	movi	v0.2d, #0000000000000000
004eef800 	movi	d11, #0000000000000000
004eef804 	stur	q0, [x26, #63]
004eef808 	stp	q0, q0, [x26]
004eef80c 	stp	q0, q0, [x26, #32]
004eef810 	stp	q0, q0, [x26, #80]
004eef814 	stp	q0, q0, [x26, #112]
004eef818 	stur	q0, [x26, #143]
004eef81c 	mov	x9, #9218868437227405312
004eef820 	fcvtzs	x8, d11
004eef824 	add	x20, x20, #1128
004eef828 	fmov	d0, x9
004eef82c 	mov	x9, #100
004eef830 	mov	x0, x20
004eef834 	movk	x9, #32768, lsl #48
004eef838 	mov	x2, xzr
004eef83c 	fcmp	d11, d0
004eef840 	add	x8, x8, #100
004eef844 	csel	x1, x9, x8, eq
004eef848 	bl	#-3788972 ; -> 0x4b5279c SilentLong::set_Value
004eef84c 	ldp	q0, q1, [x20]
004eef850 	str	q0, [x19]
004eef854 	ldp	q0, q2, [x20, #32]
004eef858 	stp	q1, q0, [x19, #16]
004eef85c 	str	q2, [x19, #48]
004eef860 	ldr	x8, [x25, #40]
004eef864 	ldr	x9, [sp, #872]
004eef868 	cmp	x8, x9
004eef86c 	b.ne	#64 ; -> 0x4eef8ac 
004eef870 	add	sp, sp, #880
004eef874 	ldp	x20, x19, [sp, #112]
004eef878 	ldp	x22, x21, [sp, #96]
004eef87c 	ldp	x24, x23, [sp, #80]
004eef880 	ldp	x26, x25, [sp, #64]
004eef884 	ldp	x28, x27, [sp, #48]
004eef888 	ldp	x29, x30, [sp, #32]
004eef88c 	ldp	d9, d8, [sp, #16]
004eef890 	ldp	d11, d10, [sp], #128
004eef894 	ret
004eef898 	ldr	x8, [x25, #40]
004eef89c 	ldr	x9, [sp, #872]
004eef8a0 	cmp	x8, x9
004eef8a4 	b.ne	#8 ; -> 0x4eef8ac 
004eef8a8 	bl	#-9825180 ; -> 0x4590d0c 
004eef8ac 	bl	#82296980 ; -> 0x9d6b940 
