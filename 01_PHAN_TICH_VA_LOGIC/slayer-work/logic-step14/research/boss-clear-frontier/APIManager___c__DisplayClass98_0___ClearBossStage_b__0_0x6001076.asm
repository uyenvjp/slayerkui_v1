004816c44 	sub	sp, sp, #128
004816c48 	stp	x30, x23, [sp, #80]
004816c4c 	stp	x22, x21, [sp, #96]
004816c50 	stp	x20, x19, [sp, #112]
004816c54 	adrp	x22, #104566784 ; -> 0xabcf000 
004816c58 	adrp	x21, #96317440 ; -> 0xa3f1000 
004816c5c 	mov	x20, x0
004816c60 	ldrb	w9, [x22, #1082]
004816c64 	ldr	x21, [x21, #2536]
004816c68 	mov	x19, x8
004816c6c 	tbnz	w9, #0, #48 ; -> 0x4816c9c 
004816c70 	adrp	x0, #96284672 ; -> 0xa3e9000 
004816c74 	ldr	x0, [x0, #2728]
004816c78 	bl	#-2646552 ; -> 0x4590a60 
004816c7c 	adrp	x0, #96317440 ; -> 0xa3f1000 
004816c80 	ldr	x0, [x0, #2536]
004816c84 	bl	#-2646564 ; -> 0x4590a60 
004816c88 	adrp	x0, #96284672 ; -> 0xa3e9000 
004816c8c 	ldr	x0, [x0, #2736]
004816c90 	bl	#-2646576 ; -> 0x4590a60 
004816c94 	mov	w8, #1
004816c98 	strb	w8, [x22, #1082]
004816c9c 	movi	v0.2d, #0000000000000000
004816ca0 	adrp	x23, #96284672 ; -> 0xa3e9000 
004816ca4 	add	x22, sp, #32
004816ca8 	orr	x0, x22, #0x8
004816cac 	mov	x1, xzr
004816cb0 	stp	q0, q0, [sp, #32]
004816cb4 	str	q0, [sp, #64]
004816cb8 	str	xzr, [sp, #56]
004816cbc 	ldr	x23, [x23, #2736]
004816cc0 	stp	xzr, xzr, [sp, #40]
004816cc4 	bl	#-2646720 ; -> 0x4590a04 
004816cc8 	add	x0, x22, #32
004816ccc 	mov	x1, x20
004816cd0 	str	x20, [sp, #64]
004816cd4 	bl	#-2646736 ; -> 0x4590a04 
004816cd8 	ldr	x0, [x21]
004816cdc 	mov	w9, #-1
004816ce0 	str	w9, [sp, #32]
004816ce4 	ldr	x8, [x0, #56]
004816ce8 	cbnz	x8, #8 ; -> 0x4816cf0 
004816cec 	bl	#-2415976 ; -> 0x45c8f84 
004816cf0 	add	x0, sp, #32
004816cf4 	bl	#56 ; -> 0x4816d2c APIManager+<>c__DisplayClass98_0+<<ClearBossStage>b__0>d::MoveNext
004816cf8 	ldr	x1, [x23]
004816cfc 	add	x8, sp, #8
004816d00 	orr	x0, x22, #0x8
004816d04 	bl	#-1088316 ; -> 0x470d1c8 
004816d08 	ldur	q0, [sp, #8]
004816d0c 	ldr	x8, [sp, #24]
004816d10 	ldp	x22, x21, [sp, #96]
004816d14 	str	q0, [x19]
004816d18 	ldp	x30, x23, [sp, #80]
004816d1c 	str	x8, [x19, #16]
004816d20 	ldp	x20, x19, [sp, #112]
004816d24 	add	sp, sp, #128
004816d28 	ret
