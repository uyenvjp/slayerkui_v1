004e9af74 	str	x30, [sp, #-48]!
004e9af78 	stp	x22, x21, [sp, #16]
004e9af7c 	stp	x20, x19, [sp, #32]
004e9af80 	adrp	x22, #97759232 ; -> 0xabd5000
004e9af84 	mov	w20, w2
004e9af88 	mov	x19, x1
004e9af8c 	ldrb	w8, [x22, #849]
004e9af90 	mov	x21, x0
004e9af94 	tbnz	w8, #0, #36 ; -> 0x4e9afb8
004e9af98 	adrp	x0, #89473024 ; -> 0xa3ee000
004e9af9c 	ldr	x0, [x0, #2104]
004e9afa0 	bl	#-9479488 ; -> 0x4590a60
004e9afa4 	adrp	x0, #89686016 ; -> 0xa422000
004e9afa8 	ldr	x0, [x0, #3608]
004e9afac 	bl	#-9479500 ; -> 0x4590a60
004e9afb0 	mov	w8, #1
004e9afb4 	strb	w8, [x22, #849]
004e9afb8 	mov	w0, #4412
004e9afbc 	mov	x1, xzr
004e9afc0 	bl	#-2439708 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004e9afc4 	tbz	w0, #0, #52 ; -> 0x4e9aff8
004e9afc8 	mov	w0, #4412
004e9afcc 	mov	x1, xzr
004e9afd0 	bl	#-2439544 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004e9afd4 	cbz	x0, #208 ; -> 0x4e9b0a4
004e9afd8 	mov	x1, x21
004e9afdc 	mov	x2, x19
004e9afe0 	mov	w3, w20
004e9afe4 	ldp	x20, x19, [sp, #32]
004e9afe8 	mov	x4, xzr
004e9afec 	ldp	x22, x21, [sp, #16]
004e9aff0 	ldr	x30, [sp], #48
004e9aff4 	b	#-3127592 ; -> 0x4b9f6cc [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_631]
004e9aff8 	adrp	x21, #89473024 ; -> 0xa3ee000
004e9affc 	ldr	x21, [x21, #2104]
004e9b000 	ldr	x0, [x21]
004e9b004 	ldr	w8, [x0, #228]
004e9b008 	cbnz	w8, #8 ; -> 0x4e9b010
004e9b00c 	bl	#-9479212 ; -> 0x4590be0
004e9b010 	adrp	x22, #97730560 ; -> 0xabcf000
004e9b014 	ldrb	w8, [x22, #360]
004e9b018 	cbnz	w8, #24 ; -> 0x4e9b030
004e9b01c 	adrp	x0, #89468928 ; -> 0xa3ee000
004e9b020 	ldr	x0, [x0, #2104]
004e9b024 	bl	#-9479620 ; -> 0x4590a60
004e9b028 	mov	w8, #1
004e9b02c 	strb	w8, [x22, #360]
004e9b030 	ldr	x0, [x21]
004e9b034 	ldr	w8, [x0, #228]
004e9b038 	cbnz	w8, #12 ; -> 0x4e9b044
004e9b03c 	bl	#-9479260 ; -> 0x4590be0
004e9b040 	ldr	x0, [x21]
004e9b044 	ldr	x8, [x0, #184]
004e9b048 	ldr	x8, [x8]
004e9b04c 	cbz	x8, #88 ; -> 0x4e9b0a4
004e9b050 	ldr	x0, [x8, #96]
004e9b054 	cbz	x0, #80 ; -> 0x4e9b0a4
004e9b058 	adrp	x8, #89681920 ; -> 0xa422000
004e9b05c 	mov	w1, w20
004e9b060 	ldr	x8, [x8, #3608]
004e9b064 	ldr	x2, [x8]
004e9b068 	bl	#30857560 ; -> 0x6c089c0
004e9b06c 	cbz	x0, #56 ; -> 0x4e9b0a4
004e9b070 	ldr	x8, [x0, #24]
004e9b074 	mov	x9, #57609
004e9b078 	movk	x9, #50897, lsl #16
004e9b07c 	ldp	x22, x21, [sp, #16]
004e9b080 	mul	x8, x8, x19
004e9b084 	movk	x9, #27409, lsl #32
004e9b088 	movk	x9, #10737, lsl #48
004e9b08c 	ldp	x20, x19, [sp, #32]
004e9b090 	smulh	x8, x8, x9
004e9b094 	asr	x9, x8, #14
004e9b098 	add	x0, x9, x8, lsr #63
004e9b09c 	ldr	x30, [sp], #48
004e9b0a0 	ret
004e9b0a4 	bl	#-9479064 ; -> 0x4590d0c