004f16a4c 	sub	sp, sp, #144
004f16a50 	str	x30, [sp, #96]
004f16a54 	stp	x22, x21, [sp, #112]
004f16a58 	stp	x20, x19, [sp, #128]
004f16a5c 	adrp	x20, #97251328 ; -> 0xabd5000 
004f16a60 	mov	x19, x0
004f16a64 	ldrb	w8, [x20, #1721]
004f16a68 	tbnz	w8, #0, #48 ; -> 0x4f16a98 
004f16a6c 	adrp	x0, #88965120 ; -> 0xa3ee000 
004f16a70 	ldr	x0, [x0, #2104]
004f16a74 	bl	#-9986068 ; -> 0x4590a60 
004f16a78 	adrp	x0, #89219072 ; -> 0xa42c000 
004f16a7c 	ldr	x0, [x0, #472]
004f16a80 	bl	#-9986080 ; -> 0x4590a60 
004f16a84 	adrp	x0, #89120768 ; -> 0xa414000 
004f16a88 	ldr	x0, [x0, #1216]
004f16a8c 	bl	#-9986092 ; -> 0x4590a60 
004f16a90 	mov	w8, #1
004f16a94 	strb	w8, [x20, #1721]
004f16a98 	movi	v0.2d, #0000000000000000
004f16a9c 	mov	w0, #33185
004f16aa0 	mov	x1, xzr
004f16aa4 	stp	q0, q0, [sp, #64]
004f16aa8 	str	q0, [sp, #48]
004f16aac 	bl	#-2946312 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f16ab0 	tbz	w0, #0, #48 ; -> 0x4f16ae0 
004f16ab4 	mov	w0, #33185
004f16ab8 	mov	x1, xzr
004f16abc 	bl	#-2946148 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f16ac0 	cbz	x0, #456 ; -> 0x4f16c88 
004f16ac4 	mov	x1, x19
004f16ac8 	ldp	x20, x19, [sp, #128]
004f16acc 	ldp	x22, x21, [sp, #112]
004f16ad0 	mov	x2, xzr
004f16ad4 	ldr	x30, [sp, #96]
004f16ad8 	add	sp, sp, #144
004f16adc 	b	#-3769788 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004f16ae0 	adrp	x20, #88965120 ; -> 0xa3ee000 
004f16ae4 	ldr	x20, [x20, #2104]
004f16ae8 	ldr	x0, [x20]
004f16aec 	ldr	w8, [x0, #228]
004f16af0 	cbnz	w8, #8 ; -> 0x4f16af8 
004f16af4 	bl	#-9985812 ; -> 0x4590be0 
004f16af8 	adrp	x21, #97226752 ; -> 0xabcf000 
004f16afc 	ldrb	w8, [x21, #360]
004f16b00 	cbnz	w8, #24 ; -> 0x4f16b18 
004f16b04 	adrp	x0, #88965120 ; -> 0xa3ee000 
004f16b08 	ldr	x0, [x0, #2104]
004f16b0c 	bl	#-9986220 ; -> 0x4590a60 
004f16b10 	mov	w8, #1
004f16b14 	strb	w8, [x21, #360]
004f16b18 	ldr	x0, [x20]
004f16b1c 	ldr	w8, [x0, #228]
004f16b20 	cbnz	w8, #12 ; -> 0x4f16b2c 
004f16b24 	bl	#-9985860 ; -> 0x4590be0 
004f16b28 	ldr	x0, [x20]
004f16b2c 	ldr	x8, [x0, #184]
004f16b30 	ldr	x8, [x8]
004f16b34 	cbz	x8, #340 ; -> 0x4f16c88 
004f16b38 	ldr	x9, [x19, #144]
004f16b3c 	cbz	x9, #332 ; -> 0x4f16c88 
004f16b40 	ldur	q0, [x9, #168]
004f16b44 	ldur	q1, [x9, #184]
004f16b48 	mov	x0, sp
004f16b4c 	ldur	q2, [x9, #200]
004f16b50 	ldr	x20, [x8, #352]
004f16b54 	mov	x1, xzr
004f16b58 	stp	q0, q1, [sp]
004f16b5c 	str	q2, [sp, #32]
004f16b60 	bl	#-8600980 ; -> 0x46e2dcc Liapp.SecureVariable.LiappSecureInt::op_Implicit
004f16b64 	cbz	x20, #292 ; -> 0x4f16c88 
004f16b68 	adrp	x8, #89219072 ; -> 0xa42c000 
004f16b6c 	mov	w1, w0
004f16b70 	mov	x0, x20
004f16b74 	ldr	x8, [x8, #472]
004f16b78 	ldr	x2, [x8]
004f16b7c 	bl	#51506304 ; -> 0x80357fc 
004f16b80 	mov	x2, x0
004f16b84 	mov	x3, x1
004f16b88 	add	x0, x19, #160
004f16b8c 	mov	x1, x2
004f16b90 	mov	x2, x3
004f16b94 	mov	x3, xzr
004f16b98 	bl	#-3956128 ; -> 0x4b50df8 SilentBigInt::set_Value
004f16b9c 	ldr	x20, [x19, #104]
004f16ba0 	mov	x0, xzr
004f16ba4 	bl	#-6184336 ; -> 0x4930e14 STR::get_LV_KEY
004f16ba8 	ldr	x8, [x19, #144]
004f16bac 	cbz	x8, #220 ; -> 0x4f16c88 
004f16bb0 	ldur	q0, [x8, #168]
004f16bb4 	ldur	q1, [x8, #184]
004f16bb8 	mov	x21, x0
004f16bbc 	ldur	q2, [x8, #200]
004f16bc0 	add	x0, sp, #48
004f16bc4 	mov	x1, xzr
004f16bc8 	stp	q0, q1, [sp, #48]
004f16bcc 	str	q2, [sp, #80]
004f16bd0 	bl	#-8601088 ; -> 0x46e2dd0 Liapp.SecureVariable.LiappSecureInt::ToString
004f16bd4 	adrp	x22, #89120768 ; -> 0xa414000 
004f16bd8 	mov	x2, x0
004f16bdc 	mov	x0, x21
004f16be0 	ldr	x22, [x22, #1216]
004f16be4 	mov	x3, xzr
004f16be8 	ldr	x1, [x22]
004f16bec 	bl	#64762688 ; -> 0x8cd9f2c System.String::Concat
004f16bf0 	cbz	x20, #152 ; -> 0x4f16c88 
004f16bf4 	ldr	x8, [x20]
004f16bf8 	mov	x1, x0
004f16bfc 	mov	x0, x20
004f16c00 	ldr	x9, [x8, #1512]
004f16c04 	ldr	x2, [x8, #1520]
004f16c08 	blr	x9
004f16c0c 	ldr	x20, [x19, #56]
004f16c10 	mov	x0, xzr
004f16c14 	bl	#-6184448 ; -> 0x4930e14 STR::get_LV_KEY
004f16c18 	ldr	x8, [x19, #144]
004f16c1c 	cbz	x8, #108 ; -> 0x4f16c88 
004f16c20 	ldur	q0, [x8, #168]
004f16c24 	ldur	q1, [x8, #184]
004f16c28 	mov	x19, x0
004f16c2c 	ldur	q2, [x8, #200]
004f16c30 	add	x0, sp, #48
004f16c34 	mov	x1, xzr
004f16c38 	stp	q0, q1, [sp, #48]
004f16c3c 	str	q2, [sp, #80]
004f16c40 	bl	#-8601200 ; -> 0x46e2dd0 Liapp.SecureVariable.LiappSecureInt::ToString
004f16c44 	ldr	x1, [x22]
004f16c48 	mov	x2, x0
004f16c4c 	mov	x0, x19
004f16c50 	mov	x3, xzr
004f16c54 	bl	#64762584 ; -> 0x8cd9f2c System.String::Concat
004f16c58 	cbz	x20, #48 ; -> 0x4f16c88 
004f16c5c 	ldr	x8, [x20]
004f16c60 	mov	x1, x0
004f16c64 	mov	x0, x20
004f16c68 	ldr	x9, [x8, #1512]
004f16c6c 	ldr	x2, [x8, #1520]
004f16c70 	blr	x9
004f16c74 	ldp	x20, x19, [sp, #128]
004f16c78 	ldr	x30, [sp, #96]
004f16c7c 	ldp	x22, x21, [sp, #112]
004f16c80 	add	sp, sp, #144
004f16c84 	ret
004f16c88 	bl	#-9985916 ; -> 0x4590d0c 
