0052418e8 	str	x30, [sp, #-32]!
0052418ec 	stp	x20, x19, [sp, #16]
0052418f0 	adrp	x20, #93933568 ; -> 0xabd6000 
0052418f4 	mov	x19, x0
0052418f8 	ldrb	w8, [x20, #3709]
0052418fc 	tbnz	w8, #0, #24 ; -> 0x5241914 
005241900 	adrp	x0, #85958656 ; -> 0xa43b000 
005241904 	ldr	x0, [x0, #2432]
005241908 	bl	#-13307560 ; -> 0x4590a60 
00524190c 	mov	w8, #1
005241910 	strb	w8, [x20, #3709]
005241914 	mov	w0, #42245
005241918 	mov	x1, xzr
00524191c 	bl	#-6267768 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241920 	tbz	w0, #0, #40 ; -> 0x5241948 
005241924 	mov	w0, #42245
005241928 	mov	x1, xzr
00524192c 	bl	#-6267604 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005241930 	cbz	x0, #88 ; -> 0x5241988 
005241934 	mov	x1, x19
005241938 	ldp	x20, x19, [sp, #16]
00524193c 	mov	x2, xzr
005241940 	ldr	x30, [sp], #32
005241944 	b	#-7089716 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
005241948 	adrp	x8, #85958656 ; -> 0xa43b000 
00524194c 	ldr	x8, [x8, #2432]
005241950 	ldr	x0, [x8]
005241954 	bl	#-13306968 ; -> 0x4590cfc 
005241958 	mov	x1, xzr
00524195c 	mov	x20, x0
005241960 	bl	#63416520 ; -> 0x8ebc228 System.Object::.ctor
005241964 	mov	x0, x20
005241968 	mov	x1, x19
00524196c 	str	wzr, [x20, #16]
005241970 	str	x19, [x0, #32]!
005241974 	bl	#-13307760 ; -> 0x4590a04 
005241978 	mov	x0, x20
00524197c 	ldp	x20, x19, [sp, #16]
005241980 	ldr	x30, [sp], #32
005241984 	ret
005241988 	bl	#-13307004 ; -> 0x4590d0c 
