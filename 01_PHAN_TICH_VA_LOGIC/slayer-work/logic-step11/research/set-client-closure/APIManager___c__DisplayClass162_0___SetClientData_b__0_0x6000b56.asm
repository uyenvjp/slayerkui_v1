0051ce414 	sub	sp, sp, #128
0051ce418 	stp	x30, x23, [sp, #80]
0051ce41c 	stp	x22, x21, [sp, #96]
0051ce420 	stp	x20, x19, [sp, #112]
0051ce424 	adrp	x22, #94404608 ; -> 0xabd6000 
0051ce428 	adrp	x21, #86421504 ; -> 0xa439000 
0051ce42c 	mov	x20, x0
0051ce430 	ldrb	w9, [x22, #2986]
0051ce434 	ldr	x21, [x21, #2304]
0051ce438 	mov	x19, x8
0051ce43c 	tbnz	w9, #0, #48 ; -> 0x51ce46c 
0051ce440 	adrp	x0, #86093824 ; -> 0xa3e9000 
0051ce444 	ldr	x0, [x0, #2728]
0051ce448 	bl	#-12835304 ; -> 0x4590a60 
0051ce44c 	adrp	x0, #86421504 ; -> 0xa439000 
0051ce450 	ldr	x0, [x0, #2304]
0051ce454 	bl	#-12835316 ; -> 0x4590a60 
0051ce458 	adrp	x0, #86093824 ; -> 0xa3e9000 
0051ce45c 	ldr	x0, [x0, #2736]
0051ce460 	bl	#-12835328 ; -> 0x4590a60 
0051ce464 	mov	w8, #1
0051ce468 	strb	w8, [x22, #2986]
0051ce46c 	movi	v0.2d, #0000000000000000
0051ce470 	adrp	x23, #86093824 ; -> 0xa3e9000 
0051ce474 	add	x22, sp, #32
0051ce478 	orr	x0, x22, #0x8
0051ce47c 	mov	x1, xzr
0051ce480 	stp	q0, q0, [sp, #32]
0051ce484 	str	q0, [sp, #64]
0051ce488 	str	xzr, [sp, #56]
0051ce48c 	ldr	x23, [x23, #2736]
0051ce490 	stp	xzr, xzr, [sp, #40]
0051ce494 	bl	#-12835472 ; -> 0x4590a04 
0051ce498 	add	x0, x22, #32
0051ce49c 	mov	x1, x20
0051ce4a0 	str	x20, [sp, #64]
0051ce4a4 	bl	#-12835488 ; -> 0x4590a04 
0051ce4a8 	ldr	x0, [x21]
0051ce4ac 	mov	w9, #-1
0051ce4b0 	str	w9, [sp, #32]
0051ce4b4 	ldr	x8, [x0, #56]
0051ce4b8 	cbnz	x8, #8 ; -> 0x51ce4c0 
0051ce4bc 	bl	#-12604728 ; -> 0x45c8f84 
0051ce4c0 	add	x0, sp, #32
0051ce4c4 	bl	#56 ; -> 0x51ce4fc APIManager+<>c__DisplayClass162_0+<<SetClientData>b__0>d::MoveNext
0051ce4c8 	ldr	x1, [x23]
0051ce4cc 	add	x8, sp, #8
0051ce4d0 	orr	x0, x22, #0x8
0051ce4d4 	bl	#-11277068 ; -> 0x470d1c8 
0051ce4d8 	ldur	q0, [sp, #8]
0051ce4dc 	ldr	x8, [sp, #24]
0051ce4e0 	ldp	x22, x21, [sp, #96]
0051ce4e4 	str	q0, [x19]
0051ce4e8 	ldp	x30, x23, [sp, #80]
0051ce4ec 	str	x8, [x19, #16]
0051ce4f0 	ldp	x20, x19, [sp, #112]
0051ce4f4 	add	sp, sp, #128
0051ce4f8 	ret
