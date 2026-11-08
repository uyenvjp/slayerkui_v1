004e996b4 	stp	x30, x21, [sp, #-32]!
004e996b8 	stp	x20, x19, [sp, #16]
004e996bc 	adrp	x20, #97763328 ; -> 0xabd5000 
004e996c0 	mov	x19, x0
004e996c4 	ldrb	w8, [x20, #865]
004e996c8 	tbnz	w8, #0, #24 ; -> 0x4e996e0 
004e996cc 	adrp	x0, #89477120 ; -> 0xa3ee000 
004e996d0 	ldr	x0, [x0, #3648]
004e996d4 	bl	#-9473140 ; -> 0x4590a60 
004e996d8 	mov	w8, #1
004e996dc 	strb	w8, [x20, #865]
004e996e0 	mov	w0, #9083
004e996e4 	mov	x1, xzr
004e996e8 	bl	#-2433348 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e996ec 	tbz	w0, #0, #40 ; -> 0x4e99714 
004e996f0 	mov	w0, #9083
004e996f4 	mov	x1, xzr
004e996f8 	bl	#-2433184 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e996fc 	cbz	x0, #152 ; -> 0x4e99794 
004e99700 	mov	x1, x19
004e99704 	ldp	x20, x19, [sp, #16]
004e99708 	mov	x2, xzr
004e9970c 	ldp	x30, x21, [sp], #32
004e99710 	b	#-3256816 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e99714 	ldr	w20, [x19, #416]
004e99718 	strb	wzr, [x19, #405]
004e9971c 	cmp	w20, #1
004e99720 	b.lt	#104 ; -> 0x4e99788 
004e99724 	ldr	x8, [x19, #288]
004e99728 	cbz	x8, #108 ; -> 0x4e99794 
004e9972c 	adrp	x9, #89477120 ; -> 0xa3ee000 
004e99730 	ldr	x9, [x9, #3648]
004e99734 	ldr	w21, [x8, #20]
004e99738 	ldr	x0, [x9]
004e9973c 	ldr	w9, [x0, #228]
004e99740 	cbnz	w9, #8 ; -> 0x4e99748 
004e99744 	bl	#-9472868 ; -> 0x4590be0 
004e99748 	mov	w0, w21
004e9974c 	mov	w1, #1
004e99750 	mov	w2, w20
004e99754 	mov	x3, xzr
004e99758 	bl	#2265264 ; -> 0x50c2808 APIManager::ItemUpgrade
004e9975c 	mov	x0, xzr
004e99760 	str	wzr, [x19, #416]
004e99764 	bl	#-1575352 ; -> 0x4d18dac SoundManager::get_instance
004e99768 	cbz	x0, #44 ; -> 0x4e99794 
004e9976c 	ldr	x8, [x0]
004e99770 	ldp	x20, x19, [sp, #16]
004e99774 	mov	x1, xzr
004e99778 	ldr	x2, [x8, #1328]
004e9977c 	ldr	x3, [x8, #1320]
004e99780 	ldp	x30, x21, [sp], #32
004e99784 	br	x3
004e99788 	ldp	x20, x19, [sp, #16]
004e9978c 	ldp	x30, x21, [sp], #32
004e99790 	ret
004e99794 	bl	#-9472648 ; -> 0x4590d0c 
