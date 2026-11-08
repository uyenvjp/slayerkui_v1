004d509d4 	sub	sp, sp, #160
004d509d8 	str	x30, [sp, #112]
004d509dc 	stp	x22, x21, [sp, #128]
004d509e0 	stp	x20, x19, [sp, #144]
004d509e4 	adrp	x21, #99106816 ; -> 0xabd4000 
004d509e8 	mov	x20, x0
004d509ec 	mov	x19, x8
004d509f0 	ldrb	w9, [x21, #2878]
004d509f4 	tbnz	w9, #0, #84 ; -> 0x4d50a48 
004d509f8 	adrp	x0, #90804224 ; -> 0xa3e9000 
004d509fc 	ldr	x0, [x0, #1384]
004d50a00 	bl	#-8126368 ; -> 0x4590a60 
004d50a04 	adrp	x0, #91037696 ; -> 0xa422000 
004d50a08 	ldr	x0, [x0, #2448]
004d50a0c 	bl	#-8126380 ; -> 0x4590a60 
004d50a10 	adrp	x0, #91037696 ; -> 0xa422000 
004d50a14 	ldr	x0, [x0, #2456]
004d50a18 	bl	#-8126392 ; -> 0x4590a60 
004d50a1c 	adrp	x0, #91037696 ; -> 0xa422000 
004d50a20 	ldr	x0, [x0, #2464]
004d50a24 	bl	#-8126404 ; -> 0x4590a60 
004d50a28 	adrp	x0, #91037696 ; -> 0xa422000 
004d50a2c 	ldr	x0, [x0, #2472]
004d50a30 	bl	#-8126416 ; -> 0x4590a60 
004d50a34 	adrp	x0, #91037696 ; -> 0xa422000 
004d50a38 	ldr	x0, [x0, #2480]
004d50a3c 	bl	#-8126428 ; -> 0x4590a60 
004d50a40 	mov	w8, #1
004d50a44 	strb	w8, [x21, #2878]
004d50a48 	movi	v0.2d, #0000000000000000
004d50a4c 	mov	w0, #4398
004d50a50 	mov	x1, xzr
004d50a54 	str	xzr, [sp, #96]
004d50a58 	stp	q0, q0, [sp, #64]
004d50a5c 	bl	#-1086648 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d50a60 	tbz	w0, #0, #52 ; -> 0x4d50a94 
004d50a64 	mov	w0, #4398
004d50a68 	mov	x1, xzr
004d50a6c 	bl	#-1086484 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d50a70 	cbz	x0, #248 ; -> 0x4d50b68 
004d50a74 	mov	x8, sp
004d50a78 	mov	x1, x20
004d50a7c 	mov	x2, xzr
004d50a80 	bl	#-1774748 ; -> 0x4b9f5e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_630
004d50a84 	ldp	q0, q1, [sp]
004d50a88 	str	q0, [x19]
004d50a8c 	ldp	q0, q2, [sp, #32]
004d50a90 	b	#188 ; -> 0x4d50b4c 
004d50a94 	mov	w8, #13168
004d50a98 	adrp	x21, #90804224 ; -> 0xa3e9000 
004d50a9c 	mov	w1, #100
004d50aa0 	add	x20, x20, x8
004d50aa4 	ldr	x21, [x21, #1384]
004d50aa8 	mov	x2, xzr
004d50aac 	mov	x0, x20
004d50ab0 	bl	#-2091204 ; -> 0x4b521ec SilentInt::set_Value
004d50ab4 	ldr	x0, [x21]
004d50ab8 	ldr	w8, [x0, #228]
004d50abc 	cbnz	w8, #12 ; -> 0x4d50ac8 
004d50ac0 	bl	#-8126176 ; -> 0x4590be0 
004d50ac4 	ldr	x0, [x21]
004d50ac8 	ldr	x8, [x0, #184]
004d50acc 	ldr	x0, [x8, #144]
004d50ad0 	cbz	x0, #152 ; -> 0x4d50b68 
004d50ad4 	adrp	x8, #91037696 ; -> 0xa422000 
004d50ad8 	add	x22, sp, #64
004d50adc 	ldr	x8, [x8, #2448]
004d50ae0 	ldr	x1, [x8]
004d50ae4 	add	x8, sp, #64
004d50ae8 	bl	#54779280 ; -> 0x818e878 
004d50aec 	adrp	x21, #91037696 ; -> 0xa422000 
004d50af0 	ldr	x21, [x21, #2464]
004d50af4 	stp	xzr, x22, [sp]
004d50af8 	ldr	x1, [x21]
004d50afc 	add	x0, sp, #64
004d50b00 	bl	#24168404 ; -> 0x645d2d4 
004d50b04 	tbz	w0, #0, #40 ; -> 0x4d50b2c 
004d50b08 	ldr	x22, [sp, #88]
004d50b0c 	mov	x0, x20
004d50b10 	mov	x1, xzr
004d50b14 	bl	#-2092292 ; -> 0x4b51e10 SilentInt::get_Value
004d50b18 	add	w1, w0, w22
004d50b1c 	mov	x0, x20
004d50b20 	mov	x2, xzr
004d50b24 	bl	#-2091320 ; -> 0x4b521ec SilentInt::set_Value
004d50b28 	b	#-48 ; -> 0x4d50af8 
004d50b2c 	adrp	x8, #91037696 ; -> 0xa422000 
004d50b30 	add	x0, sp, #64
004d50b34 	ldr	x8, [x8, #2456]
004d50b38 	ldr	x1, [x8]
004d50b3c 	bl	#24168636 ; -> 0x645d3f8 
004d50b40 	ldp	q0, q1, [x20]
004d50b44 	str	q0, [x19]
004d50b48 	ldp	q0, q2, [x20, #32]
004d50b4c 	stp	q1, q0, [x19, #16]
004d50b50 	ldp	x22, x21, [sp, #128]
004d50b54 	str	q2, [x19, #48]
004d50b58 	ldr	x30, [sp, #112]
004d50b5c 	ldp	x20, x19, [sp, #144]
004d50b60 	add	sp, sp, #160
004d50b64 	ret
004d50b68 	bl	#-8126044 ; -> 0x4590d0c 
004d50b6c 	b	#8 ; -> 0x4d50b74 
004d50b70 	b	#4 ; -> 0x4d50b74 
004d50b74 	mov	x21, x0
004d50b78 	cmp	w1, #1
004d50b7c 	b.ne	#60 ; -> 0x4d50bb8 
004d50b80 	mov	x0, x21
004d50b84 	bl	#83995900 ; -> 0x9d6b880 
004d50b88 	ldr	x21, [x0]
004d50b8c 	str	x21, [sp]
004d50b90 	bl	#83995904 ; -> 0x9d6b890 
004d50b94 	adrp	x8, #91037696 ; -> 0xa422000 
004d50b98 	ldr	x8, [x8, #2456]
004d50b9c 	ldr	x0, [sp, #8]
004d50ba0 	ldr	x1, [x8]
004d50ba4 	bl	#24168532 ; -> 0x645d3f8 
004d50ba8 	cbz	x21, #-104 ; -> 0x4d50b40 
004d50bac 	mov	x0, x21
004d50bb0 	bl	#-8126124 ; -> 0x4590d04 
004d50bb4 	mov	x21, x0
004d50bb8 	mov	x0, sp
004d50bbc 	bl	#-12761236 ; -> 0x4125328 
004d50bc0 	mov	x0, x21
004d50bc4 	bl	#-6941608 ; -> 0x46b201c 
004d50bc8 	bl	#-12796776 ; -> 0x411c860 
