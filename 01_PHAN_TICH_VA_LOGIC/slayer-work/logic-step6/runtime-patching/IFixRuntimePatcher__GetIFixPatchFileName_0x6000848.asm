004fd779c 	sub	sp, sp, #48
004fd77a0 	stp	x30, x21, [sp, #16]
004fd77a4 	stp	x20, x19, [sp, #32]
004fd77a8 	adrp	x21, #96460800 ; -> 0xabd5000 
004fd77ac 	mov	w19, w1
004fd77b0 	mov	x20, x0
004fd77b4 	ldrb	w8, [x21, #3168]
004fd77b8 	tbnz	w8, #0, #24 ; -> 0x4fd77d0 
004fd77bc 	adrp	x0, #88440832 ; -> 0xa42f000 
004fd77c0 	ldr	x0, [x0, #240]
004fd77c4 	bl	#-10775908 ; -> 0x4590a60 
004fd77c8 	mov	w8, #1
004fd77cc 	strb	w8, [x21, #3168]
004fd77d0 	mov	w0, #3409
004fd77d4 	mov	x1, xzr
004fd77d8 	bl	#-3736116 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd77dc 	tbz	w0, #0, #48 ; -> 0x4fd780c 
004fd77e0 	mov	w0, #3409
004fd77e4 	mov	x1, xzr
004fd77e8 	bl	#-3735952 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd77ec 	cbz	x0, #100 ; -> 0x4fd7850 
004fd77f0 	mov	x1, x20
004fd77f4 	mov	w2, w19
004fd77f8 	mov	x3, xzr
004fd77fc 	ldp	x20, x19, [sp, #32]
004fd7800 	ldp	x30, x21, [sp, #16]
004fd7804 	add	sp, sp, #48
004fd7808 	b	#-4472312 ; -> 0x4b93a10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_412
004fd780c 	adrp	x8, #88145920 ; -> 0xa3e7000 
004fd7810 	adrp	x20, #88440832 ; -> 0xa42f000 
004fd7814 	add	x1, sp, #12
004fd7818 	ldr	x8, [x8, #1248]
004fd781c 	ldr	x20, [x20, #240]
004fd7820 	str	w19, [sp, #12]
004fd7824 	ldr	x0, [x8, #72]
004fd7828 	bl	#-10775616 ; -> 0x4590be8 
004fd782c 	ldr	x8, [x20]
004fd7830 	mov	x1, x0
004fd7834 	mov	x2, xzr
004fd7838 	mov	x0, x8
004fd783c 	bl	#63902792 ; -> 0x8cc8c84 System.String::Format
004fd7840 	ldp	x20, x19, [sp, #32]
004fd7844 	ldp	x30, x21, [sp, #16]
004fd7848 	add	sp, sp, #48
004fd784c 	ret
004fd7850 	bl	#-10775364 ; -> 0x4590d0c 
