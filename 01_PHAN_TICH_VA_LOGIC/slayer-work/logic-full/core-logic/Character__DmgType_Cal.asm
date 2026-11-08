005018334 	stp	x30, x23, [sp, #-48]!
005018338 	stp	x22, x21, [sp, #16]
00501833c 	stp	x20, x19, [sp, #32]
005018340 	adrp	x23, #96194560 ; -> 0xabd5000
005018344 	mov	w21, w3
005018348 	mov	x19, x2
00501834c 	ldrb	w8, [x23, #3671]
005018350 	mov	x20, x1
005018354 	mov	x22, x0
005018358 	tbnz	w8, #0, #24 ; -> 0x5018370
00501835c 	adrp	x0, #87887872 ; -> 0xa3e9000
005018360 	ldr	x0, [x0, #3552]
005018364 	bl	#-11041028 ; -> 0x4590a60
005018368 	mov	w8, #1
00501836c 	strb	w8, [x23, #3671]
005018370 	mov	w0, #31609
005018374 	mov	x1, xzr
005018378 	bl	#-4001236 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
00501837c 	tbz	w0, #0, #56 ; -> 0x50183b4
005018380 	mov	w0, #31609
005018384 	mov	x1, xzr
005018388 	bl	#-4001072 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
00501838c 	cbz	x0, #304 ; -> 0x50184bc
005018390 	mov	x1, x22
005018394 	mov	x2, x20
005018398 	mov	x3, x19
00501839c 	mov	w4, w21
0050183a0 	ldp	x20, x19, [sp, #32]
0050183a4 	ldp	x22, x21, [sp, #16]
0050183a8 	mov	x5, xzr
0050183ac 	ldp	x30, x23, [sp], #48
0050183b0 	b	#-4410176 ; -> 0x4be3870 [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1975]
0050183b4 	cbz	w21, #240 ; -> 0x50184a4
0050183b8 	ldr	w23, [x22, #304]
0050183bc 	mov	x0, x22
0050183c0 	mov	w1, w21
0050183c4 	bl	#252 ; -> 0x50184c0 [Character::DefeatType]
0050183c8 	cmp	w23, w0
0050183cc 	b.ne	#120 ; -> 0x5018444
0050183d0 	adrp	x8, #87887872 ; -> 0xa3e9000
0050183d4 	ldr	x8, [x8, #3552]
0050183d8 	ldr	x0, [x8]
0050183dc 	ldr	w8, [x0, #228]
0050183e0 	cbnz	w8, #8 ; -> 0x50183e8
0050183e4 	bl	#-11040772 ; -> 0x4590be0
0050183e8 	mov	w0, #70
0050183ec 	mov	x1, xzr
0050183f0 	bl	#68570036 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
0050183f4 	mov	x2, x0
0050183f8 	mov	x3, x1
0050183fc 	mov	x0, x20
005018400 	mov	x1, x19
005018404 	mov	x4, xzr
005018408 	bl	#68559932 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
00501840c 	mov	x19, x0
005018410 	mov	x20, x1
005018414 	mov	w0, #100
005018418 	mov	x1, xzr
00501841c 	bl	#68569992 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
005018420 	mov	x2, x0
005018424 	mov	x3, x1
005018428 	mov	x0, x19
00501842c 	mov	x1, x20
005018430 	ldp	x20, x19, [sp, #32]
005018434 	ldp	x22, x21, [sp, #16]
005018438 	mov	x4, xzr
00501843c 	ldp	x30, x23, [sp], #48
005018440 	b	#68560376 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
005018444 	ldr	w23, [x22, #304]
005018448 	mov	x0, x22
00501844c 	mov	w1, w21
005018450 	bl	#232 ; -> 0x5018538 [Character::WinType]
005018454 	cmp	w23, w0
005018458 	b.ne	#76 ; -> 0x50184a4
00501845c 	adrp	x8, #87887872 ; -> 0xa3e9000
005018460 	ldr	x8, [x8, #3552]
005018464 	ldr	x0, [x8]
005018468 	ldr	w8, [x0, #228]
00501846c 	cbnz	w8, #8 ; -> 0x5018474
005018470 	bl	#-11040912 ; -> 0x4590be0
005018474 	mov	w0, #2
005018478 	mov	x1, xzr
00501847c 	bl	#68569896 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
005018480 	mov	x2, x0
005018484 	mov	x3, x1
005018488 	mov	x0, x20
00501848c 	mov	x1, x19
005018490 	ldp	x20, x19, [sp, #32]
005018494 	ldp	x22, x21, [sp, #16]
005018498 	mov	x4, xzr
00501849c 	ldp	x30, x23, [sp], #48
0050184a0 	b	#68559780 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
0050184a4 	mov	x0, x20
0050184a8 	mov	x1, x19
0050184ac 	ldp	x20, x19, [sp, #32]
0050184b0 	ldp	x22, x21, [sp, #16]
0050184b4 	ldp	x30, x23, [sp], #48
0050184b8 	ret
0050184bc 	bl	#-11040688 ; -> 0x4590d0c