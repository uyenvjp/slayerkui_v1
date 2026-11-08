004e51610 	stp	x30, x19, [sp, #-16]!
004e51614 	mov	x19, x0
004e51618 	mov	w0, #7355
004e5161c 	mov	x1, xzr
004e51620 	bl	#-2138236 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e51624 	tbz	w0, #0, #36 ; -> 0x4e51648 
004e51628 	mov	w0, #7355
004e5162c 	mov	x1, xzr
004e51630 	bl	#-2138072 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51634 	cbz	x0, #36 ; -> 0x4e51658 
004e51638 	mov	x1, x19
004e5163c 	mov	x2, xzr
004e51640 	ldp	x30, x19, [sp], #16
004e51644 	b	#-2933012 ; -> 0x4b85530 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_138
004e51648 	add	x0, x19, #1336
004e5164c 	mov	x1, xzr
004e51650 	ldp	x30, x19, [sp], #16
004e51654 	b	#-3148800 ; -> 0x4b50a54 SilentBigInt::get_Value
004e51658 	bl	#-9177420 ; -> 0x4590d0c 
