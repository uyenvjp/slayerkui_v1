0089a2ae8 	stp	x30, x23, [sp, #-48]!
0089a2aec 	stp	x22, x21, [sp, #16]
0089a2af0 	stp	x20, x19, [sp, #32]
0089a2af4 	adrp	x21, #35930112 ; -> 0xabe6000 
0089a2af8 	adrp	x22, #27561984 ; -> 0xa3eb000 
0089a2afc 	adrp	x23, #27566080 ; -> 0xa3ec000 
0089a2b00 	ldrb	w8, [x21, #759]
0089a2b04 	ldr	x22, [x22, #3872]
0089a2b08 	ldr	x23, [x23, #1576]
0089a2b0c 	mov	x20, x1
0089a2b10 	mov	x19, x0
0089a2b14 	tbnz	w8, #0, #36 ; -> 0x89a2b38 
0089a2b18 	adrp	x0, #27566080 ; -> 0xa3ec000 
0089a2b1c 	ldr	x0, [x0, #1576]
0089a2b20 	bl	#-71377088 ; -> 0x4590a60 
0089a2b24 	adrp	x0, #27561984 ; -> 0xa3eb000 
0089a2b28 	ldr	x0, [x0, #3872]
0089a2b2c 	bl	#-71377100 ; -> 0x4590a60 
0089a2b30 	mov	w8, #1
0089a2b34 	strb	w8, [x21, #759]
0089a2b38 	ldr	x1, [x22]
0089a2b3c 	ldr	x2, [x23]
0089a2b40 	mov	x0, x20
0089a2b44 	bl	#-42858220 ; -> 0x60c3458 
0089a2b48 	str	x0, [x19, #32]!
0089a2b4c 	mov	x1, x0
0089a2b50 	mov	x0, x19
0089a2b54 	ldp	x20, x19, [sp, #32]
0089a2b58 	ldp	x22, x21, [sp, #16]
0089a2b5c 	ldp	x30, x23, [sp], #48
0089a2b60 	b	#-71377244 ; -> 0x4590a04 
