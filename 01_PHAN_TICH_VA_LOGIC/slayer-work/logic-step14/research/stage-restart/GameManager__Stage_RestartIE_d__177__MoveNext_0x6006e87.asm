004e86f14 	str	x30, [sp, #-32]!
004e86f18 	stp	x20, x19, [sp, #16]
004e86f1c 	mov	x19, x0
004e86f20 	ldr	w20, [x0, #16]
004e86f24 	ldr	x0, [x0, #32]
004e86f28 	cbz	w20, #36 ; -> 0x4e86f4c 
004e86f2c 	cmp	w20, #1
004e86f30 	b.ne	#64 ; -> 0x4e86f70 
004e86f34 	mov	w8, #-1
004e86f38 	str	w8, [x19, #16]
004e86f3c 	cbz	x0, #72 ; -> 0x4e86f84 
004e86f40 	mov	x1, xzr
004e86f44 	bl	#-227700 ; -> 0x4e4f5d0 GameManager::Stage_Reset
004e86f48 	b	#40 ; -> 0x4e86f70 
004e86f4c 	mov	w8, #-1
004e86f50 	str	w8, [x19, #16]
004e86f54 	cbz	x0, #48 ; -> 0x4e86f84 
004e86f58 	ldr	x1, [x0, #512]
004e86f5c 	str	x1, [x19, #24]!
004e86f60 	mov	x0, x19
004e86f64 	bl	#-9397600 ; -> 0x4590a04 
004e86f68 	mov	w8, #1
004e86f6c 	stur	w8, [x19, #-8]
004e86f70 	cmp	w20, #0
004e86f74 	ldp	x20, x19, [sp, #16]
004e86f78 	cset	w0, eq
004e86f7c 	ldr	x30, [sp], #32
004e86f80 	ret
004e86f84 	bl	#-9396856 ; -> 0x4590d0c 
