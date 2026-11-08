0051efc7c 	str	x30, [sp, #-32]!
0051efc80 	stp	x20, x19, [sp, #16]
0051efc84 	adrp	x20, #94269440 ; -> 0xabd6000 
0051efc88 	mov	x19, x0
0051efc8c 	ldrb	w8, [x20, #3142]
0051efc90 	tbnz	w8, #0, #24 ; -> 0x51efca8 
0051efc94 	adrp	x0, #85987328 ; -> 0xa3f0000 
0051efc98 	ldr	x0, [x0, #2048]
0051efc9c 	bl	#-12972604 ; -> 0x4590a60 
0051efca0 	mov	w8, #1
0051efca4 	strb	w8, [x20, #3142]
0051efca8 	mov	w0, #33706
0051efcac 	mov	x1, xzr
0051efcb0 	bl	#-5932812 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051efcb4 	tbz	w0, #0, #40 ; -> 0x51efcdc 
0051efcb8 	mov	w0, #33706
0051efcbc 	mov	x1, xzr
0051efcc0 	bl	#-5932648 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051efcc4 	cbz	x0, #92 ; -> 0x51efd20 
0051efcc8 	mov	x1, x19
0051efccc 	ldp	x20, x19, [sp, #16]
0051efcd0 	mov	x2, xzr
0051efcd4 	ldr	x30, [sp], #32
0051efcd8 	b	#-6756280 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051efcdc 	cbz	x19, #56 ; -> 0x51efd14 
0051efce0 	ldr	x8, [x19, #768]
0051efce4 	cbz	x8, #48 ; -> 0x51efd14 
0051efce8 	adrp	x9, #85987328 ; -> 0xa3f0000 
0051efcec 	ldr	x9, [x9, #2048]
0051efcf0 	ldr	x19, [x8, #24]
0051efcf4 	ldr	x0, [x9]
0051efcf8 	ldr	w9, [x0, #228]
0051efcfc 	cbnz	w9, #8 ; -> 0x51efd04 
0051efd00 	bl	#-12972320 ; -> 0x4590be0 
0051efd04 	mov	x0, x19
0051efd08 	ldp	x20, x19, [sp, #16]
0051efd0c 	ldr	x30, [sp], #32
0051efd10 	b	#20 ; -> 0x51efd24 ServerPrefs::Load
0051efd14 	ldp	x20, x19, [sp, #16]
0051efd18 	ldr	x30, [sp], #32
0051efd1c 	ret
0051efd20 	bl	#-12972052 ; -> 0x4590d0c 
