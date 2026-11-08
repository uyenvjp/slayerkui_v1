0050bbf20 	str	d8, [sp, #-48]!
0050bbf24 	stp	x30, x21, [sp, #16]
0050bbf28 	stp	x20, x19, [sp, #32]
0050bbf2c 	adrp	x20, #95531008 ; -> 0xabd6000 
0050bbf30 	mov	x19, x0
0050bbf34 	ldrb	w8, [x20, #730]
0050bbf38 	tbnz	w8, #0, #24 ; -> 0x50bbf50 
0050bbf3c 	adrp	x0, #87441408 ; -> 0xa41f000 
0050bbf40 	ldr	x0, [x0, #1880]
0050bbf44 	bl	#-11711716 ; -> 0x4590a60 
0050bbf48 	mov	w8, #1
0050bbf4c 	strb	w8, [x20, #730]
0050bbf50 	mov	w0, #31381
0050bbf54 	mov	x1, xzr
0050bbf58 	bl	#-4671924 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bbf5c 	tbz	w0, #0, #44 ; -> 0x50bbf88 
0050bbf60 	mov	w0, #31381
0050bbf64 	mov	x1, xzr
0050bbf68 	bl	#-4671760 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bbf6c 	cbz	x0, #208 ; -> 0x50bc03c 
0050bbf70 	mov	x1, x19
0050bbf74 	ldp	x20, x19, [sp, #32]
0050bbf78 	ldp	x30, x21, [sp, #16]
0050bbf7c 	mov	x2, xzr
0050bbf80 	ldr	d8, [sp], #48
0050bbf84 	b	#-5495396 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050bbf88 	ldrb	w8, [x19, #514]
0050bbf8c 	cbz	w8, #20 ; -> 0x50bbfa0 
0050bbf90 	ldp	x20, x19, [sp, #32]
0050bbf94 	ldp	x30, x21, [sp, #16]
0050bbf98 	ldr	d8, [sp], #48
0050bbf9c 	ret
0050bbfa0 	adrp	x8, #87441408 ; -> 0xa41f000 
0050bbfa4 	mov	w9, #1
0050bbfa8 	mov	x0, x19
0050bbfac 	ldr	x8, [x8, #1880]
0050bbfb0 	mov	x1, xzr
0050bbfb4 	strb	w9, [x19, #514]
0050bbfb8 	strb	wzr, [x19, #464]
0050bbfbc 	ldr	x8, [x8]
0050bbfc0 	ldr	x8, [x8, #184]
0050bbfc4 	ldr	x20, [x8]
0050bbfc8 	bl	#76826136 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050bbfcc 	ldr	x8, [x19, #328]
0050bbfd0 	cbz	x8, #108 ; -> 0x50bc03c 
0050bbfd4 	mov	x21, x0
0050bbfd8 	mov	x0, x8
0050bbfdc 	mov	x1, xzr
0050bbfe0 	bl	#76904848 ; -> 0x9a13970 UnityEngine.Transform::get_localScale
0050bbfe4 	ldr	x0, [x19, #336]
0050bbfe8 	cbz	x0, #84 ; -> 0x50bc03c 
0050bbfec 	mov	x1, xzr
0050bbff0 	fmov	s8, s0
0050bbff4 	bl	#76904828 ; -> 0x9a13970 UnityEngine.Transform::get_localScale
0050bbff8 	cbz	x20, #68 ; -> 0x50bc03c 
0050bbffc 	fmov	s1, s0
0050bc000 	fmov	s0, s8
0050bc004 	ldr	x2, [x19, #232]
0050bc008 	mov	x0, x20
0050bc00c 	mov	x1, x21
0050bc010 	mov	x3, xzr
0050bc014 	bl	#-2049560 ; -> 0x4ec79fc ObjectPooler_Effect::EnemyDeadEffect
0050bc018 	ldr	x8, [x19, #496]
0050bc01c 	cbz	x8, #32 ; -> 0x50bc03c 
0050bc020 	ldp	x20, x19, [sp, #32]
0050bc024 	ldr	x0, [x8, #64]
0050bc028 	ldp	x30, x21, [sp, #16]
0050bc02c 	ldr	x1, [x8, #40]
0050bc030 	ldr	x2, [x8, #24]
0050bc034 	ldr	d8, [sp], #48
0050bc038 	br	x2
0050bc03c 	bl	#-11711280 ; -> 0x4590d0c 
