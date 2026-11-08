0053f3688 	sub	sp, sp, #192
0053f368c 	str	x30, [sp, #144]
0053f3690 	stp	x22, x21, [sp, #160]
0053f3694 	stp	x20, x19, [sp, #176]
0053f3698 	adrp	x20, #92160000 ; -> 0xabd7000
0053f369c 	mov	x19, x0
0053f36a0 	ldrb	w8, [x20, #2673]
0053f36a4 	tbnz	w8, #0, #96 ; -> 0x53f3704
0053f36a8 	adrp	x0, #84209664 ; -> 0xa442000
0053f36ac 	ldr	x0, [x0, #2144]
0053f36b0 	bl	#-15084624 ; -> 0x4590a60
0053f36b4 	adrp	x0, #84086784 ; -> 0xa424000
0053f36b8 	ldr	x0, [x0, #1472]
0053f36bc 	bl	#-15084636 ; -> 0x4590a60
0053f36c0 	adrp	x0, #84209664 ; -> 0xa442000
0053f36c4 	ldr	x0, [x0, #2152]
0053f36c8 	bl	#-15084648 ; -> 0x4590a60
0053f36cc 	adrp	x0, #83836928 ; -> 0xa3e7000
0053f36d0 	ldr	x0, [x0, #1440]
0053f36d4 	bl	#-15084660 ; -> 0x4590a60
0053f36d8 	adrp	x0, #83841024 ; -> 0xa3e8000
0053f36dc 	ldr	x0, [x0, #160]
0053f36e0 	bl	#-15084672 ; -> 0x4590a60
0053f36e4 	adrp	x0, #83836928 ; -> 0xa3e7000
0053f36e8 	ldr	x0, [x0, #1192]
0053f36ec 	bl	#-15084684 ; -> 0x4590a60
0053f36f0 	adrp	x0, #84209664 ; -> 0xa442000
0053f36f4 	ldr	x0, [x0, #2160]
0053f36f8 	bl	#-15084696 ; -> 0x4590a60
0053f36fc 	mov	w8, #1
0053f3700 	strb	w8, [x20, #2673]
0053f3704 	mov	w0, #45302
0053f3708 	mov	x1, xzr
0053f370c 	str	xzr, [sp, #152]
0053f3710 	stp	xzr, xzr, [sp, #128]
0053f3714 	stp	xzr, xzr, [sp, #112]
0053f3718 	str	xzr, [sp, #104]
0053f371c 	bl	#-8044920 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f3720 	tbz	w0, #0, #48 ; -> 0x53f3750
0053f3724 	mov	w0, #45302
0053f3728 	mov	x1, xzr
0053f372c 	bl	#-8044756 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f3730 	cbz	x0, #1292 ; -> 0x53f3c3c
0053f3734 	mov	x1, x19
0053f3738 	ldp	x20, x19, [sp, #176]
0053f373c 	ldp	x22, x21, [sp, #160]
0053f3740 	mov	x2, xzr
0053f3744 	ldr	x30, [sp, #144]
0053f3748 	add	sp, sp, #192
0053f374c 	b	#-8763848 ; -> 0x4b97d84 [ILFixDynamicMethodWrapper::__Gen_Wrap_490]
0053f3750 	adrp	x8, #84209664 ; -> 0xa442000
0053f3754 	adrp	x20, #83836928 ; -> 0xa3e7000
0053f3758 	mov	x0, x19
0053f375c 	ldr	x8, [x8, #2160]
0053f3760 	ldr	x20, [x20, #1192]
0053f3764 	ldr	x1, [x8]
0053f3768 	bl	#13505032 ; -> 0x60d4970
0053f376c 	ldr	x8, [x20]
0053f3770 	mov	x20, x0
0053f3774 	ldr	w9, [x8, #228]
0053f3778 	cbnz	w9, #12 ; -> 0x53f3784
0053f377c 	mov	x0, x8
0053f3780 	bl	#-15084448 ; -> 0x4590be0
0053f3784 	mov	x0, x20
0053f3788 	mov	x1, xzr
0053f378c 	mov	x2, xzr
0053f3790 	bl	#73472000 ; -> 0x9a04f90
0053f3794 	tbz	w0, #0, #20 ; -> 0x53f37a8
0053f3798 	mov	x0, x19
0053f379c 	mov	x1, xzr
0053f37a0 	bl	#61083552 ; -> 0x8e34740
0053f37a4 	b	#20 ; -> 0x53f37b8
0053f37a8 	cbz	x20, #1172 ; -> 0x53f3c3c
0053f37ac 	mov	x0, x20
0053f37b0 	mov	x1, xzr
0053f37b4 	bl	#73483820 ; -> 0x9a07de0
0053f37b8 	adrp	x8, #84209664 ; -> 0xa442000
0053f37bc 	mov	x19, x0
0053f37c0 	ldr	x8, [x8, #2144]
0053f37c4 	ldr	x0, [x8]
0053f37c8 	ldr	w8, [x0, #228]
0053f37cc 	cbnz	w8, #8 ; -> 0x53f37d4
0053f37d0 	bl	#-15084528 ; -> 0x4590be0
0053f37d4 	mov	x0, xzr
0053f37d8 	bl	#59862236 ; -> 0x8d0a4b4
0053f37dc 	mov	x20, x0
0053f37e0 	add	x8, sp, #152
0053f37e4 	str	x0, [sp, #152]
0053f37e8 	stp	xzr, x8, [sp, #88]
0053f37ec 	bl	#-4792 ; -> 0x53f2534 [JsonCryptoCompressor::GetAesKey]
0053f37f0 	mov	x1, x0
0053f37f4 	cbz	x20, #1104 ; -> 0x53f3c44
0053f37f8 	ldr	x8, [x20]
0053f37fc 	ldr	x9, [x8, #520]
0053f3800 	ldr	x2, [x8, #528]
0053f3804 	mov	x0, x20
0053f3808 	blr	x9
0053f380c 	ldr	x20, [sp, #152]
0053f3810 	bl	#-4692 ; -> 0x53f25bc [JsonCryptoCompressor::GetAesIV]
0053f3814 	mov	x1, x0
0053f3818 	cbz	x20, #1072 ; -> 0x53f3c48
0053f381c 	ldr	x8, [x20]
0053f3820 	ldp	x9, x2, [x8, #488]
0053f3824 	mov	x0, x20
0053f3828 	blr	x9
0053f382c 	ldr	x0, [sp, #152]
0053f3830 	cbz	x0, #1052 ; -> 0x53f3c4c
0053f3834 	ldr	x8, [x0]
0053f3838 	ldr	x9, [x8, #616]
0053f383c 	ldr	x2, [x8, #624]
0053f3840 	mov	w1, #1
0053f3844 	blr	x9
0053f3848 	ldr	x0, [sp, #152]
0053f384c 	cbz	x0, #1028 ; -> 0x53f3c50
0053f3850 	ldr	x8, [x0]
0053f3854 	ldr	x9, [x8, #648]
0053f3858 	ldr	x2, [x8, #656]
0053f385c 	mov	w1, #2
0053f3860 	blr	x9
0053f3864 	ldr	x0, [sp, #152]
0053f3868 	cbz	x0, #1004 ; -> 0x53f3c54
0053f386c 	ldr	x8, [x0]
0053f3870 	ldr	x1, [x8, #704]
0053f3874 	ldr	x9, [x8, #696]
0053f3878 	blr	x9
0053f387c 	adrp	x22, #83841024 ; -> 0xa3e8000
0053f3880 	add	x8, sp, #136
0053f3884 	ldr	x22, [x22, #160]
0053f3888 	str	x0, [sp, #136]
0053f388c 	stp	xzr, x8, [sp, #72]
0053f3890 	ldr	x0, [x22]
0053f3894 	bl	#-15084440 ; -> 0x4590cfc
0053f3898 	mov	x1, x19
0053f389c 	mov	x2, xzr
0053f38a0 	mov	x20, x0
0053f38a4 	bl	#61035412 ; -> 0x8e28c38
0053f38a8 	adrp	x8, #84086784 ; -> 0xa424000
0053f38ac 	add	x9, sp, #128
0053f38b0 	ldr	x8, [x8, #1472]
0053f38b4 	ldr	x21, [sp, #136]
0053f38b8 	str	x20, [sp, #128]
0053f38bc 	stp	xzr, x9, [sp, #56]
0053f38c0 	ldr	x0, [x8]
0053f38c4 	bl	#-15084488 ; -> 0x4590cfc
0053f38c8 	mov	x1, x20
0053f38cc 	mov	x2, x21
0053f38d0 	mov	w3, wzr
0053f38d4 	mov	x4, xzr
0053f38d8 	mov	x19, x0
0053f38dc 	bl	#59837008 ; -> 0x8d0432c
0053f38e0 	adrp	x8, #84209664 ; -> 0xa442000
0053f38e4 	add	x9, sp, #120
0053f38e8 	ldr	x8, [x8, #2152]
0053f38ec 	str	x19, [sp, #120]
0053f38f0 	stp	xzr, x9, [sp, #40]
0053f38f4 	ldr	x0, [x8]
0053f38f8 	bl	#-15084540 ; -> 0x4590cfc
0053f38fc 	mov	x1, x19
0053f3900 	mov	w2, wzr
0053f3904 	mov	x3, xzr
0053f3908 	mov	x20, x0
0053f390c 	bl	#67507440 ; -> 0x9454dfc
0053f3910 	ldr	x0, [x22]
0053f3914 	add	x8, sp, #112
0053f3918 	str	x20, [sp, #112]
0053f391c 	stp	xzr, x8, [sp, #24]
0053f3920 	bl	#-15084580 ; -> 0x4590cfc
0053f3924 	mov	x1, xzr
0053f3928 	mov	x19, x0
0053f392c 	bl	#61034884 ; -> 0x8e28ab0
0053f3930 	ldr	x0, [sp, #112]
0053f3934 	add	x8, sp, #104
0053f3938 	str	x19, [sp, #104]
0053f393c 	stp	xzr, x8, [sp, #8]
0053f3940 	cbz	x0, #800 ; -> 0x53f3c60
0053f3944 	mov	x1, x19
0053f3948 	mov	x2, xzr
0053f394c 	bl	#61121424 ; -> 0x8e3dcdc
0053f3950 	ldr	x0, [sp, #104]
0053f3954 	cbz	x0, #788 ; -> 0x53f3c68
0053f3958 	ldr	x8, [x0]
0053f395c 	ldr	x1, [x8, #1024]
0053f3960 	ldr	x9, [x8, #1016]
0053f3964 	blr	x9
0053f3968 	mov	x19, x0
0053f396c 	mov	x20, xzr
0053f3970 	add	x8, sp, #104
0053f3974 	ldr	x21, [x8]
0053f3978 	cbz	x21, #100 ; -> 0x53f39dc
0053f397c 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3980 	ldr	x8, [x21]
0053f3984 	ldr	x10, [x10, #1440]
0053f3988 	ldrh	w9, [x8, #302]
0053f398c 	ldr	x1, [x10]
0053f3990 	cbz	x9, #36 ; -> 0x53f39b4
0053f3994 	ldr	x10, [x8, #176]
0053f3998 	add	x10, x10, #8
0053f399c 	ldur	x11, [x10, #-8]
0053f39a0 	cmp	x11, x1
0053f39a4 	b.eq	#32 ; -> 0x53f39c4
0053f39a8 	subs	x9, x9, #1
0053f39ac 	add	x10, x10, #16
0053f39b0 	b.ne	#-20 ; -> 0x53f399c
0053f39b4 	mov	x0, x21
0053f39b8 	mov	w2, wzr
0053f39bc 	bl	#-14853976 ; -> 0x45c9264
0053f39c0 	b	#16 ; -> 0x53f39d0
0053f39c4 	ldrsw	x9, [x10]
0053f39c8 	add	x8, x8, x9, lsl #4
0053f39cc 	add	x0, x8, #312
0053f39d0 	ldp	x8, x1, [x0]
0053f39d4 	mov	x0, x21
0053f39d8 	blr	x8
0053f39dc 	cbnz	x20, #660 ; -> 0x53f3c70
0053f39e0 	ldr	x8, [sp, #32]
0053f39e4 	ldr	x20, [x8]
0053f39e8 	cbz	x20, #100 ; -> 0x53f3a4c
0053f39ec 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f39f0 	ldr	x8, [x20]
0053f39f4 	ldr	x10, [x10, #1440]
0053f39f8 	ldrh	w9, [x8, #302]
0053f39fc 	ldr	x1, [x10]
0053f3a00 	cbz	x9, #36 ; -> 0x53f3a24
0053f3a04 	ldr	x10, [x8, #176]
0053f3a08 	add	x10, x10, #8
0053f3a0c 	ldur	x11, [x10, #-8]
0053f3a10 	cmp	x11, x1
0053f3a14 	b.eq	#32 ; -> 0x53f3a34
0053f3a18 	subs	x9, x9, #1
0053f3a1c 	add	x10, x10, #16
0053f3a20 	b.ne	#-20 ; -> 0x53f3a0c
0053f3a24 	mov	x0, x20
0053f3a28 	mov	w2, wzr
0053f3a2c 	bl	#-14854088 ; -> 0x45c9264
0053f3a30 	b	#16 ; -> 0x53f3a40
0053f3a34 	ldrsw	x9, [x10]
0053f3a38 	add	x8, x8, x9, lsl #4
0053f3a3c 	add	x0, x8, #312
0053f3a40 	ldp	x8, x1, [x0]
0053f3a44 	mov	x0, x20
0053f3a48 	blr	x8
0053f3a4c 	ldr	x0, [sp, #24]
0053f3a50 	cbnz	x0, #540 ; -> 0x53f3c6c
0053f3a54 	ldr	x8, [sp, #48]
0053f3a58 	ldr	x20, [x8]
0053f3a5c 	cbz	x20, #100 ; -> 0x53f3ac0
0053f3a60 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3a64 	ldr	x8, [x20]
0053f3a68 	ldr	x10, [x10, #1440]
0053f3a6c 	ldrh	w9, [x8, #302]
0053f3a70 	ldr	x1, [x10]
0053f3a74 	cbz	x9, #36 ; -> 0x53f3a98
0053f3a78 	ldr	x10, [x8, #176]
0053f3a7c 	add	x10, x10, #8
0053f3a80 	ldur	x11, [x10, #-8]
0053f3a84 	cmp	x11, x1
0053f3a88 	b.eq	#32 ; -> 0x53f3aa8
0053f3a8c 	subs	x9, x9, #1
0053f3a90 	add	x10, x10, #16
0053f3a94 	b.ne	#-20 ; -> 0x53f3a80
0053f3a98 	mov	x0, x20
0053f3a9c 	mov	w2, wzr
0053f3aa0 	bl	#-14854204 ; -> 0x45c9264
0053f3aa4 	b	#16 ; -> 0x53f3ab4
0053f3aa8 	ldrsw	x9, [x10]
0053f3aac 	add	x8, x8, x9, lsl #4
0053f3ab0 	add	x0, x8, #312
0053f3ab4 	ldp	x8, x1, [x0]
0053f3ab8 	mov	x0, x20
0053f3abc 	blr	x8
0053f3ac0 	ldr	x0, [sp, #40]
0053f3ac4 	cbnz	x0, #416 ; -> 0x53f3c64
0053f3ac8 	ldr	x8, [sp, #64]
0053f3acc 	ldr	x20, [x8]
0053f3ad0 	cbz	x20, #100 ; -> 0x53f3b34
0053f3ad4 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3ad8 	ldr	x8, [x20]
0053f3adc 	ldr	x10, [x10, #1440]
0053f3ae0 	ldrh	w9, [x8, #302]
0053f3ae4 	ldr	x1, [x10]
0053f3ae8 	cbz	x9, #36 ; -> 0x53f3b0c
0053f3aec 	ldr	x10, [x8, #176]
0053f3af0 	add	x10, x10, #8
0053f3af4 	ldur	x11, [x10, #-8]
0053f3af8 	cmp	x11, x1
0053f3afc 	b.eq	#32 ; -> 0x53f3b1c
0053f3b00 	subs	x9, x9, #1
0053f3b04 	add	x10, x10, #16
0053f3b08 	b.ne	#-20 ; -> 0x53f3af4
0053f3b0c 	mov	x0, x20
0053f3b10 	mov	w2, wzr
0053f3b14 	bl	#-14854320 ; -> 0x45c9264
0053f3b18 	b	#16 ; -> 0x53f3b28
0053f3b1c 	ldrsw	x9, [x10]
0053f3b20 	add	x8, x8, x9, lsl #4
0053f3b24 	add	x0, x8, #312
0053f3b28 	ldp	x8, x1, [x0]
0053f3b2c 	mov	x0, x20
0053f3b30 	blr	x8
0053f3b34 	ldr	x0, [sp, #56]
0053f3b38 	cbnz	x0, #292 ; -> 0x53f3c5c
0053f3b3c 	ldr	x8, [sp, #80]
0053f3b40 	ldr	x20, [x8]
0053f3b44 	cbz	x20, #100 ; -> 0x53f3ba8
0053f3b48 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3b4c 	ldr	x8, [x20]
0053f3b50 	ldr	x10, [x10, #1440]
0053f3b54 	ldrh	w9, [x8, #302]
0053f3b58 	ldr	x1, [x10]
0053f3b5c 	cbz	x9, #36 ; -> 0x53f3b80
0053f3b60 	ldr	x10, [x8, #176]
0053f3b64 	add	x10, x10, #8
0053f3b68 	ldur	x11, [x10, #-8]
0053f3b6c 	cmp	x11, x1
0053f3b70 	b.eq	#32 ; -> 0x53f3b90
0053f3b74 	subs	x9, x9, #1
0053f3b78 	add	x10, x10, #16
0053f3b7c 	b.ne	#-20 ; -> 0x53f3b68
0053f3b80 	mov	x0, x20
0053f3b84 	mov	w2, wzr
0053f3b88 	bl	#-14854436 ; -> 0x45c9264
0053f3b8c 	b	#16 ; -> 0x53f3b9c
0053f3b90 	ldrsw	x9, [x10]
0053f3b94 	add	x8, x8, x9, lsl #4
0053f3b98 	add	x0, x8, #312
0053f3b9c 	ldp	x8, x1, [x0]
0053f3ba0 	mov	x0, x20
0053f3ba4 	blr	x8
0053f3ba8 	ldr	x0, [sp, #72]
0053f3bac 	cbnz	x0, #172 ; -> 0x53f3c58
0053f3bb0 	ldr	x8, [sp, #96]
0053f3bb4 	ldr	x20, [x8]
0053f3bb8 	cbz	x20, #100 ; -> 0x53f3c1c
0053f3bbc 	adrp	x10, #83836928 ; -> 0xa3e7000
0053f3bc0 	ldr	x8, [x20]
0053f3bc4 	ldr	x10, [x10, #1440]
0053f3bc8 	ldrh	w9, [x8, #302]
0053f3bcc 	ldr	x1, [x10]
0053f3bd0 	cbz	x9, #36 ; -> 0x53f3bf4
0053f3bd4 	ldr	x10, [x8, #176]
0053f3bd8 	add	x10, x10, #8
0053f3bdc 	ldur	x11, [x10, #-8]
0053f3be0 	cmp	x11, x1
0053f3be4 	b.eq	#32 ; -> 0x53f3c04
0053f3be8 	subs	x9, x9, #1
0053f3bec 	add	x10, x10, #16
0053f3bf0 	b.ne	#-20 ; -> 0x53f3bdc
0053f3bf4 	mov	x0, x20
0053f3bf8 	mov	w2, wzr
0053f3bfc 	bl	#-14854552 ; -> 0x45c9264
0053f3c00 	b	#16 ; -> 0x53f3c10
0053f3c04 	ldrsw	x9, [x10]
0053f3c08 	add	x8, x8, x9, lsl #4
0053f3c0c 	add	x0, x8, #312
0053f3c10 	ldp	x8, x1, [x0]
0053f3c14 	mov	x0, x20
0053f3c18 	blr	x8
0053f3c1c 	ldr	x0, [sp, #88]
0053f3c20 	cbnz	x0, #32 ; -> 0x53f3c40
0053f3c24 	mov	x0, x19
0053f3c28 	ldp	x20, x19, [sp, #176]
0053f3c2c 	ldp	x22, x21, [sp, #160]
0053f3c30 	ldr	x30, [sp, #144]
0053f3c34 	add	sp, sp, #192
0053f3c38 	ret
0053f3c3c 	bl	#-15085360 ; -> 0x4590d0c
0053f3c40 	bl	#-15085372 ; -> 0x4590d04
0053f3c44 	bl	#-15085368 ; -> 0x4590d0c
0053f3c48 	bl	#-15085372 ; -> 0x4590d0c
0053f3c4c 	bl	#-15085376 ; -> 0x4590d0c
0053f3c50 	bl	#-15085380 ; -> 0x4590d0c
0053f3c54 	bl	#-15085384 ; -> 0x4590d0c
0053f3c58 	bl	#-15085396 ; -> 0x4590d04
0053f3c5c 	bl	#-15085400 ; -> 0x4590d04
0053f3c60 	bl	#-15085396 ; -> 0x4590d0c
0053f3c64 	bl	#-15085408 ; -> 0x4590d04
0053f3c68 	bl	#-15085404 ; -> 0x4590d0c
0053f3c6c 	bl	#-15085416 ; -> 0x4590d04
0053f3c70 	mov	x0, x20
0053f3c74 	bl	#-15085424 ; -> 0x4590d04
0053f3c78 	b	#16 ; -> 0x53f3c88
0053f3c7c 	b	#12 ; -> 0x53f3c88
0053f3c80 	b	#404 ; -> 0x53f3e14
0053f3c84 	b	#400 ; -> 0x53f3e14
0053f3c88 	mov	x21, x1
0053f3c8c 	mov	x20, x0
0053f3c90 	cmp	w21, #1
0053f3c94 	b.ne	#44 ; -> 0x53f3cc0
0053f3c98 	mov	x0, x20
0053f3c9c 	bl	#77036516 ; -> 0x9d6b880
0053f3ca0 	ldr	x20, [x0]
0053f3ca4 	str	x20, [sp, #8]
0053f3ca8 	bl	#77036520 ; -> 0x9d6b890
0053f3cac 	ldr	x8, [sp, #16]
0053f3cb0 	mov	x19, xzr
0053f3cb4 	b	#-832 ; -> 0x53f3974
0053f3cb8 	mov	x21, x1
0053f3cbc 	mov	x20, x0
0053f3cc0 	add	x0, sp, #8
0053f3cc4 	bl	#-19755784 ; -> 0x411c9bc
0053f3cc8 	b	#12 ; -> 0x53f3cd4
0053f3ccc 	mov	x21, x1
0053f3cd0 	mov	x20, x0
0053f3cd4 	mov	x19, xzr
0053f3cd8 	b	#68 ; -> 0x53f3d1c
0053f3cdc 	mov	x21, x1
0053f3ce0 	mov	x20, x0
0053f3ce4 	mov	x19, xzr
0053f3ce8 	b	#112 ; -> 0x53f3d58
0053f3cec 	mov	x21, x1
0053f3cf0 	mov	x20, x0
0053f3cf4 	mov	x19, xzr
0053f3cf8 	b	#156 ; -> 0x53f3d94
0053f3cfc 	mov	x21, x1
0053f3d00 	mov	x20, x0
0053f3d04 	mov	x19, xzr
0053f3d08 	b	#200 ; -> 0x53f3dd0
0053f3d0c 	b	#264 ; -> 0x53f3e14
0053f3d10 	b	#260 ; -> 0x53f3e14
0053f3d14 	mov	x21, x1
0053f3d18 	mov	x20, x0
0053f3d1c 	cmp	w21, #1
0053f3d20 	b.ne	#36 ; -> 0x53f3d44
0053f3d24 	mov	x0, x20
0053f3d28 	bl	#77036376 ; -> 0x9d6b880
0053f3d2c 	ldr	x8, [x0]
0053f3d30 	str	x8, [sp, #24]
0053f3d34 	bl	#77036380 ; -> 0x9d6b890
0053f3d38 	b	#-856 ; -> 0x53f39e0
0053f3d3c 	mov	x21, x1
0053f3d40 	mov	x20, x0
0053f3d44 	add	x0, sp, #24
0053f3d48 	bl	#-19755916 ; -> 0x411c9bc
0053f3d4c 	b	#12 ; -> 0x53f3d58
0053f3d50 	mov	x21, x1
0053f3d54 	mov	x20, x0
0053f3d58 	cmp	w21, #1
0053f3d5c 	b.ne	#36 ; -> 0x53f3d80
0053f3d60 	mov	x0, x20
0053f3d64 	bl	#77036316 ; -> 0x9d6b880
0053f3d68 	ldr	x8, [x0]
0053f3d6c 	str	x8, [sp, #40]
0053f3d70 	bl	#77036320 ; -> 0x9d6b890
0053f3d74 	b	#-800 ; -> 0x53f3a54
0053f3d78 	mov	x21, x1
0053f3d7c 	mov	x20, x0
0053f3d80 	add	x0, sp, #40
0053f3d84 	bl	#-19755976 ; -> 0x411c9bc
0053f3d88 	b	#12 ; -> 0x53f3d94
0053f3d8c 	mov	x21, x1
0053f3d90 	mov	x20, x0
0053f3d94 	cmp	w21, #1
0053f3d98 	b.ne	#36 ; -> 0x53f3dbc
0053f3d9c 	mov	x0, x20
0053f3da0 	bl	#77036256 ; -> 0x9d6b880
0053f3da4 	ldr	x8, [x0]
0053f3da8 	str	x8, [sp, #56]
0053f3dac 	bl	#77036260 ; -> 0x9d6b890
0053f3db0 	b	#-744 ; -> 0x53f3ac8
0053f3db4 	mov	x21, x1
0053f3db8 	mov	x20, x0
0053f3dbc 	add	x0, sp, #56
0053f3dc0 	bl	#-19756036 ; -> 0x411c9bc
0053f3dc4 	b	#12 ; -> 0x53f3dd0
0053f3dc8 	mov	x21, x1
0053f3dcc 	mov	x20, x0
0053f3dd0 	cmp	w21, #1
0053f3dd4 	b.ne	#36 ; -> 0x53f3df8
0053f3dd8 	mov	x0, x20
0053f3ddc 	bl	#77036196 ; -> 0x9d6b880
0053f3de0 	ldr	x8, [x0]
0053f3de4 	str	x8, [sp, #72]
0053f3de8 	bl	#77036200 ; -> 0x9d6b890
0053f3dec 	b	#-688 ; -> 0x53f3b3c
0053f3df0 	mov	x21, x1
0053f3df4 	mov	x20, x0
0053f3df8 	add	x0, sp, #72
0053f3dfc 	bl	#-19756096 ; -> 0x411c9bc
0053f3e00 	b	#32 ; -> 0x53f3e20
0053f3e04 	mov	x21, x1
0053f3e08 	mov	x20, x0
0053f3e0c 	b	#20 ; -> 0x53f3e20
0053f3e10 	b	#4 ; -> 0x53f3e14
0053f3e14 	mov	x21, x1
0053f3e18 	mov	x20, x0
0053f3e1c 	mov	x19, xzr
0053f3e20 	cmp	w21, #1
0053f3e24 	b.ne	#32 ; -> 0x53f3e44
0053f3e28 	mov	x0, x20
0053f3e2c 	bl	#77036116 ; -> 0x9d6b880
0053f3e30 	ldr	x8, [x0]
0053f3e34 	str	x8, [sp, #88]
0053f3e38 	bl	#77036120 ; -> 0x9d6b890
0053f3e3c 	b	#-652 ; -> 0x53f3bb0
0053f3e40 	mov	x20, x0
0053f3e44 	add	x0, sp, #88
0053f3e48 	bl	#-19756172 ; -> 0x411c9bc
0053f3e4c 	mov	x0, x20
0053f3e50 	bl	#-13901364 ; -> 0x46b201c
0053f3e54 	bl	#-19756532 ; -> 0x411c860
