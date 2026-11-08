004ea6adc 	str	x30, [sp, #-32]!
004ea6ae0 	stp	x20, x19, [sp, #16]
004ea6ae4 	adrp	x20, #97710080 ; -> 0xabd5000 
004ea6ae8 	mov	x19, x0
004ea6aec 	ldrb	w8, [x20, #943]
004ea6af0 	tbnz	w8, #0, #24 ; -> 0x4ea6b08 
004ea6af4 	adrp	x0, #89403392 ; -> 0xa3e9000 
004ea6af8 	ldr	x0, [x0, #1056]
004ea6afc 	bl	#-9527452 ; -> 0x4590a60 
004ea6b00 	mov	w8, #1
004ea6b04 	strb	w8, [x20, #943]
004ea6b08 	mov	w0, #32372
004ea6b0c 	mov	x1, xzr
004ea6b10 	bl	#-2487660 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ea6b14 	tbz	w0, #0, #40 ; -> 0x4ea6b3c 
004ea6b18 	mov	w0, #32372
004ea6b1c 	mov	x1, xzr
004ea6b20 	bl	#-2487496 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ea6b24 	cbz	x0, #68 ; -> 0x4ea6b68 
004ea6b28 	mov	x1, x19
004ea6b2c 	ldp	x20, x19, [sp, #16]
004ea6b30 	mov	x2, xzr
004ea6b34 	ldr	x30, [sp], #32
004ea6b38 	b	#-3311128 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ea6b3c 	adrp	x8, #89403392 ; -> 0xa3e9000 
004ea6b40 	mov	x0, x19
004ea6b44 	ldr	x8, [x8, #1056]
004ea6b48 	ldr	x1, [x8]
004ea6b4c 	bl	#16651596 ; -> 0x5e88098 
004ea6b50 	str	x0, [x19, #32]!
004ea6b54 	mov	x1, x0
004ea6b58 	mov	x0, x19
004ea6b5c 	ldp	x20, x19, [sp, #16]
004ea6b60 	ldr	x30, [sp], #32
004ea6b64 	b	#-9527648 ; -> 0x4590a04 
004ea6b68 	bl	#-9526876 ; -> 0x4590d0c 
