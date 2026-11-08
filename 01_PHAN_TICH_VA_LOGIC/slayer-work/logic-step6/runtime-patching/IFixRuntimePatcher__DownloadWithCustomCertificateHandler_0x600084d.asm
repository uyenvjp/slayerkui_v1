004fd7cec 	sub	sp, sp, #144
004fd7cf0 	stp	x30, x23, [sp, #96]
004fd7cf4 	stp	x22, x21, [sp, #112]
004fd7cf8 	stp	x20, x19, [sp, #128]
004fd7cfc 	adrp	x22, #96460800 ; -> 0xabd5000 
004fd7d00 	mov	x20, x1
004fd7d04 	mov	x21, x0
004fd7d08 	ldrb	w9, [x22, #3173]
004fd7d0c 	mov	x19, x8
004fd7d10 	tbnz	w9, #0, #48 ; -> 0x4fd7d40 
004fd7d14 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7d18 	ldr	x0, [x0, #3848]
004fd7d1c 	bl	#-10777276 ; -> 0x4590a60 
004fd7d20 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7d24 	ldr	x0, [x0, #288]
004fd7d28 	bl	#-10777288 ; -> 0x4590a60 
004fd7d2c 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7d30 	ldr	x0, [x0, #3864]
004fd7d34 	bl	#-10777300 ; -> 0x4590a60 
004fd7d38 	mov	w8, #1
004fd7d3c 	strb	w8, [x22, #3173]
004fd7d40 	movi	v0.2d, #0000000000000000
004fd7d44 	mov	w0, #3431
004fd7d48 	mov	x1, xzr
004fd7d4c 	stp	q0, q0, [sp, #32]
004fd7d50 	stp	q0, q0, [sp, #64]
004fd7d54 	bl	#-3737520 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7d58 	tbz	w0, #0, #44 ; -> 0x4fd7d84 
004fd7d5c 	mov	w0, #3431
004fd7d60 	mov	x1, xzr
004fd7d64 	bl	#-3737356 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7d68 	cbz	x0, #184 ; -> 0x4fd7e20 
004fd7d6c 	add	x8, sp, #8
004fd7d70 	mov	x1, x21
004fd7d74 	mov	x2, x20
004fd7d78 	mov	x3, xzr
004fd7d7c 	bl	#-4446224 ; -> 0x4b9a56c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_534
004fd7d80 	b	#124 ; -> 0x4fd7dfc 
004fd7d84 	adrp	x23, #88440832 ; -> 0xa42f000 
004fd7d88 	adrp	x22, #88158208 ; -> 0xa3ea000 
004fd7d8c 	add	x21, sp, #32
004fd7d90 	ldr	x23, [x23, #288]
004fd7d94 	str	xzr, [sp, #48]
004fd7d98 	orr	x0, x21, #0x8
004fd7d9c 	ldr	x22, [x22, #3864]
004fd7da0 	mov	x1, xzr
004fd7da4 	str	xzr, [sp, #40]
004fd7da8 	str	xzr, [sp, #56]
004fd7dac 	bl	#-10777512 ; -> 0x4590a04 
004fd7db0 	add	x0, x21, #32
004fd7db4 	mov	x1, x20
004fd7db8 	str	x20, [sp, #64]
004fd7dbc 	bl	#-10777528 ; -> 0x4590a04 
004fd7dc0 	ldr	x20, [x23]
004fd7dc4 	mov	w9, #-1
004fd7dc8 	str	w9, [sp, #32]
004fd7dcc 	ldr	x8, [x20, #56]
004fd7dd0 	cbnz	x8, #16 ; -> 0x4fd7de0 
004fd7dd4 	mov	x0, x20
004fd7dd8 	bl	#-10546772 ; -> 0x45c8f84 
004fd7ddc 	ldr	x8, [x20, #56]
004fd7de0 	ldr	x1, [x8, #16]
004fd7de4 	add	x0, sp, #32
004fd7de8 	bl	#1967924 ; -> 0x51b851c IFixRuntimePatcher+<DownloadWithCustomCertificateHandler>d__8::MoveNext
004fd7dec 	ldr	x1, [x22]
004fd7df0 	add	x8, sp, #8
004fd7df4 	orr	x0, x21, #0x8
004fd7df8 	bl	#-9219120 ; -> 0x470d1c8 
004fd7dfc 	ldur	q0, [sp, #8]
004fd7e00 	ldr	x8, [sp, #24]
004fd7e04 	ldp	x22, x21, [sp, #112]
004fd7e08 	str	q0, [x19]
004fd7e0c 	ldp	x30, x23, [sp, #96]
004fd7e10 	str	x8, [x19, #16]
004fd7e14 	ldp	x20, x19, [sp, #128]
004fd7e18 	add	sp, sp, #144
004fd7e1c 	ret
004fd7e20 	bl	#-10776852 ; -> 0x4590d0c 
