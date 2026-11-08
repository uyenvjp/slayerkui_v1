004d4644c 	sub	sp, sp, #240
004d46450 	stp	x30, x23, [sp, #192]
004d46454 	stp	x22, x21, [sp, #208]
004d46458 	stp	x20, x19, [sp, #224]
004d4645c 	adrp	x23, #99147776 ; -> 0xabd4000 
004d46460 	mov	w19, w3
004d46464 	mov	w20, w2
004d46468 	ldrb	w8, [x23, #2822]
004d4646c 	mov	w21, w1
004d46470 	mov	x22, x0
004d46474 	tbnz	w8, #0, #96 ; -> 0x4d464d4 
004d46478 	adrp	x0, #91054080 ; -> 0xa41c000 
004d4647c 	ldr	x0, [x0, #712]
004d46480 	bl	#-8084000 ; -> 0x4590a60 
004d46484 	adrp	x0, #90865664 ; -> 0xa3ee000 
004d46488 	ldr	x0, [x0, #2104]
004d4648c 	bl	#-8084012 ; -> 0x4590a60 
004d46490 	adrp	x0, #90873856 ; -> 0xa3f0000 
004d46494 	ldr	x0, [x0, #40]
004d46498 	bl	#-8084024 ; -> 0x4590a60 
004d4649c 	adrp	x0, #90873856 ; -> 0xa3f0000 
004d464a0 	ldr	x0, [x0, #48]
004d464a4 	bl	#-8084036 ; -> 0x4590a60 
004d464a8 	adrp	x0, #90873856 ; -> 0xa3f0000 
004d464ac 	ldr	x0, [x0, #56]
004d464b0 	bl	#-8084048 ; -> 0x4590a60 
004d464b4 	adrp	x0, #90873856 ; -> 0xa3f0000 
004d464b8 	ldr	x0, [x0, #320]
004d464bc 	bl	#-8084060 ; -> 0x4590a60 
004d464c0 	adrp	x0, #91033600 ; -> 0xa417000 
004d464c4 	ldr	x0, [x0, #344]
004d464c8 	bl	#-8084072 ; -> 0x4590a60 
004d464cc 	mov	w8, #1
004d464d0 	strb	w8, [x23, #2822]
004d464d4 	mov	w0, #27275
004d464d8 	mov	x1, xzr
004d464dc 	bl	#-1044280 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d464e0 	tbz	w0, #0, #60 ; -> 0x4d4651c 
004d464e4 	mov	w0, #27275
004d464e8 	mov	x1, xzr
004d464ec 	bl	#-1044116 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d464f0 	cbz	x0, #844 ; -> 0x4d4683c 
004d464f4 	mov	x1, x22
004d464f8 	mov	w2, w21
004d464fc 	mov	w3, w20
004d46500 	mov	w4, w19
004d46504 	ldp	x20, x19, [sp, #224]
004d46508 	ldp	x22, x21, [sp, #208]
004d4650c 	mov	x5, xzr
004d46510 	ldp	x30, x23, [sp, #192]
004d46514 	add	sp, sp, #240
004d46518 	b	#-1531156 ; -> 0x4bd0804 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1609
004d4651c 	cmp	w21, #3
004d46520 	b.eq	#516 ; -> 0x4d46724 
004d46524 	cmp	w21, #2
004d46528 	b.eq	#260 ; -> 0x4d4662c 
004d4652c 	cmp	w21, #1
004d46530 	b.ne	#760 ; -> 0x4d46828 
004d46534 	adrp	x21, #90865664 ; -> 0xa3ee000 
004d46538 	ldr	x21, [x21, #2104]
004d4653c 	ldr	x0, [x21]
004d46540 	ldr	w8, [x0, #228]
004d46544 	cbnz	w8, #8 ; -> 0x4d4654c 
004d46548 	bl	#-8083816 ; -> 0x4590be0 
004d4654c 	adrp	x22, #99127296 ; -> 0xabcf000 
004d46550 	ldrb	w8, [x22, #360]
004d46554 	cbnz	w8, #24 ; -> 0x4d4656c 
004d46558 	adrp	x0, #90865664 ; -> 0xa3ee000 
004d4655c 	ldr	x0, [x0, #2104]
004d46560 	bl	#-8084224 ; -> 0x4590a60 
004d46564 	mov	w8, #1
004d46568 	strb	w8, [x22, #360]
004d4656c 	ldr	x0, [x21]
004d46570 	ldr	w8, [x0, #228]
004d46574 	cbnz	w8, #12 ; -> 0x4d46580 
004d46578 	bl	#-8083864 ; -> 0x4590be0 
004d4657c 	ldr	x0, [x21]
004d46580 	ldr	x8, [x0, #184]
004d46584 	ldr	x8, [x8]
004d46588 	cbz	x8, #692 ; -> 0x4d4683c 
004d4658c 	ldr	x0, [x8, #48]
004d46590 	cbz	x0, #684 ; -> 0x4d4683c 
004d46594 	adrp	x8, #90873856 ; -> 0xa3f0000 
004d46598 	mov	w1, w20
004d4659c 	ldr	x8, [x8, #48]
004d465a0 	ldr	x2, [x8]
004d465a4 	bl	#53551600 ; -> 0x8058794 
004d465a8 	cbz	x0, #660 ; -> 0x4d4683c 
004d465ac 	ldur	q0, [x0, #104]
004d465b0 	ldur	q1, [x0, #120]
004d465b4 	mov	x20, x0
004d465b8 	ldur	q2, [x0, #136]
004d465bc 	add	x0, sp, #144
004d465c0 	mov	x1, xzr
004d465c4 	stp	q0, q1, [sp, #144]
004d465c8 	str	q2, [sp, #176]
004d465cc 	bl	#-6699008 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d465d0 	sub	w0, w0, w19
004d465d4 	add	x8, sp, #96
004d465d8 	mov	x1, xzr
004d465dc 	bl	#-6727168 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d465e0 	ldp	q0, q1, [sp, #96]
004d465e4 	add	x0, x20, #104
004d465e8 	ldr	q2, [sp, #128]
004d465ec 	mov	x1, xzr
004d465f0 	stur	q0, [x20, #104]
004d465f4 	stur	q1, [x20, #120]
004d465f8 	stur	q2, [x20, #136]
004d465fc 	bl	#-8084472 ; -> 0x4590a04 
004d46600 	adrp	x8, #90873856 ; -> 0xa3f0000 
004d46604 	ldr	x8, [x8, #320]
004d46608 	ldr	x8, [x8]
004d4660c 	ldr	x8, [x8, #184]
004d46610 	ldr	x0, [x8]
004d46614 	cbz	x0, #552 ; -> 0x4d4683c 
004d46618 	mov	x1, x20
004d4661c 	mov	w2, wzr
004d46620 	mov	x3, xzr
004d46624 	bl	#1406600 ; -> 0x4e9dcac EquipmentSlotManager::EquipmentSlot_Renew
004d46628 	b	#512 ; -> 0x4d46828 
004d4662c 	adrp	x21, #90865664 ; -> 0xa3ee000 
004d46630 	ldr	x21, [x21, #2104]
004d46634 	ldr	x0, [x21]
004d46638 	ldr	w8, [x0, #228]
004d4663c 	cbnz	w8, #8 ; -> 0x4d46644 
004d46640 	bl	#-8084064 ; -> 0x4590be0 
004d46644 	adrp	x22, #99127296 ; -> 0xabcf000 
004d46648 	ldrb	w8, [x22, #360]
004d4664c 	cbnz	w8, #24 ; -> 0x4d46664 
004d46650 	adrp	x0, #90865664 ; -> 0xa3ee000 
004d46654 	ldr	x0, [x0, #2104]
004d46658 	bl	#-8084472 ; -> 0x4590a60 
004d4665c 	mov	w8, #1
004d46660 	strb	w8, [x22, #360]
004d46664 	ldr	x0, [x21]
004d46668 	ldr	w8, [x0, #228]
004d4666c 	cbnz	w8, #12 ; -> 0x4d46678 
004d46670 	bl	#-8084112 ; -> 0x4590be0 
004d46674 	ldr	x0, [x21]
004d46678 	ldr	x8, [x0, #184]
004d4667c 	ldr	x8, [x8]
004d46680 	cbz	x8, #444 ; -> 0x4d4683c 
004d46684 	ldr	x0, [x8, #40]
004d46688 	cbz	x0, #436 ; -> 0x4d4683c 
004d4668c 	adrp	x8, #90873856 ; -> 0xa3f0000 
004d46690 	mov	w1, w20
004d46694 	ldr	x8, [x8, #56]
004d46698 	ldr	x2, [x8]
004d4669c 	bl	#53551352 ; -> 0x8058794 
004d466a0 	cbz	x0, #412 ; -> 0x4d4683c 
004d466a4 	ldur	q0, [x0, #104]
004d466a8 	ldur	q1, [x0, #120]
004d466ac 	mov	x20, x0
004d466b0 	ldur	q2, [x0, #136]
004d466b4 	add	x0, sp, #48
004d466b8 	mov	x1, xzr
004d466bc 	stp	q0, q1, [sp, #48]
004d466c0 	str	q2, [sp, #80]
004d466c4 	bl	#-6699256 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d466c8 	sub	w0, w0, w19
004d466cc 	add	x8, sp, #96
004d466d0 	mov	x1, xzr
004d466d4 	bl	#-6727416 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d466d8 	ldp	q0, q1, [sp, #96]
004d466dc 	add	x0, x20, #104
004d466e0 	ldr	q2, [sp, #128]
004d466e4 	mov	x1, xzr
004d466e8 	stur	q0, [x20, #104]
004d466ec 	stur	q1, [x20, #120]
004d466f0 	stur	q2, [x20, #136]
004d466f4 	bl	#-8084720 ; -> 0x4590a04 
004d466f8 	adrp	x8, #91054080 ; -> 0xa41c000 
004d466fc 	ldr	x8, [x8, #712]
004d46700 	ldr	x8, [x8]
004d46704 	ldr	x8, [x8, #184]
004d46708 	ldr	x0, [x8]
004d4670c 	cbz	x0, #304 ; -> 0x4d4683c 
004d46710 	mov	x1, x20
004d46714 	mov	w2, wzr
004d46718 	mov	x3, xzr
004d4671c 	bl	#2260636 ; -> 0x4f6e5b8 AccessorySlotManager::AccessorySlot_Renew
004d46720 	b	#264 ; -> 0x4d46828 
004d46724 	adrp	x21, #90865664 ; -> 0xa3ee000 
004d46728 	ldr	x21, [x21, #2104]
004d4672c 	ldr	x0, [x21]
004d46730 	ldr	w8, [x0, #228]
004d46734 	cbnz	w8, #8 ; -> 0x4d4673c 
004d46738 	bl	#-8084312 ; -> 0x4590be0 
004d4673c 	adrp	x22, #99127296 ; -> 0xabcf000 
004d46740 	ldrb	w8, [x22, #360]
004d46744 	cbnz	w8, #24 ; -> 0x4d4675c 
004d46748 	adrp	x0, #90865664 ; -> 0xa3ee000 
004d4674c 	ldr	x0, [x0, #2104]
004d46750 	bl	#-8084720 ; -> 0x4590a60 
004d46754 	mov	w8, #1
004d46758 	strb	w8, [x22, #360]
004d4675c 	ldr	x0, [x21]
004d46760 	ldr	w8, [x0, #228]
004d46764 	cbnz	w8, #12 ; -> 0x4d46770 
004d46768 	bl	#-8084360 ; -> 0x4590be0 
004d4676c 	ldr	x0, [x21]
004d46770 	ldr	x8, [x0, #184]
004d46774 	ldr	x8, [x8]
004d46778 	cbz	x8, #196 ; -> 0x4d4683c 
004d4677c 	ldr	x0, [x8, #56]
004d46780 	cbz	x0, #188 ; -> 0x4d4683c 
004d46784 	adrp	x8, #90873856 ; -> 0xa3f0000 
004d46788 	mov	w1, w20
004d4678c 	ldr	x8, [x8, #40]
004d46790 	ldr	x2, [x8]
004d46794 	bl	#53551104 ; -> 0x8058794 
004d46798 	cbz	x0, #164 ; -> 0x4d4683c 
004d4679c 	ldur	q0, [x0, #104]
004d467a0 	ldur	q1, [x0, #120]
004d467a4 	mov	x20, x0
004d467a8 	ldur	q2, [x0, #136]
004d467ac 	mov	x0, sp
004d467b0 	mov	x1, xzr
004d467b4 	stp	q0, q1, [sp]
004d467b8 	str	q2, [sp, #32]
004d467bc 	bl	#-6699504 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d467c0 	sub	w0, w0, w19
004d467c4 	add	x8, sp, #96
004d467c8 	mov	x1, xzr
004d467cc 	bl	#-6727664 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004d467d0 	ldp	q0, q1, [sp, #96]
004d467d4 	add	x0, x20, #104
004d467d8 	ldr	q2, [sp, #128]
004d467dc 	mov	x1, xzr
004d467e0 	stur	q0, [x20, #104]
004d467e4 	stur	q1, [x20, #120]
004d467e8 	stur	q2, [x20, #136]
004d467ec 	bl	#-8084968 ; -> 0x4590a04 
004d467f0 	adrp	x19, #91033600 ; -> 0xa417000 
004d467f4 	ldr	x19, [x19, #344]
004d467f8 	ldr	x0, [x19]
004d467fc 	ldr	w8, [x0, #228]
004d46800 	cbnz	w8, #12 ; -> 0x4d4680c 
004d46804 	bl	#-8084516 ; -> 0x4590be0 
004d46808 	ldr	x0, [x19]
004d4680c 	ldr	x8, [x0, #184]
004d46810 	ldr	x0, [x8]
004d46814 	cbz	x0, #40 ; -> 0x4d4683c 
004d46818 	mov	x1, x20
004d4681c 	mov	w2, wzr
004d46820 	mov	x3, xzr
004d46824 	bl	#6499468 ; -> 0x53794b0 SlayerClassManager::SlayerClassSlot_Renew
004d46828 	ldp	x20, x19, [sp, #224]
004d4682c 	ldp	x22, x21, [sp, #208]
004d46830 	ldp	x30, x23, [sp, #192]
004d46834 	add	sp, sp, #240
004d46838 	ret
004d4683c 	bl	#-8084272 ; -> 0x4590d0c 
