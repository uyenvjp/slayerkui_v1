004fd7a6c 	sub	sp, sp, #176
004fd7a70 	str	x30, [sp, #112]
004fd7a74 	stp	x24, x23, [sp, #128]
004fd7a78 	stp	x22, x21, [sp, #144]
004fd7a7c 	stp	x20, x19, [sp, #160]
004fd7a80 	adrp	x22, #96460800 ; -> 0xabd5000 
004fd7a84 	mov	x20, x1
004fd7a88 	mov	x21, x0
004fd7a8c 	ldrb	w9, [x22, #3171]
004fd7a90 	mov	x19, x8
004fd7a94 	tbnz	w9, #0, #48 ; -> 0x4fd7ac4 
004fd7a98 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7a9c 	ldr	x0, [x0, #3848]
004fd7aa0 	bl	#-10776640 ; -> 0x4590a60 
004fd7aa4 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7aa8 	ldr	x0, [x0, #272]
004fd7aac 	bl	#-10776652 ; -> 0x4590a60 
004fd7ab0 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7ab4 	ldr	x0, [x0, #3864]
004fd7ab8 	bl	#-10776664 ; -> 0x4590a60 
004fd7abc 	mov	w8, #1
004fd7ac0 	strb	w8, [x22, #3171]
004fd7ac4 	movi	v0.2d, #0000000000000000
004fd7ac8 	mov	w0, #3426
004fd7acc 	mov	x1, xzr
004fd7ad0 	str	xzr, [sp, #96]
004fd7ad4 	stp	q0, q0, [sp, #32]
004fd7ad8 	stp	q0, q0, [sp, #64]
004fd7adc 	bl	#-3736888 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7ae0 	tbz	w0, #0, #44 ; -> 0x4fd7b0c 
004fd7ae4 	mov	w0, #3426
004fd7ae8 	mov	x1, xzr
004fd7aec 	bl	#-3736724 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7af0 	cbz	x0, #192 ; -> 0x4fd7bb0 
004fd7af4 	add	x8, sp, #8
004fd7af8 	mov	x1, x21
004fd7afc 	mov	x2, x20
004fd7b00 	mov	x3, xzr
004fd7b04 	bl	#-4445592 ; -> 0x4b9a56c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_534
004fd7b08 	b	#128 ; -> 0x4fd7b88 
004fd7b0c 	adrp	x24, #88440832 ; -> 0xa42f000 
004fd7b10 	adrp	x23, #88158208 ; -> 0xa3ea000 
004fd7b14 	add	x22, sp, #32
004fd7b18 	ldr	x24, [x24, #272]
004fd7b1c 	str	xzr, [sp, #48]
004fd7b20 	orr	x0, x22, #0x8
004fd7b24 	ldr	x23, [x23, #3864]
004fd7b28 	mov	x1, xzr
004fd7b2c 	str	xzr, [sp, #40]
004fd7b30 	str	xzr, [sp, #56]
004fd7b34 	bl	#-10776880 ; -> 0x4590a04 
004fd7b38 	add	x0, x22, #32
004fd7b3c 	mov	x1, x21
004fd7b40 	str	x21, [sp, #64]
004fd7b44 	bl	#-10776896 ; -> 0x4590a04 
004fd7b48 	add	x0, x22, #40
004fd7b4c 	mov	x1, x20
004fd7b50 	str	x20, [sp, #72]
004fd7b54 	bl	#-10776912 ; -> 0x4590a04 
004fd7b58 	ldr	x0, [x24]
004fd7b5c 	mov	w9, #-1
004fd7b60 	str	w9, [sp, #32]
004fd7b64 	ldr	x8, [x0, #56]
004fd7b68 	cbnz	x8, #8 ; -> 0x4fd7b70 
004fd7b6c 	bl	#-10546152 ; -> 0x45c8f84 
004fd7b70 	add	x0, sp, #32
004fd7b74 	bl	#5876 ; -> 0x4fd9268 IFixRuntimePatcher+<DownloadData>d__6::MoveNext
004fd7b78 	ldr	x1, [x23]
004fd7b7c 	add	x8, sp, #8
004fd7b80 	orr	x0, x22, #0x8
004fd7b84 	bl	#-9218492 ; -> 0x470d1c8 
004fd7b88 	ldur	q0, [sp, #8]
004fd7b8c 	ldr	x8, [sp, #24]
004fd7b90 	ldr	x30, [sp, #112]
004fd7b94 	ldp	x22, x21, [sp, #144]
004fd7b98 	str	q0, [x19]
004fd7b9c 	ldp	x24, x23, [sp, #128]
004fd7ba0 	str	x8, [x19, #16]
004fd7ba4 	ldp	x20, x19, [sp, #160]
004fd7ba8 	add	sp, sp, #176
004fd7bac 	ret
004fd7bb0 	bl	#-10776228 ; -> 0x4590d0c 
