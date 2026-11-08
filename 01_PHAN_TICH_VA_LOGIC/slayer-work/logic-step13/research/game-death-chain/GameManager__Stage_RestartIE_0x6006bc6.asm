004e48220 	str	x30, [sp, #-32]!
004e48224 	stp	x20, x19, [sp, #16]
004e48228 	adrp	x20, #98095104 ; -> 0xabd5000 
004e4822c 	mov	x19, x0
004e48230 	ldrb	w8, [x20, #320]
004e48234 	tbnz	w8, #0, #24 ; -> 0x4e4824c 
004e48238 	adrp	x0, #90046464 ; -> 0xa428000 
004e4823c 	ldr	x0, [x0, #2240]
004e48240 	bl	#-9140192 ; -> 0x4590a60 
004e48244 	mov	w8, #1
004e48248 	strb	w8, [x20, #320]
004e4824c 	mov	w0, #30236
004e48250 	mov	x1, xzr
004e48254 	bl	#-2100400 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e48258 	tbz	w0, #0, #40 ; -> 0x4e48280 
004e4825c 	mov	w0, #30236
004e48260 	mov	x1, xzr
004e48264 	bl	#-2100236 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e48268 	cbz	x0, #92 ; -> 0x4e482c4 
004e4826c 	mov	x1, x19
004e48270 	ldp	x20, x19, [sp, #16]
004e48274 	mov	x2, xzr
004e48278 	ldr	x30, [sp], #32
004e4827c 	b	#-2922348 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004e48280 	adrp	x8, #90046464 ; -> 0xa428000 
004e48284 	ldr	x8, [x8, #2240]
004e48288 	ldr	x0, [x8]
004e4828c 	bl	#-9139600 ; -> 0x4590cfc 
004e48290 	mov	w1, wzr
004e48294 	mov	x2, xzr
004e48298 	mov	x20, x0
004e4829c 	bl	#257100 ; -> 0x4e86ee8 GameManager+<Stage_RestartIE>d__177::.ctor
004e482a0 	cbz	x20, #36 ; -> 0x4e482c4 
004e482a4 	mov	x0, x20
004e482a8 	mov	x1, x19
004e482ac 	str	x19, [x0, #32]!
004e482b0 	bl	#-9140396 ; -> 0x4590a04 
004e482b4 	mov	x0, x20
004e482b8 	ldp	x20, x19, [sp, #16]
004e482bc 	ldr	x30, [sp], #32
004e482c0 	ret
004e482c4 	bl	#-9139640 ; -> 0x4590d0c 
