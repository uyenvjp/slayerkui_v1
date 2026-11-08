0053f2644 	sub	sp, sp, #160
0053f2648 	stp	x30, x23, [sp, #112]
0053f264c 	stp	x22, x21, [sp, #128]
0053f2650 	stp	x20, x19, [sp, #144]
0053f2654 	adrp	x21, #92164096 ; -> 0xabd7000
0053f2658 	mov	x19, x1
0053f265c 	mov	x20, x0
0053f2660 	ldrb	w8, [x21, #2671]
0053f2664 	tbnz	w8, #0, #72 ; -> 0x53f26ac
0053f2668 	adrp	x0, #84213760 ; -> 0xa442000
0053f266c 	ldr	x0, [x0, #2144]
0053f2670 	bl	#-15080464 ; -> 0x4590a60
0053f2674 	adrp	x0, #84090880 ; -> 0xa424000
0053f2678 	ldr	x0, [x0, #1472]
0053f267c 	bl	#-15080476 ; -> 0x4590a60
0053f2680 	adrp	x0, #84213760 ; -> 0xa442000
0053f2684 	ldr	x0, [x0, #2152]
0053f2688 	bl	#-15080488 ; -> 0x4590a60
0053f268c 	adrp	x0, #83841024 ; -> 0xa3e7000
0053f2690 	ldr	x0, [x0, #1440]
0053f2694 	bl	#-15080500 ; -> 0x4590a60
0053f2698 	adrp	x0, #83845120 ; -> 0xa3e8000
0053f269c 	ldr	x0, [x0, #160]
0053f26a0 	bl	#-15080512 ; -> 0x4590a60
0053f26a4 	mov	w8, #1
0053f26a8 	strb	w8, [x21, #2671]
0053f26ac 	mov	w0, #45300
0053f26b0 	mov	x1, xzr
0053f26b4 	stp	xzr, xzr, [sp, #96]
0053f26b8 	stp	xzr, xzr, [sp, #80]
0053f26bc 	stp	xzr, xzr, [sp, #64]
0053f26c0 	bl	#-8040732 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f26c4 	tbz	w0, #0, #52 ; -> 0x53f26f8
0053f26c8 	mov	w0, #45300
0053f26cc 	mov	x1, xzr
0053f26d0 	bl	#-8040568 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f26d4 	cbz	x0, #372 ; -> 0x53f2848
0053f26d8 	mov	x1, x20
0053f26dc 	mov	x2, x19
0053f26e0 	mov	x3, xzr
0053f26e4 	ldp	x20, x19, [sp, #144]
0053f26e8 	ldp	x22, x21, [sp, #128]
0053f26ec 	ldp	x30, x23, [sp, #112]
0053f26f0 	add	sp, sp, #160
0053f26f4 	b	#-8863456 ; -> 0x4b7e814 [ILFixDynamicMethodWrapper::__Gen_Wrap_4]
0053f26f8 	mov	x0, xzr
0053f26fc 	bl	#59784632 ; -> 0x8cf64b4
0053f2700 	cbz	x0, #328 ; -> 0x53f2848
0053f2704 	ldr	x8, [x0]
0053f2708 	mov	x1, x20
0053f270c 	ldr	x9, [x8, #616]
0053f2710 	ldr	x2, [x8, #624]
0053f2714 	blr	x9
0053f2718 	adrp	x23, #83845120 ; -> 0xa3e8000
0053f271c 	mov	x20, x0
0053f2720 	ldr	x23, [x23, #160]
0053f2724 	ldr	x8, [x23]
0053f2728 	mov	x0, x8
0053f272c 	bl	#-15079984 ; -> 0x4590cfc
0053f2730 	mov	x1, xzr
0053f2734 	mov	x22, x0
0053f2738 	bl	#61039480 ; -> 0x8e28ab0
0053f273c 	adrp	x8, #84213760 ; -> 0xa442000
0053f2740 	add	x9, sp, #104
0053f2744 	ldr	x8, [x8, #2152]
0053f2748 	str	x22, [sp, #104]
0053f274c 	stp	xzr, x9, [sp, #48]
0053f2750 	ldr	x0, [x8]
0053f2754 	bl	#-15080024 ; -> 0x4590cfc
0053f2758 	mov	x1, x22
0053f275c 	mov	w2, wzr
0053f2760 	mov	x3, xzr
0053f2764 	mov	x21, x0
0053f2768 	bl	#67512720 ; -> 0x94550f8
0053f276c 	add	x8, sp, #96
0053f2770 	str	x21, [sp, #96]
0053f2774 	stp	xzr, x8, [sp, #32]
0053f2778 	cbz	x20, #212 ; -> 0x53f284c
0053f277c 	cbz	x21, #208 ; -> 0x53f284c
0053f2780 	ldr	x8, [x21]
0053f2784 	ldr	w3, [x20, #24]
0053f2788 	ldr	x9, [x8, #904]
0053f278c 	ldr	x4, [x8, #912]
0053f2790 	mov	x0, x21
0053f2794 	mov	x1, x20
0053f2798 	mov	w2, wzr
0053f279c 	blr	x9
0053f27a0 	mov	x20, xzr
0053f27a4 	mov	w22, #3
0053f27a8 	add	x8, sp, #96
0053f27ac 	ldr	x21, [x8]
0053f27b0 	cbz	x21, #100 ; -> 0x53f2814
0053f27b4 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f27b8 	ldr	x8, [x21]
0053f27bc 	ldr	x10, [x10, #1440]
0053f27c0 	ldrh	w9, [x8, #302]
0053f27c4 	ldr	x1, [x10]
0053f27c8 	cbz	x9, #36 ; -> 0x53f27ec
0053f27cc 	ldr	x10, [x8, #176]
0053f27d0 	add	x10, x10, #8
0053f27d4 	ldur	x11, [x10, #-8]
0053f27d8 	cmp	x11, x1
0053f27dc 	b.eq	#32 ; -> 0x53f27fc
0053f27e0 	subs	x9, x9, #1
0053f27e4 	add	x10, x10, #16
0053f27e8 	b.ne	#-20 ; -> 0x53f27d4
0053f27ec 	mov	x0, x21
0053f27f0 	mov	w2, wzr
0053f27f4 	bl	#-14849424 ; -> 0x45c9264
0053f27f8 	b	#16 ; -> 0x53f2808
0053f27fc 	ldrsw	x9, [x10]
0053f2800 	add	x8, x8, x9, lsl #4
0053f2804 	add	x0, x8, #312
0053f2808 	ldp	x8, x1, [x0]
0053f280c 	mov	x0, x21
0053f2810 	blr	x8
0053f2814 	cbnz	x20, #60 ; -> 0x53f2850
0053f2818 	cmp	w22, #3
0053f281c 	b.eq	#8 ; -> 0x53f2824
0053f2820 	cbnz	w22, #180 ; -> 0x53f28d4
0053f2824 	ldr	x0, [sp, #104]
0053f2828 	cbz	x0, #48 ; -> 0x53f2858
0053f282c 	ldr	x8, [x0]
0053f2830 	ldr	x1, [x8, #1024]
0053f2834 	ldr	x9, [x8, #1016]
0053f2838 	blr	x9
0053f283c 	mov	x20, x0
0053f2840 	mov	w22, #4
0053f2844 	b	#148 ; -> 0x53f28d8
0053f2848 	bl	#-15080252 ; -> 0x4590d0c
0053f284c 	bl	#-15080256 ; -> 0x4590d0c
0053f2850 	mov	x0, x20
0053f2854 	bl	#-15080272 ; -> 0x4590d04
0053f2858 	bl	#-15080268 ; -> 0x4590d0c
0053f285c 	b	#80 ; -> 0x53f28ac
0053f2860 	b	#76 ; -> 0x53f28ac
0053f2864 	mov	x20, x1
0053f2868 	mov	x21, x0
0053f286c 	cmp	w20, #1
0053f2870 	b.ne	#44 ; -> 0x53f289c
0053f2874 	mov	x0, x21
0053f2878 	bl	#77041672 ; -> 0x9d6b880
0053f287c 	ldr	x20, [x0]
0053f2880 	str	x20, [sp, #32]
0053f2884 	bl	#77041676 ; -> 0x9d6b890
0053f2888 	ldr	x8, [sp, #40]
0053f288c 	mov	w22, wzr
0053f2890 	b	#-228 ; -> 0x53f27ac
0053f2894 	mov	x20, x1
0053f2898 	mov	x21, x0
0053f289c 	add	x0, sp, #32
0053f28a0 	bl	#-19750628 ; -> 0x411c9bc
0053f28a4 	b	#16 ; -> 0x53f28b4
0053f28a8 	b	#4 ; -> 0x53f28ac
0053f28ac 	mov	x20, x1
0053f28b0 	mov	x21, x0
0053f28b4 	cmp	w20, #1
0053f28b8 	b.ne	#1108 ; -> 0x53f2d0c
0053f28bc 	mov	x0, x21
0053f28c0 	bl	#77041600 ; -> 0x9d6b880
0053f28c4 	ldr	x8, [x0]
0053f28c8 	str	x8, [sp, #48]
0053f28cc 	bl	#77041604 ; -> 0x9d6b890
0053f28d0 	mov	w22, wzr
0053f28d4 	mov	x20, xzr
0053f28d8 	ldr	x8, [sp, #56]
0053f28dc 	ldr	x21, [x8]
0053f28e0 	cbz	x21, #100 ; -> 0x53f2944
0053f28e4 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f28e8 	ldr	x8, [x21]
0053f28ec 	ldr	x10, [x10, #1440]
0053f28f0 	ldrh	w9, [x8, #302]
0053f28f4 	ldr	x1, [x10]
0053f28f8 	cbz	x9, #36 ; -> 0x53f291c
0053f28fc 	ldr	x10, [x8, #176]
0053f2900 	add	x10, x10, #8
0053f2904 	ldur	x11, [x10, #-8]
0053f2908 	cmp	x11, x1
0053f290c 	b.eq	#32 ; -> 0x53f292c
0053f2910 	subs	x9, x9, #1
0053f2914 	add	x10, x10, #16
0053f2918 	b.ne	#-20 ; -> 0x53f2904
0053f291c 	mov	x0, x21
0053f2920 	mov	w2, wzr
0053f2924 	bl	#-14849728 ; -> 0x45c9264
0053f2928 	b	#16 ; -> 0x53f2938
0053f292c 	ldrsw	x9, [x10]
0053f2930 	add	x8, x8, x9, lsl #4
0053f2934 	add	x0, x8, #312
0053f2938 	ldp	x8, x1, [x0]
0053f293c 	mov	x0, x21
0053f2940 	blr	x8
0053f2944 	ldr	x0, [sp, #48]
0053f2948 	cbnz	x0, #908 ; -> 0x53f2cd4
0053f294c 	orr	w8, w22, #0x4
0053f2950 	cmp	w8, #4
0053f2954 	b.ne	#876 ; -> 0x53f2cc0
0053f2958 	adrp	x8, #84213760 ; -> 0xa442000
0053f295c 	ldr	x8, [x8, #2144]
0053f2960 	ldr	x0, [x8]
0053f2964 	ldr	w8, [x0, #228]
0053f2968 	cbnz	w8, #8 ; -> 0x53f2970
0053f296c 	bl	#-15080844 ; -> 0x4590be0
0053f2970 	mov	x0, xzr
0053f2974 	bl	#59865920 ; -> 0x8d0a4b4
0053f2978 	mov	x21, x0
0053f297c 	add	x8, sp, #88
0053f2980 	str	x0, [sp, #88]
0053f2984 	stp	xzr, x8, [sp, #48]
0053f2988 	bl	#-1108 ; -> 0x53f2534 [JsonCryptoCompressor::GetAesKey]
0053f298c 	mov	x1, x0
0053f2990 	cbz	x21, #840 ; -> 0x53f2cd8
0053f2994 	ldr	x8, [x21]
0053f2998 	ldr	x9, [x8, #520]
0053f299c 	ldr	x2, [x8, #528]
0053f29a0 	mov	x0, x21
0053f29a4 	blr	x9
0053f29a8 	ldr	x21, [sp, #88]
0053f29ac 	bl	#-1008 ; -> 0x53f25bc [JsonCryptoCompressor::GetAesIV]
0053f29b0 	mov	x1, x0
0053f29b4 	cbz	x21, #808 ; -> 0x53f2cdc
0053f29b8 	ldr	x8, [x21]
0053f29bc 	ldp	x9, x2, [x8, #488]
0053f29c0 	mov	x0, x21
0053f29c4 	blr	x9
0053f29c8 	ldr	x0, [sp, #88]
0053f29cc 	cbz	x0, #788 ; -> 0x53f2ce0
0053f29d0 	ldr	x8, [x0]
0053f29d4 	ldr	x9, [x8, #616]
0053f29d8 	ldr	x2, [x8, #624]
0053f29dc 	mov	w1, #1
0053f29e0 	blr	x9
0053f29e4 	ldr	x0, [sp, #88]
0053f29e8 	cbz	x0, #764 ; -> 0x53f2ce4
0053f29ec 	ldr	x8, [x0]
0053f29f0 	ldr	x9, [x8, #648]
0053f29f4 	ldr	x2, [x8, #656]
0053f29f8 	mov	w1, #2
0053f29fc 	blr	x9
0053f2a00 	ldr	x0, [sp, #88]
0053f2a04 	cbz	x0, #740 ; -> 0x53f2ce8
0053f2a08 	ldr	x8, [x0]
0053f2a0c 	ldr	x1, [x8, #672]
0053f2a10 	ldr	x9, [x8, #664]
0053f2a14 	blr	x9
0053f2a18 	str	x0, [sp, #80]
0053f2a1c 	ldr	x0, [x23]
0053f2a20 	add	x8, sp, #80
0053f2a24 	stp	xzr, x8, [sp, #32]
0053f2a28 	bl	#-15080748 ; -> 0x4590cfc
0053f2a2c 	mov	x1, xzr
0053f2a30 	mov	x21, x0
0053f2a34 	bl	#61038716 ; -> 0x8e28ab0
0053f2a38 	adrp	x8, #84090880 ; -> 0xa424000
0053f2a3c 	add	x9, sp, #72
0053f2a40 	ldr	x8, [x8, #1472]
0053f2a44 	ldr	x23, [sp, #80]
0053f2a48 	str	x21, [sp, #72]
0053f2a4c 	stp	xzr, x9, [sp, #16]
0053f2a50 	ldr	x0, [x8]
0053f2a54 	bl	#-15080792 ; -> 0x4590cfc
0053f2a58 	mov	x1, x21
0053f2a5c 	mov	x2, x23
0053f2a60 	mov	w3, #1
0053f2a64 	mov	x4, xzr
0053f2a68 	mov	x22, x0
0053f2a6c 	bl	#59840704 ; -> 0x8d0432c
0053f2a70 	add	x8, sp, #64
0053f2a74 	str	x22, [sp, #64]
0053f2a78 	stp	xzr, x8, [sp]
0053f2a7c 	cbz	x20, #624 ; -> 0x53f2cec
0053f2a80 	cbz	x22, #620 ; -> 0x53f2cec
0053f2a84 	ldr	x8, [x22]
0053f2a88 	ldr	w3, [x20, #24]
0053f2a8c 	ldr	x9, [x8, #904]
0053f2a90 	ldr	x4, [x8, #912]
0053f2a94 	mov	x0, x22
0053f2a98 	mov	x1, x20
0053f2a9c 	mov	w2, wzr
0053f2aa0 	blr	x9
0053f2aa4 	ldr	x0, [sp, #64]
0053f2aa8 	cbz	x0, #588 ; -> 0x53f2cf4
0053f2aac 	mov	x1, xzr
0053f2ab0 	bl	#59841768 ; -> 0x8d04798
0053f2ab4 	ldr	x0, [sp, #72]
0053f2ab8 	cbz	x0, #580 ; -> 0x53f2cfc
0053f2abc 	ldr	x8, [x0]
0053f2ac0 	ldr	x1, [x8, #1024]
0053f2ac4 	ldr	x9, [x8, #1016]
0053f2ac8 	blr	x9
0053f2acc 	mov	x20, x0
0053f2ad0 	mov	x21, xzr
0053f2ad4 	mov	w23, #5
0053f2ad8 	add	x8, sp, #64
0053f2adc 	ldr	x22, [x8]
0053f2ae0 	cbz	x22, #100 ; -> 0x53f2b44
0053f2ae4 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f2ae8 	ldr	x8, [x22]
0053f2aec 	ldr	x10, [x10, #1440]
0053f2af0 	ldrh	w9, [x8, #302]
0053f2af4 	ldr	x1, [x10]
0053f2af8 	cbz	x9, #36 ; -> 0x53f2b1c
0053f2afc 	ldr	x10, [x8, #176]
0053f2b00 	add	x10, x10, #8
0053f2b04 	ldur	x11, [x10, #-8]
0053f2b08 	cmp	x11, x1
0053f2b0c 	b.eq	#32 ; -> 0x53f2b2c
0053f2b10 	subs	x9, x9, #1
0053f2b14 	add	x10, x10, #16
0053f2b18 	b.ne	#-20 ; -> 0x53f2b04
0053f2b1c 	mov	x0, x22
0053f2b20 	mov	w2, wzr
0053f2b24 	bl	#-14850240 ; -> 0x45c9264
0053f2b28 	b	#16 ; -> 0x53f2b38
0053f2b2c 	ldrsw	x9, [x10]
0053f2b30 	add	x8, x8, x9, lsl #4
0053f2b34 	add	x0, x8, #312
0053f2b38 	ldp	x8, x1, [x0]
0053f2b3c 	mov	x0, x22
0053f2b40 	blr	x8
0053f2b44 	cbnz	x21, #444 ; -> 0x53f2d00
0053f2b48 	ldr	x8, [sp, #24]
0053f2b4c 	ldr	x21, [x8]
0053f2b50 	cbz	x21, #100 ; -> 0x53f2bb4
0053f2b54 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f2b58 	ldr	x8, [x21]
0053f2b5c 	ldr	x10, [x10, #1440]
0053f2b60 	ldrh	w9, [x8, #302]
0053f2b64 	ldr	x1, [x10]
0053f2b68 	cbz	x9, #36 ; -> 0x53f2b8c
0053f2b6c 	ldr	x10, [x8, #176]
0053f2b70 	add	x10, x10, #8
0053f2b74 	ldur	x11, [x10, #-8]
0053f2b78 	cmp	x11, x1
0053f2b7c 	b.eq	#32 ; -> 0x53f2b9c
0053f2b80 	subs	x9, x9, #1
0053f2b84 	add	x10, x10, #16
0053f2b88 	b.ne	#-20 ; -> 0x53f2b74
0053f2b8c 	mov	x0, x21
0053f2b90 	mov	w2, wzr
0053f2b94 	bl	#-14850352 ; -> 0x45c9264
0053f2b98 	b	#16 ; -> 0x53f2ba8
0053f2b9c 	ldrsw	x9, [x10]
0053f2ba0 	add	x8, x8, x9, lsl #4
0053f2ba4 	add	x0, x8, #312
0053f2ba8 	ldp	x8, x1, [x0]
0053f2bac 	mov	x0, x21
0053f2bb0 	blr	x8
0053f2bb4 	ldr	x0, [sp, #16]
0053f2bb8 	cbnz	x0, #320 ; -> 0x53f2cf8
0053f2bbc 	ldr	x8, [sp, #40]
0053f2bc0 	ldr	x21, [x8]
0053f2bc4 	cbz	x21, #100 ; -> 0x53f2c28
0053f2bc8 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f2bcc 	ldr	x8, [x21]
0053f2bd0 	ldr	x10, [x10, #1440]
0053f2bd4 	ldrh	w9, [x8, #302]
0053f2bd8 	ldr	x1, [x10]
0053f2bdc 	cbz	x9, #36 ; -> 0x53f2c00
0053f2be0 	ldr	x10, [x8, #176]
0053f2be4 	add	x10, x10, #8
0053f2be8 	ldur	x11, [x10, #-8]
0053f2bec 	cmp	x11, x1
0053f2bf0 	b.eq	#32 ; -> 0x53f2c10
0053f2bf4 	subs	x9, x9, #1
0053f2bf8 	add	x10, x10, #16
0053f2bfc 	b.ne	#-20 ; -> 0x53f2be8
0053f2c00 	mov	x0, x21
0053f2c04 	mov	w2, wzr
0053f2c08 	bl	#-14850468 ; -> 0x45c9264
0053f2c0c 	b	#16 ; -> 0x53f2c1c
0053f2c10 	ldrsw	x9, [x10]
0053f2c14 	add	x8, x8, x9, lsl #4
0053f2c18 	add	x0, x8, #312
0053f2c1c 	ldp	x8, x1, [x0]
0053f2c20 	mov	x0, x21
0053f2c24 	blr	x8
0053f2c28 	ldr	x0, [sp, #32]
0053f2c2c 	cbnz	x0, #196 ; -> 0x53f2cf0
0053f2c30 	ldr	x8, [sp, #56]
0053f2c34 	ldr	x21, [x8]
0053f2c38 	cbz	x21, #100 ; -> 0x53f2c9c
0053f2c3c 	adrp	x10, #83841024 ; -> 0xa3e7000
0053f2c40 	ldr	x8, [x21]
0053f2c44 	ldr	x10, [x10, #1440]
0053f2c48 	ldrh	w9, [x8, #302]
0053f2c4c 	ldr	x1, [x10]
0053f2c50 	cbz	x9, #36 ; -> 0x53f2c74
0053f2c54 	ldr	x10, [x8, #176]
0053f2c58 	add	x10, x10, #8
0053f2c5c 	ldur	x11, [x10, #-8]
0053f2c60 	cmp	x11, x1
0053f2c64 	b.eq	#32 ; -> 0x53f2c84
0053f2c68 	subs	x9, x9, #1
0053f2c6c 	add	x10, x10, #16
0053f2c70 	b.ne	#-20 ; -> 0x53f2c5c
0053f2c74 	mov	x0, x21
0053f2c78 	mov	w2, wzr
0053f2c7c 	bl	#-14850584 ; -> 0x45c9264
0053f2c80 	b	#16 ; -> 0x53f2c90
0053f2c84 	ldrsw	x9, [x10]
0053f2c88 	add	x8, x8, x9, lsl #4
0053f2c8c 	add	x0, x8, #312
0053f2c90 	ldp	x8, x1, [x0]
0053f2c94 	mov	x0, x21
0053f2c98 	blr	x8
0053f2c9c 	ldr	x0, [sp, #48]
0053f2ca0 	cbnz	x0, #52 ; -> 0x53f2cd4
0053f2ca4 	cmp	w23, #5
0053f2ca8 	b.eq	#8 ; -> 0x53f2cb0
0053f2cac 	cbnz	w23, #20 ; -> 0x53f2cc0
0053f2cb0 	mov	x0, x19
0053f2cb4 	mov	x1, x20
0053f2cb8 	mov	x2, xzr
0053f2cbc 	bl	#61088204 ; -> 0x8e34e88
0053f2cc0 	ldp	x20, x19, [sp, #144]
0053f2cc4 	ldp	x22, x21, [sp, #128]
0053f2cc8 	ldp	x30, x23, [sp, #112]
0053f2ccc 	add	sp, sp, #160
0053f2cd0 	ret
0053f2cd4 	bl	#-15081424 ; -> 0x4590d04
0053f2cd8 	bl	#-15081420 ; -> 0x4590d0c
0053f2cdc 	bl	#-15081424 ; -> 0x4590d0c
0053f2ce0 	bl	#-15081428 ; -> 0x4590d0c
0053f2ce4 	bl	#-15081432 ; -> 0x4590d0c
0053f2ce8 	bl	#-15081436 ; -> 0x4590d0c
0053f2cec 	bl	#-15081440 ; -> 0x4590d0c
0053f2cf0 	bl	#-15081452 ; -> 0x4590d04
0053f2cf4 	bl	#-15081448 ; -> 0x4590d0c
0053f2cf8 	bl	#-15081460 ; -> 0x4590d04
0053f2cfc 	bl	#-15081456 ; -> 0x4590d0c
0053f2d00 	mov	x0, x21
0053f2d04 	bl	#-15081472 ; -> 0x4590d04
0053f2d08 	mov	x21, x0
0053f2d0c 	add	x0, sp, #48
0053f2d10 	bl	#-19751764 ; -> 0x411c9bc
0053f2d14 	b	#340 ; -> 0x53f2e68
0053f2d18 	b	#20 ; -> 0x53f2d2c
0053f2d1c 	b	#16 ; -> 0x53f2d2c
0053f2d20 	b	#268 ; -> 0x53f2e2c
0053f2d24 	b	#264 ; -> 0x53f2e2c
0053f2d28 	b	#4 ; -> 0x53f2d2c
0053f2d2c 	mov	x22, x1
0053f2d30 	mov	x21, x0
0053f2d34 	cmp	w22, #1
0053f2d38 	b.ne	#48 ; -> 0x53f2d68
0053f2d3c 	mov	x0, x21
0053f2d40 	bl	#77040448 ; -> 0x9d6b880
0053f2d44 	ldr	x21, [x0]
0053f2d48 	str	x21, [sp]
0053f2d4c 	bl	#77040452 ; -> 0x9d6b890
0053f2d50 	ldr	x8, [sp, #8]
0053f2d54 	mov	w23, wzr
0053f2d58 	mov	x20, xzr
0053f2d5c 	b	#-640 ; -> 0x53f2adc
0053f2d60 	mov	x22, x1
0053f2d64 	mov	x21, x0
0053f2d68 	mov	x0, sp
0053f2d6c 	bl	#-19751856 ; -> 0x411c9bc
0053f2d70 	b	#12 ; -> 0x53f2d7c
0053f2d74 	mov	x22, x1
0053f2d78 	mov	x21, x0
0053f2d7c 	mov	x20, xzr
0053f2d80 	b	#36 ; -> 0x53f2da4
0053f2d84 	mov	x22, x1
0053f2d88 	mov	x21, x0
0053f2d8c 	mov	x20, xzr
0053f2d90 	b	#84 ; -> 0x53f2de4
0053f2d94 	b	#152 ; -> 0x53f2e2c
0053f2d98 	b	#148 ; -> 0x53f2e2c
0053f2d9c 	mov	x22, x1
0053f2da0 	mov	x21, x0
0053f2da4 	cmp	w22, #1
0053f2da8 	b.ne	#40 ; -> 0x53f2dd0
0053f2dac 	mov	x0, x21
0053f2db0 	bl	#77040336 ; -> 0x9d6b880
0053f2db4 	ldr	x8, [x0]
0053f2db8 	str	x8, [sp, #16]
0053f2dbc 	bl	#77040340 ; -> 0x9d6b890
0053f2dc0 	mov	w23, wzr
0053f2dc4 	b	#-636 ; -> 0x53f2b48
0053f2dc8 	mov	x22, x1
0053f2dcc 	mov	x21, x0
0053f2dd0 	add	x0, sp, #16
0053f2dd4 	bl	#-19751960 ; -> 0x411c9bc
0053f2dd8 	b	#12 ; -> 0x53f2de4
0053f2ddc 	mov	x22, x1
0053f2de0 	mov	x21, x0
0053f2de4 	cmp	w22, #1
0053f2de8 	b.ne	#40 ; -> 0x53f2e10
0053f2dec 	mov	x0, x21
0053f2df0 	bl	#77040272 ; -> 0x9d6b880
0053f2df4 	ldr	x8, [x0]
0053f2df8 	str	x8, [sp, #32]
0053f2dfc 	bl	#77040276 ; -> 0x9d6b890
0053f2e00 	mov	w23, wzr
0053f2e04 	b	#-584 ; -> 0x53f2bbc
0053f2e08 	mov	x22, x1
0053f2e0c 	mov	x21, x0
0053f2e10 	add	x0, sp, #32
0053f2e14 	bl	#-19752024 ; -> 0x411c9bc
0053f2e18 	b	#32 ; -> 0x53f2e38
0053f2e1c 	mov	x22, x1
0053f2e20 	mov	x21, x0
0053f2e24 	b	#20 ; -> 0x53f2e38
0053f2e28 	b	#4 ; -> 0x53f2e2c
0053f2e2c 	mov	x22, x1
0053f2e30 	mov	x21, x0
0053f2e34 	mov	x20, xzr
0053f2e38 	cmp	w22, #1
0053f2e3c 	b.ne	#36 ; -> 0x53f2e60
0053f2e40 	mov	x0, x21
0053f2e44 	bl	#77040188 ; -> 0x9d6b880
0053f2e48 	ldr	x8, [x0]
0053f2e4c 	str	x8, [sp, #48]
0053f2e50 	bl	#77040192 ; -> 0x9d6b890
0053f2e54 	mov	w23, wzr
0053f2e58 	b	#-552 ; -> 0x53f2c30
0053f2e5c 	mov	x21, x0
0053f2e60 	add	x0, sp, #48
0053f2e64 	bl	#-19752104 ; -> 0x411c9bc
0053f2e68 	mov	x0, x21
0053f2e6c 	bl	#-13897296 ; -> 0x46b201c
0053f2e70 	bl	#-19752464 ; -> 0x411c860
