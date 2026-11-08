004ec6228 	str	x30, [sp, #-64]!
004ec622c 	stp	x24, x23, [sp, #16]
004ec6230 	stp	x22, x21, [sp, #32]
004ec6234 	stp	x20, x19, [sp, #48]
004ec6238 	adrp	x24, #97579008 ; -> 0xabd5000 
004ec623c 	mov	x19, x4
004ec6240 	mov	x20, x3
004ec6244 	ldrb	w8, [x24, #1162]
004ec6248 	mov	w21, w2
004ec624c 	mov	x23, x1
004ec6250 	mov	x22, x0
004ec6254 	tbnz	w8, #0, #24 ; -> 0x4ec626c 
004ec6258 	adrp	x0, #89264128 ; -> 0xa3e7000 
004ec625c 	ldr	x0, [x0, #1192]
004ec6260 	bl	#-9656320 ; -> 0x4590a60 
004ec6264 	mov	w8, #1
004ec6268 	strb	w8, [x24, #1162]
004ec626c 	mov	w0, #32682
004ec6270 	mov	x1, xzr
004ec6274 	bl	#-2616528 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ec6278 	tbz	w0, #0, #64 ; -> 0x4ec62b8 
004ec627c 	mov	w0, #32682
004ec6280 	mov	x1, xzr
004ec6284 	bl	#-2616364 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ec6288 	cbz	x0, #368 ; -> 0x4ec63f8 
004ec628c 	mov	x1, x22
004ec6290 	mov	x2, x23
004ec6294 	mov	w3, w21
004ec6298 	mov	x4, x20
004ec629c 	mov	x5, x19
004ec62a0 	mov	x6, xzr
004ec62a4 	ldp	x20, x19, [sp, #48]
004ec62a8 	ldp	x22, x21, [sp, #32]
004ec62ac 	ldp	x24, x23, [sp, #16]
004ec62b0 	ldr	x30, [sp], #64
004ec62b4 	b	#-3004900 ; -> 0x4be88d0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2082
004ec62b8 	adrp	x24, #89264128 ; -> 0xa3e7000 
004ec62bc 	mov	x0, x22
004ec62c0 	ldr	x24, [x24, #1192]
004ec62c4 	bl	#-696 ; -> 0x4ec600c ObjectPooler_Effect::GetCoinEffect
004ec62c8 	ldr	x8, [x24]
004ec62cc 	mov	x22, x0
004ec62d0 	ldr	w9, [x8, #228]
004ec62d4 	cbnz	w9, #12 ; -> 0x4ec62e0 
004ec62d8 	mov	x0, x8
004ec62dc 	bl	#-9656060 ; -> 0x4590be0 
004ec62e0 	mov	x0, x22
004ec62e4 	mov	x1, xzr
004ec62e8 	mov	x2, xzr
004ec62ec 	bl	#78900388 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
004ec62f0 	tbz	w0, #0, #24 ; -> 0x4ec6308 
004ec62f4 	ldp	x20, x19, [sp, #48]
004ec62f8 	ldp	x22, x21, [sp, #32]
004ec62fc 	ldp	x24, x23, [sp, #16]
004ec6300 	ldr	x30, [sp], #64
004ec6304 	ret
004ec6308 	cbz	x22, #240 ; -> 0x4ec63f8 
004ec630c 	mov	x0, x22
004ec6310 	mov	x1, xzr
004ec6314 	bl	#78881484 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004ec6318 	cbz	x23, #224 ; -> 0x4ec63f8 
004ec631c 	mov	x24, x0
004ec6320 	mov	x0, x23
004ec6324 	mov	x1, xzr
004ec6328 	bl	#78958084 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ec632c 	cbz	x24, #204 ; -> 0x4ec63f8 
004ec6330 	mov	x0, x24
004ec6334 	mov	x1, xzr
004ec6338 	bl	#78958288 ; -> 0x9a13208 UnityEngine.Transform::set_position
004ec633c 	mov	x0, x22
004ec6340 	mov	x1, xzr
004ec6344 	bl	#78881436 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004ec6348 	adrp	x24, #97554432 ; -> 0xabcf000 
004ec634c 	mov	x23, x0
004ec6350 	ldrb	w8, [x24, #362]
004ec6354 	cbnz	w8, #24 ; -> 0x4ec636c 
004ec6358 	adrp	x0, #89268224 ; -> 0xa3e8000 
004ec635c 	ldr	x0, [x0, #632]
004ec6360 	bl	#-9656576 ; -> 0x4590a60 
004ec6364 	mov	w8, #1
004ec6368 	strb	w8, [x24, #362]
004ec636c 	cbz	x23, #140 ; -> 0x4ec63f8 
004ec6370 	adrp	x8, #89268224 ; -> 0xa3e8000 
004ec6374 	mov	w9, #39322
004ec6378 	mov	x0, x23
004ec637c 	ldr	x8, [x8, #632]
004ec6380 	movk	w9, #16345, lsl #16
004ec6384 	mov	x1, xzr
004ec6388 	dup	v0.2s, w9
004ec638c 	adrp	x9, #-49926144 ; -> 0x1f29000 
004ec6390 	ldr	x8, [x8]
004ec6394 	ldr	s2, [x9, #1336]
004ec6398 	ldr	x8, [x8, #184]
004ec639c 	ldur	d1, [x8, #12]
004ec63a0 	fmul	v0.2s, v1.2s, v0.2s
004ec63a4 	ldr	s1, [x8, #20]
004ec63a8 	fmul	s2, s1, s2
004ec63ac 	mov	s1, v0.s[1]
004ec63b0 	bl	#78960284 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004ec63b4 	add	x0, x22, #40
004ec63b8 	mov	x1, x20
004ec63bc 	mov	x2, x19
004ec63c0 	mov	x3, xzr
004ec63c4 	str	w21, [x22, #96]
004ec63c8 	bl	#-3626448 ; -> 0x4b50df8 SilentBigInt::set_Value
004ec63cc 	mov	x0, x22
004ec63d0 	mov	x1, xzr
004ec63d4 	bl	#78881500 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ec63d8 	cbz	x0, #32 ; -> 0x4ec63f8 
004ec63dc 	ldp	x20, x19, [sp, #48]
004ec63e0 	mov	w1, #1
004ec63e4 	ldp	x22, x21, [sp, #32]
004ec63e8 	mov	x2, xzr
004ec63ec 	ldp	x24, x23, [sp, #16]
004ec63f0 	ldr	x30, [sp], #64
004ec63f4 	b	#78895072 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ec63f8 	bl	#-9656044 ; -> 0x4590d0c 
