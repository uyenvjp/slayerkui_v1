004ef18a4 	sub	sp, sp, #320
004ef18a8 	str	x29, [sp, #272]
004ef18ac 	stp	x30, x21, [sp, #288]
004ef18b0 	stp	x20, x19, [sp, #304]
004ef18b4 	mov	x19, x0
004ef18b8 	mov	w0, #2378
004ef18bc 	mov	x1, xzr
004ef18c0 	bl	#-2794268 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef18c4 	tbz	w0, #0, #48 ; -> 0x4ef18f4 
004ef18c8 	mov	w0, #2378
004ef18cc 	mov	x1, xzr
004ef18d0 	bl	#-2794104 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef18d4 	cbz	x0, #296 ; -> 0x4ef19fc 
004ef18d8 	mov	x1, x19
004ef18dc 	ldp	x20, x19, [sp, #304]
004ef18e0 	ldp	x30, x21, [sp, #288]
004ef18e4 	mov	x2, xzr
004ef18e8 	ldr	x29, [sp, #272]
004ef18ec 	add	sp, sp, #320
004ef18f0 	b	#-3597036 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
004ef18f4 	ldr	x8, [x19, #312]
004ef18f8 	cbz	x8, #260 ; -> 0x4ef19fc 
004ef18fc 	ldr	q0, [x8, #4592]
004ef1900 	ldr	q1, [x8, #4608]
004ef1904 	add	x21, sp, #144
004ef1908 	ldr	q2, [x8, #4624]
004ef190c 	add	x0, sp, #208
004ef1910 	mov	x1, xzr
004ef1914 	stp	q0, q1, [x21, #64]
004ef1918 	ldr	q0, [x8, #4640]
004ef191c 	stp	q2, q0, [x21, #96]
004ef1920 	bl	#-3798480 ; -> 0x4b52350 SilentInt::op_Implicit
004ef1924 	ldr	x8, [x19, #312]
004ef1928 	cbz	x8, #212 ; -> 0x4ef19fc 
004ef192c 	ldr	q0, [x8, #5072]
004ef1930 	ldr	q1, [x8, #5088]
004ef1934 	mov	w20, w0
004ef1938 	ldr	q2, [x8, #5104]
004ef193c 	add	x0, sp, #144
004ef1940 	mov	x1, xzr
004ef1944 	stp	q0, q1, [x21]
004ef1948 	ldr	q0, [x8, #5120]
004ef194c 	stp	q2, q0, [x21, #32]
004ef1950 	bl	#-3797072 ; -> 0x4b52900 SilentLong::op_Implicit
004ef1954 	ldr	x8, [x19, #312]
004ef1958 	cbz	x8, #164 ; -> 0x4ef19fc 
004ef195c 	add	x8, x8, #1304
004ef1960 	mov	x21, x0
004ef1964 	add	x0, sp, #80
004ef1968 	ldp	q0, q1, [x8]
004ef196c 	mov	x1, xzr
004ef1970 	stp	q0, q1, [sp, #80]
004ef1974 	ldp	q0, q2, [x8, #32]
004ef1978 	stp	q0, q2, [sp, #112]
004ef197c 	bl	#-3797116 ; -> 0x4b52900 SilentLong::op_Implicit
004ef1980 	ldr	x8, [x19, #312]
004ef1984 	cbz	x8, #120 ; -> 0x4ef19fc 
004ef1988 	add	x9, x21, w20, sxtw
004ef198c 	mov	w2, #72
004ef1990 	add	x20, x9, x0
004ef1994 	mov	w9, #19888
004ef1998 	add	x0, sp, #8
004ef199c 	add	x1, x8, x9
004ef19a0 	bl	#82288464 ; -> 0x9d6b8f0 
004ef19a4 	add	x0, sp, #8
004ef19a8 	mov	x1, xzr
004ef19ac 	bl	#-3800196 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ef19b0 	mov	w8, #1120403456
004ef19b4 	ldp	x30, x21, [sp, #288]
004ef19b8 	fmov	s1, w8
004ef19bc 	mov	x8, #9218868437227405312
004ef19c0 	ldr	x29, [sp, #272]
004ef19c4 	fadd	s0, s0, s1
004ef19c8 	fdiv	s0, s0, s1
004ef19cc 	scvtf	d1, x20
004ef19d0 	fcvt	d0, s0
004ef19d4 	fmul	d0, d1, d0
004ef19d8 	fmov	d1, x8
004ef19dc 	mov	x8, #-9223372036854775808
004ef19e0 	fcvtzs	x9, d0
004ef19e4 	fcmp	d0, d1
004ef19e8 	csel	x0, x8, x9, eq
004ef19ec 	str	x0, [x19, #1680]
004ef19f0 	ldp	x20, x19, [sp, #304]
004ef19f4 	add	sp, sp, #320
004ef19f8 	ret
004ef19fc 	bl	#-9833712 ; -> 0x4590d0c 
