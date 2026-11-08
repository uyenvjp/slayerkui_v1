004745f2c 	sub	sp, sp, #128
004745f30 	stp	x30, x21, [sp, #96]
004745f34 	stp	x20, x19, [sp, #112]
004745f38 	adrp	x20, #105418752 ; -> 0xabce000 
004745f3c 	mov	x19, x0
004745f40 	ldrb	w8, [x20, #3443]
004745f44 	tbnz	w8, #0, #24 ; -> 0x4745f5c 
004745f48 	adrp	x0, #97148928 ; -> 0xa3eb000 
004745f4c 	ldr	x0, [x0, #536]
004745f50 	bl	#-1791216 ; -> 0x4590a60 
004745f54 	mov	w8, #1
004745f58 	strb	w8, [x20, #3443]
004745f5c 	movi	v0.2d, #0000000000000000
004745f60 	mov	w0, #47354
004745f64 	mov	x1, xzr
004745f68 	stp	q0, q0, [sp, #32]
004745f6c 	stp	q0, q0, [sp, #64]
004745f70 	bl	#5248564 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004745f74 	tbz	w0, #0, #44 ; -> 0x4745fa0 
004745f78 	mov	w0, #47354
004745f7c 	mov	x1, xzr
004745f80 	bl	#5248728 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004745f84 	cbz	x0, #132 ; -> 0x4746008 
004745f88 	mov	x1, x19
004745f8c 	ldp	x20, x19, [sp, #112]
004745f90 	ldp	x30, x21, [sp, #96]
004745f94 	mov	x2, xzr
004745f98 	add	sp, sp, #128
004745f9c 	b	#4425092 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004745fa0 	adrp	x20, #97148928 ; -> 0xa3eb000 
004745fa4 	mov	x8, sp
004745fa8 	mov	x0, xzr
004745fac 	ldr	x20, [x20, #536]
004745fb0 	bl	#73688552 ; -> 0x8d8c598 System.Runtime.CompilerServices.AsyncVoidMethodBuilder::Create
004745fb4 	ldp	q0, q1, [sp]
004745fb8 	add	x21, sp, #32
004745fbc 	orr	x0, x21, #0x8
004745fc0 	mov	x1, xzr
004745fc4 	stur	q0, [sp, #40]
004745fc8 	stur	q1, [sp, #56]
004745fcc 	bl	#-1791432 ; -> 0x4590a04 
004745fd0 	add	x0, x21, #40
004745fd4 	mov	x1, x19
004745fd8 	str	x19, [sp, #72]
004745fdc 	bl	#-1791448 ; -> 0x4590a04 
004745fe0 	ldr	x2, [x20]
004745fe4 	mov	w8, #-1
004745fe8 	orr	x0, x21, #0x8
004745fec 	add	x1, sp, #32
004745ff0 	str	w8, [sp, #32]
004745ff4 	bl	#23968300 ; -> 0x5e21a20 
004745ff8 	ldp	x20, x19, [sp, #112]
004745ffc 	ldp	x30, x21, [sp, #96]
004746000 	add	sp, sp, #128
004746004 	ret
004746008 	bl	#-1790716 ; -> 0x4590d0c 
