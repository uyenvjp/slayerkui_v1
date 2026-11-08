0050f0c80 	stp	x30, x25, [sp, #-64]!
0050f0c84 	stp	x24, x23, [sp, #16]
0050f0c88 	stp	x22, x21, [sp, #32]
0050f0c8c 	stp	x20, x19, [sp, #48]
0050f0c90 	adrp	x24, #87318528 ; -> 0xa436000 
0050f0c94 	adrp	x19, #87318528 ; -> 0xa436000 
0050f0c98 	adrp	x20, #87023616 ; -> 0xa3ee000 
0050f0c9c 	adrp	x25, #95313920 ; -> 0xabd6000 
0050f0ca0 	adrp	x23, #87318528 ; -> 0xa436000 
0050f0ca4 	adrp	x22, #87318528 ; -> 0xa436000 
0050f0ca8 	adrp	x21, #87023616 ; -> 0xa3ee000 
0050f0cac 	ldr	x24, [x24, #2136]
0050f0cb0 	ldr	x19, [x19, #2144]
0050f0cb4 	ldr	x20, [x20, #3648]
0050f0cb8 	ldr	x23, [x23, #2152]
0050f0cbc 	ldrb	w8, [x25, #1259]
0050f0cc0 	ldr	x22, [x22, #2160]
0050f0cc4 	ldr	x21, [x21, #2264]
0050f0cc8 	tbnz	w8, #0, #84 ; -> 0x50f0d1c 
0050f0ccc 	adrp	x0, #87023616 ; -> 0xa3ee000 
0050f0cd0 	ldr	x0, [x0, #3648]
0050f0cd4 	bl	#-11928180 ; -> 0x4590a60 
0050f0cd8 	adrp	x0, #87318528 ; -> 0xa436000 
0050f0cdc 	ldr	x0, [x0, #2160]
0050f0ce0 	bl	#-11928192 ; -> 0x4590a60 
0050f0ce4 	adrp	x0, #87318528 ; -> 0xa436000 
0050f0ce8 	ldr	x0, [x0, #2152]
0050f0cec 	bl	#-11928204 ; -> 0x4590a60 
0050f0cf0 	adrp	x0, #87318528 ; -> 0xa436000 
0050f0cf4 	ldr	x0, [x0, #2144]
0050f0cf8 	bl	#-11928216 ; -> 0x4590a60 
0050f0cfc 	adrp	x0, #87318528 ; -> 0xa436000 
0050f0d00 	ldr	x0, [x0, #2136]
0050f0d04 	bl	#-11928228 ; -> 0x4590a60 
0050f0d08 	adrp	x0, #87023616 ; -> 0xa3ee000 
0050f0d0c 	ldr	x0, [x0, #2264]
0050f0d10 	bl	#-11928240 ; -> 0x4590a60 
0050f0d14 	mov	w8, #1
0050f0d18 	strb	w8, [x25, #1259]
0050f0d1c 	ldr	x0, [x24]
0050f0d20 	bl	#-11927588 ; -> 0x4590cfc 
0050f0d24 	ldr	x1, [x19]
0050f0d28 	mov	x19, x0
0050f0d2c 	bl	#33915476 ; -> 0x7148f80 
0050f0d30 	ldr	x8, [x20]
0050f0d34 	mov	x1, x19
0050f0d38 	ldr	x0, [x8, #184]
0050f0d3c 	str	x19, [x0, #32]!
0050f0d40 	bl	#-11928380 ; -> 0x4590a04 
0050f0d44 	ldr	x0, [x23]
0050f0d48 	bl	#-11927628 ; -> 0x4590cfc 
0050f0d4c 	ldr	x1, [x22]
0050f0d50 	mov	x19, x0
0050f0d54 	bl	#49974964 ; -> 0x8099c08 
0050f0d58 	ldr	x8, [x20]
0050f0d5c 	mov	x1, x19
0050f0d60 	ldr	x0, [x8, #184]
0050f0d64 	str	x19, [x0, #40]!
0050f0d68 	bl	#-11928420 ; -> 0x4590a04 
0050f0d6c 	ldr	x0, [x21]
0050f0d70 	bl	#-11927668 ; -> 0x4590cfc 
0050f0d74 	mov	x1, xzr
0050f0d78 	mov	x19, x0
0050f0d7c 	bl	#70194848 ; -> 0x93e241c System.Diagnostics.Stopwatch::.ctor
0050f0d80 	ldr	x8, [x20]
0050f0d84 	mov	x1, x19
0050f0d88 	ldr	x0, [x8, #184]
0050f0d8c 	str	x19, [x0, #48]!
0050f0d90 	bl	#-11928460 ; -> 0x4590a04 
0050f0d94 	ldr	x8, [x20]
0050f0d98 	ldp	x20, x19, [sp, #48]
0050f0d9c 	ldp	x22, x21, [sp, #32]
0050f0da0 	ldr	x8, [x8, #184]
0050f0da4 	ldp	x24, x23, [sp, #16]
0050f0da8 	strh	wzr, [x8, #56]
0050f0dac 	strb	wzr, [x8, #58]
0050f0db0 	ldp	x30, x25, [sp], #64
0050f0db4 	ret
