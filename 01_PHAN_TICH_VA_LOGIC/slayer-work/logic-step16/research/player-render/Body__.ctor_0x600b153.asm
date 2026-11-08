005347b18 	stp	x30, x21, [sp, #-32]!
005347b1c 	stp	x20, x19, [sp, #16]
005347b20 	adrp	x21, #92864512 ; -> 0xabd7000 
005347b24 	mov	x20, x1
005347b28 	mov	x19, x0
005347b2c 	ldrb	w8, [x21, #1467]
005347b30 	tbnz	w8, #0, #48 ; -> 0x5347b60 
005347b34 	adrp	x0, #84570112 ; -> 0xa3ee000 
005347b38 	ldr	x0, [x0, #4008]
005347b3c 	bl	#-14381276 ; -> 0x4590a60 
005347b40 	adrp	x0, #84901888 ; -> 0xa43f000 
005347b44 	ldr	x0, [x0, #3920]
005347b48 	bl	#-14381288 ; -> 0x4590a60 
005347b4c 	adrp	x0, #84770816 ; -> 0xa41f000 
005347b50 	ldr	x0, [x0, #224]
005347b54 	bl	#-14381300 ; -> 0x4590a60 
005347b58 	mov	w8, #1
005347b5c 	strb	w8, [x21, #1467]
005347b60 	mov	x0, x19
005347b64 	mov	x1, xzr
005347b68 	bl	#89464 ; -> 0x535d8e0 SkinBase::.ctor
005347b6c 	cbz	x20, #204 ; -> 0x5347c38 
005347b70 	ldr	w8, [x20, #16]
005347b74 	mov	x21, x19
005347b78 	ldr	x1, [x20, #24]
005347b7c 	stp	w8, wzr, [x21, #24]!
005347b80 	mov	x0, x21
005347b84 	ldr	d0, [x20, #32]
005347b88 	str	x1, [x0, #-8]!
005347b8c 	str	d0, [x21, #8]
005347b90 	ldr	w8, [x20, #40]
005347b94 	str	w8, [x21, #16]
005347b98 	bl	#-14381460 ; -> 0x4590a04 
005347b9c 	ldr	w8, [x20, #44]
005347ba0 	ldrb	w9, [x20, #64]
005347ba4 	ldr	w10, [x21]
005347ba8 	strb	wzr, [x21, #25]
005347bac 	str	w8, [x21, #20]
005347bb0 	ldrb	w8, [x20, #48]
005347bb4 	cmp	w10, #999
005347bb8 	ldur	d0, [x20, #52]
005347bbc 	strb	w9, [x21, #80]
005347bc0 	strb	w8, [x21, #24]
005347bc4 	stur	d0, [x21, #28]
005347bc8 	ldr	w8, [x20, #60]
005347bcc 	ldr	w9, [x20, #68]
005347bd0 	str	w8, [x21, #36]
005347bd4 	str	w9, [x21, #56]
005347bd8 	b.le	#20 ; -> 0x5347bec 
005347bdc 	mov	x0, x21
005347be0 	mov	x1, xzr
005347be4 	bl	#62049024 ; -> 0x8e746e4 System.Int32::ToString
005347be8 	b	#28 ; -> 0x5347c04 
005347bec 	adrp	x8, #84770816 ; -> 0xa41f000 
005347bf0 	mov	x0, x21
005347bf4 	mov	x2, xzr
005347bf8 	ldr	x8, [x8, #224]
005347bfc 	ldr	x1, [x8]
005347c00 	bl	#62049144 ; -> 0x8e74778 System.Int32::ToString
005347c04 	adrp	x8, #84901888 ; -> 0xa43f000 
005347c08 	mov	x1, x0
005347c0c 	mov	x2, xzr
005347c10 	ldr	x8, [x8, #3920]
005347c14 	ldr	x8, [x8]
005347c18 	mov	x0, x8
005347c1c 	bl	#60310060 ; -> 0x8ccbe48 System.String::Concat
005347c20 	str	x0, [x19, #88]!
005347c24 	mov	x1, x0
005347c28 	mov	x0, x19
005347c2c 	ldp	x20, x19, [sp, #16]
005347c30 	ldp	x30, x21, [sp], #32
005347c34 	b	#-14381616 ; -> 0x4590a04 
005347c38 	bl	#-14380844 ; -> 0x4590d0c 
