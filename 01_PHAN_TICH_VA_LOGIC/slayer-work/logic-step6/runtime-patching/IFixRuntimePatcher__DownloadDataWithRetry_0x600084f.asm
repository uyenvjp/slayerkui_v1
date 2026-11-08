004fd7f44 	sub	sp, sp, #240
004fd7f48 	str	x30, [sp, #160]
004fd7f4c 	stp	x26, x25, [sp, #176]
004fd7f50 	stp	x24, x23, [sp, #192]
004fd7f54 	stp	x22, x21, [sp, #208]
004fd7f58 	stp	x20, x19, [sp, #224]
004fd7f5c 	adrp	x24, #96460800 ; -> 0xabd5000 
004fd7f60 	mov	x20, x3
004fd7f64 	mov	w21, w2
004fd7f68 	ldrb	w9, [x24, #3175]
004fd7f6c 	mov	x22, x1
004fd7f70 	mov	x23, x0
004fd7f74 	mov	x19, x8
004fd7f78 	tbnz	w9, #0, #48 ; -> 0x4fd7fa8 
004fd7f7c 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7f80 	ldr	x0, [x0, #3848]
004fd7f84 	bl	#-10777892 ; -> 0x4590a60 
004fd7f88 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd7f8c 	ldr	x0, [x0, #304]
004fd7f90 	bl	#-10777904 ; -> 0x4590a60 
004fd7f94 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7f98 	ldr	x0, [x0, #3864]
004fd7f9c 	bl	#-10777916 ; -> 0x4590a60 
004fd7fa0 	mov	w8, #1
004fd7fa4 	strb	w8, [x24, #3175]
004fd7fa8 	movi	v0.2d, #0000000000000000
004fd7fac 	mov	w0, #3421
004fd7fb0 	mov	x1, xzr
004fd7fb4 	str	xzr, [sp, #144]
004fd7fb8 	stp	q0, q0, [sp, #48]
004fd7fbc 	stp	q0, q0, [sp, #80]
004fd7fc0 	stp	q0, q0, [sp, #112]
004fd7fc4 	str	q0, [sp, #32]
004fd7fc8 	bl	#-3738148 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7fcc 	tbz	w0, #0, #52 ; -> 0x4fd8000 
004fd7fd0 	mov	w0, #3421
004fd7fd4 	mov	x1, xzr
004fd7fd8 	bl	#-3737984 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd7fdc 	cbz	x0, #224 ; -> 0x4fd80bc 
004fd7fe0 	add	x8, sp, #8
004fd7fe4 	mov	x1, x23
004fd7fe8 	mov	x2, x22
004fd7fec 	mov	w3, w21
004fd7ff0 	mov	x4, x20
004fd7ff4 	mov	x5, xzr
004fd7ff8 	bl	#-4446608 ; -> 0x4b9a668 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_535
004fd7ffc 	b	#148 ; -> 0x4fd8090 
004fd8000 	adrp	x26, #88436736 ; -> 0xa42f000 
004fd8004 	adrp	x25, #88154112 ; -> 0xa3ea000 
004fd8008 	add	x24, sp, #32
004fd800c 	ldr	x26, [x26, #304]
004fd8010 	str	xzr, [sp, #48]
004fd8014 	orr	x0, x24, #0x8
004fd8018 	ldr	x25, [x25, #3864]
004fd801c 	mov	x1, xzr
004fd8020 	str	xzr, [sp, #40]
004fd8024 	str	xzr, [sp, #56]
004fd8028 	bl	#-10778148 ; -> 0x4590a04 
004fd802c 	add	x0, x24, #32
004fd8030 	mov	x1, x23
004fd8034 	str	x23, [sp, #64]
004fd8038 	bl	#-10778164 ; -> 0x4590a04 
004fd803c 	add	x0, x24, #48
004fd8040 	mov	x1, x22
004fd8044 	str	x22, [sp, #80]
004fd8048 	bl	#-10778180 ; -> 0x4590a04 
004fd804c 	add	x0, x24, #56
004fd8050 	mov	x1, x20
004fd8054 	str	w21, [sp, #72]
004fd8058 	str	x20, [sp, #88]
004fd805c 	bl	#-10778200 ; -> 0x4590a04 
004fd8060 	ldr	x0, [x26]
004fd8064 	mov	w9, #-1
004fd8068 	str	w9, [sp, #32]
004fd806c 	ldr	x8, [x0, #56]
004fd8070 	cbnz	x8, #8 ; -> 0x4fd8078 
004fd8074 	bl	#-10547440 ; -> 0x45c8f84 
004fd8078 	add	x0, sp, #32
004fd807c 	bl	#6504 ; -> 0x4fd99e4 IFixRuntimePatcher+<DownloadDataWithRetry>d__10::MoveNext
004fd8080 	ldr	x1, [x25]
004fd8084 	add	x8, sp, #8
004fd8088 	orr	x0, x24, #0x8
004fd808c 	bl	#-9219780 ; -> 0x470d1c8 
004fd8090 	ldur	q0, [sp, #8]
004fd8094 	ldr	x8, [sp, #24]
004fd8098 	ldr	x30, [sp, #160]
004fd809c 	ldp	x22, x21, [sp, #208]
004fd80a0 	str	q0, [x19]
004fd80a4 	ldp	x24, x23, [sp, #192]
004fd80a8 	str	x8, [x19, #16]
004fd80ac 	ldp	x20, x19, [sp, #224]
004fd80b0 	ldp	x26, x25, [sp, #176]
004fd80b4 	add	sp, sp, #240
004fd80b8 	ret
004fd80bc 	bl	#-10777520 ; -> 0x4590d0c 
