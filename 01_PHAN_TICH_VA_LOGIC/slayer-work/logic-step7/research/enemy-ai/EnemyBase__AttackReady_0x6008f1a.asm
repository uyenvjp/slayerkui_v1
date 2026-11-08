0050b663c 	stp	x30, x21, [sp, #-32]!
0050b6640 	stp	x20, x19, [sp, #16]
0050b6644 	adrp	x20, #95551488 ; -> 0xabd6000 
0050b6648 	mov	x19, x0
0050b664c 	ldrb	w8, [x20, #691]
0050b6650 	tbnz	w8, #0, #24 ; -> 0x50b6668 
0050b6654 	adrp	x0, #87232512 ; -> 0xa3e7000 
0050b6658 	ldr	x0, [x0, #1192]
0050b665c 	bl	#-11688956 ; -> 0x4590a60 
0050b6660 	mov	w8, #1
0050b6664 	strb	w8, [x20, #691]
0050b6668 	mov	w0, #30988
0050b666c 	mov	x1, xzr
0050b6670 	bl	#-4649164 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b6674 	tbz	w0, #0, #40 ; -> 0x50b669c 
0050b6678 	mov	w0, #30988
0050b667c 	mov	x1, xzr
0050b6680 	bl	#-4649000 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b6684 	cbz	x0, #204 ; -> 0x50b6750 
0050b6688 	mov	x1, x19
0050b668c 	ldp	x20, x19, [sp, #16]
0050b6690 	mov	x2, xzr
0050b6694 	ldp	x30, x21, [sp], #32
0050b6698 	b	#-5472632 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b669c 	ldrb	w8, [x19, #513]
0050b66a0 	cbz	w8, #144 ; -> 0x50b6730 
0050b66a4 	adrp	x21, #87232512 ; -> 0xa3e7000 
0050b66a8 	ldr	x21, [x21, #1192]
0050b66ac 	ldr	x20, [x19, #520]
0050b66b0 	ldr	x0, [x21]
0050b66b4 	ldr	w8, [x0, #228]
0050b66b8 	cbnz	w8, #8 ; -> 0x50b66c0 
0050b66bc 	bl	#-11688668 ; -> 0x4590be0 
0050b66c0 	mov	x0, x20
0050b66c4 	mov	x1, xzr
0050b66c8 	mov	x2, xzr
0050b66cc 	bl	#76867780 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
0050b66d0 	tbz	w0, #0, #84 ; -> 0x50b6724 
0050b66d4 	ldr	x0, [x21]
0050b66d8 	ldr	x20, [x19, #528]
0050b66dc 	ldr	w8, [x0, #228]
0050b66e0 	cbnz	w8, #8 ; -> 0x50b66e8 
0050b66e4 	bl	#-11688708 ; -> 0x4590be0 
0050b66e8 	mov	x0, x20
0050b66ec 	mov	x1, xzr
0050b66f0 	mov	x2, xzr
0050b66f4 	bl	#76867740 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
0050b66f8 	tbz	w0, #0, #44 ; -> 0x50b6724 
0050b66fc 	ldr	x8, [x19]
0050b6700 	mov	x0, x19
0050b6704 	ldr	x9, [x8, #1080]
0050b6708 	ldr	x1, [x8, #1088]
0050b670c 	blr	x9
0050b6710 	mov	x1, x0
0050b6714 	mov	x0, x19
0050b6718 	ldp	x20, x19, [sp, #16]
0050b671c 	ldp	x30, x21, [sp], #32
0050b6720 	b	#-780 ; -> 0x50b6414 EnemyBase::StopAndGoIE_Attack
0050b6724 	ldp	x20, x19, [sp, #16]
0050b6728 	ldp	x30, x21, [sp], #32
0050b672c 	ret
0050b6730 	ldr	x8, [x19]
0050b6734 	mov	x0, x19
0050b6738 	mov	w1, #1
0050b673c 	ldp	x20, x19, [sp, #16]
0050b6740 	ldr	x2, [x8, #720]
0050b6744 	ldr	x3, [x8, #712]
0050b6748 	ldp	x30, x21, [sp], #32
0050b674c 	br	x3
0050b6750 	bl	#-11688516 ; -> 0x4590d0c 
