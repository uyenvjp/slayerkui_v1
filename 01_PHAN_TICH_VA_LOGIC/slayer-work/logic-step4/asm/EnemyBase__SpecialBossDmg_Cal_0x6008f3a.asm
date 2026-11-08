0050b8e74 	sub	sp, sp, #96
0050b8e78 	str	x30, [sp, #16]
0050b8e7c 	stp	x26, x25, [sp, #32]
0050b8e80 	stp	x24, x23, [sp, #48]
0050b8e84 	stp	x22, x21, [sp, #64]
0050b8e88 	stp	x20, x19, [sp, #80]
0050b8e8c 	adrp	x26, #95543296 ; -> 0xabd6000 
0050b8e90 	mov	x22, x6
0050b8e94 	mov	w25, w5
0050b8e98 	ldrb	w8, [x26, #712]
0050b8e9c 	mov	w23, w4
0050b8ea0 	mov	w24, w3
0050b8ea4 	mov	x19, x2
0050b8ea8 	mov	x20, x1
0050b8eac 	mov	x21, x0
0050b8eb0 	tbnz	w8, #0, #24 ; -> 0x50b8ec8 
0050b8eb4 	adrp	x0, #87269376 ; -> 0xa3f2000 
0050b8eb8 	ldr	x0, [x0, #3056]
0050b8ebc 	bl	#-11699292 ; -> 0x4590a60 
0050b8ec0 	mov	w8, #1
0050b8ec4 	strb	w8, [x26, #712]
0050b8ec8 	mov	w0, #31623
0050b8ecc 	mov	x1, xzr
0050b8ed0 	bl	#-4659500 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b8ed4 	tbz	w0, #0, #60 ; -> 0x50b8f10 
0050b8ed8 	mov	w0, #31623
0050b8edc 	mov	x1, xzr
0050b8ee0 	bl	#-4659336 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b8ee4 	cbz	x0, #228 ; -> 0x50b8fc8 
0050b8ee8 	and	w6, w25, #0x1
0050b8eec 	mov	x1, x21
0050b8ef0 	mov	x2, x20
0050b8ef4 	mov	x3, x19
0050b8ef8 	mov	w4, w24
0050b8efc 	mov	w5, w23
0050b8f00 	mov	x7, x22
0050b8f04 	str	xzr, [sp]
0050b8f08 	bl	#-5067800 ; -> 0x4be3af0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1977
0050b8f0c 	b	#160 ; -> 0x50b8fac 
0050b8f10 	tbz	w25, #0, #44 ; -> 0x50b8f3c 
0050b8f14 	ldr	x8, [x21]
0050b8f18 	mov	x0, x21
0050b8f1c 	mov	x1, x20
0050b8f20 	mov	x2, x19
0050b8f24 	mov	w3, w23
0050b8f28 	ldr	x9, [x8, #920]
0050b8f2c 	ldr	x4, [x8, #928]
0050b8f30 	blr	x9
0050b8f34 	mov	x20, x0
0050b8f38 	mov	x19, x1
0050b8f3c 	cbz	x22, #56 ; -> 0x50b8f74 
0050b8f40 	adrp	x8, #87269376 ; -> 0xa3f2000 
0050b8f44 	ldr	x8, [x8, #3056]
0050b8f48 	ldr	x9, [x22]
0050b8f4c 	ldr	x8, [x8]
0050b8f50 	ldrb	w11, [x9, #304]
0050b8f54 	ldrb	w10, [x8, #304]
0050b8f58 	cmp	w11, w10
0050b8f5c 	b.lo	#24 ; -> 0x50b8f74 
0050b8f60 	ldr	x9, [x9, #200]
0050b8f64 	add	x9, x9, x10, lsl #3
0050b8f68 	ldur	x9, [x9, #-8]
0050b8f6c 	cmp	x9, x8
0050b8f70 	b.eq	#28 ; -> 0x50b8f8c 
0050b8f74 	mov	x0, x21
0050b8f78 	mov	x1, x20
0050b8f7c 	mov	x2, x19
0050b8f80 	bl	#6276 ; -> 0x50ba804 EnemyBase::Beast_BossAddDmg_Cal
0050b8f84 	mov	x20, x0
0050b8f88 	mov	x19, x1
0050b8f8c 	ldrb	w8, [x21, #680]
0050b8f90 	cbz	w8, #20 ; -> 0x50b8fa4 
0050b8f94 	mov	x0, x21
0050b8f98 	mov	x1, x20
0050b8f9c 	mov	x2, x19
0050b8fa0 	bl	#5604 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050b8fa4 	mov	x0, x20
0050b8fa8 	mov	x1, x19
0050b8fac 	ldp	x20, x19, [sp, #80]
0050b8fb0 	ldr	x30, [sp, #16]
0050b8fb4 	ldp	x22, x21, [sp, #64]
0050b8fb8 	ldp	x24, x23, [sp, #48]
0050b8fbc 	ldp	x26, x25, [sp, #32]
0050b8fc0 	add	sp, sp, #96
0050b8fc4 	ret
0050b8fc8 	bl	#-11698876 ; -> 0x4590d0c 
