004fd7e24 	sub	sp, sp, #112
004fd7e28 	str	d8, [sp, #64]
004fd7e2c 	stp	x30, x21, [sp, #80]
004fd7e30 	stp	x20, x19, [sp, #96]
004fd7e34 	fmov	s8, s0
004fd7e38 	adrp	x20, #96460800 ; -> 0xabd5000 
004fd7e3c 	mov	x19, x0
004fd7e40 	ldrb	w8, [x20, #3174]
004fd7e44 	tbnz	w8, #0, #48 ; -> 0x4fd7e74 
004fd7e48 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7e4c 	ldr	x0, [x0, #3728]
004fd7e50 	bl	#-10777584 ; -> 0x4590a60 
004fd7e54 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7e58 	ldr	x0, [x0, #296]
004fd7e5c 	bl	#-10777596 ; -> 0x4590a60 
004fd7e60 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7e64 	ldr	x0, [x0, #3744]
004fd7e68 	bl	#-10777608 ; -> 0x4590a60 
004fd7e6c 	mov	w8, #1
004fd7e70 	strb	w8, [x20, #3174]
004fd7e74 	movi	v0.2d, #0000000000000000
004fd7e78 	mov	w0, #3423
004fd7e7c 	mov	x1, xzr
004fd7e80 	str	xzr, [sp, #48]
004fd7e84 	stp	q0, q0, [sp, #16]
004fd7e88 	str	q0, [sp]
004fd7e8c 	bl	#-3737832 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7e90 	tbz	w0, #0, #52 ; -> 0x4fd7ec4 
004fd7e94 	mov	w0, #3423
004fd7e98 	mov	x1, xzr
004fd7e9c 	bl	#-3737668 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7ea0 	cbz	x0, #160 ; -> 0x4fd7f40 
004fd7ea4 	mov	x1, x19
004fd7ea8 	ldp	x20, x19, [sp, #96]
004fd7eac 	ldp	x30, x21, [sp, #80]
004fd7eb0 	fmov	s0, s8
004fd7eb4 	ldr	d8, [sp, #64]
004fd7eb8 	mov	x2, xzr
004fd7ebc 	add	sp, sp, #112
004fd7ec0 	b	#-4446776 ; -> 0x4b9a488 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_533
004fd7ec4 	adrp	x19, #88440832 ; -> 0xa42f000 
004fd7ec8 	adrp	x21, #88158208 ; -> 0xa3ea000 
004fd7ecc 	mov	x20, sp
004fd7ed0 	ldr	x19, [x19, #296]
004fd7ed4 	str	xzr, [sp, #16]
004fd7ed8 	orr	x0, x20, #0x8
004fd7edc 	ldr	x21, [x21, #3744]
004fd7ee0 	mov	x1, xzr
004fd7ee4 	str	xzr, [sp, #8]
004fd7ee8 	str	xzr, [sp, #24]
004fd7eec 	bl	#-10777832 ; -> 0x4590a04 
004fd7ef0 	ldr	x19, [x19]
004fd7ef4 	mov	w9, #-1
004fd7ef8 	str	s8, [sp, #32]
004fd7efc 	str	w9, [sp]
004fd7f00 	ldr	x8, [x19, #56]
004fd7f04 	cbnz	x8, #16 ; -> 0x4fd7f14 
004fd7f08 	mov	x0, x19
004fd7f0c 	bl	#-10547080 ; -> 0x45c8f84 
004fd7f10 	ldr	x8, [x19, #56]
004fd7f14 	ldr	x1, [x8, #16]
004fd7f18 	mov	x0, sp
004fd7f1c 	bl	#1974732 ; -> 0x51ba0e8 IFixRuntimePatcher+<WaitForInternetConnection>d__9::MoveNext
004fd7f20 	ldr	x1, [x21]
004fd7f24 	orr	x0, x20, #0x8
004fd7f28 	bl	#-9006696 ; -> 0x47410c0 
004fd7f2c 	ldp	x20, x19, [sp, #96]
004fd7f30 	ldr	d8, [sp, #64]
004fd7f34 	ldp	x30, x21, [sp, #80]
004fd7f38 	add	sp, sp, #112
004fd7f3c 	ret
004fd7f40 	bl	#-10777140 ; -> 0x4590d0c 
