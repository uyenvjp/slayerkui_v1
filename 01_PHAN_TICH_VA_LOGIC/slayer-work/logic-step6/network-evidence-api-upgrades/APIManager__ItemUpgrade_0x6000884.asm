0050c2808 	stp	x30, x23, [sp, #-48]!
0050c280c 	stp	x22, x21, [sp, #16]
0050c2810 	stp	x20, x19, [sp, #32]
0050c2814 	adrp	x22, #95502336 ; -> 0xabd6000 
0050c2818 	mov	w19, w2
0050c281c 	mov	w20, w1
0050c2820 	ldrb	w8, [x22, #800]
0050c2824 	mov	w21, w0
0050c2828 	tbnz	w8, #0, #72 ; -> 0x50c2870 
0050c282c 	adrp	x0, #87212032 ; -> 0xa3ee000 
0050c2830 	ldr	x0, [x0, #3648]
0050c2834 	bl	#-11738580 ; -> 0x4590a60 
0050c2838 	adrp	x0, #87224320 ; -> 0xa3f1000 
0050c283c 	ldr	x0, [x0, #2632]
0050c2840 	bl	#-11738592 ; -> 0x4590a60 
0050c2844 	adrp	x0, #87494656 ; -> 0xa433000 
0050c2848 	ldr	x0, [x0, #2040]
0050c284c 	bl	#-11738604 ; -> 0x4590a60 
0050c2850 	adrp	x0, #87494656 ; -> 0xa433000 
0050c2854 	ldr	x0, [x0, #2048]
0050c2858 	bl	#-11738616 ; -> 0x4590a60 
0050c285c 	adrp	x0, #87494656 ; -> 0xa433000 
0050c2860 	ldr	x0, [x0, #2056]
0050c2864 	bl	#-11738628 ; -> 0x4590a60 
0050c2868 	mov	w8, #1
0050c286c 	strb	w8, [x22, #800]
0050c2870 	mov	w0, #3450
0050c2874 	mov	x1, xzr
0050c2878 	bl	#-4698836 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c287c 	tbz	w0, #0, #52 ; -> 0x50c28b0 
0050c2880 	mov	w0, #3450
0050c2884 	mov	x1, xzr
0050c2888 	bl	#-4698672 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c288c 	cbz	x0, #256 ; -> 0x50c298c 
0050c2890 	mov	w1, w21
0050c2894 	mov	w2, w20
0050c2898 	mov	w3, w19
0050c289c 	ldp	x20, x19, [sp, #32]
0050c28a0 	mov	x4, xzr
0050c28a4 	ldp	x22, x21, [sp, #16]
0050c28a8 	ldp	x30, x23, [sp], #48
0050c28ac 	b	#-5406424 ; -> 0x4b9a9d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_539
0050c28b0 	adrp	x8, #87494656 ; -> 0xa433000 
0050c28b4 	adrp	x23, #87494656 ; -> 0xa433000 
0050c28b8 	ldr	x8, [x8, #2056]
0050c28bc 	ldr	x23, [x23, #2040]
0050c28c0 	ldr	x0, [x8]
0050c28c4 	bl	#-11738056 ; -> 0x4590cfc 
0050c28c8 	mov	x1, xzr
0050c28cc 	mov	x22, x0
0050c28d0 	bl	#-10156700 ; -> 0x4712e34 APIManager+<>c__DisplayClass36_0::.ctor
0050c28d4 	ldr	x0, [x23]
0050c28d8 	bl	#-11738076 ; -> 0x4590cfc 
0050c28dc 	mov	x1, xzr
0050c28e0 	mov	x23, x0
0050c28e4 	bl	#57758300 ; -> 0x87d7b40 GrowSlayer.ItemUpgradeRequest::.ctor
0050c28e8 	cbz	x23, #164 ; -> 0x50c298c 
0050c28ec 	stp	w20, w21, [x23, #24]
0050c28f0 	str	w19, [x23, #32]
0050c28f4 	cbz	x22, #152 ; -> 0x50c298c 
0050c28f8 	mov	x20, x22
0050c28fc 	mov	x1, x23
0050c2900 	str	x23, [x20, #16]!
0050c2904 	mov	x0, x20
0050c2908 	bl	#-11738884 ; -> 0x4590a04 
0050c290c 	mov	w0, #6
0050c2910 	mov	x1, xzr
0050c2914 	bl	#-9055584 ; -> 0x481fbb4 APIValidator::GetCurrency
0050c2918 	mov	x1, x0
0050c291c 	mov	x0, x22
0050c2920 	str	x1, [x0, #24]!
0050c2924 	bl	#-11738912 ; -> 0x4590a04 
0050c2928 	adrp	x8, #87224320 ; -> 0xa3f1000 
0050c292c 	ldr	x8, [x8, #2632]
0050c2930 	ldr	x0, [x8]
0050c2934 	bl	#-11738168 ; -> 0x4590cfc 
0050c2938 	adrp	x8, #87494656 ; -> 0xa433000 
0050c293c 	mov	x1, x22
0050c2940 	mov	x3, xzr
0050c2944 	ldr	x8, [x8, #2048]
0050c2948 	mov	x19, x0
0050c294c 	ldr	x2, [x8]
0050c2950 	bl	#23518372 ; -> 0x67305f4 
0050c2954 	adrp	x8, #87212032 ; -> 0xa3ee000 
0050c2958 	ldr	x8, [x8, #3648]
0050c295c 	ldr	x20, [x20]
0050c2960 	ldr	x0, [x8]
0050c2964 	ldr	w8, [x0, #228]
0050c2968 	cbnz	w8, #8 ; -> 0x50c2970 
0050c296c 	bl	#-11738508 ; -> 0x4590be0 
0050c2970 	mov	x1, x19
0050c2974 	mov	x2, x20
0050c2978 	mov	w0, #36
0050c297c 	ldp	x20, x19, [sp, #32]
0050c2980 	ldp	x22, x21, [sp, #16]
0050c2984 	ldp	x30, x23, [sp], #48
0050c2988 	b	#-3908 ; -> 0x50c1a44 APIManager::AddRequest
0050c298c 	bl	#-11738240 ; -> 0x4590d0c 
