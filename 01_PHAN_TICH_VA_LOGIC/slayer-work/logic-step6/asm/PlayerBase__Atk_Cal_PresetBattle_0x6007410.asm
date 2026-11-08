004ef0554 	sub	sp, sp, #352
004ef0558 	str	d8, [sp, #272]
004ef055c 	stp	x29, x30, [sp, #288]
004ef0560 	stp	x24, x23, [sp, #304]
004ef0564 	stp	x22, x21, [sp, #320]
004ef0568 	stp	x20, x19, [sp, #336]
004ef056c 	adrp	x21, #97406976 ; -> 0xabd5000 
004ef0570 	mov	x20, x1
004ef0574 	mov	x19, x0
004ef0578 	ldrb	w8, [x21, #1552]
004ef057c 	tbnz	w8, #0, #24 ; -> 0x4ef0594 
004ef0580 	adrp	x0, #89100288 ; -> 0xa3e9000 
004ef0584 	ldr	x0, [x0, #3552]
004ef0588 	bl	#-9829160 ; -> 0x4590a60 
004ef058c 	mov	w8, #1
004ef0590 	strb	w8, [x21, #1552]
004ef0594 	movi	v0.2d, #0000000000000000
004ef0598 	mov	w0, #4397
004ef059c 	mov	x1, xzr
004ef05a0 	stp	q0, q0, [sp, #208]
004ef05a4 	stp	q0, q0, [sp, #240]
004ef05a8 	bl	#-2789380 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef05ac 	tbz	w0, #0, #60 ; -> 0x4ef05e8 
004ef05b0 	mov	w0, #4397
004ef05b4 	mov	x1, xzr
004ef05b8 	bl	#-2789216 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef05bc 	cbz	x0, #900 ; -> 0x4ef0940 
004ef05c0 	mov	x1, x19
004ef05c4 	mov	x2, x20
004ef05c8 	ldr	d8, [sp, #272]
004ef05cc 	ldp	x20, x19, [sp, #336]
004ef05d0 	mov	x3, xzr
004ef05d4 	ldp	x22, x21, [sp, #320]
004ef05d8 	ldp	x24, x23, [sp, #304]
004ef05dc 	ldp	x29, x30, [sp, #288]
004ef05e0 	add	sp, sp, #352
004ef05e4 	b	#-3612112 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004ef05e8 	cbz	x20, #856 ; -> 0x4ef0940 
004ef05ec 	ldr	x0, [x19, #312]
004ef05f0 	cbz	x0, #848 ; -> 0x4ef0940 
004ef05f4 	ldp	x21, x22, [x20, #16]
004ef05f8 	add	x8, sp, #144
004ef05fc 	mov	x1, xzr
004ef0600 	bl	#-1702956 ; -> 0x4d509d4 DatabaseManager::get_SkillEffect_AtkDmg
004ef0604 	ldp	q0, q1, [sp, #144]
004ef0608 	add	x0, sp, #208
004ef060c 	mov	x1, xzr
004ef0610 	stp	q0, q1, [sp, #208]
004ef0614 	ldp	q0, q2, [sp, #176]
004ef0618 	stp	q0, q2, [sp, #240]
004ef061c 	bl	#-3794956 ; -> 0x4b51e10 SilentInt::get_Value
004ef0620 	adrp	x24, #89100288 ; -> 0xa3e9000 
004ef0624 	mov	w23, w0
004ef0628 	ldr	x24, [x24, #3552]
004ef062c 	ldr	x8, [x24]
004ef0630 	ldr	w9, [x8, #228]
004ef0634 	cbnz	w9, #12 ; -> 0x4ef0640 
004ef0638 	mov	x0, x8
004ef063c 	bl	#-9828956 ; -> 0x4590be0 
004ef0640 	mov	w0, w23
004ef0644 	mov	x1, xzr
004ef0648 	bl	#69781852 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef064c 	mov	x2, x0
004ef0650 	mov	x3, x1
004ef0654 	mov	x0, x21
004ef0658 	mov	x1, x22
004ef065c 	mov	x4, xzr
004ef0660 	bl	#69771748 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef0664 	mov	x21, x0
004ef0668 	mov	x22, x1
004ef066c 	mov	w0, #100
004ef0670 	mov	x1, xzr
004ef0674 	bl	#69781808 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef0678 	mov	x2, x0
004ef067c 	mov	x3, x1
004ef0680 	mov	x0, x21
004ef0684 	mov	x1, x22
004ef0688 	mov	x4, xzr
004ef068c 	bl	#69772204 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef0690 	ldr	s8, [x19, #1480]
004ef0694 	mov	x21, x0
004ef0698 	mov	x22, x1
004ef069c 	fcmp	s8, #0.0
004ef06a0 	b.le	#140 ; -> 0x4ef072c 
004ef06a4 	ldr	x0, [x24]
004ef06a8 	ldr	w8, [x0, #228]
004ef06ac 	cbnz	w8, #8 ; -> 0x4ef06b4 
004ef06b0 	bl	#-9829072 ; -> 0x4590be0 
004ef06b4 	adrp	x8, #-50098176 ; -> 0x1f29000 
004ef06b8 	mov	x1, xzr
004ef06bc 	ldr	s0, [x8, #2416]
004ef06c0 	mov	w8, #2139095040
004ef06c4 	fmov	s1, w8
004ef06c8 	mov	w8, #-2147483648
004ef06cc 	fmul	s0, s8, s0
004ef06d0 	fcvtzs	w9, s0
004ef06d4 	fcmp	s0, s1
004ef06d8 	csel	w0, w8, w9, eq
004ef06dc 	bl	#69781704 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef06e0 	mov	x2, x0
004ef06e4 	mov	x3, x1
004ef06e8 	mov	x0, x21
004ef06ec 	mov	x1, x22
004ef06f0 	mov	x4, xzr
004ef06f4 	bl	#69771600 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef06f8 	mov	x21, x0
004ef06fc 	mov	x22, x1
004ef0700 	mov	w0, #10000
004ef0704 	mov	x1, xzr
004ef0708 	bl	#69781660 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef070c 	mov	x2, x0
004ef0710 	mov	x3, x1
004ef0714 	mov	x0, x21
004ef0718 	mov	x1, x22
004ef071c 	mov	x4, xzr
004ef0720 	bl	#69772056 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef0724 	mov	x21, x0
004ef0728 	mov	x22, x1
004ef072c 	add	x0, sp, #72
004ef0730 	add	x1, x19, #1488
004ef0734 	mov	w2, #72
004ef0738 	bl	#82293176 ; -> 0x9d6b8f0 
004ef073c 	add	x0, sp, #72
004ef0740 	mov	x1, xzr
004ef0744 	bl	#-3795484 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef0748 	fcmp	s0, #0.0
004ef074c 	b.le	#176 ; -> 0x4ef07fc 
004ef0750 	mov	x0, sp
004ef0754 	add	x1, x19, #1488
004ef0758 	mov	w2, #72
004ef075c 	bl	#82293140 ; -> 0x9d6b8f0 
004ef0760 	mov	x0, sp
004ef0764 	mov	x1, xzr
004ef0768 	bl	#-3795520 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef076c 	ldr	x0, [x24]
004ef0770 	fmov	s8, s0
004ef0774 	ldr	w8, [x0, #228]
004ef0778 	cbnz	w8, #8 ; -> 0x4ef0780 
004ef077c 	bl	#-9829276 ; -> 0x4590be0 
004ef0780 	mov	w8, #1120403456
004ef0784 	mov	x1, xzr
004ef0788 	fmov	s0, w8
004ef078c 	mov	w8, #2139095040
004ef0790 	fadd	s1, s8, s0
004ef0794 	fmul	s0, s1, s0
004ef0798 	fmov	s1, w8
004ef079c 	mov	w8, #-2147483648
004ef07a0 	fcvtzs	w9, s0
004ef07a4 	fcmp	s0, s1
004ef07a8 	csel	w0, w8, w9, eq
004ef07ac 	bl	#69781496 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef07b0 	mov	x2, x0
004ef07b4 	mov	x3, x1
004ef07b8 	mov	x0, x21
004ef07bc 	mov	x1, x22
004ef07c0 	mov	x4, xzr
004ef07c4 	bl	#69771392 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef07c8 	mov	x21, x0
004ef07cc 	mov	x22, x1
004ef07d0 	mov	w0, #10000
004ef07d4 	mov	x1, xzr
004ef07d8 	bl	#69781452 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef07dc 	mov	x2, x0
004ef07e0 	mov	x3, x1
004ef07e4 	mov	x0, x21
004ef07e8 	mov	x1, x22
004ef07ec 	mov	x4, xzr
004ef07f0 	bl	#69771848 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef07f4 	mov	x21, x0
004ef07f8 	mov	x22, x1
004ef07fc 	add	x0, x19, #744
004ef0800 	mov	x1, x21
004ef0804 	mov	x2, x22
004ef0808 	mov	x3, xzr
004ef080c 	bl	#-3799572 ; -> 0x4b50df8 SilentBigInt::set_Value
004ef0810 	add	x0, x19, #744
004ef0814 	mov	x1, xzr
004ef0818 	bl	#-3800516 ; -> 0x4b50a54 SilentBigInt::get_Value
004ef081c 	mov	x21, x0
004ef0820 	ldr	x0, [x24]
004ef0824 	ldr	x23, [x20, #72]
004ef0828 	mov	x22, x1
004ef082c 	ldr	w8, [x0, #228]
004ef0830 	cbnz	w8, #8 ; -> 0x4ef0838 
004ef0834 	bl	#-9829460 ; -> 0x4590be0 
004ef0838 	mov	x0, x23
004ef083c 	mov	x1, xzr
004ef0840 	bl	#69779676 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ef0844 	mov	x2, x0
004ef0848 	mov	x3, x1
004ef084c 	mov	x0, x21
004ef0850 	mov	x1, x22
004ef0854 	mov	x4, xzr
004ef0858 	bl	#69771244 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef085c 	mov	x21, x0
004ef0860 	mov	x22, x1
004ef0864 	mov	w0, #100
004ef0868 	mov	x1, xzr
004ef086c 	bl	#69781304 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef0870 	mov	x2, x0
004ef0874 	mov	x3, x1
004ef0878 	mov	x0, x21
004ef087c 	mov	x1, x22
004ef0880 	mov	x4, xzr
004ef0884 	bl	#69771700 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef0888 	mov	x2, x0
004ef088c 	mov	x3, x1
004ef0890 	add	x0, x19, #784
004ef0894 	mov	x1, x2
004ef0898 	mov	x2, x3
004ef089c 	mov	x3, xzr
004ef08a0 	bl	#-3799720 ; -> 0x4b50df8 SilentBigInt::set_Value
004ef08a4 	add	x0, x19, #784
004ef08a8 	mov	x1, xzr
004ef08ac 	bl	#-3800664 ; -> 0x4b50a54 SilentBigInt::get_Value
004ef08b0 	mov	x21, x0
004ef08b4 	ldr	x0, [x20, #88]
004ef08b8 	mov	x20, x1
004ef08bc 	mov	x1, xzr
004ef08c0 	bl	#69779548 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ef08c4 	mov	x2, x0
004ef08c8 	mov	x3, x1
004ef08cc 	mov	x0, x21
004ef08d0 	mov	x1, x20
004ef08d4 	mov	x4, xzr
004ef08d8 	bl	#69771116 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef08dc 	mov	x20, x0
004ef08e0 	mov	x21, x1
004ef08e4 	mov	w0, #100
004ef08e8 	mov	x1, xzr
004ef08ec 	bl	#69781176 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef08f0 	mov	x2, x0
004ef08f4 	mov	x3, x1
004ef08f8 	mov	x0, x20
004ef08fc 	mov	x1, x21
004ef0900 	mov	x4, xzr
004ef0904 	bl	#69771572 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef0908 	mov	x2, x0
004ef090c 	mov	x3, x1
004ef0910 	add	x0, x19, #824
004ef0914 	mov	x1, x2
004ef0918 	mov	x2, x3
004ef091c 	mov	x3, xzr
004ef0920 	bl	#-3799848 ; -> 0x4b50df8 SilentBigInt::set_Value
004ef0924 	ldp	x20, x19, [sp, #336]
004ef0928 	ldr	d8, [sp, #272]
004ef092c 	ldp	x22, x21, [sp, #320]
004ef0930 	ldp	x24, x23, [sp, #304]
004ef0934 	ldp	x29, x30, [sp, #288]
004ef0938 	add	sp, sp, #352
004ef093c 	ret
004ef0940 	bl	#-9829428 ; -> 0x4590d0c 
