005309adc 	str	x30, [sp, #-32]!
005309ae0 	stp	x20, x19, [sp, #16]
005309ae4 	mov	x19, x0
005309ae8 	mov	w0, #32946
005309aec 	mov	x1, xzr
005309af0 	bl	#-7087436 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005309af4 	tbz	w0, #0, #40 ; -> 0x5309b1c 
005309af8 	mov	w0, #32946
005309afc 	mov	x1, xzr
005309b00 	bl	#-7087272 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309b04 	cbz	x0, #248 ; -> 0x5309bfc 
005309b08 	mov	x1, x19
005309b0c 	ldp	x20, x19, [sp, #16]
005309b10 	mov	x2, xzr
005309b14 	ldr	x30, [sp], #32
005309b18 	b	#-7910904 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005309b1c 	mov	x0, x19
005309b20 	bl	#-16348 ; -> 0x5305b44 SkillData::InvalidateMaxCooltimePlus
005309b24 	ldr	x8, [x19, #32]
005309b28 	cbz	x8, #212 ; -> 0x5309bfc 
005309b2c 	ldr	w8, [x8, #140]
005309b30 	cmp	w8, #11
005309b34 	b.ne	#104 ; -> 0x5309b9c 
005309b38 	ldr	w8, [x19, #860]
005309b3c 	cmp	w8, #0
005309b40 	ldr	x8, [x19, #40]
005309b44 	cset	w9, gt
005309b48 	strb	w9, [x19, #56]
005309b4c 	cbz	x8, #176 ; -> 0x5309bfc 
005309b50 	ldr	x0, [x8, #168]
005309b54 	cbz	x0, #168 ; -> 0x5309bfc 
005309b58 	mov	w1, #1
005309b5c 	mov	x2, xzr
005309b60 	bl	#74424436 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005309b64 	ldr	x8, [x19, #40]
005309b68 	cbz	x8, #148 ; -> 0x5309bfc 
005309b6c 	ldr	x20, [x8, #176]
005309b70 	add	x0, x19, #860
005309b74 	mov	x1, xzr
005309b78 	bl	#62303084 ; -> 0x8e746e4 System.Int32::ToString
005309b7c 	cbz	x20, #128 ; -> 0x5309bfc 
005309b80 	ldr	x8, [x20]
005309b84 	mov	x1, x0
005309b88 	mov	x0, x20
005309b8c 	ldr	x9, [x8, #1512]
005309b90 	ldr	x2, [x8, #1520]
005309b94 	blr	x9
005309b98 	b	#20 ; -> 0x5309bac 
005309b9c 	mov	x0, x19
005309ba0 	strb	wzr, [x19, #56]
005309ba4 	bl	#-15668 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
005309ba8 	str	s0, [x19, #316]
005309bac 	ldr	x0, [x19, #40]
005309bb0 	cbz	x0, #76 ; -> 0x5309bfc 
005309bb4 	bl	#-12160 ; -> 0x5306c34 SkillEquipSlot::SkillUsingCheck
005309bb8 	ldr	x8, [x19, #40]
005309bbc 	cbz	x8, #64 ; -> 0x5309bfc 
005309bc0 	ldr	x0, [x8, #80]
005309bc4 	cbz	x0, #56 ; -> 0x5309bfc 
005309bc8 	mov	w1, #1
005309bcc 	mov	x2, xzr
005309bd0 	bl	#74424324 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005309bd4 	ldr	x8, [x19]
005309bd8 	mov	x0, x19
005309bdc 	ldr	x9, [x8, #552]
005309be0 	ldr	x1, [x8, #560]
005309be4 	blr	x9
005309be8 	mov	x1, x0
005309bec 	mov	x0, x19
005309bf0 	ldp	x20, x19, [sp, #16]
005309bf4 	ldr	x30, [sp], #32
005309bf8 	b	#8 ; -> 0x5309c00 SkillData::StopAndGoIE_Cooltime
005309bfc 	bl	#-14126832 ; -> 0x4590d0c 
