004e9d000 	sub	sp, sp, #80
004e9d004 	str	x30, [sp, #48]
004e9d008 	stp	x20, x19, [sp, #64]
004e9d00c 	mov	x19, x0
004e9d010 	mov	w0, #32285
004e9d014 	mov	x1, xzr
004e9d018 	bl	#-2447988 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9d01c 	tbz	w0, #0, #44 ; -> 0x4e9d048 
004e9d020 	mov	w0, #32285
004e9d024 	mov	x1, xzr
004e9d028 	bl	#-2447824 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9d02c 	cbz	x0, #208 ; -> 0x4e9d0fc 
004e9d030 	mov	x1, x19
004e9d034 	ldp	x20, x19, [sp, #64]
004e9d038 	ldr	x30, [sp, #48]
004e9d03c 	mov	x2, xzr
004e9d040 	add	sp, sp, #80
004e9d044 	b	#-3271460 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e9d048 	ldrb	w8, [x19, #405]
004e9d04c 	cbnz	w8, #160 ; -> 0x4e9d0ec 
004e9d050 	ldr	x8, [x19, #288]
004e9d054 	cbz	x8, #168 ; -> 0x4e9d0fc 
004e9d058 	ldp	q0, q1, [x8, #32]
004e9d05c 	mov	x0, sp
004e9d060 	ldr	q2, [x8, #64]
004e9d064 	mov	x1, xzr
004e9d068 	stp	q0, q1, [sp]
004e9d06c 	str	q2, [sp, #32]
004e9d070 	bl	#-8102564 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004e9d074 	mov	w20, w0
004e9d078 	mov	x0, x19
004e9d07c 	bl	#-18808 ; -> 0x4e98704 EquipmentSlotManager::get_WeaponMaxLevel
004e9d080 	cmp	w20, w0
004e9d084 	b.ge	#104 ; -> 0x4e9d0ec 
004e9d088 	ldrb	w8, [x19, #404]
004e9d08c 	cbnz	w8, #96 ; -> 0x4e9d0ec 
004e9d090 	ldr	x1, [x19, #408]
004e9d094 	mov	w8, #1
004e9d098 	strb	w8, [x19, #405]
004e9d09c 	cbz	x1, #16 ; -> 0x4e9d0ac 
004e9d0a0 	mov	x0, x19
004e9d0a4 	mov	x2, xzr
004e9d0a8 	bl	#79072388 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
004e9d0ac 	mov	x0, x19
004e9d0b0 	bl	#80 ; -> 0x4e9d100 EquipmentSlotManager::Upgrade_coroutine
004e9d0b4 	mov	x1, x0
004e9d0b8 	str	x0, [x19, #408]
004e9d0bc 	add	x0, x19, #408
004e9d0c0 	bl	#-9488060 ; -> 0x4590a04 
004e9d0c4 	ldr	x1, [x19, #408]
004e9d0c8 	mov	x0, x19
004e9d0cc 	mov	x2, xzr
004e9d0d0 	bl	#79072044 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e9d0d4 	mov	x0, x19
004e9d0d8 	bl	#204 ; -> 0x4e9d1a4 EquipmentSlotManager::UpgradeDelay_IE
004e9d0dc 	mov	x1, x0
004e9d0e0 	mov	x0, x19
004e9d0e4 	mov	x2, xzr
004e9d0e8 	bl	#79072020 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e9d0ec 	ldp	x20, x19, [sp, #64]
004e9d0f0 	ldr	x30, [sp, #48]
004e9d0f4 	add	sp, sp, #80
004e9d0f8 	ret
004e9d0fc 	bl	#-9487344 ; -> 0x4590d0c 
