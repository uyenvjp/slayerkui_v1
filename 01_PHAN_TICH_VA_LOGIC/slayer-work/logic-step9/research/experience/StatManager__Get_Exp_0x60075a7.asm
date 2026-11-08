004f179d8 	sub	sp, sp, #96
004f179dc 	str	d8, [sp, #32]
004f179e0 	str	x30, [sp, #40]
004f179e4 	stp	x24, x23, [sp, #48]
004f179e8 	stp	x22, x21, [sp, #64]
004f179ec 	stp	x20, x19, [sp, #80]
004f179f0 	adrp	x22, #97247232 ; -> 0xabd5000 
004f179f4 	mov	x19, x2
004f179f8 	mov	x20, x1
004f179fc 	ldrb	w8, [x22, #1724]
004f17a00 	mov	x21, x0
004f17a04 	tbnz	w8, #0, #96 ; -> 0x4f17a64 
004f17a08 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f17a0c 	ldr	x0, [x0, #3552]
004f17a10 	bl	#-9990064 ; -> 0x4590a60 
004f17a14 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f17a18 	ldr	x0, [x0, #1384]
004f17a1c 	bl	#-9990076 ; -> 0x4590a60 
004f17a20 	adrp	x0, #88977408 ; -> 0xa3f2000 
004f17a24 	ldr	x0, [x0, #552]
004f17a28 	bl	#-9990088 ; -> 0x4590a60 
004f17a2c 	adrp	x0, #88961024 ; -> 0xa3ee000 
004f17a30 	ldr	x0, [x0, #2840]
004f17a34 	bl	#-9990100 ; -> 0x4590a60 
004f17a38 	adrp	x0, #89214976 ; -> 0xa42c000 
004f17a3c 	ldr	x0, [x0, #488]
004f17a40 	bl	#-9990112 ; -> 0x4590a60 
004f17a44 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f17a48 	ldr	x0, [x0, #736]
004f17a4c 	bl	#-9990124 ; -> 0x4590a60 
004f17a50 	adrp	x0, #88965120 ; -> 0xa3ef000 
004f17a54 	ldr	x0, [x0, #3552]
004f17a58 	bl	#-9990136 ; -> 0x4590a60 
004f17a5c 	mov	w8, #1
004f17a60 	strb	w8, [x22, #1724]
004f17a64 	mov	w0, #33202
004f17a68 	mov	x1, xzr
004f17a6c 	bl	#-2950344 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f17a70 	tbz	w0, #0, #64 ; -> 0x4f17ab0 
004f17a74 	mov	w0, #33202
004f17a78 	mov	x1, xzr
004f17a7c 	bl	#-2950180 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f17a80 	cbz	x0, #776 ; -> 0x4f17d88 
004f17a84 	mov	x1, x21
004f17a88 	mov	x2, x20
004f17a8c 	mov	x3, x19
004f17a90 	ldp	x20, x19, [sp, #80]
004f17a94 	ldr	x30, [sp, #40]
004f17a98 	ldp	x22, x21, [sp, #64]
004f17a9c 	ldr	d8, [sp, #32]
004f17aa0 	ldp	x24, x23, [sp, #48]
004f17aa4 	mov	x4, xzr
004f17aa8 	add	sp, sp, #96
004f17aac 	b	#-3705708 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004f17ab0 	mov	x0, x21
004f17ab4 	mov	x1, x20
004f17ab8 	mov	x2, x19
004f17abc 	bl	#-1104 ; -> 0x4f1766c StatManager::AddBuffs
004f17ac0 	mov	x19, x0
004f17ac4 	ldr	x0, [x21, #144]
004f17ac8 	cbz	x0, #704 ; -> 0x4f17d88 
004f17acc 	mov	x20, x1
004f17ad0 	mov	w1, #10
004f17ad4 	mov	x2, xzr
004f17ad8 	bl	#-1829448 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
004f17adc 	fcmp	s0, #0.0
004f17ae0 	b.le	#116 ; -> 0x4f17b54 
004f17ae4 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17ae8 	fmov	s8, s0
004f17aec 	ldr	x8, [x8, #736]
004f17af0 	ldr	x0, [x8]
004f17af4 	ldr	w8, [x0, #228]
004f17af8 	cbnz	w8, #8 ; -> 0x4f17b00 
004f17afc 	bl	#-9989916 ; -> 0x4590be0 
004f17b00 	fmov	s0, s8
004f17b04 	mov	x0, xzr
004f17b08 	bl	#-2095592 ; -> 0x4d18120 UsefulManager::Probability
004f17b0c 	tbz	w0, #0, #72 ; -> 0x4f17b54 
004f17b10 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17b14 	ldr	x8, [x8, #3552]
004f17b18 	ldr	x0, [x8]
004f17b1c 	ldr	w8, [x0, #228]
004f17b20 	cbnz	w8, #8 ; -> 0x4f17b28 
004f17b24 	bl	#-9989956 ; -> 0x4590be0 
004f17b28 	mov	w0, #2
004f17b2c 	mov	x1, xzr
004f17b30 	bl	#69620852 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004f17b34 	mov	x2, x0
004f17b38 	mov	x3, x1
004f17b3c 	mov	x0, x19
004f17b40 	mov	x1, x20
004f17b44 	mov	x4, xzr
004f17b48 	bl	#69610748 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004f17b4c 	mov	x19, x0
004f17b50 	mov	x20, x1
004f17b54 	ldr	x24, [x21, #144]
004f17b58 	cbz	x24, #560 ; -> 0x4f17d88 
004f17b5c 	add	x0, x24, #264
004f17b60 	mov	x1, xzr
004f17b64 	bl	#-3961104 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17b68 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17b6c 	mov	x22, x0
004f17b70 	mov	x23, x1
004f17b74 	ldr	x8, [x8, #3552]
004f17b78 	ldr	x0, [x8]
004f17b7c 	ldr	w8, [x0, #228]
004f17b80 	cbnz	w8, #8 ; -> 0x4f17b88 
004f17b84 	bl	#-9990052 ; -> 0x4590be0 
004f17b88 	mov	x0, x22
004f17b8c 	mov	x1, x23
004f17b90 	mov	x2, x19
004f17b94 	mov	x3, x20
004f17b98 	mov	x4, xzr
004f17b9c 	bl	#69610364 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17ba0 	mov	x2, x0
004f17ba4 	mov	x3, x1
004f17ba8 	add	x0, x24, #264
004f17bac 	mov	x1, x2
004f17bb0 	mov	x2, x3
004f17bb4 	mov	x3, xzr
004f17bb8 	bl	#-3960256 ; -> 0x4b50df8 SilentBigInt::set_Value
004f17bbc 	ldr	x22, [x21, #144]
004f17bc0 	cbz	x22, #456 ; -> 0x4f17d88 
004f17bc4 	add	x0, x22, #304
004f17bc8 	mov	x1, xzr
004f17bcc 	bl	#-3961208 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17bd0 	mov	x2, x19
004f17bd4 	mov	x3, x20
004f17bd8 	mov	x4, xzr
004f17bdc 	bl	#69610300 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17be0 	mov	x2, x0
004f17be4 	mov	x3, x1
004f17be8 	add	x0, x22, #304
004f17bec 	mov	x1, x2
004f17bf0 	mov	x2, x3
004f17bf4 	mov	x3, xzr
004f17bf8 	bl	#-3960320 ; -> 0x4b50df8 SilentBigInt::set_Value
004f17bfc 	mov	x0, x21
004f17c00 	bl	#-3956 ; -> 0x4f16c8c StatManager::Fill_Update
004f17c04 	adrp	x8, #89214976 ; -> 0xa42c000 
004f17c08 	adrp	x22, #88940544 ; -> 0xa3e9000 
004f17c0c 	ldr	x8, [x8, #488]
004f17c10 	ldr	x22, [x22, #1384]
004f17c14 	ldr	x8, [x8]
004f17c18 	ldr	x0, [x22]
004f17c1c 	ldr	x8, [x8, #184]
004f17c20 	ldr	w9, [x0, #228]
004f17c24 	ldr	x21, [x8]
004f17c28 	cbnz	w9, #12 ; -> 0x4f17c34 
004f17c2c 	bl	#-9990220 ; -> 0x4590be0 
004f17c30 	ldr	x0, [x22]
004f17c34 	ldr	x8, [x0, #184]
004f17c38 	ldr	x0, [x8]
004f17c3c 	cbz	x0, #332 ; -> 0x4f17d88 
004f17c40 	mov	x1, x19
004f17c44 	mov	x2, x20
004f17c48 	mov	w3, #1
004f17c4c 	mov	x4, xzr
004f17c50 	bl	#-1851560 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
004f17c54 	adrp	x8, #88965120 ; -> 0xa3ef000 
004f17c58 	mov	x1, x0
004f17c5c 	mov	x2, xzr
004f17c60 	ldr	x8, [x8, #3552]
004f17c64 	ldr	x8, [x8]
004f17c68 	mov	x0, x8
004f17c6c 	bl	#64700892 ; -> 0x8ccbe48 System.String::Concat
004f17c70 	adrp	x23, #88940544 ; -> 0xa3e9000 
004f17c74 	mov	x22, x0
004f17c78 	ldr	x23, [x23, #736]
004f17c7c 	ldr	x8, [x23]
004f17c80 	ldr	w9, [x8, #228]
004f17c84 	cbnz	w9, #16 ; -> 0x4f17c94 
004f17c88 	mov	x0, x8
004f17c8c 	bl	#-9990316 ; -> 0x4590be0 
004f17c90 	ldr	x8, [x23]
004f17c94 	ldr	x8, [x8, #184]
004f17c98 	ldr	x0, [x8]
004f17c9c 	cbz	x0, #236 ; -> 0x4f17d88 
004f17ca0 	mov	w1, #24
004f17ca4 	mov	w2, wzr
004f17ca8 	mov	x3, xzr
004f17cac 	bl	#-2055016 ; -> 0x4d22144 UsefulManager::GoodsSprite
004f17cb0 	cbz	x21, #216 ; -> 0x4f17d88 
004f17cb4 	mov	x2, x0
004f17cb8 	mov	x0, x21
004f17cbc 	mov	x1, x22
004f17cc0 	mov	x3, xzr
004f17cc4 	bl	#3140488 ; -> 0x521684c ItemDropManager::ItemDropLog
004f17cc8 	adrp	x22, #88977408 ; -> 0xa3f2000 
004f17ccc 	ldr	x22, [x22, #552]
004f17cd0 	ldr	x0, [x22]
004f17cd4 	ldr	w8, [x0, #228]
004f17cd8 	cbnz	w8, #12 ; -> 0x4f17ce4 
004f17cdc 	bl	#-9990396 ; -> 0x4590be0 
004f17ce0 	ldr	x0, [x22]
004f17ce4 	ldr	x8, [x0, #184]
004f17ce8 	ldr	x0, [x8]
004f17cec 	cbz	x0, #156 ; -> 0x4f17d88 
004f17cf0 	mov	x1, xzr
004f17cf4 	bl	#-875936 ; -> 0x4e41f54 GameManager::get_gameMode
004f17cf8 	adrp	x23, #88961024 ; -> 0xa3ee000 
004f17cfc 	mov	w21, w0
004f17d00 	mov	w8, #6
004f17d04 	ldr	x23, [x23, #2840]
004f17d08 	add	x1, sp, #28
004f17d0c 	str	w8, [sp, #28]
004f17d10 	ldr	x0, [x23]
004f17d14 	bl	#-9990444 ; -> 0x4590be8 
004f17d18 	ldr	x8, [x23]
004f17d1c 	mov	x1, x0
004f17d20 	mov	x9, #-1
004f17d24 	mov	x0, sp
004f17d28 	mov	x2, xzr
004f17d2c 	str	w21, [sp, #16]
004f17d30 	stp	x8, x9, [sp]
004f17d34 	bl	#66682060 ; -> 0x8eafa00 System.Enum::Equals
004f17d38 	tbz	w0, #0, #52 ; -> 0x4f17d6c 
004f17d3c 	ldr	x0, [x22]
004f17d40 	ldr	w8, [x0, #228]
004f17d44 	cbnz	w8, #12 ; -> 0x4f17d50 
004f17d48 	bl	#-9990504 ; -> 0x4590be0 
004f17d4c 	ldr	x0, [x22]
004f17d50 	ldr	x8, [x0, #184]
004f17d54 	ldr	x0, [x8]
004f17d58 	cbz	x0, #48 ; -> 0x4f17d88 
004f17d5c 	mov	x1, x19
004f17d60 	mov	x2, x20
004f17d64 	mov	x3, xzr
004f17d68 	bl	#-777044 ; -> 0x4e5a214 GameManager::CaveExp_Update
004f17d6c 	ldp	x20, x19, [sp, #80]
004f17d70 	ldr	x30, [sp, #40]
004f17d74 	ldp	x22, x21, [sp, #64]
004f17d78 	ldr	d8, [sp, #32]
004f17d7c 	ldp	x24, x23, [sp, #48]
004f17d80 	add	sp, sp, #96
004f17d84 	ret
004f17d88 	bl	#-9990268 ; -> 0x4590d0c 
