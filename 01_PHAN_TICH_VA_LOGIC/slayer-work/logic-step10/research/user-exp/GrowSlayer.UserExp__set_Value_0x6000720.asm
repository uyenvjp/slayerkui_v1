0089a2a64 	stp	x30, x23, [sp, #-48]!
0089a2a68 	stp	x22, x21, [sp, #16]
0089a2a6c 	stp	x20, x19, [sp, #32]
0089a2a70 	adrp	x21, #35930112 ; -> 0xabe6000 
0089a2a74 	adrp	x22, #27561984 ; -> 0xa3eb000 
0089a2a78 	adrp	x23, #27566080 ; -> 0xa3ec000 
0089a2a7c 	ldrb	w8, [x21, #758]
0089a2a80 	ldr	x22, [x22, #3872]
0089a2a84 	ldr	x23, [x23, #1576]
0089a2a88 	mov	x20, x1
0089a2a8c 	mov	x19, x0
0089a2a90 	tbnz	w8, #0, #36 ; -> 0x89a2ab4 
0089a2a94 	adrp	x0, #27566080 ; -> 0xa3ec000 
0089a2a98 	ldr	x0, [x0, #1576]
0089a2a9c 	bl	#-71376956 ; -> 0x4590a60 
0089a2aa0 	adrp	x0, #27561984 ; -> 0xa3eb000 
0089a2aa4 	ldr	x0, [x0, #3872]
0089a2aa8 	bl	#-71376968 ; -> 0x4590a60 
0089a2aac 	mov	w8, #1
0089a2ab0 	strb	w8, [x21, #758]
0089a2ab4 	ldr	x1, [x22]
0089a2ab8 	ldr	x2, [x23]
0089a2abc 	mov	x0, x20
0089a2ac0 	bl	#-42858088 ; -> 0x60c3458 
0089a2ac4 	str	x0, [x19, #24]!
0089a2ac8 	mov	x1, x0
0089a2acc 	mov	x0, x19
0089a2ad0 	ldp	x20, x19, [sp, #32]
0089a2ad4 	ldp	x22, x21, [sp, #16]
0089a2ad8 	ldp	x30, x23, [sp], #48
0089a2adc 	b	#-71377112 ; -> 0x4590a04 
