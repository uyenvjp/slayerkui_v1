0052a4178 	sub	sp, sp, #128
0052a417c 	str	x30, [sp, #48]
0052a4180 	stp	x26, x25, [sp, #64]
0052a4184 	stp	x24, x23, [sp, #80]
0052a4188 	stp	x22, x21, [sp, #96]
0052a418c 	stp	x20, x19, [sp, #112]
0052a4190 	adrp	x20, #93532160 ; -> 0xabd7000 
0052a4194 	mov	x19, x0
0052a4198 	ldrb	w8, [x20, #427]
0052a419c 	tbnz	w8, #0, #84 ; -> 0x52a41f0 
0052a41a0 	adrp	x0, #85426176 ; -> 0xa41c000 
0052a41a4 	ldr	x0, [x0, #3400]
0052a41a8 	bl	#-13711176 ; -> 0x4590a60 
0052a41ac 	adrp	x0, #85237760 ; -> 0xa3ee000 
0052a41b0 	ldr	x0, [x0, #2104]
0052a41b4 	bl	#-13711188 ; -> 0x4590a60 
0052a41b8 	adrp	x0, #85217280 ; -> 0xa3e9000 
0052a41bc 	ldr	x0, [x0, #1384]
0052a41c0 	bl	#-13711200 ; -> 0x4590a60 
0052a41c4 	adrp	x0, #85471232 ; -> 0xa427000 
0052a41c8 	ldr	x0, [x0, #640]
0052a41cc 	bl	#-13711212 ; -> 0x4590a60 
0052a41d0 	adrp	x0, #85463040 ; -> 0xa425000 
0052a41d4 	ldr	x0, [x0, #536]
0052a41d8 	bl	#-13711224 ; -> 0x4590a60 
0052a41dc 	adrp	x0, #85217280 ; -> 0xa3e9000 
0052a41e0 	ldr	x0, [x0, #736]
0052a41e4 	bl	#-13711236 ; -> 0x4590a60 
0052a41e8 	mov	w8, #1
0052a41ec 	strb	w8, [x20, #427]
0052a41f0 	mov	w0, #1558
0052a41f4 	mov	x1, xzr
0052a41f8 	bl	#-6671444 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052a41fc 	tbz	w0, #0, #56 ; -> 0x52a4234 
0052a4200 	mov	w0, #1558
0052a4204 	mov	x1, xzr
0052a4208 	bl	#-6671280 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052a420c 	cbz	x0, #888 ; -> 0x52a4584 
0052a4210 	mov	x1, x19
0052a4214 	ldp	x20, x19, [sp, #112]
0052a4218 	ldp	x22, x21, [sp, #96]
0052a421c 	mov	x2, xzr
0052a4220 	ldp	x24, x23, [sp, #80]
0052a4224 	ldr	x30, [sp, #48]
0052a4228 	ldp	x26, x25, [sp, #64]
0052a422c 	add	sp, sp, #128
0052a4230 	b	#-7494928 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0052a4234 	adrp	x20, #85217280 ; -> 0xa3e9000 
0052a4238 	adrp	x21, #85426176 ; -> 0xa41c000 
0052a423c 	ldr	x20, [x20, #736]
0052a4240 	ldr	x0, [x20]
0052a4244 	ldr	w8, [x0, #228]
0052a4248 	ldr	x21, [x21, #3400]
0052a424c 	cbnz	w8, #12 ; -> 0x52a4258 
0052a4250 	bl	#-13710960 ; -> 0x4590be0 
0052a4254 	ldr	x0, [x20]
0052a4258 	ldr	x8, [x0, #184]
0052a425c 	ldr	x0, [x21]
0052a4260 	ldr	x20, [x8, #192]
0052a4264 	bl	#-13710696 ; -> 0x4590cfc 
0052a4268 	mov	x1, x20
0052a426c 	mov	x2, xzr
0052a4270 	mov	x21, x0
0052a4274 	bl	#-12436196 ; -> 0x46c7f90 AdjustSdk.AdjustEvent::.ctor
0052a4278 	mov	x0, x21
0052a427c 	mov	x1, xzr
0052a4280 	bl	#-12499284 ; -> 0x46b892c AdjustSdk.Adjust::TrackEvent
0052a4284 	ldr	x0, [x19, #184]
0052a4288 	cbz	x0, #764 ; -> 0x52a4584 
0052a428c 	mov	w1, #1
0052a4290 	mov	x2, xzr
0052a4294 	bl	#74840384 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
0052a4298 	ldr	x0, [x19, #208]
0052a429c 	cbz	x0, #744 ; -> 0x52a4584 
0052a42a0 	mov	w1, #1
0052a42a4 	mov	x2, xzr
0052a42a8 	bl	#78201924 ; -> 0x9d386ec UnityEngine.UI.Selectable::set_interactable
0052a42ac 	ldr	x0, [x19, #264]
0052a42b0 	cbz	x0, #724 ; -> 0x52a4584 
0052a42b4 	mov	w1, #1
0052a42b8 	mov	x2, xzr
0052a42bc 	bl	#78201904 ; -> 0x9d386ec UnityEngine.UI.Selectable::set_interactable
0052a42c0 	ldr	x0, [x19, #224]
0052a42c4 	mov	w8, #-1
0052a42c8 	str	w8, [x19, #216]
0052a42cc 	cbz	x0, #696 ; -> 0x52a4584 
0052a42d0 	mov	w1, wzr
0052a42d4 	mov	x2, xzr
0052a42d8 	bl	#74840316 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
0052a42dc 	ldr	x8, [x19, #32]
0052a42e0 	cbz	x8, #676 ; -> 0x52a4584 
0052a42e4 	adrp	x23, #85237760 ; -> 0xa3ee000 
0052a42e8 	ldr	x23, [x23, #2104]
0052a42ec 	ldr	x20, [x19, #248]
0052a42f0 	ldr	w21, [x8, #1428]
0052a42f4 	ldr	x0, [x23]
0052a42f8 	ldr	w9, [x0, #228]
0052a42fc 	cbnz	w9, #8 ; -> 0x52a4304 
0052a4300 	bl	#-13711136 ; -> 0x4590be0 
0052a4304 	adrp	x24, #93499392 ; -> 0xabcf000 
0052a4308 	ldrb	w8, [x24, #360]
0052a430c 	cbnz	w8, #24 ; -> 0x52a4324 
0052a4310 	adrp	x0, #85237760 ; -> 0xa3ee000 
0052a4314 	ldr	x0, [x0, #2104]
0052a4318 	bl	#-13711544 ; -> 0x4590a60 
0052a431c 	mov	w8, #1
0052a4320 	strb	w8, [x24, #360]
0052a4324 	ldr	x0, [x23]
0052a4328 	ldr	w8, [x0, #228]
0052a432c 	cbnz	w8, #12 ; -> 0x52a4338 
0052a4330 	bl	#-13711184 ; -> 0x4590be0 
0052a4334 	ldr	x0, [x23]
0052a4338 	ldr	x8, [x0, #184]
0052a433c 	ldr	x9, [x8]
0052a4340 	cbz	x9, #580 ; -> 0x52a4584 
0052a4344 	ldr	x8, [x19, #32]
0052a4348 	cbz	x8, #572 ; -> 0x52a4584 
0052a434c 	ldr	x0, [x9, #456]
0052a4350 	cbz	x0, #564 ; -> 0x52a4584 
0052a4354 	adrp	x25, #85463040 ; -> 0xa425000 
0052a4358 	ldr	x25, [x25, #536]
0052a435c 	ldr	w1, [x8, #1424]
0052a4360 	ldr	x2, [x25]
0052a4364 	bl	#47924272 ; -> 0x8058794 
0052a4368 	ldrb	w8, [x24, #360]
0052a436c 	mov	x22, x0
0052a4370 	cbnz	w8, #24 ; -> 0x52a4388 
0052a4374 	adrp	x0, #85237760 ; -> 0xa3ee000 
0052a4378 	ldr	x0, [x0, #2104]
0052a437c 	bl	#-13711644 ; -> 0x4590a60 
0052a4380 	mov	w8, #1
0052a4384 	strb	w8, [x24, #360]
0052a4388 	ldr	x0, [x23]
0052a438c 	ldr	w8, [x0, #228]
0052a4390 	cbnz	w8, #12 ; -> 0x52a439c 
0052a4394 	bl	#-13711284 ; -> 0x4590be0 
0052a4398 	ldr	x0, [x23]
0052a439c 	ldr	x8, [x0, #184]
0052a43a0 	ldr	x8, [x8]
0052a43a4 	cbz	x8, #480 ; -> 0x52a4584 
0052a43a8 	ldr	x0, [x8, #480]
0052a43ac 	cbz	x0, #472 ; -> 0x52a4584 
0052a43b0 	adrp	x26, #85471232 ; -> 0xa427000 
0052a43b4 	mov	w1, wzr
0052a43b8 	ldr	x26, [x26, #640]
0052a43bc 	ldr	x2, [x26]
0052a43c0 	bl	#47924180 ; -> 0x8058794 
0052a43c4 	ldr	x8, [x19, #32]
0052a43c8 	cbz	x8, #444 ; -> 0x52a4584 
0052a43cc 	cbz	x20, #440 ; -> 0x52a4584 
0052a43d0 	ldr	w6, [x8, #1412]
0052a43d4 	ldr	w5, [x8, #1420]
0052a43d8 	mov	x4, x0
0052a43dc 	mov	w3, wzr
0052a43e0 	mov	w7, wzr
0052a43e4 	mov	x0, x20
0052a43e8 	mov	w1, w21
0052a43ec 	mov	x2, x22
0052a43f0 	str	xzr, [sp, #40]
0052a43f4 	str	wzr, [sp, #32]
0052a43f8 	str	wzr, [sp, #24]
0052a43fc 	str	wzr, [sp, #16]
0052a4400 	str	wzr, [sp, #8]
0052a4404 	str	wzr, [sp]
0052a4408 	bl	#671580 ; -> 0x5348364 CharacterDisplay::DisplaySetting
0052a440c 	ldr	x8, [x19, #32]
0052a4410 	cbz	x8, #372 ; -> 0x52a4584 
0052a4414 	ldrb	w9, [x24, #360]
0052a4418 	ldr	x20, [x19, #256]
0052a441c 	ldr	w21, [x8, #1472]
0052a4420 	cbnz	w9, #24 ; -> 0x52a4438 
0052a4424 	adrp	x0, #85237760 ; -> 0xa3ee000 
0052a4428 	ldr	x0, [x0, #2104]
0052a442c 	bl	#-13711820 ; -> 0x4590a60 
0052a4430 	mov	w8, #1
0052a4434 	strb	w8, [x24, #360]
0052a4438 	ldr	x0, [x23]
0052a443c 	ldr	w8, [x0, #228]
0052a4440 	cbnz	w8, #12 ; -> 0x52a444c 
0052a4444 	bl	#-13711460 ; -> 0x4590be0 
0052a4448 	ldr	x0, [x23]
0052a444c 	ldr	x8, [x0, #184]
0052a4450 	ldr	x9, [x8]
0052a4454 	cbz	x9, #304 ; -> 0x52a4584 
0052a4458 	ldr	x8, [x19, #32]
0052a445c 	cbz	x8, #296 ; -> 0x52a4584 
0052a4460 	ldr	x0, [x9, #456]
0052a4464 	cbz	x0, #288 ; -> 0x52a4584 
0052a4468 	ldr	w1, [x8, #1468]
0052a446c 	ldr	x2, [x25]
0052a4470 	bl	#47924004 ; -> 0x8058794 
0052a4474 	ldrb	w8, [x24, #360]
0052a4478 	mov	x22, x0
0052a447c 	cbnz	w8, #24 ; -> 0x52a4494 
0052a4480 	adrp	x0, #85237760 ; -> 0xa3ee000 
0052a4484 	ldr	x0, [x0, #2104]
0052a4488 	bl	#-13711912 ; -> 0x4590a60 
0052a448c 	mov	w8, #1
0052a4490 	strb	w8, [x24, #360]
0052a4494 	ldr	x0, [x23]
0052a4498 	ldr	w8, [x0, #228]
0052a449c 	cbnz	w8, #12 ; -> 0x52a44a8 
0052a44a0 	bl	#-13711552 ; -> 0x4590be0 
0052a44a4 	ldr	x0, [x23]
0052a44a8 	ldr	x8, [x0, #184]
0052a44ac 	ldr	x8, [x8]
0052a44b0 	cbz	x8, #212 ; -> 0x52a4584 
0052a44b4 	ldr	x0, [x8, #480]
0052a44b8 	cbz	x0, #204 ; -> 0x52a4584 
0052a44bc 	ldr	x2, [x26]
0052a44c0 	mov	w1, wzr
0052a44c4 	bl	#47923920 ; -> 0x8058794 
0052a44c8 	ldr	x8, [x19, #32]
0052a44cc 	cbz	x8, #184 ; -> 0x52a4584 
0052a44d0 	cbz	x20, #180 ; -> 0x52a4584 
0052a44d4 	ldr	w6, [x8, #1456]
0052a44d8 	ldr	w5, [x8, #1464]
0052a44dc 	mov	x4, x0
0052a44e0 	mov	w3, wzr
0052a44e4 	mov	w7, wzr
0052a44e8 	mov	w8, #1
0052a44ec 	mov	x0, x20
0052a44f0 	mov	w1, w21
0052a44f4 	mov	x2, x22
0052a44f8 	str	xzr, [sp, #40]
0052a44fc 	str	wzr, [sp, #32]
0052a4500 	str	wzr, [sp, #24]
0052a4504 	str	wzr, [sp, #16]
0052a4508 	str	w8, [sp, #8]
0052a450c 	str	wzr, [sp]
0052a4510 	bl	#671316 ; -> 0x5348364 CharacterDisplay::DisplaySetting
0052a4514 	adrp	x8, #85217280 ; -> 0xa3e9000 
0052a4518 	ldr	x8, [x8, #1384]
0052a451c 	ldr	x0, [x8]
0052a4520 	ldr	w8, [x0, #228]
0052a4524 	cbnz	w8, #8 ; -> 0x52a452c 
0052a4528 	bl	#-13711688 ; -> 0x4590be0 
0052a452c 	mov	x0, xzr
0052a4530 	bl	#-5656004 ; -> 0x4d3f76c DatabaseManager::get_CurrentServerRegion
0052a4534 	ldr	x19, [x19, #200]
0052a4538 	cbz	w0, #64 ; -> 0x52a4578 
0052a453c 	mov	x0, xzr
0052a4540 	bl	#-9927880 ; -> 0x492c878 STR::get_USERNAME_RULE_GLOBAL
0052a4544 	cbz	x19, #64 ; -> 0x52a4584 
0052a4548 	ldr	x8, [x19]
0052a454c 	mov	x1, x0
0052a4550 	mov	x0, x19
0052a4554 	ldp	x20, x19, [sp, #112]
0052a4558 	ldr	x30, [sp, #48]
0052a455c 	ldp	x22, x21, [sp, #96]
0052a4560 	ldr	x2, [x8, #1520]
0052a4564 	ldp	x24, x23, [sp, #80]
0052a4568 	ldr	x3, [x8, #1512]
0052a456c 	ldp	x26, x25, [sp, #64]
0052a4570 	add	sp, sp, #128
0052a4574 	br	x3
0052a4578 	mov	x0, xzr
0052a457c 	bl	#-9928048 ; -> 0x492c80c STR::get_USERNAME_RULE_KOR
0052a4580 	cbnz	x19, #-56 ; -> 0x52a4548 
0052a4584 	bl	#-13711480 ; -> 0x4590d0c 
