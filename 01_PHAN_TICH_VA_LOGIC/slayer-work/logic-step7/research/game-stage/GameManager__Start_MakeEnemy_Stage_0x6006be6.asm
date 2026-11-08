004e479ec 	sub	sp, sp, #160
004e479f0 	stp	d15, d14, [sp, #16]
004e479f4 	stp	d13, d12, [sp, #32]
004e479f8 	stp	d11, d10, [sp, #48]
004e479fc 	stp	d9, d8, [sp, #64]
004e47a00 	stp	x30, x27, [sp, #80]
004e47a04 	stp	x26, x25, [sp, #96]
004e47a08 	stp	x24, x23, [sp, #112]
004e47a0c 	stp	x22, x21, [sp, #128]
004e47a10 	stp	x20, x19, [sp, #144]
004e47a14 	adrp	x20, #98099200 ; -> 0xabd5000 
004e47a18 	mov	x19, x0
004e47a1c 	ldrb	w8, [x20, #337]
004e47a20 	tbnz	w8, #0, #36 ; -> 0x4e47a44 
004e47a24 	adrp	x0, #89812992 ; -> 0xa3ee000 
004e47a28 	ldr	x0, [x0, #2104]
004e47a2c 	bl	#-9138124 ; -> 0x4590a60 
004e47a30 	adrp	x0, #90013696 ; -> 0xa41f000 
004e47a34 	ldr	x0, [x0, #2816]
004e47a38 	bl	#-9138136 ; -> 0x4590a60 
004e47a3c 	mov	w8, #1
004e47a40 	strb	w8, [x20, #337]
004e47a44 	mov	w0, #7766
004e47a48 	mov	x1, xzr
004e47a4c 	bl	#-2098344 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e47a50 	tbz	w0, #0, #72 ; -> 0x4e47a98 
004e47a54 	mov	w0, #7766
004e47a58 	mov	x1, xzr
004e47a5c 	bl	#-2098180 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e47a60 	cbz	x0, #704 ; -> 0x4e47d20 
004e47a64 	mov	x1, x19
004e47a68 	ldp	x20, x19, [sp, #144]
004e47a6c 	ldp	x22, x21, [sp, #128]
004e47a70 	mov	x2, xzr
004e47a74 	ldp	x24, x23, [sp, #112]
004e47a78 	ldp	x26, x25, [sp, #96]
004e47a7c 	ldp	x30, x27, [sp, #80]
004e47a80 	ldp	d9, d8, [sp, #64]
004e47a84 	ldp	d11, d10, [sp, #48]
004e47a88 	ldp	d13, d12, [sp, #32]
004e47a8c 	ldp	d15, d14, [sp, #16]
004e47a90 	add	sp, sp, #160
004e47a94 	b	#-2921844 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e47a98 	adrp	x20, #89812992 ; -> 0xa3ee000 
004e47a9c 	ldr	x20, [x20, #2104]
004e47aa0 	ldr	x0, [x20]
004e47aa4 	ldr	w8, [x0, #228]
004e47aa8 	cbnz	w8, #8 ; -> 0x4e47ab0 
004e47aac 	bl	#-9137868 ; -> 0x4590be0 
004e47ab0 	adrp	x21, #98074624 ; -> 0xabcf000 
004e47ab4 	ldrb	w8, [x21, #360]
004e47ab8 	cbnz	w8, #24 ; -> 0x4e47ad0 
004e47abc 	adrp	x0, #89812992 ; -> 0xa3ee000 
004e47ac0 	ldr	x0, [x0, #2104]
004e47ac4 	bl	#-9138276 ; -> 0x4590a60 
004e47ac8 	mov	w8, #1
004e47acc 	strb	w8, [x21, #360]
004e47ad0 	ldr	x0, [x20]
004e47ad4 	ldr	w8, [x0, #228]
004e47ad8 	cbnz	w8, #12 ; -> 0x4e47ae4 
004e47adc 	bl	#-9137916 ; -> 0x4590be0 
004e47ae0 	ldr	x0, [x20]
004e47ae4 	ldr	x8, [x0, #184]
004e47ae8 	ldr	x8, [x8]
004e47aec 	cbz	x8, #564 ; -> 0x4e47d20 
004e47af0 	ldr	x20, [x8, #208]
004e47af4 	mov	w0, wzr
004e47af8 	mov	w1, #5
004e47afc 	mov	x2, xzr
004e47b00 	bl	#79379200 ; -> 0x99fb600 UnityEngine.Random::Range
004e47b04 	cbz	x20, #540 ; -> 0x4e47d20 
004e47b08 	adrp	x8, #90013696 ; -> 0xa41f000 
004e47b0c 	mov	w1, w0
004e47b10 	mov	x0, x20
004e47b14 	ldr	x8, [x8, #2816]
004e47b18 	ldr	x2, [x8]
004e47b1c 	bl	#52497528 ; -> 0x8058794 
004e47b20 	adrp	x22, #98091008 ; -> 0xabd3000 
004e47b24 	ldr	d8, [x19, #1424]
004e47b28 	ldr	s9, [x19, #1432]
004e47b2c 	ldrb	w8, [x22, #1724]
004e47b30 	mov	x20, x0
004e47b34 	cbnz	w8, #24 ; -> 0x4e47b4c 
004e47b38 	adrp	x0, #89788416 ; -> 0xa3e8000 
004e47b3c 	ldr	x0, [x0, #632]
004e47b40 	bl	#-9138400 ; -> 0x4590a60 
004e47b44 	mov	w8, #1
004e47b48 	strb	w8, [x22, #1724]
004e47b4c 	adrp	x21, #89788416 ; -> 0xa3e8000 
004e47b50 	mov	w9, #1108082688
004e47b54 	ldr	x21, [x21, #632]
004e47b58 	dup	v0.2s, w9
004e47b5c 	fmov	s1, w9
004e47b60 	ldr	w9, [x19, #1420]
004e47b64 	ldr	x8, [x21]
004e47b68 	cmp	w9, #1
004e47b6c 	ldr	x8, [x8, #184]
004e47b70 	ldr	s13, [x8, #68]
004e47b74 	ldur	d14, [x8, #60]
004e47b78 	fmul	v0.2s, v14.2s, v0.2s
004e47b7c 	fmul	s1, s13, s1
004e47b80 	fadd	v15.2s, v8.2s, v0.2s
004e47b84 	fadd	s10, s9, s1
004e47b88 	b.lt	#348 ; -> 0x4e47ce4 
004e47b8c 	mov	w9, #46871
004e47b90 	mov	w24, #52429
004e47b94 	mov	w23, wzr
004e47b98 	movk	w9, #14545, lsl #16
004e47b9c 	movk	w24, #52428, lsl #16
004e47ba0 	mov	w25, #-10
004e47ba4 	dup	v9.2s, w9
004e47ba8 	adrp	x9, #-49405952 ; -> 0x1f29000 
004e47bac 	adrp	x26, #98095104 ; -> 0xabd4000 
004e47bb0 	ldr	s12, [x9, #2332]
004e47bb4 	mov	w27, #1
004e47bb8 	umull	x9, w23, w24
004e47bbc 	cmp	w23, #10
004e47bc0 	lsr	x9, x9, #35
004e47bc4 	madd	w9, w9, w25, w23
004e47bc8 	csel	w9, w23, w9, lo
004e47bcc 	cbz	x20, #340 ; -> 0x4e47d20 
004e47bd0 	ldr	x10, [x20, #24]
004e47bd4 	cbz	x10, #332 ; -> 0x4e47d20 
004e47bd8 	ldr	w11, [x10, #24]
004e47bdc 	cmp	w9, w11
004e47be0 	b.hs	#324 ; -> 0x4e47d24 
004e47be4 	ldr	x11, [x19, #520]
004e47be8 	cbz	x11, #312 ; -> 0x4e47d20 
004e47bec 	add	x9, x10, w9, uxtw #2
004e47bf0 	ldrb	w10, [x26, #1957]
004e47bf4 	ldr	s11, [x11, #84]
004e47bf8 	ldr	s8, [x9, #32]
004e47bfc 	cbnz	w10, #24 ; -> 0x4e47c14 
004e47c00 	mov	x0, x21
004e47c04 	bl	#-9138596 ; -> 0x4590a60 
004e47c08 	ldr	x8, [x21]
004e47c0c 	strb	w27, [x26, #1957]
004e47c10 	ldr	x8, [x8, #184]
004e47c14 	fmov	s0, #1.50000000
004e47c18 	fmov	s1, #0.75000000
004e47c1c 	ldur	d2, [x8, #84]
004e47c20 	scvtf	s4, w23
004e47c24 	mov	x0, x19
004e47c28 	fmul	v2.2s, v2.2s, v9.2s
004e47c2c 	fmul	s0, s8, s0
004e47c30 	fmul	s1, s11, s1
004e47c34 	fmov	s11, #0.75000000
004e47c38 	fmul	v2.2s, v2.2s, v4.s[0]
004e47c3c 	fadd	s0, s0, s1
004e47c40 	ldr	s1, [x8, #92]
004e47c44 	fmul	s1, s1, s12
004e47c48 	fmul	v3.2s, v14.2s, v0.s[0]
004e47c4c 	fmul	s0, s13, s0
004e47c50 	fmul	s1, s1, s4
004e47c54 	fadd	v3.2s, v15.2s, v3.2s
004e47c58 	fadd	s0, s10, s0
004e47c5c 	fadd	v2.2s, v3.2s, v2.2s
004e47c60 	fadd	s8, s0, s1
004e47c64 	str	q2, [sp]
004e47c68 	bl	#39600 ; -> 0x4e51718 GameManager::get_StageMonsterIndex
004e47c6c 	ldr	q0, [sp]
004e47c70 	fmov	s2, s8
004e47c74 	mov	w1, w0
004e47c78 	mov	x0, x19
004e47c7c 	mov	s1, v0.s[1]
004e47c80 	bl	#39768 ; -> 0x4e517d8 GameManager::MakeEnemy_Stage
004e47c84 	ldrb	w8, [x22, #1724]
004e47c88 	cbnz	w8, #16 ; -> 0x4e47c98 
004e47c8c 	mov	x0, x21
004e47c90 	bl	#-9138736 ; -> 0x4590a60 
004e47c94 	strb	w27, [x22, #1724]
004e47c98 	ldr	x8, [x19, #520]
004e47c9c 	cbz	x8, #132 ; -> 0x4e47d20 
004e47ca0 	ldr	x9, [x21]
004e47ca4 	ldr	s0, [x8, #84]
004e47ca8 	add	w23, w23, #1
004e47cac 	ldr	q2, [sp]
004e47cb0 	ldr	x8, [x9, #184]
004e47cb4 	fmul	s0, s0, s11
004e47cb8 	ldr	w9, [x19, #1420]
004e47cbc 	ldr	s13, [x8, #68]
004e47cc0 	ldur	d14, [x8, #60]
004e47cc4 	cmp	w23, w9
004e47cc8 	fmul	v1.2s, v14.2s, v0.s[0]
004e47ccc 	fmul	s0, s13, s0
004e47cd0 	fadd	v15.2s, v2.2s, v1.2s
004e47cd4 	fadd	s10, s8, s0
004e47cd8 	mov	v1.16b, v2.16b
004e47cdc 	b.lt	#-292 ; -> 0x4e47bb8 
004e47ce0 	b	#12 ; -> 0x4e47cec 
004e47ce4 	fmov	s8, s10
004e47ce8 	fmov	d1, d15
004e47cec 	str	d1, [x19, #1424]
004e47cf0 	ldp	x22, x21, [sp, #128]
004e47cf4 	str	s8, [x19, #1432]
004e47cf8 	ldp	x20, x19, [sp, #144]
004e47cfc 	ldp	x24, x23, [sp, #112]
004e47d00 	ldp	x26, x25, [sp, #96]
004e47d04 	ldp	x30, x27, [sp, #80]
004e47d08 	ldp	d9, d8, [sp, #64]
004e47d0c 	ldp	d11, d10, [sp, #48]
004e47d10 	ldp	d13, d12, [sp, #32]
004e47d14 	ldp	d15, d14, [sp, #16]
004e47d18 	add	sp, sp, #160
004e47d1c 	ret
004e47d20 	bl	#-9138196 ; -> 0x4590d0c 
004e47d24 	bl	#-9138192 ; -> 0x4590d14 
