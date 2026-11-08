004f165c0 	stp	x30, x21, [sp, #-32]!
004f165c4 	stp	x20, x19, [sp, #16]
004f165c8 	adrp	x21, #97251328 ; -> 0xabd5000 
004f165cc 	mov	x19, x1
004f165d0 	mov	x20, x0
004f165d4 	ldrb	w8, [x21, #1717]
004f165d8 	tbnz	w8, #0, #24 ; -> 0x4f165f0 
004f165dc 	adrp	x0, #89165824 ; -> 0xa41f000 
004f165e0 	ldr	x0, [x0, #1880]
004f165e4 	bl	#-9984900 ; -> 0x4590a60 
004f165e8 	mov	w8, #1
004f165ec 	strb	w8, [x21, #1717]
004f165f0 	mov	w0, #33190
004f165f4 	mov	x1, xzr
004f165f8 	bl	#-2945108 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f165fc 	tbz	w0, #0, #44 ; -> 0x4f16628 
004f16600 	mov	w0, #33190
004f16604 	mov	x1, xzr
004f16608 	bl	#-2944944 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f1660c 	cbz	x0, #112 ; -> 0x4f1667c 
004f16610 	mov	x1, x20
004f16614 	mov	x2, x19
004f16618 	mov	x3, xzr
004f1661c 	ldp	x20, x19, [sp, #16]
004f16620 	ldp	x30, x21, [sp], #32
004f16624 	b	#-3767824 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004f16628 	adrp	x21, #89165824 ; -> 0xa41f000 
004f1662c 	mov	x0, x20
004f16630 	ldr	x21, [x21, #1880]
004f16634 	bl	#76 ; -> 0x4f16680 StatManager::StatPointDisplay
004f16638 	ldr	x8, [x21]
004f1663c 	ldr	x8, [x8, #184]
004f16640 	ldr	x0, [x8]
004f16644 	cbz	x0, #56 ; -> 0x4f1667c 
004f16648 	mov	x1, x19
004f1664c 	mov	x2, xzr
004f16650 	bl	#-320896 ; -> 0x4ec80d0 ObjectPooler_Effect::UpgradeEffect
004f16654 	mov	x0, xzr
004f16658 	bl	#-2087084 ; -> 0x4d18dac SoundManager::get_instance
004f1665c 	cbz	x0, #32 ; -> 0x4f1667c 
004f16660 	ldr	x8, [x0]
004f16664 	ldp	x20, x19, [sp, #16]
004f16668 	mov	x1, xzr
004f1666c 	ldr	x2, [x8, #1408]
004f16670 	ldr	x3, [x8, #1400]
004f16674 	ldp	x30, x21, [sp], #32
004f16678 	br	x3
004f1667c 	bl	#-9984368 ; -> 0x4590d0c 
