0052a597c 	stp	x30, x21, [sp, #-32]!
0052a5980 	stp	x20, x19, [sp, #16]
0052a5984 	adrp	x19, #93528064 ; -> 0xabd7000 
0052a5988 	adrp	x21, #85237760 ; -> 0xa3ef000 
0052a598c 	adrp	x20, #85213184 ; -> 0xa3e9000 
0052a5990 	ldrb	w8, [x19, #453]
0052a5994 	ldr	x21, [x21, #3688]
0052a5998 	ldr	x20, [x20, #736]
0052a599c 	tbnz	w8, #0, #36 ; -> 0x52a59c0 
0052a59a0 	adrp	x0, #85237760 ; -> 0xa3ef000 
0052a59a4 	ldr	x0, [x0, #3688]
0052a59a8 	bl	#-13717320 ; -> 0x4590a60 
0052a59ac 	adrp	x0, #85213184 ; -> 0xa3e9000 
0052a59b0 	ldr	x0, [x0, #736]
0052a59b4 	bl	#-13717332 ; -> 0x4590a60 
0052a59b8 	mov	w8, #1
0052a59bc 	strb	w8, [x19, #453]
0052a59c0 	ldr	x8, [x21]
0052a59c4 	ldr	x0, [x20]
0052a59c8 	ldr	x8, [x8, #184]
0052a59cc 	ldr	w9, [x0, #228]
0052a59d0 	ldr	x19, [x8]
0052a59d4 	cbnz	w9, #8 ; -> 0x52a59dc 
0052a59d8 	bl	#-13716984 ; -> 0x4590be0 
0052a59dc 	cbz	x19, #40 ; -> 0x52a5a04 
0052a59e0 	ldr	x8, [x20]
0052a59e4 	mov	x0, x19
0052a59e8 	mov	w2, wzr
0052a59ec 	ldp	x20, x19, [sp, #16]
0052a59f0 	mov	x3, xzr
0052a59f4 	ldr	x8, [x8, #184]
0052a59f8 	ldr	x1, [x8, #128]
0052a59fc 	ldp	x30, x21, [sp], #32
0052a5a00 	b	#-5882340 ; -> 0x4d0981c EffectManager::SceneChange_Start
0052a5a04 	bl	#-13716728 ; -> 0x4590d0c 
