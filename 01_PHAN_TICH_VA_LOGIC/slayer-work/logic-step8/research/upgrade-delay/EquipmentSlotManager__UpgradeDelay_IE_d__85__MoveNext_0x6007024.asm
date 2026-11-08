004ea3ebc 	stp	x30, x21, [sp, #-32]!
004ea3ec0 	stp	x20, x19, [sp, #16]
004ea3ec4 	adrp	x20, #97722368 ; -> 0xabd5000 
004ea3ec8 	mov	x19, x0
004ea3ecc 	ldrb	w8, [x20, #912]
004ea3ed0 	tbnz	w8, #0, #24 ; -> 0x4ea3ee8 
004ea3ed4 	adrp	x0, #89415680 ; -> 0xa3e9000 
004ea3ed8 	ldr	x0, [x0, #1264]
004ea3edc 	bl	#-9516156 ; -> 0x4590a60 
004ea3ee0 	mov	w8, #1
004ea3ee4 	strb	w8, [x20, #912]
004ea3ee8 	ldr	w20, [x19, #16]
004ea3eec 	ldr	x8, [x19, #32]
004ea3ef0 	cbz	w20, #32 ; -> 0x4ea3f10 
004ea3ef4 	cmp	w20, #1
004ea3ef8 	b.ne	#104 ; -> 0x4ea3f60 
004ea3efc 	mov	w9, #-1
004ea3f00 	str	w9, [x19, #16]
004ea3f04 	cbz	x8, #112 ; -> 0x4ea3f74 
004ea3f08 	strb	wzr, [x8, #404]
004ea3f0c 	b	#84 ; -> 0x4ea3f60 
004ea3f10 	mov	w9, #-1
004ea3f14 	str	w9, [x19, #16]
004ea3f18 	cbz	x8, #92 ; -> 0x4ea3f74 
004ea3f1c 	adrp	x9, #89415680 ; -> 0xa3e9000 
004ea3f20 	mov	w21, #1
004ea3f24 	ldr	x9, [x9, #1264]
004ea3f28 	strb	w21, [x8, #404]
004ea3f2c 	ldr	x0, [x9]
004ea3f30 	ldr	w9, [x0, #228]
004ea3f34 	cbnz	w9, #8 ; -> 0x4ea3f3c 
004ea3f38 	bl	#-9515864 ; -> 0x4590be0 
004ea3f3c 	adrp	x8, #-49782784 ; -> 0x1f29000 
004ea3f40 	mov	x0, xzr
004ea3f44 	ldr	s0, [x8, #2100]
004ea3f48 	bl	#-3452032 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004ea3f4c 	mov	x1, x0
004ea3f50 	str	x0, [x19, #24]!
004ea3f54 	mov	x0, x19
004ea3f58 	bl	#-9516372 ; -> 0x4590a04 
004ea3f5c 	stur	w21, [x19, #-8]
004ea3f60 	cmp	w20, #0
004ea3f64 	ldp	x20, x19, [sp, #16]
004ea3f68 	cset	w0, eq
004ea3f6c 	ldp	x30, x21, [sp], #32
004ea3f70 	ret
004ea3f74 	bl	#-9515624 ; -> 0x4590d0c 
