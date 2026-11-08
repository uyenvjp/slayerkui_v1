004fd80c0 	str	x30, [sp, #-32]!
004fd80c4 	stp	x20, x19, [sp, #16]
004fd80c8 	adrp	x20, #96456704 ; -> 0xabd5000 
004fd80cc 	mov	x19, x0
004fd80d0 	ldrb	w8, [x20, #3176]
004fd80d4 	tbnz	w8, #0, #72 ; -> 0x4fd811c 
004fd80d8 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd80dc 	ldr	x0, [x0, #1280]
004fd80e0 	bl	#-10778240 ; -> 0x4590a60 
004fd80e4 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd80e8 	ldr	x0, [x0, #1328]
004fd80ec 	bl	#-10778252 ; -> 0x4590a60 
004fd80f0 	adrp	x0, #88154112 ; -> 0xa3ea000 
004fd80f4 	ldr	x0, [x0, #2232]
004fd80f8 	bl	#-10778264 ; -> 0x4590a60 
004fd80fc 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd8100 	ldr	x0, [x0, #312]
004fd8104 	bl	#-10778276 ; -> 0x4590a60 
004fd8108 	adrp	x0, #88436736 ; -> 0xa42f000 
004fd810c 	ldr	x0, [x0, #320]
004fd8110 	bl	#-10778288 ; -> 0x4590a60 
004fd8114 	mov	w8, #1
004fd8118 	strb	w8, [x20, #3176]
004fd811c 	mov	w0, #3418
004fd8120 	mov	x1, xzr
004fd8124 	bl	#-3738496 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd8128 	tbz	w0, #0, #40 ; -> 0x4fd8150 
004fd812c 	mov	w0, #3418
004fd8130 	mov	x1, xzr
004fd8134 	bl	#-3738332 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8138 	cbz	x0, #232 ; -> 0x4fd8220 
004fd813c 	mov	x1, x19
004fd8140 	ldp	x20, x19, [sp, #16]
004fd8144 	mov	x2, xzr
004fd8148 	ldr	x30, [sp], #32
004fd814c 	b	#-4561964 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004fd8150 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd8154 	adrp	x19, #88154112 ; -> 0xa3ea000 
004fd8158 	ldr	x8, [x8, #1280]
004fd815c 	ldr	x0, [x8]
004fd8160 	ldr	w8, [x0, #228]
004fd8164 	ldr	x19, [x19, #2232]
004fd8168 	cbnz	w8, #8 ; -> 0x4fd8170 
004fd816c 	bl	#-10777996 ; -> 0x4590be0 
004fd8170 	adrp	x20, #88436736 ; -> 0xa42f000 
004fd8174 	mov	x0, xzr
004fd8178 	ldr	x20, [x20, #320]
004fd817c 	bl	#77454568 ; -> 0x99b5e64 UnityEngine.Application::get_persistentDataPath
004fd8180 	ldr	x8, [x19]
004fd8184 	mov	x19, x0
004fd8188 	ldr	w9, [x8, #228]
004fd818c 	cbnz	w9, #12 ; -> 0x4fd8198 
004fd8190 	mov	x0, x8
004fd8194 	bl	#-10778036 ; -> 0x4590be0 
004fd8198 	ldr	x1, [x20]
004fd819c 	mov	x0, x19
004fd81a0 	mov	x2, xzr
004fd81a4 	bl	#65484784 ; -> 0x8e4b994 System.IO.Path::Combine
004fd81a8 	mov	x1, xzr
004fd81ac 	mov	x19, x0
004fd81b0 	bl	#65331740 ; -> 0x8e263cc System.IO.Directory::Exists
004fd81b4 	tbz	w0, #0, #96 ; -> 0x4fd8214 
004fd81b8 	mov	x0, x19
004fd81bc 	mov	w1, #1
004fd81c0 	mov	x2, xzr
004fd81c4 	bl	#65384368 ; -> 0x8e33174 System.IO.Directory::Delete
004fd81c8 	adrp	x8, #88436736 ; -> 0xa42f000 
004fd81cc 	mov	x1, x19
004fd81d0 	mov	x2, xzr
004fd81d4 	ldr	x8, [x8, #312]
004fd81d8 	ldr	x0, [x8]
004fd81dc 	bl	#63913068 ; -> 0x8ccbe48 System.String::Concat
004fd81e0 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd81e4 	mov	x19, x0
004fd81e8 	ldr	x8, [x8, #1328]
004fd81ec 	ldr	x8, [x8]
004fd81f0 	ldr	w9, [x8, #228]
004fd81f4 	cbnz	w9, #12 ; -> 0x4fd8200 
004fd81f8 	mov	x0, x8
004fd81fc 	bl	#-10778140 ; -> 0x4590be0 
004fd8200 	mov	x0, x19
004fd8204 	ldp	x20, x19, [sp, #16]
004fd8208 	mov	x1, xzr
004fd820c 	ldr	x30, [sp], #32
004fd8210 	b	#77498056 ; -> 0x99c08d8 UnityEngine.Debug::Log
004fd8214 	ldp	x20, x19, [sp, #16]
004fd8218 	ldr	x30, [sp], #32
004fd821c 	ret
004fd8220 	bl	#-10777876 ; -> 0x4590d0c 
