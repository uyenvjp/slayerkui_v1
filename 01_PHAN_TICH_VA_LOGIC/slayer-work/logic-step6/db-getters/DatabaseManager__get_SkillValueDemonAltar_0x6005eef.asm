004d51568 	sub	sp, sp, #112
004d5156c 	str	x30, [sp, #80]
004d51570 	stp	x20, x19, [sp, #96]
004d51574 	mov	x20, x0
004d51578 	mov	w0, #27331
004d5157c 	mov	x1, xzr
004d51580 	mov	x19, x8
004d51584 	bl	#-1089504 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d51588 	tbz	w0, #0, #68 ; -> 0x4d515cc 
004d5158c 	mov	w0, #27331
004d51590 	mov	x1, xzr
004d51594 	bl	#-1089340 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d51598 	cbz	x0, #144 ; -> 0x4d51628 
004d5159c 	add	x8, sp, #8
004d515a0 	mov	x1, x20
004d515a4 	mov	x2, xzr
004d515a8 	bl	#-1885672 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d515ac 	add	x1, sp, #8
004d515b0 	mov	x0, x19
004d515b4 	mov	w2, #72
004d515b8 	bl	#83993400 ; -> 0x9d6b8f0 
004d515bc 	ldp	x20, x19, [sp, #96]
004d515c0 	ldr	x30, [sp, #80]
004d515c4 	add	sp, sp, #112
004d515c8 	ret
004d515cc 	adrp	x20, #99082240 ; -> 0xabcf000 
004d515d0 	ldrb	w8, [x20, #1161]
004d515d4 	cbnz	w8, #24 ; -> 0x4d515ec 
004d515d8 	adrp	x0, #90832896 ; -> 0xa3f1000 
004d515dc 	ldr	x0, [x0, #4032]
004d515e0 	bl	#-8129408 ; -> 0x4590a60 
004d515e4 	mov	w8, #1
004d515e8 	strb	w8, [x20, #1161]
004d515ec 	adrp	x8, #90832896 ; -> 0xa3f1000 
004d515f0 	ldr	x8, [x8, #4032]
004d515f4 	ldr	x8, [x8]
004d515f8 	ldr	x8, [x8, #184]
004d515fc 	ldr	x8, [x8]
004d51600 	cbz	x8, #40 ; -> 0x4d51628 
004d51604 	ldr	x8, [x8, #56]
004d51608 	cbz	x8, #32 ; -> 0x4d51628 
004d5160c 	mov	x0, x19
004d51610 	ldp	x20, x19, [sp, #96]
004d51614 	ldr	x30, [sp, #80]
004d51618 	add	x1, x8, #96
004d5161c 	mov	w2, #72
004d51620 	add	sp, sp, #112
004d51624 	b	#83993292 ; -> 0x9d6b8f0 
004d51628 	bl	#-8128796 ; -> 0x4590d0c 
