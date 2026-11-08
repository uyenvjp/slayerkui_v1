004e46518 	str	x30, [sp, #-48]!
004e4651c 	stp	x22, x21, [sp, #16]
004e46520 	stp	x20, x19, [sp, #32]
004e46524 	adrp	x22, #98103296 ; -> 0xabd5000 
004e46528 	mov	w20, w2
004e4652c 	mov	x19, x1
004e46530 	ldrb	w8, [x22, #289]
004e46534 	mov	x21, x0
004e46538 	tbnz	w8, #0, #24 ; -> 0x4e46550 
004e4653c 	adrp	x0, #90054656 ; -> 0xa428000 
004e46540 	ldr	x0, [x0, #2120]
004e46544 	bl	#-9132772 ; -> 0x4590a60 
004e46548 	mov	w8, #1
004e4654c 	strb	w8, [x22, #289]
004e46550 	mov	w0, #30225
004e46554 	mov	x1, xzr
004e46558 	bl	#-2092980 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4655c 	tbz	w0, #0, #52 ; -> 0x4e46590 
004e46560 	mov	w0, #30225
004e46564 	mov	x1, xzr
004e46568 	bl	#-2092816 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4656c 	cbz	x0, #128 ; -> 0x4e465ec 
004e46570 	and	w3, w20, #0x1
004e46574 	mov	x1, x21
004e46578 	mov	x2, x19
004e4657c 	ldp	x20, x19, [sp, #32]
004e46580 	mov	x4, xzr
004e46584 	ldp	x22, x21, [sp, #16]
004e46588 	ldr	x30, [sp], #48
004e4658c 	b	#-2868112 ; -> 0x4b8a1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_225
004e46590 	ldr	x0, [x21, #320]
004e46594 	cbz	x0, #88 ; -> 0x4e465ec 
004e46598 	adrp	x8, #90054656 ; -> 0xa428000 
004e4659c 	mov	x1, x19
004e465a0 	ldr	x8, [x8, #2120]
004e465a4 	ldr	x2, [x8]
004e465a8 	bl	#31210504 ; -> 0x6c0a1b0 
004e465ac 	tbz	w20, #0, #48 ; -> 0x4e465dc 
004e465b0 	cbz	x19, #60 ; -> 0x4e465ec 
004e465b4 	mov	x0, x19
004e465b8 	mov	x1, xzr
004e465bc 	bl	#79405300 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004e465c0 	cbz	x0, #44 ; -> 0x4e465ec 
004e465c4 	ldp	x20, x19, [sp, #32]
004e465c8 	mov	w1, wzr
004e465cc 	ldp	x22, x21, [sp, #16]
004e465d0 	mov	x2, xzr
004e465d4 	ldr	x30, [sp], #48
004e465d8 	b	#79418876 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e465dc 	ldp	x20, x19, [sp, #32]
004e465e0 	ldp	x22, x21, [sp, #16]
004e465e4 	ldr	x30, [sp], #48
004e465e8 	ret
004e465ec 	bl	#-9132256 ; -> 0x4590d0c 
