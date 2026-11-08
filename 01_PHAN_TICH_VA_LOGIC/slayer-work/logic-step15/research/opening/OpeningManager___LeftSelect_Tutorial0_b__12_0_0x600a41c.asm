005241f2c 	str	x30, [sp, #-32]!
005241f30 	stp	x20, x19, [sp, #16]
005241f34 	adrp	x20, #93933568 ; -> 0xabd6000 
005241f38 	mov	x19, x0
005241f3c 	ldrb	w8, [x20, #3714]
005241f40 	tbnz	w8, #0, #24 ; -> 0x5241f58 
005241f44 	adrp	x0, #85647360 ; -> 0xa3ef000 
005241f48 	ldr	x0, [x0, #3392]
005241f4c 	bl	#-13309164 ; -> 0x4590a60 
005241f50 	mov	w8, #1
005241f54 	strb	w8, [x20, #3714]
005241f58 	fmov	s0, #2.00000000
005241f5c 	mov	x0, x19
005241f60 	bl	#-384 ; -> 0x5241de0 OpeningManager::Tutorial_End
005241f64 	ldr	w8, [x19, #72]
005241f68 	ldr	x0, [x19, #64]
005241f6c 	cbz	w8, #16 ; -> 0x5241f7c 
005241f70 	cbz	x0, #48 ; -> 0x5241fa0 
005241f74 	mov	w2, #30
005241f78 	b	#12 ; -> 0x5241f84 
005241f7c 	cbz	x0, #36 ; -> 0x5241fa0 
005241f80 	mov	w2, #3
005241f84 	adrp	x8, #85647360 ; -> 0xa3ef000 
005241f88 	mov	x3, xzr
005241f8c 	ldr	x8, [x8, #3392]
005241f90 	ldp	x20, x19, [sp, #16]
005241f94 	ldr	x1, [x8]
005241f98 	ldr	x30, [sp], #32
005241f9c 	b	#74838212 ; -> 0x99a1060 UnityEngine.Animator::SetInteger
005241fa0 	bl	#-13308564 ; -> 0x4590d0c 
