004fd8aa4 	sub	sp, sp, #80
004fd8aa8 	stp	x30, x21, [sp, #48]
004fd8aac 	stp	x20, x19, [sp, #64]
004fd8ab0 	adrp	x21, #96456704 ; -> 0xabd5000 
004fd8ab4 	mov	x19, x1
004fd8ab8 	mov	x20, x0
004fd8abc 	ldrb	w8, [x21, #3181]
004fd8ac0 	tbnz	w8, #0, #48 ; -> 0x4fd8af0 
004fd8ac4 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8ac8 	ldr	x0, [x0, #1328]
004fd8acc 	bl	#-10780780 ; -> 0x4590a60 
004fd8ad0 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8ad4 	ldr	x0, [x0, #400]
004fd8ad8 	bl	#-10780792 ; -> 0x4590a60 
004fd8adc 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8ae0 	ldr	x0, [x0, #408]
004fd8ae4 	bl	#-10780804 ; -> 0x4590a60 
004fd8ae8 	mov	w8, #1
004fd8aec 	strb	w8, [x21, #3181]
004fd8af0 	mov	w0, #3420
004fd8af4 	mov	x1, xzr
004fd8af8 	strb	wzr, [sp, #40]
004fd8afc 	str	wzr, [sp, #32]
004fd8b00 	bl	#-3741020 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd8b04 	tbz	w0, #0, #48 ; -> 0x4fd8b34 
004fd8b08 	mov	w0, #3420
004fd8b0c 	mov	x1, xzr
004fd8b10 	bl	#-3740856 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8b14 	cbz	x0, #252 ; -> 0x4fd8c10 
004fd8b18 	mov	x1, x20
004fd8b1c 	mov	x2, x19
004fd8b20 	mov	x3, xzr
004fd8b24 	ldp	x20, x19, [sp, #64]
004fd8b28 	ldp	x30, x21, [sp, #48]
004fd8b2c 	add	sp, sp, #80
004fd8b30 	b	#-4556696 ; -> 0x4b80398 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_42
004fd8b34 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8b38 	add	x9, sp, #40
004fd8b3c 	ldr	x8, [x8, #400]
004fd8b40 	strb	wzr, [sp, #40]
004fd8b44 	stp	xzr, x9, [sp, #8]
004fd8b48 	ldr	x0, [x8]
004fd8b4c 	ldr	w8, [x0, #228]
004fd8b50 	cbnz	w8, #8 ; -> 0x4fd8b58 
004fd8b54 	bl	#-10780532 ; -> 0x4590be0 
004fd8b58 	mov	x0, x19
004fd8b5c 	mov	w1, #1
004fd8b60 	mov	x2, xzr
004fd8b64 	mov	w19, #1
004fd8b68 	bl	#63301104 ; -> 0x8c37158 IFix.Core.PatchManager::Load
004fd8b6c 	strb	w19, [sp, #40]
004fd8b70 	mov	w20, #3
004fd8b74 	adrp	x9, #88141824 ; -> 0xa3e7000 
004fd8b78 	ldr	x8, [sp, #16]
004fd8b7c 	add	x1, sp, #44
004fd8b80 	ldr	x9, [x9, #1248]
004fd8b84 	ldrb	w8, [x8]
004fd8b88 	ldr	x0, [x9, #40]
004fd8b8c 	strb	w8, [sp, #44]
004fd8b90 	bl	#-10780584 ; -> 0x4590be8 
004fd8b94 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd8b98 	mov	x1, x0
004fd8b9c 	mov	x2, xzr
004fd8ba0 	ldr	x8, [x8, #408]
004fd8ba4 	ldr	x8, [x8]
004fd8ba8 	mov	x0, x8
004fd8bac 	bl	#63897816 ; -> 0x8cc8c84 System.String::Format
004fd8bb0 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8bb4 	mov	x19, x0
004fd8bb8 	ldr	x8, [x8, #1328]
004fd8bbc 	ldr	x8, [x8]
004fd8bc0 	ldr	w9, [x8, #228]
004fd8bc4 	cbnz	w9, #12 ; -> 0x4fd8bd0 
004fd8bc8 	mov	x0, x8
004fd8bcc 	bl	#-10780652 ; -> 0x4590be0 
004fd8bd0 	mov	x0, x19
004fd8bd4 	mov	x1, xzr
004fd8bd8 	bl	#77495552 ; -> 0x99c08d8 UnityEngine.Debug::Log
004fd8bdc 	ldr	x0, [sp, #8]
004fd8be0 	cbnz	x0, #52 ; -> 0x4fd8c14 
004fd8be4 	cmp	w20, #3
004fd8be8 	b.eq	#8 ; -> 0x4fd8bf0 
004fd8bec 	cbnz	w20, #16 ; -> 0x4fd8bfc 
004fd8bf0 	ldrb	w8, [sp, #40]
004fd8bf4 	cmp	w8, #0
004fd8bf8 	cset	w8, ne
004fd8bfc 	ldp	x20, x19, [sp, #64]
004fd8c00 	and	w0, w8, #0x1
004fd8c04 	ldp	x30, x21, [sp, #48]
004fd8c08 	add	sp, sp, #80
004fd8c0c 	ret
004fd8c10 	bl	#-10780420 ; -> 0x4590d0c 
004fd8c14 	bl	#-10780432 ; -> 0x4590d04 
004fd8c18 	b	#4 ; -> 0x4fd8c1c 
004fd8c1c 	mov	x19, x0
004fd8c20 	cmp	w1, #1
004fd8c24 	b.ne	#284 ; -> 0x4fd8d40 
004fd8c28 	mov	x0, x19
004fd8c2c 	bl	#81341524 ; -> 0x9d6b880 
004fd8c30 	mov	x19, x0
004fd8c34 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8c38 	ldr	x0, [x0, #3064]
004fd8c3c 	bl	#-10781128 ; -> 0x4590a74 
004fd8c40 	ldr	x8, [x19]
004fd8c44 	ldr	x1, [x8]
004fd8c48 	bl	#-10779444 ; -> 0x4591114 
004fd8c4c 	tbz	w0, #0, #168 ; -> 0x4fd8cf4 
004fd8c50 	ldrsw	x21, [sp, #32]
004fd8c54 	ldr	x19, [x19]
004fd8c58 	add	x8, sp, #24
004fd8c5c 	str	x19, [x8, x21, lsl #3]
004fd8c60 	add	w8, w21, #1
004fd8c64 	str	w8, [sp, #32]
004fd8c68 	bl	#81341480 ; -> 0x9d6b890 
004fd8c6c 	cbz	x19, #168 ; -> 0x4fd8d14 
004fd8c70 	ldr	x8, [x19]
004fd8c74 	ldp	x9, x1, [x8, #392]
004fd8c78 	mov	x0, x19
004fd8c7c 	blr	x9
004fd8c80 	mov	x20, x0
004fd8c84 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8c88 	ldr	x0, [x0, #1328]
004fd8c8c 	bl	#-10781208 ; -> 0x4590a74 
004fd8c90 	ldr	w8, [x0, #228]
004fd8c94 	cbnz	w8, #8 ; -> 0x4fd8c9c 
004fd8c98 	bl	#-10780856 ; -> 0x4590be0 
004fd8c9c 	mov	x0, x20
004fd8ca0 	mov	x1, xzr
004fd8ca4 	bl	#77496960 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd8ca8 	ldr	x0, [x19, #40]
004fd8cac 	cbz	x0, #56 ; -> 0x4fd8ce4 
004fd8cb0 	ldr	x8, [x0]
004fd8cb4 	ldp	x9, x1, [x8, #392]
004fd8cb8 	blr	x9
004fd8cbc 	mov	x19, x0
004fd8cc0 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd8cc4 	ldr	x0, [x0, #1328]
004fd8cc8 	bl	#-10781268 ; -> 0x4590a74 
004fd8ccc 	ldr	w8, [x0, #228]
004fd8cd0 	cbnz	w8, #8 ; -> 0x4fd8cd8 
004fd8cd4 	bl	#-10780916 ; -> 0x4590be0 
004fd8cd8 	mov	x0, x19
004fd8cdc 	mov	x1, xzr
004fd8ce0 	bl	#77496900 ; -> 0x99c0f24 UnityEngine.Debug::LogError
004fd8ce4 	strb	wzr, [sp, #40]
004fd8ce8 	mov	w20, #3
004fd8cec 	str	w21, [sp, #32]
004fd8cf0 	b	#-380 ; -> 0x4fd8b74 
004fd8cf4 	mov	w0, #8
004fd8cf8 	bl	#81341368 ; -> 0x9d6b8b0 
004fd8cfc 	ldr	x8, [x19]
004fd8d00 	str	x8, [x0]
004fd8d04 	adrp	x1, #81367040 ; -> 0x9d71000 
004fd8d08 	add	x1, x1, #3672
004fd8d0c 	mov	x2, xzr
004fd8d10 	bl	#81341360 ; -> 0x9d6b8c0 
004fd8d14 	bl	#-10780680 ; -> 0x4590d0c 
004fd8d18 	b	#36 ; -> 0x4fd8d3c 
004fd8d1c 	b	#32 ; -> 0x4fd8d3c 
004fd8d20 	mov	x19, x0
004fd8d24 	b	#28 ; -> 0x4fd8d40 
004fd8d28 	mov	x20, x1
004fd8d2c 	mov	x19, x0
004fd8d30 	bl	#81341280 ; -> 0x9d6b890 
004fd8d34 	mov	w1, w20
004fd8d38 	b	#8 ; -> 0x4fd8d40 
004fd8d3c 	mov	x19, x0
004fd8d40 	mov	w8, #1
004fd8d44 	cmp	w1, w8
004fd8d48 	b.ne	#36 ; -> 0x4fd8d6c 
004fd8d4c 	mov	x0, x19
004fd8d50 	bl	#81341232 ; -> 0x9d6b880 
004fd8d54 	ldr	x8, [x0]
004fd8d58 	str	x8, [sp, #8]
004fd8d5c 	bl	#81341236 ; -> 0x9d6b890 
004fd8d60 	mov	w20, wzr
004fd8d64 	b	#-496 ; -> 0x4fd8b74 
004fd8d68 	mov	x19, x0
004fd8d6c 	add	x0, sp, #8
004fd8d70 	bl	#-15404184 ; -> 0x41280d8 
004fd8d74 	mov	x0, x19
004fd8d78 	bl	#-9596252 ; -> 0x46b201c 
004fd8d7c 	bl	#-15451420 ; -> 0x411c860 
