00894eed4 	stp	x30, x21, [sp, #-32]!
00894eed8 	stp	x20, x19, [sp, #16]
00894eedc 	adrp	x20, #36270080 ; -> 0xabe5000 
00894eee0 	adrp	x21, #27889664 ; -> 0xa3e7000 
00894eee4 	mov	x19, x0
00894eee8 	ldrb	w8, [x20, #3429]
00894eeec 	ldr	x21, [x21, #3440]
00894eef0 	tbnz	w8, #0, #24 ; -> 0x894ef08 
00894eef4 	adrp	x0, #27889664 ; -> 0xa3e7000 
00894eef8 	ldr	x0, [x0, #3440]
00894eefc 	bl	#-71034012 ; -> 0x4590a60 
00894ef00 	mov	w8, #1
00894ef04 	strb	w8, [x20, #3429]
00894ef08 	ldr	x1, [x21]
00894ef0c 	mov	x0, x19
00894ef10 	str	x1, [x0, #32]!
00894ef14 	bl	#-71034128 ; -> 0x4590a04 
00894ef18 	mov	x0, x19
00894ef1c 	ldp	x20, x19, [sp, #16]
00894ef20 	mov	x1, xzr
00894ef24 	ldp	x30, x21, [sp], #32
00894ef28 	b	#5690112 ; -> 0x8ebc228 System.Object::.ctor
