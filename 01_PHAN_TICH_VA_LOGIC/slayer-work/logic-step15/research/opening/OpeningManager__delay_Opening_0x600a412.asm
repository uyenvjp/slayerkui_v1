005241668 	str	x30, [sp, #-32]!
00524166c 	stp	x20, x19, [sp, #16]
005241670 	adrp	x20, #93933568 ; -> 0xabd6000 
005241674 	mov	x19, x0
005241678 	ldrb	w8, [x20, #3706]
00524167c 	tbnz	w8, #0, #24 ; -> 0x5241694 
005241680 	adrp	x0, #85958656 ; -> 0xa43b000 
005241684 	ldr	x0, [x0, #2416]
005241688 	bl	#-13306920 ; -> 0x4590a60 
00524168c 	mov	w8, #1
005241690 	strb	w8, [x20, #3706]
005241694 	mov	w0, #42238
005241698 	mov	x1, xzr
00524169c 	bl	#-6267128 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052416a0 	tbz	w0, #0, #40 ; -> 0x52416c8 
0052416a4 	mov	w0, #42238
0052416a8 	mov	x1, xzr
0052416ac 	bl	#-6266964 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052416b0 	cbz	x0, #88 ; -> 0x5241708 
0052416b4 	mov	x1, x19
0052416b8 	ldp	x20, x19, [sp, #16]
0052416bc 	mov	x2, xzr
0052416c0 	ldr	x30, [sp], #32
0052416c4 	b	#-7089076 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
0052416c8 	adrp	x8, #85958656 ; -> 0xa43b000 
0052416cc 	ldr	x8, [x8, #2416]
0052416d0 	ldr	x0, [x8]
0052416d4 	bl	#-13306328 ; -> 0x4590cfc 
0052416d8 	mov	x1, xzr
0052416dc 	mov	x20, x0
0052416e0 	bl	#63417160 ; -> 0x8ebc228 System.Object::.ctor
0052416e4 	mov	x0, x20
0052416e8 	mov	x1, x19
0052416ec 	str	wzr, [x20, #16]
0052416f0 	str	x19, [x0, #32]!
0052416f4 	bl	#-13307120 ; -> 0x4590a04 
0052416f8 	mov	x0, x20
0052416fc 	ldp	x20, x19, [sp, #16]
005241700 	ldr	x30, [sp], #32
005241704 	ret
005241708 	bl	#-13306364 ; -> 0x4590d0c 
