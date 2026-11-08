004ef1660 	sub	sp, sp, #304
004ef1664 	str	d8, [sp, #256]
004ef1668 	str	x29, [sp, #264]
004ef166c 	stp	x30, x21, [sp, #272]
004ef1670 	stp	x20, x19, [sp, #288]
004ef1674 	adrp	x20, #97402880 ; -> 0xabd5000 
004ef1678 	mov	x19, x0
004ef167c 	ldrb	w8, [x20, #1450]
004ef1680 	tbnz	w8, #0, #24 ; -> 0x4ef1698 
004ef1684 	adrp	x0, #89092096 ; -> 0xa3e8000 
004ef1688 	ldr	x0, [x0, #1536]
004ef168c 	bl	#-9833516 ; -> 0x4590a60 
004ef1690 	mov	w8, #1
004ef1694 	strb	w8, [x20, #1450]
004ef1698 	mov	w0, #2370
004ef169c 	mov	x1, xzr
004ef16a0 	bl	#-2793724 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef16a4 	tbz	w0, #0, #52 ; -> 0x4ef16d8 
004ef16a8 	mov	w0, #2370
004ef16ac 	mov	x1, xzr
004ef16b0 	bl	#-2793560 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef16b4 	cbz	x0, #400 ; -> 0x4ef1844 
004ef16b8 	mov	x1, x19
004ef16bc 	ldp	x20, x19, [sp, #288]
004ef16c0 	ldp	x30, x21, [sp, #272]
004ef16c4 	mov	x2, xzr
004ef16c8 	ldr	x29, [sp, #264]
004ef16cc 	ldr	d8, [sp, #256]
004ef16d0 	add	sp, sp, #304
004ef16d4 	b	#-3596496 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
004ef16d8 	ldr	x8, [x19, #312]
004ef16dc 	cbz	x8, #360 ; -> 0x4ef1844 
004ef16e0 	ldr	q0, [x8, #2112]
004ef16e4 	ldr	q1, [x8, #2128]
004ef16e8 	add	x0, sp, #192
004ef16ec 	ldr	q2, [x8, #2144]
004ef16f0 	mov	x1, xzr
004ef16f4 	stp	q0, q1, [sp, #192]
004ef16f8 	ldr	q0, [x8, #2160]
004ef16fc 	stp	q2, q0, [sp, #224]
004ef1700 	bl	#-3796480 ; -> 0x4b52900 SilentLong::op_Implicit
004ef1704 	ldr	x8, [x19, #312]
004ef1708 	cbz	x8, #316 ; -> 0x4ef1844 
004ef170c 	ldr	q0, [x8, #2944]
004ef1710 	ldr	q1, [x8, #2960]
004ef1714 	mov	x20, x0
004ef1718 	ldr	q2, [x8, #2976]
004ef171c 	add	x0, sp, #128
004ef1720 	mov	x1, xzr
004ef1724 	stp	q0, q1, [sp, #128]
004ef1728 	ldr	q0, [x8, #2992]
004ef172c 	stp	q2, q0, [sp, #160]
004ef1730 	bl	#-3796528 ; -> 0x4b52900 SilentLong::op_Implicit
004ef1734 	ldr	x8, [x19, #312]
004ef1738 	cbz	x8, #268 ; -> 0x4ef1844 
004ef173c 	adrp	x9, #89092096 ; -> 0xa3e8000 
004ef1740 	mov	x21, x0
004ef1744 	ldr	x9, [x9, #1536]
004ef1748 	ldr	d8, [x8, #3008]
004ef174c 	ldr	x0, [x9]
004ef1750 	ldr	w9, [x0, #228]
004ef1754 	cbnz	w9, #12 ; -> 0x4ef1760 
004ef1758 	bl	#-9833336 ; -> 0x4590be0 
004ef175c 	ldr	x8, [x19, #312]
004ef1760 	add	x9, x21, #100
004ef1764 	frintp	d0, d8
004ef1768 	scvtf	d2, x20
004ef176c 	scvtf	d1, x9
004ef1770 	mov	x9, #4636737291354636288
004ef1774 	fadd	d0, d0, d1
004ef1778 	fmov	d1, x9
004ef177c 	mov	x9, #9218868437227405312
004ef1780 	fmul	d0, d0, d2
004ef1784 	fdiv	d0, d0, d1
004ef1788 	fmov	d1, x9
004ef178c 	mov	x9, #-9223372036854775808
004ef1790 	fcvtzs	x10, d0
004ef1794 	fcmp	d0, d1
004ef1798 	csel	x21, x9, x10, eq
004ef179c 	str	x21, [x19, #1672]
004ef17a0 	cbz	x8, #164 ; -> 0x4ef1844 
004ef17a4 	ldr	q0, [x8, #18192]
004ef17a8 	ldr	q1, [x8, #18208]
004ef17ac 	add	x0, sp, #64
004ef17b0 	ldr	q2, [x8, #18224]
004ef17b4 	mov	x1, xzr
004ef17b8 	stp	q0, q1, [sp, #64]
004ef17bc 	ldr	q0, [x8, #18240]
004ef17c0 	stp	q2, q0, [sp, #96]
004ef17c4 	bl	#-3798132 ; -> 0x4b52350 SilentInt::op_Implicit
004ef17c8 	ldr	x8, [x19, #312]
004ef17cc 	cbz	x8, #120 ; -> 0x4ef1844 
004ef17d0 	mov	w9, #21080
004ef17d4 	mov	w20, w0
004ef17d8 	mov	x0, sp
004ef17dc 	add	x8, x8, x9
004ef17e0 	mov	x1, xzr
004ef17e4 	ldp	q0, q1, [x8]
004ef17e8 	stp	q0, q1, [sp]
004ef17ec 	ldp	q0, q2, [x8, #32]
004ef17f0 	stp	q0, q2, [sp, #32]
004ef17f4 	bl	#-3798180 ; -> 0x4b52350 SilentInt::op_Implicit
004ef17f8 	add	w8, w20, w0
004ef17fc 	mov	x9, #55051
004ef1800 	ldr	x29, [sp, #264]
004ef1804 	add	w8, w8, #100
004ef1808 	movk	x9, #28835, lsl #16
004ef180c 	ldr	d8, [sp, #256]
004ef1810 	sxtw	x8, w8
004ef1814 	movk	x9, #2621, lsl #32
004ef1818 	movk	x9, #41943, lsl #48
004ef181c 	mul	x8, x21, x8
004ef1820 	ldp	x30, x21, [sp, #272]
004ef1824 	smulh	x9, x8, x9
004ef1828 	add	x8, x9, x8
004ef182c 	asr	x9, x8, #6
004ef1830 	add	x0, x9, x8, lsr #63
004ef1834 	str	x0, [x19, #1672]
004ef1838 	ldp	x20, x19, [sp, #288]
004ef183c 	add	sp, sp, #304
004ef1840 	ret
004ef1844 	bl	#-9833272 ; -> 0x4590d0c 
