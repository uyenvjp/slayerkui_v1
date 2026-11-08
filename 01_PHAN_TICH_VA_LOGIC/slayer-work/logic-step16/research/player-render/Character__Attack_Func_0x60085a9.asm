005018178 	stp	x30, x19, [sp, #-16]!
00501817c 	mov	x19, x0
005018180 	mov	w0, #32887
005018184 	mov	x1, xzr
005018188 	bl	#-4000740 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501818c 	tbz	w0, #0, #36 ; -> 0x50181b0 
005018190 	mov	w0, #32887
005018194 	mov	x1, xzr
005018198 	bl	#-4000576 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501819c 	cbz	x0, #28 ; -> 0x50181b8 
0050181a0 	mov	x1, x19
0050181a4 	mov	x2, xzr
0050181a8 	ldp	x30, x19, [sp], #16
0050181ac 	b	#-4824204 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050181b0 	ldp	x30, x19, [sp], #16
0050181b4 	ret
0050181b8 	bl	#-11039916 ; -> 0x4590d0c 
