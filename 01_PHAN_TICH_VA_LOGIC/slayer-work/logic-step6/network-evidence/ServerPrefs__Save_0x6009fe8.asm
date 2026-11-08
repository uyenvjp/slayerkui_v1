0051effe4 	str	x30, [sp, #-64]!
0051effe8 	stp	x24, x23, [sp, #16]
0051effec 	stp	x22, x21, [sp, #32]
0051efff0 	stp	x20, x19, [sp, #48]
0051efff4 	adrp	x20, #94269440 ; -> 0xabd6000 
0051efff8 	mov	w19, w0
0051efffc 	ldrb	w8, [x20, #3144]
0051f0000 	tbnz	w8, #0, #96 ; -> 0x51f0060 
0051f0004 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0008 	ldr	x0, [x0, #40]
0051f000c 	bl	#-12973484 ; -> 0x4590a60 
0051f0010 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0014 	ldr	x0, [x0, #48]
0051f0018 	bl	#-12973496 ; -> 0x4590a60 
0051f001c 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0020 	ldr	x0, [x0, #56]
0051f0024 	bl	#-12973508 ; -> 0x4590a60 
0051f0028 	adrp	x0, #85958656 ; -> 0xa3ea000 
0051f002c 	ldr	x0, [x0, #1488]
0051f0030 	bl	#-12973520 ; -> 0x4590a60 
0051f0034 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f0038 	ldr	x0, [x0, #2048]
0051f003c 	bl	#-12973532 ; -> 0x4590a60 
0051f0040 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0044 	ldr	x0, [x0, #64]
0051f0048 	bl	#-12973544 ; -> 0x4590a60 
0051f004c 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0050 	ldr	x0, [x0, #72]
0051f0054 	bl	#-12973556 ; -> 0x4590a60 
0051f0058 	mov	w8, #1
0051f005c 	strb	w8, [x20, #3144]
0051f0060 	mov	w0, #2424
0051f0064 	mov	x1, xzr
0051f0068 	bl	#-5933764 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f006c 	tbz	w0, #0, #48 ; -> 0x51f009c 
0051f0070 	mov	w0, #2424
0051f0074 	mov	x1, xzr
0051f0078 	bl	#-5933600 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f007c 	cbz	x0, #384 ; -> 0x51f01fc 
0051f0080 	and	w1, w19, #0x1
0051f0084 	ldp	x20, x19, [sp, #48]
0051f0088 	ldp	x22, x21, [sp, #32]
0051f008c 	mov	x2, xzr
0051f0090 	ldp	x24, x23, [sp, #16]
0051f0094 	ldr	x30, [sp], #64
0051f0098 	b	#-6751112 ; -> 0x4b7fd10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_32
0051f009c 	adrp	x23, #85983232 ; -> 0xa3f0000 
0051f00a0 	ldr	x23, [x23, #2048]
0051f00a4 	ldr	x0, [x23]
0051f00a8 	ldr	w8, [x0, #228]
0051f00ac 	cbnz	w8, #12 ; -> 0x51f00b8 
0051f00b0 	bl	#-12973264 ; -> 0x4590be0 
0051f00b4 	ldr	x0, [x23]
0051f00b8 	ldr	x8, [x0, #184]
0051f00bc 	ldr	x0, [x8]
0051f00c0 	cbz	x0, #192 ; -> 0x51f0180 
0051f00c4 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f00c8 	ldr	x8, [x8, #40]
0051f00cc 	ldr	x1, [x8]
0051f00d0 	bl	#50038820 ; -> 0x81a88f4 
0051f00d4 	adrp	x24, #86286336 ; -> 0xa43a000 
0051f00d8 	mov	x20, x0
0051f00dc 	ldr	x24, [x24, #72]
0051f00e0 	ldr	x8, [x24]
0051f00e4 	ldr	w9, [x8, #228]
0051f00e8 	cbnz	w9, #16 ; -> 0x51f00f8 
0051f00ec 	mov	x0, x8
0051f00f0 	bl	#-12973328 ; -> 0x4590be0 
0051f00f4 	ldr	x8, [x24]
0051f00f8 	ldr	x9, [x8, #184]
0051f00fc 	ldr	x21, [x9, #8]
0051f0100 	cbnz	x21, #96 ; -> 0x51f0160 
0051f0104 	ldr	w10, [x8, #228]
0051f0108 	cbnz	w10, #20 ; -> 0x51f011c 
0051f010c 	mov	x0, x8
0051f0110 	bl	#-12973360 ; -> 0x4590be0 
0051f0114 	ldr	x8, [x24]
0051f0118 	ldr	x9, [x8, #184]
0051f011c 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0120 	ldr	x8, [x8, #56]
0051f0124 	ldr	x22, [x9]
0051f0128 	ldr	x0, [x8]
0051f012c 	bl	#-12973104 ; -> 0x4590cfc 
0051f0130 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0134 	mov	x1, x22
0051f0138 	mov	x3, xzr
0051f013c 	ldr	x8, [x8, #64]
0051f0140 	mov	x21, x0
0051f0144 	ldr	x2, [x8]
0051f0148 	bl	#22332904 ; -> 0x673c730 
0051f014c 	ldr	x8, [x24]
0051f0150 	mov	x1, x21
0051f0154 	ldr	x0, [x8, #184]
0051f0158 	str	x21, [x0, #8]!
0051f015c 	bl	#-12973912 ; -> 0x4590a04 
0051f0160 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0164 	mov	x0, x20
0051f0168 	mov	x1, x21
0051f016c 	ldr	x8, [x8, #48]
0051f0170 	ldr	x2, [x8]
0051f0174 	bl	#13539288 ; -> 0x5ed994c 
0051f0178 	and	w8, w0, #0x1
0051f017c 	b	#8 ; -> 0x51f0184 
0051f0180 	mov	w8, wzr
0051f0184 	and	w9, w19, #0x1
0051f0188 	orr	w8, w8, w9
0051f018c 	cbz	w8, #92 ; -> 0x51f01e8 
0051f0190 	ldr	x0, [x23]
0051f0194 	ldr	w8, [x0, #228]
0051f0198 	cbnz	w8, #12 ; -> 0x51f01a4 
0051f019c 	bl	#-12973500 ; -> 0x4590be0 
0051f01a0 	ldr	x0, [x23]
0051f01a4 	adrp	x8, #85958656 ; -> 0xa3ea000 
0051f01a8 	ldr	x8, [x8, #1488]
0051f01ac 	ldr	x9, [x0, #184]
0051f01b0 	ldr	x8, [x8]
0051f01b4 	ldr	x19, [x9]
0051f01b8 	ldr	w10, [x8, #228]
0051f01bc 	cbnz	w10, #12 ; -> 0x51f01c8 
0051f01c0 	mov	x0, x8
0051f01c4 	bl	#-12973540 ; -> 0x4590be0 
0051f01c8 	mov	x0, x19
0051f01cc 	mov	x1, xzr
0051f01d0 	bl	#64044336 ; -> 0x8f03f00 Newtonsoft.Json.JsonConvert::SerializeObject
0051f01d4 	ldp	x20, x19, [sp, #48]
0051f01d8 	ldp	x22, x21, [sp, #32]
0051f01dc 	ldp	x24, x23, [sp, #16]
0051f01e0 	ldr	x30, [sp], #64
0051f01e4 	b	#28 ; -> 0x51f0200 ServerPrefs::RequestServerSync
0051f01e8 	ldp	x20, x19, [sp, #48]
0051f01ec 	ldp	x22, x21, [sp, #32]
0051f01f0 	ldp	x24, x23, [sp, #16]
0051f01f4 	ldr	x30, [sp], #64
0051f01f8 	ret
0051f01fc 	bl	#-12973296 ; -> 0x4590d0c 
