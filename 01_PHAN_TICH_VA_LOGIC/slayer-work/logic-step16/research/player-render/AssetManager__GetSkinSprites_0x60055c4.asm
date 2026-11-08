004ccb0cc 	sub	sp, sp, #48
004ccb0d0 	stp	x30, x21, [sp, #16]
004ccb0d4 	stp	x20, x19, [sp, #32]
004ccb0d8 	adrp	x20, #99651584 ; -> 0xabd4000 
004ccb0dc 	mov	x19, x0
004ccb0e0 	ldrb	w8, [x20, #1793]
004ccb0e4 	tbnz	w8, #0, #60 ; -> 0x4ccb120 
004ccb0e8 	adrp	x0, #91570176 ; -> 0xa41f000 
004ccb0ec 	ldr	x0, [x0, #72]
004ccb0f0 	bl	#-7579280 ; -> 0x4590a60 
004ccb0f4 	adrp	x0, #91348992 ; -> 0xa3e9000 
004ccb0f8 	ldr	x0, [x0, #2376]
004ccb0fc 	bl	#-7579292 ; -> 0x4590a60 
004ccb100 	adrp	x0, #91570176 ; -> 0xa41f000 
004ccb104 	ldr	x0, [x0, #400]
004ccb108 	bl	#-7579304 ; -> 0x4590a60 
004ccb10c 	adrp	x0, #91570176 ; -> 0xa41f000 
004ccb110 	ldr	x0, [x0, #408]
004ccb114 	bl	#-7579316 ; -> 0x4590a60 
004ccb118 	mov	w8, #1
004ccb11c 	strb	w8, [x20, #1793]
004ccb120 	mov	w0, #1578
004ccb124 	mov	x1, xzr
004ccb128 	str	xzr, [sp, #8]
004ccb12c 	bl	#-539528 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ccb130 	tbz	w0, #0, #44 ; -> 0x4ccb15c 
004ccb134 	mov	w0, #1578
004ccb138 	mov	x1, xzr
004ccb13c 	bl	#-539364 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ccb140 	cbz	x0, #316 ; -> 0x4ccb27c 
004ccb144 	mov	x1, x19
004ccb148 	ldp	x20, x19, [sp, #32]
004ccb14c 	ldp	x30, x21, [sp, #16]
004ccb150 	mov	x2, xzr
004ccb154 	add	sp, sp, #48
004ccb158 	b	#-1317804 ; -> 0x4b895ac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_213
004ccb15c 	adrp	x21, #91348992 ; -> 0xa3e9000 
004ccb160 	ldr	x21, [x21, #2376]
004ccb164 	ldr	x0, [x21]
004ccb168 	ldr	w8, [x0, #228]
004ccb16c 	cbnz	w8, #12 ; -> 0x4ccb178 
004ccb170 	bl	#-7579024 ; -> 0x4590be0 
004ccb174 	ldr	x0, [x21]
004ccb178 	ldr	x8, [x0, #184]
004ccb17c 	ldr	x0, [x8, #96]
004ccb180 	cbz	x0, #252 ; -> 0x4ccb27c 
004ccb184 	adrp	x8, #91570176 ; -> 0xa41f000 
004ccb188 	add	x2, sp, #8
004ccb18c 	mov	x1, x19
004ccb190 	ldr	x8, [x8, #400]
004ccb194 	ldr	x3, [x8]
004ccb198 	bl	#55440544 ; -> 0x81aa638 
004ccb19c 	tbnz	w0, #0, #204 ; -> 0x4ccb268 
004ccb1a0 	ldr	x0, [x21]
004ccb1a4 	ldr	w8, [x0, #228]
004ccb1a8 	cbnz	w8, #8 ; -> 0x4ccb1b0 
004ccb1ac 	bl	#-7579084 ; -> 0x4590be0 
004ccb1b0 	mov	x0, x19
004ccb1b4 	mov	w1, #5
004ccb1b8 	bl	#-9332 ; -> 0x4cc8d44 AssetManager::LoadSpritesFromKey
004ccb1bc 	cbz	x0, #12 ; -> 0x4ccb1c8 
004ccb1c0 	ldr	x8, [x0, #24]
004ccb1c4 	cbnz	x8, #100 ; -> 0x4ccb228 
004ccb1c8 	adrp	x8, #91570176 ; -> 0xa41f000 
004ccb1cc 	ldr	x8, [x8, #72]
004ccb1d0 	ldr	x20, [x8]
004ccb1d4 	ldr	x8, [x20, #56]
004ccb1d8 	cbnz	x8, #16 ; -> 0x4ccb1e8 
004ccb1dc 	mov	x0, x20
004ccb1e0 	bl	#-7348828 ; -> 0x45c8f84 
004ccb1e4 	ldr	x8, [x20, #56]
004ccb1e8 	ldr	x0, [x8, #16]
004ccb1ec 	add	x8, x0, #309
004ccb1f0 	ldrh	w8, [x8]
004ccb1f4 	tbnz	w8, #0, #8 ; -> 0x4ccb1fc 
004ccb1f8 	bl	#-7348944 ; -> 0x45c8f28 
004ccb1fc 	ldr	w8, [x0, #228]
004ccb200 	cbnz	w8, #8 ; -> 0x4ccb208 
004ccb204 	bl	#-7579172 ; -> 0x4590be0 
004ccb208 	ldr	x8, [x20, #56]
004ccb20c 	ldr	x0, [x8, #16]
004ccb210 	add	x8, x0, #309
004ccb214 	ldrh	w8, [x8]
004ccb218 	tbnz	w8, #0, #8 ; -> 0x4ccb220 
004ccb21c 	bl	#-7348980 ; -> 0x45c8f28 
004ccb220 	ldr	x8, [x0, #184]
004ccb224 	ldr	x0, [x8]
004ccb228 	ldr	x8, [x21]
004ccb22c 	str	x0, [sp, #8]
004ccb230 	ldr	w9, [x8, #228]
004ccb234 	cbnz	w9, #16 ; -> 0x4ccb244 
004ccb238 	mov	x0, x8
004ccb23c 	bl	#-7579228 ; -> 0x4590be0 
004ccb240 	ldr	x8, [x21]
004ccb244 	ldr	x8, [x8, #184]
004ccb248 	ldr	x0, [x8, #96]
004ccb24c 	cbz	x0, #48 ; -> 0x4ccb27c 
004ccb250 	adrp	x8, #91570176 ; -> 0xa41f000 
004ccb254 	mov	x1, x19
004ccb258 	ldr	x8, [x8, #408]
004ccb25c 	ldr	x2, [sp, #8]
004ccb260 	ldr	x3, [x8]
004ccb264 	bl	#55433304 ; -> 0x81a8abc 
004ccb268 	ldp	x20, x19, [sp, #32]
004ccb26c 	ldr	x0, [sp, #8]
004ccb270 	ldp	x30, x21, [sp, #16]
004ccb274 	add	sp, sp, #48
004ccb278 	ret
004ccb27c 	bl	#-7578992 ; -> 0x4590d0c 
