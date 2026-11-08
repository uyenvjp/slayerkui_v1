004d4a84c 	stp	x30, x19, [sp, #-16]!
004d4a850 	mov	x19, x0
004d4a854 	mov	w0, #2958
004d4a858 	mov	x1, xzr
004d4a85c 	bl	#-1061560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4a860 	tbz	w0, #0, #36 ; -> 0x4d4a884 
004d4a864 	mov	w0, #2958
004d4a868 	mov	x1, xzr
004d4a86c 	bl	#-1061396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4a870 	cbz	x0, #56 ; -> 0x4d4a8a8 
004d4a874 	mov	x1, x19
004d4a878 	mov	x2, xzr
004d4a87c 	ldp	x30, x19, [sp], #16
004d4a880 	b	#-1872576 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
004d4a884 	ldr	w8, [x19, #1384]
004d4a888 	cbz	w8, #12 ; -> 0x4d4a894 
004d4a88c 	ldrb	w8, [x19, #1452]
004d4a890 	b	#8 ; -> 0x4d4a898 
004d4a894 	ldrb	w8, [x19, #1408]
004d4a898 	cmp	w8, #0
004d4a89c 	cset	w0, ne
004d4a8a0 	ldp	x30, x19, [sp], #16
004d4a8a4 	ret
004d4a8a8 	bl	#-8100764 ; -> 0x4590d0c 
