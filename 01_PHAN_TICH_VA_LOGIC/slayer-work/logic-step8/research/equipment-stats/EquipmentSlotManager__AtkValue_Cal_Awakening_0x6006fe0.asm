004e9c8d4 	sub	sp, sp, #112
004e9c8d8 	str	x30, [sp, #48]
004e9c8dc 	stp	x24, x23, [sp, #64]
004e9c8e0 	stp	x22, x21, [sp, #80]
004e9c8e4 	stp	x20, x19, [sp, #96]
004e9c8e8 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9c8ec 	mov	w20, w1
004e9c8f0 	mov	x19, x0
004e9c8f4 	ldrb	w8, [x21, #861]
004e9c8f8 	tbnz	w8, #0, #48 ; -> 0x4e9c928 
004e9c8fc 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9c900 	ldr	x0, [x0, #2104]
004e9c904 	bl	#-9485988 ; -> 0x4590a60 
004e9c908 	adrp	x0, #89706496 ; -> 0xa429000 
004e9c90c 	ldr	x0, [x0, #3064]
004e9c910 	bl	#-9486000 ; -> 0x4590a60 
004e9c914 	adrp	x0, #89473024 ; -> 0xa3f0000 
004e9c918 	ldr	x0, [x0, #48]
004e9c91c 	bl	#-9486012 ; -> 0x4590a60 
004e9c920 	mov	w8, #1
004e9c924 	strb	w8, [x21, #861]
004e9c928 	mov	w0, #32279
004e9c92c 	mov	x1, xzr
004e9c930 	bl	#-2446220 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9c934 	tbz	w0, #0, #56 ; -> 0x4e9c96c 
004e9c938 	mov	w0, #32279
004e9c93c 	mov	x1, xzr
004e9c940 	bl	#-2446056 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9c944 	cbz	x0, #456 ; -> 0x4e9cb0c 
004e9c948 	mov	x1, x19
004e9c94c 	mov	w2, w20
004e9c950 	ldr	x30, [sp, #48]
004e9c954 	ldp	x20, x19, [sp, #96]
004e9c958 	mov	x3, xzr
004e9c95c 	ldp	x22, x21, [sp, #80]
004e9c960 	ldp	x24, x23, [sp, #64]
004e9c964 	add	sp, sp, #112
004e9c968 	b	#-2840960 ; -> 0x4be6fe8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2048
004e9c96c 	adrp	x22, #89464832 ; -> 0xa3ee000 
004e9c970 	ldr	x22, [x22, #2104]
004e9c974 	ldr	x0, [x22]
004e9c978 	ldr	w8, [x0, #228]
004e9c97c 	cbnz	w8, #8 ; -> 0x4e9c984 
004e9c980 	bl	#-9485728 ; -> 0x4590be0 
004e9c984 	adrp	x23, #97726464 ; -> 0xabcf000 
004e9c988 	ldrb	w8, [x23, #360]
004e9c98c 	cbnz	w8, #24 ; -> 0x4e9c9a4 
004e9c990 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9c994 	ldr	x0, [x0, #2104]
004e9c998 	bl	#-9486136 ; -> 0x4590a60 
004e9c99c 	mov	w8, #1
004e9c9a0 	strb	w8, [x23, #360]
004e9c9a4 	ldr	x0, [x22]
004e9c9a8 	ldr	w8, [x0, #228]
004e9c9ac 	cbnz	w8, #12 ; -> 0x4e9c9b8 
004e9c9b0 	bl	#-9485776 ; -> 0x4590be0 
004e9c9b4 	ldr	x0, [x22]
004e9c9b8 	ldr	x8, [x0, #184]
004e9c9bc 	ldr	x8, [x8]
004e9c9c0 	cbz	x8, #332 ; -> 0x4e9cb0c 
004e9c9c4 	ldr	x0, [x8, #48]
004e9c9c8 	cbz	x0, #324 ; -> 0x4e9cb0c 
004e9c9cc 	adrp	x24, #89473024 ; -> 0xa3f0000 
004e9c9d0 	mov	w1, #24
004e9c9d4 	ldr	x24, [x24, #48]
004e9c9d8 	ldr	x2, [x24]
004e9c9dc 	bl	#52149688 ; -> 0x8058794 
004e9c9e0 	cbz	x0, #300 ; -> 0x4e9cb0c 
004e9c9e4 	ldp	q0, q1, [x0, #32]
004e9c9e8 	mov	x1, xzr
004e9c9ec 	ldr	q2, [x0, #64]
004e9c9f0 	mov	x0, sp
004e9c9f4 	stp	q0, q1, [sp]
004e9c9f8 	str	q2, [sp, #32]
004e9c9fc 	bl	#-8100912 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9ca00 	ldr	x8, [x22]
004e9ca04 	cmp	w20, #1
004e9ca08 	mov	w21, w0
004e9ca0c 	ldr	w9, [x8, #228]
004e9ca10 	b.lt	#116 ; -> 0x4e9ca84 
004e9ca14 	cbnz	w9, #12 ; -> 0x4e9ca20 
004e9ca18 	mov	x0, x8
004e9ca1c 	bl	#-9485884 ; -> 0x4590be0 
004e9ca20 	ldrb	w8, [x23, #360]
004e9ca24 	cbnz	w8, #24 ; -> 0x4e9ca3c 
004e9ca28 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9ca2c 	ldr	x0, [x0, #2104]
004e9ca30 	bl	#-9486288 ; -> 0x4590a60 
004e9ca34 	mov	w8, #1
004e9ca38 	strb	w8, [x23, #360]
004e9ca3c 	ldr	x0, [x22]
004e9ca40 	ldr	w8, [x0, #228]
004e9ca44 	cbnz	w8, #12 ; -> 0x4e9ca50 
004e9ca48 	bl	#-9485928 ; -> 0x4590be0 
004e9ca4c 	ldr	x0, [x22]
004e9ca50 	ldr	x8, [x0, #184]
004e9ca54 	ldr	x8, [x8]
004e9ca58 	cbz	x8, #180 ; -> 0x4e9cb0c 
004e9ca5c 	ldr	x0, [x8, #136]
004e9ca60 	cbz	x0, #172 ; -> 0x4e9cb0c 
004e9ca64 	adrp	x8, #89706496 ; -> 0xa429000 
004e9ca68 	mov	w1, w20
004e9ca6c 	ldr	x8, [x8, #3064]
004e9ca70 	ldr	x2, [x8]
004e9ca74 	bl	#52149536 ; -> 0x8058794 
004e9ca78 	cbz	x0, #148 ; -> 0x4e9cb0c 
004e9ca7c 	ldr	x1, [x0, #24]
004e9ca80 	b	#104 ; -> 0x4e9cae8 
004e9ca84 	cbnz	w9, #12 ; -> 0x4e9ca90 
004e9ca88 	mov	x0, x8
004e9ca8c 	bl	#-9485996 ; -> 0x4590be0 
004e9ca90 	ldrb	w8, [x23, #360]
004e9ca94 	cbnz	w8, #24 ; -> 0x4e9caac 
004e9ca98 	adrp	x0, #89464832 ; -> 0xa3ee000 
004e9ca9c 	ldr	x0, [x0, #2104]
004e9caa0 	bl	#-9486400 ; -> 0x4590a60 
004e9caa4 	mov	w8, #1
004e9caa8 	strb	w8, [x23, #360]
004e9caac 	ldr	x0, [x22]
004e9cab0 	ldr	w8, [x0, #228]
004e9cab4 	cbnz	w8, #12 ; -> 0x4e9cac0 
004e9cab8 	bl	#-9486040 ; -> 0x4590be0 
004e9cabc 	ldr	x0, [x22]
004e9cac0 	ldr	x8, [x0, #184]
004e9cac4 	ldr	x8, [x8]
004e9cac8 	cbz	x8, #68 ; -> 0x4e9cb0c 
004e9cacc 	ldr	x0, [x8, #48]
004e9cad0 	cbz	x0, #60 ; -> 0x4e9cb0c 
004e9cad4 	ldr	x2, [x24]
004e9cad8 	mov	w1, #24
004e9cadc 	bl	#52149432 ; -> 0x8058794 
004e9cae0 	cbz	x0, #44 ; -> 0x4e9cb0c 
004e9cae4 	ldr	x1, [x0, #160]
004e9cae8 	mov	x0, x19
004e9caec 	mov	w2, w21
004e9caf0 	bl	#-7036 ; -> 0x4e9af74 EquipmentSlotManager::EquipmentValue
004e9caf4 	ldp	x20, x19, [sp, #96]
004e9caf8 	ldr	x30, [sp, #48]
004e9cafc 	ldp	x22, x21, [sp, #80]
004e9cb00 	ldp	x24, x23, [sp, #64]
004e9cb04 	add	sp, sp, #112
004e9cb08 	ret
004e9cb0c 	bl	#-9485824 ; -> 0x4590d0c 
