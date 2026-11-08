0050b4f08 	sub	sp, sp, #96
0050b4f0c 	str	d12, [sp, #32]
0050b4f10 	stp	d11, d10, [sp, #40]
0050b4f14 	stp	d9, d8, [sp, #56]
0050b4f18 	str	x30, [sp, #72]
0050b4f1c 	stp	x20, x19, [sp, #80]
0050b4f20 	adrp	x20, #95559680 ; -> 0xabd6000 
0050b4f24 	mov	x19, x0
0050b4f28 	ldrb	w8, [x20, #680]
0050b4f2c 	tbnz	w8, #0, #24 ; -> 0x50b4f44 
0050b4f30 	adrp	x0, #87240704 ; -> 0xa3e7000 
0050b4f34 	ldr	x0, [x0, #1192]
0050b4f38 	bl	#-11683032 ; -> 0x4590a60 
0050b4f3c 	mov	w8, #1
0050b4f40 	strb	w8, [x20, #680]
0050b4f44 	mov	w0, #38108
0050b4f48 	mov	x1, xzr
0050b4f4c 	bl	#-4643240 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b4f50 	tbz	w0, #0, #56 ; -> 0x50b4f88 
0050b4f54 	mov	w0, #38108
0050b4f58 	mov	x1, xzr
0050b4f5c 	bl	#-4643076 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b4f60 	cbz	x0, #384 ; -> 0x50b50e0 
0050b4f64 	mov	x1, x19
0050b4f68 	ldp	x20, x19, [sp, #80]
0050b4f6c 	ldp	d9, d8, [sp, #56]
0050b4f70 	mov	x2, xzr
0050b4f74 	ldp	d11, d10, [sp, #40]
0050b4f78 	ldr	x30, [sp, #72]
0050b4f7c 	ldr	d12, [sp, #32]
0050b4f80 	add	sp, sp, #96
0050b4f84 	b	#-5466724 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b4f88 	ldr	x0, [x19, #176]
0050b4f8c 	cbz	x0, #340 ; -> 0x50b50e0 
0050b4f90 	mov	x1, xzr
0050b4f94 	bl	#76931480 ; -> 0x9a1312c UnityEngine.Transform::get_position
0050b4f98 	fmov	s8, s2
0050b4f9c 	adrp	x20, #95526912 ; -> 0xabce000 
0050b4fa0 	stp	q1, q0, [sp]
0050b4fa4 	ldrb	w8, [x20, #2298]
0050b4fa8 	cbnz	w8, #24 ; -> 0x50b4fc0 
0050b4fac 	adrp	x0, #87244800 ; -> 0xa3e8000 
0050b4fb0 	ldr	x0, [x0, #632]
0050b4fb4 	bl	#-11683156 ; -> 0x4590a60 
0050b4fb8 	mov	w8, #1
0050b4fbc 	strb	w8, [x20, #2298]
0050b4fc0 	ldr	x0, [x19, #328]
0050b4fc4 	cbz	x0, #284 ; -> 0x50b50e0 
0050b4fc8 	adrp	x8, #87244800 ; -> 0xa3e8000 
0050b4fcc 	mov	x1, xzr
0050b4fd0 	ldr	x8, [x8, #632]
0050b4fd4 	ldr	s12, [x19, #388]
0050b4fd8 	ldr	x8, [x8]
0050b4fdc 	ldr	x8, [x8, #184]
0050b4fe0 	ldr	d10, [x8, #24]
0050b4fe4 	ldr	s11, [x8, #32]
0050b4fe8 	bl	#76933512 ; -> 0x9a13970 UnityEngine.Transform::get_localScale
0050b4fec 	ldr	x0, [x19, #336]
0050b4ff0 	cbz	x0, #240 ; -> 0x50b50e0 
0050b4ff4 	mov	x1, xzr
0050b4ff8 	fmov	s9, s0
0050b4ffc 	bl	#76933492 ; -> 0x9a13970 UnityEngine.Transform::get_localScale
0050b5000 	fmul	s1, s12, s9
0050b5004 	adrp	x8, #87236608 ; -> 0xa3e7000 
0050b5008 	fmul	s0, s1, s0
0050b500c 	fmov	s1, #1.00000000
0050b5010 	fadd	s0, s0, s1
0050b5014 	ldp	q1, q2, [sp]
0050b5018 	ldr	x8, [x8, #1192]
0050b501c 	ldr	x20, [x19, #448]
0050b5020 	mov	v2.s[1], v1.s[0]
0050b5024 	ldr	x0, [x8]
0050b5028 	fmul	v1.2s, v10.2s, v0.s[0]
0050b502c 	fmul	s0, s11, s0
0050b5030 	fadd	v1.2s, v2.2s, v1.2s
0050b5034 	fadd	s0, s8, s0
0050b5038 	str	d1, [x19, #152]
0050b503c 	str	s0, [x19, #160]
0050b5040 	ldr	w8, [x0, #228]
0050b5044 	cbnz	w8, #8 ; -> 0x50b504c 
0050b5048 	bl	#-11682920 ; -> 0x4590be0 
0050b504c 	mov	x0, x20
0050b5050 	mov	x1, xzr
0050b5054 	mov	x2, xzr
0050b5058 	bl	#76873528 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
0050b505c 	tbz	w0, #0, #20 ; -> 0x50b5070 
0050b5060 	ldr	x9, [x19]
0050b5064 	add	x8, x9, #1144
0050b5068 	add	x9, x9, #1152
0050b506c 	b	#48 ; -> 0x50b509c 
0050b5070 	ldr	x0, [x19, #448]
0050b5074 	cbz	x0, #108 ; -> 0x50b50e0 
0050b5078 	mov	x1, xzr
0050b507c 	bl	#76854836 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
0050b5080 	cbz	x0, #96 ; -> 0x50b50e0 
0050b5084 	mov	w1, #1
0050b5088 	mov	x2, xzr
0050b508c 	bl	#76868424 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
0050b5090 	ldr	x9, [x19]
0050b5094 	add	x8, x9, #1160
0050b5098 	add	x9, x9, #1168
0050b509c 	ldr	x8, [x8]
0050b50a0 	ldr	x1, [x9]
0050b50a4 	mov	x0, x19
0050b50a8 	blr	x8
0050b50ac 	ldr	x8, [x19]
0050b50b0 	mov	x0, x19
0050b50b4 	ldr	x9, [x8, #1128]
0050b50b8 	ldr	x1, [x8, #1136]
0050b50bc 	blr	x9
0050b50c0 	mov	x0, x19
0050b50c4 	ldp	x20, x19, [sp, #80]
0050b50c8 	ldp	d9, d8, [sp, #56]
0050b50cc 	ldr	x30, [sp, #72]
0050b50d0 	ldp	d11, d10, [sp, #40]
0050b50d4 	ldr	d12, [sp, #32]
0050b50d8 	add	sp, sp, #96
0050b50dc 	b	#8 ; -> 0x50b50e4 EnemyBase::BaseSetting
0050b50e0 	bl	#-11682772 ; -> 0x4590d0c 
