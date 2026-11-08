005307184 	str	d8, [sp, #-32]!
005307188 	stp	x30, x19, [sp, #16]
00530718c 	mov	x19, x0
005307190 	mov	w0, #7633
005307194 	mov	x1, xzr
005307198 	fmov	s8, s0
00530719c 	bl	#-7076856 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053071a0 	tbz	w0, #0, #44 ; -> 0x53071cc 
0053071a4 	mov	w0, #7633
0053071a8 	mov	x1, xzr
0053071ac 	bl	#-7076692 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053071b0 	cbz	x0, #64 ; -> 0x53071f0 
0053071b4 	mov	x1, x19
0053071b8 	ldp	x30, x19, [sp, #16]
0053071bc 	fmov	s0, s8
0053071c0 	mov	x2, xzr
0053071c4 	ldr	d8, [sp], #32
0053071c8 	b	#-7896308 ; -> 0x4b7f4d4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_20
0053071cc 	ldrb	w8, [x19, #60]
0053071d0 	cbz	w8, #12 ; -> 0x53071dc 
0053071d4 	str	s8, [x19, #84]
0053071d8 	b	#12 ; -> 0x53071e4 
0053071dc 	mov	w8, #1065353216
0053071e0 	str	w8, [x19, #84]
0053071e4 	ldp	x30, x19, [sp, #16]
0053071e8 	ldr	d8, [sp], #32
0053071ec 	ret
0053071f0 	bl	#-14116068 ; -> 0x4590d0c 
