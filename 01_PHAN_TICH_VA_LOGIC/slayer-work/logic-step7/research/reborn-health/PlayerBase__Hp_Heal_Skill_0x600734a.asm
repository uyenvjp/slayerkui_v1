004ef2724 	sub	sp, sp, #80
004ef2728 	str	d10, [sp, #16]
004ef272c 	stp	d9, d8, [sp, #32]
004ef2730 	stp	x30, x21, [sp, #48]
004ef2734 	stp	x20, x19, [sp, #64]
004ef2738 	fmov	s8, s0
004ef273c 	adrp	x20, #97398784 ; -> 0xabd5000 
004ef2740 	mov	x19, x0
004ef2744 	ldrb	w8, [x20, #1455]
004ef2748 	tbnz	w8, #0, #48 ; -> 0x4ef2778 
004ef274c 	adrp	x0, #89092096 ; -> 0xa3e9000 
004ef2750 	ldr	x0, [x0, #3552]
004ef2754 	bl	#-9837812 ; -> 0x4590a60 
004ef2758 	adrp	x0, #89116672 ; -> 0xa3ef000 
004ef275c 	ldr	x0, [x0, #3552]
004ef2760 	bl	#-9837824 ; -> 0x4590a60 
004ef2764 	adrp	x0, #89321472 ; -> 0xa421000 
004ef2768 	ldr	x0, [x0, #3080]
004ef276c 	bl	#-9837836 ; -> 0x4590a60 
004ef2770 	mov	w8, #1
004ef2774 	strb	w8, [x20, #1455]
004ef2778 	mov	w0, #32859
004ef277c 	mov	x1, xzr
004ef2780 	stp	xzr, xzr, [sp]
004ef2784 	bl	#-2798048 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef2788 	tbz	w0, #0, #56 ; -> 0x4ef27c0 
004ef278c 	mov	w0, #32859
004ef2790 	mov	x1, xzr
004ef2794 	bl	#-2797884 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef2798 	cbz	x0, #412 ; -> 0x4ef2934 
004ef279c 	mov	x1, x19
004ef27a0 	fmov	s0, s8
004ef27a4 	ldr	d10, [sp, #16]
004ef27a8 	ldp	x20, x19, [sp, #64]
004ef27ac 	mov	x2, xzr
004ef27b0 	ldp	x30, x21, [sp, #48]
004ef27b4 	ldp	d9, d8, [sp, #32]
004ef27b8 	add	sp, sp, #80
004ef27bc 	b	#-3617512 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
004ef27c0 	adrp	x21, #89092096 ; -> 0xa3e9000 
004ef27c4 	mov	x0, x19
004ef27c8 	mov	x1, xzr
004ef27cc 	ldr	x21, [x21, #3552]
004ef27d0 	bl	#1195444 ; -> 0x5016584 Character::get_Hp_max
004ef27d4 	mov	x20, x0
004ef27d8 	ldr	x0, [x21]
004ef27dc 	mov	x21, x1
004ef27e0 	ldr	w8, [x0, #228]
004ef27e4 	cbnz	w8, #8 ; -> 0x4ef27ec 
004ef27e8 	bl	#-9837576 ; -> 0x4590be0 
004ef27ec 	mov	w8, #2139095040
004ef27f0 	fcvtzs	w9, s8
004ef27f4 	mov	x1, xzr
004ef27f8 	fmov	s0, w8
004ef27fc 	mov	w8, #-2147483648
004ef2800 	fcmp	s8, s0
004ef2804 	csel	w0, w8, w9, eq
004ef2808 	bl	#69773212 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef280c 	mov	x2, x0
004ef2810 	mov	x3, x1
004ef2814 	mov	x0, x20
004ef2818 	mov	x1, x21
004ef281c 	mov	x4, xzr
004ef2820 	bl	#69763108 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef2824 	mov	x20, x0
004ef2828 	mov	x21, x1
004ef282c 	mov	w0, #100
004ef2830 	mov	x1, xzr
004ef2834 	bl	#69773168 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef2838 	mov	x2, x0
004ef283c 	mov	x3, x1
004ef2840 	mov	x0, x20
004ef2844 	mov	x1, x21
004ef2848 	mov	x4, xzr
004ef284c 	bl	#69763564 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef2850 	mov	x8, x0
004ef2854 	mov	x2, x1
004ef2858 	stp	x0, x1, [sp]
004ef285c 	mov	x0, x19
004ef2860 	mov	x1, x8
004ef2864 	bl	#-964 ; -> 0x4ef24a0 PlayerBase::Hp_Heal
004ef2868 	mov	x0, sp
004ef286c 	mov	x1, xzr
004ef2870 	bl	#69770700 ; -> 0x917c63c System.Numerics.BigInteger::ToString
004ef2874 	ldr	x8, [x19, #312]
004ef2878 	cbz	x8, #188 ; -> 0x4ef2934 
004ef287c 	mov	w9, #15829
004ef2880 	ldrb	w8, [x8, x9]
004ef2884 	cbz	w8, #48 ; -> 0x4ef28b4 
004ef2888 	ldp	x1, x2, [sp]
004ef288c 	mov	x0, x19
004ef2890 	mov	x3, xzr
004ef2894 	bl	#1199348 ; -> 0x5017588 Character::DmgTextMinimize
004ef2898 	adrp	x8, #89116672 ; -> 0xa3ef000 
004ef289c 	mov	x1, x0
004ef28a0 	mov	x2, xzr
004ef28a4 	ldr	x8, [x8, #3552]
004ef28a8 	ldr	x8, [x8]
004ef28ac 	mov	x0, x8
004ef28b0 	bl	#64853400 ; -> 0x8ccbe48 System.String::Concat
004ef28b4 	mov	x20, x0
004ef28b8 	ldr	x0, [x19, #168]
004ef28bc 	cbz	x0, #120 ; -> 0x4ef2934 
004ef28c0 	mov	x1, xzr
004ef28c4 	bl	#78776424 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef28c8 	adrp	x8, #89116672 ; -> 0xa3ef000 
004ef28cc 	mov	x1, x20
004ef28d0 	mov	x2, xzr
004ef28d4 	ldr	x8, [x8, #3552]
004ef28d8 	fmov	s8, s0
004ef28dc 	fmov	s9, s1
004ef28e0 	fmov	s10, s2
004ef28e4 	ldr	x0, [x8]
004ef28e8 	bl	#64853344 ; -> 0x8ccbe48 System.String::Concat
004ef28ec 	adrp	x8, #89321472 ; -> 0xa421000 
004ef28f0 	fmov	s0, s8
004ef28f4 	fmov	s1, s9
004ef28f8 	ldr	x8, [x8, #3080]
004ef28fc 	ldr	x9, [x19]
004ef2900 	fmov	s2, s10
004ef2904 	mov	x1, x0
004ef2908 	mov	x0, x19
004ef290c 	ldr	x2, [x8]
004ef2910 	ldr	x8, [x9, #696]
004ef2914 	ldr	x3, [x9, #704]
004ef2918 	blr	x8
004ef291c 	ldp	x20, x19, [sp, #64]
004ef2920 	ldr	d10, [sp, #16]
004ef2924 	ldp	x30, x21, [sp, #48]
004ef2928 	ldp	d9, d8, [sp, #32]
004ef292c 	add	sp, sp, #80
004ef2930 	ret
004ef2934 	bl	#-9837608 ; -> 0x4590d0c 
