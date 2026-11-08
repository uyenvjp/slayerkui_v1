0052a5a08 	stp	x30, x21, [sp, #-32]!
0052a5a0c 	stp	x20, x19, [sp, #16]
0052a5a10 	adrp	x19, #93528064 ; -> 0xabd7000 
0052a5a14 	adrp	x21, #85237760 ; -> 0xa3ef000 
0052a5a18 	adrp	x20, #85213184 ; -> 0xa3e9000 
0052a5a1c 	ldrb	w8, [x19, #454]
0052a5a20 	ldr	x21, [x21, #3688]
0052a5a24 	ldr	x20, [x20, #736]
0052a5a28 	tbnz	w8, #0, #36 ; -> 0x52a5a4c 
0052a5a2c 	adrp	x0, #85237760 ; -> 0xa3ef000 
0052a5a30 	ldr	x0, [x0, #3688]
0052a5a34 	bl	#-13717460 ; -> 0x4590a60 
0052a5a38 	adrp	x0, #85213184 ; -> 0xa3e9000 
0052a5a3c 	ldr	x0, [x0, #736]
0052a5a40 	bl	#-13717472 ; -> 0x4590a60 
0052a5a44 	mov	w8, #1
0052a5a48 	strb	w8, [x19, #454]
0052a5a4c 	ldr	x8, [x21]
0052a5a50 	ldr	x0, [x20]
0052a5a54 	ldr	x8, [x8, #184]
0052a5a58 	ldr	w9, [x0, #228]
0052a5a5c 	ldr	x19, [x8]
0052a5a60 	cbnz	w9, #8 ; -> 0x52a5a68 
0052a5a64 	bl	#-13717124 ; -> 0x4590be0 
0052a5a68 	cbz	x19, #40 ; -> 0x52a5a90 
0052a5a6c 	ldr	x8, [x20]
0052a5a70 	mov	x0, x19
0052a5a74 	mov	w2, wzr
0052a5a78 	ldp	x20, x19, [sp, #16]
0052a5a7c 	mov	x3, xzr
0052a5a80 	ldr	x8, [x8, #184]
0052a5a84 	ldr	x1, [x8, #104]
0052a5a88 	ldp	x30, x21, [sp], #32
0052a5a8c 	b	#-5882480 ; -> 0x4d0981c EffectManager::SceneChange_Start
0052a5a90 	bl	#-13716868 ; -> 0x4590d0c 
