004e517d8 	sub	sp, sp, #96
004e517dc 	str	d10, [sp, #16]
004e517e0 	stp	d9, d8, [sp, #24]
004e517e4 	str	x30, [sp, #40]
004e517e8 	stp	x24, x23, [sp, #48]
004e517ec 	stp	x22, x21, [sp, #64]
004e517f0 	stp	x20, x19, [sp, #80]
004e517f4 	fmov	s8, s2
004e517f8 	fmov	s9, s1
004e517fc 	adrp	x20, #98058240 ; -> 0xabd5000 
004e51800 	fmov	s10, s0
004e51804 	ldrb	w8, [x20, #338]
004e51808 	mov	w21, w1
004e5180c 	mov	x19, x0
004e51810 	tbnz	w8, #0, #108 ; -> 0x4e5187c 
004e51814 	adrp	x0, #89751552 ; -> 0xa3e9000 
004e51818 	ldr	x0, [x0, #3552]
004e5181c 	bl	#-9178556 ; -> 0x4590a60 
004e51820 	adrp	x0, #89772032 ; -> 0xa3ee000 
004e51824 	ldr	x0, [x0, #2104]
004e51828 	bl	#-9178568 ; -> 0x4590a60 
004e5182c 	adrp	x0, #89972736 ; -> 0xa41f000 
004e51830 	ldr	x0, [x0, #2808]
004e51834 	bl	#-9178580 ; -> 0x4590a60 
004e51838 	adrp	x0, #90009600 ; -> 0xa428000 
004e5183c 	ldr	x0, [x0, #2216]
004e51840 	bl	#-9178592 ; -> 0x4590a60 
004e51844 	adrp	x0, #89927680 ; -> 0xa414000 
004e51848 	ldr	x0, [x0, #3944]
004e5184c 	bl	#-9178604 ; -> 0x4590a60 
004e51850 	adrp	x0, #90009600 ; -> 0xa428000 
004e51854 	ldr	x0, [x0, #2224]
004e51858 	bl	#-9178616 ; -> 0x4590a60 
004e5185c 	adrp	x0, #89743360 ; -> 0xa3e7000 
004e51860 	ldr	x0, [x0, #1192]
004e51864 	bl	#-9178628 ; -> 0x4590a60 
004e51868 	adrp	x0, #89972736 ; -> 0xa41f000 
004e5186c 	ldr	x0, [x0, #2832]
004e51870 	bl	#-9178640 ; -> 0x4590a60 
004e51874 	mov	w8, #1
004e51878 	strb	w8, [x20, #338]
004e5187c 	mov	w0, #7768
004e51880 	mov	x1, xzr
004e51884 	bl	#-2138848 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e51888 	tbz	w0, #0, #76 ; -> 0x4e518d4 
004e5188c 	mov	w0, #7768
004e51890 	mov	x1, xzr
004e51894 	bl	#-2138684 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51898 	cbz	x0, #1160 ; -> 0x4e51d20 
004e5189c 	mov	x1, x19
004e518a0 	mov	w2, w21
004e518a4 	fmov	s1, s9
004e518a8 	fmov	s2, s8
004e518ac 	ldp	x20, x19, [sp, #80]
004e518b0 	ldp	x22, x21, [sp, #64]
004e518b4 	fmov	s0, s10
004e518b8 	ldp	x24, x23, [sp, #48]
004e518bc 	ldr	x30, [sp, #40]
004e518c0 	ldp	d9, d8, [sp, #24]
004e518c4 	ldr	d10, [sp, #16]
004e518c8 	mov	x3, xzr
004e518cc 	add	sp, sp, #96
004e518d0 	b	#-2747236 ; -> 0x4bb2d6c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1034
004e518d4 	adrp	x8, #90009600 ; -> 0xa428000 
004e518d8 	ldr	x8, [x8, #2224]
004e518dc 	ldr	x8, [x8]
004e518e0 	ldr	x8, [x8, #184]
004e518e4 	ldr	x0, [x8]
004e518e8 	cbz	x0, #1080 ; -> 0x4e51d20 
004e518ec 	adrp	x8, #89972736 ; -> 0xa41f000 
004e518f0 	mov	x2, xzr
004e518f4 	ldr	x8, [x8, #2832]
004e518f8 	ldr	x1, [x8]
004e518fc 	bl	#499716 ; -> 0x4ecb900 ObjectPooler_Enemy::GetEnemy
004e51900 	adrp	x8, #89743360 ; -> 0xa3e7000 
004e51904 	mov	x20, x0
004e51908 	ldr	x8, [x8, #1192]
004e5190c 	ldr	x8, [x8]
004e51910 	ldr	w9, [x8, #228]
004e51914 	cbnz	w9, #12 ; -> 0x4e51920 
004e51918 	mov	x0, x8
004e5191c 	bl	#-9178428 ; -> 0x4590be0 
004e51920 	mov	x0, x20
004e51924 	mov	x1, xzr
004e51928 	mov	x2, xzr
004e5192c 	bl	#79378020 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
004e51930 	tbnz	w0, #0, #976 ; -> 0x4e51d00 
004e51934 	cbz	x20, #1004 ; -> 0x4e51d20 
004e51938 	mov	x0, x20
004e5193c 	mov	x1, xzr
004e51940 	bl	#79359136 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e51944 	cbz	x0, #988 ; -> 0x4e51d20 
004e51948 	fmov	s0, s10
004e5194c 	fmov	s1, s9
004e51950 	mov	x1, xzr
004e51954 	fmov	s2, s8
004e51958 	bl	#79435952 ; -> 0x9a13208 UnityEngine.Transform::set_position
004e5195c 	mov	x0, x20
004e51960 	mov	x1, xzr
004e51964 	bl	#79359100 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e51968 	mov	x22, x0
004e5196c 	mov	x0, sp
004e51970 	mov	x1, xzr
004e51974 	str	wzr, [sp, #8]
004e51978 	str	xzr, [sp]
004e5197c 	bl	#79305080 ; -> 0x99f32f4 UnityEngine.Quaternion::Internal_FromEulerRad
004e51980 	cbz	x22, #928 ; -> 0x4e51d20 
004e51984 	mov	x0, x22
004e51988 	mov	x1, xzr
004e5198c 	bl	#79436556 ; -> 0x9a13498 UnityEngine.Transform::set_rotation
004e51990 	adrp	x22, #89772032 ; -> 0xa3ee000 
004e51994 	ldr	x22, [x22, #2104]
004e51998 	ldr	x0, [x22]
004e5199c 	ldr	w8, [x0, #228]
004e519a0 	cbnz	w8, #8 ; -> 0x4e519a8 
004e519a4 	bl	#-9178564 ; -> 0x4590be0 
004e519a8 	adrp	x23, #98033664 ; -> 0xabcf000 
004e519ac 	ldrb	w8, [x23, #360]
004e519b0 	cbnz	w8, #24 ; -> 0x4e519c8 
004e519b4 	adrp	x0, #89772032 ; -> 0xa3ee000 
004e519b8 	ldr	x0, [x0, #2104]
004e519bc 	bl	#-9178972 ; -> 0x4590a60 
004e519c0 	mov	w8, #1
004e519c4 	strb	w8, [x23, #360]
004e519c8 	ldr	x0, [x22]
004e519cc 	ldr	w8, [x0, #228]
004e519d0 	cbnz	w8, #12 ; -> 0x4e519dc 
004e519d4 	bl	#-9178612 ; -> 0x4590be0 
004e519d8 	ldr	x0, [x22]
004e519dc 	ldr	x8, [x0, #184]
004e519e0 	ldr	x8, [x8]
004e519e4 	cbz	x8, #828 ; -> 0x4e51d20 
004e519e8 	ldr	x0, [x8, #160]
004e519ec 	cbz	x0, #820 ; -> 0x4e51d20 
004e519f0 	adrp	x8, #89972736 ; -> 0xa41f000 
004e519f4 	mov	w1, w21
004e519f8 	ldr	x8, [x8, #2808]
004e519fc 	ldr	x2, [x8]
004e51a00 	bl	#52456852 ; -> 0x8058794 
004e51a04 	mov	x21, x0
004e51a08 	mov	x0, x19
004e51a0c 	bl	#-1020 ; -> 0x4e51610 GameManager::get_enemyHp
004e51a10 	mov	x2, x0
004e51a14 	mov	x3, x1
004e51a18 	mov	x0, x20
004e51a1c 	mov	x1, x2
004e51a20 	mov	x2, x3
004e51a24 	mov	x3, xzr
004e51a28 	bl	#1854376 ; -> 0x50165d0 Character::set_Hp_max
004e51a2c 	mov	x0, x20
004e51a30 	mov	x1, xzr
004e51a34 	bl	#1854288 ; -> 0x5016584 Character::get_Hp_max
004e51a38 	mov	x2, x0
004e51a3c 	mov	x3, x1
004e51a40 	mov	x0, x20
004e51a44 	mov	x1, x2
004e51a48 	mov	x2, x3
004e51a4c 	mov	x3, xzr
004e51a50 	bl	#1854524 ; -> 0x501668c Character::set_Hp_cur
004e51a54 	adrp	x8, #89751552 ; -> 0xa3e9000 
004e51a58 	ldr	x8, [x8, #3552]
004e51a5c 	ldr	x0, [x8]
004e51a60 	ldr	w8, [x0, #228]
004e51a64 	cbnz	w8, #8 ; -> 0x4e51a6c 
004e51a68 	bl	#-9178760 ; -> 0x4590be0 
004e51a6c 	mov	w0, wzr
004e51a70 	mov	x1, xzr
004e51a74 	bl	#70432048 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e51a78 	stp	x0, x1, [x20, #368]
004e51a7c 	add	x0, x20, #376
004e51a80 	mov	x1, xzr
004e51a84 	bl	#-9179264 ; -> 0x4590a04 
004e51a88 	adrp	x23, #98033664 ; -> 0xabcf000 
004e51a8c 	ldr	x22, [x20, #336]
004e51a90 	strb	wzr, [x20, #361]
004e51a94 	ldrb	w8, [x23, #362]
004e51a98 	cbnz	w8, #24 ; -> 0x4e51ab0 
004e51a9c 	adrp	x0, #89747456 ; -> 0xa3e8000 
004e51aa0 	ldr	x0, [x0, #632]
004e51aa4 	bl	#-9179204 ; -> 0x4590a60 
004e51aa8 	mov	w8, #1
004e51aac 	strb	w8, [x23, #362]
004e51ab0 	cbz	x21, #624 ; -> 0x4e51d20 
004e51ab4 	cbz	x22, #620 ; -> 0x4e51d20 
004e51ab8 	adrp	x24, #89747456 ; -> 0xa3e8000 
004e51abc 	mov	x0, x22
004e51ac0 	mov	x1, xzr
004e51ac4 	ldr	x24, [x24, #632]
004e51ac8 	ldr	s0, [x21, #44]
004e51acc 	ldr	x8, [x24]
004e51ad0 	ldr	x8, [x8, #184]
004e51ad4 	ldp	s1, s3, [x8, #16]
004e51ad8 	fdiv	s2, s3, s0
004e51adc 	ldr	s3, [x8, #12]
004e51ae0 	fdiv	s1, s1, s0
004e51ae4 	fdiv	s0, s3, s0
004e51ae8 	bl	#79437668 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004e51aec 	ldrb	w8, [x23, #362]
004e51af0 	ldr	x22, [x20, #328]
004e51af4 	cbnz	w8, #24 ; -> 0x4e51b0c 
004e51af8 	adrp	x0, #89747456 ; -> 0xa3e8000 
004e51afc 	ldr	x0, [x0, #632]
004e51b00 	bl	#-9179296 ; -> 0x4590a60 
004e51b04 	mov	w8, #1
004e51b08 	strb	w8, [x23, #362]
004e51b0c 	ldr	x8, [x19, #520]
004e51b10 	cbz	x8, #528 ; -> 0x4e51d20 
004e51b14 	cbz	x22, #524 ; -> 0x4e51d20 
004e51b18 	ldr	x9, [x24]
004e51b1c 	ldr	s0, [x8, #84]
004e51b20 	mov	x0, x22
004e51b24 	mov	x1, xzr
004e51b28 	ldr	x9, [x9, #184]
004e51b2c 	ldp	s3, s1, [x9, #16]
004e51b30 	ldr	s4, [x9, #12]
004e51b34 	fmul	s2, s1, s0
004e51b38 	fmul	s1, s0, s3
004e51b3c 	fmul	s0, s0, s4
004e51b40 	bl	#79437580 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004e51b44 	ldr	x8, [x20]
004e51b48 	mov	w9, #1090519040
004e51b4c 	mov	x0, x20
004e51b50 	str	wzr, [x20, #304]
004e51b54 	ldp	x10, x1, [x8, #456]
004e51b58 	adrp	x8, #-49446912 ; -> 0x1f29000 
004e51b5c 	ldr	s0, [x8, #2372]
004e51b60 	str	w9, [x20, #384]
004e51b64 	blr	x10
004e51b68 	ldr	x8, [x19, #520]
004e51b6c 	cbz	x8, #436 ; -> 0x4e51d20 
004e51b70 	ldr	x9, [x20]
004e51b74 	ldr	s0, [x8, #212]
004e51b78 	mov	x0, x20
004e51b7c 	ldp	x8, x1, [x9, #488]
004e51b80 	blr	x8
004e51b84 	ldr	x8, [x19, #520]
004e51b88 	cbz	x8, #408 ; -> 0x4e51d20 
004e51b8c 	ldr	x9, [x20]
004e51b90 	ldr	s0, [x8, #216]
004e51b94 	mov	x0, x20
004e51b98 	ldr	x8, [x9, #520]
004e51b9c 	ldr	x1, [x9, #528]
004e51ba0 	blr	x8
004e51ba4 	add	x8, x20, #404
004e51ba8 	ldr	x9, [x20]
004e51bac 	ldr	s0, [x21, #52]
004e51bb0 	str	xzr, [x8]
004e51bb4 	mov	x0, x20
004e51bb8 	ldr	w1, [x21, #16]
004e51bbc 	ldr	x8, [x9, #968]
004e51bc0 	ldr	x2, [x9, #976]
004e51bc4 	str	s0, [x20, #388]
004e51bc8 	blr	x8
004e51bcc 	adrp	x21, #89927680 ; -> 0xa414000 
004e51bd0 	ldr	x21, [x21, #3944]
004e51bd4 	ldr	x8, [x21]
004e51bd8 	ldr	x0, [x8, #32]
004e51bdc 	add	x8, x0, #309
004e51be0 	ldrh	w8, [x8]
004e51be4 	tbnz	w8, #0, #8 ; -> 0x4e51bec 
004e51be8 	bl	#-8948928 ; -> 0x45c8f28 
004e51bec 	ldr	x8, [x0, #192]
004e51bf0 	ldr	x0, [x8, #16]
004e51bf4 	add	x8, x0, #309
004e51bf8 	ldrh	w8, [x8]
004e51bfc 	tbnz	w8, #0, #8 ; -> 0x4e51c04 
004e51c00 	bl	#-8948952 ; -> 0x45c8f28 
004e51c04 	ldr	x8, [x0, #184]
004e51c08 	ldr	x0, [x8]
004e51c0c 	cbz	x0, #276 ; -> 0x4e51d20 
004e51c10 	mov	x1, xzr
004e51c14 	bl	#5723072 ; -> 0x53c6fd4 ThemeDungeonEventManager::get_IsUsable
004e51c18 	tbz	w0, #0, #96 ; -> 0x4e51c78 
004e51c1c 	ldr	x8, [x21]
004e51c20 	ldr	x0, [x8, #32]
004e51c24 	add	x8, x0, #309
004e51c28 	ldrh	w8, [x8]
004e51c2c 	tbnz	w8, #0, #8 ; -> 0x4e51c34 
004e51c30 	bl	#-8949000 ; -> 0x45c8f28 
004e51c34 	ldr	x8, [x0, #192]
004e51c38 	ldr	x0, [x8, #16]
004e51c3c 	add	x8, x0, #309
004e51c40 	ldrh	w8, [x8]
004e51c44 	tbnz	w8, #0, #8 ; -> 0x4e51c4c 
004e51c48 	bl	#-8949024 ; -> 0x45c8f28 
004e51c4c 	ldr	x8, [x0, #184]
004e51c50 	ldr	x8, [x8]
004e51c54 	cbz	x8, #204 ; -> 0x4e51d20 
004e51c58 	ldr	x8, [x8, #72]
004e51c5c 	cbz	x8, #196 ; -> 0x4e51d20 
004e51c60 	ldr	w8, [x8, #40]
004e51c64 	cmp	w8, #2
004e51c68 	b.ne	#16 ; -> 0x4e51c78 
004e51c6c 	mov	x0, x19
004e51c70 	mov	x1, x20
004e51c74 	bl	#176 ; -> 0x4e51d24 GameManager::SetEnemyThemeDungeonMonster
004e51c78 	ldr	x0, [x19, #320]
004e51c7c 	cbz	x0, #164 ; -> 0x4e51d20 
004e51c80 	adrp	x9, #90009600 ; -> 0xa428000 
004e51c84 	ldr	x9, [x9, #2216]
004e51c88 	ldr	w10, [x0, #28]
004e51c8c 	ldr	x8, [x0, #16]
004e51c90 	ldr	x9, [x9]
004e51c94 	add	w10, w10, #1
004e51c98 	str	w10, [x0, #28]
004e51c9c 	cbz	x8, #132 ; -> 0x4e51d20 
004e51ca0 	ldrsw	x10, [x0, #24]
004e51ca4 	ldr	w11, [x8, #24]
004e51ca8 	cmp	w10, w11
004e51cac 	b.hs	#36 ; -> 0x4e51cd0 
004e51cb0 	add	x8, x8, x10, lsl #3
004e51cb4 	add	w9, w10, #1
004e51cb8 	mov	x1, x20
004e51cbc 	str	w9, [x0, #24]
004e51cc0 	str	x20, [x8, #32]!
004e51cc4 	mov	x0, x8
004e51cc8 	bl	#-9179844 ; -> 0x4590a04 
004e51ccc 	b	#24 ; -> 0x4e51ce4 
004e51cd0 	ldr	x8, [x9, #32]
004e51cd4 	mov	x1, x20
004e51cd8 	ldr	x8, [x8, #192]
004e51cdc 	ldr	x2, [x8, #112]
004e51ce0 	bl	#31158192 ; -> 0x6c08c90 
004e51ce4 	mov	x0, x20
004e51ce8 	mov	x1, xzr
004e51cec 	bl	#79358404 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004e51cf0 	cbz	x0, #48 ; -> 0x4e51d20 
004e51cf4 	mov	w1, #1
004e51cf8 	mov	x2, xzr
004e51cfc 	bl	#79371992 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e51d00 	ldp	x20, x19, [sp, #80]
004e51d04 	ldr	x30, [sp, #40]
004e51d08 	ldp	x22, x21, [sp, #64]
004e51d0c 	ldr	d10, [sp, #16]
004e51d10 	ldp	x24, x23, [sp, #48]
004e51d14 	ldp	d9, d8, [sp, #24]
004e51d18 	add	sp, sp, #96
004e51d1c 	ret
004e51d20 	bl	#-9179156 ; -> 0x4590d0c 
