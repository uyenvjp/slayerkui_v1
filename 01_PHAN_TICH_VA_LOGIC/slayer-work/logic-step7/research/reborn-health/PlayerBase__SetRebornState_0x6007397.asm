004ef8850 	str	x30, [sp, #-32]!
004ef8854 	stp	x20, x19, [sp, #16]
004ef8858 	mov	w19, w1
004ef885c 	mov	x20, x0
004ef8860 	mov	w0, #32923
004ef8864 	mov	x1, xzr
004ef8868 	bl	#-2822852 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef886c 	tbz	w0, #0, #44 ; -> 0x4ef8898 
004ef8870 	mov	w0, #32923
004ef8874 	mov	x1, xzr
004ef8878 	bl	#-2822688 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef887c 	cbz	x0, #80 ; -> 0x4ef88cc 
004ef8880 	mov	x1, x20
004ef8884 	mov	w2, w19
004ef8888 	mov	x3, xzr
004ef888c 	ldp	x20, x19, [sp, #16]
004ef8890 	ldr	x30, [sp], #32
004ef8894 	b	#-3440808 ; -> 0x4bb07ec IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_989
004ef8898 	ldr	x8, [x20, #728]
004ef889c 	str	w19, [x20, #736]
004ef88a0 	cbz	x8, #32 ; -> 0x4ef88c0 
004ef88a4 	mov	w1, w19
004ef88a8 	ldp	x20, x19, [sp, #16]
004ef88ac 	ldr	x0, [x8, #64]
004ef88b0 	ldr	x2, [x8, #40]
004ef88b4 	ldr	x3, [x8, #24]
004ef88b8 	ldr	x30, [sp], #32
004ef88bc 	br	x3
004ef88c0 	ldp	x20, x19, [sp, #16]
004ef88c4 	ldr	x30, [sp], #32
004ef88c8 	ret
004ef88cc 	bl	#-9862080 ; -> 0x4590d0c 
