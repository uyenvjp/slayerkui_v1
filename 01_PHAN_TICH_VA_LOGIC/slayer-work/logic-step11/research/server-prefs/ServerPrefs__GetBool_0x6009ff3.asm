0051f0ec4 	sub	sp, sp, #64
0051f0ec8 	stp	x30, x21, [sp, #32]
0051f0ecc 	stp	x20, x19, [sp, #48]
0051f0ed0 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f0ed4 	mov	w19, w1
0051f0ed8 	mov	w20, w0
0051f0edc 	ldrb	w8, [x21, #3155]
0051f0ee0 	tbnz	w8, #0, #36 ; -> 0x51f0f04 
0051f0ee4 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0ee8 	ldr	x0, [x0, #128]
0051f0eec 	bl	#-12977292 ; -> 0x4590a60 
0051f0ef0 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0ef4 	ldr	x0, [x0, #2048]
0051f0ef8 	bl	#-12977304 ; -> 0x4590a60 
0051f0efc 	mov	w8, #1
0051f0f00 	strb	w8, [x21, #3155]
0051f0f04 	mov	w0, #1928
0051f0f08 	mov	x1, xzr
0051f0f0c 	bl	#-5937512 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0f10 	tbz	w0, #0, #48 ; -> 0x51f0f40 
0051f0f14 	mov	w0, #1928
0051f0f18 	mov	x1, xzr
0051f0f1c 	bl	#-5937348 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0f20 	cbz	x0, #136 ; -> 0x51f0fa8 
0051f0f24 	and	w2, w19, #0x1
0051f0f28 	mov	w1, w20
0051f0f2c 	mov	x3, xzr
0051f0f30 	ldp	x20, x19, [sp, #48]
0051f0f34 	ldp	x30, x21, [sp, #32]
0051f0f38 	add	sp, sp, #64
0051f0f3c 	b	#-6702644 ; -> 0x4b8c908 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_272
0051f0f40 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0f44 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0f48 	mov	x9, #-1
0051f0f4c 	ldr	x8, [x8, #128]
0051f0f50 	add	x0, sp, #8
0051f0f54 	mov	x1, xzr
0051f0f58 	ldr	x8, [x8]
0051f0f5c 	str	x8, [sp, #8]
0051f0f60 	ldr	x21, [x21, #2048]
0051f0f64 	str	x9, [sp, #16]
0051f0f68 	str	w20, [sp, #24]
0051f0f6c 	bl	#63695520 ; -> 0x8eafa0c System.Enum::ToString
0051f0f70 	ldr	x8, [x21]
0051f0f74 	mov	x20, x0
0051f0f78 	ldr	w9, [x8, #228]
0051f0f7c 	cbnz	w9, #12 ; -> 0x51f0f88 
0051f0f80 	mov	x0, x8
0051f0f84 	bl	#-12977060 ; -> 0x4590be0 
0051f0f88 	and	w1, w19, #0x1
0051f0f8c 	mov	x0, x20
0051f0f90 	bl	#28 ; -> 0x51f0fac ServerPrefs::GetBool
0051f0f94 	ldp	x20, x19, [sp, #48]
0051f0f98 	and	w0, w0, #0x1
0051f0f9c 	ldp	x30, x21, [sp, #32]
0051f0fa0 	add	sp, sp, #64
0051f0fa4 	ret
0051f0fa8 	bl	#-12976796 ; -> 0x4590d0c 
