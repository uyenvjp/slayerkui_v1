005040758 	str	x30, [sp, #-32]!
00504075c 	stp	x20, x19, [sp, #16]
005040760 	adrp	x20, #96030720 ; -> 0xabd5000 
005040764 	mov	x19, x0
005040768 	ldrb	w8, [x20, #3994]
00504076c 	tbnz	w8, #0, #24 ; -> 0x5040784 
005040770 	adrp	x0, #87760896 ; -> 0xa3f2000 
005040774 	ldr	x0, [x0, #552]
005040778 	bl	#-11205912 ; -> 0x4590a60 
00504077c 	mov	w8, #1
005040780 	strb	w8, [x20, #3994]
005040784 	mov	w0, #2381
005040788 	mov	x1, xzr
00504078c 	bl	#-4166120 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005040790 	tbz	w0, #0, #40 ; -> 0x50407b8 
005040794 	mov	w0, #2381
005040798 	mov	x1, xzr
00504079c 	bl	#-4165956 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050407a0 	cbz	x0, #152 ; -> 0x5040838 
0050407a4 	mov	x1, x19
0050407a8 	ldp	x20, x19, [sp, #16]
0050407ac 	mov	x2, xzr
0050407b0 	ldr	x30, [sp], #32
0050407b4 	b	#-4977140 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0050407b8 	adrp	x19, #87760896 ; -> 0xa3f2000 
0050407bc 	ldr	x19, [x19, #552]
0050407c0 	ldr	x0, [x19]
0050407c4 	ldr	w8, [x0, #228]
0050407c8 	cbnz	w8, #12 ; -> 0x50407d4 
0050407cc 	bl	#-11205612 ; -> 0x4590be0 
0050407d0 	ldr	x0, [x19]
0050407d4 	ldr	x8, [x0, #184]
0050407d8 	ldr	x8, [x8]
0050407dc 	cbz	x8, #36 ; -> 0x5040800 
0050407e0 	mov	x0, x8
0050407e4 	mov	x1, xzr
0050407e8 	bl	#-2091156 ; -> 0x4e41f54 GameManager::get_gameMode
0050407ec 	cmp	w0, #20
0050407f0 	b.ne	#12 ; -> 0x50407fc 
0050407f4 	mov	w0, #1
0050407f8 	b	#52 ; -> 0x504082c 
0050407fc 	ldr	x0, [x19]
005040800 	ldr	w8, [x0, #228]
005040804 	cbnz	w8, #12 ; -> 0x5040810 
005040808 	bl	#-11205672 ; -> 0x4590be0 
00504080c 	ldr	x0, [x19]
005040810 	ldr	x8, [x0, #184]
005040814 	ldr	x0, [x8]
005040818 	cbz	x0, #20 ; -> 0x504082c 
00504081c 	mov	x1, xzr
005040820 	bl	#-2091212 ; -> 0x4e41f54 GameManager::get_gameMode
005040824 	cmp	w0, #19
005040828 	cset	w0, eq
00504082c 	ldp	x20, x19, [sp, #16]
005040830 	ldr	x30, [sp], #32
005040834 	ret
005040838 	bl	#-11205420 ; -> 0x4590d0c 
