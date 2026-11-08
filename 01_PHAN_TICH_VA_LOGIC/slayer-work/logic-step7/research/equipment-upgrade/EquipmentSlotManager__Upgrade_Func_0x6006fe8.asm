004e9d270 	str	x29, [sp, #-48]!
004e9d274 	stp	x30, x21, [sp, #16]
004e9d278 	stp	x20, x19, [sp, #32]
004e9d27c 	sub	sp, sp, #480
004e9d280 	adrp	x20, #97746944 ; -> 0xabd5000 
004e9d284 	mov	x19, x0
004e9d288 	ldrb	w8, [x20, #867]
004e9d28c 	tbnz	w8, #0, #60 ; -> 0x4e9d2c8 
004e9d290 	adrp	x0, #89464832 ; -> 0xa3ef000 
004e9d294 	ldr	x0, [x0, #616]
004e9d298 	bl	#-9488440 ; -> 0x4590a60 
004e9d29c 	adrp	x0, #89440256 ; -> 0xa3e9000 
004e9d2a0 	ldr	x0, [x0, #1384]
004e9d2a4 	bl	#-9488452 ; -> 0x4590a60 
004e9d2a8 	adrp	x0, #89436160 ; -> 0xa3e8000 
004e9d2ac 	ldr	x0, [x0, #2400]
004e9d2b0 	bl	#-9488464 ; -> 0x4590a60 
004e9d2b4 	adrp	x0, #89702400 ; -> 0xa429000 
004e9d2b8 	ldr	x0, [x0, #3112]
004e9d2bc 	bl	#-9488476 ; -> 0x4590a60 
004e9d2c0 	mov	w8, #1
004e9d2c4 	strb	w8, [x20, #867]
004e9d2c8 	mov	w0, #32290
004e9d2cc 	mov	x1, xzr
004e9d2d0 	bl	#-2448684 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9d2d4 	tbz	w0, #0, #48 ; -> 0x4e9d304 
004e9d2d8 	mov	w0, #32290
004e9d2dc 	mov	x1, xzr
004e9d2e0 	bl	#-2448520 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9d2e4 	cbz	x0, #868 ; -> 0x4e9d648 
004e9d2e8 	mov	x1, x19
004e9d2ec 	mov	x2, xzr
004e9d2f0 	add	sp, sp, #480
004e9d2f4 	ldp	x20, x19, [sp, #32]
004e9d2f8 	ldp	x30, x21, [sp, #16]
004e9d2fc 	ldr	x29, [sp], #48
004e9d300 	b	#-3272160 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e9d304 	ldr	x8, [x19, #288]
004e9d308 	cbz	x8, #832 ; -> 0x4e9d648 
004e9d30c 	ldrb	w9, [x8, #152]
004e9d310 	cbnz	w9, #804 ; -> 0x4e9d634 
004e9d314 	ldp	q0, q1, [x8, #32]
004e9d318 	add	x0, sp, #432
004e9d31c 	ldr	q2, [x8, #64]
004e9d320 	mov	x1, xzr
004e9d324 	stp	q0, q1, [sp, #432]
004e9d328 	str	q2, [sp, #464]
004e9d32c 	bl	#-8103264 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9d330 	mov	w20, w0
004e9d334 	mov	x0, x19
004e9d338 	bl	#-19508 ; -> 0x4e98704 EquipmentSlotManager::get_WeaponMaxLevel
004e9d33c 	cmp	w20, w0
004e9d340 	b.ge	#172 ; -> 0x4e9d3ec 
004e9d344 	adrp	x21, #89440256 ; -> 0xa3e9000 
004e9d348 	ldr	x21, [x21, #1384]
004e9d34c 	ldr	x0, [x21]
004e9d350 	ldr	w8, [x0, #228]
004e9d354 	cbnz	w8, #12 ; -> 0x4e9d360 
004e9d358 	bl	#-9488248 ; -> 0x4590be0 
004e9d35c 	ldr	x0, [x21]
004e9d360 	ldr	x8, [x0, #184]
004e9d364 	ldr	x0, [x8]
004e9d368 	cbz	x0, #736 ; -> 0x4e9d648 
004e9d36c 	add	x8, sp, #384
004e9d370 	mov	x1, xzr
004e9d374 	bl	#-1428260 ; -> 0x4d40850 DatabaseManager::get_UpgradeCube
004e9d378 	ldp	q0, q1, [sp, #384]
004e9d37c 	add	x0, sp, #336
004e9d380 	ldr	q2, [sp, #416]
004e9d384 	mov	x1, xzr
004e9d388 	stp	q0, q1, [sp, #336]
004e9d38c 	str	q2, [sp, #368]
004e9d390 	bl	#-8106820 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d394 	ldp	q0, q1, [x19, #304]
004e9d398 	mov	x20, x0
004e9d39c 	ldr	q2, [x19, #336]
004e9d3a0 	add	x0, sp, #288
004e9d3a4 	mov	x1, xzr
004e9d3a8 	stp	q0, q1, [sp, #288]
004e9d3ac 	str	q2, [sp, #320]
004e9d3b0 	bl	#-8106852 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d3b4 	cmp	x20, x0
004e9d3b8 	b.ge	#64 ; -> 0x4e9d3f8 
004e9d3bc 	adrp	x8, #89464832 ; -> 0xa3ef000 
004e9d3c0 	mov	x0, xzr
004e9d3c4 	ldr	x8, [x8, #616]
004e9d3c8 	ldr	x8, [x8]
004e9d3cc 	ldr	x8, [x8, #184]
004e9d3d0 	ldr	x20, [x8]
004e9d3d4 	bl	#-5732944 ; -> 0x4925984 STR::get_ALARM_TEXT_036
004e9d3d8 	cbz	x20, #624 ; -> 0x4e9d648 
004e9d3dc 	mov	x1, x0
004e9d3e0 	mov	x0, x20
004e9d3e4 	mov	x2, xzr
004e9d3e8 	bl	#-1751240 ; -> 0x4cf1b20 AlarmManager::AlarmText
004e9d3ec 	mov	x0, x19
004e9d3f0 	bl	#-15676 ; -> 0x4e996b4 EquipmentSlotManager::PointerUp
004e9d3f4 	b	#576 ; -> 0x4e9d634 
004e9d3f8 	ldp	q0, q1, [x19, #304]
004e9d3fc 	add	x0, sp, #240
004e9d400 	ldr	q2, [x19, #336]
004e9d404 	mov	x1, xzr
004e9d408 	stp	q0, q1, [sp, #240]
004e9d40c 	str	q2, [sp, #272]
004e9d410 	bl	#-8106948 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d414 	cmp	x0, #0
004e9d418 	b.le	#284 ; -> 0x4e9d534 
004e9d41c 	ldp	q0, q1, [x19, #304]
004e9d420 	add	x0, sp, #96
004e9d424 	ldr	q2, [x19, #336]
004e9d428 	mov	x1, xzr
004e9d42c 	stp	q0, q1, [sp, #96]
004e9d430 	str	q2, [sp, #128]
004e9d434 	bl	#-8106984 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d438 	cmp	x0, #999
004e9d43c 	b.gt	#480 ; -> 0x4e9d61c 
004e9d440 	ldr	x8, [x19, #288]
004e9d444 	cbz	x8, #516 ; -> 0x4e9d648 
004e9d448 	ldp	q0, q1, [x8, #32]
004e9d44c 	add	x0, sp, #48
004e9d450 	ldr	q2, [x8, #64]
004e9d454 	mov	x1, xzr
004e9d458 	stp	q0, q1, [sp, #48]
004e9d45c 	str	q2, [sp, #80]
004e9d460 	bl	#-8103572 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9d464 	cmp	w0, #150
004e9d468 	b.lt	#436 ; -> 0x4e9d61c 
004e9d46c 	ldr	w8, [x19, #400]
004e9d470 	add	w8, w8, #1
004e9d474 	cmp	w8, #5
004e9d478 	str	w8, [x19, #400]
004e9d47c 	b.gt	#416 ; -> 0x4e9d61c 
004e9d480 	ldr	x0, [x21]
004e9d484 	ldr	w8, [x0, #228]
004e9d488 	cbnz	w8, #12 ; -> 0x4e9d494 
004e9d48c 	bl	#-9488556 ; -> 0x4590be0 
004e9d490 	ldr	x0, [x21]
004e9d494 	ldr	x8, [x19, #288]
004e9d498 	cbz	x8, #432 ; -> 0x4e9d648 
004e9d49c 	adrp	x10, #89432064 ; -> 0xa3e7000 
004e9d4a0 	ldr	x9, [x0, #184]
004e9d4a4 	add	x1, sp, #492
004e9d4a8 	ldr	x10, [x10, #1248]
004e9d4ac 	ldr	w8, [x8, #20]
004e9d4b0 	ldr	x20, [x9]
004e9d4b4 	ldr	x0, [x10, #72]
004e9d4b8 	str	w8, [sp, #492]
004e9d4bc 	bl	#-9488596 ; -> 0x4590be8 
004e9d4c0 	ldr	x8, [x19, #288]
004e9d4c4 	cbz	x8, #388 ; -> 0x4e9d648 
004e9d4c8 	ldp	q0, q1, [x8, #32]
004e9d4cc 	mov	x21, x0
004e9d4d0 	ldr	q2, [x8, #64]
004e9d4d4 	adrp	x8, #89436160 ; -> 0xa3e8000 
004e9d4d8 	add	x1, sp, #192
004e9d4dc 	stp	q0, q1, [sp, #384]
004e9d4e0 	str	q2, [sp, #416]
004e9d4e4 	ldr	x8, [x8, #2400]
004e9d4e8 	stp	q0, q1, [sp, #192]
004e9d4ec 	str	q2, [sp, #224]
004e9d4f0 	ldr	x0, [x8]
004e9d4f4 	bl	#-9488652 ; -> 0x4590be8 
004e9d4f8 	adrp	x8, #89702400 ; -> 0xa429000 
004e9d4fc 	mov	x2, x0
004e9d500 	mov	x1, x21
004e9d504 	ldr	x8, [x8, #3112]
004e9d508 	mov	x3, xzr
004e9d50c 	ldr	x8, [x8]
004e9d510 	mov	x0, x8
004e9d514 	bl	#65263008 ; -> 0x8cdaab4 System.String::Format
004e9d518 	ldp	q0, q1, [x19, #304]
004e9d51c 	mov	x21, x0
004e9d520 	ldr	q2, [x19, #336]
004e9d524 	mov	x0, sp
004e9d528 	stp	q0, q1, [sp]
004e9d52c 	str	q2, [sp, #32]
004e9d530 	b	#200 ; -> 0x4e9d5f8 
004e9d534 	ldr	w8, [x19, #400]
004e9d538 	add	w8, w8, #1
004e9d53c 	cmp	w8, #5
004e9d540 	str	w8, [x19, #400]
004e9d544 	b.gt	#216 ; -> 0x4e9d61c 
004e9d548 	ldr	x0, [x21]
004e9d54c 	ldr	w8, [x0, #228]
004e9d550 	cbnz	w8, #12 ; -> 0x4e9d55c 
004e9d554 	bl	#-9488756 ; -> 0x4590be0 
004e9d558 	ldr	x0, [x21]
004e9d55c 	ldr	x8, [x19, #288]
004e9d560 	cbz	x8, #232 ; -> 0x4e9d648 
004e9d564 	adrp	x10, #89432064 ; -> 0xa3e7000 
004e9d568 	ldr	x9, [x0, #184]
004e9d56c 	add	x1, sp, #492
004e9d570 	ldr	x10, [x10, #1248]
004e9d574 	ldr	w8, [x8, #20]
004e9d578 	ldr	x20, [x9]
004e9d57c 	ldr	x0, [x10, #72]
004e9d580 	str	w8, [sp, #492]
004e9d584 	bl	#-9488796 ; -> 0x4590be8 
004e9d588 	ldr	x8, [x19, #288]
004e9d58c 	cbz	x8, #188 ; -> 0x4e9d648 
004e9d590 	ldp	q0, q1, [x8, #32]
004e9d594 	mov	x21, x0
004e9d598 	ldr	q2, [x8, #64]
004e9d59c 	adrp	x8, #89436160 ; -> 0xa3e8000 
004e9d5a0 	add	x1, sp, #192
004e9d5a4 	stp	q0, q1, [sp, #384]
004e9d5a8 	str	q2, [sp, #416]
004e9d5ac 	ldr	x8, [x8, #2400]
004e9d5b0 	stp	q0, q1, [sp, #192]
004e9d5b4 	str	q2, [sp, #224]
004e9d5b8 	ldr	x0, [x8]
004e9d5bc 	bl	#-9488852 ; -> 0x4590be8 
004e9d5c0 	adrp	x8, #89702400 ; -> 0xa429000 
004e9d5c4 	mov	x2, x0
004e9d5c8 	mov	x1, x21
004e9d5cc 	ldr	x8, [x8, #3112]
004e9d5d0 	mov	x3, xzr
004e9d5d4 	ldr	x8, [x8]
004e9d5d8 	mov	x0, x8
004e9d5dc 	bl	#65262808 ; -> 0x8cdaab4 System.String::Format
004e9d5e0 	ldp	q0, q1, [x19, #304]
004e9d5e4 	mov	x21, x0
004e9d5e8 	ldr	q2, [x19, #336]
004e9d5ec 	add	x0, sp, #144
004e9d5f0 	stp	q0, q1, [sp, #144]
004e9d5f4 	str	q2, [sp, #176]
004e9d5f8 	mov	x1, xzr
004e9d5fc 	bl	#-8107440 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
004e9d600 	cbz	x20, #72 ; -> 0x4e9d648 
004e9d604 	mov	x3, x0
004e9d608 	mov	x0, x20
004e9d60c 	mov	x1, x21
004e9d610 	mov	w2, #6
004e9d614 	mov	x4, xzr
004e9d618 	bl	#-1326084 ; -> 0x4d59a14 DatabaseManager::DataCheck_H
004e9d61c 	ldr	w8, [x19, #416]
004e9d620 	ldr	x1, [x19, #288]
004e9d624 	mov	x0, x19
004e9d628 	add	w8, w8, #1
004e9d62c 	str	w8, [x19, #416]
004e9d630 	bl	#28 ; -> 0x4e9d64c EquipmentSlotManager::ApplyEquipment
004e9d634 	add	sp, sp, #480
004e9d638 	ldp	x20, x19, [sp, #32]
004e9d63c 	ldp	x30, x21, [sp, #16]
004e9d640 	ldr	x29, [sp], #48
004e9d644 	ret
004e9d648 	bl	#-9488700 ; -> 0x4590d0c 
