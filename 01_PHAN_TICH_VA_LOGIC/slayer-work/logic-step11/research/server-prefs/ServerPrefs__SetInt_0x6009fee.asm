0051f0798 	sub	sp, sp, #64
0051f079c 	str	x30, [sp, #16]
0051f07a0 	stp	x22, x21, [sp, #32]
0051f07a4 	stp	x20, x19, [sp, #48]
0051f07a8 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f07ac 	mov	w20, w1
0051f07b0 	mov	x19, x0
0051f07b4 	ldrb	w8, [x21, #3150]
0051f07b8 	str	w1, [sp, #28]
0051f07bc 	tbnz	w8, #0, #72 ; -> 0x51f0804 
0051f07c0 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f07c4 	ldr	x0, [x0, #144]
0051f07c8 	bl	#-12975464 ; -> 0x4590a60 
0051f07cc 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f07d0 	ldr	x0, [x0, #136]
0051f07d4 	bl	#-12975476 ; -> 0x4590a60 
0051f07d8 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f07dc 	ldr	x0, [x0, #152]
0051f07e0 	bl	#-12975488 ; -> 0x4590a60 
0051f07e4 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f07e8 	ldr	x0, [x0, #2048]
0051f07ec 	bl	#-12975500 ; -> 0x4590a60 
0051f07f0 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f07f4 	ldr	x0, [x0, #160]
0051f07f8 	bl	#-12975512 ; -> 0x4590a60 
0051f07fc 	mov	w8, #1
0051f0800 	strb	w8, [x21, #3150]
0051f0804 	mov	w0, #2423
0051f0808 	mov	x1, xzr
0051f080c 	str	xzr, [sp, #8]
0051f0810 	str	wzr, [sp, #24]
0051f0814 	bl	#-5935728 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0818 	tbz	w0, #0, #52 ; -> 0x51f084c 
0051f081c 	mov	w0, #2423
0051f0820 	mov	x1, xzr
0051f0824 	bl	#-5935564 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0828 	cbz	x0, #432 ; -> 0x51f09d8 
0051f082c 	mov	x1, x19
0051f0830 	mov	w2, w20
0051f0834 	ldr	x30, [sp, #16]
0051f0838 	ldp	x20, x19, [sp, #48]
0051f083c 	mov	x3, xzr
0051f0840 	ldp	x22, x21, [sp, #32]
0051f0844 	add	sp, sp, #64
0051f0848 	b	#-6753964 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
0051f084c 	adrp	x20, #85983232 ; -> 0xa3f0000 
0051f0850 	ldr	x20, [x20, #2048]
0051f0854 	ldr	x0, [x20]
0051f0858 	ldr	w8, [x0, #228]
0051f085c 	cbnz	w8, #12 ; -> 0x51f0868 
0051f0860 	bl	#-12975232 ; -> 0x4590be0 
0051f0864 	ldr	x0, [x20]
0051f0868 	ldr	x8, [x0, #184]
0051f086c 	ldr	x0, [x8]
0051f0870 	cbz	x0, #360 ; -> 0x51f09d8 
0051f0874 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0878 	add	x2, sp, #8
0051f087c 	mov	x1, x19
0051f0880 	ldr	x8, [x8, #136]
0051f0884 	ldr	x3, [x8]
0051f0888 	bl	#50044336 ; -> 0x81aa638 
0051f088c 	tbz	w0, #0, #180 ; -> 0x51f0940 
0051f0890 	ldr	x8, [sp, #8]
0051f0894 	cbz	x8, #324 ; -> 0x51f09d8 
0051f0898 	ldr	x0, [x8, #24]
0051f089c 	add	x1, sp, #24
0051f08a0 	mov	x2, xzr
0051f08a4 	bl	#63456596 ; -> 0x8e74df8 System.Int32::TryParse
0051f08a8 	tbz	w0, #0, #284 ; -> 0x51f09c4 
0051f08ac 	ldp	w8, w9, [sp, #24]
0051f08b0 	cmp	w8, w9
0051f08b4 	b.eq	#272 ; -> 0x51f09c4 
0051f08b8 	ldr	x0, [x20]
0051f08bc 	ldr	w8, [x0, #228]
0051f08c0 	cbnz	w8, #12 ; -> 0x51f08cc 
0051f08c4 	bl	#-12975332 ; -> 0x4590be0 
0051f08c8 	ldr	x0, [x20]
0051f08cc 	ldr	x8, [x0, #184]
0051f08d0 	add	x0, sp, #28
0051f08d4 	mov	x1, xzr
0051f08d8 	ldr	x20, [x8]
0051f08dc 	bl	#63454728 ; -> 0x8e746e4 System.Int32::ToString
0051f08e0 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f08e4 	mov	x22, x0
0051f08e8 	ldr	x8, [x8, #160]
0051f08ec 	ldr	x8, [x8]
0051f08f0 	mov	x0, x8
0051f08f4 	bl	#-12975096 ; -> 0x4590cfc 
0051f08f8 	mov	x1, xzr
0051f08fc 	mov	x21, x0
0051f0900 	bl	#63748392 ; -> 0x8ebc228 System.Object::.ctor
0051f0904 	mov	x0, x21
0051f0908 	mov	x1, x22
0051f090c 	str	x22, [x0, #24]!
0051f0910 	bl	#-12975884 ; -> 0x4590a04 
0051f0914 	mov	w8, #1
0051f0918 	strb	w8, [x21, #16]
0051f091c 	cbz	x20, #188 ; -> 0x51f09d8 
0051f0920 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0924 	mov	x0, x20
0051f0928 	mov	x1, x19
0051f092c 	ldr	x8, [x8, #152]
0051f0930 	mov	x2, x21
0051f0934 	ldr	x3, [x8]
0051f0938 	bl	#50037124 ; -> 0x81a8abc 
0051f093c 	b	#136 ; -> 0x51f09c4 
0051f0940 	ldr	x0, [x20]
0051f0944 	ldr	w8, [x0, #228]
0051f0948 	cbnz	w8, #12 ; -> 0x51f0954 
0051f094c 	bl	#-12975468 ; -> 0x4590be0 
0051f0950 	ldr	x0, [x20]
0051f0954 	ldr	x8, [x0, #184]
0051f0958 	add	x0, sp, #28
0051f095c 	mov	x1, xzr
0051f0960 	ldr	x20, [x8]
0051f0964 	bl	#63454592 ; -> 0x8e746e4 System.Int32::ToString
0051f0968 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f096c 	mov	x22, x0
0051f0970 	ldr	x8, [x8, #160]
0051f0974 	ldr	x8, [x8]
0051f0978 	mov	x0, x8
0051f097c 	bl	#-12975232 ; -> 0x4590cfc 
0051f0980 	mov	x1, xzr
0051f0984 	mov	x21, x0
0051f0988 	bl	#63748256 ; -> 0x8ebc228 System.Object::.ctor
0051f098c 	mov	x0, x21
0051f0990 	mov	x1, x22
0051f0994 	str	x22, [x0, #24]!
0051f0998 	bl	#-12976020 ; -> 0x4590a04 
0051f099c 	mov	w8, #1
0051f09a0 	strb	w8, [x21, #16]
0051f09a4 	cbz	x20, #52 ; -> 0x51f09d8 
0051f09a8 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f09ac 	mov	x0, x20
0051f09b0 	mov	x1, x19
0051f09b4 	ldr	x8, [x8, #144]
0051f09b8 	mov	x2, x21
0051f09bc 	ldr	x3, [x8]
0051f09c0 	bl	#50037008 ; -> 0x81a8ad0 
0051f09c4 	ldp	x20, x19, [sp, #48]
0051f09c8 	ldr	x30, [sp, #16]
0051f09cc 	ldp	x22, x21, [sp, #32]
0051f09d0 	add	sp, sp, #64
0051f09d4 	ret
0051f09d8 	bl	#-12975308 ; -> 0x4590d0c 
