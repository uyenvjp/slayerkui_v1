004ef797c 	stp	x30, x21, [sp, #-32]!
004ef7980 	stp	x20, x19, [sp, #16]
004ef7984 	adrp	x21, #97378304 ; -> 0xabd5000 
004ef7988 	mov	w20, w1
004ef798c 	mov	x19, x0
004ef7990 	ldrb	w8, [x21, #1490]
004ef7994 	tbnz	w8, #0, #48 ; -> 0x4ef79c4 
004ef7998 	adrp	x0, #89092096 ; -> 0xa3ee000 
004ef799c 	ldr	x0, [x0, #2104]
004ef79a0 	bl	#-9858880 ; -> 0x4590a60 
004ef79a4 	adrp	x0, #89341952 ; -> 0xa42b000 
004ef79a8 	ldr	x0, [x0, #2624]
004ef79ac 	bl	#-9858892 ; -> 0x4590a60 
004ef79b0 	adrp	x0, #89120768 ; -> 0xa3f5000 
004ef79b4 	ldr	x0, [x0, #3904]
004ef79b8 	bl	#-9858904 ; -> 0x4590a60 
004ef79bc 	mov	w8, #1
004ef79c0 	strb	w8, [x21, #1490]
004ef79c4 	mov	w0, #32906
004ef79c8 	mov	x1, xzr
004ef79cc 	bl	#-2819112 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef79d0 	tbz	w0, #0, #44 ; -> 0x4ef79fc 
004ef79d4 	mov	w0, #32906
004ef79d8 	mov	x1, xzr
004ef79dc 	bl	#-2818948 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef79e0 	cbz	x0, #328 ; -> 0x4ef7b28 
004ef79e4 	mov	x1, x19
004ef79e8 	mov	w2, w20
004ef79ec 	mov	x3, xzr
004ef79f0 	ldp	x20, x19, [sp, #16]
004ef79f4 	ldp	x30, x21, [sp], #32
004ef79f8 	b	#-3203176 ; -> 0x4be9990 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2100
004ef79fc 	mov	x0, x19
004ef7a00 	bl	#3324 ; -> 0x4ef86fc PlayerBase::StopFakeDeathCoroutine
004ef7a04 	cmp	w20, #1
004ef7a08 	b.ne	#60 ; -> 0x4ef7a44 
004ef7a0c 	adrp	x8, #89120768 ; -> 0xa3f5000 
004ef7a10 	ldr	x8, [x8, #3904]
004ef7a14 	ldr	x8, [x8]
004ef7a18 	ldr	x8, [x8, #184]
004ef7a1c 	ldr	x0, [x8]
004ef7a20 	cbz	x0, #264 ; -> 0x4ef7b28 
004ef7a24 	mov	w1, #1018
004ef7a28 	mov	x2, xzr
004ef7a2c 	bl	#1601024 ; -> 0x507e82c SkillManager::IsEquippedSkillBlocked
004ef7a30 	tbz	w0, #0, #32 ; -> 0x4ef7a50 
004ef7a34 	mov	x0, x19
004ef7a38 	ldp	x20, x19, [sp, #16]
004ef7a3c 	ldp	x30, x21, [sp], #32
004ef7a40 	b	#240 ; -> 0x4ef7b30 PlayerBase::Death
004ef7a44 	ldp	x20, x19, [sp, #16]
004ef7a48 	ldp	x30, x21, [sp], #32
004ef7a4c 	ret
004ef7a50 	adrp	x20, #89092096 ; -> 0xa3ee000 
004ef7a54 	ldr	x20, [x20, #2104]
004ef7a58 	strb	wzr, [x19, #2360]
004ef7a5c 	ldr	x0, [x20]
004ef7a60 	ldr	w8, [x0, #228]
004ef7a64 	cbnz	w8, #8 ; -> 0x4ef7a6c 
004ef7a68 	bl	#-9858696 ; -> 0x4590be0 
004ef7a6c 	adrp	x21, #97353728 ; -> 0xabcf000 
004ef7a70 	ldrb	w8, [x21, #360]
004ef7a74 	cbnz	w8, #24 ; -> 0x4ef7a8c 
004ef7a78 	adrp	x0, #89092096 ; -> 0xa3ee000 
004ef7a7c 	ldr	x0, [x0, #2104]
004ef7a80 	bl	#-9859104 ; -> 0x4590a60 
004ef7a84 	mov	w8, #1
004ef7a88 	strb	w8, [x21, #360]
004ef7a8c 	ldr	x0, [x20]
004ef7a90 	ldr	w8, [x0, #228]
004ef7a94 	cbnz	w8, #12 ; -> 0x4ef7aa0 
004ef7a98 	bl	#-9858744 ; -> 0x4590be0 
004ef7a9c 	ldr	x0, [x20]
004ef7aa0 	ldr	x8, [x0, #184]
004ef7aa4 	ldr	x8, [x8]
004ef7aa8 	cbz	x8, #128 ; -> 0x4ef7b28 
004ef7aac 	ldr	x0, [x8, #1536]
004ef7ab0 	cbz	x0, #120 ; -> 0x4ef7b28 
004ef7ab4 	adrp	x8, #89341952 ; -> 0xa42b000 
004ef7ab8 	mov	w1, #1018
004ef7abc 	ldr	x8, [x8, #2624]
004ef7ac0 	ldr	x2, [x8]
004ef7ac4 	bl	#26212496 ; -> 0x67f7354 
004ef7ac8 	cbz	x0, #96 ; -> 0x4ef7b28 
004ef7acc 	ldr	x8, [x0, #152]
004ef7ad0 	cbz	x8, #88 ; -> 0x4ef7b28 
004ef7ad4 	ldr	w9, [x8, #24]
004ef7ad8 	cbz	w9, #84 ; -> 0x4ef7b2c 
004ef7adc 	cmp	w9, #1
004ef7ae0 	b.eq	#76 ; -> 0x4ef7b2c 
004ef7ae4 	cmp	w9, #2
004ef7ae8 	b.ls	#68 ; -> 0x4ef7b2c 
004ef7aec 	ldp	s0, s1, [x8, #32]
004ef7af0 	mov	x0, x19
004ef7af4 	ldr	s2, [x8, #40]
004ef7af8 	mov	w1, #1018
004ef7afc 	bl	#3180 ; -> 0x4ef8768 PlayerBase::Co_FakeDeath
004ef7b00 	mov	x1, x0
004ef7b04 	mov	x0, x19
004ef7b08 	mov	x2, xzr
004ef7b0c 	bl	#78700784 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004ef7b10 	mov	x1, x0
004ef7b14 	add	x0, x19, #2352
004ef7b18 	str	x1, [x19, #2352]
004ef7b1c 	ldp	x20, x19, [sp, #16]
004ef7b20 	ldp	x30, x21, [sp], #32
004ef7b24 	b	#-9859360 ; -> 0x4590a04 
004ef7b28 	bl	#-9858588 ; -> 0x4590d0c 
004ef7b2c 	bl	#-9858584 ; -> 0x4590d14 
