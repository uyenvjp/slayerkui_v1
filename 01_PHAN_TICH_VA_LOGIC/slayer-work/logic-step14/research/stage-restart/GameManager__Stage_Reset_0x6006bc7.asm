004e4f5d0 	str	x30, [sp, #-32]!
004e4f5d4 	stp	x20, x19, [sp, #16]
004e4f5d8 	adrp	x20, #98066432 ; -> 0xabd5000 
004e4f5dc 	mov	x19, x0
004e4f5e0 	ldrb	w8, [x20, #321]
004e4f5e4 	tbnz	w8, #0, #36 ; -> 0x4e4f608 
004e4f5e8 	adrp	x0, #90017792 ; -> 0xa428000 
004e4f5ec 	ldr	x0, [x0, #2792]
004e4f5f0 	bl	#-9169808 ; -> 0x4590a60 
004e4f5f4 	adrp	x0, #90017792 ; -> 0xa428000 
004e4f5f8 	ldr	x0, [x0, #2048]
004e4f5fc 	bl	#-9169820 ; -> 0x4590a60 
004e4f600 	mov	w8, #1
004e4f604 	strb	w8, [x20, #321]
004e4f608 	mov	w0, #30240
004e4f60c 	mov	x1, xzr
004e4f610 	bl	#-2130028 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4f614 	tbz	w0, #0, #40 ; -> 0x4e4f63c 
004e4f618 	mov	w0, #30240
004e4f61c 	mov	x1, xzr
004e4f620 	bl	#-2129864 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4f624 	cbz	x0, #104 ; -> 0x4e4f68c 
004e4f628 	mov	x1, x19
004e4f62c 	ldp	x20, x19, [sp, #16]
004e4f630 	mov	x2, xzr
004e4f634 	ldr	x30, [sp], #32
004e4f638 	b	#-2953496 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e4f63c 	adrp	x8, #90017792 ; -> 0xa428000 
004e4f640 	adrp	x20, #90017792 ; -> 0xa428000 
004e4f644 	ldr	x8, [x8, #2048]
004e4f648 	ldr	x20, [x20, #2792]
004e4f64c 	ldr	x0, [x8]
004e4f650 	bl	#-9169236 ; -> 0x4590cfc 
004e4f654 	ldr	x2, [x20]
004e4f658 	mov	x1, x19
004e4f65c 	mov	x3, xzr
004e4f660 	mov	x20, x0
004e4f664 	bl	#188156 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e4f668 	mov	x0, x19
004e4f66c 	mov	x2, x20
004e4f670 	mov	x1, xzr
004e4f674 	ldp	x20, x19, [sp, #16]
004e4f678 	mov	x3, xzr
004e4f67c 	mov	x4, xzr
004e4f680 	mov	w5, #1
004e4f684 	ldr	x30, [sp], #32
004e4f688 	b	#-39856 ; -> 0x4e45ad8 GameManager::SceneChange
004e4f68c 	bl	#-9169280 ; -> 0x4590d0c 
