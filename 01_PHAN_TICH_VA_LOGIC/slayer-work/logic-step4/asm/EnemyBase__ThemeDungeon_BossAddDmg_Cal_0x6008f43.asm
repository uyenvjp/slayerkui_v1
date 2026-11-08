0050bb7d8 	sub	sp, sp, #240
0050bb7dc 	str	x30, [sp, #192]
0050bb7e0 	stp	x22, x21, [sp, #208]
0050bb7e4 	stp	x20, x19, [sp, #224]
0050bb7e8 	adrp	x22, #95531008 ; -> 0xabd6000 
0050bb7ec 	mov	x19, x2
0050bb7f0 	mov	x20, x1
0050bb7f4 	ldrb	w8, [x22, #721]
0050bb7f8 	mov	x21, x0
0050bb7fc 	tbnz	w8, #0, #24 ; -> 0x50bb814 
0050bb800 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bb804 	ldr	x0, [x0, #3552]
0050bb808 	bl	#-11709864 ; -> 0x4590a60 
0050bb80c 	mov	w8, #1
0050bb810 	strb	w8, [x22, #721]
0050bb814 	movi	v0.2d, #0000000000000000
0050bb818 	mov	w0, #31621
0050bb81c 	mov	x1, xzr
0050bb820 	stp	q0, q0, [sp, #128]
0050bb824 	stp	q0, q0, [sp, #160]
0050bb828 	bl	#-4670084 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb82c 	tbz	w0, #0, #56 ; -> 0x50bb864 
0050bb830 	mov	w0, #31621
0050bb834 	mov	x1, xzr
0050bb838 	bl	#-4669920 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb83c 	cbz	x0, #284 ; -> 0x50bb958 
0050bb840 	mov	x1, x21
0050bb844 	mov	x2, x20
0050bb848 	mov	x3, x19
0050bb84c 	ldp	x20, x19, [sp, #224]
0050bb850 	ldr	x30, [sp, #192]
0050bb854 	ldp	x22, x21, [sp, #208]
0050bb858 	mov	x4, xzr
0050bb85c 	add	sp, sp, #240
0050bb860 	b	#-5354108 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050bb864 	ldr	x8, [x21, #312]
0050bb868 	cbz	x8, #240 ; -> 0x50bb958 
0050bb86c 	ldr	q0, [x8, #22240]
0050bb870 	ldr	q1, [x8, #22256]
0050bb874 	add	x0, sp, #64
0050bb878 	ldr	q2, [x8, #22272]
0050bb87c 	ldr	q3, [x8, #22288]
0050bb880 	mov	x1, xzr
0050bb884 	stp	q0, q1, [sp, #64]
0050bb888 	stp	q2, q3, [sp, #96]
0050bb88c 	stp	q0, q1, [sp, #128]
0050bb890 	stp	q2, q3, [sp, #160]
0050bb894 	bl	#-5674308 ; -> 0x4b52350 SilentInt::op_Implicit
0050bb898 	cmp	w0, #1
0050bb89c 	b.lt	#160 ; -> 0x50bb93c 
0050bb8a0 	ldp	q0, q1, [sp, #128]
0050bb8a4 	mov	x0, sp
0050bb8a8 	mov	x1, xzr
0050bb8ac 	stp	q0, q1, [sp]
0050bb8b0 	ldp	q0, q2, [sp, #160]
0050bb8b4 	stp	q0, q2, [sp, #32]
0050bb8b8 	bl	#-5674344 ; -> 0x4b52350 SilentInt::op_Implicit
0050bb8bc 	adrp	x8, #87220224 ; -> 0xa3e9000 
0050bb8c0 	mov	w21, w0
0050bb8c4 	ldr	x8, [x8, #3552]
0050bb8c8 	ldr	x8, [x8]
0050bb8cc 	ldr	w9, [x8, #228]
0050bb8d0 	cbnz	w9, #12 ; -> 0x50bb8dc 
0050bb8d4 	mov	x0, x8
0050bb8d8 	bl	#-11709688 ; -> 0x4590be0 
0050bb8dc 	mov	w8, #100
0050bb8e0 	mov	w9, #10000
0050bb8e4 	mov	x1, xzr
0050bb8e8 	madd	w0, w21, w8, w9
0050bb8ec 	bl	#67901112 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb8f0 	mov	x2, x0
0050bb8f4 	mov	x3, x1
0050bb8f8 	mov	x0, x20
0050bb8fc 	mov	x1, x19
0050bb900 	mov	x4, xzr
0050bb904 	bl	#67891008 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bb908 	mov	x19, x0
0050bb90c 	mov	x20, x1
0050bb910 	mov	w0, #10000
0050bb914 	mov	x1, xzr
0050bb918 	bl	#67901068 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb91c 	mov	x2, x0
0050bb920 	mov	x3, x1
0050bb924 	mov	x0, x19
0050bb928 	mov	x1, x20
0050bb92c 	mov	x4, xzr
0050bb930 	bl	#67891464 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bb934 	mov	x20, x0
0050bb938 	mov	x19, x1
0050bb93c 	mov	x0, x20
0050bb940 	mov	x1, x19
0050bb944 	ldr	x30, [sp, #192]
0050bb948 	ldp	x20, x19, [sp, #224]
0050bb94c 	ldp	x22, x21, [sp, #208]
0050bb950 	add	sp, sp, #240
0050bb954 	ret
0050bb958 	bl	#-11709516 ; -> 0x4590d0c 
