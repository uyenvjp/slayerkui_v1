004e7eb78 	sub	sp, sp, #464
004e7eb7c 	str	x29, [sp, #384]
004e7eb80 	stp	x30, x25, [sp, #400]
004e7eb84 	stp	x24, x23, [sp, #416]
004e7eb88 	stp	x22, x21, [sp, #432]
004e7eb8c 	stp	x20, x19, [sp, #448]
004e7eb90 	adrp	x20, #97873920 ; -> 0xabd5000 
004e7eb94 	mov	x19, x0
004e7eb98 	ldrb	w8, [x20, #654]
004e7eb9c 	tbnz	w8, #0, #168 ; -> 0x4e7ec44 
004e7eba0 	adrp	x0, #89825280 ; -> 0xa428000 
004e7eba4 	ldr	x0, [x0, #2072]
004e7eba8 	bl	#-9363784 ; -> 0x4590a60 
004e7ebac 	adrp	x0, #89825280 ; -> 0xa428000 
004e7ebb0 	ldr	x0, [x0, #2040]
004e7ebb4 	bl	#-9363796 ; -> 0x4590a60 
004e7ebb8 	adrp	x0, #89587712 ; -> 0xa3ee000 
004e7ebbc 	ldr	x0, [x0, #2072]
004e7ebc0 	bl	#-9363808 ; -> 0x4590a60 
004e7ebc4 	adrp	x0, #89591808 ; -> 0xa3ef000 
004e7ebc8 	ldr	x0, [x0, #3120]
004e7ebcc 	bl	#-9363820 ; -> 0x4590a60 
004e7ebd0 	adrp	x0, #89825280 ; -> 0xa428000 
004e7ebd4 	ldr	x0, [x0, #2696]
004e7ebd8 	bl	#-9363832 ; -> 0x4590a60 
004e7ebdc 	adrp	x0, #89751552 ; -> 0xa416000 
004e7ebe0 	ldr	x0, [x0, #1664]
004e7ebe4 	bl	#-9363844 ; -> 0x4590a60 
004e7ebe8 	adrp	x0, #89755648 ; -> 0xa417000 
004e7ebec 	ldr	x0, [x0, #344]
004e7ebf0 	bl	#-9363856 ; -> 0x4590a60 
004e7ebf4 	adrp	x0, #89591808 ; -> 0xa3ef000 
004e7ebf8 	ldr	x0, [x0, #3424]
004e7ebfc 	bl	#-9363868 ; -> 0x4590a60 
004e7ec00 	adrp	x0, #89829376 ; -> 0xa429000 
004e7ec04 	ldr	x0, [x0, #1296]
004e7ec08 	bl	#-9363880 ; -> 0x4590a60 
004e7ec0c 	adrp	x0, #89829376 ; -> 0xa429000 
004e7ec10 	ldr	x0, [x0, #1304]
004e7ec14 	bl	#-9363892 ; -> 0x4590a60 
004e7ec18 	adrp	x0, #89825280 ; -> 0xa428000 
004e7ec1c 	ldr	x0, [x0, #2456]
004e7ec20 	bl	#-9363904 ; -> 0x4590a60 
004e7ec24 	adrp	x0, #89825280 ; -> 0xa428000 
004e7ec28 	ldr	x0, [x0, #2688]
004e7ec2c 	bl	#-9363916 ; -> 0x4590a60 
004e7ec30 	adrp	x0, #89825280 ; -> 0xa428000 
004e7ec34 	ldr	x0, [x0, #2048]
004e7ec38 	bl	#-9363928 ; -> 0x4590a60 
004e7ec3c 	mov	w8, #1
004e7ec40 	strb	w8, [x20, #654]
004e7ec44 	ldrb	w8, [x19, #28]
004e7ec48 	cbz	w8, #276 ; -> 0x4e7ed5c 
004e7ec4c 	adrp	x8, #89825280 ; -> 0xa428000 
004e7ec50 	ldr	x8, [x8, #2696]
004e7ec54 	ldr	x8, [x8]
004e7ec58 	ldr	x8, [x8, #184]
004e7ec5c 	ldr	x0, [x8]
004e7ec60 	cbz	x0, #1236 ; -> 0x4e7f134 
004e7ec64 	adrp	x20, #89751552 ; -> 0xa416000 
004e7ec68 	mov	x1, xzr
004e7ec6c 	ldr	x20, [x20, #1664]
004e7ec70 	bl	#3969072 ; -> 0x5247ca0 PlayerClassManager::CheckReddot
004e7ec74 	ldr	x8, [x20]
004e7ec78 	ldr	x8, [x8, #184]
004e7ec7c 	ldr	x0, [x8]
004e7ec80 	cbz	x0, #1204 ; -> 0x4e7f134 
004e7ec84 	mov	x1, xzr
004e7ec88 	bl	#4166888 ; -> 0x5278170 QuestManager::CheckMiddleSlayer
004e7ec8c 	ldr	x8, [x20]
004e7ec90 	ldr	x8, [x8, #184]
004e7ec94 	ldr	x0, [x8]
004e7ec98 	cbz	x0, #1180 ; -> 0x4e7f134 
004e7ec9c 	mov	x1, xzr
004e7eca0 	bl	#4167908 ; -> 0x5278584 QuestManager::CheckHighSlayer
004e7eca4 	adrp	x20, #97849344 ; -> 0xabcf000 
004e7eca8 	ldrb	w8, [x20, #1537]
004e7ecac 	cbnz	w8, #24 ; -> 0x4e7ecc4 
004e7ecb0 	adrp	x0, #89604096 ; -> 0xa3f2000 
004e7ecb4 	ldr	x0, [x0, #3960]
004e7ecb8 	bl	#-9364056 ; -> 0x4590a60 
004e7ecbc 	mov	w8, #1
004e7ecc0 	strb	w8, [x20, #1537]
004e7ecc4 	adrp	x21, #89604096 ; -> 0xa3f2000 
004e7ecc8 	ldr	x21, [x21, #3960]
004e7eccc 	ldr	x8, [x21]
004e7ecd0 	ldr	x8, [x8, #184]
004e7ecd4 	ldr	x0, [x8]
004e7ecd8 	cbz	x0, #1116 ; -> 0x4e7f134 
004e7ecdc 	mov	w1, #3
004e7ece0 	mov	x2, xzr
004e7ece4 	bl	#4085972 ; -> 0x52645b8 PromotionPackageBundleManager::SetFlameSlashSubCondition
004e7ece8 	ldrb	w8, [x20, #1537]
004e7ecec 	cbnz	w8, #24 ; -> 0x4e7ed04 
004e7ecf0 	adrp	x0, #89604096 ; -> 0xa3f2000 
004e7ecf4 	ldr	x0, [x0, #3960]
004e7ecf8 	bl	#-9364120 ; -> 0x4590a60 
004e7ecfc 	mov	w8, #1
004e7ed00 	strb	w8, [x20, #1537]
004e7ed04 	ldr	x8, [x21]
004e7ed08 	ldr	x8, [x8, #184]
004e7ed0c 	ldr	x0, [x8]
004e7ed10 	cbz	x0, #1060 ; -> 0x4e7f134 
004e7ed14 	mov	w1, #3
004e7ed18 	mov	x2, xzr
004e7ed1c 	bl	#4088908 ; -> 0x5265168 PromotionPackageBundleManager::SetSalaSubCondition
004e7ed20 	mov	x0, xzr
004e7ed24 	bl	#3799048 ; -> 0x521e52c NewUserGrowthManager::get_Instance
004e7ed28 	cbz	x0, #1036 ; -> 0x4e7f134 
004e7ed2c 	mov	x1, xzr
004e7ed30 	bl	#3799212 ; -> 0x521e5dc NewUserGrowthManager::IsRewardPossible
004e7ed34 	tbz	w0, #0, #40 ; -> 0x4e7ed5c 
004e7ed38 	adrp	x8, #89591808 ; -> 0xa3ef000 
004e7ed3c 	ldr	x8, [x8, #3120]
004e7ed40 	ldr	x8, [x8]
004e7ed44 	ldr	x8, [x8, #184]
004e7ed48 	ldr	x0, [x8]
004e7ed4c 	cbz	x0, #1000 ; -> 0x4e7f134 
004e7ed50 	mov	w1, #1
004e7ed54 	mov	x2, xzr
004e7ed58 	bl	#3786528 ; -> 0x521b478 MailBoxManager::MailBoxNotice_Check
004e7ed5c 	adrp	x8, #89825280 ; -> 0xa428000 
004e7ed60 	ldr	x8, [x8, #2688]
004e7ed64 	ldr	x8, [x8]
004e7ed68 	ldr	x8, [x8, #184]
004e7ed6c 	ldr	x0, [x8]
004e7ed70 	cbz	x0, #964 ; -> 0x4e7f134 
004e7ed74 	adrp	x20, #89591808 ; -> 0xa3ef000 
004e7ed78 	mov	x1, xzr
004e7ed7c 	ldr	x20, [x20, #3424]
004e7ed80 	bl	#954836 ; -> 0x4f67f54 UpgradeSlotManager::Upgrade_LevelCheck
004e7ed84 	ldr	x8, [x20]
004e7ed88 	ldr	x8, [x8, #184]
004e7ed8c 	ldr	x0, [x8]
004e7ed90 	cbz	x0, #932 ; -> 0x4e7f134 
004e7ed94 	mov	x1, xzr
004e7ed98 	bl	#633032 ; -> 0x4f19660 StatManager::Stat_LevelCheck
004e7ed9c 	ldr	x8, [x19, #16]
004e7eda0 	cbz	x8, #916 ; -> 0x4e7f134 
004e7eda4 	ldr	x8, [x8, #32]
004e7eda8 	cbz	x8, #908 ; -> 0x4e7f134 
004e7edac 	ldur	q0, [x8, #72]
004e7edb0 	ldur	q1, [x8, #88]
004e7edb4 	mov	w0, #120
004e7edb8 	ldur	q2, [x8, #104]
004e7edbc 	add	x8, sp, #288
004e7edc0 	mov	x1, xzr
004e7edc4 	stp	q0, q1, [sp, #336]
004e7edc8 	str	q2, [sp, #368]
004e7edcc 	bl	#-8007152 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e7edd0 	ldp	q0, q1, [sp, #336]
004e7edd4 	add	x0, sp, #240
004e7edd8 	ldr	q2, [sp, #368]
004e7eddc 	add	x1, sp, #192
004e7ede0 	mov	x2, xzr
004e7ede4 	stp	q0, q1, [sp, #240]
004e7ede8 	ldp	q0, q1, [sp, #288]
004e7edec 	str	q2, [sp, #272]
004e7edf0 	ldr	q2, [sp, #320]
004e7edf4 	stp	q0, q1, [sp, #192]
004e7edf8 	str	q2, [sp, #224]
004e7edfc 	bl	#-7978500 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e7ee00 	tbz	w0, #0, #52 ; -> 0x4e7ee34 
004e7ee04 	adrp	x20, #89755648 ; -> 0xa417000 
004e7ee08 	ldr	x20, [x20, #344]
004e7ee0c 	ldr	x0, [x20]
004e7ee10 	ldr	w8, [x0, #228]
004e7ee14 	cbnz	w8, #12 ; -> 0x4e7ee20 
004e7ee18 	bl	#-9364024 ; -> 0x4590be0 
004e7ee1c 	ldr	x0, [x20]
004e7ee20 	ldr	x8, [x0, #184]
004e7ee24 	ldr	x0, [x8]
004e7ee28 	cbz	x0, #780 ; -> 0x4e7f134 
004e7ee2c 	mov	x1, xzr
004e7ee30 	bl	#5202488 ; -> 0x5375068 SlayerClassManager::SlayerClass_OpenCheck
004e7ee34 	ldr	x20, [x19, #16]
004e7ee38 	cbz	x20, #764 ; -> 0x4e7f134 
004e7ee3c 	ldrb	w8, [x20, #336]
004e7ee40 	cbz	w8, #240 ; -> 0x4e7ef30 
004e7ee44 	ldr	x8, [x20, #32]
004e7ee48 	cbz	x8, #748 ; -> 0x4e7f134 
004e7ee4c 	ldur	q0, [x8, #72]
004e7ee50 	ldur	q1, [x8, #88]
004e7ee54 	mov	w0, #100
004e7ee58 	ldur	q2, [x8, #104]
004e7ee5c 	add	x8, sp, #288
004e7ee60 	mov	x1, xzr
004e7ee64 	stp	q0, q1, [sp, #336]
004e7ee68 	str	q2, [sp, #368]
004e7ee6c 	bl	#-8007312 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e7ee70 	ldp	q0, q1, [sp, #336]
004e7ee74 	add	x0, sp, #144
004e7ee78 	ldr	q2, [sp, #368]
004e7ee7c 	add	x1, sp, #96
004e7ee80 	mov	x2, xzr
004e7ee84 	stp	q0, q1, [sp, #144]
004e7ee88 	ldp	q0, q1, [sp, #288]
004e7ee8c 	str	q2, [sp, #176]
004e7ee90 	ldr	q2, [sp, #320]
004e7ee94 	stp	q0, q1, [sp, #96]
004e7ee98 	str	q2, [sp, #128]
004e7ee9c 	bl	#-7978660 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e7eea0 	tbz	w0, #0, #240 ; -> 0x4e7ef90 
004e7eea4 	adrp	x24, #89825280 ; -> 0xa428000 
004e7eea8 	ldr	x24, [x24, #2048]
004e7eeac 	ldr	x0, [x24]
004e7eeb0 	bl	#-9363892 ; -> 0x4590cfc 
004e7eeb4 	adrp	x8, #89829376 ; -> 0xa429000 
004e7eeb8 	mov	x1, x19
004e7eebc 	mov	x20, x0
004e7eec0 	ldr	x8, [x8, #1304]
004e7eec4 	ldr	x2, [x8]
004e7eec8 	bl	#-6504 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7eecc 	ldr	x0, [x24]
004e7eed0 	ldr	x21, [x19, #16]
004e7eed4 	bl	#-9363928 ; -> 0x4590cfc 
004e7eed8 	adrp	x8, #89825280 ; -> 0xa428000 
004e7eedc 	mov	x1, x21
004e7eee0 	mov	x22, x0
004e7eee4 	ldr	x8, [x8, #2040]
004e7eee8 	ldr	x2, [x8]
004e7eeec 	bl	#-6540 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7eef0 	ldr	x0, [x24]
004e7eef4 	ldr	x23, [x19, #16]
004e7eef8 	bl	#-9363964 ; -> 0x4590cfc 
004e7eefc 	adrp	x8, #89825280 ; -> 0xa428000 
004e7ef00 	mov	x1, x23
004e7ef04 	mov	x19, x0
004e7ef08 	ldr	x8, [x8, #2072]
004e7ef0c 	ldr	x2, [x8]
004e7ef10 	bl	#-6576 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7ef14 	cbz	x21, #544 ; -> 0x4e7f134 
004e7ef18 	mov	x0, x21
004e7ef1c 	mov	x1, xzr
004e7ef20 	mov	x2, x22
004e7ef24 	mov	x3, x19
004e7ef28 	mov	x4, x20
004e7ef2c 	b	#444 ; -> 0x4e7f0e8 
004e7ef30 	adrp	x22, #89825280 ; -> 0xa428000 
004e7ef34 	ldr	x22, [x22, #2048]
004e7ef38 	ldr	x0, [x22]
004e7ef3c 	bl	#-9364032 ; -> 0x4590cfc 
004e7ef40 	adrp	x8, #89825280 ; -> 0xa428000 
004e7ef44 	mov	x1, x20
004e7ef48 	mov	x21, x0
004e7ef4c 	ldr	x8, [x8, #2040]
004e7ef50 	ldr	x2, [x8]
004e7ef54 	bl	#-6644 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7ef58 	ldr	x0, [x22]
004e7ef5c 	ldr	x19, [x19, #16]
004e7ef60 	bl	#-9364068 ; -> 0x4590cfc 
004e7ef64 	adrp	x8, #89825280 ; -> 0xa428000 
004e7ef68 	mov	x1, x19
004e7ef6c 	mov	x22, x0
004e7ef70 	ldr	x8, [x8, #2072]
004e7ef74 	ldr	x2, [x8]
004e7ef78 	bl	#-6680 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7ef7c 	mov	x0, x20
004e7ef80 	mov	x1, xzr
004e7ef84 	mov	x2, x21
004e7ef88 	mov	x3, xzr
004e7ef8c 	b	#344 ; -> 0x4e7f0e4 
004e7ef90 	ldr	x8, [x19, #16]
004e7ef94 	cbz	x8, #416 ; -> 0x4e7f134 
004e7ef98 	ldr	x8, [x8, #32]
004e7ef9c 	cbz	x8, #408 ; -> 0x4e7f134 
004e7efa0 	ldur	q0, [x8, #72]
004e7efa4 	ldur	q1, [x8, #88]
004e7efa8 	mov	w0, #1000
004e7efac 	ldur	q2, [x8, #104]
004e7efb0 	add	x8, sp, #288
004e7efb4 	mov	x1, xzr
004e7efb8 	stp	q0, q1, [sp, #336]
004e7efbc 	str	q2, [sp, #368]
004e7efc0 	bl	#-8007652 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e7efc4 	ldp	q0, q1, [sp, #336]
004e7efc8 	add	x0, sp, #48
004e7efcc 	ldr	q2, [sp, #368]
004e7efd0 	mov	x1, sp
004e7efd4 	mov	x2, xzr
004e7efd8 	stp	q0, q1, [sp, #48]
004e7efdc 	ldp	q0, q1, [sp, #288]
004e7efe0 	str	q2, [sp, #80]
004e7efe4 	ldr	q2, [sp, #320]
004e7efe8 	stp	q0, q1, [sp]
004e7efec 	str	q2, [sp, #32]
004e7eff0 	bl	#-7979000 ; -> 0x46e2ff8 Liapp.SecureVariable.LiappSecureInt::op_Equality
004e7eff4 	ldr	x20, [x19, #16]
004e7eff8 	tbz	w0, #0, #24 ; -> 0x4e7f010 
004e7effc 	cbz	x20, #312 ; -> 0x4e7f134 
004e7f000 	mov	x0, x20
004e7f004 	mov	x1, xzr
004e7f008 	bl	#-208392 ; -> 0x4e4c200 GameManager::ClearStage1000
004e7f00c 	b	#232 ; -> 0x4e7f0f4 
004e7f010 	adrp	x24, #89821184 ; -> 0xa428000 
004e7f014 	ldr	x24, [x24, #2048]
004e7f018 	ldr	x0, [x24]
004e7f01c 	bl	#-9364256 ; -> 0x4590cfc 
004e7f020 	adrp	x8, #89821184 ; -> 0xa428000 
004e7f024 	mov	x1, x20
004e7f028 	mov	x21, x0
004e7f02c 	ldr	x8, [x8, #2040]
004e7f030 	ldr	x2, [x8]
004e7f034 	bl	#-6868 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7f038 	ldr	x0, [x24]
004e7f03c 	ldr	x22, [x19, #16]
004e7f040 	bl	#-9364292 ; -> 0x4590cfc 
004e7f044 	adrp	x8, #89821184 ; -> 0xa428000 
004e7f048 	mov	x1, x22
004e7f04c 	mov	x19, x0
004e7f050 	ldr	x8, [x8, #2072]
004e7f054 	ldr	x2, [x8]
004e7f058 	bl	#-6904 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7f05c 	adrp	x25, #89821184 ; -> 0xa428000 
004e7f060 	ldr	x25, [x25, #2456]
004e7f064 	ldr	x0, [x25]
004e7f068 	ldr	w8, [x0, #228]
004e7f06c 	cbnz	w8, #12 ; -> 0x4e7f078 
004e7f070 	bl	#-9364624 ; -> 0x4590be0 
004e7f074 	ldr	x0, [x25]
004e7f078 	ldr	x8, [x0, #184]
004e7f07c 	ldr	x22, [x8, #8]
004e7f080 	cbnz	x22, #80 ; -> 0x4e7f0d0 
004e7f084 	ldr	w9, [x0, #228]
004e7f088 	cbnz	w9, #16 ; -> 0x4e7f098 
004e7f08c 	bl	#-9364652 ; -> 0x4590be0 
004e7f090 	ldr	x8, [x25]
004e7f094 	ldr	x8, [x8, #184]
004e7f098 	ldr	x0, [x24]
004e7f09c 	ldr	x23, [x8]
004e7f0a0 	bl	#-9364388 ; -> 0x4590cfc 
004e7f0a4 	adrp	x8, #89825280 ; -> 0xa429000 
004e7f0a8 	mov	x1, x23
004e7f0ac 	mov	x22, x0
004e7f0b0 	ldr	x8, [x8, #1296]
004e7f0b4 	ldr	x2, [x8]
004e7f0b8 	bl	#-7000 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e7f0bc 	ldr	x8, [x25]
004e7f0c0 	mov	x1, x22
004e7f0c4 	ldr	x0, [x8, #184]
004e7f0c8 	str	x22, [x0, #8]!
004e7f0cc 	bl	#-9365192 ; -> 0x4590a04 
004e7f0d0 	cbz	x20, #100 ; -> 0x4e7f134 
004e7f0d4 	mov	x0, x20
004e7f0d8 	mov	x1, xzr
004e7f0dc 	mov	x2, x21
004e7f0e0 	mov	x3, x19
004e7f0e4 	mov	x4, x22
004e7f0e8 	mov	w5, #1
004e7f0ec 	mov	x6, xzr
004e7f0f0 	bl	#-235032 ; -> 0x4e45ad8 GameManager::SceneChange
004e7f0f4 	adrp	x8, #89583616 ; -> 0xa3ee000 
004e7f0f8 	ldr	x8, [x8, #2072]
004e7f0fc 	ldr	x8, [x8]
004e7f100 	ldr	x8, [x8, #184]
004e7f104 	ldr	x0, [x8]
004e7f108 	cbz	x0, #44 ; -> 0x4e7f134 
004e7f10c 	mov	w1, #21
004e7f110 	mov	x2, xzr
004e7f114 	bl	#4636256 ; -> 0x52eaf74 ImmortalTreeManager::CheckNotify
004e7f118 	ldp	x20, x19, [sp, #448]
004e7f11c 	ldr	x29, [sp, #384]
004e7f120 	ldp	x22, x21, [sp, #432]
004e7f124 	ldp	x24, x23, [sp, #416]
004e7f128 	ldp	x30, x25, [sp, #400]
004e7f12c 	add	sp, sp, #464
004e7f130 	ret
004e7f134 	bl	#-9364520 ; -> 0x4590d0c 
