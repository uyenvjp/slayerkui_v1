0048202bc 	str	x30, [sp, #-64]!
0048202c0 	stp	x24, x23, [sp, #16]
0048202c4 	stp	x22, x21, [sp, #32]
0048202c8 	stp	x20, x19, [sp, #48]
0048202cc 	adrp	x24, #104525824 ; -> 0xabcf000 
0048202d0 	mov	x19, x4
0048202d4 	mov	x22, x3
0048202d8 	ldrb	w8, [x24, #1140]
0048202dc 	mov	x23, x2
0048202e0 	mov	x20, x1
0048202e4 	mov	w21, w0
0048202e8 	tbnz	w8, #0, #48 ; -> 0x4820318 
0048202ec 	adrp	x0, #96276480 ; -> 0xa3f1000 
0048202f0 	ldr	x0, [x0, #3856]
0048202f4 	bl	#-2685076 ; -> 0x4590a60 
0048202f8 	adrp	x0, #96276480 ; -> 0xa3f1000 
0048202fc 	ldr	x0, [x0, #3864]
004820300 	bl	#-2685088 ; -> 0x4590a60 
004820304 	adrp	x0, #96276480 ; -> 0xa3f1000 
004820308 	ldr	x0, [x0, #3872]
00482030c 	bl	#-2685100 ; -> 0x4590a60 
004820310 	mov	w8, #1
004820314 	strb	w8, [x24, #1140]
004820318 	mov	w0, #1983
00482031c 	mov	x1, xzr
004820320 	bl	#4354692 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004820324 	tbz	w0, #0, #64 ; -> 0x4820364 
004820328 	mov	w0, #1983
00482032c 	mov	x1, xzr
004820330 	bl	#4354856 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004820334 	cbz	x0, #208 ; -> 0x4820404 
004820338 	mov	w1, w21
00482033c 	mov	x2, x20
004820340 	mov	x3, x23
004820344 	mov	x4, x22
004820348 	mov	x5, x19
00482034c 	mov	x6, xzr
004820350 	ldp	x20, x19, [sp, #48]
004820354 	ldp	x22, x21, [sp, #32]
004820358 	ldp	x24, x23, [sp, #16]
00482035c 	ldr	x30, [sp], #64
004820360 	b	#3593068 ; -> 0x4b8d6cc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_289
004820364 	cbz	x20, #160 ; -> 0x4820404 
004820368 	ldr	x4, [x20, #32]
00482036c 	cmp	x4, x23
004820370 	b.eq	#32 ; -> 0x4820390 
004820374 	adrp	x8, #96276480 ; -> 0xa3f1000 
004820378 	mov	w1, w21
00482037c 	mov	x3, x23
004820380 	ldr	x8, [x8, #3856]
004820384 	ldr	w2, [x20, #24]
004820388 	ldr	x0, [x8]
00482038c 	bl	#124 ; -> 0x4820408 APIValidator::PostLog
004820390 	ldr	x4, [x20, #40]
004820394 	cmp	x4, x22
004820398 	b.eq	#32 ; -> 0x48203b8 
00482039c 	adrp	x8, #96276480 ; -> 0xa3f1000 
0048203a0 	mov	w1, w21
0048203a4 	mov	x3, x22
0048203a8 	ldr	x8, [x8, #3864]
0048203ac 	ldr	w2, [x20, #24]
0048203b0 	ldr	x0, [x8]
0048203b4 	bl	#84 ; -> 0x4820408 APIValidator::PostLog
0048203b8 	ldr	x4, [x20, #48]
0048203bc 	cmp	x4, x19
0048203c0 	b.ne	#24 ; -> 0x48203d8 
0048203c4 	ldp	x20, x19, [sp, #48]
0048203c8 	ldp	x22, x21, [sp, #32]
0048203cc 	ldp	x24, x23, [sp, #16]
0048203d0 	ldr	x30, [sp], #64
0048203d4 	ret
0048203d8 	adrp	x8, #96276480 ; -> 0xa3f1000 
0048203dc 	mov	w1, w21
0048203e0 	mov	x3, x19
0048203e4 	ldr	x8, [x8, #3872]
0048203e8 	ldr	w2, [x20, #24]
0048203ec 	ldp	x20, x19, [sp, #48]
0048203f0 	ldp	x22, x21, [sp, #32]
0048203f4 	ldr	x0, [x8]
0048203f8 	ldp	x24, x23, [sp, #16]
0048203fc 	ldr	x30, [sp], #64
004820400 	b	#8 ; -> 0x4820408 APIValidator::PostLog
004820404 	bl	#-2684664 ; -> 0x4590d0c 
