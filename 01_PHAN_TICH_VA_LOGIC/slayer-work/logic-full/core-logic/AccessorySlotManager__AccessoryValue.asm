004f6bb48 	str	x30, [sp, #-48]!
004f6bb4c 	stp	x22, x21, [sp, #16]
004f6bb50 	stp	x20, x19, [sp, #32]
004f6bb54 	adrp	x22, #96903168 ; -> 0xabd5000
004f6bb58 	mov	w20, w2
004f6bb5c 	mov	x19, x1
004f6bb60 	ldrb	w8, [x22, #2336]
004f6bb64 	mov	x21, x0
004f6bb68 	tbnz	w8, #0, #36 ; -> 0x4f6bb8c
004f6bb6c 	adrp	x0, #88616960 ; -> 0xa3ee000
004f6bb70 	ldr	x0, [x0, #2104]
004f6bb74 	bl	#-10334484 ; -> 0x4590a60
004f6bb78 	adrp	x0, #88829952 ; -> 0xa422000
004f6bb7c 	ldr	x0, [x0, #3608]
004f6bb80 	bl	#-10334496 ; -> 0x4590a60
004f6bb84 	mov	w8, #1
004f6bb88 	strb	w8, [x22, #2336]
004f6bb8c 	mov	w0, #4440
004f6bb90 	mov	x1, xzr
004f6bb94 	bl	#-3294704 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004f6bb98 	tbz	w0, #0, #52 ; -> 0x4f6bbcc
004f6bb9c 	mov	w0, #4440
004f6bba0 	mov	x1, xzr
004f6bba4 	bl	#-3294540 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004f6bba8 	cbz	x0, #208 ; -> 0x4f6bc78
004f6bbac 	mov	x1, x21
004f6bbb0 	mov	x2, x19
004f6bbb4 	mov	w3, w20
004f6bbb8 	ldp	x20, x19, [sp, #32]
004f6bbbc 	mov	x4, xzr
004f6bbc0 	ldp	x22, x21, [sp, #16]
004f6bbc4 	ldr	x30, [sp], #48
004f6bbc8 	b	#-3982588 ; -> 0x4b9f6cc [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_631]
004f6bbcc 	adrp	x21, #88616960 ; -> 0xa3ee000
004f6bbd0 	ldr	x21, [x21, #2104]
004f6bbd4 	ldr	x0, [x21]
004f6bbd8 	ldr	w8, [x0, #228]
004f6bbdc 	cbnz	w8, #8 ; -> 0x4f6bbe4
004f6bbe0 	bl	#-10334208 ; -> 0x4590be0
004f6bbe4 	adrp	x22, #96878592 ; -> 0xabcf000
004f6bbe8 	ldrb	w8, [x22, #360]
004f6bbec 	cbnz	w8, #24 ; -> 0x4f6bc04
004f6bbf0 	adrp	x0, #88616960 ; -> 0xa3ee000
004f6bbf4 	ldr	x0, [x0, #2104]
004f6bbf8 	bl	#-10334616 ; -> 0x4590a60
004f6bbfc 	mov	w8, #1
004f6bc00 	strb	w8, [x22, #360]
004f6bc04 	ldr	x0, [x21]
004f6bc08 	ldr	w8, [x0, #228]
004f6bc0c 	cbnz	w8, #12 ; -> 0x4f6bc18
004f6bc10 	bl	#-10334256 ; -> 0x4590be0
004f6bc14 	ldr	x0, [x21]
004f6bc18 	ldr	x8, [x0, #184]
004f6bc1c 	ldr	x8, [x8]
004f6bc20 	cbz	x8, #88 ; -> 0x4f6bc78
004f6bc24 	ldr	x0, [x8, #96]
004f6bc28 	cbz	x0, #80 ; -> 0x4f6bc78
004f6bc2c 	adrp	x8, #88829952 ; -> 0xa422000
004f6bc30 	mov	w1, w20
004f6bc34 	ldr	x8, [x8, #3608]
004f6bc38 	ldr	x2, [x8]
004f6bc3c 	bl	#30002564 ; -> 0x6c089c0
004f6bc40 	cbz	x0, #56 ; -> 0x4f6bc78
004f6bc44 	ldr	x8, [x0, #24]
004f6bc48 	mov	x9, #57609
004f6bc4c 	movk	x9, #50897, lsl #16
004f6bc50 	ldp	x22, x21, [sp, #16]
004f6bc54 	mul	x8, x8, x19
004f6bc58 	movk	x9, #27409, lsl #32
004f6bc5c 	movk	x9, #10737, lsl #48
004f6bc60 	ldp	x20, x19, [sp, #32]
004f6bc64 	smulh	x8, x8, x9
004f6bc68 	asr	x9, x8, #14
004f6bc6c 	add	x0, x9, x8, lsr #63
004f6bc70 	ldr	x30, [sp], #48
004f6bc74 	ret
004f6bc78 	bl	#-10334060 ; -> 0x4590d0c