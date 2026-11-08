005241734 	stp	x30, x21, [sp, #-32]!
005241738 	stp	x20, x19, [sp, #16]
00524173c 	adrp	x20, #93933568 ; -> 0xabd6000 
005241740 	mov	x19, x0
005241744 	ldrb	w8, [x20, #3707]
005241748 	tbnz	w8, #0, #60 ; -> 0x5241784 
00524174c 	adrp	x0, #85647360 ; -> 0xa3ef000 
005241750 	ldr	x0, [x0, #632]
005241754 	bl	#-13307124 ; -> 0x4590a60 
005241758 	adrp	x0, #85622784 ; -> 0xa3e9000 
00524175c 	ldr	x0, [x0, #2408]
005241760 	bl	#-13307136 ; -> 0x4590a60 
005241764 	adrp	x0, #85958656 ; -> 0xa43b000 
005241768 	ldr	x0, [x0, #2424]
00524176c 	bl	#-13307148 ; -> 0x4590a60 
005241770 	adrp	x0, #85626880 ; -> 0xa3ea000 
005241774 	ldr	x0, [x0, #3648]
005241778 	bl	#-13307160 ; -> 0x4590a60 
00524177c 	mov	w8, #1
005241780 	strb	w8, [x20, #3707]
005241784 	mov	w0, #42242
005241788 	mov	x1, xzr
00524178c 	bl	#-6267368 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005241790 	tbz	w0, #0, #40 ; -> 0x52417b8 
005241794 	mov	w0, #42242
005241798 	mov	x1, xzr
00524179c 	bl	#-6267204 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052417a0 	cbz	x0, #164 ; -> 0x5241844 
0052417a4 	mov	x1, x19
0052417a8 	ldp	x20, x19, [sp, #16]
0052417ac 	mov	x2, xzr
0052417b0 	ldp	x30, x21, [sp], #32
0052417b4 	b	#-7090836 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052417b8 	mov	x0, xzr
0052417bc 	bl	#-11130732 ; -> 0x47a4050 Gear2.GrowSlayer.Logging.KinesisLog::get_Instance
0052417c0 	cbz	x0, #132 ; -> 0x5241844 
0052417c4 	adrp	x8, #85626880 ; -> 0xa3ea000 
0052417c8 	mov	x2, xzr
0052417cc 	ldr	x8, [x8, #3648]
0052417d0 	ldr	x1, [x8]
0052417d4 	bl	#-11126288 ; -> 0x47a51c4 Gear2.GrowSlayer.Logging.KinesisLog::Opening
0052417d8 	adrp	x8, #85622784 ; -> 0xa3e9000 
0052417dc 	adrp	x9, #85647360 ; -> 0xa3ef000 
0052417e0 	ldr	x8, [x8, #2408]
0052417e4 	ldr	x8, [x8]
0052417e8 	ldr	x8, [x8, #184]
0052417ec 	ldr	x9, [x9, #632]
0052417f0 	ldr	x0, [x9]
0052417f4 	ldr	x20, [x8]
0052417f8 	bl	#-13306620 ; -> 0x4590cfc 
0052417fc 	adrp	x8, #85958656 ; -> 0xa43b000 
005241800 	mov	x1, x19
005241804 	mov	x3, xzr
005241808 	ldr	x8, [x8, #2424]
00524180c 	mov	x21, x0
005241810 	ldr	x2, [x8]
005241814 	bl	#-5687276 ; -> 0x4cd5028 DialogueManager+DialogueAction::.ctor
005241818 	cbz	x20, #44 ; -> 0x5241844 
00524181c 	mov	x0, x20
005241820 	ldp	x20, x19, [sp, #16]
005241824 	mov	w1, wzr
005241828 	mov	w2, wzr
00524182c 	mov	x3, x21
005241830 	mov	x4, xzr
005241834 	mov	x5, xzr
005241838 	mov	x6, xzr
00524183c 	ldp	x30, x21, [sp], #32
005241840 	b	#-5688476 ; -> 0x4cd4ba4 DialogueManager::Dialogue_Start
005241844 	bl	#-13306680 ; -> 0x4590d0c 
