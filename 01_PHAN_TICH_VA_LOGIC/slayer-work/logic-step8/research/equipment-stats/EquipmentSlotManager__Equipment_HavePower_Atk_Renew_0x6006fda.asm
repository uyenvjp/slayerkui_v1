004e9c514 	stp	d9, d8, [sp, #-64]!
004e9c518 	str	x30, [sp, #16]
004e9c51c 	stp	x22, x21, [sp, #32]
004e9c520 	stp	x20, x19, [sp, #48]
004e9c524 	fmov	d8, d0
004e9c528 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9c52c 	mov	w19, w1
004e9c530 	ldrb	w8, [x21, #855]
004e9c534 	mov	x20, x0
004e9c538 	tbnz	w8, #0, #36 ; -> 0x4e9c55c 
004e9c53c 	adrp	x0, #89706496 ; -> 0xa429000 
004e9c540 	ldr	x0, [x0, #3072]
004e9c544 	bl	#-9485028 ; -> 0x4590a60 
004e9c548 	adrp	x0, #89706496 ; -> 0xa429000 
004e9c54c 	ldr	x0, [x0, #3080]
004e9c550 	bl	#-9485040 ; -> 0x4590a60 
004e9c554 	mov	w8, #1
004e9c558 	strb	w8, [x21, #855]
004e9c55c 	mov	w0, #32251
004e9c560 	mov	x1, xzr
004e9c564 	bl	#-2445248 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9c568 	tbz	w0, #0, #56 ; -> 0x4e9c5a0 
004e9c56c 	mov	w0, #32251
004e9c570 	mov	x1, xzr
004e9c574 	bl	#-2445084 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9c578 	cbz	x0, #216 ; -> 0x4e9c650 
004e9c57c 	mov	x1, x20
004e9c580 	mov	w2, w19
004e9c584 	ldr	x30, [sp, #16]
004e9c588 	ldp	x20, x19, [sp, #48]
004e9c58c 	fmov	d0, d8
004e9c590 	ldp	x22, x21, [sp, #32]
004e9c594 	mov	x3, xzr
004e9c598 	ldp	d9, d8, [sp], #64
004e9c59c 	b	#-2840812 ; -> 0x4be6cb0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2044
004e9c5a0 	ldr	x22, [x20, #32]
004e9c5a4 	cbz	x22, #172 ; -> 0x4e9c650 
004e9c5a8 	add	x0, x22, #2432
004e9c5ac 	mov	x1, xzr
004e9c5b0 	bl	#-3454124 ; -> 0x4b51104 SilentDouble::get_Value
004e9c5b4 	ldr	x0, [x20, #376]
004e9c5b8 	cbz	x0, #152 ; -> 0x4e9c650 
004e9c5bc 	adrp	x21, #89706496 ; -> 0xa429000 
004e9c5c0 	mov	w1, w19
004e9c5c4 	fmov	d9, d0
004e9c5c8 	ldr	x21, [x21, #3072]
004e9c5cc 	ldr	x2, [x21]
004e9c5d0 	bl	#52059784 ; -> 0x8042458 
004e9c5d4 	fsub	d0, d9, d0
004e9c5d8 	add	x0, x22, #2432
004e9c5dc 	mov	x1, xzr
004e9c5e0 	bl	#-3453220 ; -> 0x4b514bc SilentDouble::set_Value
004e9c5e4 	ldr	x0, [x20, #376]
004e9c5e8 	cbz	x0, #104 ; -> 0x4e9c650 
004e9c5ec 	adrp	x8, #89706496 ; -> 0xa429000 
004e9c5f0 	fmov	d0, d8
004e9c5f4 	mov	w1, w19
004e9c5f8 	ldr	x8, [x8, #3080]
004e9c5fc 	ldr	x2, [x8]
004e9c600 	bl	#52059876 ; -> 0x80424e4 
004e9c604 	ldr	x22, [x20, #32]
004e9c608 	cbz	x22, #72 ; -> 0x4e9c650 
004e9c60c 	add	x0, x22, #2432
004e9c610 	mov	x1, xzr
004e9c614 	bl	#-3454224 ; -> 0x4b51104 SilentDouble::get_Value
004e9c618 	ldr	x0, [x20, #376]
004e9c61c 	cbz	x0, #52 ; -> 0x4e9c650 
004e9c620 	ldr	x2, [x21]
004e9c624 	mov	w1, w19
004e9c628 	fmov	d8, d0
004e9c62c 	bl	#52059692 ; -> 0x8042458 
004e9c630 	add	x0, x22, #2432
004e9c634 	ldp	x20, x19, [sp, #48]
004e9c638 	ldp	x22, x21, [sp, #32]
004e9c63c 	fadd	d0, d8, d0
004e9c640 	ldr	x30, [sp, #16]
004e9c644 	mov	x1, xzr
004e9c648 	ldp	d9, d8, [sp], #64
004e9c64c 	b	#-3453328 ; -> 0x4b514bc SilentDouble::set_Value
004e9c650 	bl	#-9484612 ; -> 0x4590d0c 
