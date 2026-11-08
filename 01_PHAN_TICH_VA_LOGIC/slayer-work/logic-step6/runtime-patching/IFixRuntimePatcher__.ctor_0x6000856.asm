004fd9070 	str	x30, [sp, #-48]!
004fd9074 	stp	x22, x21, [sp, #16]
004fd9078 	stp	x20, x19, [sp, #32]
004fd907c 	adrp	x21, #96452608 ; -> 0xabd5000 
004fd9080 	adrp	x20, #88137728 ; -> 0xa3e7000 
004fd9084 	mov	x19, x0
004fd9088 	ldrb	w8, [x21, #3182]
004fd908c 	ldr	x20, [x20, #1280]
004fd9090 	tbnz	w8, #0, #48 ; -> 0x4fd90c0 
004fd9094 	adrp	x0, #88137728 ; -> 0xa3e7000 
004fd9098 	ldr	x0, [x0, #1280]
004fd909c 	bl	#-10782268 ; -> 0x4590a60 
004fd90a0 	adrp	x0, #88150016 ; -> 0xa3ea000 
004fd90a4 	ldr	x0, [x0, #2232]
004fd90a8 	bl	#-10782280 ; -> 0x4590a60 
004fd90ac 	adrp	x0, #88432640 ; -> 0xa42f000 
004fd90b0 	ldr	x0, [x0, #320]
004fd90b4 	bl	#-10782292 ; -> 0x4590a60 
004fd90b8 	mov	w8, #1
004fd90bc 	strb	w8, [x21, #3182]
004fd90c0 	ldr	x0, [x20]
004fd90c4 	adrp	x21, #88150016 ; -> 0xa3ea000 
004fd90c8 	ldr	w8, [x0, #228]
004fd90cc 	ldr	x21, [x21, #2232]
004fd90d0 	cbnz	w8, #8 ; -> 0x4fd90d8 
004fd90d4 	bl	#-10781940 ; -> 0x4590be0 
004fd90d8 	adrp	x22, #88432640 ; -> 0xa42f000 
004fd90dc 	mov	x0, xzr
004fd90e0 	ldr	x22, [x22, #320]
004fd90e4 	bl	#77450624 ; -> 0x99b5e64 UnityEngine.Application::get_persistentDataPath
004fd90e8 	mov	x20, x0
004fd90ec 	mov	x0, xzr
004fd90f0 	bl	#77451940 ; -> 0x99b6394 UnityEngine.Application::get_version
004fd90f4 	ldr	x8, [x21]
004fd90f8 	mov	x21, x0
004fd90fc 	ldr	w9, [x8, #228]
004fd9100 	cbnz	w9, #12 ; -> 0x4fd910c 
004fd9104 	mov	x0, x8
004fd9108 	bl	#-10781992 ; -> 0x4590be0 
004fd910c 	ldr	x1, [x22]
004fd9110 	mov	x0, x20
004fd9114 	mov	x2, x21
004fd9118 	mov	x3, xzr
004fd911c 	bl	#65488604 ; -> 0x8e4d7f8 System.IO.Path::Combine
004fd9120 	mov	x1, x0
004fd9124 	mov	x0, x19
004fd9128 	str	x1, [x0, #16]!
004fd912c 	bl	#-10782504 ; -> 0x4590a04 
004fd9130 	mov	x0, x19
004fd9134 	ldp	x20, x19, [sp, #32]
004fd9138 	ldp	x22, x21, [sp, #16]
004fd913c 	mov	x1, xzr
004fd9140 	ldr	x30, [sp], #48
004fd9144 	b	#65941732 ; -> 0x8ebc228 System.Object::.ctor
