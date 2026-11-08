004e51718 	str	x30, [sp, #-32]!
004e5171c 	stp	x20, x19, [sp, #16]
004e51720 	mov	x19, x0
004e51724 	mov	w0, #7767
004e51728 	mov	x1, xzr
004e5172c 	bl	#-2138504 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e51730 	tbz	w0, #0, #40 ; -> 0x4e51758 
004e51734 	mov	w0, #7767
004e51738 	mov	x1, xzr
004e5173c 	bl	#-2138340 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51740 	cbz	x0, #144 ; -> 0x4e517d0 
004e51744 	mov	x1, x19
004e51748 	ldp	x20, x19, [sp, #16]
004e5174c 	mov	x2, xzr
004e51750 	ldr	x30, [sp], #32
004e51754 	b	#-2944084 ; -> 0x4b82b00 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_91
004e51758 	ldr	x8, [x19, #520]
004e5175c 	cbz	x8, #116 ; -> 0x4e517d0 
004e51760 	ldr	x20, [x8, #64]
004e51764 	mov	w0, wzr
004e51768 	mov	w1, #3
004e5176c 	mov	x2, xzr
004e51770 	bl	#79339152 ; -> 0x99fb600 UnityEngine.Random::Range
004e51774 	cbz	x20, #92 ; -> 0x4e517d0 
004e51778 	ldr	w8, [x20, #24]
004e5177c 	cmp	w0, w8
004e51780 	b.hs	#84 ; -> 0x4e517d4 
004e51784 	add	x8, x20, w0, sxtw #2
004e51788 	ldr	w0, [x8, #32]
004e5178c 	cbnz	w0, #56 ; -> 0x4e517c4 
004e51790 	ldr	x8, [x19, #520]
004e51794 	cbz	x8, #60 ; -> 0x4e517d0 
004e51798 	ldr	x19, [x8, #64]
004e5179c 	mov	w0, wzr
004e517a0 	mov	w1, #2
004e517a4 	mov	x2, xzr
004e517a8 	bl	#79339096 ; -> 0x99fb600 UnityEngine.Random::Range
004e517ac 	cbz	x19, #36 ; -> 0x4e517d0 
004e517b0 	ldr	w8, [x19, #24]
004e517b4 	cmp	w0, w8
004e517b8 	b.hs	#28 ; -> 0x4e517d4 
004e517bc 	add	x8, x19, w0, sxtw #2
004e517c0 	ldr	w0, [x8, #32]
004e517c4 	ldp	x20, x19, [sp, #16]
004e517c8 	ldr	x30, [sp], #32
004e517cc 	ret
004e517d0 	bl	#-9177796 ; -> 0x4590d0c 
004e517d4 	bl	#-9177792 ; -> 0x4590d14 
