004e9706c 	sub	sp, sp, #144
004e97070 	str	x30, [sp, #96]
004e97074 	stp	x22, x21, [sp, #112]
004e97078 	stp	x20, x19, [sp, #128]
004e9707c 	adrp	x21, #97771520 ; -> 0xabd5000
004e97080 	adrp	x22, #89726976 ; -> 0xa429000
004e97084 	mov	x19, x1
004e97088 	ldrb	w8, [x21, #836]
004e9708c 	ldr	x22, [x22, #2904]
004e97090 	mov	x20, x0
004e97094 	tbnz	w8, #0, #36 ; -> 0x4e970b8
004e97098 	adrp	x0, #89726976 ; -> 0xa429000
004e9709c 	ldr	x0, [x0, #2904]
004e970a0 	bl	#-9463360 ; -> 0x4590a60
004e970a4 	adrp	x0, #89485312 ; -> 0xa3ee000
004e970a8 	ldr	x0, [x0, #4008]
004e970ac 	bl	#-9463372 ; -> 0x4590a60
004e970b0 	mov	w8, #1
004e970b4 	strb	w8, [x21, #836]
004e970b8 	ldr	x0, [x22]
004e970bc 	bl	#-9462720 ; -> 0x4590cfc
004e970c0 	mov	x1, xzr
004e970c4 	mov	x21, x0
004e970c8 	bl	#67260768 ; -> 0x8ebc228 [System.Object::.ctor]
004e970cc 	mov	x0, x20
004e970d0 	mov	x1, x21
004e970d4 	str	x21, [x0, #184]!
004e970d8 	bl	#-9463508 ; -> 0x4590a04
004e970dc 	mov	x0, x20
004e970e0 	mov	x1, xzr
004e970e4 	bl	#67260740 ; -> 0x8ebc228 [System.Object::.ctor]
004e970e8 	cbz	x19, #172 ; -> 0x4e97194
004e970ec 	ldr	d0, [x19, #16]
004e970f0 	add	x8, sp, #48
004e970f4 	mov	w0, wzr
004e970f8 	mov	x1, xzr
004e970fc 	stur	d0, [x20, #20]
004e97100 	bl	#-8106276 ; -> 0x46dbfdc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e97104 	ldp	q0, q1, [sp, #48]
004e97108 	add	x0, x20, #32
004e9710c 	ldr	q2, [sp, #80]
004e97110 	mov	x1, xzr
004e97114 	stp	q0, q1, [x20, #32]
004e97118 	str	q2, [x20, #64]
004e9711c 	bl	#-9463576 ; -> 0x4590a04
004e97120 	ldr	d0, [x19, #24]
004e97124 	mov	x8, sp
004e97128 	mov	w0, wzr
004e9712c 	mov	x1, xzr
004e97130 	rev64	v0.2s, v0.2s
004e97134 	str	d0, [x20, #80]
004e97138 	bl	#-8106332 ; -> 0x46dbfdc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004e9713c 	ldp	q0, q1, [sp]
004e97140 	add	x0, x20, #104
004e97144 	ldr	q2, [sp, #32]
004e97148 	mov	x1, xzr
004e9714c 	stur	q0, [x20, #104]
004e97150 	stur	q1, [x20, #120]
004e97154 	stur	q2, [x20, #136]
004e97158 	bl	#-9463636 ; -> 0x4590a04
004e9715c 	ldrb	w8, [x19, #32]
004e97160 	ldr	x9, [x19, #40]
004e97164 	ldr	w10, [x19, #48]
004e97168 	ldur	d0, [x19, #52]
004e9716c 	strb	wzr, [x20, #153]
004e97170 	ldr	x30, [sp, #96]
004e97174 	strb	w8, [x20, #152]
004e97178 	ldp	x22, x21, [sp, #112]
004e9717c 	str	x9, [x20, #160]
004e97180 	str	w10, [x20, #168]
004e97184 	stur	d0, [x20, #172]
004e97188 	ldp	x20, x19, [sp, #128]
004e9718c 	add	sp, sp, #144
004e97190 	ret
004e97194 	bl	#-9462920 ; -> 0x4590d0c