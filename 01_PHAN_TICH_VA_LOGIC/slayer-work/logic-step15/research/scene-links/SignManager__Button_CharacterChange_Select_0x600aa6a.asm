0052a4074 	str	x30, [sp, #-32]!
0052a4078 	stp	x20, x19, [sp, #16]
0052a407c 	mov	w20, w1
0052a4080 	mov	x19, x0
0052a4084 	mov	w0, #43222
0052a4088 	mov	x1, xzr
0052a408c 	bl	#-6671080 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a4090 	tbz	w0, #0, #44 ; -> 0x52a40bc 
0052a4094 	mov	w0, #43222
0052a4098 	mov	x1, xzr
0052a409c 	bl	#-6670916 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a40a0 	cbz	x0, #212 ; -> 0x52a4174 
0052a40a4 	mov	x1, x19
0052a40a8 	mov	w2, w20
0052a40ac 	mov	x3, xzr
0052a40b0 	ldp	x20, x19, [sp, #16]
0052a40b4 	ldr	x30, [sp], #32
0052a40b8 	b	#-7489308 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
0052a40bc 	ldr	x0, [x19, #224]
0052a40c0 	str	w20, [x19, #216]
0052a40c4 	cbz	x0, #176 ; -> 0x52a4174 
0052a40c8 	mov	w1, #1
0052a40cc 	mov	x2, xzr
0052a40d0 	bl	#74840836 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
0052a40d4 	ldr	x0, [x19, #224]
0052a40d8 	cbz	w20, #28 ; -> 0x52a40f4 
0052a40dc 	cbz	x0, #152 ; -> 0x52a4174 
0052a40e0 	mov	x1, xzr
0052a40e4 	bl	#74840052 ; -> 0x9a038d8 UnityEngine.GameObject::get_transform
0052a40e8 	cbz	x0, #140 ; -> 0x52a4174 
0052a40ec 	ldr	x1, [x19, #240]
0052a40f0 	b	#24 ; -> 0x52a4108 
0052a40f4 	cbz	x0, #128 ; -> 0x52a4174 
0052a40f8 	mov	x1, xzr
0052a40fc 	bl	#74840028 ; -> 0x9a038d8 UnityEngine.GameObject::get_transform
0052a4100 	cbz	x0, #116 ; -> 0x52a4174 
0052a4104 	ldr	x1, [x19, #232]
0052a4108 	mov	x2, xzr
0052a410c 	bl	#74906464 ; -> 0x9a13c6c UnityEngine.Transform::SetParent
0052a4110 	ldr	x0, [x19, #224]
0052a4114 	cbz	x0, #96 ; -> 0x52a4174 
0052a4118 	mov	x1, xzr
0052a411c 	bl	#74839996 ; -> 0x9a038d8 UnityEngine.GameObject::get_transform
0052a4120 	adrp	x20, #93495296 ; -> 0xabce000 
0052a4124 	mov	x19, x0
0052a4128 	ldrb	w8, [x20, #2297]
0052a412c 	cbnz	w8, #24 ; -> 0x52a4144 
0052a4130 	adrp	x0, #85213184 ; -> 0xa3e8000 
0052a4134 	ldr	x0, [x0, #632]
0052a4138 	bl	#-13711064 ; -> 0x4590a60 
0052a413c 	mov	w8, #1
0052a4140 	strb	w8, [x20, #2297]
0052a4144 	cbz	x19, #48 ; -> 0x52a4174 
0052a4148 	adrp	x8, #85213184 ; -> 0xa3e8000 
0052a414c 	mov	x0, x19
0052a4150 	mov	x1, xzr
0052a4154 	ldr	x8, [x8, #632]
0052a4158 	ldp	x20, x19, [sp, #16]
0052a415c 	ldr	x8, [x8]
0052a4160 	ldr	x8, [x8, #184]
0052a4164 	ldp	s0, s1, [x8]
0052a4168 	ldr	s2, [x8, #8]
0052a416c 	ldr	x30, [sp], #32
0052a4170 	b	#74900292 ; -> 0x9a124b4 UnityEngine.Transform::set_localPosition
0052a4174 	bl	#-13710440 ; -> 0x4590d0c 
