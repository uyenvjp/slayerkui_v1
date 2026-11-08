004f08838 	str	d8, [sp, #-48]!
004f0883c 	str	x30, [sp, #8]
004f08840 	stp	x22, x21, [sp, #16]
004f08844 	stp	x20, x19, [sp, #32]
004f08848 	adrp	x20, #97308672 ; -> 0xabd5000 
004f0884c 	mov	x19, x0
004f08850 	ldrb	w8, [x20, #1611]
004f08854 	tbnz	w8, #0, #60 ; -> 0x4f08890 
004f08858 	adrp	x0, #89001984 ; -> 0xa3e9000 
004f0885c 	ldr	x0, [x0, #3552]
004f08860 	bl	#-9928192 ; -> 0x4590a60 
004f08864 	adrp	x0, #89038848 ; -> 0xa3f2000 
004f08868 	ldr	x0, [x0, #552]
004f0886c 	bl	#-9928204 ; -> 0x4590a60 
004f08870 	adrp	x0, #89001984 ; -> 0xa3e9000 
004f08874 	ldr	x0, [x0, #1264]
004f08878 	bl	#-9928216 ; -> 0x4590a60 
004f0887c 	adrp	x0, #89223168 ; -> 0xa41f000 
004f08880 	ldr	x0, [x0, #1880]
004f08884 	bl	#-9928228 ; -> 0x4590a60 
004f08888 	mov	w8, #1
004f0888c 	strb	w8, [x20, #1611]
004f08890 	ldr	w8, [x19, #16]
004f08894 	ldr	x20, [x19, #32]
004f08898 	cmp	w8, #2
004f0889c 	b.eq	#792 ; -> 0x4f08bb4 
004f088a0 	cmp	w8, #1
004f088a4 	b.eq	#292 ; -> 0x4f089c8 
004f088a8 	cbnz	w8, #808 ; -> 0x4f08bd0 
004f088ac 	mov	w8, #-1
004f088b0 	mov	x0, xzr
004f088b4 	str	w8, [x19, #16]
004f088b8 	bl	#-2030348 ; -> 0x4d18dac SoundManager::get_instance
004f088bc 	cbz	x0, #816 ; -> 0x4f08bec 
004f088c0 	ldr	x8, [x0]
004f088c4 	mov	x1, xzr
004f088c8 	ldr	x9, [x8, #1848]
004f088cc 	ldr	x2, [x8, #1856]
004f088d0 	blr	x9
004f088d4 	cbz	x20, #792 ; -> 0x4f08bec 
004f088d8 	ldr	x8, [x20]
004f088dc 	mov	x0, x20
004f088e0 	mov	w1, #3
004f088e4 	ldr	x9, [x8, #712]
004f088e8 	ldr	x2, [x8, #720]
004f088ec 	blr	x9
004f088f0 	adrp	x22, #97280000 ; -> 0xabce000 
004f088f4 	ldr	x21, [x20, #328]
004f088f8 	ldrb	w8, [x22, #2296]
004f088fc 	cbnz	w8, #24 ; -> 0x4f08914 
004f08900 	adrp	x0, #88997888 ; -> 0xa3e8000 
004f08904 	ldr	x0, [x0, #688]
004f08908 	bl	#-9928360 ; -> 0x4590a60 
004f0890c 	mov	w8, #1
004f08910 	strb	w8, [x22, #2296]
004f08914 	cbz	x21, #728 ; -> 0x4f08bec 
004f08918 	adrp	x8, #88997888 ; -> 0xa3e8000 
004f0891c 	mov	x0, x21
004f08920 	mov	x1, xzr
004f08924 	ldr	x8, [x8, #688]
004f08928 	ldr	x8, [x8]
004f0892c 	ldr	x8, [x8, #184]
004f08930 	ldp	s0, s1, [x8]
004f08934 	bl	#79193212 ; -> 0x9a8edb0 UnityEngine.Rigidbody2D::set_linearVelocity
004f08938 	adrp	x21, #89038848 ; -> 0xa3f2000 
004f0893c 	ldr	x21, [x21, #552]
004f08940 	ldr	x0, [x21]
004f08944 	ldr	w8, [x0, #228]
004f08948 	cbnz	w8, #12 ; -> 0x4f08954 
004f0894c 	bl	#-9928044 ; -> 0x4590be0 
004f08950 	ldr	x0, [x21]
004f08954 	ldr	x8, [x0, #184]
004f08958 	ldr	x0, [x8]
004f0895c 	cbz	x0, #656 ; -> 0x4f08bec 
004f08960 	mov	x1, xzr
004f08964 	bl	#-799156 ; -> 0x4e457b0 GameManager::BlackBackGround_BlackOut
004f08968 	mov	x0, x20
004f0896c 	mov	x1, xzr
004f08970 	bl	#-83552 ; -> 0x4ef4310 PlayerBase::SkillUsing_ON
004f08974 	mov	x0, x20
004f08978 	mov	w1, #1
004f0897c 	mov	x2, xzr
004f08980 	mov	w20, #1
004f08984 	bl	#-65844 ; -> 0x4ef8850 PlayerBase::SetRebornState
004f08988 	adrp	x8, #89001984 ; -> 0xa3e9000 
004f0898c 	ldr	x8, [x8, #1264]
004f08990 	ldr	s8, [x19, #40]
004f08994 	ldr	x0, [x8]
004f08998 	ldr	w8, [x0, #228]
004f0899c 	cbnz	w8, #8 ; -> 0x4f089a4 
004f089a0 	bl	#-9928128 ; -> 0x4590be0 
004f089a4 	fmov	s0, s8
004f089a8 	mov	x0, xzr
004f089ac 	bl	#-3864292 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004f089b0 	mov	x1, x0
004f089b4 	str	x0, [x19, #24]!
004f089b8 	mov	x0, x19
004f089bc 	bl	#-9928632 ; -> 0x4590a04 
004f089c0 	stur	w20, [x19, #-8]
004f089c4 	b	#528 ; -> 0x4f08bd4 
004f089c8 	adrp	x22, #89038848 ; -> 0xa3f2000 
004f089cc 	mov	w9, #-1
004f089d0 	ldr	x22, [x22, #552]
004f089d4 	str	w9, [x19, #16]
004f089d8 	ldr	x0, [x22]
004f089dc 	ldr	w8, [x0, #228]
004f089e0 	cbnz	w8, #12 ; -> 0x4f089ec 
004f089e4 	bl	#-9928196 ; -> 0x4590be0 
004f089e8 	ldr	x0, [x22]
004f089ec 	ldr	x8, [x0, #184]
004f089f0 	ldr	x8, [x8]
004f089f4 	cbz	x8, #504 ; -> 0x4f08bec 
004f089f8 	ldr	s0, [x8, #1488]
004f089fc 	fcmp	s0, #0.0
004f08a00 	b.ls	#464 ; -> 0x4f08bd0 
004f08a04 	adrp	x21, #89223168 ; -> 0xa41f000 
004f08a08 	ldr	x21, [x21, #1880]
004f08a0c 	ldr	x8, [x21]
004f08a10 	ldr	x8, [x8, #184]
004f08a14 	ldr	x0, [x8]
004f08a18 	cbz	x0, #468 ; -> 0x4f08bec 
004f08a1c 	mov	x1, xzr
004f08a20 	bl	#-256908 ; -> 0x4ec9e94 ObjectPooler_Effect::SpawnRebornEffect
004f08a24 	ldr	x8, [x21]
004f08a28 	ldr	x8, [x8, #184]
004f08a2c 	ldr	x8, [x8]
004f08a30 	cbz	x8, #444 ; -> 0x4f08bec 
004f08a34 	mov	x21, x0
004f08a38 	cbz	x0, #436 ; -> 0x4f08bec 
004f08a3c 	ldr	x1, [x8, #40]
004f08a40 	mov	x0, x21
004f08a44 	mov	x2, xzr
004f08a48 	bl	#78688804 ; -> 0x9a13c6c UnityEngine.Transform::SetParent
004f08a4c 	cbz	x20, #416 ; -> 0x4f08bec 
004f08a50 	mov	x0, x20
004f08a54 	mov	x1, xzr
004f08a58 	bl	#78609288 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004f08a5c 	cbz	x0, #400 ; -> 0x4f08bec 
004f08a60 	mov	x1, xzr
004f08a64 	bl	#78685896 ; -> 0x9a1312c UnityEngine.Transform::get_position
004f08a68 	movi	d3, #0000000000000000
004f08a6c 	fmov	s4, #2.50000000
004f08a70 	mov	x0, x21
004f08a74 	mov	x1, xzr
004f08a78 	fadd	s1, s1, s4
004f08a7c 	fadd	s0, s0, s3
004f08a80 	fadd	s2, s2, s3
004f08a84 	bl	#78686084 ; -> 0x9a13208 UnityEngine.Transform::set_position
004f08a88 	fmov	s0, #3.00000000
004f08a8c 	fmov	s1, #3.00000000
004f08a90 	mov	x0, x21
004f08a94 	fmov	s2, #1.00000000
004f08a98 	mov	x1, xzr
004f08a9c 	bl	#78688176 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004f08aa0 	mov	x0, x21
004f08aa4 	mov	x1, xzr
004f08aa8 	bl	#78609416 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004f08aac 	cbz	x0, #320 ; -> 0x4f08bec 
004f08ab0 	mov	w1, #1
004f08ab4 	mov	x2, xzr
004f08ab8 	bl	#78623004 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004f08abc 	adrp	x8, #89001984 ; -> 0xa3e9000 
004f08ac0 	ldr	x8, [x8, #3552]
004f08ac4 	ldr	x0, [x8]
004f08ac8 	ldr	w8, [x0, #228]
004f08acc 	cbnz	w8, #8 ; -> 0x4f08ad4 
004f08ad0 	bl	#-9928432 ; -> 0x4590be0 
004f08ad4 	mov	w0, wzr
004f08ad8 	mov	x1, xzr
004f08adc 	bl	#69682376 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f08ae0 	mov	x2, x0
004f08ae4 	mov	x3, x1
004f08ae8 	mov	x0, x20
004f08aec 	mov	x1, x2
004f08af0 	mov	x2, x3
004f08af4 	mov	x3, xzr
004f08af8 	bl	#1104788 ; -> 0x501668c Character::set_Hp_cur
004f08afc 	ldr	s0, [x19, #44]
004f08b00 	mov	x0, x20
004f08b04 	mov	x1, xzr
004f08b08 	bl	#-91108 ; -> 0x4ef2724 PlayerBase::Hp_Heal_Skill
004f08b0c 	ldr	x0, [x22]
004f08b10 	ldr	w8, [x0, #228]
004f08b14 	cbnz	w8, #12 ; -> 0x4f08b20 
004f08b18 	bl	#-9928504 ; -> 0x4590be0 
004f08b1c 	ldr	x0, [x22]
004f08b20 	ldr	x8, [x0, #184]
004f08b24 	ldr	x0, [x8]
004f08b28 	cbz	x0, #196 ; -> 0x4f08bec 
004f08b2c 	mov	x1, xzr
004f08b30 	bl	#-799412 ; -> 0x4e4587c GameManager::BlackBackGround_OFF
004f08b34 	mov	x0, x20
004f08b38 	mov	x1, xzr
004f08b3c 	bl	#-83612 ; -> 0x4ef44a0 PlayerBase::SkillUsing_OFF
004f08b40 	mov	x0, x20
004f08b44 	mov	x1, xzr
004f08b48 	bl	#-85340 ; -> 0x4ef3dec PlayerBase::Move
004f08b4c 	mov	x1, x0
004f08b50 	mov	x0, x20
004f08b54 	mov	x2, xzr
004f08b58 	bl	#-86136 ; -> 0x4ef3ae0 PlayerBase::StopAndGoIE_State
004f08b5c 	mov	x0, x20
004f08b60 	mov	w1, #2
004f08b64 	mov	x2, xzr
004f08b68 	mov	w20, #2
004f08b6c 	bl	#-66332 ; -> 0x4ef8850 PlayerBase::SetRebornState
004f08b70 	adrp	x8, #89001984 ; -> 0xa3e9000 
004f08b74 	ldr	x8, [x8, #1264]
004f08b78 	ldr	s8, [x19, #48]
004f08b7c 	ldr	x0, [x8]
004f08b80 	ldr	w8, [x0, #228]
004f08b84 	cbnz	w8, #8 ; -> 0x4f08b8c 
004f08b88 	bl	#-9928616 ; -> 0x4590be0 
004f08b8c 	fmov	s0, s8
004f08b90 	mov	x0, xzr
004f08b94 	bl	#-3864780 ; -> 0x4b592c8 GlobalUtil::WaitForSeconds
004f08b98 	mov	x1, x0
004f08b9c 	str	x0, [x19, #24]!
004f08ba0 	mov	x0, x19
004f08ba4 	bl	#-9929120 ; -> 0x4590a04 
004f08ba8 	stur	w20, [x19, #-8]
004f08bac 	mov	w20, #1
004f08bb0 	b	#36 ; -> 0x4f08bd4 
004f08bb4 	mov	w8, #-1
004f08bb8 	str	w8, [x19, #16]
004f08bbc 	cbz	x20, #48 ; -> 0x4f08bec 
004f08bc0 	mov	x0, x20
004f08bc4 	mov	w1, #3
004f08bc8 	mov	x2, xzr
004f08bcc 	bl	#-66428 ; -> 0x4ef8850 PlayerBase::SetRebornState
004f08bd0 	mov	w20, wzr
004f08bd4 	mov	w0, w20
004f08bd8 	ldp	x20, x19, [sp, #32]
004f08bdc 	ldp	x22, x21, [sp, #16]
004f08be0 	ldr	x30, [sp, #8]
004f08be4 	ldr	d8, [sp], #48
004f08be8 	ret
004f08bec 	bl	#-9928416 ; -> 0x4590d0c 
