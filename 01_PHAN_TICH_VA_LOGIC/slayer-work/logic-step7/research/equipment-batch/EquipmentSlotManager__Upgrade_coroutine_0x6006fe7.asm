004e9d100 	str	x30, [sp, #-32]!
004e9d104 	stp	x20, x19, [sp, #16]
004e9d108 	adrp	x20, #97746944 ; -> 0xabd5000 
004e9d10c 	mov	x19, x0
004e9d110 	ldrb	w8, [x20, #866]
004e9d114 	tbnz	w8, #0, #24 ; -> 0x4e9d12c 
004e9d118 	adrp	x0, #89702400 ; -> 0xa429000 
004e9d11c 	ldr	x0, [x0, #3096]
004e9d120 	bl	#-9488064 ; -> 0x4590a60 
004e9d124 	mov	w8, #1
004e9d128 	strb	w8, [x20, #866]
004e9d12c 	mov	w0, #32286
004e9d130 	mov	x1, xzr
004e9d134 	bl	#-2448272 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9d138 	tbz	w0, #0, #40 ; -> 0x4e9d160 
004e9d13c 	mov	w0, #32286
004e9d140 	mov	x1, xzr
004e9d144 	bl	#-2448108 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9d148 	cbz	x0, #88 ; -> 0x4e9d1a0 
004e9d14c 	mov	x1, x19
004e9d150 	ldp	x20, x19, [sp, #16]
004e9d154 	mov	x2, xzr
004e9d158 	ldr	x30, [sp], #32
004e9d15c 	b	#-3270220 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e9d160 	adrp	x8, #89702400 ; -> 0xa429000 
004e9d164 	ldr	x8, [x8, #3096]
004e9d168 	ldr	x0, [x8]
004e9d16c 	bl	#-9487472 ; -> 0x4590cfc 
004e9d170 	mov	x1, xzr
004e9d174 	mov	x20, x0
004e9d178 	bl	#67236016 ; -> 0x8ebc228 System.Object::.ctor
004e9d17c 	mov	x0, x20
004e9d180 	mov	x1, x19
004e9d184 	str	wzr, [x20, #16]
004e9d188 	str	x19, [x0, #32]!
004e9d18c 	bl	#-9488264 ; -> 0x4590a04 
004e9d190 	mov	x0, x20
004e9d194 	ldp	x20, x19, [sp, #16]
004e9d198 	ldr	x30, [sp], #32
004e9d19c 	ret
004e9d1a0 	bl	#-9487508 ; -> 0x4590d0c 
