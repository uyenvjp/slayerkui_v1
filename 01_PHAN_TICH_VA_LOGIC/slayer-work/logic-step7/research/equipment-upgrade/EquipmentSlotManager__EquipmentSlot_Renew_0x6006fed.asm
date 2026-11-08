004e9dcac 	sub	sp, sp, #304
004e9dcb0 	str	d8, [sp, #240]
004e9dcb4 	str	x29, [sp, #248]
004e9dcb8 	stp	x30, x23, [sp, #256]
004e9dcbc 	stp	x22, x21, [sp, #272]
004e9dcc0 	stp	x20, x19, [sp, #288]
004e9dcc4 	adrp	x22, #97746944 ; -> 0xabd5000 
004e9dcc8 	mov	w21, w2
004e9dccc 	mov	x19, x1
004e9dcd0 	ldrb	w8, [x22, #871]
004e9dcd4 	mov	x20, x0
004e9dcd8 	tbnz	w8, #0, #48 ; -> 0x4e9dd08 
004e9dcdc 	adrp	x0, #89677824 ; -> 0xa423000 
004e9dce0 	ldr	x0, [x0, #3752]
004e9dce4 	bl	#-9491076 ; -> 0x4590a60 
004e9dce8 	adrp	x0, #89702400 ; -> 0xa429000 
004e9dcec 	ldr	x0, [x0, #2984]
004e9dcf0 	bl	#-9491088 ; -> 0x4590a60 
004e9dcf4 	adrp	x0, #89702400 ; -> 0xa429000 
004e9dcf8 	ldr	x0, [x0, #3120]
004e9dcfc 	bl	#-9491100 ; -> 0x4590a60 
004e9dd00 	mov	w8, #1
004e9dd04 	strb	w8, [x22, #871]
004e9dd08 	mov	w0, #4408
004e9dd0c 	mov	x1, xzr
004e9dd10 	bl	#-2451308 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9dd14 	tbz	w0, #0, #64 ; -> 0x4e9dd54 
004e9dd18 	mov	w0, #4408
004e9dd1c 	mov	x1, xzr
004e9dd20 	bl	#-2451144 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9dd24 	cbz	x0, #732 ; -> 0x4e9e000 
004e9dd28 	and	w3, w21, #0x1
004e9dd2c 	mov	x1, x20
004e9dd30 	mov	x2, x19
004e9dd34 	ldp	x20, x19, [sp, #288]
004e9dd38 	ldr	x29, [sp, #248]
004e9dd3c 	ldp	x22, x21, [sp, #272]
004e9dd40 	ldr	d8, [sp, #240]
004e9dd44 	ldp	x30, x23, [sp, #256]
004e9dd48 	mov	x4, xzr
004e9dd4c 	add	sp, sp, #304
004e9dd50 	b	#-3226452 ; -> 0x4b8a1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_225
004e9dd54 	tbz	w21, #0, #612 ; -> 0x4e9dfb8 
004e9dd58 	cbz	x19, #680 ; -> 0x4e9e000 
004e9dd5c 	ldr	x8, [x20, #56]
004e9dd60 	cbz	x8, #672 ; -> 0x4e9e000 
004e9dd64 	ldrsw	x9, [x19, #20]
004e9dd68 	ldr	w10, [x8, #24]
004e9dd6c 	cmp	w9, w10
004e9dd70 	b.hs	#660 ; -> 0x4e9e004 
004e9dd74 	add	x8, x8, x9, lsl #3
004e9dd78 	ldr	x0, [x8, #32]
004e9dd7c 	cbz	x0, #644 ; -> 0x4e9e000 
004e9dd80 	bl	#-22920 ; -> 0x4e983f8 EquipmentSlot::OpenSetting
004e9dd84 	ldr	x8, [x20, #56]
004e9dd88 	cbz	x8, #632 ; -> 0x4e9e000 
004e9dd8c 	ldrsw	x9, [x19, #20]
004e9dd90 	ldr	w10, [x8, #24]
004e9dd94 	cmp	w9, w10
004e9dd98 	b.hs	#620 ; -> 0x4e9e004 
004e9dd9c 	add	x8, x8, x9, lsl #3
004e9dda0 	ldr	x8, [x8, #32]
004e9dda4 	cbz	x8, #604 ; -> 0x4e9e000 
004e9dda8 	ldr	x0, [x8, #64]
004e9ddac 	cbz	x0, #596 ; -> 0x4e9e000 
004e9ddb0 	mov	w1, #1
004e9ddb4 	mov	x2, xzr
004e9ddb8 	bl	#79060508 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e9ddbc 	ldr	x0, [x20, #376]
004e9ddc0 	cbz	x0, #576 ; -> 0x4e9e000 
004e9ddc4 	adrp	x8, #89702400 ; -> 0xa429000 
004e9ddc8 	ldr	x8, [x8, #3120]
004e9ddcc 	ldr	w1, [x19, #20]
004e9ddd0 	ldr	x2, [x8]
004e9ddd4 	bl	#52054300 ; -> 0x80426f0 
004e9ddd8 	tbnz	w0, #0, #468 ; -> 0x4e9dfac 
004e9dddc 	ldp	q0, q1, [x19, #32]
004e9dde0 	add	x0, sp, #192
004e9dde4 	ldr	q2, [x19, #64]
004e9dde8 	ldr	w21, [x19, #20]
004e9ddec 	mov	x1, xzr
004e9ddf0 	stp	q0, q1, [sp, #192]
004e9ddf4 	str	q2, [sp, #224]
004e9ddf8 	bl	#-8106028 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9ddfc 	mov	w2, w0
004e9de00 	mov	x0, x20
004e9de04 	mov	w1, w21
004e9de08 	bl	#-8032 ; -> 0x4e9bea8 EquipmentSlotManager::AtkValue_Cal
004e9de0c 	ldr	x22, [x20, #32]
004e9de10 	cbz	x22, #496 ; -> 0x4e9e000 
004e9de14 	mov	x21, x0
004e9de18 	add	x0, x22, #2432
004e9de1c 	mov	x1, xzr
004e9de20 	bl	#-3460380 ; -> 0x4b51104 SilentDouble::get_Value
004e9de24 	scvtf	d1, x21
004e9de28 	adrp	x8, #-49762304 ; -> 0x1f28000 
004e9de2c 	add	x0, x22, #2432
004e9de30 	ldr	d2, [x8, #3864]
004e9de34 	mov	x1, xzr
004e9de38 	fmul	d8, d1, d2
004e9de3c 	fadd	d0, d8, d0
004e9de40 	bl	#-3459460 ; -> 0x4b514bc SilentDouble::set_Value
004e9de44 	ldr	x0, [x20, #376]
004e9de48 	cbz	x0, #440 ; -> 0x4e9e000 
004e9de4c 	adrp	x8, #89702400 ; -> 0xa429000 
004e9de50 	fmov	d0, d8
004e9de54 	ldr	x8, [x8, #2984]
004e9de58 	ldr	w1, [x19, #20]
004e9de5c 	ldr	x2, [x8]
004e9de60 	bl	#52053656 ; -> 0x80424f8 
004e9de64 	ldr	x22, [x20, #32]
004e9de68 	cbz	x22, #408 ; -> 0x4e9e000 
004e9de6c 	add	x0, x22, #2496
004e9de70 	mov	x1, xzr
004e9de74 	bl	#-3458944 ; -> 0x4b516f4 SilentFloat::get_Value
004e9de78 	fmov	s8, s0
004e9de7c 	ldp	q0, q1, [x19, #32]
004e9de80 	ldur	q2, [x19, #64]
004e9de84 	ldr	w21, [x19, #20]
004e9de88 	add	x0, sp, #144
004e9de8c 	mov	x1, xzr
004e9de90 	stp	q0, q1, [sp, #144]
004e9de94 	str	q2, [sp, #176]
004e9de98 	bl	#-8106188 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9de9c 	mov	w2, w0
004e9dea0 	mov	x0, x20
004e9dea4 	mov	w1, w21
004e9dea8 	bl	#-7652 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9deac 	fadd	s0, s8, s0
004e9deb0 	add	x0, x22, #2496
004e9deb4 	mov	x1, xzr
004e9deb8 	bl	#-3457792 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9debc 	ldp	q0, q1, [x19, #32]
004e9dec0 	add	x0, sp, #96
004e9dec4 	ldur	q2, [x19, #64]
004e9dec8 	ldr	x21, [x20, #384]
004e9decc 	mov	x1, xzr
004e9ded0 	ldr	w22, [x19, #20]
004e9ded4 	stp	q0, q1, [sp, #96]
004e9ded8 	str	q2, [sp, #128]
004e9dedc 	bl	#-8106256 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9dee0 	mov	w2, w0
004e9dee4 	mov	x0, x20
004e9dee8 	mov	w1, w22
004e9deec 	bl	#-7720 ; -> 0x4e9c0c4 EquipmentSlotManager::HavePowerCritical_Cal
004e9def0 	cbz	x21, #272 ; -> 0x4e9e000 
004e9def4 	adrp	x23, #89677824 ; -> 0xa423000 
004e9def8 	mov	x0, x21
004e9defc 	mov	w1, w22
004e9df00 	ldr	x23, [x23, #3752]
004e9df04 	ldr	x2, [x23]
004e9df08 	bl	#52170764 ; -> 0x805ef14 
004e9df0c 	ldr	x22, [x20, #32]
004e9df10 	cbz	x22, #240 ; -> 0x4e9e000 
004e9df14 	add	x0, x22, #2568
004e9df18 	mov	x1, xzr
004e9df1c 	bl	#-3459112 ; -> 0x4b516f4 SilentFloat::get_Value
004e9df20 	fmov	s8, s0
004e9df24 	ldp	q0, q1, [x19, #32]
004e9df28 	ldur	q2, [x19, #64]
004e9df2c 	ldr	w21, [x19, #20]
004e9df30 	add	x0, sp, #48
004e9df34 	mov	x1, xzr
004e9df38 	stp	q0, q1, [sp, #48]
004e9df3c 	str	q2, [sp, #80]
004e9df40 	bl	#-8106356 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9df44 	mov	w2, w0
004e9df48 	mov	x0, x20
004e9df4c 	mov	w1, w21
004e9df50 	bl	#-7268 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9df54 	fadd	s0, s8, s0
004e9df58 	add	x0, x22, #2568
004e9df5c 	mov	x1, xzr
004e9df60 	bl	#-3457960 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9df64 	ldp	q0, q1, [x19, #32]
004e9df68 	mov	x0, sp
004e9df6c 	ldur	q2, [x19, #64]
004e9df70 	ldr	x21, [x20, #392]
004e9df74 	mov	x1, xzr
004e9df78 	ldr	w22, [x19, #20]
004e9df7c 	stp	q0, q1, [sp]
004e9df80 	str	q2, [sp, #32]
004e9df84 	bl	#-8106424 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9df88 	mov	w2, w0
004e9df8c 	mov	x0, x20
004e9df90 	mov	w1, w22
004e9df94 	bl	#-7336 ; -> 0x4e9c2ec EquipmentSlotManager::HavePowerGoldAmount_Cal
004e9df98 	cbz	x21, #104 ; -> 0x4e9e000 
004e9df9c 	ldr	x2, [x23]
004e9dfa0 	mov	x0, x21
004e9dfa4 	mov	w1, w22
004e9dfa8 	bl	#52170604 ; -> 0x805ef14 
004e9dfac 	mov	x0, x20
004e9dfb0 	bl	#88 ; -> 0x4e9e008 EquipmentSlotManager::BestItemCheck
004e9dfb4 	b	#8 ; -> 0x4e9dfbc 
004e9dfb8 	cbz	x19, #72 ; -> 0x4e9e000 
004e9dfbc 	ldr	x8, [x20, #56]
004e9dfc0 	cbz	x8, #64 ; -> 0x4e9e000 
004e9dfc4 	ldrsw	x9, [x19, #20]
004e9dfc8 	ldr	w10, [x8, #24]
004e9dfcc 	cmp	w9, w10
004e9dfd0 	b.hs	#52 ; -> 0x4e9e004 
004e9dfd4 	add	x8, x8, x9, lsl #3
004e9dfd8 	ldr	x0, [x8, #32]
004e9dfdc 	cbz	x0, #36 ; -> 0x4e9e000 
004e9dfe0 	bl	#-23928 ; -> 0x4e98268 EquipmentSlot::CardCountRenew
004e9dfe4 	ldp	x20, x19, [sp, #288]
004e9dfe8 	ldr	x29, [sp, #248]
004e9dfec 	ldp	x22, x21, [sp, #272]
004e9dff0 	ldr	d8, [sp, #240]
004e9dff4 	ldp	x30, x23, [sp, #256]
004e9dff8 	add	sp, sp, #304
004e9dffc 	ret
004e9e000 	bl	#-9491188 ; -> 0x4590d0c 
004e9e004 	bl	#-9491184 ; -> 0x4590d14 
