004e9b1e0 	stp	d9, d8, [sp, #-112]!
004e9b1e4 	stp	x29, x30, [sp, #16]
004e9b1e8 	stp	x28, x27, [sp, #32]
004e9b1ec 	stp	x26, x25, [sp, #48]
004e9b1f0 	stp	x24, x23, [sp, #64]
004e9b1f4 	stp	x22, x21, [sp, #80]
004e9b1f8 	stp	x20, x19, [sp, #96]
004e9b1fc 	sub	sp, sp, #688
004e9b200 	adrp	x22, #97755136 ; -> 0xabd5000 
004e9b204 	mov	w21, w2
004e9b208 	mov	x19, x1
004e9b20c 	ldrb	w8, [x22, #864]
004e9b210 	mov	x20, x0
004e9b214 	tbnz	w8, #0, #132 ; -> 0x4e9b298 
004e9b218 	adrp	x0, #89448448 ; -> 0xa3e9000 
004e9b21c 	ldr	x0, [x0, #1384]
004e9b220 	bl	#-9480128 ; -> 0x4590a60 
004e9b224 	adrp	x0, #89477120 ; -> 0xa3f0000 
004e9b228 	ldr	x0, [x0, #584]
004e9b22c 	bl	#-9480140 ; -> 0x4590a60 
004e9b230 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b234 	ldr	x0, [x0, #2048]
004e9b238 	bl	#-9480152 ; -> 0x4590a60 
004e9b23c 	adrp	x0, #89473024 ; -> 0xa3ef000 
004e9b240 	ldr	x0, [x0, #3552]
004e9b244 	bl	#-9480164 ; -> 0x4590a60 
004e9b248 	adrp	x0, #89710592 ; -> 0xa429000 
004e9b24c 	ldr	x0, [x0, #3040]
004e9b250 	bl	#-9480176 ; -> 0x4590a60 
004e9b254 	adrp	x0, #89448448 ; -> 0xa3e9000 
004e9b258 	ldr	x0, [x0, #1536]
004e9b25c 	bl	#-9480188 ; -> 0x4590a60 
004e9b260 	adrp	x0, #89710592 ; -> 0xa429000 
004e9b264 	ldr	x0, [x0, #3048]
004e9b268 	bl	#-9480200 ; -> 0x4590a60 
004e9b26c 	adrp	x0, #89710592 ; -> 0xa429000 
004e9b270 	ldr	x0, [x0, #3056]
004e9b274 	bl	#-9480212 ; -> 0x4590a60 
004e9b278 	adrp	x0, #89440256 ; -> 0xa3e7000 
004e9b27c 	ldr	x0, [x0, #3440]
004e9b280 	bl	#-9480224 ; -> 0x4590a60 
004e9b284 	adrp	x0, #89477120 ; -> 0xa3f0000 
004e9b288 	ldr	x0, [x0, #1200]
004e9b28c 	bl	#-9480236 ; -> 0x4590a60 
004e9b290 	mov	w8, #1
004e9b294 	strb	w8, [x22, #864]
004e9b298 	mov	w0, #32248
004e9b29c 	mov	x1, xzr
004e9b2a0 	bl	#-2440444 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9b2a4 	tbz	w0, #0, #72 ; -> 0x4e9b2ec 
004e9b2a8 	mov	w0, #32248
004e9b2ac 	mov	x1, xzr
004e9b2b0 	bl	#-2440280 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9b2b4 	cbz	x0, #2752 ; -> 0x4e9bd74 
004e9b2b8 	and	w3, w21, #0x1
004e9b2bc 	mov	x1, x20
004e9b2c0 	mov	x2, x19
004e9b2c4 	mov	x4, xzr
004e9b2c8 	add	sp, sp, #688
004e9b2cc 	ldp	x20, x19, [sp, #96]
004e9b2d0 	ldp	x22, x21, [sp, #80]
004e9b2d4 	ldp	x24, x23, [sp, #64]
004e9b2d8 	ldp	x26, x25, [sp, #48]
004e9b2dc 	ldp	x28, x27, [sp, #32]
004e9b2e0 	ldp	x29, x30, [sp, #16]
004e9b2e4 	ldp	d9, d8, [sp], #112
004e9b2e8 	b	#-3215596 ; -> 0x4b8a1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_225
004e9b2ec 	cbz	x19, #2696 ; -> 0x4e9bd74 
004e9b2f0 	ldp	q0, q1, [x19, #32]
004e9b2f4 	add	x0, sp, #640
004e9b2f8 	ldr	q2, [x19, #64]
004e9b2fc 	ldr	w22, [x19, #20]
004e9b300 	mov	x1, xzr
004e9b304 	stp	q0, q1, [sp, #640]
004e9b308 	str	q2, [sp, #672]
004e9b30c 	bl	#-8095040 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b310 	mov	w2, w0
004e9b314 	mov	x0, x20
004e9b318 	mov	w1, w22
004e9b31c 	bl	#2956 ; -> 0x4e9bea8 EquipmentSlotManager::AtkValue_Cal
004e9b320 	str	x0, [x20, #296]
004e9b324 	ldr	w22, [x19, #168]
004e9b328 	add	x0, sp, #592
004e9b32c 	ldp	q0, q1, [x19, #32]
004e9b330 	mov	x1, xzr
004e9b334 	ldr	q2, [x19, #64]
004e9b338 	stp	q0, q1, [sp, #592]
004e9b33c 	str	q2, [sp, #624]
004e9b340 	bl	#-8095092 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b344 	mov	w2, w0
004e9b348 	mov	x0, x20
004e9b34c 	mov	w1, w22
004e9b350 	bl	#-680 ; -> 0x4e9b0a8 EquipmentSlotManager::UpgradePrice
004e9b354 	add	x8, sp, #544
004e9b358 	mov	x1, xzr
004e9b35c 	bl	#-8123192 ; -> 0x46dc024 Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9b360 	ldp	q0, q1, [sp, #544]
004e9b364 	add	x0, x20, #304
004e9b368 	ldr	q2, [sp, #576]
004e9b36c 	mov	x1, xzr
004e9b370 	stp	q0, q1, [x20, #304]
004e9b374 	str	q2, [x20, #336]
004e9b378 	bl	#-9480564 ; -> 0x4590a04 
004e9b37c 	ldp	q0, q1, [x19, #32]
004e9b380 	add	x0, sp, #496
004e9b384 	ldr	q2, [x19, #64]
004e9b388 	mov	x1, xzr
004e9b38c 	stp	q0, q1, [sp, #496]
004e9b390 	str	q2, [sp, #528]
004e9b394 	bl	#-8095176 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b398 	mov	w22, w0
004e9b39c 	mov	x0, x20
004e9b3a0 	bl	#-11420 ; -> 0x4e98704 EquipmentSlotManager::get_WeaponMaxLevel
004e9b3a4 	cmp	w22, w0
004e9b3a8 	b.ge	#1472 ; -> 0x4e9b968 
004e9b3ac 	ldp	q0, q1, [x19, #32]
004e9b3b0 	add	x0, sp, #256
004e9b3b4 	ldur	q2, [x19, #64]
004e9b3b8 	ldr	w22, [x19, #20]
004e9b3bc 	mov	x1, xzr
004e9b3c0 	stp	q0, q1, [sp, #256]
004e9b3c4 	str	q2, [sp, #288]
004e9b3c8 	bl	#-8095228 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b3cc 	add	w2, w0, #1
004e9b3d0 	mov	x0, x20
004e9b3d4 	mov	w1, w22
004e9b3d8 	bl	#2768 ; -> 0x4e9bea8 EquipmentSlotManager::AtkValue_Cal
004e9b3dc 	adrp	x28, #89448448 ; -> 0xa3e9000 
004e9b3e0 	mov	x22, x0
004e9b3e4 	ldr	x28, [x28, #1384]
004e9b3e8 	ldr	x23, [x20, #184]
004e9b3ec 	ldr	x8, [x28]
004e9b3f0 	ldr	w9, [x8, #228]
004e9b3f4 	cbnz	w9, #16 ; -> 0x4e9b404 
004e9b3f8 	mov	x0, x8
004e9b3fc 	bl	#-9480220 ; -> 0x4590be0 
004e9b400 	ldr	x8, [x28]
004e9b404 	ldr	x8, [x8, #184]
004e9b408 	ldr	x0, [x8]
004e9b40c 	cbz	x0, #2408 ; -> 0x4e9bd74 
004e9b410 	ldr	x1, [x20, #296]
004e9b414 	mov	w2, wzr
004e9b418 	mov	x3, xzr
004e9b41c 	bl	#-1341216 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
004e9b420 	ldr	x8, [x28]
004e9b424 	ldr	x8, [x8, #184]
004e9b428 	ldr	x8, [x8]
004e9b42c 	cbz	x8, #2376 ; -> 0x4e9bd74 
004e9b430 	mov	x24, x0
004e9b434 	mov	x0, x8
004e9b438 	mov	x1, x22
004e9b43c 	mov	w2, wzr
004e9b440 	mov	x3, xzr
004e9b444 	bl	#-1341256 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
004e9b448 	adrp	x29, #89477120 ; -> 0xa3f0000 
004e9b44c 	adrp	x8, #89710592 ; -> 0xa429000 
004e9b450 	mov	x25, x0
004e9b454 	ldr	x29, [x29, #584]
004e9b458 	ldr	x26, [x29]
004e9b45c 	ldr	x8, [x8, #3056]
004e9b460 	ldr	x9, [x26, #56]
004e9b464 	ldr	x27, [x8]
004e9b468 	cbnz	x9, #32 ; -> 0x4e9b488 
004e9b46c 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b470 	ldr	x0, [x0, #2056]
004e9b474 	bl	#-9480724 ; -> 0x4590a60 
004e9b478 	ldr	x8, [x26, #56]
004e9b47c 	cbnz	x8, #12 ; -> 0x4e9b488 
004e9b480 	mov	x0, x26
004e9b484 	bl	#-9250048 ; -> 0x45c8f84 
004e9b488 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9b48c 	ldr	x8, [x8, #2056]
004e9b490 	ldr	x0, [x8]
004e9b494 	ldr	w8, [x0, #228]
004e9b498 	cbnz	w8, #8 ; -> 0x4e9b4a0 
004e9b49c 	bl	#-9480380 ; -> 0x4590be0 
004e9b4a0 	ldr	x8, [x26, #56]
004e9b4a4 	mov	x0, x27
004e9b4a8 	mov	x1, x24
004e9b4ac 	mov	x2, x25
004e9b4b0 	ldr	x3, [x8, #16]
004e9b4b4 	bl	#-7072136 ; -> 0x47dcb2c 
004e9b4b8 	cbz	x23, #2236 ; -> 0x4e9bd74 
004e9b4bc 	ldr	x8, [x23]
004e9b4c0 	mov	x1, x0
004e9b4c4 	mov	x0, x23
004e9b4c8 	ldr	x9, [x8, #1512]
004e9b4cc 	ldr	x2, [x8, #1520]
004e9b4d0 	blr	x9
004e9b4d4 	ldr	x0, [x20, #248]
004e9b4d8 	cbz	x0, #2204 ; -> 0x4e9bd74 
004e9b4dc 	ldr	x8, [x0]
004e9b4e0 	mov	w1, #1
004e9b4e4 	ldr	x9, [x8, #712]
004e9b4e8 	ldr	x2, [x8, #720]
004e9b4ec 	blr	x9
004e9b4f0 	ldr	x0, [x20, #248]
004e9b4f4 	cbz	x0, #2176 ; -> 0x4e9bd74 
004e9b4f8 	ldr	x8, [x0]
004e9b4fc 	fmov	s0, #1.00000000
004e9b500 	fmov	s1, #1.00000000
004e9b504 	fmov	s2, #1.00000000
004e9b508 	fmov	s3, #1.00000000
004e9b50c 	ldr	x9, [x8, #680]
004e9b510 	ldr	x1, [x8, #688]
004e9b514 	blr	x9
004e9b518 	ldr	x8, [x28]
004e9b51c 	ldp	q0, q1, [x20, #304]
004e9b520 	ldr	q2, [x20, #336]
004e9b524 	add	x0, sp, #208
004e9b528 	mov	x1, xzr
004e9b52c 	ldr	x8, [x8, #184]
004e9b530 	ldr	x23, [x20, #272]
004e9b534 	ldr	x24, [x8]
004e9b538 	stp	q0, q1, [sp, #208]
004e9b53c 	str	q2, [sp, #240]
004e9b540 	bl	#-8099060 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9b544 	cbz	x24, #2096 ; -> 0x4e9bd74 
004e9b548 	mov	x1, x0
004e9b54c 	mov	x0, x24
004e9b550 	mov	w2, #1
004e9b554 	mov	x3, xzr
004e9b558 	bl	#-1341532 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
004e9b55c 	cbz	x23, #2072 ; -> 0x4e9bd74 
004e9b560 	ldr	x8, [x23]
004e9b564 	mov	x1, x0
004e9b568 	mov	x0, x23
004e9b56c 	ldr	x9, [x8, #1512]
004e9b570 	ldr	x2, [x8, #1520]
004e9b574 	blr	x9
004e9b578 	ldr	x8, [x28]
004e9b57c 	ldr	x8, [x8, #184]
004e9b580 	ldr	x0, [x8]
004e9b584 	cbz	x0, #2032 ; -> 0x4e9bd74 
004e9b588 	ldr	d0, [x20, #296]
004e9b58c 	adrp	x8, #-49754112 ; -> 0x1f28000 
004e9b590 	adrp	x27, #89477120 ; -> 0xa3f0000 
004e9b594 	ldr	d8, [x8, #3864]
004e9b598 	ldr	x27, [x27, #1200]
004e9b59c 	mov	w2, #1
004e9b5a0 	scvtf	d0, d0
004e9b5a4 	mov	x3, xzr
004e9b5a8 	ldr	x1, [x27]
004e9b5ac 	fmul	d0, d0, d8
004e9b5b0 	bl	#-1341352 ; -> 0x4d53e08 DatabaseManager::GetStrAmount
004e9b5b4 	ldr	x8, [x28]
004e9b5b8 	ldr	x8, [x8, #184]
004e9b5bc 	ldr	x8, [x8]
004e9b5c0 	cbz	x8, #1972 ; -> 0x4e9bd74 
004e9b5c4 	scvtf	d0, x22
004e9b5c8 	ldr	x1, [x27]
004e9b5cc 	mov	x23, x0
004e9b5d0 	mov	x0, x8
004e9b5d4 	mov	w2, #1
004e9b5d8 	mov	x3, xzr
004e9b5dc 	fmul	d0, d0, d8
004e9b5e0 	bl	#-1341400 ; -> 0x4d53e08 DatabaseManager::GetStrAmount
004e9b5e4 	ldr	x24, [x29]
004e9b5e8 	adrp	x29, #89710592 ; -> 0xa429000 
004e9b5ec 	mov	x25, x0
004e9b5f0 	ldr	x29, [x29, #3040]
004e9b5f4 	ldr	x22, [x20, #208]
004e9b5f8 	ldr	x8, [x24, #56]
004e9b5fc 	ldr	x26, [x29]
004e9b600 	cbnz	x8, #32 ; -> 0x4e9b620 
004e9b604 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b608 	ldr	x0, [x0, #2056]
004e9b60c 	bl	#-9481132 ; -> 0x4590a60 
004e9b610 	ldr	x8, [x24, #56]
004e9b614 	cbnz	x8, #12 ; -> 0x4e9b620 
004e9b618 	mov	x0, x24
004e9b61c 	bl	#-9250456 ; -> 0x45c8f84 
004e9b620 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9b624 	ldr	x8, [x8, #2056]
004e9b628 	ldr	x0, [x8]
004e9b62c 	ldr	w8, [x0, #228]
004e9b630 	cbnz	w8, #8 ; -> 0x4e9b638 
004e9b634 	bl	#-9480788 ; -> 0x4590be0 
004e9b638 	ldr	x8, [x24, #56]
004e9b63c 	mov	x0, x26
004e9b640 	mov	x1, x23
004e9b644 	mov	x2, x25
004e9b648 	ldr	x3, [x8, #16]
004e9b64c 	bl	#-7072544 ; -> 0x47dcb2c 
004e9b650 	cbz	x22, #1828 ; -> 0x4e9bd74 
004e9b654 	ldr	x8, [x22]
004e9b658 	mov	x1, x0
004e9b65c 	mov	x0, x22
004e9b660 	ldr	x9, [x8, #1512]
004e9b664 	ldr	x2, [x8, #1520]
004e9b668 	blr	x9
004e9b66c 	tbz	w21, #0, #28 ; -> 0x4e9b688 
004e9b670 	ldr	d0, [x20, #296]
004e9b674 	ldr	w1, [x19, #20]
004e9b678 	mov	x0, x20
004e9b67c 	scvtf	d0, d0
004e9b680 	fmul	d0, d0, d8
004e9b684 	bl	#3728 ; -> 0x4e9c514 EquipmentSlotManager::Equipment_HavePower_Atk_Renew
004e9b688 	ldr	s0, [x19, #172]
004e9b68c 	fcmp	s0, #0.0
004e9b690 	b.eq	#360 ; -> 0x4e9b7f8 
004e9b694 	ldp	q0, q1, [x19, #32]
004e9b698 	add	x0, sp, #160
004e9b69c 	ldur	q2, [x19, #64]
004e9b6a0 	ldr	w22, [x19, #20]
004e9b6a4 	mov	x1, xzr
004e9b6a8 	stp	q0, q1, [sp, #160]
004e9b6ac 	str	q2, [sp, #192]
004e9b6b0 	bl	#-8095972 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b6b4 	mov	w2, w0
004e9b6b8 	mov	x0, x20
004e9b6bc 	mov	w1, w22
004e9b6c0 	bl	#2564 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9b6c4 	fmov	s8, s0
004e9b6c8 	ldp	q0, q1, [x19, #32]
004e9b6cc 	ldur	q2, [x19, #64]
004e9b6d0 	ldr	w22, [x19, #20]
004e9b6d4 	add	x0, sp, #112
004e9b6d8 	mov	x1, xzr
004e9b6dc 	stp	q0, q1, [sp, #112]
004e9b6e0 	str	q2, [sp, #144]
004e9b6e4 	bl	#-8096024 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b6e8 	add	w2, w0, #1
004e9b6ec 	mov	x0, x20
004e9b6f0 	mov	w1, w22
004e9b6f4 	bl	#2512 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9b6f8 	ldr	x0, [x28]
004e9b6fc 	fmov	s9, s0
004e9b700 	ldr	x22, [x20, #232]
004e9b704 	ldr	w8, [x0, #228]
004e9b708 	cbnz	w8, #12 ; -> 0x4e9b714 
004e9b70c 	bl	#-9481004 ; -> 0x4590be0 
004e9b710 	ldr	x0, [x28]
004e9b714 	ldr	x8, [x0, #184]
004e9b718 	ldr	x0, [x8]
004e9b71c 	cbz	x0, #1624 ; -> 0x4e9bd74 
004e9b720 	fmov	s0, s8
004e9b724 	ldr	x1, [x27]
004e9b728 	mov	w2, #1
004e9b72c 	mov	x3, xzr
004e9b730 	bl	#-1341488 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9b734 	ldr	x8, [x28]
004e9b738 	ldr	x8, [x8, #184]
004e9b73c 	ldr	x8, [x8]
004e9b740 	cbz	x8, #1588 ; -> 0x4e9bd74 
004e9b744 	fmov	s0, s9
004e9b748 	ldr	x1, [x27]
004e9b74c 	mov	x23, x0
004e9b750 	mov	x0, x8
004e9b754 	mov	w2, #1
004e9b758 	mov	x3, xzr
004e9b75c 	bl	#-1341532 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9b760 	adrp	x8, #89477120 ; -> 0xa3f0000 
004e9b764 	mov	x24, x0
004e9b768 	ldr	x8, [x8, #584]
004e9b76c 	ldr	x25, [x29]
004e9b770 	ldr	x26, [x8]
004e9b774 	ldr	x8, [x26, #56]
004e9b778 	cbnz	x8, #32 ; -> 0x4e9b798 
004e9b77c 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b780 	ldr	x0, [x0, #2056]
004e9b784 	bl	#-9481508 ; -> 0x4590a60 
004e9b788 	ldr	x8, [x26, #56]
004e9b78c 	cbnz	x8, #12 ; -> 0x4e9b798 
004e9b790 	mov	x0, x26
004e9b794 	bl	#-9250832 ; -> 0x45c8f84 
004e9b798 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9b79c 	ldr	x8, [x8, #2056]
004e9b7a0 	ldr	x0, [x8]
004e9b7a4 	ldr	w8, [x0, #228]
004e9b7a8 	cbnz	w8, #8 ; -> 0x4e9b7b0 
004e9b7ac 	bl	#-9481164 ; -> 0x4590be0 
004e9b7b0 	ldr	x8, [x26, #56]
004e9b7b4 	mov	x0, x25
004e9b7b8 	mov	x1, x23
004e9b7bc 	mov	x2, x24
004e9b7c0 	ldr	x3, [x8, #16]
004e9b7c4 	bl	#-7072920 ; -> 0x47dcb2c 
004e9b7c8 	cbz	x22, #1452 ; -> 0x4e9bd74 
004e9b7cc 	ldr	x8, [x22]
004e9b7d0 	mov	x1, x0
004e9b7d4 	mov	x0, x22
004e9b7d8 	ldr	x9, [x8, #1512]
004e9b7dc 	ldr	x2, [x8, #1520]
004e9b7e0 	blr	x9
004e9b7e4 	tbz	w21, #0, #20 ; -> 0x4e9b7f8 
004e9b7e8 	fmov	s0, s8
004e9b7ec 	ldr	w1, [x19, #20]
004e9b7f0 	mov	x0, x20
004e9b7f4 	bl	#3680 ; -> 0x4e9c654 EquipmentSlotManager::Equipment_HavePower_Critical_Renew
004e9b7f8 	ldr	s0, [x19, #176]
004e9b7fc 	fcmp	s0, #0.0
004e9b800 	b.eq	#1304 ; -> 0x4e9bd18 
004e9b804 	ldp	q0, q1, [x19, #32]
004e9b808 	add	x0, sp, #64
004e9b80c 	ldur	q2, [x19, #64]
004e9b810 	ldr	w22, [x19, #20]
004e9b814 	mov	x1, xzr
004e9b818 	stp	q0, q1, [sp, #64]
004e9b81c 	str	q2, [sp, #96]
004e9b820 	bl	#-8096340 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b824 	mov	w2, w0
004e9b828 	mov	x0, x20
004e9b82c 	mov	w1, w22
004e9b830 	bl	#2748 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9b834 	fmov	s8, s0
004e9b838 	ldp	q0, q1, [x19, #32]
004e9b83c 	ldur	q2, [x19, #64]
004e9b840 	ldr	w22, [x19, #20]
004e9b844 	add	x0, sp, #16
004e9b848 	mov	x1, xzr
004e9b84c 	stp	q0, q1, [sp, #16]
004e9b850 	str	q2, [sp, #48]
004e9b854 	bl	#-8096392 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9b858 	add	w2, w0, #1
004e9b85c 	mov	x0, x20
004e9b860 	mov	w1, w22
004e9b864 	bl	#2696 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9b868 	ldr	x0, [x28]
004e9b86c 	fmov	s9, s0
004e9b870 	ldr	x22, [x20, #240]
004e9b874 	ldr	w8, [x0, #228]
004e9b878 	cbnz	w8, #12 ; -> 0x4e9b884 
004e9b87c 	bl	#-9481372 ; -> 0x4590be0 
004e9b880 	ldr	x0, [x28]
004e9b884 	ldr	x8, [x0, #184]
004e9b888 	ldr	x0, [x8]
004e9b88c 	cbz	x0, #1256 ; -> 0x4e9bd74 
004e9b890 	fmov	s0, s8
004e9b894 	ldr	x1, [x27]
004e9b898 	mov	w2, #1
004e9b89c 	mov	x3, xzr
004e9b8a0 	bl	#-1341856 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9b8a4 	ldr	x8, [x28]
004e9b8a8 	ldr	x8, [x8, #184]
004e9b8ac 	ldr	x8, [x8]
004e9b8b0 	cbz	x8, #1220 ; -> 0x4e9bd74 
004e9b8b4 	fmov	s0, s9
004e9b8b8 	ldr	x1, [x27]
004e9b8bc 	mov	x23, x0
004e9b8c0 	mov	x0, x8
004e9b8c4 	mov	w2, #1
004e9b8c8 	mov	x3, xzr
004e9b8cc 	bl	#-1341900 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9b8d0 	adrp	x8, #89477120 ; -> 0xa3f0000 
004e9b8d4 	mov	x24, x0
004e9b8d8 	ldr	x8, [x8, #584]
004e9b8dc 	ldr	x25, [x29]
004e9b8e0 	ldr	x26, [x8]
004e9b8e4 	ldr	x8, [x26, #56]
004e9b8e8 	cbnz	x8, #32 ; -> 0x4e9b908 
004e9b8ec 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9b8f0 	ldr	x0, [x0, #2056]
004e9b8f4 	bl	#-9481876 ; -> 0x4590a60 
004e9b8f8 	ldr	x8, [x26, #56]
004e9b8fc 	cbnz	x8, #12 ; -> 0x4e9b908 
004e9b900 	mov	x0, x26
004e9b904 	bl	#-9251200 ; -> 0x45c8f84 
004e9b908 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9b90c 	ldr	x8, [x8, #2056]
004e9b910 	ldr	x0, [x8]
004e9b914 	ldr	w8, [x0, #228]
004e9b918 	cbnz	w8, #8 ; -> 0x4e9b920 
004e9b91c 	bl	#-9481532 ; -> 0x4590be0 
004e9b920 	ldr	x8, [x26, #56]
004e9b924 	mov	x0, x25
004e9b928 	mov	x1, x23
004e9b92c 	mov	x2, x24
004e9b930 	ldr	x3, [x8, #16]
004e9b934 	bl	#-7073288 ; -> 0x47dcb2c 
004e9b938 	cbz	x22, #1084 ; -> 0x4e9bd74 
004e9b93c 	ldr	x8, [x22]
004e9b940 	mov	x1, x0
004e9b944 	mov	x0, x22
004e9b948 	ldr	x9, [x8, #1512]
004e9b94c 	ldr	x2, [x8, #1520]
004e9b950 	blr	x9
004e9b954 	tbz	w21, #0, #964 ; -> 0x4e9bd18 
004e9b958 	fmov	s0, s8
004e9b95c 	ldr	w1, [x19, #20]
004e9b960 	mov	x0, x20
004e9b964 	b	#944 ; -> 0x4e9bd14 
004e9b968 	adrp	x27, #89448448 ; -> 0xa3e9000 
004e9b96c 	ldr	x27, [x27, #1384]
004e9b970 	ldr	x22, [x20, #184]
004e9b974 	ldr	x0, [x27]
004e9b978 	ldr	w8, [x0, #228]
004e9b97c 	cbnz	w8, #12 ; -> 0x4e9b988 
004e9b980 	bl	#-9481632 ; -> 0x4590be0 
004e9b984 	ldr	x0, [x27]
004e9b988 	ldr	x8, [x0, #184]
004e9b98c 	ldr	x0, [x8]
004e9b990 	cbz	x0, #996 ; -> 0x4e9bd74 
004e9b994 	ldr	x1, [x20, #296]
004e9b998 	mov	w2, wzr
004e9b99c 	mov	x3, xzr
004e9b9a0 	bl	#-1342628 ; -> 0x4d53cfc DatabaseManager::GetStrAmount
004e9b9a4 	adrp	x26, #89448448 ; -> 0xa3e9000 
004e9b9a8 	mov	x2, xzr
004e9b9ac 	ldr	x26, [x26, #1536]
004e9b9b0 	ldr	x1, [x26]
004e9b9b4 	bl	#65209492 ; -> 0x8ccbe48 System.String::Concat
004e9b9b8 	cbz	x22, #956 ; -> 0x4e9bd74 
004e9b9bc 	ldr	x8, [x22]
004e9b9c0 	mov	x1, x0
004e9b9c4 	mov	x0, x22
004e9b9c8 	ldr	x9, [x8, #1512]
004e9b9cc 	ldr	x2, [x8, #1520]
004e9b9d0 	blr	x9
004e9b9d4 	ldr	x0, [x20, #248]
004e9b9d8 	cbz	x0, #924 ; -> 0x4e9bd74 
004e9b9dc 	ldr	x8, [x0]
004e9b9e0 	mov	w1, wzr
004e9b9e4 	ldr	x9, [x8, #712]
004e9b9e8 	ldr	x2, [x8, #720]
004e9b9ec 	blr	x9
004e9b9f0 	ldr	x22, [x20, #248]
004e9b9f4 	mov	x0, xzr
004e9b9f8 	bl	#78974996 ; -> 0x99eca0c UnityEngine.Color::get_gray
004e9b9fc 	cbz	x22, #888 ; -> 0x4e9bd74 
004e9ba00 	ldr	x8, [x22]
004e9ba04 	mov	x0, x22
004e9ba08 	ldr	x9, [x8, #680]
004e9ba0c 	ldr	x1, [x8, #688]
004e9ba10 	blr	x9
004e9ba14 	mov	x0, x20
004e9ba18 	bl	#-9060 ; -> 0x4e996b4 EquipmentSlotManager::PointerUp
004e9ba1c 	ldr	x22, [x20, #272]
004e9ba20 	mov	x0, xzr
004e9ba24 	bl	#-5737168 ; -> 0x4922f54 STR::get_WORD_MAX
004e9ba28 	cbz	x22, #844 ; -> 0x4e9bd74 
004e9ba2c 	ldr	x8, [x22]
004e9ba30 	mov	x1, x0
004e9ba34 	mov	x0, x22
004e9ba38 	ldr	x9, [x8, #1512]
004e9ba3c 	ldr	x2, [x8, #1520]
004e9ba40 	blr	x9
004e9ba44 	ldr	x8, [x27]
004e9ba48 	ldr	x8, [x8, #184]
004e9ba4c 	ldr	x0, [x8]
004e9ba50 	cbz	x0, #804 ; -> 0x4e9bd74 
004e9ba54 	ldr	d0, [x20, #296]
004e9ba58 	adrp	x8, #-49754112 ; -> 0x1f28000 
004e9ba5c 	mov	w2, #1
004e9ba60 	ldr	d8, [x8, #3864]
004e9ba64 	adrp	x8, #89477120 ; -> 0xa3f0000 
004e9ba68 	mov	x3, xzr
004e9ba6c 	scvtf	d0, d0
004e9ba70 	ldr	x8, [x8, #1200]
004e9ba74 	ldr	x22, [x20, #208]
004e9ba78 	ldr	x1, [x8]
004e9ba7c 	fmul	d0, d0, d8
004e9ba80 	bl	#-1342584 ; -> 0x4d53e08 DatabaseManager::GetStrAmount
004e9ba84 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9ba88 	mov	x24, x0
004e9ba8c 	ldr	x8, [x8, #2048]
004e9ba90 	ldr	x23, [x8]
004e9ba94 	adrp	x8, #89710592 ; -> 0xa429000 
004e9ba98 	ldr	x8, [x8, #3048]
004e9ba9c 	ldr	x9, [x23, #56]
004e9baa0 	ldr	x25, [x8]
004e9baa4 	cbnz	x9, #32 ; -> 0x4e9bac4 
004e9baa8 	adrp	x0, #89468928 ; -> 0xa3ee000 
004e9baac 	ldr	x0, [x0, #2056]
004e9bab0 	bl	#-9482320 ; -> 0x4590a60 
004e9bab4 	ldr	x8, [x23, #56]
004e9bab8 	cbnz	x8, #12 ; -> 0x4e9bac4 
004e9babc 	mov	x0, x23
004e9bac0 	bl	#-9251644 ; -> 0x45c8f84 
004e9bac4 	adrp	x8, #89468928 ; -> 0xa3ee000 
004e9bac8 	ldr	x8, [x8, #2056]
004e9bacc 	ldr	x0, [x8]
004e9bad0 	ldr	w8, [x0, #228]
004e9bad4 	cbnz	w8, #8 ; -> 0x4e9badc 
004e9bad8 	bl	#-9481976 ; -> 0x4590be0 
004e9badc 	ldr	x8, [x23, #56]
004e9bae0 	mov	x0, x25
004e9bae4 	mov	x1, x24
004e9bae8 	ldr	x2, [x8, #8]
004e9baec 	bl	#-7235912 ; -> 0x47b51a4 
004e9baf0 	cbz	x22, #644 ; -> 0x4e9bd74 
004e9baf4 	ldr	x8, [x22]
004e9baf8 	mov	x1, x0
004e9bafc 	mov	x0, x22
004e9bb00 	ldr	x9, [x8, #1512]
004e9bb04 	ldr	x2, [x8, #1520]
004e9bb08 	blr	x9
004e9bb0c 	tbz	w21, #0, #28 ; -> 0x4e9bb28 
004e9bb10 	ldr	d0, [x20, #296]
004e9bb14 	ldr	w1, [x19, #20]
004e9bb18 	mov	x0, x20
004e9bb1c 	scvtf	d0, d0
004e9bb20 	fmul	d0, d0, d8
004e9bb24 	bl	#2544 ; -> 0x4e9c514 EquipmentSlotManager::Equipment_HavePower_Atk_Renew
004e9bb28 	ldr	s0, [x19, #172]
004e9bb2c 	fcmp	s0, #0.0
004e9bb30 	b.eq	#240 ; -> 0x4e9bc20 
004e9bb34 	ldr	x0, [x27]
004e9bb38 	ldr	x22, [x20, #232]
004e9bb3c 	ldr	w8, [x0, #228]
004e9bb40 	cbnz	w8, #12 ; -> 0x4e9bb4c 
004e9bb44 	bl	#-9482084 ; -> 0x4590be0 
004e9bb48 	ldr	x0, [x27]
004e9bb4c 	ldr	x8, [x0, #184]
004e9bb50 	ldp	q0, q1, [x19, #32]
004e9bb54 	ldur	q2, [x19, #64]
004e9bb58 	add	x0, sp, #448
004e9bb5c 	mov	x1, xzr
004e9bb60 	ldr	x23, [x8]
004e9bb64 	ldr	w24, [x19, #20]
004e9bb68 	stp	q0, q1, [sp, #448]
004e9bb6c 	str	q2, [sp, #480]
004e9bb70 	bl	#-8097188 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bb74 	mov	w2, w0
004e9bb78 	mov	x0, x20
004e9bb7c 	mov	w1, w24
004e9bb80 	bl	#1348 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9bb84 	cbz	x23, #496 ; -> 0x4e9bd74 
004e9bb88 	adrp	x8, #89440256 ; -> 0xa3e7000 
004e9bb8c 	mov	x0, x23
004e9bb90 	mov	w2, #1
004e9bb94 	ldr	x8, [x8, #3440]
004e9bb98 	mov	x3, xzr
004e9bb9c 	ldr	x1, [x8]
004e9bba0 	bl	#-1342624 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9bba4 	adrp	x8, #89473024 ; -> 0xa3ef000 
004e9bba8 	mov	x1, x0
004e9bbac 	mov	x3, xzr
004e9bbb0 	ldr	x8, [x8, #3552]
004e9bbb4 	ldr	x2, [x26]
004e9bbb8 	ldr	x8, [x8]
004e9bbbc 	mov	x0, x8
004e9bbc0 	bl	#65266540 ; -> 0x8cd9f2c System.String::Concat
004e9bbc4 	cbz	x22, #432 ; -> 0x4e9bd74 
004e9bbc8 	ldr	x8, [x22]
004e9bbcc 	mov	x1, x0
004e9bbd0 	mov	x0, x22
004e9bbd4 	ldr	x9, [x8, #1512]
004e9bbd8 	ldr	x2, [x8, #1520]
004e9bbdc 	blr	x9
004e9bbe0 	tbz	w21, #0, #64 ; -> 0x4e9bc20 
004e9bbe4 	ldp	q0, q1, [x19, #32]
004e9bbe8 	add	x0, sp, #400
004e9bbec 	ldur	q2, [x19, #64]
004e9bbf0 	ldr	w22, [x19, #20]
004e9bbf4 	mov	x1, xzr
004e9bbf8 	stp	q0, q1, [sp, #400]
004e9bbfc 	str	q2, [sp, #432]
004e9bc00 	bl	#-8097332 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bc04 	mov	w2, w0
004e9bc08 	mov	x0, x20
004e9bc0c 	mov	w1, w22
004e9bc10 	bl	#1204 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9bc14 	mov	x0, x20
004e9bc18 	mov	w1, w22
004e9bc1c 	bl	#2616 ; -> 0x4e9c654 EquipmentSlotManager::Equipment_HavePower_Critical_Renew
004e9bc20 	ldr	s0, [x19, #176]
004e9bc24 	fcmp	s0, #0.0
004e9bc28 	b.eq	#240 ; -> 0x4e9bd18 
004e9bc2c 	ldr	x0, [x27]
004e9bc30 	ldr	x22, [x20, #240]
004e9bc34 	ldr	w8, [x0, #228]
004e9bc38 	cbnz	w8, #12 ; -> 0x4e9bc44 
004e9bc3c 	bl	#-9482332 ; -> 0x4590be0 
004e9bc40 	ldr	x0, [x27]
004e9bc44 	ldr	x8, [x0, #184]
004e9bc48 	ldp	q0, q1, [x19, #32]
004e9bc4c 	ldur	q2, [x19, #64]
004e9bc50 	add	x0, sp, #352
004e9bc54 	mov	x1, xzr
004e9bc58 	ldr	x23, [x8]
004e9bc5c 	ldr	w24, [x19, #20]
004e9bc60 	stp	q0, q1, [sp, #352]
004e9bc64 	str	q2, [sp, #384]
004e9bc68 	bl	#-8097436 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bc6c 	mov	w2, w0
004e9bc70 	mov	x0, x20
004e9bc74 	mov	w1, w24
004e9bc78 	bl	#1652 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9bc7c 	cbz	x23, #248 ; -> 0x4e9bd74 
004e9bc80 	adrp	x8, #89440256 ; -> 0xa3e7000 
004e9bc84 	mov	x0, x23
004e9bc88 	mov	w2, #1
004e9bc8c 	ldr	x8, [x8, #3440]
004e9bc90 	mov	x3, xzr
004e9bc94 	ldr	x1, [x8]
004e9bc98 	bl	#-1342872 ; -> 0x4d53f00 DatabaseManager::GetStrAmount
004e9bc9c 	adrp	x8, #89473024 ; -> 0xa3ef000 
004e9bca0 	mov	x1, x0
004e9bca4 	mov	x3, xzr
004e9bca8 	ldr	x8, [x8, #3552]
004e9bcac 	ldr	x2, [x26]
004e9bcb0 	ldr	x8, [x8]
004e9bcb4 	mov	x0, x8
004e9bcb8 	bl	#65266292 ; -> 0x8cd9f2c System.String::Concat
004e9bcbc 	cbz	x22, #184 ; -> 0x4e9bd74 
004e9bcc0 	ldr	x8, [x22]
004e9bcc4 	mov	x1, x0
004e9bcc8 	mov	x0, x22
004e9bccc 	ldr	x9, [x8, #1512]
004e9bcd0 	ldr	x2, [x8, #1520]
004e9bcd4 	blr	x9
004e9bcd8 	tbz	w21, #0, #64 ; -> 0x4e9bd18 
004e9bcdc 	ldp	q0, q1, [x19, #32]
004e9bce0 	add	x0, sp, #304
004e9bce4 	ldur	q2, [x19, #64]
004e9bce8 	ldr	w21, [x19, #20]
004e9bcec 	mov	x1, xzr
004e9bcf0 	stp	q0, q1, [sp, #304]
004e9bcf4 	str	q2, [sp, #336]
004e9bcf8 	bl	#-8097580 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9bcfc 	mov	w2, w0
004e9bd00 	mov	x0, x20
004e9bd04 	mov	w1, w21
004e9bd08 	bl	#1508 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9bd0c 	mov	x0, x20
004e9bd10 	mov	w1, w21
004e9bd14 	bl	#2688 ; -> 0x4e9c794 EquipmentSlotManager::Equipment_HavePower_GoldAmount_Renew
004e9bd18 	ldr	x0, [x20, #160]
004e9bd1c 	cbz	x0, #88 ; -> 0x4e9bd74 
004e9bd20 	mov	x1, x19
004e9bd24 	bl	#-17668 ; -> 0x4e97820 EquipmentDisplay::LevelSetting
004e9bd28 	ldr	x8, [x20, #56]
004e9bd2c 	cbz	x8, #72 ; -> 0x4e9bd74 
004e9bd30 	ldrsw	x9, [x19, #20]
004e9bd34 	ldr	w10, [x8, #24]
004e9bd38 	cmp	w9, w10
004e9bd3c 	b.hs	#60 ; -> 0x4e9bd78 
004e9bd40 	add	x8, x8, x9, lsl #3
004e9bd44 	ldr	x0, [x8, #32]
004e9bd48 	cbz	x0, #44 ; -> 0x4e9bd74 
004e9bd4c 	bl	#-14600 ; -> 0x4e98444 EquipmentSlot::LevelRenew
004e9bd50 	add	sp, sp, #688
004e9bd54 	ldp	x20, x19, [sp, #96]
004e9bd58 	ldp	x22, x21, [sp, #80]
004e9bd5c 	ldp	x24, x23, [sp, #64]
004e9bd60 	ldp	x26, x25, [sp, #48]
004e9bd64 	ldp	x28, x27, [sp, #32]
004e9bd68 	ldp	x29, x30, [sp, #16]
004e9bd6c 	ldp	d9, d8, [sp], #112
004e9bd70 	ret
004e9bd74 	bl	#-9482344 ; -> 0x4590d0c 
004e9bd78 	bl	#-9482340 ; -> 0x4590d14 
