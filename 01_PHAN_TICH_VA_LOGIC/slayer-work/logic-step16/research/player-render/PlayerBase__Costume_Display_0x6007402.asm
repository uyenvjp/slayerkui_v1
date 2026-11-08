004efdd34 	stp	x30, x21, [sp, #-32]!
004efdd38 	stp	x20, x19, [sp, #16]
004efdd3c 	mov	w20, w1
004efdd40 	mov	x19, x0
004efdd44 	mov	w0, #33077
004efdd48 	mov	x1, xzr
004efdd4c 	bl	#-2844584 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004efdd50 	tbz	w0, #0, #44 ; -> 0x4efdd7c 
004efdd54 	mov	w0, #33077
004efdd58 	mov	x1, xzr
004efdd5c 	bl	#-2844420 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004efdd60 	cbz	x0, #172 ; -> 0x4efde0c 
004efdd64 	mov	x1, x19
004efdd68 	mov	w2, w20
004efdd6c 	mov	x3, xzr
004efdd70 	ldp	x20, x19, [sp, #16]
004efdd74 	ldp	x30, x21, [sp], #32
004efdd78 	b	#-3662812 ; -> 0x4b7f99c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_27
004efdd7c 	ldr	x8, [x19, #2864]
004efdd80 	cbz	x8, #140 ; -> 0x4efde0c 
004efdd84 	ldr	w9, [x8, #24]
004efdd88 	cmp	w9, w20
004efdd8c 	b.ls	#132 ; -> 0x4efde10 
004efdd90 	ldr	x0, [x19, #2720]
004efdd94 	cbz	x0, #120 ; -> 0x4efde0c 
004efdd98 	sxtw	x21, w20
004efdd9c 	mov	x2, xzr
004efdda0 	add	x8, x8, x21, lsl #3
004efdda4 	ldr	x1, [x8, #32]
004efdda8 	bl	#78332816 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004efddac 	ldr	x0, [x19, #2712]
004efddb0 	cbz	x0, #92 ; -> 0x4efde0c 
004efddb4 	mov	x1, xzr
004efddb8 	bl	#78653688 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004efddbc 	cbz	x0, #80 ; -> 0x4efde0c 
004efddc0 	mov	x1, xzr
004efddc4 	bl	#78667476 ; -> 0x9a03c98 UnityEngine.GameObject::get_activeSelf
004efddc8 	tbz	w0, #0, #56 ; -> 0x4efde00 
004efddcc 	ldr	x8, [x19, #2856]
004efddd0 	cbz	x8, #60 ; -> 0x4efde0c 
004efddd4 	ldr	w9, [x8, #24]
004efddd8 	cmp	w9, w20
004efdddc 	b.ls	#52 ; -> 0x4efde10 
004efdde0 	ldr	x0, [x19, #2712]
004efdde4 	cbz	x0, #40 ; -> 0x4efde0c 
004efdde8 	add	x8, x8, x21, lsl #3
004efddec 	ldp	x20, x19, [sp, #16]
004efddf0 	mov	x2, xzr
004efddf4 	ldr	x1, [x8, #32]
004efddf8 	ldp	x30, x21, [sp], #32
004efddfc 	b	#78332732 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004efde00 	ldp	x20, x19, [sp, #16]
004efde04 	ldp	x30, x21, [sp], #32
004efde08 	ret
004efde0c 	bl	#-9883904 ; -> 0x4590d0c 
004efde10 	bl	#-9883900 ; -> 0x4590d14 
