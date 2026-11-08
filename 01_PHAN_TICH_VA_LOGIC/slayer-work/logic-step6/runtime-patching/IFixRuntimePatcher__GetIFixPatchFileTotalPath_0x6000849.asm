004fd7854 	str	x30, [sp, #-48]!
004fd7858 	stp	x22, x21, [sp, #16]
004fd785c 	stp	x20, x19, [sp, #32]
004fd7860 	adrp	x21, #96460800 ; -> 0xabd5000 
004fd7864 	mov	w19, w1
004fd7868 	mov	x20, x0
004fd786c 	ldrb	w8, [x21, #3169]
004fd7870 	tbnz	w8, #0, #24 ; -> 0x4fd7888 
004fd7874 	adrp	x0, #88158208 ; -> 0xa3ea000 
004fd7878 	ldr	x0, [x0, #2232]
004fd787c 	bl	#-10776092 ; -> 0x4590a60 
004fd7880 	mov	w8, #1
004fd7884 	strb	w8, [x21, #3169]
004fd7888 	mov	w0, #3410
004fd788c 	mov	x1, xzr
004fd7890 	bl	#-3736300 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd7894 	tbz	w0, #0, #48 ; -> 0x4fd78c4 
004fd7898 	mov	w0, #3410
004fd789c 	mov	x1, xzr
004fd78a0 	bl	#-3736136 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd78a4 	cbz	x0, #108 ; -> 0x4fd7910 
004fd78a8 	mov	x1, x20
004fd78ac 	mov	w2, w19
004fd78b0 	mov	x3, xzr
004fd78b4 	ldp	x20, x19, [sp, #32]
004fd78b8 	ldp	x22, x21, [sp, #16]
004fd78bc 	ldr	x30, [sp], #48
004fd78c0 	b	#-4472496 ; -> 0x4b93a10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_412
004fd78c4 	adrp	x22, #88158208 ; -> 0xa3ea000 
004fd78c8 	mov	x0, x20
004fd78cc 	mov	w1, w19
004fd78d0 	ldr	x22, [x22, #2232]
004fd78d4 	ldr	x21, [x20, #16]
004fd78d8 	bl	#-316 ; -> 0x4fd779c IFixRuntimePatcher::GetIFixPatchFileName
004fd78dc 	ldr	x8, [x22]
004fd78e0 	mov	x19, x0
004fd78e4 	ldr	w9, [x8, #228]
004fd78e8 	cbnz	w9, #12 ; -> 0x4fd78f4 
004fd78ec 	mov	x0, x8
004fd78f0 	bl	#-10775824 ; -> 0x4590be0 
004fd78f4 	mov	x0, x21
004fd78f8 	mov	x1, x19
004fd78fc 	mov	x2, xzr
004fd7900 	ldp	x20, x19, [sp, #32]
004fd7904 	ldp	x22, x21, [sp, #16]
004fd7908 	ldr	x30, [sp], #48
004fd790c 	b	#65486984 ; -> 0x8e4b994 System.IO.Path::Combine
004fd7910 	bl	#-10775556 ; -> 0x4590d0c 
