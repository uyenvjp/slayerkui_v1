004d18120 	str	d8, [sp, #-16]!
004d18124 	str	x30, [sp, #8]
004d18128 	mov	w0, #2712
004d1812c 	mov	x1, xzr
004d18130 	fmov	s8, s0
004d18134 	bl	#-854928 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d18138 	tbz	w0, #0, #40 ; -> 0x4d18160 
004d1813c 	mov	w0, #2712
004d18140 	mov	x1, xzr
004d18144 	bl	#-854764 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d18148 	cbz	x0, #76 ; -> 0x4d18194 
004d1814c 	ldr	x30, [sp, #8]
004d18150 	fmov	s0, s8
004d18154 	mov	x1, xzr
004d18158 	ldr	d8, [sp], #16
004d1815c 	b	#-1590704 ; -> 0x4b93bac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_414
004d18160 	movi	d0, #0000000000000000
004d18164 	mov	w8, #1120403456
004d18168 	mov	x0, xzr
004d1816c 	fmov	s1, w8
004d18170 	bl	#80622672 ; -> 0x99fb5c0 UnityEngine.Random::Range
004d18174 	fcmp	s0, s8
004d18178 	b.pl	#12 ; -> 0x4d18184 
004d1817c 	mov	w0, #1
004d18180 	b	#8 ; -> 0x4d18188 
004d18184 	mov	w0, wzr
004d18188 	ldr	x30, [sp, #8]
004d1818c 	ldr	d8, [sp], #16
004d18190 	ret
004d18194 	bl	#-7894152 ; -> 0x4590d0c 
