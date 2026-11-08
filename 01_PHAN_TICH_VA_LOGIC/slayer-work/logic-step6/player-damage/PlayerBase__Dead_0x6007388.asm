004ef5ea0 	str	x30, [sp, #-32]!
004ef5ea4 	stp	x20, x19, [sp, #16]
004ef5ea8 	mov	x19, x0
004ef5eac 	mov	w0, #32893
004ef5eb0 	mov	x1, xzr
004ef5eb4 	bl	#-2812176 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef5eb8 	tbz	w0, #0, #40 ; -> 0x4ef5ee0 
004ef5ebc 	mov	w0, #32893
004ef5ec0 	mov	x1, xzr
004ef5ec4 	bl	#-2812012 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef5ec8 	cbz	x0, #128 ; -> 0x4ef5f48 
004ef5ecc 	mov	x1, x19
004ef5ed0 	ldp	x20, x19, [sp, #16]
004ef5ed4 	mov	x2, xzr
004ef5ed8 	ldr	x30, [sp], #32
004ef5edc 	b	#-3635644 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef5ee0 	ldr	x8, [x19]
004ef5ee4 	mov	x0, x19
004ef5ee8 	mov	w1, #3
004ef5eec 	ldr	x9, [x8, #712]
004ef5ef0 	ldr	x2, [x8, #720]
004ef5ef4 	blr	x9
004ef5ef8 	adrp	x20, #97357824 ; -> 0xabce000 
004ef5efc 	ldr	x19, [x19, #328]
004ef5f00 	ldrb	w8, [x20, #2296]
004ef5f04 	cbnz	w8, #24 ; -> 0x4ef5f1c 
004ef5f08 	adrp	x0, #89075712 ; -> 0xa3e8000 
004ef5f0c 	ldr	x0, [x0, #688]
004ef5f10 	bl	#-9852080 ; -> 0x4590a60 
004ef5f14 	mov	w8, #1
004ef5f18 	strb	w8, [x20, #2296]
004ef5f1c 	cbz	x19, #44 ; -> 0x4ef5f48 
004ef5f20 	adrp	x8, #89075712 ; -> 0xa3e8000 
004ef5f24 	mov	x0, x19
004ef5f28 	mov	x1, xzr
004ef5f2c 	ldr	x8, [x8, #688]
004ef5f30 	ldp	x20, x19, [sp, #16]
004ef5f34 	ldr	x8, [x8]
004ef5f38 	ldr	x8, [x8, #184]
004ef5f3c 	ldp	s0, s1, [x8]
004ef5f40 	ldr	x30, [sp], #32
004ef5f44 	b	#79269484 ; -> 0x9a8edb0 UnityEngine.Rigidbody2D::set_linearVelocity
004ef5f48 	bl	#-9851452 ; -> 0x4590d0c 
