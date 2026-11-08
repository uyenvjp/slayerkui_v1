004ef7b30 	str	x30, [sp, #-32]!
004ef7b34 	stp	x20, x19, [sp, #16]
004ef7b38 	adrp	x20, #97378304 ; -> 0xabd5000 
004ef7b3c 	mov	x19, x0
004ef7b40 	ldrb	w8, [x20, #1492]
004ef7b44 	tbnz	w8, #0, #24 ; -> 0x4ef7b5c 
004ef7b48 	adrp	x0, #89272320 ; -> 0xa41a000 
004ef7b4c 	ldr	x0, [x0, #3856]
004ef7b50 	bl	#-9859312 ; -> 0x4590a60 
004ef7b54 	mov	w8, #1
004ef7b58 	strb	w8, [x20, #1492]
004ef7b5c 	mov	w0, #32909
004ef7b60 	mov	x1, xzr
004ef7b64 	bl	#-2819520 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef7b68 	tbz	w0, #0, #40 ; -> 0x4ef7b90 
004ef7b6c 	mov	w0, #32909
004ef7b70 	mov	x1, xzr
004ef7b74 	bl	#-2819356 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef7b78 	cbz	x0, #160 ; -> 0x4ef7c18 
004ef7b7c 	mov	x1, x19
004ef7b80 	ldp	x20, x19, [sp, #16]
004ef7b84 	mov	x2, xzr
004ef7b88 	ldr	x30, [sp], #32
004ef7b8c 	b	#-3642988 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef7b90 	adrp	x20, #89272320 ; -> 0xa41a000 
004ef7b94 	mov	x0, x19
004ef7b98 	ldr	x20, [x20, #3856]
004ef7b9c 	bl	#2912 ; -> 0x4ef86fc PlayerBase::StopFakeDeathCoroutine
004ef7ba0 	ldr	x0, [x20]
004ef7ba4 	str	wzr, [x19, #736]
004ef7ba8 	ldr	w8, [x0, #228]
004ef7bac 	cbnz	w8, #12 ; -> 0x4ef7bb8 
004ef7bb0 	bl	#-9859024 ; -> 0x4590be0 
004ef7bb4 	ldr	x0, [x20]
004ef7bb8 	ldr	x8, [x0, #184]
004ef7bbc 	ldr	x8, [x8, #48]
004ef7bc0 	cbz	x8, #88 ; -> 0x4ef7c18 
004ef7bc4 	ldr	x9, [x8, #24]
004ef7bc8 	ldr	x0, [x8, #64]
004ef7bcc 	ldr	x1, [x8, #40]
004ef7bd0 	blr	x9
004ef7bd4 	mov	x0, x19
004ef7bd8 	bl	#-7480 ; -> 0x4ef5ea0 PlayerBase::Dead
004ef7bdc 	mov	x0, x19
004ef7be0 	bl	#3312 ; -> 0x4ef88d0 PlayerBase::DefeatCoroutine
004ef7be4 	mov	x1, x0
004ef7be8 	mov	x0, x19
004ef7bec 	bl	#3468 ; -> 0x4ef8978 PlayerBase::Start_Defeat
004ef7bf0 	mov	x0, xzr
004ef7bf4 	bl	#-1961544 ; -> 0x4d18dac SoundManager::get_instance
004ef7bf8 	cbz	x0, #32 ; -> 0x4ef7c18 
004ef7bfc 	ldr	x8, [x0]
004ef7c00 	ldp	x20, x19, [sp, #16]
004ef7c04 	mov	x1, xzr
004ef7c08 	ldr	x2, [x8, #1856]
004ef7c0c 	ldr	x3, [x8, #1848]
004ef7c10 	ldr	x30, [sp], #32
004ef7c14 	br	x3
004ef7c18 	bl	#-9858828 ; -> 0x4590d0c 
