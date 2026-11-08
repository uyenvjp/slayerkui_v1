004f18110 	str	x30, [sp, #-48]!
004f18114 	stp	x22, x21, [sp, #16]
004f18118 	stp	x20, x19, [sp, #32]
004f1811c 	adrp	x22, #97243136 ; -> 0xabd5000 
004f18120 	mov	x20, x2
004f18124 	mov	w19, w1
004f18128 	ldrb	w8, [x22, #1729]
004f1812c 	mov	x21, x0
004f18130 	tbnz	w8, #0, #72 ; -> 0x4f18178 
004f18134 	adrp	x0, #88928256 ; -> 0xa3e7000 
004f18138 	ldr	x0, [x0, #2992]
004f1813c 	bl	#-9991900 ; -> 0x4590a60 
004f18140 	adrp	x0, #89210880 ; -> 0xa42c000 
004f18144 	ldr	x0, [x0, #496]
004f18148 	bl	#-9991912 ; -> 0x4590a60 
004f1814c 	adrp	x0, #89210880 ; -> 0xa42c000 
004f18150 	ldr	x0, [x0, #504]
004f18154 	bl	#-9991924 ; -> 0x4590a60 
004f18158 	adrp	x0, #89210880 ; -> 0xa42c000 
004f1815c 	ldr	x0, [x0, #512]
004f18160 	bl	#-9991936 ; -> 0x4590a60 
004f18164 	adrp	x0, #89210880 ; -> 0xa42c000 
004f18168 	ldr	x0, [x0, #520]
004f1816c 	bl	#-9991948 ; -> 0x4590a60 
004f18170 	mov	w8, #1
004f18174 	strb	w8, [x22, #1729]
004f18178 	mov	w0, #29355
004f1817c 	mov	x1, xzr
004f18180 	bl	#-2952156 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f18184 	tbz	w0, #0, #52 ; -> 0x4f181b8 
004f18188 	mov	w0, #29355
004f1818c 	mov	x1, xzr
004f18190 	bl	#-2951992 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f18194 	cbz	x0, #212 ; -> 0x4f18268 
004f18198 	mov	x1, x21
004f1819c 	mov	w2, w19
004f181a0 	mov	x3, x20
004f181a4 	ldp	x20, x19, [sp, #32]
004f181a8 	mov	x4, xzr
004f181ac 	ldp	x22, x21, [sp, #16]
004f181b0 	ldr	x30, [sp], #48
004f181b4 	b	#-3725728 ; -> 0x4b8a814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_233
004f181b8 	ldr	x0, [x21, #200]
004f181bc 	cbz	x0, #172 ; -> 0x4f18268 
004f181c0 	adrp	x8, #89210880 ; -> 0xa42c000 
004f181c4 	mov	w1, w19
004f181c8 	ldr	x8, [x8, #504]
004f181cc 	ldr	x2, [x8]
004f181d0 	bl	#51644504 ; -> 0x8058a28 
004f181d4 	tbnz	w0, #0, #36 ; -> 0x4f181f8 
004f181d8 	ldr	x0, [x21, #200]
004f181dc 	cbz	x0, #140 ; -> 0x4f18268 
004f181e0 	adrp	x8, #89210880 ; -> 0xa42c000 
004f181e4 	mov	w1, w19
004f181e8 	mov	x2, xzr
004f181ec 	ldr	x8, [x8, #496]
004f181f0 	ldr	x3, [x8]
004f181f4 	bl	#51643968 ; -> 0x8058834 
004f181f8 	ldr	x21, [x21, #200]
004f181fc 	cbz	x21, #108 ; -> 0x4f18268 
004f18200 	adrp	x8, #89210880 ; -> 0xa42c000 
004f18204 	mov	x0, x21
004f18208 	mov	w1, w19
004f1820c 	ldr	x8, [x8, #512]
004f18210 	ldr	x2, [x8]
004f18214 	bl	#51643776 ; -> 0x8058794 
004f18218 	mov	x1, x20
004f1821c 	mov	x2, xzr
004f18220 	bl	#66745472 ; -> 0x8ebf6a0 System.Delegate::Combine
004f18224 	mov	x2, x0
004f18228 	cbz	x0, #28 ; -> 0x4f18244 
004f1822c 	adrp	x8, #88928256 ; -> 0xa3e7000 
004f18230 	ldr	x8, [x8, #2992]
004f18234 	ldr	x1, [x8]
004f18238 	ldr	x8, [x2]
004f1823c 	cmp	x8, x1
004f18240 	b.ne	#44 ; -> 0x4f1826c 
004f18244 	adrp	x8, #89210880 ; -> 0xa42c000 
004f18248 	mov	x0, x21
004f1824c 	mov	w1, w19
004f18250 	ldr	x8, [x8, #520]
004f18254 	ldp	x20, x19, [sp, #32]
004f18258 	ldp	x22, x21, [sp, #16]
004f1825c 	ldr	x3, [x8]
004f18260 	ldr	x30, [sp], #48
004f18264 	b	#51643836 ; -> 0x8058820 
004f18268 	bl	#-9991516 ; -> 0x4590d0c 
004f1826c 	mov	x0, x2
004f18270 	bl	#-9990628 ; -> 0x459108c 
