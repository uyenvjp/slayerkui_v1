004e9bea8 	sub	sp, sp, #144
004e9beac 	stp	x30, x23, [sp, #96]
004e9beb0 	stp	x22, x21, [sp, #112]
004e9beb4 	stp	x20, x19, [sp, #128]
004e9beb8 	adrp	x22, #97755136 ; -> 0xabd5000 
004e9bebc 	mov	w19, w2
004e9bec0 	mov	w21, w1
004e9bec4 	ldrb	w8, [x22, #858]
004e9bec8 	mov	x20, x0
004e9becc 	tbnz	w8, #0, #48 ; -> 0x4e9befc 
004e9bed0 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9bed4 	ldr	x0, [x0, #2104]
004e9bed8 	bl	#-9483384 ; -> 0x4590a60 
004e9bedc 	adrp	x0, #89710592 ; -> 0xa429000 
004e9bee0 	ldr	x0, [x0, #3064]
004e9bee4 	bl	#-9483396 ; -> 0x4590a60 
004e9bee8 	adrp	x0, #89477120 ; -> 0xa3f0000 
004e9beec 	ldr	x0, [x0, #48]
004e9bef0 	bl	#-9483408 ; -> 0x4590a60 
004e9bef4 	mov	w8, #1
004e9bef8 	strb	w8, [x22, #858]
004e9befc 	mov	w0, #4411
004e9bf00 	mov	x1, xzr
004e9bf04 	bl	#-2443616 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9bf08 	tbz	w0, #0, #56 ; -> 0x4e9bf40 
004e9bf0c 	mov	w0, #4411
004e9bf10 	mov	x1, xzr
004e9bf14 	bl	#-2443452 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9bf18 	cbz	x0, #424 ; -> 0x4e9c0c0 
004e9bf1c 	mov	x1, x20
004e9bf20 	mov	w2, w21
004e9bf24 	mov	w3, w19
004e9bf28 	ldp	x20, x19, [sp, #128]
004e9bf2c 	mov	x4, xzr
004e9bf30 	ldp	x22, x21, [sp, #112]
004e9bf34 	ldp	x30, x23, [sp, #96]
004e9bf38 	add	sp, sp, #144
004e9bf3c 	b	#-3131296 ; -> 0x4b9f79c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_632
004e9bf40 	cmp	w21, #24
004e9bf44 	b.lt	#224 ; -> 0x4e9c024 
004e9bf48 	ldr	x8, [x20, #32]
004e9bf4c 	cbz	x8, #372 ; -> 0x4e9c0c0 
004e9bf50 	ldr	q0, [x8, #2176]
004e9bf54 	ldr	q1, [x8, #2192]
004e9bf58 	add	x0, sp, #48
004e9bf5c 	ldr	q2, [x8, #2208]
004e9bf60 	mov	x1, xzr
004e9bf64 	stp	q0, q1, [sp, #48]
004e9bf68 	str	q2, [sp, #80]
004e9bf6c 	bl	#-8098208 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bf70 	cmp	w0, #1
004e9bf74 	b.lt	#176 ; -> 0x4e9c024 
004e9bf78 	adrp	x21, #89468928 ; -> 0xa3ee000 
004e9bf7c 	ldr	x21, [x21, #2104]
004e9bf80 	ldr	x0, [x21]
004e9bf84 	ldr	w8, [x0, #228]
004e9bf88 	cbnz	w8, #8 ; -> 0x4e9bf90 
004e9bf8c 	bl	#-9483180 ; -> 0x4590be0 
004e9bf90 	adrp	x22, #97730560 ; -> 0xabcf000 
004e9bf94 	ldrb	w8, [x22, #360]
004e9bf98 	cbnz	w8, #24 ; -> 0x4e9bfb0 
004e9bf9c 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9bfa0 	ldr	x0, [x0, #2104]
004e9bfa4 	bl	#-9483588 ; -> 0x4590a60 
004e9bfa8 	mov	w8, #1
004e9bfac 	strb	w8, [x22, #360]
004e9bfb0 	ldr	x0, [x21]
004e9bfb4 	ldr	w8, [x0, #228]
004e9bfb8 	cbnz	w8, #12 ; -> 0x4e9bfc4 
004e9bfbc 	bl	#-9483228 ; -> 0x4590be0 
004e9bfc0 	ldr	x0, [x21]
004e9bfc4 	ldr	x8, [x0, #184]
004e9bfc8 	ldr	x8, [x8]
004e9bfcc 	cbz	x8, #244 ; -> 0x4e9c0c0 
004e9bfd0 	ldr	x9, [x20, #32]
004e9bfd4 	cbz	x9, #236 ; -> 0x4e9c0c0 
004e9bfd8 	ldr	q0, [x9, #2176]
004e9bfdc 	ldr	q1, [x9, #2192]
004e9bfe0 	mov	x0, sp
004e9bfe4 	ldr	q2, [x9, #2208]
004e9bfe8 	ldr	x21, [x8, #136]
004e9bfec 	mov	x1, xzr
004e9bff0 	stp	q0, q1, [sp]
004e9bff4 	str	q2, [sp, #32]
004e9bff8 	bl	#-8098348 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bffc 	cbz	x21, #196 ; -> 0x4e9c0c0 
004e9c000 	adrp	x8, #89706496 ; -> 0xa429000 
004e9c004 	mov	w1, w0
004e9c008 	mov	x0, x21
004e9c00c 	ldr	x8, [x8, #3064]
004e9c010 	ldr	x2, [x8]
004e9c014 	bl	#52152192 ; -> 0x8058794 
004e9c018 	cbz	x0, #168 ; -> 0x4e9c0c0 
004e9c01c 	ldr	x1, [x0, #24]
004e9c020 	b	#128 ; -> 0x4e9c0a0 
004e9c024 	adrp	x22, #89464832 ; -> 0xa3ee000 
004e9c028 	ldr	x22, [x22, #2104]
004e9c02c 	ldr	x0, [x22]
004e9c030 	ldr	w8, [x0, #228]
004e9c034 	cbnz	w8, #8 ; -> 0x4e9c03c 
004e9c038 	bl	#-9483352 ; -> 0x4590be0 
004e9c03c 	adrp	x23, #97726464 ; -> 0xabcf000 
004e9c040 	ldrb	w8, [x23, #360]
004e9c044 	cbnz	w8, #24 ; -> 0x4e9c05c 
004e9c048 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9c04c 	ldr	x0, [x0, #2104]
004e9c050 	bl	#-9483760 ; -> 0x4590a60 
004e9c054 	mov	w8, #1
004e9c058 	strb	w8, [x23, #360]
004e9c05c 	ldr	x0, [x22]
004e9c060 	ldr	w8, [x0, #228]
004e9c064 	cbnz	w8, #12 ; -> 0x4e9c070 
004e9c068 	bl	#-9483400 ; -> 0x4590be0 
004e9c06c 	ldr	x0, [x22]
004e9c070 	ldr	x8, [x0, #184]
004e9c074 	ldr	x8, [x8]
004e9c078 	cbz	x8, #72 ; -> 0x4e9c0c0 
004e9c07c 	ldr	x0, [x8, #48]
004e9c080 	cbz	x0, #64 ; -> 0x4e9c0c0 
004e9c084 	adrp	x8, #89473024 ; -> 0xa3f0000 
004e9c088 	mov	w1, w21
004e9c08c 	ldr	x8, [x8, #48]
004e9c090 	ldr	x2, [x8]
004e9c094 	bl	#52152064 ; -> 0x8058794 
004e9c098 	cbz	x0, #40 ; -> 0x4e9c0c0 
004e9c09c 	ldr	x1, [x0, #160]
004e9c0a0 	mov	x0, x20
004e9c0a4 	mov	w2, w19
004e9c0a8 	bl	#-4404 ; -> 0x4e9af74 EquipmentSlotManager::EquipmentValue
004e9c0ac 	ldp	x20, x19, [sp, #128]
004e9c0b0 	ldp	x22, x21, [sp, #112]
004e9c0b4 	ldp	x30, x23, [sp, #96]
004e9c0b8 	add	sp, sp, #144
004e9c0bc 	ret
004e9c0c0 	bl	#-9483188 ; -> 0x4590d0c 
