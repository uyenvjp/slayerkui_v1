004fd7bb4 	sub	sp, sp, #144
004fd7bb8 	stp	x30, x23, [sp, #96]
004fd7bbc 	stp	x22, x21, [sp, #112]
004fd7bc0 	stp	x20, x19, [sp, #128]
004fd7bc4 	adrp	x22, #96460800 ; -> 0xabd5000 
004fd7bc8 	mov	x20, x1
004fd7bcc 	mov	x21, x0
004fd7bd0 	ldrb	w9, [x22, #3172]
004fd7bd4 	mov	x19, x8
004fd7bd8 	tbnz	w9, #0, #48 ; -> 0x4fd7c08 
004fd7bdc 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7be0 	ldr	x0, [x0, #3848]
004fd7be4 	bl	#-10776964 ; -> 0x4590a60 
004fd7be8 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7bec 	ldr	x0, [x0, #280]
004fd7bf0 	bl	#-10776976 ; -> 0x4590a60 
004fd7bf4 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7bf8 	ldr	x0, [x0, #3864]
004fd7bfc 	bl	#-10776988 ; -> 0x4590a60 
004fd7c00 	mov	w8, #1
004fd7c04 	strb	w8, [x22, #3172]
004fd7c08 	movi	v0.2d, #0000000000000000
004fd7c0c 	mov	w0, #3428
004fd7c10 	mov	x1, xzr
004fd7c14 	stp	q0, q0, [sp, #32]
004fd7c18 	stp	q0, q0, [sp, #64]
004fd7c1c 	bl	#-3737208 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7c20 	tbz	w0, #0, #44 ; -> 0x4fd7c4c 
004fd7c24 	mov	w0, #3428
004fd7c28 	mov	x1, xzr
004fd7c2c 	bl	#-3737044 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7c30 	cbz	x0, #184 ; -> 0x4fd7ce8 
004fd7c34 	add	x8, sp, #8
004fd7c38 	mov	x1, x21
004fd7c3c 	mov	x2, x20
004fd7c40 	mov	x3, xzr
004fd7c44 	bl	#-4445912 ; -> 0x4b9a56c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_534
004fd7c48 	b	#124 ; -> 0x4fd7cc4 
004fd7c4c 	adrp	x23, #88440832 ; -> 0xa42f000 
004fd7c50 	adrp	x22, #88158208 ; -> 0xa3ea000 
004fd7c54 	add	x21, sp, #32
004fd7c58 	ldr	x23, [x23, #280]
004fd7c5c 	str	xzr, [sp, #48]
004fd7c60 	orr	x0, x21, #0x8
004fd7c64 	ldr	x22, [x22, #3864]
004fd7c68 	mov	x1, xzr
004fd7c6c 	str	xzr, [sp, #40]
004fd7c70 	str	xzr, [sp, #56]
004fd7c74 	bl	#-10777200 ; -> 0x4590a04 
004fd7c78 	add	x0, x21, #32
004fd7c7c 	mov	x1, x20
004fd7c80 	str	x20, [sp, #64]
004fd7c84 	bl	#-10777216 ; -> 0x4590a04 
004fd7c88 	ldr	x20, [x23]
004fd7c8c 	mov	w9, #-1
004fd7c90 	str	w9, [sp, #32]
004fd7c94 	ldr	x8, [x20, #56]
004fd7c98 	cbnz	x8, #16 ; -> 0x4fd7ca8 
004fd7c9c 	mov	x0, x20
004fd7ca0 	bl	#-10546460 ; -> 0x45c8f84 
004fd7ca4 	ldr	x8, [x20, #56]
004fd7ca8 	ldr	x1, [x8, #16]
004fd7cac 	add	x0, sp, #32
004fd7cb0 	bl	#1970228 ; -> 0x51b8ce4 IFixRuntimePatcher+<DownloadWithNormalSSL>d__7::MoveNext
004fd7cb4 	ldr	x1, [x22]
004fd7cb8 	add	x8, sp, #8
004fd7cbc 	orr	x0, x21, #0x8
004fd7cc0 	bl	#-9218808 ; -> 0x470d1c8 
004fd7cc4 	ldur	q0, [sp, #8]
004fd7cc8 	ldr	x8, [sp, #24]
004fd7ccc 	ldp	x22, x21, [sp, #112]
004fd7cd0 	str	q0, [x19]
004fd7cd4 	ldp	x30, x23, [sp, #96]
004fd7cd8 	str	x8, [x19, #16]
004fd7cdc 	ldp	x20, x19, [sp, #128]
004fd7ce0 	add	sp, sp, #144
004fd7ce4 	ret
004fd7ce8 	bl	#-10776540 ; -> 0x4590d0c 
