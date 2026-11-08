004ea3fc4 	str	x30, [sp, #-32]!
004ea3fc8 	stp	x20, x19, [sp, #16]
004ea3fcc 	adrp	x20, #97722368 ; -> 0xabd5000 
004ea3fd0 	mov	x19, x0
004ea3fd4 	ldrb	w8, [x20, #913]
004ea3fd8 	tbnz	w8, #0, #24 ; -> 0x4ea3ff0 
004ea3fdc 	adrp	x0, #89415680 ; -> 0xa3e9000 
004ea3fe0 	ldr	x0, [x0, #1264]
004ea3fe4 	bl	#-9516420 ; -> 0x4590a60 
004ea3fe8 	mov	w8, #1
004ea3fec 	strb	w8, [x20, #913]
004ea3ff0 	ldr	w8, [x19, #16]
004ea3ff4 	ldr	x20, [x19, #32]
004ea3ff8 	sub	w9, w8, #1
004ea3ffc 	cmp	w9, #2
004ea4000 	b.hs	#104 ; -> 0x4ea4068 
004ea4004 	mov	w8, #-1
004ea4008 	str	w8, [x19, #16]
004ea400c 	cbz	x20, #260 ; -> 0x4ea4110 
004ea4010 	ldrb	w8, [x20, #405]
004ea4014 	cbz	w8, #180 ; -> 0x4ea40c8 
004ea4018 	mov	x0, x20
004ea401c 	bl	#-28076 ; -> 0x4e9d270 EquipmentSlotManager::Upgrade_Func
004ea4020 	adrp	x8, #89411584 ; -> 0xa3e9000 
004ea4024 	ldr	x8, [x8, #1264]
004ea4028 	ldr	x0, [x8]
004ea402c 	ldr	w8, [x0, #228]
004ea4030 	cbnz	w8, #8 ; -> 0x4ea4038 
004ea4034 	bl	#-9516116 ; -> 0x4590be0 
004ea4038 	adrp	x8, #-49786880 ; -> 0x1f29000 
004ea403c 	mov	x0, xzr
004ea4040 	ldr	s0, [x8, #2184]
004ea4044 	bl	#-3452284 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004ea4048 	mov	x1, x0
004ea404c 	str	x0, [x19, #24]!
004ea4050 	mov	x0, x19
004ea4054 	bl	#-9516624 ; -> 0x4590a04 
004ea4058 	mov	w8, #2
004ea405c 	mov	w0, #1
004ea4060 	stur	w8, [x19, #-8]
004ea4064 	b	#160 ; -> 0x4ea4104 
004ea4068 	cbnz	w8, #152 ; -> 0x4ea4100 
004ea406c 	mov	w8, #-1
004ea4070 	str	w8, [x19, #16]
004ea4074 	cbz	x20, #156 ; -> 0x4ea4110 
004ea4078 	mov	x0, x20
004ea407c 	str	wzr, [x20, #416]
004ea4080 	bl	#-28176 ; -> 0x4e9d270 EquipmentSlotManager::Upgrade_Func
004ea4084 	adrp	x8, #89411584 ; -> 0xa3e9000 
004ea4088 	ldr	x8, [x8, #1264]
004ea408c 	ldr	x0, [x8]
004ea4090 	ldr	w8, [x0, #228]
004ea4094 	cbnz	w8, #8 ; -> 0x4ea409c 
004ea4098 	bl	#-9516216 ; -> 0x4590be0 
004ea409c 	adrp	x8, #-49786880 ; -> 0x1f29000 
004ea40a0 	mov	x0, xzr
004ea40a4 	ldr	s0, [x8, #1596]
004ea40a8 	bl	#-3452384 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004ea40ac 	mov	x1, x0
004ea40b0 	str	x0, [x19, #24]!
004ea40b4 	mov	x0, x19
004ea40b8 	bl	#-9516724 ; -> 0x4590a04 
004ea40bc 	mov	w0, #1
004ea40c0 	stur	w0, [x19, #-8]
004ea40c4 	b	#64 ; -> 0x4ea4104 
004ea40c8 	mov	x0, x20
004ea40cc 	bl	#-25932 ; -> 0x4e9db80 EquipmentSlotManager::UpgradeStat_Apply
004ea40d0 	ldr	w8, [x20, #416]
004ea40d4 	cmp	w8, #1
004ea40d8 	b.lt	#40 ; -> 0x4ea4100 
004ea40dc 	mov	x0, xzr
004ea40e0 	str	wzr, [x20, #416]
004ea40e4 	bl	#-1618744 ; -> 0x4d18dac SoundManager::get_instance
004ea40e8 	cbz	x0, #40 ; -> 0x4ea4110 
004ea40ec 	ldr	x8, [x0]
004ea40f0 	mov	x1, xzr
004ea40f4 	ldr	x9, [x8, #1320]
004ea40f8 	ldr	x2, [x8, #1328]
004ea40fc 	blr	x9
004ea4100 	mov	w0, wzr
004ea4104 	ldp	x20, x19, [sp, #16]
004ea4108 	ldr	x30, [sp], #32
004ea410c 	ret
004ea4110 	bl	#-9516036 ; -> 0x4590d0c 
