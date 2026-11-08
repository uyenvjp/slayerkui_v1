00482155c 	str	x30, [sp, #-32]!
004821560 	stp	x20, x19, [sp, #16]
004821564 	mov	x19, x1
004821568 	mov	w20, w0
00482156c 	mov	w0, #9492
004821570 	mov	x1, xzr
004821574 	bl	#4350000 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004821578 	tbz	w0, #0, #44 ; -> 0x48215a4 
00482157c 	mov	w0, #9492
004821580 	mov	x1, xzr
004821584 	bl	#4350164 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004821588 	cbz	x0, #64 ; -> 0x48215c8 
00482158c 	mov	w1, w20
004821590 	mov	x2, x19
004821594 	mov	x3, xzr
004821598 	ldp	x20, x19, [sp, #16]
00482159c 	ldr	x30, [sp], #32
0048215a0 	b	#3587792 ; -> 0x4b8d470 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_286
0048215a4 	cbz	x19, #36 ; -> 0x48215c8 
0048215a8 	ldr	w0, [x19, #24]
0048215ac 	bl	#-6336 ; -> 0x481fcec APIValidator::GetBigCurrency
0048215b0 	mov	x2, x0
0048215b4 	mov	w0, w20
0048215b8 	mov	x1, x19
0048215bc 	ldp	x20, x19, [sp, #16]
0048215c0 	ldr	x30, [sp], #32
0048215c4 	b	#-1152 ; -> 0x4821144 APIValidator::CheckValue
0048215c8 	bl	#-2689212 ; -> 0x4590d0c 
