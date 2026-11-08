004e9d1a4 	str	x30, [sp, #-32]!
004e9d1a8 	stp	x20, x19, [sp, #16]
004e9d1ac 	adrp	x20, #97746944 ; -> 0xabd5000 
004e9d1b0 	mov	x19, x0
004e9d1b4 	ldrb	w8, [x20, #868]
004e9d1b8 	tbnz	w8, #0, #24 ; -> 0x4e9d1d0 
004e9d1bc 	adrp	x0, #89702400 ; -> 0xa429000 
004e9d1c0 	ldr	x0, [x0, #3104]
004e9d1c4 	bl	#-9488228 ; -> 0x4590a60 
004e9d1c8 	mov	w8, #1
004e9d1cc 	strb	w8, [x20, #868]
004e9d1d0 	mov	w0, #32300
004e9d1d4 	mov	x1, xzr
004e9d1d8 	bl	#-2448436 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9d1dc 	tbz	w0, #0, #40 ; -> 0x4e9d204 
004e9d1e0 	mov	w0, #32300
004e9d1e4 	mov	x1, xzr
004e9d1e8 	bl	#-2448272 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9d1ec 	cbz	x0, #88 ; -> 0x4e9d244 
004e9d1f0 	mov	x1, x19
004e9d1f4 	ldp	x20, x19, [sp, #16]
004e9d1f8 	mov	x2, xzr
004e9d1fc 	ldr	x30, [sp], #32
004e9d200 	b	#-3270384 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e9d204 	adrp	x8, #89702400 ; -> 0xa429000 
004e9d208 	ldr	x8, [x8, #3104]
004e9d20c 	ldr	x0, [x8]
004e9d210 	bl	#-9487636 ; -> 0x4590cfc 
004e9d214 	mov	x1, xzr
004e9d218 	mov	x20, x0
004e9d21c 	bl	#67235852 ; -> 0x8ebc228 System.Object::.ctor
004e9d220 	mov	x0, x20
004e9d224 	mov	x1, x19
004e9d228 	str	wzr, [x20, #16]
004e9d22c 	str	x19, [x0, #32]!
004e9d230 	bl	#-9488428 ; -> 0x4590a04 
004e9d234 	mov	x0, x20
004e9d238 	ldp	x20, x19, [sp, #16]
004e9d23c 	ldr	x30, [sp], #32
004e9d240 	ret
004e9d244 	bl	#-9487672 ; -> 0x4590d0c 
