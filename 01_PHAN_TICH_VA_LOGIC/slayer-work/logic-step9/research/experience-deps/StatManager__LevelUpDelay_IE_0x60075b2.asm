004f1917c 	str	x30, [sp, #-32]!
004f19180 	stp	x20, x19, [sp, #16]
004f19184 	adrp	x20, #97239040 ; -> 0xabd5000 
004f19188 	mov	x19, x0
004f1918c 	ldrb	w8, [x20, #1732]
004f19190 	tbnz	w8, #0, #24 ; -> 0x4f191a8 
004f19194 	adrp	x0, #89206784 ; -> 0xa42c000 
004f19198 	ldr	x0, [x0, #608]
004f1919c 	bl	#-9996092 ; -> 0x4590a60 
004f191a0 	mov	w8, #1
004f191a4 	strb	w8, [x20, #1732]
004f191a8 	mov	w0, #33217
004f191ac 	mov	x1, xzr
004f191b0 	bl	#-2956300 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f191b4 	tbz	w0, #0, #40 ; -> 0x4f191dc 
004f191b8 	mov	w0, #33217
004f191bc 	mov	x1, xzr
004f191c0 	bl	#-2956136 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f191c4 	cbz	x0, #92 ; -> 0x4f19220 
004f191c8 	mov	x1, x19
004f191cc 	ldp	x20, x19, [sp, #16]
004f191d0 	mov	x2, xzr
004f191d4 	ldr	x30, [sp], #32
004f191d8 	b	#-3778248 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
004f191dc 	adrp	x8, #89206784 ; -> 0xa42c000 
004f191e0 	ldr	x8, [x8, #608]
004f191e4 	ldr	x0, [x8]
004f191e8 	bl	#-9995500 ; -> 0x4590cfc 
004f191ec 	mov	w1, wzr
004f191f0 	mov	x2, xzr
004f191f4 	mov	x20, x0
004f191f8 	bl	#37108 ; -> 0x4f222ec StatManager+<LevelUpDelay_IE>d__49::.ctor
004f191fc 	cbz	x20, #36 ; -> 0x4f19220 
004f19200 	mov	x0, x20
004f19204 	mov	x1, x19
004f19208 	str	x19, [x0, #32]!
004f1920c 	bl	#-9996296 ; -> 0x4590a04 
004f19210 	mov	x0, x20
004f19214 	ldp	x20, x19, [sp, #16]
004f19218 	ldr	x30, [sp], #32
004f1921c 	ret
004f19220 	bl	#-9995540 ; -> 0x4590d0c 
