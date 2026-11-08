0050f19b0 	sub	sp, sp, #208
0050f19b4 	stp	x30, x25, [sp, #144]
0050f19b8 	stp	x24, x23, [sp, #160]
0050f19bc 	stp	x22, x21, [sp, #176]
0050f19c0 	stp	x20, x19, [sp, #192]
0050f19c4 	adrp	x20, #95309824 ; -> 0xabd6000 
0050f19c8 	mov	x19, x0
0050f19cc 	ldrb	w8, [x20, #1266]
0050f19d0 	tbnz	w8, #0, #48 ; -> 0x50f1a00 
0050f19d4 	adrp	x0, #87035904 ; -> 0xa3f2000 
0050f19d8 	ldr	x0, [x0, #552]
0050f19dc 	bl	#-11931516 ; -> 0x4590a60 
0050f19e0 	adrp	x0, #87175168 ; -> 0xa414000 
0050f19e4 	ldr	x0, [x0, #3944]
0050f19e8 	bl	#-11931528 ; -> 0x4590a60 
0050f19ec 	adrp	x0, #87220224 ; -> 0xa41f000 
0050f19f0 	ldr	x0, [x0, #1880]
0050f19f4 	bl	#-11931540 ; -> 0x4590a60 
0050f19f8 	mov	w8, #1
0050f19fc 	strb	w8, [x20, #1266]
0050f1a00 	mov	w0, #38550
0050f1a04 	mov	x1, xzr
0050f1a08 	bl	#-4891748 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050f1a0c 	tbz	w0, #0, #52 ; -> 0x50f1a40 
0050f1a10 	mov	w0, #38550
0050f1a14 	mov	x1, xzr
0050f1a18 	bl	#-4891584 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050f1a1c 	cbz	x0, #756 ; -> 0x50f1d10 
0050f1a20 	mov	x1, x19
0050f1a24 	ldp	x20, x19, [sp, #192]
0050f1a28 	ldp	x22, x21, [sp, #176]
0050f1a2c 	mov	x2, xzr
0050f1a30 	ldp	x24, x23, [sp, #160]
0050f1a34 	ldp	x30, x25, [sp, #144]
0050f1a38 	add	sp, sp, #208
0050f1a3c 	b	#-5715228 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050f1a40 	adrp	x23, #87035904 ; -> 0xa3f2000 
0050f1a44 	ldr	x23, [x23, #552]
0050f1a48 	ldr	x0, [x23]
0050f1a4c 	ldr	w8, [x0, #228]
0050f1a50 	cbnz	w8, #12 ; -> 0x50f1a5c 
0050f1a54 	bl	#-11931252 ; -> 0x4590be0 
0050f1a58 	ldr	x0, [x23]
0050f1a5c 	ldr	x8, [x0, #184]
0050f1a60 	ldr	x8, [x8]
0050f1a64 	cbz	x8, #684 ; -> 0x50f1d10 
0050f1a68 	adrp	x20, #87175168 ; -> 0xa414000 
0050f1a6c 	ldr	x20, [x20, #3944]
0050f1a70 	ldr	x22, [x8, #520]
0050f1a74 	ldr	x9, [x20]
0050f1a78 	ldr	x0, [x9, #32]
0050f1a7c 	add	x9, x0, #309
0050f1a80 	ldrh	w9, [x9]
0050f1a84 	tbnz	w9, #0, #8 ; -> 0x50f1a8c 
0050f1a88 	bl	#-11701088 ; -> 0x45c8f28 
0050f1a8c 	ldr	x8, [x0, #192]
0050f1a90 	ldr	x0, [x8, #16]
0050f1a94 	add	x8, x0, #309
0050f1a98 	ldrh	w8, [x8]
0050f1a9c 	tbnz	w8, #0, #8 ; -> 0x50f1aa4 
0050f1aa0 	bl	#-11701112 ; -> 0x45c8f28 
0050f1aa4 	ldr	x8, [x0, #184]
0050f1aa8 	ldr	x0, [x8]
0050f1aac 	cbz	x0, #612 ; -> 0x50f1d10 
0050f1ab0 	mov	x1, xzr
0050f1ab4 	bl	#2970912 ; -> 0x53c6fd4 ThemeDungeonEventManager::get_IsUsable
0050f1ab8 	tbz	w0, #0, #332 ; -> 0x50f1c04 
0050f1abc 	ldr	x8, [x20]
0050f1ac0 	ldr	x0, [x8, #32]
0050f1ac4 	add	x8, x0, #309
0050f1ac8 	ldrh	w8, [x8]
0050f1acc 	tbnz	w8, #0, #8 ; -> 0x50f1ad4 
0050f1ad0 	bl	#-11701160 ; -> 0x45c8f28 
0050f1ad4 	ldr	x8, [x0, #192]
0050f1ad8 	ldr	x0, [x8, #16]
0050f1adc 	add	x8, x0, #309
0050f1ae0 	ldrh	w8, [x8]
0050f1ae4 	tbnz	w8, #0, #8 ; -> 0x50f1aec 
0050f1ae8 	bl	#-11701184 ; -> 0x45c8f28 
0050f1aec 	ldr	x8, [x0, #184]
0050f1af0 	ldr	x8, [x8]
0050f1af4 	cbz	x8, #540 ; -> 0x50f1d10 
0050f1af8 	ldr	x8, [x8, #72]
0050f1afc 	cbz	x8, #532 ; -> 0x50f1d10 
0050f1b00 	ldr	w8, [x8, #40]
0050f1b04 	cmp	w8, #2
0050f1b08 	b.ne	#252 ; -> 0x50f1c04 
0050f1b0c 	adrp	x24, #87220224 ; -> 0xa41f000 
0050f1b10 	mov	w25, #100
0050f1b14 	ldr	x24, [x24, #1880]
0050f1b18 	ldr	x8, [x24]
0050f1b1c 	mov	x0, x19
0050f1b20 	mov	x1, xzr
0050f1b24 	ldr	x8, [x8, #184]
0050f1b28 	ldr	x20, [x8]
0050f1b2c 	bl	#76606132 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1b30 	ldr	x8, [x23]
0050f1b34 	mov	x21, x0
0050f1b38 	ldr	w9, [x8, #228]
0050f1b3c 	cbnz	w9, #16 ; -> 0x50f1b4c 
0050f1b40 	mov	x0, x8
0050f1b44 	bl	#-11931492 ; -> 0x4590be0 
0050f1b48 	ldr	x8, [x23]
0050f1b4c 	ldr	x8, [x8, #184]
0050f1b50 	ldr	x0, [x8]
0050f1b54 	cbz	x0, #444 ; -> 0x50f1d10 
0050f1b58 	mov	x1, xzr
0050f1b5c 	bl	#-2754472 ; -> 0x4e513b4 GameManager::get_StageGoldAmount
0050f1b60 	cbz	x20, #432 ; -> 0x50f1d10 
0050f1b64 	mov	x3, x0
0050f1b68 	mov	x4, x1
0050f1b6c 	mov	x0, x20
0050f1b70 	mov	x1, x21
0050f1b74 	mov	w2, #5
0050f1b78 	mov	x5, xzr
0050f1b7c 	bl	#-2275668 ; -> 0x4ec6228 ObjectPooler_Effect::CoinEffect
0050f1b80 	subs	w25, w25, #1
0050f1b84 	b.ne	#-108 ; -> 0x50f1b18 
0050f1b88 	add	x23, x22, #552
0050f1b8c 	mov	w25, #100
0050f1b90 	ldr	x8, [x24]
0050f1b94 	mov	x0, x19
0050f1b98 	mov	x1, xzr
0050f1b9c 	ldr	x8, [x8, #184]
0050f1ba0 	ldr	x20, [x8]
0050f1ba4 	bl	#76606012 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1ba8 	cbz	x22, #360 ; -> 0x50f1d10 
0050f1bac 	ldp	q0, q1, [x23]
0050f1bb0 	mov	x21, x0
0050f1bb4 	add	x0, sp, #80
0050f1bb8 	mov	x1, xzr
0050f1bbc 	stp	q0, q1, [sp, #80]
0050f1bc0 	ldp	q0, q2, [x23, #32]
0050f1bc4 	stp	q0, q2, [sp, #112]
0050f1bc8 	bl	#-5894856 ; -> 0x4b52900 SilentLong::op_Implicit
0050f1bcc 	cbz	x20, #324 ; -> 0x50f1d10 
0050f1bd0 	ldr	w6, [x22, #32]
0050f1bd4 	mov	x4, x0
0050f1bd8 	mov	x0, x20
0050f1bdc 	mov	x1, x21
0050f1be0 	mov	w2, #5
0050f1be4 	mov	w3, #24
0050f1be8 	mov	w5, #5
0050f1bec 	mov	w7, wzr
0050f1bf0 	str	xzr, [sp]
0050f1bf4 	bl	#-2274780 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f1bf8 	subs	w25, w25, #1
0050f1bfc 	b.ne	#-108 ; -> 0x50f1b90 
0050f1c00 	b	#248 ; -> 0x50f1cf8 
0050f1c04 	adrp	x24, #87220224 ; -> 0xa41f000 
0050f1c08 	mov	w25, #10
0050f1c0c 	ldr	x24, [x24, #1880]
0050f1c10 	ldr	x8, [x24]
0050f1c14 	mov	x0, x19
0050f1c18 	mov	x1, xzr
0050f1c1c 	ldr	x8, [x8, #184]
0050f1c20 	ldr	x20, [x8]
0050f1c24 	bl	#76605884 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1c28 	ldr	x8, [x23]
0050f1c2c 	mov	x21, x0
0050f1c30 	ldr	w9, [x8, #228]
0050f1c34 	cbnz	w9, #16 ; -> 0x50f1c44 
0050f1c38 	mov	x0, x8
0050f1c3c 	bl	#-11931740 ; -> 0x4590be0 
0050f1c40 	ldr	x8, [x23]
0050f1c44 	ldr	x8, [x8, #184]
0050f1c48 	ldr	x0, [x8]
0050f1c4c 	cbz	x0, #196 ; -> 0x50f1d10 
0050f1c50 	mov	x1, xzr
0050f1c54 	bl	#-2754720 ; -> 0x4e513b4 GameManager::get_StageGoldAmount
0050f1c58 	cbz	x20, #184 ; -> 0x50f1d10 
0050f1c5c 	mov	x3, x0
0050f1c60 	mov	x4, x1
0050f1c64 	mov	x0, x20
0050f1c68 	mov	x1, x21
0050f1c6c 	mov	w2, #2
0050f1c70 	mov	x5, xzr
0050f1c74 	bl	#-2275916 ; -> 0x4ec6228 ObjectPooler_Effect::CoinEffect
0050f1c78 	subs	w25, w25, #1
0050f1c7c 	b.ne	#-108 ; -> 0x50f1c10 
0050f1c80 	add	x23, x22, #552
0050f1c84 	mov	w25, #10
0050f1c88 	ldr	x8, [x24]
0050f1c8c 	mov	x0, x19
0050f1c90 	mov	x1, xzr
0050f1c94 	ldr	x8, [x8, #184]
0050f1c98 	ldr	x20, [x8]
0050f1c9c 	bl	#76605764 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1ca0 	cbz	x22, #112 ; -> 0x50f1d10 
0050f1ca4 	ldp	q0, q1, [x23]
0050f1ca8 	mov	x21, x0
0050f1cac 	add	x0, sp, #16
0050f1cb0 	mov	x1, xzr
0050f1cb4 	stp	q0, q1, [sp, #16]
0050f1cb8 	ldp	q0, q2, [x23, #32]
0050f1cbc 	stp	q0, q2, [sp, #48]
0050f1cc0 	bl	#-5895104 ; -> 0x4b52900 SilentLong::op_Implicit
0050f1cc4 	cbz	x20, #76 ; -> 0x50f1d10 
0050f1cc8 	ldr	w6, [x22, #32]
0050f1ccc 	mov	x4, x0
0050f1cd0 	mov	x0, x20
0050f1cd4 	mov	x1, x21
0050f1cd8 	mov	w2, #2
0050f1cdc 	mov	w3, #24
0050f1ce0 	mov	w5, #5
0050f1ce4 	mov	w7, wzr
0050f1ce8 	str	xzr, [sp]
0050f1cec 	bl	#-2275028 ; -> 0x4ec6618 ObjectPooler_Effect::DropEffect
0050f1cf0 	subs	w25, w25, #1
0050f1cf4 	b.ne	#-108 ; -> 0x50f1c88 
0050f1cf8 	ldp	x20, x19, [sp, #192]
0050f1cfc 	ldp	x22, x21, [sp, #176]
0050f1d00 	ldp	x24, x23, [sp, #160]
0050f1d04 	ldp	x30, x25, [sp, #144]
0050f1d08 	add	sp, sp, #208
0050f1d0c 	ret
0050f1d10 	bl	#-11931652 ; -> 0x4590d0c 
