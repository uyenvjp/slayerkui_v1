004e9b0a8 	str	x30, [sp, #-48]!
004e9b0ac 	stp	x22, x21, [sp, #16]
004e9b0b0 	stp	x20, x19, [sp, #32]
004e9b0b4 	adrp	x22, #97755136 ; -> 0xabd5000 
004e9b0b8 	mov	w20, w2
004e9b0bc 	mov	w19, w1
004e9b0c0 	ldrb	w8, [x22, #850]
004e9b0c4 	mov	x21, x0
004e9b0c8 	tbnz	w8, #0, #36 ; -> 0x4e9b0ec 
004e9b0cc 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b0d0 	ldr	x0, [x0, #2104]
004e9b0d4 	bl	#-9479796 ; -> 0x4590a60 
004e9b0d8 	adrp	x0, #89681920 ; -> 0xa422000 
004e9b0dc 	ldr	x0, [x0, #3608]
004e9b0e0 	bl	#-9479808 ; -> 0x4590a60 
004e9b0e4 	mov	w8, #1
004e9b0e8 	strb	w8, [x22, #850]
004e9b0ec 	mov	w0, #32249
004e9b0f0 	mov	x1, xzr
004e9b0f4 	bl	#-2440016 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9b0f8 	tbz	w0, #0, #52 ; -> 0x4e9b12c 
004e9b0fc 	mov	w0, #32249
004e9b100 	mov	x1, xzr
004e9b104 	bl	#-2439852 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9b108 	cbz	x0, #212 ; -> 0x4e9b1dc 
004e9b10c 	mov	x1, x21
004e9b110 	mov	w2, w19
004e9b114 	mov	w3, w20
004e9b118 	ldp	x20, x19, [sp, #32]
004e9b11c 	mov	x4, xzr
004e9b120 	ldp	x22, x21, [sp, #16]
004e9b124 	ldr	x30, [sp], #48
004e9b128 	b	#-3127692 ; -> 0x4b9f79c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_632
004e9b12c 	adrp	x21, #89468928 ; -> 0xa3ee000 
004e9b130 	ldr	x21, [x21, #2104]
004e9b134 	ldr	x0, [x21]
004e9b138 	ldr	w8, [x0, #228]
004e9b13c 	cbnz	w8, #8 ; -> 0x4e9b144 
004e9b140 	bl	#-9479520 ; -> 0x4590be0 
004e9b144 	adrp	x22, #97730560 ; -> 0xabcf000 
004e9b148 	ldrb	w8, [x22, #360]
004e9b14c 	cbnz	w8, #24 ; -> 0x4e9b164 
004e9b150 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b154 	ldr	x0, [x0, #2104]
004e9b158 	bl	#-9479928 ; -> 0x4590a60 
004e9b15c 	mov	w8, #1
004e9b160 	strb	w8, [x22, #360]
004e9b164 	ldr	x0, [x21]
004e9b168 	ldr	w8, [x0, #228]
004e9b16c 	cbnz	w8, #12 ; -> 0x4e9b178 
004e9b170 	bl	#-9479568 ; -> 0x4590be0 
004e9b174 	ldr	x0, [x21]
004e9b178 	ldr	x8, [x0, #184]
004e9b17c 	ldr	x8, [x8]
004e9b180 	cbz	x8, #92 ; -> 0x4e9b1dc 
004e9b184 	ldr	x0, [x8, #96]
004e9b188 	cbz	x0, #84 ; -> 0x4e9b1dc 
004e9b18c 	adrp	x8, #89681920 ; -> 0xa422000 
004e9b190 	mov	w1, w20
004e9b194 	ldr	x8, [x8, #3608]
004e9b198 	ldr	x2, [x8]
004e9b19c 	bl	#30857252 ; -> 0x6c089c0 
004e9b1a0 	cbz	x0, #60 ; -> 0x4e9b1dc 
004e9b1a4 	ldr	x8, [x0, #32]
004e9b1a8 	sxtw	x9, w19
004e9b1ac 	ldp	x20, x19, [sp, #32]
004e9b1b0 	mul	x8, x8, x9
004e9b1b4 	mov	x9, #31749
004e9b1b8 	movk	x9, #27379, lsl #16
004e9b1bc 	ldp	x22, x21, [sp, #16]
004e9b1c0 	movk	x9, #23010, lsl #32
004e9b1c4 	movk	x9, #18641, lsl #48
004e9b1c8 	smulh	x8, x8, x9
004e9b1cc 	asr	x9, x8, #9
004e9b1d0 	add	x0, x9, x8, lsr #63
004e9b1d4 	ldr	x30, [sp], #48
004e9b1d8 	ret
004e9b1dc 	bl	#-9479376 ; -> 0x4590d0c 
