0050b4b7c 	str	x30, [sp, #-64]!
0050b4b80 	stp	x24, x23, [sp, #16]
0050b4b84 	stp	x22, x21, [sp, #32]
0050b4b88 	stp	x20, x19, [sp, #48]
0050b4b8c 	adrp	x21, #95559680 ; -> 0xabd6000 
0050b4b90 	mov	w20, w1
0050b4b94 	mov	x19, x0
0050b4b98 	ldrb	w8, [x21, #679]
0050b4b9c 	tbnz	w8, #0, #72 ; -> 0x50b4be4 
0050b4ba0 	adrp	x0, #87248896 ; -> 0xa3e9000 
0050b4ba4 	ldr	x0, [x0, #2376]
0050b4ba8 	bl	#-11682120 ; -> 0x4590a60 
0050b4bac 	adrp	x0, #87552000 ; -> 0xa433000 
0050b4bb0 	ldr	x0, [x0, #1448]
0050b4bb4 	bl	#-11682132 ; -> 0x4590a60 
0050b4bb8 	adrp	x0, #87552000 ; -> 0xa433000 
0050b4bbc 	ldr	x0, [x0, #1456]
0050b4bc0 	bl	#-11682144 ; -> 0x4590a60 
0050b4bc4 	adrp	x0, #87552000 ; -> 0xa433000 
0050b4bc8 	ldr	x0, [x0, #1464]
0050b4bcc 	bl	#-11682156 ; -> 0x4590a60 
0050b4bd0 	adrp	x0, #87552000 ; -> 0xa433000 
0050b4bd4 	ldr	x0, [x0, #1472]
0050b4bd8 	bl	#-11682168 ; -> 0x4590a60 
0050b4bdc 	mov	w8, #1
0050b4be0 	strb	w8, [x21, #679]
0050b4be4 	mov	w0, #7361
0050b4be8 	mov	x1, xzr
0050b4bec 	bl	#-4642376 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b4bf0 	tbz	w0, #0, #52 ; -> 0x50b4c24 
0050b4bf4 	mov	w0, #7361
0050b4bf8 	mov	x1, xzr
0050b4bfc 	bl	#-4642212 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b4c00 	cbz	x0, #768 ; -> 0x50b4f00 
0050b4c04 	mov	x1, x19
0050b4c08 	mov	w2, w20
0050b4c0c 	mov	x3, xzr
0050b4c10 	ldp	x20, x19, [sp, #48]
0050b4c14 	ldp	x22, x21, [sp, #32]
0050b4c18 	ldp	x24, x23, [sp, #16]
0050b4c1c 	ldr	x30, [sp], #64
0050b4c20 	b	#-5460612 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
0050b4c24 	adrp	x22, #87248896 ; -> 0xa3e9000 
0050b4c28 	mov	x21, xzr
0050b4c2c 	mov	w23, #32
0050b4c30 	ldr	x22, [x22, #2376]
0050b4c34 	ldr	x0, [x22]
0050b4c38 	ldr	x24, [x19, #200]
0050b4c3c 	ldr	w8, [x0, #228]
0050b4c40 	cbnz	w8, #8 ; -> 0x50b4c48 
0050b4c44 	bl	#-11681892 ; -> 0x4590be0 
0050b4c48 	mov	w0, w20
0050b4c4c 	mov	w1, w21
0050b4c50 	mov	x2, xzr
0050b4c54 	bl	#-4108552 ; -> 0x4cc9b4c AssetManager::GetMonsterSprite
0050b4c58 	cbz	x24, #680 ; -> 0x50b4f00 
0050b4c5c 	ldr	w8, [x24, #24]
0050b4c60 	cmp	x21, x8
0050b4c64 	b.hs	#672 ; -> 0x50b4f04 
0050b4c68 	mov	x1, x0
0050b4c6c 	str	x0, [x24, x23]
0050b4c70 	add	x0, x24, x23
0050b4c74 	bl	#-11682416 ; -> 0x4590a04 
0050b4c78 	add	x21, x21, #1
0050b4c7c 	add	x23, x23, #8
0050b4c80 	cmp	x21, #6
0050b4c84 	b.ne	#-80 ; -> 0x50b4c34 
0050b4c88 	mov	x21, #-6
0050b4c8c 	mov	w23, #32
0050b4c90 	ldr	x0, [x22]
0050b4c94 	ldr	x24, [x19, #208]
0050b4c98 	ldr	w8, [x0, #228]
0050b4c9c 	cbnz	w8, #8 ; -> 0x50b4ca4 
0050b4ca0 	bl	#-11681984 ; -> 0x4590be0 
0050b4ca4 	add	w1, w21, #12
0050b4ca8 	mov	w0, w20
0050b4cac 	mov	x2, xzr
0050b4cb0 	bl	#-4108644 ; -> 0x4cc9b4c AssetManager::GetMonsterSprite
0050b4cb4 	cbz	x24, #588 ; -> 0x50b4f00 
0050b4cb8 	ldr	w8, [x24, #24]
0050b4cbc 	add	x9, x21, #6
0050b4cc0 	cmp	x9, x8
0050b4cc4 	b.hs	#576 ; -> 0x50b4f04 
0050b4cc8 	mov	x1, x0
0050b4ccc 	str	x0, [x24, x23]
0050b4cd0 	add	x0, x24, x23
0050b4cd4 	bl	#-11682512 ; -> 0x4590a04 
0050b4cd8 	adds	x21, x21, #1
0050b4cdc 	add	x23, x23, #8
0050b4ce0 	b.lo	#-80 ; -> 0x50b4c90 
0050b4ce4 	mov	x21, #-3
0050b4ce8 	mov	w23, #32
0050b4cec 	ldr	x0, [x22]
0050b4cf0 	ldr	x24, [x19, #224]
0050b4cf4 	ldr	w8, [x0, #228]
0050b4cf8 	cbnz	w8, #8 ; -> 0x50b4d00 
0050b4cfc 	bl	#-11682076 ; -> 0x4590be0 
0050b4d00 	add	w1, w21, #16
0050b4d04 	mov	w0, w20
0050b4d08 	mov	x2, xzr
0050b4d0c 	bl	#-4108736 ; -> 0x4cc9b4c AssetManager::GetMonsterSprite
0050b4d10 	cbz	x24, #496 ; -> 0x50b4f00 
0050b4d14 	ldr	w8, [x24, #24]
0050b4d18 	add	x9, x21, #3
0050b4d1c 	cmp	x9, x8
0050b4d20 	b.hs	#484 ; -> 0x50b4f04 
0050b4d24 	mov	x1, x0
0050b4d28 	str	x0, [x24, x23]
0050b4d2c 	add	x0, x24, x23
0050b4d30 	bl	#-11682604 ; -> 0x4590a04 
0050b4d34 	adds	x21, x21, #1
0050b4d38 	add	x23, x23, #8
0050b4d3c 	b.lo	#-80 ; -> 0x50b4cec 
0050b4d40 	ldr	x8, [x19, #224]
0050b4d44 	cbz	x8, #444 ; -> 0x50b4f00 
0050b4d48 	ldr	w9, [x8, #24]
0050b4d4c 	cmp	w9, #2
0050b4d50 	b.ls	#436 ; -> 0x50b4f04 
0050b4d54 	ldr	x1, [x8, #48]
0050b4d58 	mov	x0, x19
0050b4d5c 	str	x1, [x0, #232]!
0050b4d60 	bl	#-11682652 ; -> 0x4590a04 
0050b4d64 	ldr	x0, [x22]
0050b4d68 	ldr	w8, [x0, #228]
0050b4d6c 	cbnz	w8, #8 ; -> 0x50b4d74 
0050b4d70 	bl	#-11682192 ; -> 0x4590be0 
0050b4d74 	mov	w0, w20
0050b4d78 	mov	w1, #12
0050b4d7c 	mov	x2, xzr
0050b4d80 	bl	#-4108852 ; -> 0x4cc9b4c AssetManager::GetMonsterSprite
0050b4d84 	mov	x21, x19
0050b4d88 	mov	x1, x0
0050b4d8c 	str	x0, [x21, #240]!
0050b4d90 	mov	x0, x21
0050b4d94 	bl	#-11682704 ; -> 0x4590a04 
0050b4d98 	mov	w8, #10000
0050b4d9c 	cmp	w20, w8
0050b4da0 	b.ne	#60 ; -> 0x50b4ddc 
0050b4da4 	ldr	x8, [x19, #224]
0050b4da8 	cbz	x8, #344 ; -> 0x50b4f00 
0050b4dac 	ldr	w9, [x8, #24]
0050b4db0 	cbz	w9, #340 ; -> 0x50b4f04 
0050b4db4 	adrp	x9, #87552000 ; -> 0xa433000 
0050b4db8 	ldr	x9, [x9, #1464]
0050b4dbc 	ldr	x0, [x8, #32]
0050b4dc0 	ldr	x20, [x9]
0050b4dc4 	cbz	x0, #44 ; -> 0x50b4df0 
0050b4dc8 	ldr	x8, [x0]
0050b4dcc 	ldp	x9, x1, [x8, #360]
0050b4dd0 	blr	x9
0050b4dd4 	mov	x1, x0
0050b4dd8 	b	#28 ; -> 0x50b4df4 
0050b4ddc 	ldp	x20, x19, [sp, #48]
0050b4de0 	ldp	x22, x21, [sp, #32]
0050b4de4 	ldp	x24, x23, [sp, #16]
0050b4de8 	ldr	x30, [sp], #64
0050b4dec 	ret
0050b4df0 	mov	x1, xzr
0050b4df4 	mov	x0, x20
0050b4df8 	mov	x2, xzr
0050b4dfc 	bl	#63008844 ; -> 0x8ccbe48 System.String::Concat
0050b4e00 	mov	x1, xzr
0050b4e04 	bl	#-9958248 ; -> 0x4735a9c Gear2Framework.Debug.Gear2Debug::Log
0050b4e08 	ldr	x8, [x19, #224]
0050b4e0c 	cbz	x8, #244 ; -> 0x50b4f00 
0050b4e10 	ldr	w9, [x8, #24]
0050b4e14 	tst	w9, #0xfffffffe
0050b4e18 	b.eq	#236 ; -> 0x50b4f04 
0050b4e1c 	adrp	x9, #87552000 ; -> 0xa433000 
0050b4e20 	ldr	x9, [x9, #1456]
0050b4e24 	ldr	x0, [x8, #40]
0050b4e28 	ldr	x20, [x9]
0050b4e2c 	cbz	x0, #24 ; -> 0x50b4e44 
0050b4e30 	ldr	x8, [x0]
0050b4e34 	ldp	x9, x1, [x8, #360]
0050b4e38 	blr	x9
0050b4e3c 	mov	x1, x0
0050b4e40 	b	#8 ; -> 0x50b4e48 
0050b4e44 	mov	x1, xzr
0050b4e48 	mov	x0, x20
0050b4e4c 	mov	x2, xzr
0050b4e50 	bl	#63008760 ; -> 0x8ccbe48 System.String::Concat
0050b4e54 	mov	x1, xzr
0050b4e58 	bl	#-9958332 ; -> 0x4735a9c Gear2Framework.Debug.Gear2Debug::Log
0050b4e5c 	ldr	x8, [x19, #224]
0050b4e60 	cbz	x8, #160 ; -> 0x50b4f00 
0050b4e64 	ldr	w9, [x8, #24]
0050b4e68 	cmp	w9, #2
0050b4e6c 	b.ls	#152 ; -> 0x50b4f04 
0050b4e70 	adrp	x9, #87552000 ; -> 0xa433000 
0050b4e74 	ldr	x9, [x9, #1472]
0050b4e78 	ldr	x0, [x8, #48]
0050b4e7c 	ldr	x19, [x9]
0050b4e80 	cbz	x0, #24 ; -> 0x50b4e98 
0050b4e84 	ldr	x8, [x0]
0050b4e88 	ldp	x9, x1, [x8, #360]
0050b4e8c 	blr	x9
0050b4e90 	mov	x1, x0
0050b4e94 	b	#8 ; -> 0x50b4e9c 
0050b4e98 	mov	x1, xzr
0050b4e9c 	mov	x0, x19
0050b4ea0 	mov	x2, xzr
0050b4ea4 	bl	#63008676 ; -> 0x8ccbe48 System.String::Concat
0050b4ea8 	mov	x1, xzr
0050b4eac 	bl	#-9958416 ; -> 0x4735a9c Gear2Framework.Debug.Gear2Debug::Log
0050b4eb0 	adrp	x8, #87552000 ; -> 0xa433000 
0050b4eb4 	ldr	x8, [x8, #1448]
0050b4eb8 	ldr	x0, [x21]
0050b4ebc 	ldr	x19, [x8]
0050b4ec0 	cbz	x0, #24 ; -> 0x50b4ed8 
0050b4ec4 	ldr	x8, [x0]
0050b4ec8 	ldp	x9, x1, [x8, #360]
0050b4ecc 	blr	x9
0050b4ed0 	mov	x1, x0
0050b4ed4 	b	#8 ; -> 0x50b4edc 
0050b4ed8 	mov	x1, xzr
0050b4edc 	mov	x0, x19
0050b4ee0 	mov	x2, xzr
0050b4ee4 	bl	#63008612 ; -> 0x8ccbe48 System.String::Concat
0050b4ee8 	ldp	x20, x19, [sp, #48]
0050b4eec 	mov	x1, xzr
0050b4ef0 	ldp	x22, x21, [sp, #32]
0050b4ef4 	ldp	x24, x23, [sp, #16]
0050b4ef8 	ldr	x30, [sp], #64
0050b4efc 	b	#-9958496 ; -> 0x4735a9c Gear2Framework.Debug.Gear2Debug::Log
0050b4f00 	bl	#-11682292 ; -> 0x4590d0c 
0050b4f04 	bl	#-11682288 ; -> 0x4590d14 
