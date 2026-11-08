00523f470 	sub	sp, sp, #176
00523f474 	str	x30, [sp, #144]
00523f478 	stp	x20, x19, [sp, #160]
00523f47c 	adrp	x20, #93941760 ; -> 0xabd6000 
00523f480 	mov	x19, x0
00523f484 	ldrb	w8, [x20, #3694]
00523f488 	tbnz	w8, #0, #24 ; -> 0x523f4a0 
00523f48c 	adrp	x0, #85651456 ; -> 0xa3ee000 
00523f490 	ldr	x0, [x0, #2504]
00523f494 	bl	#-13298228 ; -> 0x4590a60 
00523f498 	mov	w8, #1
00523f49c 	strb	w8, [x20, #3694]
00523f4a0 	mov	w0, #42221
00523f4a4 	mov	x1, xzr
00523f4a8 	bl	#-6258436 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00523f4ac 	tbz	w0, #0, #44 ; -> 0x523f4d8 
00523f4b0 	mov	w0, #42221
00523f4b4 	mov	x1, xzr
00523f4b8 	bl	#-6258272 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00523f4bc 	cbz	x0, #212 ; -> 0x523f590 
00523f4c0 	mov	x1, x19
00523f4c4 	ldp	x20, x19, [sp, #160]
00523f4c8 	ldr	x30, [sp, #144]
00523f4cc 	mov	x2, xzr
00523f4d0 	add	sp, sp, #176
00523f4d4 	b	#-7081908 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00523f4d8 	adrp	x20, #85651456 ; -> 0xa3ee000 
00523f4dc 	ldr	x20, [x20, #2504]
00523f4e0 	ldr	x8, [x20]
00523f4e4 	ldr	x8, [x8, #184]
00523f4e8 	ldr	x8, [x8]
00523f4ec 	cbz	x8, #164 ; -> 0x523f590 
00523f4f0 	ldur	q0, [x8, #120]
00523f4f4 	ldur	q1, [x8, #136]
00523f4f8 	add	x0, sp, #96
00523f4fc 	ldur	q2, [x8, #152]
00523f500 	mov	x1, xzr
00523f504 	stp	q0, q1, [sp, #96]
00523f508 	str	q2, [sp, #128]
00523f50c 	bl	#-11913024 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f510 	mov	w8, #34953
00523f514 	mov	x1, xzr
00523f518 	movk	w8, #34952, lsl #16
00523f51c 	smull	x8, w0, w8
00523f520 	lsr	x8, x8, #32
00523f524 	add	w8, w8, w0
00523f528 	asr	w9, w8, #5
00523f52c 	add	w0, w9, w8, lsr #31
00523f530 	add	x8, sp, #48
00523f534 	bl	#-11941208 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f538 	ldp	q0, q1, [sp, #48]
00523f53c 	mov	x0, sp
00523f540 	ldr	q2, [sp, #80]
00523f544 	mov	x1, xzr
00523f548 	stp	q0, q1, [sp]
00523f54c 	str	q2, [sp, #32]
00523f550 	bl	#-11913092 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00523f554 	mov	w1, w0
00523f558 	mov	x0, x19
00523f55c 	bl	#56 ; -> 0x523f594 OfflineRewardManager::RewardCheck
00523f560 	ldr	x8, [x20]
00523f564 	ldr	x8, [x8, #184]
00523f568 	ldr	x8, [x8]
00523f56c 	cbz	x8, #36 ; -> 0x523f590 
00523f570 	add	x0, x8, #376
00523f574 	mov	w1, wzr
00523f578 	mov	x2, xzr
00523f57c 	bl	#-7263120 ; -> 0x4b521ec SilentInt::set_Value
00523f580 	ldp	x20, x19, [sp, #160]
00523f584 	ldr	x30, [sp, #144]
00523f588 	add	sp, sp, #176
00523f58c 	ret
00523f590 	bl	#-13297796 ; -> 0x4590d0c 
