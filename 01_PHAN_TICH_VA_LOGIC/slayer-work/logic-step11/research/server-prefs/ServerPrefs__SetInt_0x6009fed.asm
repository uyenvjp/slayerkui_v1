0051f06b4 	sub	sp, sp, #64
0051f06b8 	stp	x30, x21, [sp, #32]
0051f06bc 	stp	x20, x19, [sp, #48]
0051f06c0 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f06c4 	mov	w19, w1
0051f06c8 	mov	w20, w0
0051f06cc 	ldrb	w8, [x21, #3149]
0051f06d0 	tbnz	w8, #0, #36 ; -> 0x51f06f4 
0051f06d4 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f06d8 	ldr	x0, [x0, #128]
0051f06dc 	bl	#-12975228 ; -> 0x4590a60 
0051f06e0 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f06e4 	ldr	x0, [x0, #2048]
0051f06e8 	bl	#-12975240 ; -> 0x4590a60 
0051f06ec 	mov	w8, #1
0051f06f0 	strb	w8, [x21, #3149]
0051f06f4 	mov	w0, #2422
0051f06f8 	mov	x1, xzr
0051f06fc 	bl	#-5935448 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0700 	tbz	w0, #0, #48 ; -> 0x51f0730 
0051f0704 	mov	w0, #2422
0051f0708 	mov	x1, xzr
0051f070c 	bl	#-5935284 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0710 	cbz	x0, #132 ; -> 0x51f0794 
0051f0714 	mov	w1, w20
0051f0718 	mov	w2, w19
0051f071c 	mov	x3, xzr
0051f0720 	ldp	x20, x19, [sp, #48]
0051f0724 	ldp	x30, x21, [sp, #32]
0051f0728 	add	sp, sp, #64
0051f072c 	b	#-6678320 ; -> 0x4b91ffc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_376
0051f0730 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0734 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0738 	mov	x9, #-1
0051f073c 	ldr	x8, [x8, #128]
0051f0740 	add	x0, sp, #8
0051f0744 	mov	x1, xzr
0051f0748 	ldr	x8, [x8]
0051f074c 	str	x8, [sp, #8]
0051f0750 	ldr	x21, [x21, #2048]
0051f0754 	str	x9, [sp, #16]
0051f0758 	str	w20, [sp, #24]
0051f075c 	bl	#63697584 ; -> 0x8eafa0c System.Enum::ToString
0051f0760 	ldr	x8, [x21]
0051f0764 	mov	x20, x0
0051f0768 	ldr	w9, [x8, #228]
0051f076c 	cbnz	w9, #12 ; -> 0x51f0778 
0051f0770 	mov	x0, x8
0051f0774 	bl	#-12974996 ; -> 0x4590be0 
0051f0778 	mov	x0, x20
0051f077c 	mov	w1, w19
0051f0780 	bl	#24 ; -> 0x51f0798 ServerPrefs::SetInt
0051f0784 	ldp	x20, x19, [sp, #48]
0051f0788 	ldp	x30, x21, [sp, #32]
0051f078c 	add	sp, sp, #64
0051f0790 	ret
0051f0794 	bl	#-12974728 ; -> 0x4590d0c 
