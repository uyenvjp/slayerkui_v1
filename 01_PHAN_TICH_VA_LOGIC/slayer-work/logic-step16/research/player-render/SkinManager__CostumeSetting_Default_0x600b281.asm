00535f364 	sub	sp, sp, #144
00535f368 	stp	x30, x23, [sp, #96]
00535f36c 	stp	x22, x21, [sp, #112]
00535f370 	stp	x20, x19, [sp, #128]
00535f374 	adrp	x20, #92766208 ; -> 0xabd7000 
00535f378 	mov	x19, x0
00535f37c 	ldrb	w8, [x20, #1596]
00535f380 	tbnz	w8, #0, #72 ; -> 0x535f3c8 
00535f384 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f388 	ldr	x0, [x0, #2104]
00535f38c 	bl	#-14477612 ; -> 0x4590a60 
00535f390 	adrp	x0, #84451328 ; -> 0xa3e9000 
00535f394 	ldr	x0, [x0, #1384]
00535f398 	bl	#-14477624 ; -> 0x4590a60 
00535f39c 	adrp	x0, #84697088 ; -> 0xa425000 
00535f3a0 	ldr	x0, [x0, #504]
00535f3a4 	bl	#-14477636 ; -> 0x4590a60 
00535f3a8 	adrp	x0, #84480000 ; -> 0xa3f0000 
00535f3ac 	ldr	x0, [x0, #40]
00535f3b0 	bl	#-14477648 ; -> 0x4590a60 
00535f3b4 	adrp	x0, #84697088 ; -> 0xa425000 
00535f3b8 	ldr	x0, [x0, #520]
00535f3bc 	bl	#-14477660 ; -> 0x4590a60 
00535f3c0 	mov	w8, #1
00535f3c4 	strb	w8, [x20, #1596]
00535f3c8 	mov	w0, #24901
00535f3cc 	mov	x1, xzr
00535f3d0 	bl	#-7437868 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00535f3d4 	tbz	w0, #0, #48 ; -> 0x535f404 
00535f3d8 	mov	w0, #24901
00535f3dc 	mov	x1, xzr
00535f3e0 	bl	#-7437704 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00535f3e4 	cbz	x0, #896 ; -> 0x535f764 
00535f3e8 	mov	x1, x19
00535f3ec 	ldp	x20, x19, [sp, #128]
00535f3f0 	ldp	x22, x21, [sp, #112]
00535f3f4 	mov	x2, xzr
00535f3f8 	ldp	x30, x23, [sp, #96]
00535f3fc 	add	sp, sp, #144
00535f400 	b	#-8261344 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00535f404 	ldr	x0, [x19, #32]
00535f408 	cbz	x0, #860 ; -> 0x535f764 
00535f40c 	mov	x1, xzr
00535f410 	bl	#-6376388 ; -> 0x4d4a84c DatabaseManager::get_UsingSkin
00535f414 	tbz	w0, #0, #340 ; -> 0x535f568 
00535f418 	ldr	x0, [x19, #32]
00535f41c 	cbz	x0, #840 ; -> 0x535f764 
00535f420 	mov	x1, xzr
00535f424 	bl	#-6375676 ; -> 0x4d4ab28 DatabaseManager::get_Skin_CostumeIndex
00535f428 	mov	w1, w0
00535f42c 	mov	x0, x19
00535f430 	bl	#824 ; -> 0x535f768 SkinManager::CostumeSetting_CostumeIndex
00535f434 	adrp	x21, #84471808 ; -> 0xa3ee000 
00535f438 	ldr	x21, [x21, #2104]
00535f43c 	ldr	x23, [x19, #32]
00535f440 	ldr	x0, [x21]
00535f444 	ldr	w8, [x0, #228]
00535f448 	cbnz	w8, #8 ; -> 0x535f450 
00535f44c 	bl	#-14477420 ; -> 0x4590be0 
00535f450 	adrp	x22, #92733440 ; -> 0xabcf000 
00535f454 	ldrb	w8, [x22, #360]
00535f458 	cbnz	w8, #24 ; -> 0x535f470 
00535f45c 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f460 	ldr	x0, [x0, #2104]
00535f464 	bl	#-14477828 ; -> 0x4590a60 
00535f468 	mov	w8, #1
00535f46c 	strb	w8, [x22, #360]
00535f470 	ldr	x0, [x21]
00535f474 	ldr	w8, [x0, #228]
00535f478 	cbnz	w8, #12 ; -> 0x535f484 
00535f47c 	bl	#-14477468 ; -> 0x4590be0 
00535f480 	ldr	x0, [x21]
00535f484 	ldr	x8, [x0, #184]
00535f488 	ldr	x8, [x8]
00535f48c 	cbz	x8, #728 ; -> 0x535f764 
00535f490 	ldr	x0, [x19, #32]
00535f494 	cbz	x0, #720 ; -> 0x535f764 
00535f498 	ldr	x20, [x8, #512]
00535f49c 	mov	x1, xzr
00535f4a0 	bl	#-6375412 ; -> 0x4d4acac DatabaseManager::get_Skin_FaceDecoIndex
00535f4a4 	cbz	x20, #704 ; -> 0x535f764 
00535f4a8 	adrp	x8, #84697088 ; -> 0xa425000 
00535f4ac 	mov	w1, w0
00535f4b0 	mov	x0, x20
00535f4b4 	ldr	x8, [x8, #504]
00535f4b8 	ldr	x2, [x8]
00535f4bc 	bl	#47157976 ; -> 0x8058794 
00535f4c0 	cbz	x23, #676 ; -> 0x535f764 
00535f4c4 	mov	x1, x0
00535f4c8 	str	x0, [x23, #1552]
00535f4cc 	add	x0, x23, #1552
00535f4d0 	bl	#-14478028 ; -> 0x4590a04 
00535f4d4 	ldrb	w8, [x22, #360]
00535f4d8 	ldr	x20, [x19, #32]
00535f4dc 	cbnz	w8, #24 ; -> 0x535f4f4 
00535f4e0 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f4e4 	ldr	x0, [x0, #2104]
00535f4e8 	bl	#-14477960 ; -> 0x4590a60 
00535f4ec 	mov	w8, #1
00535f4f0 	strb	w8, [x22, #360]
00535f4f4 	ldr	x0, [x21]
00535f4f8 	ldr	w8, [x0, #228]
00535f4fc 	cbnz	w8, #12 ; -> 0x535f508 
00535f500 	bl	#-14477600 ; -> 0x4590be0 
00535f504 	ldr	x0, [x21]
00535f508 	ldr	x8, [x0, #184]
00535f50c 	ldr	x8, [x8]
00535f510 	cbz	x8, #596 ; -> 0x535f764 
00535f514 	ldr	x0, [x19, #32]
00535f518 	cbz	x0, #588 ; -> 0x535f764 
00535f51c 	ldr	x19, [x8, #520]
00535f520 	mov	x1, xzr
00535f524 	bl	#-6375456 ; -> 0x4d4ad04 DatabaseManager::get_Skin_EarringIndex
00535f528 	cbz	x19, #572 ; -> 0x535f764 
00535f52c 	adrp	x8, #84697088 ; -> 0xa425000 
00535f530 	mov	w1, w0
00535f534 	mov	x0, x19
00535f538 	ldr	x8, [x8, #520]
00535f53c 	ldr	x2, [x8]
00535f540 	bl	#47157844 ; -> 0x8058794 
00535f544 	cbz	x20, #544 ; -> 0x535f764 
00535f548 	mov	x1, x0
00535f54c 	add	x0, x20, #1560
00535f550 	str	x1, [x20, #1560]
00535f554 	ldp	x20, x19, [sp, #128]
00535f558 	ldp	x22, x21, [sp, #112]
00535f55c 	ldp	x30, x23, [sp, #96]
00535f560 	add	sp, sp, #144
00535f564 	b	#-14478176 ; -> 0x4590a04 
00535f568 	adrp	x22, #84471808 ; -> 0xa3ee000 
00535f56c 	ldr	x22, [x22, #2104]
00535f570 	ldr	x0, [x22]
00535f574 	ldr	w8, [x0, #228]
00535f578 	cbnz	w8, #8 ; -> 0x535f580 
00535f57c 	bl	#-14477724 ; -> 0x4590be0 
00535f580 	adrp	x23, #92733440 ; -> 0xabcf000 
00535f584 	ldrb	w8, [x23, #360]
00535f588 	cbnz	w8, #24 ; -> 0x535f5a0 
00535f58c 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f590 	ldr	x0, [x0, #2104]
00535f594 	bl	#-14478132 ; -> 0x4590a60 
00535f598 	mov	w8, #1
00535f59c 	strb	w8, [x23, #360]
00535f5a0 	ldr	x0, [x22]
00535f5a4 	ldr	w8, [x0, #228]
00535f5a8 	cbnz	w8, #12 ; -> 0x535f5b4 
00535f5ac 	bl	#-14477772 ; -> 0x4590be0 
00535f5b0 	ldr	x0, [x22]
00535f5b4 	ldr	x8, [x0, #184]
00535f5b8 	ldr	x8, [x8]
00535f5bc 	cbz	x8, #424 ; -> 0x535f764 
00535f5c0 	ldr	x9, [x19, #32]
00535f5c4 	cbz	x9, #416 ; -> 0x535f764 
00535f5c8 	ldr	q0, [x9, #2896]
00535f5cc 	ldr	q1, [x9, #2912]
00535f5d0 	add	x0, sp, #48
00535f5d4 	ldr	q2, [x9, #2928]
00535f5d8 	ldr	x20, [x8, #56]
00535f5dc 	mov	x1, xzr
00535f5e0 	stp	q0, q1, [sp, #48]
00535f5e4 	str	q2, [sp, #80]
00535f5e8 	bl	#-13092892 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00535f5ec 	cbz	x20, #376 ; -> 0x535f764 
00535f5f0 	adrp	x8, #84480000 ; -> 0xa3f0000 
00535f5f4 	mov	w1, w0
00535f5f8 	mov	x0, x20
00535f5fc 	ldr	x8, [x8, #40]
00535f600 	ldr	x2, [x8]
00535f604 	bl	#47157648 ; -> 0x8058794 
00535f608 	ldr	x8, [x19, #32]
00535f60c 	cbz	x8, #344 ; -> 0x535f764 
00535f610 	ldr	q0, [x8, #2272]
00535f614 	ldr	q1, [x8, #2288]
00535f618 	mov	x20, x0
00535f61c 	ldr	q2, [x8, #2304]
00535f620 	mov	x0, sp
00535f624 	mov	x1, xzr
00535f628 	stp	q0, q1, [sp]
00535f62c 	str	q2, [sp, #32]
00535f630 	bl	#-13092964 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
00535f634 	adrp	x8, #84451328 ; -> 0xa3e9000 
00535f638 	mov	w21, w0
00535f63c 	ldr	x8, [x8, #1384]
00535f640 	ldr	x8, [x8]
00535f644 	ldr	w9, [x8, #228]
00535f648 	cbnz	w9, #12 ; -> 0x535f654 
00535f64c 	mov	x0, x8
00535f650 	bl	#-14477936 ; -> 0x4590be0 
00535f654 	mov	x0, x20
00535f658 	mov	w1, w21
00535f65c 	mov	x2, xzr
00535f660 	bl	#-6369024 ; -> 0x4d4c760 DatabaseManager::SlayerClass_SkinIndex
00535f664 	mov	w1, w0
00535f668 	mov	x0, x19
00535f66c 	bl	#252 ; -> 0x535f768 SkinManager::CostumeSetting_CostumeIndex
00535f670 	ldrb	w8, [x23, #360]
00535f674 	ldr	x20, [x19, #32]
00535f678 	cbnz	w8, #24 ; -> 0x535f690 
00535f67c 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f680 	ldr	x0, [x0, #2104]
00535f684 	bl	#-14478372 ; -> 0x4590a60 
00535f688 	mov	w8, #1
00535f68c 	strb	w8, [x23, #360]
00535f690 	ldr	x0, [x22]
00535f694 	ldr	w8, [x0, #228]
00535f698 	cbnz	w8, #12 ; -> 0x535f6a4 
00535f69c 	bl	#-14478012 ; -> 0x4590be0 
00535f6a0 	ldr	x0, [x22]
00535f6a4 	ldr	x8, [x0, #184]
00535f6a8 	ldr	x8, [x8]
00535f6ac 	cbz	x8, #184 ; -> 0x535f764 
00535f6b0 	ldr	x0, [x8, #512]
00535f6b4 	cbz	x0, #176 ; -> 0x535f764 
00535f6b8 	adrp	x8, #84697088 ; -> 0xa425000 
00535f6bc 	mov	w1, wzr
00535f6c0 	ldr	x8, [x8, #504]
00535f6c4 	ldr	x2, [x8]
00535f6c8 	bl	#47157452 ; -> 0x8058794 
00535f6cc 	cbz	x20, #152 ; -> 0x535f764 
00535f6d0 	mov	x1, x0
00535f6d4 	str	x0, [x20, #1552]
00535f6d8 	add	x0, x20, #1552
00535f6dc 	bl	#-14478552 ; -> 0x4590a04 
00535f6e0 	ldrb	w8, [x23, #360]
00535f6e4 	ldr	x19, [x19, #32]
00535f6e8 	cbnz	w8, #24 ; -> 0x535f700 
00535f6ec 	adrp	x0, #84471808 ; -> 0xa3ee000 
00535f6f0 	ldr	x0, [x0, #2104]
00535f6f4 	bl	#-14478484 ; -> 0x4590a60 
00535f6f8 	mov	w8, #1
00535f6fc 	strb	w8, [x23, #360]
00535f700 	ldr	x0, [x22]
00535f704 	ldr	w8, [x0, #228]
00535f708 	cbnz	w8, #12 ; -> 0x535f714 
00535f70c 	bl	#-14478124 ; -> 0x4590be0 
00535f710 	ldr	x0, [x22]
00535f714 	ldr	x8, [x0, #184]
00535f718 	ldr	x8, [x8]
00535f71c 	cbz	x8, #72 ; -> 0x535f764 
00535f720 	ldr	x0, [x8, #520]
00535f724 	cbz	x0, #64 ; -> 0x535f764 
00535f728 	adrp	x8, #84697088 ; -> 0xa425000 
00535f72c 	mov	w1, wzr
00535f730 	ldr	x8, [x8, #520]
00535f734 	ldr	x2, [x8]
00535f738 	bl	#47157340 ; -> 0x8058794 
00535f73c 	cbz	x19, #40 ; -> 0x535f764 
00535f740 	mov	x1, x0
00535f744 	str	x0, [x19, #1560]
00535f748 	add	x0, x19, #1560
00535f74c 	bl	#-14478664 ; -> 0x4590a04 
00535f750 	ldp	x20, x19, [sp, #128]
00535f754 	ldp	x22, x21, [sp, #112]
00535f758 	ldp	x30, x23, [sp, #96]
00535f75c 	add	sp, sp, #144
00535f760 	ret
00535f764 	bl	#-14477912 ; -> 0x4590d0c 
