004e514d8 	sub	sp, sp, #176
004e514dc 	str	x30, [sp, #128]
004e514e0 	stp	x22, x21, [sp, #144]
004e514e4 	stp	x20, x19, [sp, #160]
004e514e8 	adrp	x22, #98058240 ; -> 0xabd5000 
004e514ec 	mov	x19, x2
004e514f0 	mov	x20, x1
004e514f4 	ldrb	w8, [x22, #336]
004e514f8 	mov	x21, x0
004e514fc 	tbnz	w8, #0, #24 ; -> 0x4e51514 
004e51500 	adrp	x0, #89751552 ; -> 0xa3e9000 
004e51504 	ldr	x0, [x0, #3552]
004e51508 	bl	#-9177768 ; -> 0x4590a60 
004e5150c 	mov	w8, #1
004e51510 	strb	w8, [x22, #336]
004e51514 	mov	w0, #30935
004e51518 	mov	x1, xzr
004e5151c 	bl	#-2137976 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e51520 	tbz	w0, #0, #56 ; -> 0x4e51558 
004e51524 	mov	w0, #30935
004e51528 	mov	x1, xzr
004e5152c 	bl	#-2137812 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51530 	cbz	x0, #220 ; -> 0x4e5160c 
004e51534 	mov	x1, x21
004e51538 	mov	x2, x20
004e5153c 	mov	x3, x19
004e51540 	ldp	x20, x19, [sp, #160]
004e51544 	ldr	x30, [sp, #128]
004e51548 	ldp	x22, x21, [sp, #144]
004e5154c 	mov	x4, xzr
004e51550 	add	sp, sp, #176
004e51554 	b	#-2822000 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
004e51558 	ldr	x0, [x21, #32]
004e5155c 	cbz	x0, #176 ; -> 0x4e5160c 
004e51560 	add	x8, sp, #64
004e51564 	mov	x1, xzr
004e51568 	bl	#-1067868 ; -> 0x4d4ca0c DatabaseManager::get_GoldAmountAdd
004e5156c 	ldp	q0, q1, [sp, #64]
004e51570 	mov	x0, sp
004e51574 	mov	x1, xzr
004e51578 	stp	q0, q1, [sp]
004e5157c 	ldp	q0, q2, [sp, #96]
004e51580 	stp	q0, q2, [sp, #32]
004e51584 	bl	#-3140740 ; -> 0x4b52900 SilentLong::op_Implicit
004e51588 	adrp	x8, #89751552 ; -> 0xa3e9000 
004e5158c 	mov	x21, x0
004e51590 	ldr	x8, [x8, #3552]
004e51594 	ldr	x8, [x8]
004e51598 	ldr	w9, [x8, #228]
004e5159c 	cbnz	w9, #12 ; -> 0x4e515a8 
004e515a0 	mov	x0, x8
004e515a4 	bl	#-9177540 ; -> 0x4590be0 
004e515a8 	mov	x0, x21
004e515ac 	mov	x1, xzr
004e515b0 	bl	#70431596 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004e515b4 	mov	x2, x0
004e515b8 	mov	x3, x1
004e515bc 	mov	x0, x20
004e515c0 	mov	x1, x19
004e515c4 	mov	x4, xzr
004e515c8 	bl	#70423164 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004e515cc 	mov	x19, x0
004e515d0 	mov	x20, x1
004e515d4 	mov	w0, #100
004e515d8 	mov	x1, xzr
004e515dc 	bl	#70433224 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e515e0 	mov	x2, x0
004e515e4 	mov	x3, x1
004e515e8 	mov	x0, x19
004e515ec 	mov	x1, x20
004e515f0 	mov	x4, xzr
004e515f4 	bl	#70423620 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004e515f8 	ldp	x20, x19, [sp, #160]
004e515fc 	ldr	x30, [sp, #128]
004e51600 	ldp	x22, x21, [sp, #144]
004e51604 	add	sp, sp, #176
004e51608 	ret
004e5160c 	bl	#-9177344 ; -> 0x4590d0c 
