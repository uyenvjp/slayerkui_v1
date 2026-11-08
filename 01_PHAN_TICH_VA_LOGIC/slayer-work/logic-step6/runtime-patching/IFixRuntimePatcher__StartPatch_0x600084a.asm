004fd7914 	sub	sp, sp, #160
004fd7918 	str	x30, [sp, #96]
004fd791c 	stp	x24, x23, [sp, #112]
004fd7920 	stp	x22, x21, [sp, #128]
004fd7924 	stp	x20, x19, [sp, #144]
004fd7928 	adrp	x22, #96460800 ; -> 0xabd5000 
004fd792c 	mov	w21, w2
004fd7930 	mov	x19, x1
004fd7934 	ldrb	w8, [x22, #3170]
004fd7938 	mov	x20, x0
004fd793c 	tbnz	w8, #0, #48 ; -> 0x4fd796c 
004fd7940 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7944 	ldr	x0, [x0, #248]
004fd7948 	bl	#-10776296 ; -> 0x4590a60 
004fd794c 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7950 	ldr	x0, [x0, #256]
004fd7954 	bl	#-10776308 ; -> 0x4590a60 
004fd7958 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd795c 	ldr	x0, [x0, #264]
004fd7960 	bl	#-10776320 ; -> 0x4590a60 
004fd7964 	mov	w8, #1
004fd7968 	strb	w8, [x22, #3170]
004fd796c 	movi	v0.2d, #0000000000000000
004fd7970 	mov	w0, #3411
004fd7974 	mov	x1, xzr
004fd7978 	stp	q0, q0, [sp]
004fd797c 	stp	q0, q0, [sp, #32]
004fd7980 	stp	q0, q0, [sp, #64]
004fd7984 	bl	#-3736544 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7988 	tbz	w0, #0, #60 ; -> 0x4fd79c4 
004fd798c 	mov	w0, #3411
004fd7990 	mov	x1, xzr
004fd7994 	bl	#-3736380 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7998 	cbz	x0, #208 ; -> 0x4fd7a68 
004fd799c 	and	w3, w21, #0x1
004fd79a0 	mov	x1, x20
004fd79a4 	mov	x2, x19
004fd79a8 	ldp	x20, x19, [sp, #144]
004fd79ac 	ldr	x30, [sp, #96]
004fd79b0 	ldp	x22, x21, [sp, #128]
004fd79b4 	mov	x4, xzr
004fd79b8 	ldp	x24, x23, [sp, #112]
004fd79bc 	add	sp, sp, #160
004fd79c0 	b	#-4444716 ; -> 0x4b9a794 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_536
004fd79c4 	adrp	x23, #88440832 ; -> 0xa42f000 
004fd79c8 	adrp	x22, #88440832 ; -> 0xa42f000 
004fd79cc 	and	w24, w21, #0x1
004fd79d0 	ldr	x23, [x23, #256]
004fd79d4 	str	xzr, [sp, #16]
004fd79d8 	mov	x21, sp
004fd79dc 	ldr	x22, [x22, #264]
004fd79e0 	orr	x0, x21, #0x8
004fd79e4 	mov	x1, xzr
004fd79e8 	str	xzr, [sp, #8]
004fd79ec 	str	xzr, [sp, #24]
004fd79f0 	bl	#-10776556 ; -> 0x4590a04 
004fd79f4 	add	x0, x21, #48
004fd79f8 	mov	x1, x20
004fd79fc 	str	x20, [sp, #48]
004fd7a00 	bl	#-10776572 ; -> 0x4590a04 
004fd7a04 	add	x0, x21, #32
004fd7a08 	mov	x1, x19
004fd7a0c 	str	x19, [sp, #32]
004fd7a10 	bl	#-10776588 ; -> 0x4590a04 
004fd7a14 	ldr	x19, [x23]
004fd7a18 	mov	w9, #-1
004fd7a1c 	strb	w24, [sp, #40]
004fd7a20 	str	w9, [sp]
004fd7a24 	ldr	x8, [x19, #56]
004fd7a28 	cbnz	x8, #16 ; -> 0x4fd7a38 
004fd7a2c 	mov	x0, x19
004fd7a30 	bl	#-10545836 ; -> 0x45c8f84 
004fd7a34 	ldr	x8, [x19, #56]
004fd7a38 	ldr	x1, [x8, #16]
004fd7a3c 	mov	x0, sp
004fd7a40 	bl	#1972580 ; -> 0x51b93a4 IFixRuntimePatcher+<StartPatch>d__5::MoveNext
004fd7a44 	ldr	x1, [x22]
004fd7a48 	orr	x0, x21, #0x8
004fd7a4c 	bl	#12160 ; -> 0x4fda9cc 
004fd7a50 	ldp	x20, x19, [sp, #144]
004fd7a54 	ldr	x30, [sp, #96]
004fd7a58 	ldp	x22, x21, [sp, #128]
004fd7a5c 	ldp	x24, x23, [sp, #112]
004fd7a60 	add	sp, sp, #160
004fd7a64 	ret
004fd7a68 	bl	#-10775900 ; -> 0x4590d0c 
