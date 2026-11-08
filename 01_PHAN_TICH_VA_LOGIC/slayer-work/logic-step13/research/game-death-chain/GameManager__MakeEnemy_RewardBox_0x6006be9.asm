004e47d80 	sub	sp, sp, #96
004e47d84 	str	d10, [sp, #16]
004e47d88 	stp	d9, d8, [sp, #32]
004e47d8c 	stp	x30, x23, [sp, #48]
004e47d90 	stp	x22, x21, [sp, #64]
004e47d94 	stp	x20, x19, [sp, #80]
004e47d98 	fmov	s8, s2
004e47d9c 	fmov	s9, s1
004e47da0 	adrp	x20, #98099200 ; -> 0xabd5000 
004e47da4 	fmov	s10, s0
004e47da8 	ldrb	w8, [x20, #340]
004e47dac 	mov	x19, x0
004e47db0 	tbnz	w8, #0, #84 ; -> 0x4e47e04 
004e47db4 	adrp	x0, #89792512 ; -> 0xa3e9000 
004e47db8 	ldr	x0, [x0, #3552]
004e47dbc 	bl	#-9139036 ; -> 0x4590a60 
004e47dc0 	adrp	x0, #90050560 ; -> 0xa428000 
004e47dc4 	ldr	x0, [x0, #2216]
004e47dc8 	bl	#-9139048 ; -> 0x4590a60 
004e47dcc 	adrp	x0, #89968640 ; -> 0xa414000 
004e47dd0 	ldr	x0, [x0, #3944]
004e47dd4 	bl	#-9139060 ; -> 0x4590a60 
004e47dd8 	adrp	x0, #90050560 ; -> 0xa428000 
004e47ddc 	ldr	x0, [x0, #2224]
004e47de0 	bl	#-9139072 ; -> 0x4590a60 
004e47de4 	adrp	x0, #89784320 ; -> 0xa3e7000 
004e47de8 	ldr	x0, [x0, #1192]
004e47dec 	bl	#-9139084 ; -> 0x4590a60 
004e47df0 	adrp	x0, #90050560 ; -> 0xa428000 
004e47df4 	ldr	x0, [x0, #2232]
004e47df8 	bl	#-9139096 ; -> 0x4590a60 
004e47dfc 	mov	w8, #1
004e47e00 	strb	w8, [x20, #340]
004e47e04 	mov	w0, #30235
004e47e08 	mov	x1, xzr
004e47e0c 	bl	#-2099304 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e47e10 	tbz	w0, #0, #68 ; -> 0x4e47e54 
004e47e14 	mov	w0, #30235
004e47e18 	mov	x1, xzr
004e47e1c 	bl	#-2099140 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e47e20 	cbz	x0, #1020 ; -> 0x4e4821c 
004e47e24 	mov	x1, x19
004e47e28 	fmov	s1, s9
004e47e2c 	fmov	s2, s8
004e47e30 	ldp	x20, x19, [sp, #80]
004e47e34 	fmov	s0, s10
004e47e38 	ldp	x22, x21, [sp, #64]
004e47e3c 	ldr	d10, [sp, #16]
004e47e40 	ldp	x30, x23, [sp, #48]
004e47e44 	mov	x2, xzr
004e47e48 	ldp	d9, d8, [sp, #32]
004e47e4c 	add	sp, sp, #96
004e47e50 	b	#-2922456 ; -> 0x4b7e678 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2
004e47e54 	adrp	x8, #90050560 ; -> 0xa428000 
004e47e58 	ldr	x8, [x8, #2224]
004e47e5c 	ldr	x8, [x8]
004e47e60 	ldr	x8, [x8, #184]
004e47e64 	ldr	x0, [x8]
004e47e68 	cbz	x0, #948 ; -> 0x4e4821c 
004e47e6c 	adrp	x8, #90050560 ; -> 0xa428000 
004e47e70 	mov	x2, xzr
004e47e74 	ldr	x8, [x8, #2232]
004e47e78 	ldr	x1, [x8]
004e47e7c 	bl	#539268 ; -> 0x4ecb900 ObjectPooler_Enemy::GetEnemy
004e47e80 	adrp	x8, #89784320 ; -> 0xa3e7000 
004e47e84 	mov	x20, x0
004e47e88 	ldr	x8, [x8, #1192]
004e47e8c 	ldr	x8, [x8]
004e47e90 	ldr	w9, [x8, #228]
004e47e94 	cbnz	w9, #12 ; -> 0x4e47ea0 
004e47e98 	mov	x0, x8
004e47e9c 	bl	#-9138876 ; -> 0x4590be0 
004e47ea0 	mov	x0, x20
004e47ea4 	mov	x1, xzr
004e47ea8 	mov	x2, xzr
004e47eac 	bl	#79417572 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
004e47eb0 	tbnz	w0, #0, #848 ; -> 0x4e48200 
004e47eb4 	cbz	x20, #872 ; -> 0x4e4821c 
004e47eb8 	mov	x0, x20
004e47ebc 	mov	x1, xzr
004e47ec0 	bl	#79398688 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e47ec4 	cbz	x0, #856 ; -> 0x4e4821c 
004e47ec8 	fmov	s0, s10
004e47ecc 	fmov	s1, s9
004e47ed0 	mov	x1, xzr
004e47ed4 	fmov	s2, s8
004e47ed8 	bl	#79475504 ; -> 0x9a13208 UnityEngine.Transform::set_position
004e47edc 	mov	x0, x20
004e47ee0 	mov	x1, xzr
004e47ee4 	bl	#79398652 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e47ee8 	mov	x21, x0
004e47eec 	mov	x0, sp
004e47ef0 	mov	x1, xzr
004e47ef4 	str	wzr, [sp, #8]
004e47ef8 	str	xzr, [sp]
004e47efc 	bl	#79344632 ; -> 0x99f32f4 UnityEngine.Quaternion::Internal_FromEulerRad
004e47f00 	cbz	x21, #796 ; -> 0x4e4821c 
004e47f04 	mov	x0, x21
004e47f08 	mov	x1, xzr
004e47f0c 	bl	#79476108 ; -> 0x9a13498 UnityEngine.Transform::set_rotation
004e47f10 	mov	x0, x19
004e47f14 	bl	#38652 ; -> 0x4e51610 GameManager::get_enemyHp
004e47f18 	adrp	x8, #89792512 ; -> 0xa3e9000 
004e47f1c 	mov	x21, x0
004e47f20 	mov	x22, x1
004e47f24 	ldr	x8, [x8, #3552]
004e47f28 	ldr	x0, [x8]
004e47f2c 	ldr	w8, [x0, #228]
004e47f30 	cbnz	w8, #8 ; -> 0x4e47f38 
004e47f34 	bl	#-9139028 ; -> 0x4590be0 
004e47f38 	mov	w0, #5
004e47f3c 	mov	x1, xzr
004e47f40 	bl	#70471780 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e47f44 	mov	x2, x0
004e47f48 	mov	x3, x1
004e47f4c 	mov	x0, x21
004e47f50 	mov	x1, x22
004e47f54 	mov	x4, xzr
004e47f58 	bl	#70461676 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004e47f5c 	mov	x2, x0
004e47f60 	mov	x3, x1
004e47f64 	mov	x0, x20
004e47f68 	mov	x1, x2
004e47f6c 	mov	x2, x3
004e47f70 	mov	x3, xzr
004e47f74 	bl	#1893980 ; -> 0x50165d0 Character::set_Hp_max
004e47f78 	mov	x0, x20
004e47f7c 	mov	x1, xzr
004e47f80 	bl	#1893892 ; -> 0x5016584 Character::get_Hp_max
004e47f84 	mov	x2, x0
004e47f88 	mov	x3, x1
004e47f8c 	mov	x0, x20
004e47f90 	mov	x1, x2
004e47f94 	mov	x2, x3
004e47f98 	mov	x3, xzr
004e47f9c 	bl	#1894128 ; -> 0x501668c Character::set_Hp_cur
004e47fa0 	mov	w0, wzr
004e47fa4 	mov	x1, xzr
004e47fa8 	bl	#70471676 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e47fac 	stp	x0, x1, [x20, #368]
004e47fb0 	add	x0, x20, #376
004e47fb4 	mov	x1, xzr
004e47fb8 	bl	#-9139636 ; -> 0x4590a04 
004e47fbc 	adrp	x22, #98074624 ; -> 0xabcf000 
004e47fc0 	ldr	x21, [x20, #336]
004e47fc4 	strb	wzr, [x20, #361]
004e47fc8 	ldrb	w8, [x22, #362]
004e47fcc 	cbnz	w8, #24 ; -> 0x4e47fe4 
004e47fd0 	adrp	x0, #89788416 ; -> 0xa3e8000 
004e47fd4 	ldr	x0, [x0, #632]
004e47fd8 	bl	#-9139576 ; -> 0x4590a60 
004e47fdc 	mov	w8, #1
004e47fe0 	strb	w8, [x22, #362]
004e47fe4 	cbz	x21, #568 ; -> 0x4e4821c 
004e47fe8 	adrp	x23, #89788416 ; -> 0xa3e8000 
004e47fec 	mov	x0, x21
004e47ff0 	mov	x1, xzr
004e47ff4 	ldr	x23, [x23, #632]
004e47ff8 	ldr	x8, [x23]
004e47ffc 	ldr	x8, [x8, #184]
004e48000 	ldp	s1, s2, [x8, #16]
004e48004 	ldr	s0, [x8, #12]
004e48008 	bl	#79477316 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004e4800c 	ldrb	w8, [x22, #362]
004e48010 	ldr	x21, [x20, #328]
004e48014 	cbnz	w8, #24 ; -> 0x4e4802c 
004e48018 	adrp	x0, #89784320 ; -> 0xa3e8000 
004e4801c 	ldr	x0, [x0, #632]
004e48020 	bl	#-9139648 ; -> 0x4590a60 
004e48024 	mov	w8, #1
004e48028 	strb	w8, [x22, #362]
004e4802c 	cbz	x21, #496 ; -> 0x4e4821c 
004e48030 	ldr	x8, [x23]
004e48034 	mov	x0, x21
004e48038 	mov	x1, xzr
004e4803c 	ldr	x8, [x8, #184]
004e48040 	ldp	s1, s2, [x8, #16]
004e48044 	ldr	s0, [x8, #12]
004e48048 	bl	#79477252 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004e4804c 	ldr	x8, [x20]
004e48050 	movi	d0, #0000000000000000
004e48054 	mov	x0, x20
004e48058 	str	wzr, [x20, #304]
004e4805c 	ldp	x9, x1, [x8, #456]
004e48060 	str	wzr, [x20, #384]
004e48064 	blr	x9
004e48068 	ldr	x8, [x19, #520]
004e4806c 	cbz	x8, #432 ; -> 0x4e4821c 
004e48070 	ldr	x9, [x20]
004e48074 	ldr	s0, [x8, #212]
004e48078 	mov	x0, x20
004e4807c 	ldp	x8, x1, [x9, #488]
004e48080 	blr	x8
004e48084 	ldr	x8, [x19, #520]
004e48088 	cbz	x8, #404 ; -> 0x4e4821c 
004e4808c 	ldr	x9, [x20]
004e48090 	ldr	s0, [x8, #216]
004e48094 	mov	x0, x20
004e48098 	ldr	x8, [x9, #520]
004e4809c 	ldr	x1, [x9, #528]
004e480a0 	blr	x8
004e480a4 	mov	w8, #39322
004e480a8 	ldr	x0, [x20, #120]
004e480ac 	movk	w8, #16345, lsl #16
004e480b0 	str	w8, [x20, #388]
004e480b4 	add	x8, x20, #404
004e480b8 	str	xzr, [x8]
004e480bc 	cbz	x0, #352 ; -> 0x4e4821c 
004e480c0 	ldr	x1, [x19, #1440]
004e480c4 	mov	x2, xzr
004e480c8 	bl	#79077488 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004e480cc 	adrp	x21, #89964544 ; -> 0xa414000 
004e480d0 	ldr	x21, [x21, #3944]
004e480d4 	ldr	x8, [x21]
004e480d8 	ldr	x0, [x8, #32]
004e480dc 	add	x8, x0, #309
004e480e0 	ldrh	w8, [x8]
004e480e4 	tbnz	w8, #0, #8 ; -> 0x4e480ec 
004e480e8 	bl	#-8909248 ; -> 0x45c8f28 
004e480ec 	ldr	x8, [x0, #192]
004e480f0 	ldr	x0, [x8, #16]
004e480f4 	add	x8, x0, #309
004e480f8 	ldrh	w8, [x8]
004e480fc 	tbnz	w8, #0, #8 ; -> 0x4e48104 
004e48100 	bl	#-8909272 ; -> 0x45c8f28 
004e48104 	ldr	x8, [x0, #184]
004e48108 	ldr	x0, [x8]
004e4810c 	cbz	x0, #272 ; -> 0x4e4821c 
004e48110 	mov	x1, xzr
004e48114 	bl	#5762752 ; -> 0x53c6fd4 ThemeDungeonEventManager::get_IsUsable
004e48118 	tbz	w0, #0, #96 ; -> 0x4e48178 
004e4811c 	ldr	x8, [x21]
004e48120 	ldr	x0, [x8, #32]
004e48124 	add	x8, x0, #309
004e48128 	ldrh	w8, [x8]
004e4812c 	tbnz	w8, #0, #8 ; -> 0x4e48134 
004e48130 	bl	#-8909320 ; -> 0x45c8f28 
004e48134 	ldr	x8, [x0, #192]
004e48138 	ldr	x0, [x8, #16]
004e4813c 	add	x8, x0, #309
004e48140 	ldrh	w8, [x8]
004e48144 	tbnz	w8, #0, #8 ; -> 0x4e4814c 
004e48148 	bl	#-8909344 ; -> 0x45c8f28 
004e4814c 	ldr	x8, [x0, #184]
004e48150 	ldr	x8, [x8]
004e48154 	cbz	x8, #200 ; -> 0x4e4821c 
004e48158 	ldr	x8, [x8, #72]
004e4815c 	cbz	x8, #192 ; -> 0x4e4821c 
004e48160 	ldr	w8, [x8, #40]
004e48164 	cmp	w8, #2
004e48168 	b.ne	#16 ; -> 0x4e48178 
004e4816c 	mov	x0, x19
004e48170 	mov	x1, x20
004e48174 	bl	#39856 ; -> 0x4e51d24 GameManager::SetEnemyThemeDungeonMonster
004e48178 	ldr	x0, [x19, #320]
004e4817c 	cbz	x0, #160 ; -> 0x4e4821c 
004e48180 	adrp	x9, #90046464 ; -> 0xa428000 
004e48184 	ldr	x9, [x9, #2216]
004e48188 	ldr	w10, [x0, #28]
004e4818c 	ldr	x8, [x0, #16]
004e48190 	ldr	x9, [x9]
004e48194 	add	w10, w10, #1
004e48198 	str	w10, [x0, #28]
004e4819c 	cbz	x8, #128 ; -> 0x4e4821c 
004e481a0 	ldrsw	x10, [x0, #24]
004e481a4 	ldr	w11, [x8, #24]
004e481a8 	cmp	w10, w11
004e481ac 	b.hs	#36 ; -> 0x4e481d0 
004e481b0 	add	x8, x8, x10, lsl #3
004e481b4 	add	w9, w10, #1
004e481b8 	mov	x1, x20
004e481bc 	str	w9, [x0, #24]
004e481c0 	str	x20, [x8, #32]!
004e481c4 	mov	x0, x8
004e481c8 	bl	#-9140164 ; -> 0x4590a04 
004e481cc 	b	#24 ; -> 0x4e481e4 
004e481d0 	ldr	x8, [x9, #32]
004e481d4 	mov	x1, x20
004e481d8 	ldr	x8, [x8, #192]
004e481dc 	ldr	x2, [x8, #112]
004e481e0 	bl	#31197872 ; -> 0x6c08c90 
004e481e4 	mov	x0, x20
004e481e8 	mov	x1, xzr
004e481ec 	bl	#79398084 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004e481f0 	cbz	x0, #44 ; -> 0x4e4821c 
004e481f4 	mov	w1, #1
004e481f8 	mov	x2, xzr
004e481fc 	bl	#79411672 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e48200 	ldp	x20, x19, [sp, #80]
004e48204 	ldr	d10, [sp, #16]
004e48208 	ldp	x22, x21, [sp, #64]
004e4820c 	ldp	x30, x23, [sp, #48]
004e48210 	ldp	d9, d8, [sp, #32]
004e48214 	add	sp, sp, #96
004e48218 	ret
004e4821c 	bl	#-9139472 ; -> 0x4590d0c 
