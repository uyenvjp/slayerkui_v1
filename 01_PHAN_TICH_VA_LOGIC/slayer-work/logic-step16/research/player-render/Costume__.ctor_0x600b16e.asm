00534d7ec 	stp	x30, x23, [sp, #-48]!
00534d7f0 	stp	x22, x21, [sp, #16]
00534d7f4 	stp	x20, x19, [sp, #32]
00534d7f8 	adrp	x20, #92839936 ; -> 0xabd7000 
00534d7fc 	mov	x21, x1
00534d800 	mov	x19, x0
00534d804 	ldrb	w8, [x20, #1485]
00534d808 	tbnz	w8, #0, #60 ; -> 0x534d844 
00534d80c 	adrp	x0, #84545536 ; -> 0xa3ee000 
00534d810 	ldr	x0, [x0, #4008]
00534d814 	bl	#-14405044 ; -> 0x4590a60 
00534d818 	adrp	x0, #84877312 ; -> 0xa43f000 
00534d81c 	ldr	x0, [x0, #3976]
00534d820 	bl	#-14405056 ; -> 0x4590a60 
00534d824 	adrp	x0, #84877312 ; -> 0xa43f000 
00534d828 	ldr	x0, [x0, #3984]
00534d82c 	bl	#-14405068 ; -> 0x4590a60 
00534d830 	adrp	x0, #84746240 ; -> 0xa41f000 
00534d834 	ldr	x0, [x0, #224]
00534d838 	bl	#-14405080 ; -> 0x4590a60 
00534d83c 	mov	w8, #1
00534d840 	strb	w8, [x20, #1485]
00534d844 	mov	x0, x19
00534d848 	mov	x1, xzr
00534d84c 	bl	#65684 ; -> 0x535d8e0 SkinBase::.ctor
00534d850 	cbz	x21, #368 ; -> 0x534d9c0 
00534d854 	ldr	w8, [x21, #16]
00534d858 	mov	x20, x19
00534d85c 	mov	w9, #4
00534d860 	adrp	x22, #84877312 ; -> 0xa43f000 
00534d864 	stp	w8, w9, [x20, #24]!
00534d868 	mov	x0, x20
00534d86c 	ldr	d0, [x21, #32]
00534d870 	str	d0, [x20, #8]
00534d874 	ldr	w8, [x21, #40]
00534d878 	ldr	x22, [x22, #3976]
00534d87c 	ldr	x1, [x21, #24]
00534d880 	str	w8, [x20, #16]
00534d884 	str	x1, [x0, #-8]!
00534d888 	bl	#-14405252 ; -> 0x4590a04 
00534d88c 	ldr	w8, [x21, #44]
00534d890 	ldrb	w9, [x21, #48]
00534d894 	strb	wzr, [x20, #25]
00534d898 	str	w8, [x20, #20]
00534d89c 	ldrb	w8, [x21, #49]
00534d8a0 	ldur	d0, [x21, #52]
00534d8a4 	strb	w9, [x20, #24]
00534d8a8 	ldrb	w9, [x21, #64]
00534d8ac 	strb	w8, [x20, #80]
00534d8b0 	stur	d0, [x20, #28]
00534d8b4 	ldr	w8, [x21, #60]
00534d8b8 	strb	w9, [x20, #81]
00534d8bc 	ldr	w9, [x21, #68]
00534d8c0 	stp	w8, w9, [x20, #36]
00534d8c4 	ldr	w9, [x20]
00534d8c8 	ldrh	w8, [x21, #72]
00534d8cc 	cmp	w9, #999
00534d8d0 	strh	w8, [x20, #44]
00534d8d4 	ldur	d0, [x21, #76]
00534d8d8 	ldrb	w8, [x21, #84]
00534d8dc 	str	d0, [x20, #48]
00534d8e0 	ldr	d0, [x21, #88]
00534d8e4 	strb	w8, [x20, #96]
00534d8e8 	stur	d0, [x20, #100]
00534d8ec 	ldr	w10, [x21, #96]
00534d8f0 	ldr	x21, [x22]
00534d8f4 	str	w10, [x20, #56]
00534d8f8 	b.le	#44 ; -> 0x534d924 
00534d8fc 	mov	x0, x20
00534d900 	mov	x1, xzr
00534d904 	bl	#62025184 ; -> 0x8e746e4 System.Int32::ToString
00534d908 	mov	x1, x0
00534d90c 	mov	x0, x21
00534d910 	mov	x2, xzr
00534d914 	bl	#60286260 ; -> 0x8ccbe48 System.String::Concat
00534d918 	mov	x1, x0
00534d91c 	str	x0, [x19, #88]!
00534d920 	b	#140 ; -> 0x534d9ac 
00534d924 	adrp	x23, #84746240 ; -> 0xa41f000 
00534d928 	mov	x0, x20
00534d92c 	mov	x2, xzr
00534d930 	ldr	x23, [x23, #224]
00534d934 	ldr	x1, [x23]
00534d938 	bl	#62025280 ; -> 0x8e74778 System.Int32::ToString
00534d93c 	mov	x1, x0
00534d940 	mov	x0, x21
00534d944 	mov	x2, xzr
00534d948 	bl	#60286208 ; -> 0x8ccbe48 System.String::Concat
00534d94c 	mov	x22, x19
00534d950 	mov	x1, x0
00534d954 	str	x0, [x22, #88]!
00534d958 	mov	x0, x22
00534d95c 	bl	#-14405464 ; -> 0x4590a04 
00534d960 	ldrb	w8, [x22, #17]
00534d964 	cbz	w8, #20 ; -> 0x534d978 
00534d968 	ldp	x20, x19, [sp, #32]
00534d96c 	ldp	x22, x21, [sp, #16]
00534d970 	ldp	x30, x23, [sp], #48
00534d974 	ret
00534d978 	ldr	x1, [x23]
00534d97c 	mov	x0, x20
00534d980 	mov	x2, xzr
00534d984 	bl	#62025204 ; -> 0x8e74778 System.Int32::ToString
00534d988 	adrp	x8, #84877312 ; -> 0xa43f000 
00534d98c 	mov	x1, x0
00534d990 	mov	x0, x21
00534d994 	ldr	x8, [x8, #3984]
00534d998 	mov	x3, xzr
00534d99c 	ldr	x2, [x8]
00534d9a0 	bl	#60343692 ; -> 0x8cd9f2c System.String::Concat
00534d9a4 	mov	x1, x0
00534d9a8 	str	x0, [x19, #112]!
00534d9ac 	mov	x0, x19
00534d9b0 	ldp	x20, x19, [sp, #32]
00534d9b4 	ldp	x22, x21, [sp, #16]
00534d9b8 	ldp	x30, x23, [sp], #48
00534d9bc 	b	#-14405560 ; -> 0x4590a04 
00534d9c0 	bl	#-14404788 ; -> 0x4590d0c 
