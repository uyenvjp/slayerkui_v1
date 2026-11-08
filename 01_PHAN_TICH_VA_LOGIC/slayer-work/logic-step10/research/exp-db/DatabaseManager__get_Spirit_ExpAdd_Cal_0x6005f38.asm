004d58948 	stp	x30, x19, [sp, #-16]!
004d5894c 	mov	x19, x0
004d58950 	mov	w0, #7009
004d58954 	mov	x1, xzr
004d58958 	bl	#-1119156 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d5895c 	tbz	w0, #0, #36 ; -> 0x4d58980 
004d58960 	mov	w0, #7009
004d58964 	mov	x1, xzr
004d58968 	bl	#-1118992 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d5896c 	cbz	x0, #92 ; -> 0x4d589c8 
004d58970 	mov	x1, x19
004d58974 	mov	x2, xzr
004d58978 	ldp	x30, x19, [sp], #16
004d5897c 	b	#-1731584 ; -> 0x4bb1d7c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1015
004d58980 	ldr	x10, [x19, #16328]
004d58984 	cbz	x10, #68 ; -> 0x4d589c8 
004d58988 	movi	d0, #0000000000000000
004d5898c 	ldr	x9, [x10, #24]
004d58990 	cmp	w9, #1
004d58994 	b.lt	#40 ; -> 0x4d589bc 
004d58998 	bic	w8, w9, w9, asr #31
004d5899c 	and	x9, x9, #0xffffffff
004d589a0 	add	x10, x10, #32
004d589a4 	cbz	x9, #32 ; -> 0x4d589c4 
004d589a8 	ldr	d1, [x10], #8
004d589ac 	sub	x8, x8, #1
004d589b0 	sub	x9, x9, #1
004d589b4 	fadd	d0, d0, d1
004d589b8 	cbnz	x8, #-20 ; -> 0x4d589a4 
004d589bc 	ldp	x30, x19, [sp], #16
004d589c0 	ret
004d589c4 	bl	#-8158384 ; -> 0x4590d14 
004d589c8 	bl	#-8158396 ; -> 0x4590d0c 
