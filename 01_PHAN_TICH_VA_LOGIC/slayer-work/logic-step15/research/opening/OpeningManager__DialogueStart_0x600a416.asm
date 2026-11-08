0052419b4 	str	x30, [sp, #-48]!
0052419b8 	stp	x22, x21, [sp, #16]
0052419bc 	stp	x20, x19, [sp, #32]
0052419c0 	adrp	x20, #93933568 ; -> 0xabd6000 
0052419c4 	mov	x19, x0
0052419c8 	ldrb	w8, [x20, #3710]
0052419cc 	tbnz	w8, #0, #72 ; -> 0x5241a14 
0052419d0 	adrp	x0, #85647360 ; -> 0xa3ef000 
0052419d4 	ldr	x0, [x0, #632]
0052419d8 	bl	#-13307768 ; -> 0x4590a60 
0052419dc 	adrp	x0, #85622784 ; -> 0xa3e9000 
0052419e0 	ldr	x0, [x0, #2408]
0052419e4 	bl	#-13307780 ; -> 0x4590a60 
0052419e8 	adrp	x0, #85958656 ; -> 0xa43b000 
0052419ec 	ldr	x0, [x0, #2440]
0052419f0 	bl	#-13307792 ; -> 0x4590a60 
0052419f4 	adrp	x0, #85958656 ; -> 0xa43b000 
0052419f8 	ldr	x0, [x0, #2448]
0052419fc 	bl	#-13307804 ; -> 0x4590a60 
005241a00 	adrp	x0, #85643264 ; -> 0xa3ee000 
005241a04 	ldr	x0, [x0, #2440]
005241a08 	bl	#-13307816 ; -> 0x4590a60 
005241a0c 	mov	w8, #1
005241a10 	strb	w8, [x20, #3710]
005241a14 	mov	w0, #42249
005241a18 	mov	x1, xzr
005241a1c 	bl	#-6268024 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241a20 	tbz	w0, #0, #44 ; -> 0x5241a4c 
005241a24 	mov	w0, #42249
005241a28 	mov	x1, xzr
005241a2c 	bl	#-6267860 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241a30 	cbz	x0, #208 ; -> 0x5241b00 
005241a34 	mov	x1, x19
005241a38 	ldp	x20, x19, [sp, #32]
005241a3c 	ldp	x22, x21, [sp, #16]
005241a40 	mov	x2, xzr
005241a44 	ldr	x30, [sp], #48
005241a48 	b	#-7091496 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005241a4c 	mov	x0, xzr
005241a50 	bl	#-11131392 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
005241a54 	cbz	x0, #172 ; -> 0x5241b00 
005241a58 	adrp	x8, #85643264 ; -> 0xa3ee000 
005241a5c 	mov	x2, xzr
005241a60 	ldr	x8, [x8, #2440]
005241a64 	ldr	x1, [x8]
005241a68 	bl	#-11126948 ; -> 0x47a51c4 Gear2.GrowSlayer.Logging.KinesisLog::Opening
005241a6c 	adrp	x8, #85622784 ; -> 0xa3e9000 
005241a70 	adrp	x22, #85647360 ; -> 0xa3ef000 
005241a74 	ldr	x8, [x8, #2408]
005241a78 	ldr	x8, [x8]
005241a7c 	ldr	x8, [x8, #184]
005241a80 	ldr	x22, [x22, #632]
005241a84 	ldr	x0, [x22]
005241a88 	ldr	x20, [x8]
005241a8c 	bl	#-13307280 ; -> 0x4590cfc 
005241a90 	adrp	x8, #85958656 ; -> 0xa43b000 
005241a94 	mov	x1, x19
005241a98 	mov	x3, xzr
005241a9c 	ldr	x8, [x8, #2440]
005241aa0 	mov	x21, x0
005241aa4 	ldr	x2, [x8]
005241aa8 	bl	#-5687936 ; -> 0x4cd5028 DialogueManager+DialogueAction::.ctor
005241aac 	ldr	x0, [x22]
005241ab0 	bl	#-13307316 ; -> 0x4590cfc 
005241ab4 	adrp	x8, #85958656 ; -> 0xa43b000 
005241ab8 	mov	x1, x19
005241abc 	mov	x3, xzr
005241ac0 	ldr	x8, [x8, #2448]
005241ac4 	mov	x22, x0
005241ac8 	ldr	x2, [x8]
005241acc 	bl	#-5687972 ; -> 0x4cd5028 DialogueManager+DialogueAction::.ctor
005241ad0 	cbz	x20, #48 ; -> 0x5241b00 
005241ad4 	mov	x0, x20
005241ad8 	mov	x3, x21
005241adc 	mov	x4, x22
005241ae0 	ldp	x20, x19, [sp, #32]
005241ae4 	mov	w1, wzr
005241ae8 	ldp	x22, x21, [sp, #16]
005241aec 	mov	w2, #1
005241af0 	mov	x5, xzr
005241af4 	mov	x6, xzr
005241af8 	ldr	x30, [sp], #48
005241afc 	b	#-5689176 ; -> 0x4cd4ba4 DialogueManager::Dialogue_Start
005241b00 	bl	#-13307380 ; -> 0x4590d0c 
