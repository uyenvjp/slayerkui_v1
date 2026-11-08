004f1758c 	sub	sp, sp, #128
004f17590 	str	x30, [sp, #96]
004f17594 	stp	x20, x19, [sp, #112]
004f17598 	adrp	x20, #97247232 ; -> 0xabd5000 
004f1759c 	mov	x19, x0
004f175a0 	ldrb	w8, [x20, #1720]
004f175a4 	tbnz	w8, #0, #24 ; -> 0x4f175bc 
004f175a8 	adrp	x0, #88969216 ; -> 0xa3f0000 
004f175ac 	ldr	x0, [x0, #472]
004f175b0 	bl	#-9988944 ; -> 0x4590a60 
004f175b4 	mov	w8, #1
004f175b8 	strb	w8, [x20, #1720]
004f175bc 	mov	w0, #33184
004f175c0 	mov	x1, xzr
004f175c4 	bl	#-2949152 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f175c8 	tbz	w0, #0, #44 ; -> 0x4f175f4 
004f175cc 	mov	w0, #33184
004f175d0 	mov	x1, xzr
004f175d4 	bl	#-2948988 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f175d8 	cbz	x0, #144 ; -> 0x4f17668 
004f175dc 	mov	x1, x19
004f175e0 	ldp	x20, x19, [sp, #112]
004f175e4 	ldr	x30, [sp, #96]
004f175e8 	mov	x2, xzr
004f175ec 	add	sp, sp, #128
004f175f0 	b	#-3772624 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f175f4 	mov	x0, x19
004f175f8 	bl	#-2988 ; -> 0x4f16a4c StatManager::LevelDisplay
004f175fc 	ldr	x19, [x19, #144]
004f17600 	cbz	x19, #104 ; -> 0x4f17668 
004f17604 	add	x8, sp, #48
004f17608 	mov	w0, #20
004f1760c 	mov	x1, xzr
004f17610 	bl	#-8631860 ; -> 0x46dbfdc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f17614 	ldp	q0, q1, [sp, #48]
004f17618 	add	x0, x19, #168
004f1761c 	ldr	q2, [sp, #80]
004f17620 	mov	x1, sp
004f17624 	mov	x2, xzr
004f17628 	stp	q0, q1, [sp]
004f1762c 	str	q2, [sp, #32]
004f17630 	bl	#-8603708 ; -> 0x46e2df4 Liapp.SecureVariable.LiappSecureInt::Equals
004f17634 	tbz	w0, #0, #36 ; -> 0x4f17658 
004f17638 	adrp	x8, #88969216 ; -> 0xa3f0000 
004f1763c 	ldr	x8, [x8, #472]
004f17640 	ldr	x8, [x8]
004f17644 	ldr	x8, [x8, #184]
004f17648 	ldr	x0, [x8]
004f1764c 	cbz	x0, #28 ; -> 0x4f17668 
004f17650 	mov	x1, xzr
004f17654 	bl	#-550556 ; -> 0x4e90fb8 DailyTimeManager::Package0_Setting
004f17658 	ldp	x20, x19, [sp, #112]
004f1765c 	ldr	x30, [sp, #96]
004f17660 	add	sp, sp, #128
004f17664 	ret
004f17668 	bl	#-9988444 ; -> 0x4590d0c 
