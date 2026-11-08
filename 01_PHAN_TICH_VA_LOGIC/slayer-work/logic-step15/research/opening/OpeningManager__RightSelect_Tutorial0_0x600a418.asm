005241be8 	stp	x30, x23, [sp, #-48]!
005241bec 	stp	x22, x21, [sp, #16]
005241bf0 	stp	x20, x19, [sp, #32]
005241bf4 	adrp	x20, #93933568 ; -> 0xabd6000 
005241bf8 	mov	x19, x0
005241bfc 	ldrb	w8, [x20, #3712]
005241c00 	tbnz	w8, #0, #72 ; -> 0x5241c48 
005241c04 	adrp	x0, #85647360 ; -> 0xa3ef000 
005241c08 	ldr	x0, [x0, #632]
005241c0c 	bl	#-13308332 ; -> 0x4590a60 
005241c10 	adrp	x0, #85622784 ; -> 0xa3e9000 
005241c14 	ldr	x0, [x0, #2408]
005241c18 	bl	#-13308344 ; -> 0x4590a60 
005241c1c 	adrp	x0, #85958656 ; -> 0xa43b000 
005241c20 	ldr	x0, [x0, #2464]
005241c24 	bl	#-13308356 ; -> 0x4590a60 
005241c28 	adrp	x0, #85958656 ; -> 0xa43b000 
005241c2c 	ldr	x0, [x0, #2472]
005241c30 	bl	#-13308368 ; -> 0x4590a60 
005241c34 	adrp	x0, #85647360 ; -> 0xa3ef000 
005241c38 	ldr	x0, [x0, #3392]
005241c3c 	bl	#-13308380 ; -> 0x4590a60 
005241c40 	mov	w8, #1
005241c44 	strb	w8, [x20, #3712]
005241c48 	mov	w0, #42260
005241c4c 	mov	x1, xzr
005241c50 	bl	#-6268588 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241c54 	tbz	w0, #0, #44 ; -> 0x5241c80 
005241c58 	mov	w0, #42260
005241c5c 	mov	x1, xzr
005241c60 	bl	#-6268424 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241c64 	cbz	x0, #376 ; -> 0x5241ddc 
005241c68 	mov	x1, x19
005241c6c 	ldp	x20, x19, [sp, #32]
005241c70 	ldp	x22, x21, [sp, #16]
005241c74 	mov	x2, xzr
005241c78 	ldp	x30, x23, [sp], #48
005241c7c 	b	#-7092060 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005241c80 	adrp	x22, #85958656 ; -> 0xa43b000 
005241c84 	ldr	x22, [x22, #2472]
005241c88 	ldr	x0, [x22]
005241c8c 	ldr	w8, [x0, #228]
005241c90 	cbnz	w8, #12 ; -> 0x5241c9c 
005241c94 	bl	#-13308084 ; -> 0x4590be0 
005241c98 	ldr	x0, [x22]
005241c9c 	ldr	x8, [x0, #184]
005241ca0 	adrp	x23, #85622784 ; -> 0xa3e9000 
005241ca4 	ldr	x20, [x8, #8]
005241ca8 	ldr	x23, [x23, #2408]
005241cac 	cbnz	x20, #92 ; -> 0x5241d08 
005241cb0 	ldr	w9, [x0, #228]
005241cb4 	cbnz	w9, #16 ; -> 0x5241cc4 
005241cb8 	bl	#-13308120 ; -> 0x4590be0 
005241cbc 	ldr	x8, [x22]
005241cc0 	ldr	x8, [x8, #184]
005241cc4 	adrp	x9, #85647360 ; -> 0xa3ef000 
005241cc8 	ldr	x9, [x9, #632]
005241ccc 	ldr	x21, [x8]
005241cd0 	ldr	x0, [x9]
005241cd4 	bl	#-13307864 ; -> 0x4590cfc 
005241cd8 	adrp	x8, #85958656 ; -> 0xa43b000 
005241cdc 	mov	x1, x21
005241ce0 	mov	x3, xzr
005241ce4 	ldr	x8, [x8, #2464]
005241ce8 	mov	x20, x0
005241cec 	ldr	x2, [x8]
005241cf0 	bl	#-5688520 ; -> 0x4cd5028 DialogueManager+DialogueAction::.ctor
005241cf4 	ldr	x8, [x22]
005241cf8 	mov	x1, x20
005241cfc 	ldr	x0, [x8, #184]
005241d00 	str	x20, [x0, #8]!
005241d04 	bl	#-13308672 ; -> 0x4590a04 
005241d08 	ldr	x8, [x23]
005241d0c 	ldr	x8, [x8, #184]
005241d10 	ldr	x0, [x8]
005241d14 	cbz	x0, #200 ; -> 0x5241ddc 
005241d18 	mov	w1, wzr
005241d1c 	mov	w2, #3
005241d20 	mov	x3, x20
005241d24 	mov	x4, xzr
005241d28 	mov	x5, xzr
005241d2c 	mov	x6, xzr
005241d30 	bl	#-5689740 ; -> 0x4cd4ba4 DialogueManager::Dialogue_Start
005241d34 	ldr	w8, [x19, #72]
005241d38 	ldr	x0, [x19, #64]
005241d3c 	cbz	w8, #16 ; -> 0x5241d4c 
005241d40 	cbz	x0, #156 ; -> 0x5241ddc 
005241d44 	mov	w2, #20
005241d48 	b	#12 ; -> 0x5241d54 
005241d4c 	cbz	x0, #144 ; -> 0x5241ddc 
005241d50 	mov	w2, #2
005241d54 	adrp	x8, #85647360 ; -> 0xa3ef000 
005241d58 	mov	x3, xzr
005241d5c 	ldr	x8, [x8, #3392]
005241d60 	ldr	x1, [x8]
005241d64 	bl	#74838780 ; -> 0x99a1060 UnityEngine.Animator::SetInteger
005241d68 	adrp	x21, #93925376 ; -> 0xabd4000 
005241d6c 	ldr	x20, [x19, #56]
005241d70 	ldrb	w8, [x21, #1277]
005241d74 	cbnz	w8, #24 ; -> 0x5241d8c 
005241d78 	adrp	x0, #85618688 ; -> 0xa3e8000 
005241d7c 	ldr	x0, [x0, #632]
005241d80 	bl	#-13308704 ; -> 0x4590a60 
005241d84 	mov	w8, #1
005241d88 	strb	w8, [x21, #1277]
005241d8c 	cbz	x20, #80 ; -> 0x5241ddc 
005241d90 	adrp	x8, #85618688 ; -> 0xa3e8000 
005241d94 	mov	w9, #39322
005241d98 	mov	x0, x20
005241d9c 	ldr	x8, [x8, #632]
005241da0 	movk	w9, #16025, lsl #16
005241da4 	mov	x1, xzr
005241da8 	dup	v0.2s, w9
005241dac 	ldr	x8, [x8]
005241db0 	ldr	x8, [x8, #184]
005241db4 	ldr	d1, [x8, #48]
005241db8 	fmul	v0.2s, v1.2s, v0.2s
005241dbc 	mov	s1, v0.s[1]
005241dc0 	bl	#75812848 ; -> 0x9a8edb0 UnityEngine.Rigidbody2D::set_linearVelocity
005241dc4 	mov	x0, x19
005241dc8 	ldp	x20, x19, [sp, #32]
005241dcc 	ldp	x22, x21, [sp, #16]
005241dd0 	fmov	s0, #3.00000000
005241dd4 	ldp	x30, x23, [sp], #48
005241dd8 	b	#8 ; -> 0x5241de0 OpeningManager::Tutorial_End
005241ddc 	bl	#-13308112 ; -> 0x4590d0c 
