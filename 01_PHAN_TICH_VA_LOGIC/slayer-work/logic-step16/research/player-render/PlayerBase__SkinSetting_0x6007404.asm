004efed84 	str	d8, [sp, #-48]!
004efed88 	str	x30, [sp, #8]
004efed8c 	stp	x22, x21, [sp, #16]
004efed90 	stp	x20, x19, [sp, #32]
004efed94 	adrp	x20, #97349632 ; -> 0xabd5000 
004efed98 	mov	x19, x0
004efed9c 	ldrb	w8, [x20, #1544]
004efeda0 	tbnz	w8, #0, #60 ; -> 0x4efeddc 
004efeda4 	adrp	x0, #89042944 ; -> 0xa3e9000 
004efeda8 	ldr	x0, [x0, #2376]
004efedac 	bl	#-9888588 ; -> 0x4590a60 
004efedb0 	adrp	x0, #89313280 ; -> 0xa42b000 
004efedb4 	ldr	x0, [x0, #2928]
004efedb8 	bl	#-9888600 ; -> 0x4590a60 
004efedbc 	adrp	x0, #89313280 ; -> 0xa42b000 
004efedc0 	ldr	x0, [x0, #2936]
004efedc4 	bl	#-9888612 ; -> 0x4590a60 
004efedc8 	adrp	x0, #89042944 ; -> 0xa3e9000 
004efedcc 	ldr	x0, [x0, #736]
004efedd0 	bl	#-9888624 ; -> 0x4590a60 
004efedd4 	mov	w8, #1
004efedd8 	strb	w8, [x20, #1544]
004efeddc 	mov	w0, #24909
004efede0 	mov	x1, xzr
004efede4 	bl	#-2848832 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efede8 	tbz	w0, #0, #48 ; -> 0x4efee18 
004efedec 	mov	w0, #24909
004efedf0 	mov	x1, xzr
004efedf4 	bl	#-2848668 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efedf8 	cbz	x0, #1796 ; -> 0x4eff4fc 
004efedfc 	mov	x1, x19
004efee00 	ldp	x20, x19, [sp, #32]
004efee04 	ldp	x22, x21, [sp, #16]
004efee08 	mov	x2, xzr
004efee0c 	ldr	x30, [sp, #8]
004efee10 	ldr	d8, [sp], #48
004efee14 	b	#-3672308 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004efee18 	mov	x0, x19
004efee1c 	bl	#-2168 ; -> 0x4efe5a4 PlayerBase::HairSetting
004efee20 	ldr	x8, [x19, #312]
004efee24 	cbz	x8, #1752 ; -> 0x4eff4fc 
004efee28 	ldr	x8, [x8, #1544]
004efee2c 	cbz	x8, #1744 ; -> 0x4eff4fc 
004efee30 	ldrb	w8, [x8, #104]
004efee34 	ldr	x0, [x19, #2712]
004efee38 	cbz	w8, #28 ; -> 0x4efee54 
004efee3c 	cbz	x0, #1728 ; -> 0x4eff4fc 
004efee40 	mov	x1, xzr
004efee44 	bl	#78649452 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efee48 	cbz	x0, #1716 ; -> 0x4eff4fc 
004efee4c 	mov	w1, #1
004efee50 	b	#24 ; -> 0x4efee68 
004efee54 	cbz	x0, #1704 ; -> 0x4eff4fc 
004efee58 	mov	x1, xzr
004efee5c 	bl	#78649428 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efee60 	cbz	x0, #1692 ; -> 0x4eff4fc 
004efee64 	mov	w1, wzr
004efee68 	mov	x2, xzr
004efee6c 	bl	#78663016 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efee70 	ldr	x8, [x19, #312]
004efee74 	cbz	x8, #1672 ; -> 0x4eff4fc 
004efee78 	ldr	x8, [x8, #1528]
004efee7c 	cbz	x8, #1664 ; -> 0x4eff4fc 
004efee80 	ldr	w8, [x8, #24]
004efee84 	ldr	x0, [x19, #2800]
004efee88 	cbz	w8, #140 ; -> 0x4efef14 
004efee8c 	cbz	x0, #1648 ; -> 0x4eff4fc 
004efee90 	mov	x1, xzr
004efee94 	bl	#78649372 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efee98 	cbz	x0, #1636 ; -> 0x4eff4fc 
004efee9c 	mov	w1, #1
004efeea0 	mov	x2, xzr
004efeea4 	bl	#78662960 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efeea8 	ldr	x0, [x19, #2808]
004efeeac 	cbz	x0, #1616 ; -> 0x4eff4fc 
004efeeb0 	mov	x1, xzr
004efeeb4 	bl	#78649340 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efeeb8 	cbz	x0, #1604 ; -> 0x4eff4fc 
004efeebc 	mov	w1, #1
004efeec0 	mov	x2, xzr
004efeec4 	bl	#78662928 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efeec8 	ldr	x8, [x19, #312]
004efeecc 	cbz	x8, #1584 ; -> 0x4eff4fc 
004efeed0 	ldr	x8, [x8, #1528]
004efeed4 	cbz	x8, #1576 ; -> 0x4eff4fc 
004efeed8 	adrp	x9, #89042944 ; -> 0xa3e9000 
004efeedc 	ldr	x9, [x9, #2376]
004efeee0 	ldr	x20, [x8, #88]
004efeee4 	ldr	x0, [x9]
004efeee8 	ldr	w9, [x0, #228]
004efeeec 	cbnz	w9, #8 ; -> 0x4efeef4 
004efeef0 	bl	#-9888528 ; -> 0x4590be0 
004efeef4 	mov	x0, x20
004efeef8 	mov	x1, xzr
004efeefc 	bl	#-2309680 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004efef00 	mov	x1, x0
004efef04 	str	x0, [x19, #2896]
004efef08 	add	x0, x19, #2896
004efef0c 	bl	#-9889032 ; -> 0x4590a04 
004efef10 	b	#64 ; -> 0x4efef50 
004efef14 	cbz	x0, #1512 ; -> 0x4eff4fc 
004efef18 	mov	x1, xzr
004efef1c 	bl	#78649236 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efef20 	cbz	x0, #1500 ; -> 0x4eff4fc 
004efef24 	mov	w1, wzr
004efef28 	mov	x2, xzr
004efef2c 	bl	#78662824 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efef30 	ldr	x0, [x19, #2808]
004efef34 	cbz	x0, #1480 ; -> 0x4eff4fc 
004efef38 	mov	x1, xzr
004efef3c 	bl	#78649204 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efef40 	cbz	x0, #1468 ; -> 0x4eff4fc 
004efef44 	mov	w1, wzr
004efef48 	mov	x2, xzr
004efef4c 	bl	#78662792 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efef50 	ldr	x9, [x19, #312]
004efef54 	cbz	x9, #1448 ; -> 0x4eff4fc 
004efef58 	ldr	x8, [x9, #1544]
004efef5c 	cbz	x8, #1440 ; -> 0x4eff4fc 
004efef60 	ldrb	w10, [x8, #105]
004efef64 	cbnz	w10, #32 ; -> 0x4efef84 
004efef68 	ldr	w9, [x9, #1384]
004efef6c 	cmp	w9, #1
004efef70 	b.ne	#20 ; -> 0x4efef84 
004efef74 	adrp	x9, #89042944 ; -> 0xa3e9000 
004efef78 	ldr	x9, [x9, #2376]
004efef7c 	ldr	x20, [x8, #112]
004efef80 	b	#16 ; -> 0x4efef90 
004efef84 	adrp	x9, #89042944 ; -> 0xa3e9000 
004efef88 	ldr	x9, [x9, #2376]
004efef8c 	ldr	x20, [x8, #88]
004efef90 	ldr	x0, [x9]
004efef94 	ldr	w9, [x0, #228]
004efef98 	cbnz	w9, #8 ; -> 0x4efefa0 
004efef9c 	bl	#-9888700 ; -> 0x4590be0 
004efefa0 	mov	x0, x20
004efefa4 	mov	x1, xzr
004efefa8 	bl	#-2309852 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004efefac 	mov	x1, x0
004efefb0 	str	x0, [x19, #2864]
004efefb4 	add	x0, x19, #2864
004efefb8 	bl	#-9889204 ; -> 0x4590a04 
004efefbc 	ldr	x20, [x19, #2728]
004efefc0 	cbz	x20, #1340 ; -> 0x4eff4fc 
004efefc4 	ldr	w8, [x20, #24]
004efefc8 	cmp	w8, #1
004efefcc 	b.lt	#56 ; -> 0x4eff004 
004efefd0 	mov	x21, xzr
004efefd4 	add	x22, x20, #32
004efefd8 	cmp	w21, w8
004efefdc 	b.hs	#1412 ; -> 0x4eff560 
004efefe0 	ldr	x0, [x22, x21, lsl #3]
004efefe4 	cbz	x0, #1304 ; -> 0x4eff4fc 
004efefe8 	mov	w1, wzr
004efefec 	mov	x2, xzr
004efeff0 	bl	#78662628 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004efeff4 	ldr	w8, [x20, #24]
004efeff8 	add	x21, x21, #1
004efeffc 	cmp	w21, w8
004eff000 	b.lt	#-40 ; -> 0x4efefd8 
004eff004 	ldr	x8, [x19, #312]
004eff008 	cbz	x8, #1268 ; -> 0x4eff4fc 
004eff00c 	ldr	x8, [x8, #1544]
004eff010 	cbz	x8, #1260 ; -> 0x4eff4fc 
004eff014 	ldr	w8, [x8, #24]
004eff018 	cmp	w8, #22
004eff01c 	b.eq	#40 ; -> 0x4eff044 
004eff020 	cmp	w8, #21
004eff024 	b.ne	#72 ; -> 0x4eff06c 
004eff028 	ldr	x8, [x19, #2728]
004eff02c 	cbz	x8, #1232 ; -> 0x4eff4fc 
004eff030 	ldr	w9, [x8, #24]
004eff034 	cbz	w9, #1324 ; -> 0x4eff560 
004eff038 	ldr	x0, [x8, #32]
004eff03c 	cbnz	x0, #36 ; -> 0x4eff060 
004eff040 	b	#1212 ; -> 0x4eff4fc 
004eff044 	ldr	x8, [x19, #2728]
004eff048 	cbz	x8, #1204 ; -> 0x4eff4fc 
004eff04c 	ldr	w9, [x8, #24]
004eff050 	tst	w9, #0xfffffffe
004eff054 	b.eq	#1292 ; -> 0x4eff560 
004eff058 	ldr	x0, [x8, #40]
004eff05c 	cbz	x0, #1184 ; -> 0x4eff4fc 
004eff060 	mov	w1, #1
004eff064 	mov	x2, xzr
004eff068 	bl	#78662508 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff06c 	ldr	x8, [x19, #312]
004eff070 	cbz	x8, #1164 ; -> 0x4eff4fc 
004eff074 	ldr	x8, [x8, #1520]
004eff078 	cbz	x8, #1156 ; -> 0x4eff4fc 
004eff07c 	adrp	x22, #89038848 ; -> 0xa3e9000 
004eff080 	ldr	x22, [x22, #2376]
004eff084 	ldr	x20, [x8, #88]
004eff088 	ldr	x0, [x22]
004eff08c 	ldr	w9, [x0, #228]
004eff090 	cbnz	w9, #8 ; -> 0x4eff098 
004eff094 	bl	#-9888948 ; -> 0x4590be0 
004eff098 	mov	x0, x20
004eff09c 	mov	x1, xzr
004eff0a0 	bl	#-2310100 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004eff0a4 	add	x20, x19, #2856
004eff0a8 	mov	x1, x0
004eff0ac 	str	x0, [x19, #2856]
004eff0b0 	mov	x0, x20
004eff0b4 	bl	#-9889456 ; -> 0x4590a04 
004eff0b8 	ldr	x8, [x19, #312]
004eff0bc 	cbz	x8, #1088 ; -> 0x4eff4fc 
004eff0c0 	ldr	x8, [x8, #1536]
004eff0c4 	cbz	x8, #1080 ; -> 0x4eff4fc 
004eff0c8 	ldr	x0, [x8, #88]
004eff0cc 	mov	x1, xzr
004eff0d0 	bl	#-2310148 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004eff0d4 	mov	x1, x0
004eff0d8 	str	x0, [x19, #2872]
004eff0dc 	add	x0, x19, #2872
004eff0e0 	bl	#-9889500 ; -> 0x4590a04 
004eff0e4 	ldr	x8, [x19, #312]
004eff0e8 	cbz	x8, #1044 ; -> 0x4eff4fc 
004eff0ec 	ldr	x8, [x8, #1552]
004eff0f0 	cbz	x8, #1036 ; -> 0x4eff4fc 
004eff0f4 	ldr	w8, [x8, #24]
004eff0f8 	ldr	x0, [x19, #2784]
004eff0fc 	cbz	w8, #280 ; -> 0x4eff214 
004eff100 	cbz	x0, #1020 ; -> 0x4eff4fc 
004eff104 	mov	x1, xzr
004eff108 	bl	#78648744 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff10c 	cbz	x0, #1008 ; -> 0x4eff4fc 
004eff110 	mov	w1, #1
004eff114 	mov	x2, xzr
004eff118 	bl	#78662332 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff11c 	ldr	x8, [x19, #312]
004eff120 	cbz	x8, #988 ; -> 0x4eff4fc 
004eff124 	ldr	x8, [x8, #1552]
004eff128 	cbz	x8, #980 ; -> 0x4eff4fc 
004eff12c 	ldr	x0, [x22]
004eff130 	ldr	x21, [x8, #88]
004eff134 	ldr	w9, [x0, #228]
004eff138 	cbnz	w9, #8 ; -> 0x4eff140 
004eff13c 	bl	#-9889116 ; -> 0x4590be0 
004eff140 	mov	x0, x21
004eff144 	mov	x1, xzr
004eff148 	bl	#-2310268 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004eff14c 	mov	x1, x0
004eff150 	str	x0, [x19, #2880]
004eff154 	add	x0, x19, #2880
004eff158 	bl	#-9889620 ; -> 0x4590a04 
004eff15c 	adrp	x8, #89309184 ; -> 0xa42b000 
004eff160 	ldr	x8, [x8, #2936]
004eff164 	ldr	x0, [x8]
004eff168 	ldr	w8, [x0, #228]
004eff16c 	cbnz	w8, #8 ; -> 0x4eff174 
004eff170 	bl	#-9889168 ; -> 0x4590be0 
004eff174 	adrp	x8, #89309184 ; -> 0xa42b000 
004eff178 	ldr	x8, [x8, #2928]
004eff17c 	ldr	x21, [x8]
004eff180 	ldr	x0, [x21, #32]
004eff184 	add	x8, x0, #309
004eff188 	ldrh	w8, [x8]
004eff18c 	tbnz	w8, #0, #8 ; -> 0x4eff194 
004eff190 	bl	#-9658984 ; -> 0x45c8f28 
004eff194 	ldr	x8, [x0, #192]
004eff198 	ldr	x0, [x8, #16]
004eff19c 	add	x8, x0, #309
004eff1a0 	ldrh	w8, [x8]
004eff1a4 	tbnz	w8, #0, #8 ; -> 0x4eff1ac 
004eff1a8 	bl	#-9659008 ; -> 0x45c8f28 
004eff1ac 	ldr	w8, [x0, #228]
004eff1b0 	cbnz	w8, #8 ; -> 0x4eff1b8 
004eff1b4 	bl	#-9889236 ; -> 0x4590be0 
004eff1b8 	ldr	x0, [x21, #32]
004eff1bc 	add	x8, x0, #309
004eff1c0 	ldrh	w8, [x8]
004eff1c4 	tbnz	w8, #0, #8 ; -> 0x4eff1cc 
004eff1c8 	bl	#-9659040 ; -> 0x45c8f28 
004eff1cc 	ldr	x8, [x0, #192]
004eff1d0 	ldr	x0, [x8, #16]
004eff1d4 	add	x8, x0, #309
004eff1d8 	ldrh	w8, [x8]
004eff1dc 	tbnz	w8, #0, #8 ; -> 0x4eff1e4 
004eff1e0 	bl	#-9659064 ; -> 0x45c8f28 
004eff1e4 	ldr	x8, [x19, #312]
004eff1e8 	cbz	x8, #788 ; -> 0x4eff4fc 
004eff1ec 	ldr	x9, [x0, #184]
004eff1f0 	ldr	x0, [x9]
004eff1f4 	cbz	x0, #776 ; -> 0x4eff4fc 
004eff1f8 	ldr	x1, [x19, #2784]
004eff1fc 	ldr	x2, [x19, #2752]
004eff200 	mov	x5, xzr
004eff204 	ldr	x4, [x8, #1544]
004eff208 	ldr	x3, [x8, #1552]
004eff20c 	bl	#4517636 ; -> 0x534e110 FaceDecoLayerOrderHelper::Apply
004eff210 	b	#32 ; -> 0x4eff230 
004eff214 	cbz	x0, #744 ; -> 0x4eff4fc 
004eff218 	mov	x1, xzr
004eff21c 	bl	#78648468 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff220 	cbz	x0, #732 ; -> 0x4eff4fc 
004eff224 	mov	w1, wzr
004eff228 	mov	x2, xzr
004eff22c 	bl	#78662056 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff230 	ldr	x8, [x19, #312]
004eff234 	cbz	x8, #712 ; -> 0x4eff4fc 
004eff238 	ldr	x8, [x8, #1560]
004eff23c 	cbz	x8, #704 ; -> 0x4eff4fc 
004eff240 	ldr	w8, [x8, #24]
004eff244 	ldr	x0, [x19, #2792]
004eff248 	cbz	w8, #224 ; -> 0x4eff328 
004eff24c 	cbz	x0, #688 ; -> 0x4eff4fc 
004eff250 	mov	x1, xzr
004eff254 	bl	#78648412 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff258 	cbz	x0, #676 ; -> 0x4eff4fc 
004eff25c 	mov	w1, #1
004eff260 	mov	x2, xzr
004eff264 	bl	#78662000 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff268 	ldr	x8, [x19, #312]
004eff26c 	cbz	x8, #656 ; -> 0x4eff4fc 
004eff270 	ldr	x8, [x8, #1560]
004eff274 	cbz	x8, #648 ; -> 0x4eff4fc 
004eff278 	ldr	x0, [x22]
004eff27c 	ldr	x21, [x8, #88]
004eff280 	ldr	w9, [x0, #228]
004eff284 	cbnz	w9, #8 ; -> 0x4eff28c 
004eff288 	bl	#-9889448 ; -> 0x4590be0 
004eff28c 	mov	x0, x21
004eff290 	mov	x1, xzr
004eff294 	bl	#-2310600 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004eff298 	mov	x1, x0
004eff29c 	str	x0, [x19, #2888]
004eff2a0 	add	x0, x19, #2888
004eff2a4 	bl	#-9889952 ; -> 0x4590a04 
004eff2a8 	ldr	x0, [x19, #2792]
004eff2ac 	cbz	x0, #592 ; -> 0x4eff4fc 
004eff2b0 	mov	x1, xzr
004eff2b4 	bl	#78648108 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004eff2b8 	ldr	x8, [x19, #2792]
004eff2bc 	cbz	x8, #576 ; -> 0x4eff4fc 
004eff2c0 	mov	x21, x0
004eff2c4 	mov	x0, x8
004eff2c8 	mov	x1, xzr
004eff2cc 	bl	#78648084 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004eff2d0 	cbz	x0, #556 ; -> 0x4eff4fc 
004eff2d4 	mov	x1, xzr
004eff2d8 	bl	#78721300 ; -> 0x9a123ec UnityEngine.Transform::get_localPosition
004eff2dc 	ldr	x0, [x19, #2792]
004eff2e0 	cbz	x0, #540 ; -> 0x4eff4fc 
004eff2e4 	mov	x1, xzr
004eff2e8 	fmov	s8, s0
004eff2ec 	bl	#78648052 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004eff2f0 	cbz	x0, #524 ; -> 0x4eff4fc 
004eff2f4 	mov	x1, xzr
004eff2f8 	bl	#78721268 ; -> 0x9a123ec UnityEngine.Transform::get_localPosition
004eff2fc 	ldr	x8, [x19, #312]
004eff300 	cbz	x8, #508 ; -> 0x4eff4fc 
004eff304 	ldr	x8, [x8, #1560]
004eff308 	cbz	x8, #500 ; -> 0x4eff4fc 
004eff30c 	cbz	x21, #496 ; -> 0x4eff4fc 
004eff310 	fmov	s0, s8
004eff314 	ldr	s2, [x8, #108]
004eff318 	mov	x0, x21
004eff31c 	mov	x1, xzr
004eff320 	bl	#78721428 ; -> 0x9a124b4 UnityEngine.Transform::set_localPosition
004eff324 	b	#32 ; -> 0x4eff344 
004eff328 	cbz	x0, #468 ; -> 0x4eff4fc 
004eff32c 	mov	x1, xzr
004eff330 	bl	#78648192 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff334 	cbz	x0, #456 ; -> 0x4eff4fc 
004eff338 	mov	w1, wzr
004eff33c 	mov	x2, xzr
004eff340 	bl	#78661780 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff344 	ldr	x8, [x19, #312]
004eff348 	cbz	x8, #436 ; -> 0x4eff4fc 
004eff34c 	ldr	x8, [x8, #1568]
004eff350 	cbz	x8, #428 ; -> 0x4eff4fc 
004eff354 	ldr	w8, [x8, #24]
004eff358 	ldr	x0, [x19, #2816]
004eff35c 	cbz	w8, #128 ; -> 0x4eff3dc 
004eff360 	cbz	x0, #412 ; -> 0x4eff4fc 
004eff364 	mov	x1, xzr
004eff368 	bl	#78648136 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff36c 	cbz	x0, #400 ; -> 0x4eff4fc 
004eff370 	mov	w1, #1
004eff374 	mov	x2, xzr
004eff378 	bl	#78661724 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff37c 	ldr	x9, [x19, #312]
004eff380 	cbz	x9, #380 ; -> 0x4eff4fc 
004eff384 	ldr	x8, [x9, #1536]
004eff388 	cbz	x8, #372 ; -> 0x4eff4fc 
004eff38c 	ldr	x9, [x9, #1568]
004eff390 	cbz	x9, #364 ; -> 0x4eff4fc 
004eff394 	ldr	x0, [x8, #88]
004eff398 	ldr	x1, [x9, #88]
004eff39c 	mov	x2, xzr
004eff3a0 	bl	#64801448 ; -> 0x8ccbe48 System.String::Concat
004eff3a4 	ldr	x8, [x22]
004eff3a8 	mov	x21, x0
004eff3ac 	ldr	w9, [x8, #228]
004eff3b0 	cbnz	w9, #12 ; -> 0x4eff3bc 
004eff3b4 	mov	x0, x8
004eff3b8 	bl	#-9889752 ; -> 0x4590be0 
004eff3bc 	mov	x0, x21
004eff3c0 	mov	x1, xzr
004eff3c4 	bl	#-2310904 ; -> 0x4ccb0cc AssetManager::GetSkinSprites
004eff3c8 	mov	x1, x0
004eff3cc 	str	x0, [x19, #2928]
004eff3d0 	add	x0, x19, #2928
004eff3d4 	bl	#-9890256 ; -> 0x4590a04 
004eff3d8 	b	#32 ; -> 0x4eff3f8 
004eff3dc 	cbz	x0, #288 ; -> 0x4eff4fc 
004eff3e0 	mov	x1, xzr
004eff3e4 	bl	#78648012 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004eff3e8 	cbz	x0, #276 ; -> 0x4eff4fc 
004eff3ec 	mov	w1, wzr
004eff3f0 	mov	x2, xzr
004eff3f4 	bl	#78661600 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004eff3f8 	ldr	x8, [x19, #312]
004eff3fc 	cbz	x8, #256 ; -> 0x4eff4fc 
004eff400 	ldr	x8, [x8, #1568]
004eff404 	cbz	x8, #248 ; -> 0x4eff4fc 
004eff408 	adrp	x9, #89038848 ; -> 0xa3e9000 
004eff40c 	ldr	x9, [x9, #736]
004eff410 	ldr	x21, [x19, #2816]
004eff414 	ldr	x22, [x8, #104]
004eff418 	ldr	x0, [x9]
004eff41c 	ldr	w9, [x0, #228]
004eff420 	cbnz	w9, #8 ; -> 0x4eff428 
004eff424 	bl	#-9889860 ; -> 0x4590be0 
004eff428 	mov	x0, x22
004eff42c 	mov	x1, xzr
004eff430 	bl	#-1972532 ; -> 0x4d1dafc UsefulManager::hexToColor
004eff434 	cbz	x21, #200 ; -> 0x4eff4fc 
004eff438 	mov	x0, x21
004eff43c 	mov	x1, xzr
004eff440 	bl	#78327880 ; -> 0x99b2488 UnityEngine.SpriteRenderer::set_color
004eff444 	ldr	x8, [x19, #2824]
004eff448 	cbz	x8, #180 ; -> 0x4eff4fc 
004eff44c 	mov	x21, xzr
004eff450 	ldr	w9, [x8, #24]
004eff454 	cmp	w21, w9
004eff458 	b.ge	#72 ; -> 0x4eff4a0 
004eff45c 	cmp	w21, w9
004eff460 	b.hs	#256 ; -> 0x4eff560 
004eff464 	ldr	x9, [x20]
004eff468 	cbz	x9, #148 ; -> 0x4eff4fc 
004eff46c 	ldr	w10, [x9, #24]
004eff470 	cmp	w10, #17
004eff474 	b.ls	#236 ; -> 0x4eff560 
004eff478 	add	x8, x8, x21, lsl #3
004eff47c 	ldr	x0, [x8, #32]
004eff480 	cbz	x0, #124 ; -> 0x4eff4fc 
004eff484 	ldr	x1, [x9, #168]
004eff488 	mov	x2, xzr
004eff48c 	bl	#78326956 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004eff490 	ldr	x8, [x19, #2824]
004eff494 	add	x21, x21, #1
004eff498 	cbnz	x8, #-72 ; -> 0x4eff450 
004eff49c 	b	#96 ; -> 0x4eff4fc 
004eff4a0 	mov	x20, xzr
004eff4a4 	ldr	w8, [x8, #24]
004eff4a8 	cmp	w20, w8
004eff4ac 	b.ge	#84 ; -> 0x4eff500 
004eff4b0 	ldr	x8, [x19, #2832]
004eff4b4 	cbz	x8, #72 ; -> 0x4eff4fc 
004eff4b8 	ldr	w9, [x8, #24]
004eff4bc 	cmp	w20, w9
004eff4c0 	b.hs	#160 ; -> 0x4eff560 
004eff4c4 	ldr	x9, [x19, #2864]
004eff4c8 	cbz	x9, #52 ; -> 0x4eff4fc 
004eff4cc 	ldr	w10, [x9, #24]
004eff4d0 	cmp	w10, #17
004eff4d4 	b.ls	#140 ; -> 0x4eff560 
004eff4d8 	add	x8, x8, x20, lsl #3
004eff4dc 	ldr	x0, [x8, #32]
004eff4e0 	cbz	x0, #28 ; -> 0x4eff4fc 
004eff4e4 	ldr	x1, [x9, #168]
004eff4e8 	mov	x2, xzr
004eff4ec 	bl	#78326860 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004eff4f0 	ldr	x8, [x19, #2824]
004eff4f4 	add	x20, x20, #1
004eff4f8 	cbnz	x8, #-84 ; -> 0x4eff4a4 
004eff4fc 	bl	#-9889776 ; -> 0x4590d0c 
004eff500 	ldr	x8, [x19, #2856]
004eff504 	cbz	x8, #-8 ; -> 0x4eff4fc 
004eff508 	ldr	w9, [x8, #24]
004eff50c 	cmp	w9, #18
004eff510 	b.ls	#80 ; -> 0x4eff560 
004eff514 	ldr	x0, [x19, #2840]
004eff518 	cbz	x0, #-28 ; -> 0x4eff4fc 
004eff51c 	ldr	x1, [x8, #176]
004eff520 	mov	x2, xzr
004eff524 	bl	#78326804 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004eff528 	ldr	x8, [x19, #2864]
004eff52c 	cbz	x8, #-48 ; -> 0x4eff4fc 
004eff530 	ldr	w9, [x8, #24]
004eff534 	cmp	w9, #18
004eff538 	b.ls	#40 ; -> 0x4eff560 
004eff53c 	ldr	x0, [x19, #2848]
004eff540 	cbz	x0, #-68 ; -> 0x4eff4fc 
004eff544 	ldp	x20, x19, [sp, #32]
004eff548 	mov	x2, xzr
004eff54c 	ldp	x22, x21, [sp, #16]
004eff550 	ldr	x1, [x8, #176]
004eff554 	ldr	x30, [sp, #8]
004eff558 	ldr	d8, [sp], #48
004eff55c 	b	#78326748 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004eff560 	bl	#-9889868 ; -> 0x4590d14 
