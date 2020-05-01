	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	arm_func_start FUN_021D8D18
FUN_021D8D18: ; 0x021D8D18
	stmdb sp!, {r4, lr}
	ldr r2, _021D8D58 ; =0x02210468
	ldr r1, _021D8D5C ; =0x000013D8
	ldr r2, [r2]
	mov r4, r0
	add r0, r2, r1
	bl OS_LockMutex
	ldr r2, _021D8D58 ; =0x02210468
	ldr r1, _021D8D5C ; =0x000013D8
	ldr r0, [r2]
	add r0, r0, #0x1000
	str r4, [r0, #4]
	ldr r0, [r2]
	add r0, r0, r1
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_021D8D58: .word 0x02210468
_021D8D5C: .word 0x000013D8

	arm_func_start FUN_021D8D60
FUN_021D8D60: ; 0x021D8D60
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x98
	ldr r4, _021D8EE0 ; =0x0221046C
	mov r3, #0
	ldr r5, [r4, #4]
	ldr ip, [r4]
	cmp r5, r3
	mov r5, r0
	mov r6, r1
	mov r4, r2
	cmpeq ip, r3
	bne _021D8DC0
	ldr r0, _021D8EE4 ; =0x0220BEF8
	bl strlen
	mov r3, r0
	ldr r1, _021D8EE8 ; =0x0220BF04
	ldr r2, _021D8EE4 ; =0x0220BEF8
	mov r0, r5
	bl FUN_021DAB68
	cmp r0, #0
	beq _021D8E18
	add sp, sp, #0x98
	mov r0, #8
	ldmia sp!, {r4, r5, r6, pc}
_021D8DC0:
	ldr r0, _021D8EEC ; =0x0220BF0C
	bl strlen
	mov r3, r0
	ldr r1, _021D8EE8 ; =0x0220BF04
	ldr r2, _021D8EEC ; =0x0220BF0C
	mov r0, r5
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _021D8EF0 ; =0x0220BF14
	mov r0, r5
	mov r2, r6
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, pc}
_021D8E18:
	ldr r1, _021D8EE0 ; =0x0221046C
	add r0, sp, #0
	bl FUN_021D9F78
	cmp r0, #0
	addeq sp, sp, #0x98
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021D8EF4 ; =0x0221048C
	add r1, sp, #0
	ldr r2, [r0]
	mov r0, r5
	bl FUN_021D9C2C
	cmp r0, #0
	addeq sp, sp, #0x98
	moveq r0, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021D8EF8 ; =0x02210460
	ldr r0, [r0]
	cmp r0, #1
	bne _021D8E94
	ldr r0, _021D8EFC ; =0x0220BF1C
	bl strlen
	mov r3, r0
	ldr r1, _021D8F00 ; =0x0220BF20
	ldr r2, _021D8EFC ; =0x0220BF1C
	mov r0, r5
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, pc}
_021D8E94:
	mov r0, r4
	bl wcslen
	cmp r0, #0
	beq _021D8ED4
	mov r0, r4
	bl wcslen
	mov r3, r0
	ldr r1, _021D8F04 ; =0x0220BF28
	mov r0, r5
	mov r2, r4
	mov r3, r3, lsl #1
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #8
	ldmneia sp!, {r4, r5, r6, pc}
_021D8ED4:
	mov r0, #0
	add sp, sp, #0x98
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021D8EE0: .word 0x0221046C
_021D8EE4: .word 0x0220BEF8
_021D8EE8: .word 0x0220BF04
_021D8EEC: .word 0x0220BF0C
_021D8EF0: .word 0x0220BF14
_021D8EF4: .word 0x0221048C
_021D8EF8: .word 0x02210460
_021D8EFC: .word 0x0220BF1C
_021D8F00: .word 0x0220BF20
_021D8F04: .word 0x0220BF28

	arm_func_start FUN_021D8F08
FUN_021D8F08: ; 0x021D8F08
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _021D91BC ; =0x02210468
	mov r1, #0
	ldr r0, [r0]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _021D91C0 ; =0x0220BF34
	bl FUN_021DA388
	str r0, [sp]
	cmp r0, #0
	beq _021D8F40
	bl FUN_021DCA84
_021D8F40:
	ldr r0, _021D91BC ; =0x02210468
	mov r2, #0
	ldr r1, [r0]
	ldr r0, _021D91C4 ; =0x021D74A8
	str r2, [sp]
	str r2, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _021D91C8 ; =0x0220BF3C
	bl FUN_021DA388
	bl atol
	ldr r1, _021D91C4 ; =0x021D74A8
	ldr r1, [r1]
	cmp r1, #0x22
	bne _021D8F9C
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91CC ; =0x00004E85
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0xc
	ldmia sp!, {r4, r5, pc}
_021D8F9C:
	cmp r0, #0xc8
	beq _021D8FC8
	ldr r2, _021D91BC ; =0x02210468
	ldr r1, _021D91D0 ; =0x000059D8
	ldr r2, [r2]
	add r1, r0, r1
	add r0, r2, #0x1000
	str r1, [r0, #8]
	add sp, sp, #4
	mov r0, #0x12
	ldmia sp!, {r4, r5, pc}
_021D8FC8:
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91D4 ; =0x0000100C
	ldr r3, [r0]
	ldr r1, _021D91D8 ; =0x0220BF48
	add r0, r3, #0x1000
	ldr r0, [r0, #0x314]
	add r2, r3, r2
	mov r3, #4
	bl FUN_021DA334
	cmp r0, #0
	bgt _021D9014
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91CC ; =0x00004E85
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0xe
	ldmia sp!, {r4, r5, pc}
_021D9014:
	ldr r1, _021D91BC ; =0x02210468
	ldr r0, _021D91D4 ; =0x0000100C
	ldr r2, [r1]
	add r1, sp, #0
	add r0, r2, r0
	mov r2, #0xa
	bl strtold2
	ldr r2, _021D91BC ; =0x02210468
	ldr r1, _021D91D4 ; =0x0000100C
	ldr r5, [r2]
	mov r4, r0
	add r0, r5, r1
	bl strlen
	ldr r1, _021D91D4 ; =0x0000100C
	ldr r2, [sp]
	add r1, r5, r1
	add r0, r1, r0
	cmp r2, r0
	ldrne r1, _021D91CC ; =0x00004E85
	addne r0, r5, #0x1000
	strne r1, [r0, #8]
	addne sp, sp, #4
	movne r0, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021D91DC ; =0x00004E20
	add r1, r5, #0x1000
	add r0, r4, r0
	str r0, [r1, #8]
	cmp r4, #0x64
	bge _021D91B0
	ldr ip, _021D91BC ; =0x02210468
	mov r0, #0
	ldr r1, [ip]
	ldr r5, _021D91E0 ; =0x00001052
	add r1, r1, #0x1000
	strb r0, [r1, #0x52]
	ldr r2, [ip]
	ldr r1, _021D91E4 ; =0x0220BF54
	add r2, r2, #0x1000
	strb r0, [r2, #0x1f]
	ldr r2, [ip]
	ldr r3, _021D91E8 ; =0x0000012D
	add r2, r2, #0x1000
	strb r0, [r2, #0x17f]
	ldr r2, [ip]
	add r2, r2, #0x1000
	strb r0, [r2, #0x10]
	ldr r2, [ip]
	add r2, r2, #0x1000
	strb r0, [r2, #0x188]
	ldr r2, [ip]
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	add r2, r2, r5
	bl FUN_021DA334
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91EC ; =0x0000101F
	ldr r3, [r0]
	ldr r1, _021D91F0 ; =0x0220BF5C
	add r0, r3, #0x1000
	add r2, r3, r2
	ldr r0, [r0, #0x314]
	mov r3, #0x33
	bl FUN_021DA334
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91F4 ; =0x0000117F
	ldr r3, [r0]
	ldr r1, _021D91F8 ; =0x0220BF64
	add r0, r3, #0x1000
	add r2, r3, r2
	ldr r0, [r0, #0x314]
	mov r3, #9
	bl FUN_021DA334
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D91FC ; =0x00001010
	ldr r3, [r0]
	ldr r1, _021D9200 ; =0x0220BF70
	add r0, r3, #0x1000
	add r2, r3, r2
	ldr r0, [r0, #0x314]
	mov r3, #0xf
	bl FUN_021DA334
	ldr r0, _021D91BC ; =0x02210468
	ldr r2, _021D9204 ; =0x00001188
	ldr r3, [r0]
	ldr r1, _021D9208 ; =0x0220BF7C
	add r0, r3, #0x1000
	add r2, r3, r2
	ldr r0, [r0, #0x314]
	mov r3, #0x41
	bl FUN_021DA2F4
	ldr r0, _021D91BC ; =0x02210468
	mov r1, #0
	ldr r0, [r0]
	cmp r4, #0x28
	add r0, r0, #0x1000
	strb r1, [r0, #0x1b3]
	ldrne r0, _021D920C ; =0x02210464
	movne r1, #1
	strne r1, [r0]
	ldreq r0, _021D920C ; =0x02210464
	moveq r1, #2
	streq r1, [r0]
_021D91B0:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021D91BC: .word 0x02210468
_021D91C0: .word 0x0220BF34
_021D91C4: .word 0x021D74A8
_021D91C8: .word 0x0220BF3C
_021D91CC: .word 0x00004E85
_021D91D0: .word 0x000059D8
_021D91D4: .word 0x0000100C
_021D91D8: .word 0x0220BF48
_021D91DC: .word 0x00004E20
_021D91E0: .word 0x00001052
_021D91E4: .word 0x0220BF54
_021D91E8: .word 0x0000012D
_021D91EC: .word 0x0000101F
_021D91F0: .word 0x0220BF5C
_021D91F4: .word 0x0000117F
_021D91F8: .word 0x0220BF64
_021D91FC: .word 0x00001010
_021D9200: .word 0x0220BF70
_021D9204: .word 0x00001188
_021D9208: .word 0x0220BF7C
_021D920C: .word 0x02210464

	arm_func_start FUN_021D9210
FUN_021D9210: ; 0x021D9210
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _021D93F4 ; =0x02210468
	mov r1, #0
	ldr r0, [r0]
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r5, [r2, #0x20c]
	ldr r4, [r2, #0x210]
	bl FUN_021DA3DC
	cmp r0, #1
	beq _021D9260
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D93F8 ; =0x00004E84
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0xe
	ldmia sp!, {r4, r5, pc}
_021D9260:
	bl FUN_021D8F08
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0xe
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021D93F4 ; =0x02210468
	ldr r1, _021D93F8 ; =0x00004E84
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r2, [r0, #8]
	cmp r2, r1
	bge _021D9334
	ldr r0, _021D93FC ; =0x00004E22
	cmp r2, r0
	bne _021D9328
	ldr r0, _021D9400 ; =0x0220BF88
	ldr r1, _021D9404 ; =0x0000071F
	blx r5
	movs r5, r0
	bne _021D92D0
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D93F8 ; =0x00004E84
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021D92D0:
	add r1, r5, #0x1f
	ldr r0, _021D9408 ; =0x0221046C
	bic r1, r1, #0x1f
	bl FUN_02096710
	cmp r0, #1
	beq _021D9318
	ldr r0, _021D940C ; =0x0220BF98
	mov r1, r5
	mov r2, #0
	blx r4
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D93F8 ; =0x00004E84
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0xf
	ldmia sp!, {r4, r5, pc}
_021D9318:
	ldr r0, _021D940C ; =0x0220BF98
	mov r1, r5
	mov r2, #0
	blx r4
_021D9328:
	add sp, sp, #4
	mov r0, #0x15
	ldmia sp!, {r4, r5, pc}
_021D9334:
	ldr r0, _021D9410 ; =0x00004E88
	cmp r2, r0
	beq _021D9350
	ldr r0, _021D9414 ; =0x00004E8C
	cmp r2, r0
	beq _021D9378
	b _021D93E8
_021D9350:
	ldr r0, _021D9408 ; =0x0221046C
	bl FUN_02096570
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D9410 ; =0x00004E88
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0x10
	ldmia sp!, {r4, r5, pc}
_021D9378:
	ldr r0, _021D9400 ; =0x0220BF88
	mov r1, #0x700
	blx r5
	movs r5, r0
	bne _021D93AC
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D9414 ; =0x00004E8C
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0x11
	ldmia sp!, {r4, r5, pc}
_021D93AC:
	add r0, r5, #0x1f
	bic r0, r0, #0x1f
	bl FUN_02096760
	ldr r0, _021D940C ; =0x0220BF98
	mov r1, r5
	mov r2, #0
	blx r4
	ldr r0, _021D93F4 ; =0x02210468
	ldr r2, _021D9414 ; =0x00004E8C
	ldr r1, [r0]
	add sp, sp, #4
	add r1, r1, #0x1000
	str r2, [r1, #8]
	mov r0, #0x11
	ldmia sp!, {r4, r5, pc}
_021D93E8:
	mov r0, #0x12
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021D93F4: .word 0x02210468
_021D93F8: .word 0x00004E84
_021D93FC: .word 0x00004E22
_021D9400: .word 0x0220BF88
_021D9404: .word 0x0000071F
_021D9408: .word 0x0221046C
_021D940C: .word 0x0220BF98
_021D9410: .word 0x00004E88
_021D9414: .word 0x00004E8C

	arm_func_start FUN_021D9418
FUN_021D9418: ; 0x021D9418
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, #0
	mov r0, #1
	ldr r7, _021D96D4 ; =0x00001388
	ldr fp, _021D96D8 ; =0x000082EA
	ldr r5, _021D96DC ; =0x02210468
	ldr r4, _021D96E0 ; =0x000013D8
	mov r6, sb
	str sb, [sp, #8]
	str sb, [sp, #0xc]
	str r0, [sp, #4]
_021D9448:
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021D9470
	ldr r0, _021D96E4 ; =0x00001B34
	add r0, r1, r0
	bl OS_JoinThread
_021D9470:
	ldr r0, [r5]
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #8
	beq _021D9518
	ldr r0, _021D96E8 ; =0x00004E84
	str r0, [r1, #8]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _021D94C0
	mov r0, #0x14
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D94C0:
	cmp sb, #2
	ble _021D9508
	cmp r0, #2
	bne _021D94E0
	mov r0, #9
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D94E0:
	cmp r0, #3
	bne _021D94F8
	mov r0, #0xb
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D94F8:
	mov r0, #0xd
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D9508:
	ldr r0, [sp, #4]
	add sb, sb, #1
	str r0, [sp]
	b _021D9598
_021D9518:
	bl FUN_021D9210
	cmp r0, #0x10
	beq _021D9544
	cmp r0, #0x11
	beq _021D956C
	cmp r0, #0x15
	bne _021D9578
	mov r0, #0x15
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D9544:
	cmp sb, #2
	ble _021D955C
	mov r0, #0x10
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D955C:
	ldr r0, [sp, #8]
	add sb, sb, #1
	str r0, [sp]
	b _021D9598
_021D956C:
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D9578:
	cmp sb, #2
	blt _021D958C
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D958C:
	ldr r0, [sp, #4]
	add sb, sb, #1
	str r0, [sp]
_021D9598:
	bl OS_GetTick
	mov r8, r0
	mov sl, r1
	bl OS_GetTick
	subs r2, r0, r8
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	ldr r3, [sp, #0xc]
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, fp
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, r7
	bhs _021D965C
_021D95D4:
	ldr r0, [r5]
	add r0, r0, r4
	bl OS_LockMutex
	ldr r2, [r5]
	add r1, r2, #0x1000
	ldr r0, [r1, #0x3f0]
	cmp r0, #1
	bne _021D961C
	ldr r2, _021D96E8 ; =0x00004E84
	ldr r0, _021D96E0 ; =0x000013D8
	str r2, [r1, #8]
	ldr r1, [r5]
	add r0, r1, r0
	bl OS_UnlockMutex
	mov r0, #0x14
	bl FUN_021D8D18
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D961C:
	add r0, r2, r4
	bl OS_UnlockMutex
	mov r0, r7
	bl OS_Sleep
	bl OS_GetTick
	subs r2, r0, r8
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, fp
	mov r3, r6
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, r7
	blo _021D95D4
_021D965C:
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl FUN_021DAE4C
	ldr r0, [r5]
	add r0, r0, r4
	bl OS_LockMutex
	ldr r0, [sp]
	bl FUN_021D96EC
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r2, [r5]
	add r1, r2, #0x1000
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _021D96C0
	ldr r2, _021D96E8 ; =0x00004E84
	ldr r0, _021D96E0 ; =0x000013D8
	str r2, [r1, #8]
	ldr r1, [r5]
	add r0, r1, r0
	bl OS_UnlockMutex
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D96C0:
	add r0, r2, r4
	bl OS_UnlockMutex
	b _021D9448

	arm_func_start FUN_021D96CC
FUN_021D96CC: ; 0x021D96CC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021D96D4: .word 0x00001388
_021D96D8: .word 0x000082EA
_021D96DC: .word 0x02210468
_021D96E0: .word 0x000013D8
_021D96E4: .word 0x00001B34
_021D96E8: .word 0x00004E84

	arm_func_start FUN_021D96EC
FUN_021D96EC: ; 0x021D96EC
	stmdb sp!, {r4, lr}
	ldr r1, _021D97E0 ; =0x0220BEB4
	mov r4, r0
	ldr r0, [r1]
	ldr r1, _021D97E4 ; =0x0220BFA4
	bl strcmp
	cmp r0, #0
	ldrne r0, _021D97E0 ; =0x0220BEB4
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _021D97E8 ; =0x02210468
	ldr r1, _021D97E0 ; =0x0220BEB4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r2, [r0, #0x20c]
	str r2, [r1, #0xc]
	ldr r2, [r0, #0x210]
	str r2, [r1, #0x10]
	ldr r0, [r0, #0x314]
	bl FUN_021DB608
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	cmp r4, #1
	bne _021D9758
	ldr r0, _021D97EC ; =0x0221046C
	bl FUN_02095EC8
_021D9758:
	ldr r0, _021D97E8 ; =0x02210468
	ldr r2, _021D97F0 ; =0x000011CC
	ldr r3, [r0]
	add r0, r3, #0x1000
	ldr r0, [r0, #0x314]
	add r1, r3, #0x1200
	add r2, r3, r2
	bl FUN_021D8D60
	ldr r2, _021D97E8 ; =0x02210468
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, [r0, #0x314]
	bl FUN_021DB570
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, _021D97F4 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _021D97E8 ; =0x02210468
	ldr r2, [r1]
	sub r1, r0, #1
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	bl FUN_021DB4A4
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021D97E0: .word 0x0220BEB4
_021D97E4: .word 0x0220BFA4
_021D97E8: .word 0x02210468
_021D97EC: .word 0x0221046C
_021D97F0: .word 0x000011CC
_021D97F4: .word 0x021D3498

	arm_func_start FUN_021D97F8
FUN_021D97F8: ; 0x021D97F8
	stmdb sp!, {r4, lr}
	ldr r1, _021D9874 ; =0x02210468
	mov r4, r0
	ldr r1, [r1]
	cmp r1, #0
	bne _021D981C
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
_021D981C:
	ldr r1, _021D9874 ; =0x02210468
	ldr r0, _021D9878 ; =0x00001008
	ldr r2, [r1]
	mov r1, r4
	add r0, r2, r0
	mov r2, #0x1c4
	bl MI_CpuCopy8
	ldr r1, [r4]
	ldr r0, _021D987C ; =0x00004E20
	cmp r1, r0
	blt _021D9854
	ldr r0, _021D9880 ; =0x00007530
	cmp r1, r0
	blt _021D985C
_021D9854:
	ldr r0, _021D9884 ; =0x00005206
	str r0, [r4]
_021D985C:
	ldr r1, [r4]
	ldr r0, _021D9888 ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021D9874: .word 0x02210468
_021D9878: .word 0x00001008
_021D987C: .word 0x00004E20
_021D9880: .word 0x00007530
_021D9884: .word 0x00005206
_021D9888: .word 0x00004E84

	arm_func_start FUN_021D988C
FUN_021D988C: ; 0x021D988C
	stmdb sp!, {r4, lr}
	ldr r0, _021D98D4 ; =0x02210468
	ldr r1, [r0]
	cmp r1, #0
	moveq r0, #0x16
	ldmeqia sp!, {r4, pc}
	ldr r0, _021D98D8 ; =0x000013D8
	add r0, r1, r0
	bl OS_LockMutex
	ldr r1, _021D98D4 ; =0x02210468
	ldr r0, _021D98D8 ; =0x000013D8
	ldr r2, [r1]
	add r1, r2, #0x1000
	add r0, r2, r0
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021D98D4: .word 0x02210468
_021D98D8: .word 0x000013D8

	arm_func_start FUN_021D98DC
FUN_021D98DC: ; 0x021D98DC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021D9914 ; =0x02210468
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021D9918 ; =0x00001318
	add r0, r1, r0
	bl OS_JoinThread
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021D9914: .word 0x02210468
_021D9918: .word 0x00001318

	arm_func_start FUN_021D991C
FUN_021D991C: ; 0x021D991C
	stmdb sp!, {r4, lr}
	ldr r0, _021D996C ; =0x02210468
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r4, [r1, #0x210]
	cmp r0, #0
	beq _021D9948
	bl FUN_021DAE4C
_021D9948:
	ldr r1, _021D996C ; =0x02210468
	ldr r0, _021D9970 ; =0x0220BFC4
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _021D996C ; =0x02210468
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021D996C: .word 0x02210468
_021D9970: .word 0x0220BFC4

	arm_func_start FUN_021D9974
FUN_021D9974: ; 0x021D9974
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021D9A0C ; =0x02210468
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021D9A10 ; =0x000013D8
	add r0, r1, r0
	bl OS_LockMutex
	ldr r2, _021D9A0C ; =0x02210468
	mov r3, #1
	ldr r0, [r2]
	ldr r1, _021D9A10 ; =0x000013D8
	add r0, r0, #0x1000
	str r3, [r0, #0x3f0]
	ldr r0, [r2]
	add r0, r0, r1
	bl OS_UnlockMutex
	ldr r0, _021D9A0C ; =0x02210468
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _021D99DC
	bl FUN_021DB440
_021D99DC:
	ldr r0, _021D9A0C ; =0x02210468
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021D9A14 ; =0x00001318
	add r0, r1, r0
	bl OS_JoinThread
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021D9A0C: .word 0x02210468
_021D9A10: .word 0x000013D8
_021D9A14: .word 0x00001318

	arm_func_start FUN_021D9A18
FUN_021D9A18: ; 0x021D9A18
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _021D9ABC ; =0x02210468
	ldr r0, _021D9AC0 ; =0x000013D8
	ldr r1, [r1]
	add r0, r1, r0
	bl OS_InitMutex
	ldr r1, _021D9ABC ; =0x02210468
	mov r2, #0
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r1, [r1]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _021D9A74
	ldr r0, _021D9AC4 ; =0x00001318
	add r0, r1, r0
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
_021D9A74:
	ldr r2, _021D9ABC ; =0x02210468
	ldr r0, _021D9AC4 ; =0x00001318
	ldr lr, [r2]
	mov r3, #0x1000
	ldr r1, _021D9AC8 ; =FUN_021D9418
	str r3, [sp]
	mov ip, #0x10
	add r0, lr, r0
	add r3, lr, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r1, _021D9ABC ; =0x02210468
	ldr r0, _021D9AC4 ; =0x00001318
	ldr r1, [r1]
	add r0, r1, r0
	bl OS_WakeupThreadDirect
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021D9ABC: .word 0x02210468
_021D9AC0: .word 0x000013D8
_021D9AC4: .word 0x00001318
_021D9AC8: .word FUN_021D9418

	arm_func_start FUN_021D9ACC
FUN_021D9ACC: ; 0x021D9ACC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _021D9BFC ; =0x02210468
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	addne sp, sp, #4
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021D9C00 ; =0x0220BFD4
	ldr r1, _021D9C04 ; =0x000013F4
	blx r2
	ldr r1, _021D9BFC ; =0x02210468
	cmp r0, #0
	str r0, [r1]
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, _021D9C04 ; =0x000013F4
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _021D9BFC ; =0x02210468
	ldr r2, _021D9C08 ; =0x00001008
	ldr r0, [r1]
	ldr r3, _021D9C0C ; =0x02210464
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	ldr r0, [r1]
	mov r1, #0
	add r0, r0, r2
	mov r2, #0x1c4
	str r1, [r3]
	bl MI_CpuFill8
	ldr r2, _021D9BFC ; =0x02210468
	ldr r3, _021D9C10 ; =0x00004E84
	ldr r0, [r2]
	ldr r1, _021D9C14 ; =0x000011CC
	add r0, r0, #0x1000
	str r3, [r0, #8]
	ldr lr, [r2]
	mov r4, #4
	add ip, lr, r1
_021D9B7C:
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _021D9B7C
	ldmia r5, {r0, r1}
	stmia ip, {r0, r1}
	add r0, lr, #0x1100
	mov r2, #0
	strh r2, [r0, #0xfe]
	ldr r1, _021D9BFC ; =0x02210468
	mov r0, #1
	ldr r1, [r1]
	add r1, r1, #0x1000
	strb r2, [r1, #0x20b]
	bl FUN_021D96EC
	ldr r2, _021D9BFC ; =0x02210468
	ldr r1, [r2]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021D9C18 ; =0x02210460
	mov r1, #0
	str r1, [r0]
	bl FUN_021D9A18
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021D9BFC: .word 0x02210468
_021D9C00: .word 0x0220BFD4
_021D9C04: .word 0x000013F4
_021D9C08: .word 0x00001008
_021D9C0C: .word 0x02210464
_021D9C10: .word 0x00004E84
_021D9C14: .word 0x000011CC
_021D9C18: .word 0x02210460

	arm_func_start FUN_021D9C1C
FUN_021D9C1C: ; 0x021D9C1C
	ldr r1, _021D9C28 ; =0x0220BEB4
	str r0, [r1]
	bx lr
	.align 2, 0
_021D9C28: .word 0x0220BEB4

	arm_func_start FUN_021D9C2C
FUN_021D9C2C: ; 0x021D9C2C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov ip, #2
	ldr r2, _021D9F30 ; =0x0220BFE4
	add r0, sp, #4
	mov r1, #0x21
	mov r3, #1
	str ip, [sp]
	bl OS_SNPrintf
	add r0, sp, #4
	bl strlen
	mov r3, r0
	ldr r1, _021D9F34 ; =0x0220BFF0
	mov r0, r6
	add r2, sp, #4
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl strlen
	mov r3, r0
	ldr r1, _021D9F38 ; =0x0220BFF8
	mov r0, r6
	mov r2, r5
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0xe
	bl strlen
	mov r3, r0
	ldr r1, _021D9F3C ; =0x0220C000
	mov r0, r6
	add r2, r5, #0xe
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x41
	bl strlen
	mov r3, r0
	ldr r1, _021D9F40 ; =0x0220C008
	mov r0, r6
	add r2, r5, #0x41
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6f
	bl strlen
	mov r3, r0
	ldr r1, _021D9F44 ; =0x0220C010
	mov r0, r6
	add r2, r5, #0x6f
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x15
	bl strlen
	mov r3, r0
	ldr r1, _021D9F48 ; =0x0220C018
	mov r0, r6
	add r2, r5, #0x15
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1a
	bl strlen
	mov r3, r0
	ldr r1, _021D9F4C ; =0x0220C020
	mov r0, r6
	add r2, r5, #0x1a
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1d
	bl strlen
	mov r3, r0
	ldr r1, _021D9F50 ; =0x0220C028
	mov r0, r6
	add r2, r5, #0x1d
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	bl strlen
	mov r3, r0
	ldr r1, _021D9F54 ; =0x0220C030
	mov r0, r6
	add r2, r5, #0x1f
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2c
	bl strlen
	mov r3, r0
	ldr r1, _021D9F58 ; =0x0220C038
	mov r0, r6
	add r2, r5, #0x2c
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2f
	bl strlen
	mov r3, r0
	ldr r1, _021D9F5C ; =0x0220C040
	mov r0, r6
	add r2, r5, #0x2f
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x34
	bl strlen
	mov r3, r0
	ldr r1, _021D9F60 ; =0x0220C048
	mov r0, r6
	add r2, r5, #0x34
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x7e
	bl wcslen
	mov r3, r0
	ldr r1, _021D9F64 ; =0x0220C050
	mov r0, r6
	add r2, r5, #0x7e
	mov r3, r3, lsl #1
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #1
	bne _021D9ED0
	add r0, r5, #0x4e
	bl strlen
	mov r3, r0
	ldr r1, _021D9F68 ; =0x0220C058
	mov r0, r6
	add r2, r5, #0x4e
	bl FUN_021DAB68
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_021D9ED0:
	ldr r2, _021D9F6C ; =0x0220C060
	mov ip, #2
	add r0, sp, #4
	mov r1, #0x21
	mov r3, #1
	str ip, [sp]
	bl OS_SNPrintf
	ldr r1, _021D9F70 ; =0x0220C078
	add r2, sp, #4
	mov r0, r6
	bl FUN_021DAC98
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021D9F74 ; =0x0220C084
	mov r0, r6
	add r2, r5, #0x15
	bl FUN_021DAC98
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021D9F30: .word 0x0220BFE4
_021D9F34: .word 0x0220BFF0
_021D9F38: .word 0x0220BFF8
_021D9F3C: .word 0x0220C000
_021D9F40: .word 0x0220C008
_021D9F44: .word 0x0220C010
_021D9F48: .word 0x0220C018
_021D9F4C: .word 0x0220C020
_021D9F50: .word 0x0220C028
_021D9F54: .word 0x0220C030
_021D9F58: .word 0x0220C038
_021D9F5C: .word 0x0220C040
_021D9F60: .word 0x0220C048
_021D9F64: .word 0x0220C050
_021D9F68: .word 0x0220C058
_021D9F6C: .word 0x0220C060
_021D9F70: .word 0x0220C078
_021D9F74: .word 0x0220C084

	arm_func_start FUN_021D9F78
FUN_021D9F78: ; 0x021D9F78
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x8c
	mov r6, r1
	mov r1, #0
	mov r2, #0x94
	mov r4, r0
	bl MI_CpuFill8
	ldr r3, [r6]
	ldr r5, [r6, #4]
	mov r0, #0
	cmp r5, r0
	cmpeq r3, r0
	beq _021D9FC4
	ldr r2, _021DA218 ; =0x0220C094
	mov r0, r4
	mov r1, #0xe
	str r5, [sp]
	bl OS_SNPrintf
	b _021D9FE0
_021D9FC4:
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	ldr r2, _021DA218 ; =0x0220C094
	mov r0, r4
	mov r1, #0xe
	str r5, [sp]
	bl OS_SNPrintf
_021D9FE0:
	ldrh r3, [r6, #0x10]
	ldr r2, _021DA21C ; =0x0220C09C
	add r0, r4, #0xe
	mov r1, #7
	bl OS_SNPrintf
	ldr r0, _021DA220 ; =0x027FFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DA008
	bl OS_Terminate
_021DA008:
	ldr r0, _021DA220 ; =0x027FFE0C
	add r1, r4, #0x15
	mov r2, #4
	bl MI_CpuCopy8
	ldr r0, _021DA224 ; =0x027FFE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DA02C
	bl OS_Terminate
_021DA02C:
	ldr r0, _021DA224 ; =0x027FFE10
	add r1, r4, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	mov r1, #0x30
	add r0, sp, #0x16
	strb r1, [r4, #0x1d]
	bl OS_GetMacAddress
	ldr r5, _021DA228 ; =0x0220C0A4
	add r7, sp, #0x16
	add r6, r4, #0x1f
	mov r8, #0
_021DA05C:
	ldrb r2, [r7]
	mov r0, r6
	mov r1, r5
	bl OS_SPrintf
	add r8, r8, #1
	cmp r8, #6
	add r7, r7, #1
	add r6, r6, #2
	blt _021DA05C
	add r0, sp, #0x38
	bl OS_GetOwnerInfo
	ldrb r0, [sp, #0x38]
	ldr r2, _021DA228 ; =0x0220C0A4
	mov r1, #3
	cmp r0, #6
	movhi r0, #1
	strhib r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	add r0, r4, #0x2c
	bl OS_SNPrintf
	add r0, sp, #0x3c
	add r1, r4, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _021DA22C ; =0x0220C0AC
	add r0, r4, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl OS_SNPrintf
	add r0, sp, #0x1c
	bl RTC_GetDate
	cmp r0, #0
	bne _021DA0F8
	add r0, sp, #0x2c
	bl RTC_GetTime
	cmp r0, #0
	beq _021DA104
_021DA0F8:
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021DA104:
	ldr r0, [sp, #0x20]
	ldr r2, _021DA230 ; =0x0220C0B8
	str r0, [sp]
	ldr r1, [sp, #0x24]
	add r0, r4, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x2c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x30]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x34]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x1c]
	bl OS_SNPrintf
	bl OS_DisableInterrupts
	mov sb, r0
	bl FUN_020A8850
	mov r8, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r8, #0
	bne _021DA174
	mov r0, sb
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021DA174:
	add r7, r4, #0x41
	mov r6, #0
	ldr r5, _021DA228 ; =0x0220C0A4
_021DA180:
	ldrb r2, [r8, r6]
	mov r0, r7
	mov r1, r5
	bl OS_SPrintf
	add r6, r6, #1
	cmp r6, #6
	add r7, r7, #2
	blt _021DA180
	bl FUN_021EBAB8
	mov r3, r0
	ldr r2, _021DA234 ; =0x0220C0D4
	add r0, r4, #0x6f
	mov r1, #0xe
	bl OS_SNPrintf
	add r0, sp, #0x14
	bl FUN_020A87E0
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021DA1E8
	mov r0, sb
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021DA1E8:
	mov r0, r5
	add r1, r4, #0x72
	bl FUN_021EE5F4
	mov r0, r5
	add r1, r4, #0x4e
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, sb
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021DA218: .word 0x0220C094
_021DA21C: .word 0x0220C09C
_021DA220: .word 0x027FFE0C
_021DA224: .word 0x027FFE10
_021DA228: .word 0x0220C0A4
_021DA22C: .word 0x0220C0AC
_021DA230: .word 0x0220C0B8
_021DA234: .word 0x0220C0D4

	arm_func_start FUN_021DA238
FUN_021DA238: ; 0x021DA238
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r0
	add r0, sp, #0
	bl FUN_02095EC8
	add r1, sp, #0
	mov r0, r4
	bl FUN_021D9F78
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021DA260
FUN_021DA260: ; 0x021DA260
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	add r0, r0, #0x1000
	mov sb, r2
	cmp sb, #0
	ldr r8, [r0, #0x14]
	mov sl, r1
	mov r7, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, r7
	mov r5, r7
	mov fp, r7
	mov r4, r7
_021DA298:
	ldr r1, [sl, r7, lsl #3]
	cmp r1, #0
	beq _021DA2B4
	ldr r0, _021DA2EC ; =0x0220C110
	mov r2, r6
	blx r8
	str r5, [sl, r7, lsl #3]
_021DA2B4:
	add r0, sl, r7, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021DA2D8
	ldr r0, _021DA2F0 ; =0x0220C12C
	mov r2, fp
	blx r8
	add r0, sl, r7, lsl #3
	str r4, [r0, #4]
_021DA2D8:
	add r7, r7, #1
	cmp r7, sb
	blt _021DA298
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DA2EC: .word 0x0220C110
_021DA2F0: .word 0x0220C12C

	arm_func_start FUN_021DA2F4
FUN_021DA2F4: ; 0x021DA2F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_021DA388
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	cmp r0, r5
	movge r0, #0
	ldmgeia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl strcpy
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DA334
FUN_021DA334: ; 0x021DA334
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_021DA388
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl strlen
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl FUN_021DD36C
	mvn r1, #0
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, r5
	ldmhsia sp!, {r4, r5, r6, pc}
	mov r1, #0
	strb r1, [r6, r0]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DA388
FUN_021DA388: ; 0x021DA388
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_021DA398:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa34]
	cmp r1, #0
	beq _021DA3D4
	mov r0, r5
	bl strcmp
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0xa38]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x20
	blt _021DA398
_021DA3D4:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DA3DC
FUN_021DA3DC: ; 0x021DA3DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r2, _021DA668 ; =0x00001A34
	mov fp, r0
	add r0, fp, r2
	mov r6, r1
	mov r3, #0x20
	mov r1, #0
	mov r2, #0x100
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	bl MI_CpuFill8
	add r0, fp, #0x1000
	ldr r5, [r0, #0xa04]
	ldr r1, _021DA66C ; =0x0220C148
	mov r0, r5
	bl strstr
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r0, #4
	bl strlen
	ldr r1, [sp]
	add r1, r1, #4
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, _021DA670 ; =0x0220C150
	mov r0, r5
	bl strstr
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r8, r0, #1
	ldrsb r7, [r8, #3]
	ldr r2, _021DA674 ; =0x0220C154
	mov r5, #0
	add r1, sp, #8
	mov r0, fp
	mov r3, r8
	strb r5, [r8, #3]
	bl FUN_021DA68C
	cmp r0, #1
	addne sp, sp, #0x14
	strneb r7, [r8, #3]
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r7, [r8, #3]
	cmp r6, #1
	beq _021DA4C8
	ldr r1, _021DA678 ; =0x0220C160
	mov r0, r8
	mov r2, #3
	bl strncmp
	cmp r0, #0
	beq _021DA4D4
_021DA4C8:
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DA4D4:
	ldr r1, _021DA67C ; =0x0220C164
	add r0, r8, #4
	bl strstr
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, r0, #2
	mov r6, r5
	b _021DA580
_021DA4FC:
	ldr r1, _021DA680 ; =0x0220C168
	mov r0, sb
	bl strstr
	movs r7, r0
	beq _021DA598
	ldrsb sl, [r7]
	add r8, r7, #2
	ldr r1, _021DA67C ; =0x0220C164
	mov r0, r8
	strb r6, [r7]
	bl strstr
	movs r5, r0
	streqb sl, [r7]
	beq _021DA598
	ldrsb r4, [r5]
	mov r0, fp
	mov r2, sb
	strb r6, [r5]
	add r1, sp, #8
	mov r3, r8
	bl FUN_021DA68C
	cmp r0, #1
	strneb sl, [r7]
	addne sp, sp, #0x14
	strneb r4, [r5]
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r8
	bl strlen
	strb sl, [r7]
	add r0, r8, r0
	strb r4, [r5]
	add sb, r0, #2
_021DA580:
	ldrsb r0, [sb]
	cmp r0, #0xd
	beq _021DA598
	ldrsb r0, [sb, #1]
	cmp r0, #0xa
	bne _021DA4FC
_021DA598:
	ldr r0, [sp]
	add r8, r0, #4
	ldr r0, [sp, #4]
	cmp r8, r0
	bhs _021DA65C
	mov r5, #0
_021DA5B0:
	ldr r1, _021DA684 ; =0x0220C16C
	mov r0, r8
	bl strstr
	movs sl, r0
	beq _021DA65C
	ldrsb r7, [sl]
	add sb, sl, #1
	ldr r1, _021DA688 ; =0x0220C170
	mov r0, sb
	strb r5, [sl]
	bl strstr
	movs r6, r0
	bne _021DA5F4
	ldr r1, _021DA67C ; =0x0220C164
	mov r0, sb
	bl strstr
	mov r6, r0
_021DA5F4:
	cmp r6, #0
	ldrnesb r4, [r6]
	mov r0, fp
	mov r2, r8
	add r1, sp, #8
	mov r3, sb
	strneb r5, [r6]
	bl FUN_021DA68C
	cmp r0, #1
	beq _021DA634
	strb r7, [sl]
	cmp r6, #0
	add sp, sp, #0x14
	strneb r4, [r6]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DA634:
	mov r0, sb
	bl strlen
	add r0, sb, r0
	add r8, r0, #1
	ldr r0, [sp, #4]
	strb r7, [sl]
	cmp r6, #0
	strneb r4, [r6]
	cmp r8, r0
	blo _021DA5B0
_021DA65C:
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DA668: .word 0x00001A34
_021DA66C: .word 0x0220C148
_021DA670: .word 0x0220C150
_021DA674: .word 0x0220C154
_021DA678: .word 0x0220C160
_021DA67C: .word 0x0220C164
_021DA680: .word 0x0220C168
_021DA684: .word 0x0220C16C
_021DA688: .word 0x0220C170

	arm_func_start FUN_021DA68C
FUN_021DA68C: ; 0x021DA68C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	ldr r4, [r8, #8]
	ldr r1, [r8, #4]
	add r0, r0, #0x1000
	cmp r4, r1
	ldr r5, [r0, #0x10]
	ldr r4, [r0, #0x14]
	mov r7, r2
	mov r6, r3
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl strlen
	mov r1, r0
	ldr r0, _021DA7D8 ; =0x0220C174
	add r1, r1, #1
	blx r5
	ldr r2, [r8]
	ldr r1, [r8, #8]
	str r0, [r2, r1, lsl #3]
	ldr r3, [r8, #8]
	ldr r2, [r8]
	ldr r0, [r2, r3, lsl #3]
	cmp r0, #0
	beq _021DA770
	mov r0, r6
	bl strlen
	mov r1, r0
	ldr r0, _021DA7DC ; =0x0220C194
	add r1, r1, #1
	blx r5
	ldr r2, [r8]
	ldr r1, [r8, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r3, [r8, #8]
	ldr r2, [r8]
	mov r1, r3, lsl #3
	add r0, r2, r3, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021DA770
	ldr r0, [r2, r1]
	mov r1, r7
	bl strcpy
	ldr r2, [r8]
	ldr r0, [r8, #8]
	mov r1, r6
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl strcpy
	ldr r1, [r8, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r8, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021DA770:
	ldr r1, [r2, r3, lsl #3]
	cmp r1, #0
	beq _021DA798
	ldr r0, _021DA7E0 ; =0x0220C1B4
	mov r2, #0
	blx r4
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	str r2, [r1, r0, lsl #3]
_021DA798:
	ldr r1, [r8]
	ldr r0, [r8, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021DA7D0
	ldr r0, _021DA7E4 ; =0x0220C1D0
	mov r2, #0
	blx r4
	ldr r1, [r8]
	ldr r0, [r8, #8]
	mov r2, #0
	add r0, r1, r0, lsl #3
	str r2, [r0, #4]
_021DA7D0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021DA7D8: .word 0x0220C174
_021DA7DC: .word 0x0220C194
_021DA7E0: .word 0x0220C1B4
_021DA7E4: .word 0x0220C1D0

	arm_func_start FUN_021DA7E8
FUN_021DA7E8: ; 0x021DA7E8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl strlen
	cmp r0, #0x100
	movhs r0, r4
	ldmhsia sp!, {r4, r5, r6, pc}
	ldr r0, _021DA934 ; =0x00001024
	mov r1, r6
	add r0, r5, r0
	mov r2, #0x100
	bl strncpy
	mov r0, r6
	bl strlen
	ldr r1, _021DA934 ; =0x00001024
	mov r6, r0
	add r0, r5, r1
	bl strlen
	cmp r6, r0
	movne r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _021DA934 ; =0x00001024
	ldr r1, _021DA938 ; =0x0220C1EC
	add r0, r5, r0
	bl strstr
	cmp r0, #0
	beq _021DA884
	ldr r0, _021DA93C ; =0x0000102B
	add r1, r5, #0x1000
	add r0, r5, r0
	str r0, [r1, #0x124]
	mov r0, r4
	str r0, [r1, #0x12c]
	add r0, r5, #0x1100
	mov r1, #0x50
	strh r1, [r0, #0x30]
	b _021DA8C0
_021DA884:
	ldr r0, _021DA934 ; =0x00001024
	ldr r1, _021DA940 ; =0x0220C1F4
	add r0, r5, r0
	bl strstr
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	add r1, r0, #8
	add r0, r5, #0x1000
	str r1, [r0, #0x124]
	mov r2, #1
	ldr r1, _021DA944 ; =0x000001BB
	str r2, [r0, #0x12c]
	add r0, r5, #0x1100
	strh r1, [r0, #0x30]
_021DA8C0:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021DA948 ; =0x0220C200
	bl strstr
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _021DA94C ; =0x0220C204
	bl strstr
	cmp r0, #0
	addeq r0, r5, #0x1000
	moveq r1, #0
	streq r1, [r0, #0x128]
	movne r1, #0
	strneb r1, [r0]
	addne r1, r0, #1
	addne r0, r5, #0x1000
	strne r1, [r0, #0x128]
	cmp r4, #0
	beq _021DA92C
	mov r0, r4
	bl atol
	add r1, r5, #0x1100
	strh r0, [r1, #0x30]
_021DA92C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DA934: .word 0x00001024
_021DA938: .word 0x0220C1EC
_021DA93C: .word 0x0000102B
_021DA940: .word 0x0220C1F4
_021DA944: .word 0x000001BB
_021DA948: .word 0x0220C200
_021DA94C: .word 0x0220C204

	arm_func_start FUN_021DA950
FUN_021DA950: ; 0x021DA950
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	add r0, r0, #0x1000
	mov r5, r2
	cmp r5, #0
	ldr r7, [r0, #0x14]
	ldr r2, [r0, #0x10]
	mov r6, r1
	addle sp, sp, #4
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r6, #0xc]
	ldr r0, _021DAA08 ; =0x0220C208
	add r1, r1, r5
	blx r2
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl MI_CpuCopy8
	ldr r1, [r6]
	ldr r0, _021DAA0C ; =0x0220C218
	mov r2, #0
	blx r7
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	ldr r1, [r6, #4]
	sub r0, r4, r0
	add r0, r1, r0
	str r0, [r6, #4]
	ldr r1, [r6, #0xc]
	mov r0, #1
	add r1, r1, r5
	str r1, [r6, #0xc]
	str r4, [r6]
	ldr r1, [r6, #0xc]
	add r1, r4, r1
	str r1, [r6, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DAA08: .word 0x0220C208
_021DAA0C: .word 0x0220C218

	arm_func_start FUN_021DAA10
FUN_021DAA10: ; 0x021DAA10
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _021DAA38
	ldr r0, _021DAA4C ; =0x0220C218
	mov r2, #0
	blx r3
_021DAA38:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DAA4C: .word 0x0220C218

	arm_func_start FUN_021DAA50
FUN_021DAA50: ; 0x021DAA50
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r4, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _021DAABC ; =0x0220C22C
	mov r1, r5
	blx r2
	str r0, [r4]
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	str r0, [r4, #4]
	str r5, [r4, #0xc]
	ldr r2, [r4]
	ldr r1, [r4, #0xc]
	mov r0, #1
	add r1, r2, r1
	str r1, [r4, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DAABC: .word 0x0220C22C

	arm_func_start FUN_021DAAC0
FUN_021DAAC0: ; 0x021DAAC0
	ands r1, r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr

	arm_func_start FUN_021DAACC
FUN_021DAACC: ; 0x021DAACC
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r2, _021DAB60 ; =0x000019F4
	mov r7, r0
	mov r6, r1
	mov r0, r6
	add r4, r7, r2
	bl strlen
	mov r5, r0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r1, r1, r0
	cmp r5, r1
	ble _021DAB34
	sub r2, r5, r1
	mov r0, r7
	mov r1, r4
	add r2, r2, #1
	bl FUN_021DA950
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r1, r1, r0
_021DAB34:
	ldr r2, _021DAB64 ; =0x0220C240
	mov r3, r6
	bl OS_SNPrintf
	cmp r0, r5
	ldreq r1, [r4, #4]
	movne r0, #1
	addeq r0, r1, r0
	streq r0, [r4, #4]
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DAB60: .word 0x000019F4
_021DAB64: .word 0x0220C240

	arm_func_start FUN_021DAB68
FUN_021DAB68: ; 0x021DAB68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	add r0, sl, #0x1000
	ldr r4, [r0, #0x9f0]
	ldr r0, _021DAC8C ; =0x000019F4
	cmp r4, #0
	ldreq r6, _021DAC90 ; =0x0220C244
	mov r8, r2
	add r5, sl, #0x1000
	add r4, sl, r0
	ldr r0, [r5, #0x9f0]
	mov r7, r3
	add fp, r0, #1
	mov r2, #0
	mov sb, r1
	ldrne r6, _021DAC94 ; =0x0220C248
	mov r0, r8
	mov r1, r7
	mov r3, r2
	str fp, [r5, #0x9f0]
	bl FUN_021DD4FC
	mov r5, r0
	mov r0, r6
	bl strlen
	mov fp, r0
	mov r0, sb
	bl strlen
	sub r1, fp, #2
	add r2, r1, r0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _021DAC28
	sub r2, r2, r1
	mov r0, sl
	mov r1, r4
	add r2, r2, #1
	bl FUN_021DA950
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	sub r1, r1, r0
_021DAC28:
	mov r2, r6
	mov r3, sb
	bl OS_SNPrintf
	ldr r2, [r4, #4]
	mov r1, r7
	add r0, r2, r0
	str r0, [r4, #4]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	mov r0, r8
	sub r3, r3, r2
	sub r3, r3, #1
	bl FUN_021DD4FC
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, r1, r5
	str r1, [r4, #4]
	ldr r1, [r4, #4]
	strb r0, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DAC8C: .word 0x000019F4
_021DAC90: .word 0x0220C244
_021DAC94: .word 0x0220C248

	arm_func_start FUN_021DAC98
FUN_021DAC98: ; 0x021DAC98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r8, r0
	ldr r2, _021DAD7C ; =0x000019F4
	mov r0, r6
	mov r7, r1
	add r5, r8, r2
	bl strlen
	mov r4, r0
	ldr r0, _021DAD80 ; =0x0220C250
	bl strlen
	mov sb, r0
	mov r0, r7
	bl strlen
	sub r1, sb, #4
	add r0, r1, r0
	add r4, r4, r0
	ldr r2, [r5, #8]
	ldr r1, [r5, #4]
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _021DAD1C
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl FUN_021DA950
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021DAD1C:
	ldr r0, [r5]
	ldr r1, _021DAD84 ; =0x0220C148
	bl strstr
	add r8, r0, #2
	ldrsb sb, [r0, #2]
	mov r0, r8
	bl strlen
	add r2, r0, #1
	add r0, r8, r4
	mov r1, r8
	bl memmove
	ldr r2, _021DAD80 ; =0x0220C250
	str r6, [sp]
	mov r3, r7
	mov r0, r8
	add r1, r4, #1
	bl OS_SNPrintf
	strb sb, [r8, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021DAD7C: .word 0x000019F4
_021DAD80: .word 0x0220C250
_021DAD84: .word 0x0220C148

	arm_func_start FUN_021DAD88
FUN_021DAD88: ; 0x021DAD88
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	ldr r0, _021DAE40 ; =0x000019F4
	cmp r1, #0
	ldreq r6, _021DAE44 ; =0x0220C25C
	add r5, r7, r0
	add r0, r7, #0x1000
	ldrne r6, _021DAE48 ; =0x0220C2B0
	ldr r0, [r0, #0x124]
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl strlen
	sub r1, r8, #4
	add r0, r1, r0
	add r1, r4, r0
	ldr r0, _021DAE40 ; =0x000019F4
	add r2, r1, #0x400
	add r1, r7, r0
	mov r0, r7
	bl FUN_021DAA50
	cmp r0, #1
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl OS_SNPrintf
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021DAE40: .word 0x000019F4
_021DAE44: .word 0x0220C25C
_021DAE48: .word 0x0220C2B0

	arm_func_start FUN_021DAE4C
FUN_021DAE4C: ; 0x021DAE4C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _021DAF00 ; =0x00001A34
	mov r2, #0x20
	add r1, r5, r1
	bl FUN_021DA260
	ldr r1, _021DAF04 ; =0x00001A04
	mov r0, r5
	add r1, r5, r1
	bl FUN_021DAA10
	ldr r1, _021DAF08 ; =0x000019F4
	mov r0, r5
	add r1, r5, r1
	bl FUN_021DAA10
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9c8]
	cmp r1, #0
	beq _021DAEC0
	ldr r0, _021DAF0C ; =0x0220C2D0
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9c8]
_021DAEC0:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x9cc]
	cmp r1, #0
	beq _021DAEE8
	ldr r0, _021DAF10 ; =0x0220C2E8
	mov r2, #0
	blx r4
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0x9cc]
_021DAEE8:
	ldr r2, _021DAF14 ; =0x00001C10
	mov r0, r5
	mov r1, #0
	bl MI_CpuFill8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DAF00: .word 0x00001A34
_021DAF04: .word 0x00001A04
_021DAF08: .word 0x000019F4
_021DAF0C: .word 0x0220C2D0
_021DAF10: .word 0x0220C2E8
_021DAF14: .word 0x00001C10

	arm_func_start FUN_021DAF18
FUN_021DAF18: ; 0x021DAF18
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	add r0, sl, #0x1000
	ldr fp, [r0, #0x1c]
	ldr r0, _021DB224 ; =0x00001134
	ldr r1, _021DB228 ; =0x00001198
	ldr r2, _021DB22C ; =0x00001A04
	add r8, sl, r0
	cmp fp, #0
	mov r0, sl
	add r6, sl, r1
	add r7, sl, r2
	mov r5, #0
	ldrle fp, _021DB230 ; =0x0000EA60
	bl FUN_021DB35C
	mov r0, sl
	bl FUN_021DB348
	movs r4, r0
	addeq r0, sl, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_0209CB44
	add r0, sl, #0x1000
	ldr r0, [r0, #0x12c]
	cmp r0, #1
	bne _021DAFC8
	mov r0, r6
	mov r1, #0
	mov r2, #0x830
	bl MI_CpuFill8
	ldr r1, _021DB234 ; =FUN_021DAAC0
	add r0, sl, #0x1000
	str r1, [r6, #0x810]
	ldr r1, [r0, #0x124]
	ldr r0, _021DB238 ; =0x0220C0E4
	str r1, [r6, #0x800]
	mov r1, #0xb
	str r6, [r8, #0xc]
	bl FUN_020A3688
	mov r0, #1
	bl FUN_020A02EC
_021DAFC8:
	add r0, sl, #0x1100
	ldrh r1, [r0, #0x30]
	mov r2, r4
	mov r0, #0
	bl FUN_0209CB78
	bl FUN_0209C934
	cmp r0, #0
	beq _021DB004
	add r0, sl, #0x1000
	mov r1, #3
	str r1, [r0, #0x20]
	bl FUN_0209CB24
	bl FUN_0209CC10
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DB004:
	add r0, sl, #0x1000
	ldr r4, [r0, #0x9f4]
	mov r0, r4
	bl strlen
	mov r1, r0
	mov r0, r4
	bl FUN_0209C030
	cmp r0, #0
	str r0, [sp, #8]
	addle r0, sl, #0x1000
	movle r1, #5
	strle r1, [r0, #0x20]
	ble _021DB20C
	bl FUN_0209BF4C
	mov r0, sl
	bl FUN_021DB3B8
	cmp r0, #0
	addeq r0, sl, #0x1000
	moveq r1, #7
	streq r1, [r0, #0x20]
	beq _021DB20C
	ldr r0, [r7]
	str r0, [r7, #4]
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	add r0, r1, r0
	str r0, [r7, #8]
	bl OS_GetTick
	mov r6, r0
	mov r0, fp, asr #0x1f
	mov r8, r1
	str r0, [sp, #4]
	mov r4, #0
_021DB088:
	ldr r0, _021DB23C ; =0x021C8F04
	ldr r0, [r0]
	cmp r0, #0
	addeq r0, sl, #0x1000
	moveq r1, #5
	streq r1, [r0, #0x20]
	beq _021DB20C
	bl FUN_0209BF9C
	str r0, [sp, #8]
	cmp r0, #0
	blt _021DB1E8
	cmp r0, #0
	ble _021DB16C
	bl OS_GetTick
	mov r6, r0
	add r0, sp, #8
	mov r8, r1
	bl FUN_0209C638
	cmp r0, #0
	beq _021DB1E8
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	sub r2, r2, #1
	ldr sb, [sp, #8]
	sub r2, r2, r1
	cmp sb, r2
	movge sb, r2
	mov r2, sb
	bl MI_CpuCopy8
	ldr r0, [r7, #4]
	cmp r5, #1
	add r0, r0, sb
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	strb r4, [r0]
	bne _021DB144
	ldr r0, _021DB240 ; =0x00001A14
	add r0, sl, r0
	bl OS_LockMutex
	add r1, sl, #0x1000
	ldr r2, [r1, #0xa30]
	ldr r0, _021DB240 ; =0x00001A14
	add r2, r2, sb
	add r0, sl, r0
	str r2, [r1, #0xa30]
	bl OS_UnlockMutex
	b _021DB150
_021DB144:
	mov r0, sl
	bl FUN_021DB248
	mov r5, r0
_021DB150:
	ldr r0, [sp, #8]
	cmp r0, sb
	bls _021DB164
	bl FUN_0209C52C
	b _021DB1E8
_021DB164:
	mov r0, sb
	bl FUN_0209C52C
_021DB16C:
	add r0, sl, #0x1000
	ldr r1, [r0, #0xa2c]
	cmp r1, #0
	blt _021DB188
	ldr r0, [r0, #0xa30]
	cmp r0, r1
	bge _021DB1E8
_021DB188:
	bl OS_GetTick
	subs r2, r0, r6
	sbc r0, r1, r8
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021DB244 ; =0x000082EA
	mov r3, r4
	bl _ll_udiv
	ldr r2, [sp, #4]
	cmp r1, r2
	cmpeq r0, fp
	addhi r0, sl, #0x1000
	movhi r1, #6
	strhi r1, [r0, #0x20]
	bhi _021DB20C
	mov r0, sl
	bl FUN_021DB3B8
	cmp r0, #0
	bne _021DB088
	add r0, sl, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _021DB20C
_021DB1E8:
	bl FUN_0209C840
	bl FUN_0209C7AC
	bl FUN_0209CB24
	bl FUN_0209CC10
	add r0, sl, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DB20C:
	bl FUN_0209C840
	bl FUN_0209C7AC
	bl FUN_0209CB24
	bl FUN_0209CC10
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DB224: .word 0x00001134
_021DB228: .word 0x00001198
_021DB22C: .word 0x00001A04
_021DB230: .word 0x0000EA60
_021DB234: .word FUN_021DAAC0
_021DB238: .word 0x0220C0E4
_021DB23C: .word 0x021C8F04
_021DB240: .word 0x00001A14
_021DB244: .word 0x000082EA

	arm_func_start FUN_021DB248
FUN_021DB248: ; 0x021DB248
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #0x1000
	ldr r6, [r0, #0xa04]
	ldr r2, _021DB334 ; =0x00001A04
	ldr r1, _021DB338 ; =0x0220C148
	mov r0, r6
	add r4, r5, r2
	bl strstr
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _021DB338 ; =0x0220C148
	mov r0, r6
	bl strstr
	ldr r1, _021DB33C ; =0x00001A14
	add r6, r0, #4
	add r0, r5, r1
	bl OS_LockMutex
	ldr r0, [r4, #4]
	ldr r1, _021DB33C ; =0x00001A14
	sub r2, r0, r6
	add r0, r5, #0x1000
	str r2, [r0, #0xa30]
	add r0, r5, r1
	bl OS_UnlockMutex
	ldr r0, [r4]
	ldr r1, _021DB340 ; =0x0220C300
	bl strstr
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DB340 ; =0x0220C300
	bl strlen
	add r7, r4, r0
	ldr r1, _021DB344 ; =0x0220C164
	mov r0, r7
	bl strstr
	mov r4, r0
	ldr r0, _021DB33C ; =0x00001A14
	ldrsb r6, [r4]
	mov r1, #0
	add r0, r5, r0
	strb r1, [r4]
	bl OS_LockMutex
	mov r0, r7
	bl atol
	add r1, r5, #0x1000
	ldr r2, _021DB33C ; =0x00001A14
	str r0, [r1, #0xa2c]
	add r0, r5, r2
	bl OS_UnlockMutex
	strb r6, [r4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DB334: .word 0x00001A04
_021DB338: .word 0x0220C148
_021DB33C: .word 0x00001A14
_021DB340: .word 0x0220C300
_021DB344: .word 0x0220C164

	arm_func_start FUN_021DB348
FUN_021DB348: ; 0x021DB348
	ldr ip, _021DB358 ; =0x0209AB80
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	bx ip
	.align 2, 0
_021DB358: .word 0x0209AB80

	arm_func_start FUN_021DB35C
FUN_021DB35C: ; 0x021DB35C
	stmdb sp!, {r4, lr}
	ldr r1, _021DB3AC ; =0x00001134
	mov r4, r0
	add r0, r4, r1
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	ldr r0, _021DB3B0 ; =0x00000B68
	add r1, r4, #0x1000
	str r0, [r1, #0x170]
	ldr r3, [r1, #0x9c8]
	ldr r0, _021DB3AC ; =0x00001134
	ldr r2, _021DB3B4 ; =0x000005EA
	str r3, [r1, #0x174]
	str r2, [r1, #0x17c]
	ldr r2, [r1, #0x9cc]
	add r0, r4, r0
	str r2, [r1, #0x180]
	bl FUN_0209CC28
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DB3AC: .word 0x00001134
_021DB3B0: .word 0x00000B68
_021DB3B4: .word 0x000005EA

	arm_func_start FUN_021DB3B8
FUN_021DB3B8: ; 0x021DB3B8
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x12c]
	cmp r0, #1
	bne _021DB3EC
	ldr r0, _021DB438 ; =0x000019D0
	add r0, r4, r0
	bl OS_GetLowEntropyData
	ldr r0, _021DB438 ; =0x000019D0
	mov r1, #0x20
	add r0, r4, r0
	bl FUN_020A136C
_021DB3EC:
	ldr r0, _021DB43C ; =0x00001BF4
	add r0, r4, r0
	bl OS_LockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc0c]
	cmp r0, #1
	bne _021DB41C
	ldr r0, _021DB43C ; =0x00001BF4
	add r0, r4, r0
	bl OS_UnlockMutex
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DB41C:
	ldr r0, _021DB43C ; =0x00001BF4
	add r0, r4, r0
	bl OS_UnlockMutex
	mov r0, #0xa
	bl OS_Sleep
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DB438: .word 0x000019D0
_021DB43C: .word 0x00001BF4

	arm_func_start FUN_021DB440
FUN_021DB440: ; 0x021DB440
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	ldmneia sp!, {r4, pc}
	ldr r0, _021DB49C ; =0x00001BF4
	add r0, r4, r0
	bl OS_LockMutex
	ldr r0, _021DB49C ; =0x00001BF4
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r4, r0
	str r2, [r1, #0xc0c]
	bl OS_UnlockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _021DB4A0 ; =0x00001B34
	add r0, r4, r0
	bl OS_JoinThread
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DB49C: .word 0x00001BF4
_021DB4A0: .word 0x00001B34

	arm_func_start FUN_021DB4A4
FUN_021DB4A4: ; 0x021DB4A4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r3, _021DB55C ; =0x00001BF4
	mov r5, r0
	add r2, r5, #0x1000
	mov ip, #0
	add r0, r5, r3
	mov r4, r1
	str ip, [r2, #0xc0c]
	bl OS_InitMutex
	ldr r0, _021DB560 ; =0x00001A14
	add r0, r5, r0
	bl OS_InitMutex
	add r0, r5, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _021DB564 ; =0x02210480
	moveq r1, #1
	streq r1, [r0]
	ldrne r0, _021DB564 ; =0x02210480
	movne r1, #0
	strne r1, [r0]
	add r0, r5, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021DB524
	ldr r0, _021DB568 ; =0x00001B34
	add r0, r5, r0
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, pc}
_021DB524:
	ldr r0, _021DB568 ; =0x00001B34
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _021DB56C ; =FUN_021DAF18
	mov r2, r5
	add r0, r5, r0
	add r3, r5, #0x1000
	str r4, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021DB568 ; =0x00001B34
	add r0, r5, r0
	bl OS_WakeupThreadDirect
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DB55C: .word 0x00001BF4
_021DB560: .word 0x00001A14
_021DB564: .word 0x02210480
_021DB568: .word 0x00001B34
_021DB56C: .word FUN_021DAF18

	arm_func_start FUN_021DB570
FUN_021DB570: ; 0x021DB570
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021DB5F4 ; =0x0220C314
	ldr r2, _021DB5F8 ; =0x0220C320
	mov r4, r0
	bl FUN_021DAC98
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x9f4]
	ldr r1, _021DB5FC ; =0x0220C148
	bl strstr
	add r0, r0, #4
	bl strlen
	movs r3, r0
	beq _021DB5E8
	ldr r2, _021DB600 ; =0x0220C328
	add r0, sp, #0
	mov r1, #7
	bl OS_SNPrintf
	ldr r1, _021DB604 ; =0x0220C32C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021DAC98
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
_021DB5E8:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DB5F4: .word 0x0220C314
_021DB5F8: .word 0x0220C320
_021DB5FC: .word 0x0220C148
_021DB600: .word 0x0220C328
_021DB604: .word 0x0220C32C

	arm_func_start FUN_021DB608
FUN_021DB608: ; 0x021DB608
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r2, _021DB714 ; =0x00001C10
	mov r6, r0
	ldr r4, [r5, #0xc]
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _021DB718 ; =0x00001004
	add r0, r6, #0x1000
	mvn r2, #0
	str r2, [r0, #0xa2c]
	mov lr, r5
	str r2, [r0, #0xa30]
	add ip, r6, r1
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldr r0, _021DB71C ; =0x0220C33C
	ldr r1, _021DB720 ; =0x00000B68
	blx r4
	add r1, r6, #0x1000
	str r0, [r1, #0x9c8]
	ldr r0, [r1, #0x9c8]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021DB724 ; =0x0220C354
	ldr r1, _021DB728 ; =0x000005EA
	blx r4
	add r2, r6, #0x1000
	str r0, [r2, #0x9cc]
	ldr r0, [r2, #0x9cc]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _021DB72C ; =0x00001A04
	ldr r2, [r2, #0xc]
	mov r0, r6
	add r1, r6, r1
	bl FUN_021DAA50
	cmp r0, #0
	addeq r1, r6, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5]
	mov r0, r6
	bl FUN_021DA7E8
	cmp r0, #0
	addeq r1, r6, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_021DAD88
	add r1, r6, #0x1000
	str r0, [r1, #0x20]
	ldr r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r1]
	add r0, r6, #0x1000
	ldr r0, [r0, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DB714: .word 0x00001C10
_021DB718: .word 0x00001004
_021DB71C: .word 0x0220C33C
_021DB720: .word 0x00000B68
_021DB724: .word 0x0220C354
_021DB728: .word 0x000005EA
_021DB72C: .word 0x00001A04

	arm_func_start FUN_021DB730
FUN_021DB730: ; 0x021DB730
	stmdb sp!, {r4, lr}
	ldr r2, _021DB770 ; =0x02210484
	ldr r1, _021DB774 ; =0x000011DC
	ldr r2, [r2]
	mov r4, r0
	add r0, r2, r1
	bl OS_LockMutex
	ldr r2, _021DB770 ; =0x02210484
	ldr r1, _021DB774 ; =0x000011DC
	ldr r0, [r2]
	add r0, r0, #0x1000
	str r4, [r0]
	ldr r0, [r2]
	add r0, r0, r1
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DB770: .word 0x02210484
_021DB774: .word 0x000011DC

	arm_func_start FUN_021DB778
FUN_021DB778: ; 0x021DB778
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2d4
	ldr r5, _021DC670 ; =0x02210484
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r7, [sp]
	add r0, r0, #0x1000
	ldr sb, [r0, #0x108]
	ldr r8, [r0, #0x10c]
	mov r0, r7
	str r0, [sp, #8]
	str r0, [sp, #0x1c]
	mvn r0, #2
	str r0, [sp, #0x20]
	mov r0, r7
	str r0, [sp, #0x24]
	mvn r0, #3
	str r0, [sp, #0x28]
	mov r0, r7
	str r0, [sp, #0x2c]
	mov r0, #0x1000
	str r0, [sp, #0x14]
	mov r0, #5
	str r0, [sp, #0x30]
	mov r0, r7
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r0, #4
	str r0, [sp, #0x40]
	mov r0, r7
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r0, [sp, #0x58]
	str r0, [sp, #0x54]
	mvn r0, #4
	str r0, [sp, #0x5c]
	mov r0, r7
	str r0, [sp, #0x60]
	mvn r0, #1
	ldr r4, _021DC674 ; =0x02210490
	mov r6, #1
	str r0, [sp, #0x18]
_021DB830:
	ldr r0, _021DC678 ; =0x02210494
	ldr r1, [sp, #0x14]
	str r6, [r0, #4]
	str r1, [r0, #8]
	ldr r1, _021DC67C ; =0x00004E20
	str sb, [r0, #0xc]
	str r1, [r0, #0x18]
	str r8, [r0, #0x10]
	ldr r0, _021DC680 ; =0x0220C36C
	ldr r1, [r5]
	ldr r2, [r0]
	ldr r0, _021DC678 ; =0x02210494
	add r1, r1, #0x1000
	str r2, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, _021DC678 ; =0x02210494
	bl FUN_021DB608
	cmp r0, #0
	beq _021DB89C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DB89C:
	ldr r0, [r4]
	bl FUN_021DB570
	cmp r0, #0
	beq _021DB8C4
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DB8C4:
	ldr r0, _021DC684 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_021DB4A4
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021DB8FC
	ldr r0, _021DC688 ; =0x00001B34
	add r0, r1, r0
	bl OS_JoinThread
_021DB8FC:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021DB91C
	cmp r1, #8
	beq _021DB948
	b _021DB930
_021DB91C:
	ldr r0, _021DC670 ; =0x02210484
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021DB930:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #3
	bl FUN_021DB730
	b _021DC614
_021DB948:
	ldr r1, [sp, #0x1c]
	bl FUN_021DA3DC
	cmp r0, #1
	beq _021DB970
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DB970:
	ldr r0, [r4]
	ldr r1, _021DC68C ; =0x0220C418
	bl FUN_021DA388
	bl atol
	mov sl, r0
	ldr r0, _021DC690 ; =0x021D74A8
	ldr r0, [r0]
	cmp r0, #0x22
	bne _021DB9A0
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DB9A0:
	cmp sl, #0xc8
	beq _021DBCB4
	ldr r0, _021DC694 ; =0x0000012E
	cmp sl, r0
	bne _021DBC9C
	ldr r0, _021DC698 ; =0x0221048C
	str r6, [r0]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021DBC0C
	ldr r1, _021DC674 ; =0x02210490
	mvn r2, #5
	str r2, [r0, #4]
	ldr r0, [r1]
	bl FUN_021DAE4C
	ldr r2, _021DC678 ; =0x02210494
	ldr r0, _021DC69C ; =0x0220BEB4
	ldr r3, _021DC67C ; =0x00004E20
	ldr r0, [r0]
	mov r5, #0
	mov r4, #0x200
	ldr r1, _021DC6A0 ; =0x0220C424
	str r0, [r2]
	str r5, [r2, #4]
	str r4, [r2, #8]
	str sb, [r2, #0xc]
	str r8, [r2, #0x10]
	str r3, [r2, #0x18]
	bl strcmp
	cmp r0, #0
	ldrne r0, _021DC678 ; =0x02210494
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _021DC674 ; =0x02210490
	ldr r1, _021DC678 ; =0x02210494
	ldr r0, [r0]
	bl FUN_021DB608
	cmp r0, #0
	beq _021DBA5C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DBA5C:
	add r0, sp, #0x240
	bl FUN_021DA238
	cmp r0, #0
	beq _021DBA88
	ldr r0, _021DC674 ; =0x02210490
	add r1, sp, #0x240
	ldr r0, [r0]
	mov r2, #1
	bl FUN_021D9C2C
	cmp r0, #0
	bne _021DBAA0
_021DBA88:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #8
	bl FUN_021DB730
	b _021DC614
_021DBAA0:
	ldr r0, _021DC674 ; =0x02210490
	ldr r1, _021DC6A4 ; =0x0220C444
	ldr r0, [r0]
	ldr r2, _021DC6A8 ; =0x0220C44C
	mov r3, #7
	bl FUN_021DAB68
	cmp r0, #0
	bne _021DBAF8
	ldr r0, _021DC670 ; =0x02210484
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	ldr r1, _021DC674 ; =0x02210490
	mov r3, r0
	ldr r0, [r1]
	ldr r1, _021DC6AC ; =0x0220C454
	mov r2, r4
	bl FUN_021DAB68
	cmp r0, #0
	beq _021DBB10
_021DBAF8:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #8
	bl FUN_021DB730
	b _021DC614
_021DBB10:
	ldr r1, _021DC670 ; =0x02210484
	ldr r0, _021DC6B0 ; =0x0220C464
	ldr r1, [r1]
	mov r2, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x118]
	blx r8
	ldr r0, _021DC670 ; =0x02210484
	mov r2, #0
	ldr r0, [r0]
	ldr r1, _021DC674 ; =0x02210490
	add r0, r0, #0x1000
	str r2, [r0, #0x118]
	ldr r0, [r1]
	bl FUN_021DB570
	cmp r0, #0
	beq _021DBB6C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DBB6C:
	ldr r0, _021DC684 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, _021DC674 ; =0x02210490
	sub r1, r0, #1
	ldr r0, [r2]
	bl FUN_021DB4A4
	ldr r0, _021DC674 ; =0x02210490
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021DBBAC
	ldr r0, _021DC688 ; =0x00001B34
	add r0, r1, r0
	bl OS_JoinThread
_021DBBAC:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021DBBD0
	cmp r1, #8
	beq _021DBBFC
	b _021DBBE4
_021DBBD0:
	ldr r0, _021DC670 ; =0x02210484
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021DBBE4:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #3
	bl FUN_021DB730
	b _021DC614
_021DBBFC:
	bl FUN_021DAE4C
	mov r0, #7
	bl FUN_021DB730
	b _021DC614
_021DBC0C:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr fp, [r1, #0xa04]
	cmp fp, #0
	bne _021DBC30
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DBC30:
	mov r0, fp
	bl strlen
	add r1, r0, #1
	ldr r0, _021DC6B4 ; =0x0220C394
	blx sb
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _021DBC80
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #4
	bl FUN_021DB730
	b _021DC614
_021DBC80:
	mov r0, fp
	bl strlen
	mov r2, r0
	ldr r0, [sp, #0xc]
	mov r1, fp
	bl strncpy
	b _021DBCB4
_021DBC9C:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #0xa
	bl FUN_021DB730
	b _021DC614
_021DBCB4:
	ldr r0, [r4]
	bl FUN_021DAE4C
	add r0, sp, #0x68
	bl FUN_02095EC8
	ldr r2, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	bne _021DBDEC
	ldr r1, [r5]
	ldr r0, _021DC6B8 ; =0x022104B0
	add r2, r1, #0x1000
	ldr r1, [sp, #0x20]
	str r1, [r2, #4]
	ldr r2, [sp, #0x24]
	mov r1, r0
	strh r2, [r1]
	strb r2, [r1, #0x34]
	ldr r2, [r5]
	ldr r1, [r4]
	add r3, r2, #0x1000
	ldr fp, [r3, #0x108]
	mov r2, r0
	str fp, [r2, #0x40]
	ldr r3, [r3, #0x10c]
	str r3, [r2, #0x44]
	bl FUN_021D9ACC
	cmp r0, #0
	beq _021DBD38
	mov r0, #5
	bl FUN_021DB730
	b _021DC614
_021DBD38:
	bl FUN_021D98DC
	bl FUN_021D988C
	cmp r0, #0x15
	beq _021DBDE8
	bl FUN_021D988C
	cmp r0, #9
	bne _021DBD6C
	ldr r0, _021DC670 ; =0x02210484
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	b _021DBDD8
_021DBD6C:
	add r0, sp, #0x7c
	bl FUN_021D97F8
	ldr r0, _021DC6BC ; =0x02210488
	ldr r0, [r0]
	cmp r0, #1
	bne _021DBDC4
	ldr r1, [sp, #0x7c]
	ldr r0, _021DC6C0 ; =0xFFFFA4FA
	cmp r1, r0
	beq _021DBDA0
	bl FUN_021D988C
	cmp r0, #0xb
	bne _021DBDC4
_021DBDA0:
	ldr r0, _021DC670 ; =0x02210484
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	bl FUN_021D991C
	mov r0, #0xb
	bl FUN_021DB730
	b _021DC614
_021DBDC4:
	ldr r0, _021DC670 ; =0x02210484
	ldr r1, [sp, #0x7c]
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021DBDD8:
	bl FUN_021D991C
	mov r0, #6
	bl FUN_021DB730
	b _021DC614
_021DBDE8:
	bl FUN_021D991C
_021DBDEC:
	cmp sl, #0xc8
	bne _021DBE14
	ldr r0, _021DC670 ; =0x02210484
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl FUN_021DB730
	b _021DC614
_021DBE14:
	ldr r0, [r5]
	ldr r1, _021DC6A0 ; =0x0220C424
	add r2, r0, #0x1000
	ldr r0, [sp, #0x28]
	str r0, [r2, #4]
	ldr r0, _021DC678 ; =0x02210494
	ldr r2, [sp, #0x2c]
	str sb, [r0, #0xc]
	str r2, [r0, #4]
	ldr r2, [sp, #0x14]
	str r8, [r0, #0x10]
	str r2, [r0, #8]
	ldr r2, _021DC6C4 ; =0x00009C40
	str r2, [r0, #0x18]
	ldr r0, _021DC69C ; =0x0220BEB4
	ldr r2, _021DC678 ; =0x02210494
	ldr r0, [r0]
	str r0, [r2]
	bl strcmp
	cmp r0, #0
	ldrne r0, _021DC678 ; =0x02210494
	ldr r1, _021DC678 ; =0x02210494
	strne r6, [r0, #0x14]
	ldr r0, [r4]
	bl FUN_021DB608
	cmp r0, #0
	beq _021DBE98
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DBE98:
	add r0, sp, #0x240
	bl FUN_021DA238
	cmp r0, #0
	beq _021DBEC0
	ldr r0, [r4]
	add r1, sp, #0x240
	mov r2, r6
	bl FUN_021D9C2C
	cmp r0, #0
	bne _021DBED8
_021DBEC0:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #8
	bl FUN_021DB730
	b _021DC614
_021DBED8:
	ldr r0, [r4]
	ldr r1, _021DC6A4 ; =0x0220C444
	ldr r2, _021DC6C8 ; =0x0220C484
	ldr r3, [sp, #0x30]
	bl FUN_021DAB68
	cmp r0, #0
	bne _021DBF24
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr sl, [r0, #0x114]
	mov r0, sl
	bl strlen
	mov r3, r0
	ldr r0, [r4]
	ldr r1, _021DC6CC ; =0x0220C48C
	mov r2, sl
	bl FUN_021DAB68
	cmp r0, #0
	beq _021DBF3C
_021DBF24:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #8
	bl FUN_021DB730
	b _021DC614
_021DBF3C:
	ldr r1, [r5]
	ldr r0, _021DC6D0 ; =0x0220C3B0
	add r1, r1, #0x1000
	ldr r2, [sp, #0x34]
	ldr r1, [r1, #0x114]
	blx r8
	ldr r0, [r5]
	add r1, r0, #0x1000
	ldr r0, [sp, #0x38]
	str r0, [r1, #0x114]
	ldr r0, [r4]
	bl FUN_021DB570
	cmp r0, #0
	beq _021DBF8C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DBF8C:
	ldr r0, _021DC684 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_021DB4A4
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021DBFC4
	ldr r0, _021DC688 ; =0x00001B34
	add r0, r1, r0
	bl OS_JoinThread
_021DBFC4:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021DC02C
	cmp r1, #3
	beq _021DBFEC
	cmp r1, #8
	beq _021DC058
	b _021DC040
_021DBFEC:
	bl FUN_021DAE4C
	ldr r0, _021DC6BC ; =0x02210488
	ldr r0, [r0]
	cmp r0, #1
	bne _021DC020
	ldr r0, _021DC670 ; =0x02210484
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl FUN_021DB730
	b _021DC614
_021DC020:
	mov r0, #3
	bl FUN_021DB730
	b _021DC614
_021DC02C:
	ldr r0, _021DC670 ; =0x02210484
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021DC040:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #3
	bl FUN_021DB730
	b _021DC614
_021DC058:
	ldr r1, [sp, #0x3c]
	bl FUN_021DA3DC
	cmp r0, #1
	beq _021DC080
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DC080:
	ldr r0, [r4]
	ldr r1, _021DC68C ; =0x0220C418
	bl FUN_021DA388
	bl atol
	mov sl, r0
	ldr r0, _021DC690 ; =0x021D74A8
	ldr r0, [r0]
	cmp r0, #0x22
	bne _021DC0BC
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DC0BC:
	cmp sl, #0xc8
	beq _021DC118
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	ldr r0, _021DC6BC ; =0x02210488
	ldr r0, [r0]
	cmp r0, #1
	bne _021DC10C
	ldr r0, _021DC694 ; =0x0000012E
	cmp sl, r0
	bne _021DC10C
	ldr r0, _021DC670 ; =0x02210484
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl FUN_021DB730
	b _021DC614
_021DC10C:
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DC118:
	ldr r0, [r4]
	ldr r1, _021DC6D4 ; =0x0220C494
	ldr r3, [sp, #0x40]
	add r2, sp, #0x64
	bl FUN_021DA334
	cmp r0, #0
	bgt _021DC14C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC14C:
	add r0, sp, #0x64
	bl atol
	ldr r1, _021DC690 ; =0x021D74A8
	ldr r1, [r1]
	cmp r1, #0x22
	bne _021DC17C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC17C:
	ldr r1, _021DC6BC ; =0x02210488
	ldr r1, [r1]
	cmp r1, #1
	bne _021DC1B4
	cmp r0, #0x72
	bne _021DC1B4
	ldr r0, _021DC670 ; =0x02210484
	mov r2, #0
	ldr r1, [r0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl FUN_021DB730
	b _021DC614
_021DC1B4:
	cmp r0, #0x64
	blt _021DC1D4
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #6
	bl FUN_021DB730
	b _021DC614
_021DC1D4:
	ldr r2, [sp, #0x44]
	ldr r0, [r4]
	ldr r1, _021DC6D8 ; =0x0220C4A0
	mov r3, r2
	bl FUN_021DA334
	mov fp, r0
	cmp fp, #0
	bgt _021DC20C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC20C:
	ldr r2, [sp, #0x48]
	ldr r0, [r4]
	ldr r1, _021DC6DC ; =0x0220C4A4
	mov r3, r2
	bl FUN_021DA334
	str r0, [sp, #4]
	cmp r0, #0
	bgt _021DC244
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC244:
	ldr r2, [sp, #0x4c]
	ldr r0, [r4]
	ldr r1, _021DC6E0 ; =0x0220C4AC
	mov r3, r2
	bl FUN_021DA334
	mov sl, r0
	ldr r0, _021DC6E4 ; =0x0220C3CC
	add r1, fp, #1
	blx sb
	str r0, [sp]
	cmp r0, #0
	bne _021DC28C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #4
	bl FUN_021DB730
	b _021DC614
_021DC28C:
	ldr r1, [sp, #4]
	ldr r0, _021DC6E8 ; =0x0220C3D8
	add r1, r1, #1
	blx sb
	movs r7, r0
	bne _021DC2BC
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #4
	bl FUN_021DB730
	b _021DC614
_021DC2BC:
	cmp sl, #0
	ble _021DC2F4
	ldr r0, _021DC6EC ; =0x0220C3E8
	add r1, sl, #1
	blx sb
	str r0, [sp, #8]
	cmp r0, #0
	bne _021DC2F4
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #4
	bl FUN_021DB730
	b _021DC614
_021DC2F4:
	ldr r0, [r4]
	ldr r1, _021DC6D8 ; =0x0220C4A0
	ldr r2, [sp]
	add r3, fp, #1
	bl FUN_021DA334
	cmp r0, #0
	bge _021DC328
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC328:
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x50]
	add r3, r1, #1
	ldr r1, [sp]
	strb r2, [r1, r0]
	ldr r0, [r4]
	ldr r1, _021DC6DC ; =0x0220C4A4
	mov r2, r7
	bl FUN_021DA334
	cmp r0, #0
	bge _021DC36C
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC36C:
	ldr r1, [sp, #0x54]
	cmp sl, #0
	strb r1, [r7, r0]
	mov fp, r1
	ble _021DC404
	ldr r0, [r4]
	ldr r1, _021DC6E0 ; =0x0220C4AC
	ldr r2, [sp, #8]
	add r3, sl, #1
	bl FUN_021DA334
	cmp r0, #0
	bge _021DC3B4
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC3B4:
	ldr r2, [sp, #0x58]
	ldr r1, [sp, #8]
	strb r2, [r1, r0]
	mov r0, r1
	bl atol
	ldr r1, _021DC690 ; =0x021D74A8
	ldr r1, [r1]
	cmp r1, #0x22
	bne _021DC3F0
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #9
	bl FUN_021DB730
	b _021DC614
_021DC3F0:
	mov r1, #0x3e8
	mul fp, r0, r1
	ldr r0, _021DC6F0 ; =0x0002BF20
	cmp fp, r0
	movgt fp, r0
_021DC404:
	ldr r0, [r4]
	bl FUN_021DAE4C
	ldr r0, [r5]
	ldr r1, _021DC678 ; =0x02210494
	add r2, r0, #0x1000
	ldr r0, [sp, #0x5c]
	str r0, [r2, #4]
	mov r0, r1
	ldr r2, [sp]
	str sb, [r0, #0xc]
	str r2, [r0]
	ldr r2, [sp, #0x60]
	str r8, [r0, #0x10]
	str r2, [r0, #4]
	ldr r2, [sp, #0x14]
	str r2, [r0, #8]
	ldr r2, _021DC6F4 ; =0x0001D4C0
	str r2, [r0, #0x18]
	ldr r0, [r4]
	bl FUN_021DB608
	cmp r0, #0
	beq _021DC474
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DC474:
	ldr r0, [r4]
	mov r1, r7
	bl FUN_021DAACC
	cmp r0, #0
	beq _021DC4A0
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #8
	bl FUN_021DB730
	b _021DC614
_021DC4A0:
	ldr r0, [r4]
	bl FUN_021DB570
	cmp r0, #0
	beq _021DC4C8
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #1
	bl FUN_021DB730
	b _021DC614
_021DC4C8:
	ldr r0, _021DC684 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_021DB4A4
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	beq _021DC500
	ldr r0, _021DC688 ; =0x00001B34
	add r0, r1, r0
	bl OS_JoinThread
_021DC500:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021DC520
	cmp r1, #8
	beq _021DC54C
	b _021DC534
_021DC520:
	ldr r0, _021DC670 ; =0x02210484
	mvn r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021DC534:
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #3
	bl FUN_021DB730
	b _021DC614
_021DC54C:
	mov r1, r6
	bl FUN_021DA3DC
	cmp r0, #1
	beq _021DC574
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DC574:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr sl, [r1, #0xa04]
	cmp sl, #0
	bne _021DC598
	bl FUN_021DAE4C
	mov r0, #2
	bl FUN_021DB730
	b _021DC614
_021DC598:
	mov r0, sl
	bl strlen
	add r1, r0, #1
	ldr r0, _021DC6F8 ; =0x0220C3F8
	blx sb
	ldr r1, [r5]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _021DC5E8
	ldr r0, _021DC674 ; =0x02210490
	ldr r0, [r0]
	bl FUN_021DAE4C
	mov r0, #4
	bl FUN_021DB730
	b _021DC614
_021DC5E8:
	mov r0, sl
	bl strlen
	mov r2, r0
	ldr r0, [sp, #0x10]
	mov r1, sl
	bl strncpy
	ldr r0, [r4]
	bl FUN_021DAE4C
	mov r0, fp
	bl OS_Sleep
	b _021DB830
_021DC614:
	ldr r0, [sp]
	cmp r0, #0
	beq _021DC630
	ldr r0, _021DC6FC ; =0x0220C4B4
	ldr r1, [sp]
	mov r2, #0
	blx r8
_021DC630:
	cmp r7, #0
	beq _021DC648
	ldr r0, _021DC700 ; =0x0220C4C0
	mov r1, r7
	mov r2, #0
	blx r8
_021DC648:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x2d4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021DC704 ; =0x0220C4CC
	ldr r1, [sp, #8]
	mov r2, #0
	blx r8
	add sp, sp, #0x2d4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DC670: .word 0x02210484
_021DC674: .word 0x02210490
_021DC678: .word 0x02210494
_021DC67C: .word 0x00004E20
_021DC680: .word 0x0220C36C
_021DC684: .word 0x021D3498
_021DC688: .word 0x00001B34
_021DC68C: .word 0x0220C418
_021DC690: .word 0x021D74A8
_021DC694: .word 0x0000012E
_021DC698: .word 0x0221048C
_021DC69C: .word 0x0220BEB4
_021DC6A0: .word 0x0220C424
_021DC6A4: .word 0x0220C444
_021DC6A8: .word 0x0220C44C
_021DC6AC: .word 0x0220C454
_021DC6B0: .word 0x0220C464
_021DC6B4: .word 0x0220C394
_021DC6B8: .word 0x022104B0
_021DC6BC: .word 0x02210488
_021DC6C0: .word 0xFFFFA4FA
_021DC6C4: .word 0x00009C40
_021DC6C8: .word 0x0220C484
_021DC6CC: .word 0x0220C48C
_021DC6D0: .word 0x0220C3B0
_021DC6D4: .word 0x0220C494
_021DC6D8: .word 0x0220C4A0
_021DC6DC: .word 0x0220C4A4
_021DC6E0: .word 0x0220C4AC
_021DC6E4: .word 0x0220C3CC
_021DC6E8: .word 0x0220C3D8
_021DC6EC: .word 0x0220C3E8
_021DC6F0: .word 0x0002BF20
_021DC6F4: .word 0x0001D4C0
_021DC6F8: .word 0x0220C3F8
_021DC6FC: .word 0x0220C4B4
_021DC700: .word 0x0220C4C0
_021DC704: .word 0x0220C4CC

	arm_func_start FUN_021DC708
FUN_021DC708: ; 0x021DC708
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _021DC788 ; =0x02210484
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _021DC740
	ldr r0, _021DC78C ; =0x0000111C
	add r0, r1, r0
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
_021DC740:
	ldr r1, _021DC788 ; =0x02210484
	ldr r0, _021DC78C ; =0x0000111C
	ldr r2, [r1]
	mov r3, #0x1000
	ldr r1, _021DC790 ; =FUN_021DB778
	str r3, [sp]
	mov ip, #0x10
	add r0, r2, r0
	add r3, r2, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r1, _021DC788 ; =0x02210484
	ldr r0, _021DC78C ; =0x0000111C
	ldr r1, [r1]
	add r0, r1, r0
	bl OS_WakeupThreadDirect
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021DC788: .word 0x02210484
_021DC78C: .word 0x0000111C
_021DC790: .word FUN_021DB778

	arm_func_start FUN_021DC794
FUN_021DC794: ; 0x021DC794
	ldr r0, _021DC7A8 ; =0x02210484
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_021DC7A8: .word 0x02210484

	arm_func_start FUN_021DC7AC
FUN_021DC7AC: ; 0x021DC7AC
	stmdb sp!, {r4, lr}
	ldr r1, _021DC7E8 ; =0x02210484
	ldr r0, _021DC7EC ; =0x000011DC
	ldr r1, [r1]
	add r0, r1, r0
	bl OS_LockMutex
	ldr r1, _021DC7E8 ; =0x02210484
	ldr r0, _021DC7EC ; =0x000011DC
	ldr r2, [r1]
	add r1, r2, #0x1000
	add r0, r2, r0
	ldr r4, [r1]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DC7E8: .word 0x02210484
_021DC7EC: .word 0x000011DC

	arm_func_start FUN_021DC7F0
FUN_021DC7F0: ; 0x021DC7F0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DC864 ; =0x02210484
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021DC868 ; =0x02210490
	ldr r0, [r0]
	cmp r0, #0
	beq _021DC820
	bl FUN_021DB440
_021DC820:
	bl FUN_021D9974
	ldr r0, _021DC864 ; =0x02210484
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _021DC848
	ldr r0, _021DC86C ; =0x0000111C
	add r0, r1, r0
	bl OS_JoinThread
_021DC848:
	ldr r0, _021DC864 ; =0x02210484
	mvn r1, #6
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DC864: .word 0x02210484
_021DC868: .word 0x02210490
_021DC86C: .word 0x0000111C

	arm_func_start FUN_021DC870
FUN_021DC870: ; 0x021DC870
	stmdb sp!, {r4, lr}
	ldr r1, _021DC958 ; =0x02210484
	ldr r0, _021DC95C ; =0x02210490
	ldr r1, [r1]
	ldr r0, [r0]
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _021DC8B8
	bl FUN_021DAE4C
	ldr r1, _021DC95C ; =0x02210490
	ldr r0, _021DC960 ; =0x0220C4D8
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _021DC95C ; =0x02210490
	mov r1, #0
	str r1, [r0]
_021DC8B8:
	bl FUN_021D991C
	ldr r0, _021DC958 ; =0x02210484
	ldr r0, [r0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _021DC8FC
	ldr r0, _021DC964 ; =0x0220C3B0
	mov r2, #0
	blx r4
	ldr r0, _021DC958 ; =0x02210484
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x114]
_021DC8FC:
	ldr r0, _021DC958 ; =0x02210484
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021DC934
	ldr r0, _021DC968 ; =0x0220C464
	mov r2, #0
	blx r4
	ldr r0, _021DC958 ; =0x02210484
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	str r1, [r0, #0x118]
_021DC934:
	ldr r1, _021DC958 ; =0x02210484
	ldr r0, _021DC96C ; =0x0220C4E8
	ldr r1, [r1]
	mov r2, #0
	blx r4
	ldr r0, _021DC958 ; =0x02210484
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DC958: .word 0x02210484
_021DC95C: .word 0x02210490
_021DC960: .word 0x0220C4D8
_021DC964: .word 0x0220C3B0
_021DC968: .word 0x0220C464
_021DC96C: .word 0x0220C4E8

	arm_func_start FUN_021DC970
FUN_021DC970: ; 0x021DC970
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _021DCA5C ; =0x02210484
	mov r5, r0
	ldr r0, [r1]
	ldr r4, [r5]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021DCA60 ; =0x0220C4FC
	ldr r1, _021DCA64 ; =0x000011F4
	blx r4
	ldr r1, _021DCA5C ; =0x02210484
	cmp r0, #0
	str r0, [r1]
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, _021DCA64 ; =0x000011F4
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _021DCA5C ; =0x02210484
	ldr r2, _021DCA68 ; =0xFFFE7961
	ldr r0, [r1]
	ldr r3, _021DCA6C ; =0x00001108
	add r0, r0, #0x1000
	str r2, [r0, #4]
	ldr ip, [r1]
	ldmia r5, {r0, r1, r2}
	add r3, ip, r3
	stmia r3, {r0, r1, r2}
	ldr r0, _021DCA70 ; =0x02210490
	ldr r0, [r0]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021DCA74 ; =0x0220C510
	ldr r1, _021DCA78 ; =0x00001C10
	blx r4
	ldr r1, _021DCA70 ; =0x02210490
	cmp r0, #0
	str r0, [r1]
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _021DCA5C ; =0x02210484
	ldr r0, _021DCA7C ; =0x000011DC
	ldr r2, [r1]
	ldr r1, _021DCA80 ; =0x0221048C
	mov r3, #0
	add r0, r2, r0
	str r3, [r1]
	bl OS_InitMutex
	bl FUN_021DC708
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DCA5C: .word 0x02210484
_021DCA60: .word 0x0220C4FC
_021DCA64: .word 0x000011F4
_021DCA68: .word 0xFFFE7961
_021DCA6C: .word 0x00001108
_021DCA70: .word 0x02210490
_021DCA74: .word 0x0220C510
_021DCA78: .word 0x00001C10
_021DCA7C: .word 0x000011DC
_021DCA80: .word 0x0221048C

	arm_func_start FUN_021DCA84
FUN_021DCA84: ; 0x021DCA84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r6, r0
	bl strlen
	mov r4, r0
	ldr r0, _021DCCB4 ; =0x0220C580
	bl strlen
	cmp r4, r0
	bne _021DCCA8
	ldrsb r0, [r6, #7]
	cmp r0, #0x20
	bne _021DCCA8
	ldrsb r0, [r6, #0xb]
	cmp r0, #0x20
	bne _021DCCA8
	ldrsb r0, [r6, #0x10]
	cmp r0, #0x20
	bne _021DCCA8
	ldrsb r0, [r6, #0x13]
	cmp r0, #0x3a
	bne _021DCCA8
	ldrsb r0, [r6, #0x16]
	cmp r0, #0x3a
	bne _021DCCA8
	ldrsb r0, [r6, #0x19]
	cmp r0, #0x20
	bne _021DCCA8
	add r0, sp, #0
	bl RTC_GetDate
	cmp r0, #0
	bne _021DCCA8
	add r0, sp, #0x10
	bl RTC_GetTime
	cmp r0, #0
	bne _021DCCA8
	add r0, sp, #0
	add r1, sp, #0x10
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r5, r1
	mvn r0, #0
	cmp r5, r0
	cmpeq r4, r0
	beq _021DCCA8
	add r0, sp, #0x1c
	mov r1, r6
	bl strcpy
	mov r2, #0
	ldr r1, _021DCCB8 ; =0x021D74A8
	add r0, sp, #0x28
	strb r2, [sp, #0x23]
	strb r2, [sp, #0x27]
	strb r2, [sp, #0x2c]
	strb r2, [sp, #0x2f]
	strb r2, [sp, #0x32]
	strb r2, [sp, #0x35]
	str r2, [r1]
	bl atol
	ldr r1, _021DCCB8 ; =0x021D74A8
	str r0, [sp]
	ldr r1, [r1]
	cmp r1, #0x22
	beq _021DCCA8
	sub r1, r0, #0x7d0
	mov r0, #0xd
	str r1, [sp]
	str r0, [sp, #4]
	mov r8, #0
	ldr r7, _021DCCBC ; =0x0220C550
	add r6, sp, #0x24
_021DCB9C:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	bl strcmp
	cmp r0, #0
	addeq r0, r8, #1
	streq r0, [sp, #4]
	beq _021DCBC4
	add r8, r8, #1
	cmp r8, #0xc
	blt _021DCB9C
_021DCBC4:
	ldr r0, [sp, #4]
	cmp r0, #0xc
	bhi _021DCCA8
	ldr r1, _021DCCB8 ; =0x021D74A8
	mov r2, #0
	add r0, sp, #0x21
	str r2, [r1]
	bl atol
	ldr r1, _021DCCB8 ; =0x021D74A8
	str r0, [sp, #8]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _021DCCA8
	mov r2, #0
	add r0, sp, #0x2d
	str r2, [r1]
	bl atol
	ldr r1, _021DCCB8 ; =0x021D74A8
	str r0, [sp, #0x10]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _021DCCA8
	mov r2, #0
	add r0, sp, #0x30
	str r2, [r1]
	bl atol
	ldr r1, _021DCCB8 ; =0x021D74A8
	str r0, [sp, #0x14]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _021DCCA8
	mov r2, #0
	add r0, sp, #0x33
	str r2, [r1]
	bl atol
	ldr r1, _021DCCB8 ; =0x021D74A8
	str r0, [sp, #0x18]
	ldr r0, [r1]
	cmp r0, #0x22
	beq _021DCCA8
	add r0, sp, #0
	add r1, sp, #0x10
	bl RTC_ConvertDateTimeToSecond
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	beq _021DCCA8
	subs r4, r4, r0
	ldr r2, _021DCCC0 ; =0x022104FC
	sbc r3, r5, r1
	ldr r1, _021DCCC4 ; =0x022104F8
	mov r0, #1
	str r3, [r2, #4]
	str r0, [r1]
	add sp, sp, #0x40
	str r4, [r2]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021DCCA8:
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021DCCB4: .word 0x0220C580
_021DCCB8: .word 0x021D74A8
_021DCCBC: .word 0x0220C550
_021DCCC0: .word 0x022104FC
_021DCCC4: .word 0x022104F8

	arm_func_start FUN_021DCCC8
FUN_021DCCC8: ; 0x021DCCC8
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _021DCED4 ; =0x02210504
	mov r1, #0
	ldr r0, [r0]
	add r4, r0, #8
	mov r0, r4
	bl FUN_021DA3DC
	cmp r0, #0
	bne _021DCD08
	ldr r1, _021DCED8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCD08:
	ldr r1, _021DCEDC ; =0x0220C5A0
	mov r0, r4
	bl FUN_021DA388
	cmp r0, #0
	beq _021DCD20
	bl FUN_021DCA84
_021DCD20:
	ldr r1, _021DCEE0 ; =0x0220C5A8
	mov r0, r4
	bl FUN_021DA388
	cmp r0, #0
	bne _021DCD4C
	ldr r1, _021DCED8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCD4C:
	bl atol
	ldr r1, _021DCEE4 ; =0x021D74A8
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _021DCD7C
	ldr r1, _021DCED8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCD7C:
	cmp r2, #0xc8
	beq _021DCDA0
	ldr r1, _021DCEE8 ; =0xFFFF9E58
	mov r0, #0x10
	sub r1, r1, r2
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCDA0:
	ldr r1, _021DCEEC ; =0x0220C5B4
	add r2, sp, #0
	mov r0, r4
	mov r3, #4
	bl FUN_021DA334
	cmp r0, #0
	bgt _021DCDD4
	ldr r1, _021DCED8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCDD4:
	add r0, sp, #0
	bl atol
	ldr r1, _021DCEE4 ; =0x021D74A8
	mov r2, r0
	ldr r0, [r1]
	cmp r0, #0x22
	bne _021DCE08
	ldr r1, _021DCED8 ; =0xFFFF9DF3
	mov r0, #0x10
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCE08:
	cmp r2, #0x64
	blt _021DCE2C
	ldr r1, _021DCEF0 ; =0xFFFFA240
	mov r0, #0x10
	sub r1, r1, r2
	bl FUN_021DD6B0
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021DCE2C:
	ldr r0, _021DCED4 ; =0x02210504
	ldr r1, _021DCEF4 ; =0x0220C5C0
	ldr r2, [r0]
	mov r0, r4
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc18]
	mov r3, #0x40
	add r2, r2, #4
	bl FUN_021DA334
	ldr r0, _021DCED4 ; =0x02210504
	ldr r1, _021DCEF8 ; =0x0220C5C8
	ldr r2, [r0]
	mov r0, r4
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc18]
	mov r3, #0x12c
	add r2, r2, #0x45
	bl FUN_021DA334
	ldr r1, _021DCEFC ; =0x0220C5D8
	add r2, sp, #0
	mov r0, r4
	mov r3, #1
	bl FUN_021DA334
	ldrsb r0, [sp]
	cmp r0, #0x59
	bne _021DCEB0
	ldr r0, _021DCED4 ; =0x02210504
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xc18]
	str r1, [r0]
	b _021DCEC8
_021DCEB0:
	ldr r0, _021DCED4 ; =0x02210504
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xc18]
	str r1, [r0]
_021DCEC8:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DCED4: .word 0x02210504
_021DCED8: .word 0xFFFF9DF3
_021DCEDC: .word 0x0220C5A0
_021DCEE0: .word 0x0220C5A8
_021DCEE4: .word 0x021D74A8
_021DCEE8: .word 0xFFFF9E58
_021DCEEC: .word 0x0220C5B4
_021DCEF0: .word 0xFFFFA240
_021DCEF4: .word 0x0220C5C0
_021DCEF8: .word 0x0220C5C8
_021DCEFC: .word 0x0220C5D8

	arm_func_start FUN_021DCF00
FUN_021DCF00: ; 0x021DCF00
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DCFF0 ; =0x02210504
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba8]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	ldr r0, _021DCFF4 ; =0x00001B3C
	add r0, r1, r0
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _021DCFE4
	ldr r0, _021DCFF0 ; =0x02210504
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _021DCFB0
	cmp r0, #8
	bne _021DCFC4
	bl FUN_021DCCC8
	cmp r0, #0
	bne _021DCF94
	ldr r0, _021DCFF0 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DAE4C
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {pc}
_021DCF94:
	ldr r0, _021DCFF0 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DAE4C
	add sp, sp, #4
	mov r0, #3
	ldmfd sp!, {pc}
_021DCFB0:
	add r0, r1, #8
	bl FUN_021DAE4C
	add sp, sp, #4
	mov r0, #5
	ldmfd sp!, {pc}
_021DCFC4:
	add r0, r1, #8
	bl FUN_021DAE4C
	ldr r1, _021DCFF8 ; =0xFFFFA1DB
	mov r0, #0x11
	bl FUN_021DD6B0
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {pc}
_021DCFE4:
	mov r0, #2
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DCFF0: .word 0x02210504
_021DCFF4: .word 0x00001B3C
_021DCFF8: .word 0xFFFFA1DB

	arm_func_start FUN_021DCFFC
FUN_021DCFFC: ; 0x021DCFFC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xb4
	ldr r2, _021DD244 ; =0x02210504
	mov r5, r0
	ldr r2, [r2]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc18]
	mov r1, #0
	mov r2, #0x174
	bl MI_CpuFill8
	ldr r0, _021DD244 ; =0x02210504
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba8]
	cmp r0, #0
	beq _021DD058
	ldr r0, _021DD248 ; =0x00001B3C
	add r0, r1, r0
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _021DD058
	bl OS_Terminate
_021DD058:
	ldr r0, _021DD24C ; =0x0220BEB4
	ldr r1, _021DD244 ; =0x02210504
	ldr r0, [r0]
	mov r3, #0
	ldr r4, [r1]
	mov r2, #0x1000
	str r0, [sp]
	str r3, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [r4]
	ldr r1, _021DD250 ; =0x0220C5E4
	str r2, [sp, #0xc]
	ldr r2, [r4, #4]
	str r2, [sp, #0x10]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	moveq r0, #0
	ldr r2, _021DD254 ; =0x00004E20
	streq r0, [sp, #0x14]
	add r1, sp, #0
	add r0, r4, #8
	str r2, [sp, #0x18]
	bl FUN_021DB608
	cmp r0, #0
	beq _021DD0DC
	ldr r1, _021DD258 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #0xb4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD0DC:
	add r0, sp, #0x1c
	bl FUN_021DA238
	cmp r0, #0
	beq _021DD10C
	ldr r0, _021DD244 ; =0x02210504
	add r1, sp, #0x1c
	ldr r0, [r0]
	mov r2, #0
	add r0, r0, #8
	bl FUN_021D9C2C
	cmp r0, #0
	bne _021DD134
_021DD10C:
	ldr r0, _021DD244 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DAE4C
	ldr r1, _021DD258 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #0xb4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD134:
	ldr r0, _021DD244 ; =0x02210504
	ldr r1, _021DD25C ; =0x0220C604
	ldr r0, [r0]
	ldr r2, _021DD260 ; =0x0220C60C
	add r0, r0, #8
	mov r3, #6
	bl FUN_021DAB68
	cmp r0, #0
	bne _021DD17C
	ldr r0, _021DD244 ; =0x02210504
	ldr r1, _021DD264 ; =0x0220C614
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #8
	mov r3, #4
	bl FUN_021DAB68
	cmp r0, #0
	beq _021DD1A4
_021DD17C:
	ldr r0, _021DD244 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DAE4C
	ldr r1, _021DD258 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #0xb4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD1A4:
	ldr r0, _021DD244 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DB570
	cmp r0, #0
	beq _021DD1E4
	ldr r0, _021DD244 ; =0x02210504
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_021DAE4C
	ldr r1, _021DD258 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #0xb4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD1E4:
	ldr r0, _021DD268 ; =0x021D3498
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _021DD244 ; =0x02210504
	ldr r2, [r1]
	sub r1, r0, #1
	add r0, r2, #8
	bl FUN_021DB4A4
	ldr r0, _021DD244 ; =0x02210504
	ldr r1, [r0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba8]
	cmp r0, #0
	addne sp, sp, #0xb4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	add r0, r1, #8
	bl FUN_021DAE4C
	ldr r1, _021DD258 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	mov r0, #0
	add sp, sp, #0xb4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DD244: .word 0x02210504
_021DD248: .word 0x00001B3C
_021DD24C: .word 0x0220BEB4
_021DD250: .word 0x0220C5E4
_021DD254: .word 0x00004E20
_021DD258: .word 0xFFFFA1DC
_021DD25C: .word 0x0220C604
_021DD260: .word 0x0220C60C
_021DD264: .word 0x0220C614
_021DD268: .word 0x021D3498

	arm_func_start FUN_021DD26C
FUN_021DD26C: ; 0x021DD26C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DD2BC ; =0x02210504
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	add r0, r0, #8
	bl FUN_021DAE4C
	ldr r1, _021DD2BC ; =0x02210504
	ldr r0, _021DD2C0 ; =0x0220C618
	ldr r1, [r1]
	mov r2, #0
	ldr r3, [r1, #4]
	blx r3
	ldr r0, _021DD2BC ; =0x02210504
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DD2BC: .word 0x02210504
_021DD2C0: .word 0x0220C618

	arm_func_start FUN_021DD2C4
FUN_021DD2C4: ; 0x021DD2C4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _021DD35C ; =0x02210504
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _021DD2FC
	ldr r1, _021DD360 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD2FC:
	ldr r0, _021DD364 ; =0x0220C628
	ldr r1, _021DD368 ; =0x00001C1C
	blx r5
	ldr r1, _021DD35C ; =0x02210504
	cmp r0, #0
	str r0, [r1]
	bne _021DD330
	ldr r1, _021DD360 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DD330:
	ldr r2, _021DD368 ; =0x00001C1C
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _021DD35C ; =0x02210504
	mov r0, #1
	ldr r2, [r1]
	str r5, [r2]
	ldr r1, [r1]
	str r4, [r1, #4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DD35C: .word 0x02210504
_021DD360: .word 0xFFFFA1DC
_021DD364: .word 0x0220C628
_021DD368: .word 0x00001C1C

	arm_func_start FUN_021DD36C
FUN_021DD36C: ; 0x021DD36C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ands r4, r1, #3
	addne sp, sp, #8
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r5, r6
	cmp r1, #0
	bls _021DD3AC
_021DD394:
	ldrsb r4, [r0, r5]
	add r5, r5, #1
	cmp r4, #0x2a
	addne r6, r6, #6
	cmp r5, r1
	blo _021DD394
_021DD3AC:
	cmp r2, #0
	moveq r0, r6, asr #2
	addeq r0, r6, r0, lsr #29
	addeq sp, sp, #8
	moveq r0, r0, asr #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, r6, asr #2
	add r4, r6, r4, lsr #29
	mov r4, r4, asr #3
	cmp r3, r4
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r2]
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, r2
	add ip, sp, #0
	mov lr, #0
	mov r1, #0x3f
	mov r3, #0x3e
_021DD408:
	mov r8, lr
	mov r5, ip
_021DD410:
	ldrsb r7, [r0, r8]
	cmp r7, #0x41
	blt _021DD42C
	cmp r7, #0x5a
	suble r7, r7, #0x41
	strleb r7, [r5]
	ble _021DD474
_021DD42C:
	cmp r7, #0x61
	blt _021DD444
	cmp r7, #0x7a
	suble r7, r7, #0x47
	strleb r7, [r5]
	ble _021DD474
_021DD444:
	cmp r7, #0x30
	blt _021DD45C
	cmp r7, #0x39
	addle r7, r7, #4
	strleb r7, [r5]
	ble _021DD474
_021DD45C:
	cmp r7, #0x2e
	streqb r3, [r5]
	beq _021DD474
	cmp r7, #0x2d
	streqb r1, [r5]
	strneb lr, [r5]
_021DD474:
	add r8, r8, #1
	cmp r8, #4
	add r5, r5, #1
	blt _021DD410
	ldrsb r8, [sp]
	ldrsb r7, [sp, #1]
	add r5, r6, #1
	mov r8, r8, lsl #2
	orr r7, r8, r7, asr #4
	sub r5, r5, r2
	strb r7, [r6]
	cmp r5, r4
	add r0, r0, #4
	bge _021DD4F0
	ldrsb r8, [sp, #1]
	ldrsb r7, [sp, #2]
	add r5, r6, #2
	mov r8, r8, lsl #4
	orr r7, r8, r7, asr #2
	sub r5, r5, r2
	strb r7, [r6, #1]
	cmp r5, r4
	bge _021DD4F0
	ldrsb r7, [sp, #2]
	ldrsb r5, [sp, #3]
	orr r5, r5, r7, lsl #6
	strb r5, [r6, #2]
	add r6, r6, #3
	sub r5, r6, r2
	cmp r5, r4
	blt _021DD408
_021DD4F0:
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_021DD4FC
FUN_021DD4FC: ; 0x021DD4FC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, _021DD69C ; =0xAAAAAAAB
	str r2, [sp]
	umull r4, r5, r1, r4
	ldr r6, _021DD6A0 ; =0x00000003
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	mov sl, r0
	subs r5, r1, r4
	movne r4, #4
	ldr r2, _021DD69C ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r4, #0
	cmp r0, #0
	umull r0, r2, r1, r2
	mov r2, r2, lsr #1
	addeq sp, sp, #0xc
	add r0, r4, r2, lsl #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r3, r0
	addlo sp, sp, #0xc
	mvnlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r7, sl, r1
	ldr r6, [sp]
	cmp sl, r7
	beq _021DD68C
	mov r0, #1
	mov r5, #0
	str r0, [sp, #4]
	mov fp, #3
	mov r4, #0x2a
_021DD580:
	sub sb, r7, sl
	ldr r1, _021DD6A4 ; =0x2AAAAAAB
	mov r0, sb, lsl #3
	smull r2, r3, r1, r0
	ldr r1, _021DD6A8 ; =0x00000006
	add r3, r3, r0, lsr #31
	smull r2, r3, r1, r3
	subs r3, r0, r2
	ldr r1, _021DD6A4 ; =0x2AAAAAAB
	ldrne r8, [sp, #4]
	smull r2, r3, r1, r0
	moveq r8, r5
	add r3, r3, r0, lsr #31
	cmp sb, #3
	movge sb, fp
	add r0, sp, #8
	mov r1, r5
	mov r2, fp
	add r8, r3, r8
	bl MI_CpuFill8
	mov r0, sl
	add r1, sp, #8
	mov r2, sb
	bl MI_CpuCopy8
	ldr r0, _021DD6AC ; =0x0220C638
	cmp r8, #2
	ldr r1, [r0]
	ldrb r0, [sp, #8]
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r6]
	strltb r4, [r6, #1]
	blt _021DD628
	ldrb r2, [sp, #8]
	ldr r0, _021DD6AC ; =0x0220C638
	ldrb r1, [sp, #9]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	ldr r0, [r0]
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
	strb r0, [r6, #1]
_021DD628:
	cmp r8, #3
	strltb r4, [r6, #2]
	blt _021DD658
	ldrb r2, [sp, #9]
	ldr r0, _021DD6AC ; =0x0220C638
	ldrb r1, [sp, #0xa]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	ldr r0, [r0]
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
	strb r0, [r6, #2]
_021DD658:
	cmp r8, #4
	strltb r4, [r6, #3]
	blt _021DD67C
	ldr r0, _021DD6AC ; =0x0220C638
	ldrb r1, [sp, #0xa]
	ldr r2, [r0]
	and r0, r1, #0x3f
	ldrsb r0, [r2, r0]
	strb r0, [r6, #3]
_021DD67C:
	add sl, sl, sb
	cmp sl, r7
	add r6, r6, #4
	bne _021DD580
_021DD68C:
	ldr r0, [sp]
	sub r0, r6, r0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DD69C: .word 0xAAAAAAAB
_021DD6A0: .word 0x00000003
_021DD6A4: .word 0x2AAAAAAB
_021DD6A8: .word 0x00000006
_021DD6AC: .word 0x0220C638

	arm_func_start FUN_021DD6B0
FUN_021DD6B0: ; 0x021DD6B0
	ldr r3, _021DD6CC ; =0x02210508
	ldr r2, [r3]
	cmp r2, #9
	ldrne r2, _021DD6D0 ; =0x0221050C
	strne r0, [r3]
	strne r1, [r2]
	bx lr
	.align 2, 0
_021DD6CC: .word 0x02210508
_021DD6D0: .word 0x0221050C

	arm_func_start FUN_021DD6D4
FUN_021DD6D4: ; 0x021DD6D4
	ldr r0, _021DD6EC ; =0x02210508
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_021DD6EC: .word 0x02210508

	arm_func_start FUN_021DD6F0
FUN_021DD6F0: ; 0x021DD6F0
	ldr r1, _021DD710 ; =0x02210508
	ldr r0, [r1]
	cmp r0, #9
	movne r2, #0
	ldrne r0, _021DD714 ; =0x0221050C
	strne r2, [r1]
	strne r2, [r0]
	bx lr
	.align 2, 0
_021DD710: .word 0x02210508
_021DD714: .word 0x0221050C

	arm_func_start FUN_021DD718
FUN_021DD718: ; 0x021DD718
	cmp r0, #0
	ldrne r2, _021DD800 ; =0x0221050C
	ldrne r2, [r2]
	strne r2, [r0]
	cmp r1, #0
	beq _021DD7F4
	ldr r0, _021DD804 ; =0x02210508
	ldr r0, [r0]
	cmp r0, #0x11
	addls pc, pc, r0, lsl #2
	b _021DD7EC
_021DD744: ; jump table
	b _021DD7EC ; case 0
	b _021DD7BC ; case 1
	b _021DD78C ; case 2
	b _021DD78C ; case 3
	b _021DD78C ; case 4
	b _021DD78C ; case 5
	b _021DD798 ; case 6
	b _021DD7A4 ; case 7
	b _021DD78C ; case 8
	b _021DD7BC ; case 9
	b _021DD7B0 ; case 10
	b _021DD7B0 ; case 11
	b _021DD7B0 ; case 12
	b _021DD7B0 ; case 13
	b _021DD7C8 ; case 14
	b _021DD7D4 ; case 15
	b _021DD7E0 ; case 16
	b _021DD7D4 ; case 17
_021DD78C:
	mov r0, #6
	str r0, [r1]
	b _021DD7F4
_021DD798:
	mov r0, #3
	str r0, [r1]
	b _021DD7F4
_021DD7A4:
	mov r0, #4
	str r0, [r1]
	b _021DD7F4
_021DD7B0:
	mov r0, #1
	str r0, [r1]
	b _021DD7F4
_021DD7BC:
	mov r0, #7
	str r0, [r1]
	b _021DD7F4
_021DD7C8:
	mov r0, #5
	str r0, [r1]
	b _021DD7F4
_021DD7D4:
	mov r0, #6
	str r0, [r1]
	b _021DD7F4
_021DD7E0:
	mov r0, #2
	str r0, [r1]
	b _021DD7F4
_021DD7EC:
	mov r0, #0
	str r0, [r1]
_021DD7F4:
	ldr r0, _021DD804 ; =0x02210508
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021DD800: .word 0x0221050C
_021DD804: .word 0x02210508

	arm_func_start FUN_021DD808
FUN_021DD808: ; 0x021DD808
	cmp r0, #0
	ldrne r1, _021DD824 ; =0x0221050C
	ldrne r1, [r1]
	strne r1, [r0]
	ldr r0, _021DD828 ; =0x02210508
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021DD824: .word 0x0221050C
_021DD828: .word 0x02210508

	arm_func_start FUN_021DD82C
FUN_021DD82C: ; 0x021DD82C
	ldr ip, _021DD840 ; =FUN_021DD904
	mov r1, r0
	mov r0, #5
	mov r2, #0
	bx ip
	.align 2, 0
_021DD840: .word FUN_021DD904

	arm_func_start FUN_021DD844
FUN_021DD844: ; 0x021DD844
	ldr ip, _021DD85C ; =FUN_021DD8E8
	mov r2, r1
	mov r1, r0
	mov r3, r2
	mov r0, #5
	bx ip
	.align 2, 0
_021DD85C: .word FUN_021DD8E8

	arm_func_start FUN_021DD860
FUN_021DD860: ; 0x021DD860
	ldr ip, _021DD870 ; =FUN_021DD944
	mov r1, r0
	mov r0, #5
	bx ip
	.align 2, 0
_021DD870: .word FUN_021DD944

	arm_func_start FUN_021DD874
FUN_021DD874: ; 0x021DD874
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, _021DD8E0 ; =0x02210514
	mov r4, r2
	mov r7, r3
	mov r5, r1
	ldr r2, [sp, #0x18]
	ldr r3, [ip]
	mov r1, r7
	mov r8, r0
	blx r3
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _021DD8D8
	mov r0, r5
	mov r1, r6
	mov r2, r7
	bl MI_CpuCopy8
	ldr r1, _021DD8E4 ; =0x02210510
	mov r0, r8
	ldr r3, [r1]
	mov r1, r5
	mov r2, r4
	blx r3
_021DD8D8:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021DD8E0: .word 0x02210514
_021DD8E4: .word 0x02210510

	arm_func_start FUN_021DD8E8
FUN_021DD8E8: ; 0x021DD8E8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, #0x20
	str ip, [sp]
	bl FUN_021DD874
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021DD904
FUN_021DD904: ; 0x021DD904
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021DD920 ; =0x02210510
	ldr r3, [r3]
	blx r3
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DD920: .word 0x02210510

	arm_func_start FUN_021DD924
FUN_021DD924: ; 0x021DD924
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021DD940 ; =0x02210514
	ldr r3, [r3]
	blx r3
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DD940: .word 0x02210514

	arm_func_start FUN_021DD944
FUN_021DD944: ; 0x021DD944
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021DD964 ; =0x02210514
	mov r2, #0x20
	ldr r3, [r3]
	blx r3
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DD964: .word 0x02210514

	arm_func_start FUN_021DD968
FUN_021DD968: ; 0x021DD968
	ldr r3, _021DD97C ; =0x02210514
	ldr r2, _021DD980 ; =0x02210510
	str r0, [r3]
	str r1, [r2]
	bx lr
	.align 2, 0
_021DD97C: .word 0x02210514
_021DD980: .word 0x02210510

	arm_func_start FUN_021DD984
FUN_021DD984: ; 0x021DD984
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DDCE8
	bl FUN_021DDB14
	cmp r0, #0
	beq _021DD9CC
	bl FUN_021EBAB8
	mov r2, r0
	cmp r2, #0x63
	ldr r1, _021DD9D8 ; =0xFFFF2D10
	movhi r2, #0x63
	mov r0, #8
	sub r1, r1, r2
	bl FUN_021DD6B0
	bl FUN_021DDBBC
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021DD9CC:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DD9D8: .word 0xFFFF2D10

	arm_func_start FUN_021DD9DC
FUN_021DD9DC: ; 0x021DD9DC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r1, #0
	mov r2, #0x3c
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r4, #4]
	bl FUN_021DDC1C
	cmp r0, #4
	addne sp, sp, #0x18
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	bl FUN_021EBAB8
	str r0, [r4]
	bl OS_DisableInterrupts
	mov r6, r0
	bl FUN_020A8850
	mov r5, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021DDA4C
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DDA4C:
	mov r0, r5
	add r1, r4, #0x33
	mov r2, #6
	bl MI_CpuCopy8
	ldr r0, [r4]
	cmp r0, #0
	blt _021DDAB0
	cmp r0, #3
	bge _021DDAB0
	add r0, sp, #0
	bl FUN_020A87E0
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021DDAA0
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DDAA0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x12
	bl MI_CpuCopy8
_021DDAB0:
	mov r0, r6
	bl OS_RestoreInterrupts
	add r0, sp, #2
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, sp, #2
	bl FUN_021EBA28
	cmp r0, #1
	bne _021DDAFC
	ldrb r1, [sp, #8]
	cmp r1, #0
	beq _021DDAFC
	sub r3, r1, #0x30
	add r0, sp, #9
	add r1, r4, #8
	mov r2, #9
	str r3, [r4, #4]
	bl MI_CpuCopy8
_021DDAFC:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DDB08
FUN_021DDB08: ; 0x021DDB08
	ldr ip, _021DDB10 ; =0x020A8B28
	bx ip
	.align 2, 0
_021DDB10: .word 0x020A8B28

	arm_func_start FUN_021DDB14
FUN_021DDB14: ; 0x021DDB14
	ldr r0, _021DDB3C ; =0x02210518
	ldr r0, [r0]
	cmp r0, #0
	beq _021DDB34
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_021DDB34:
	mov r0, #0
	bx lr
	.align 2, 0
_021DDB3C: .word 0x02210518

	arm_func_start FUN_021DDB40
FUN_021DDB40: ; 0x021DDB40
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DDBB8 ; =0x02210518
	ldr r2, [r0]
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	ldrh r1, [r2, #4]
	cmp r1, #8
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	cmp r1, #1
	moveq r1, #0
	streq r1, [r0]
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	mov r0, #5
	strh r0, [r2, #4]
	bl FUN_021EB9D8
	cmp r0, #0
	ldrne r0, _021DDBB8 ; =0x02210518
	movne r1, #0
	strne r1, [r0]
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DDBB8: .word 0x02210518

	arm_func_start FUN_021DDBBC
FUN_021DDBBC: ; 0x021DDBBC
	stmdb sp!, {r4, lr}
	ldr r0, _021DDC18 ; =0x02210518
	ldr r1, [r0]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldrh r1, [r1, #4]
	cmp r1, #1
	moveq r1, #0
	streq r1, [r0]
	ldmeqia sp!, {r4, pc}
	bl FUN_021EB9D8
	cmp r0, #0
	bne _021DDC08
	mov r4, #0xa
_021DDBF4:
	mov r0, r4
	bl OS_Sleep
	bl FUN_021EB9D8
	cmp r0, #0
	beq _021DDBF4
_021DDC08:
	ldr r0, _021DDC18 ; =0x02210518
	mov r1, #0
	str r1, [r0]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DDC18: .word 0x02210518

	arm_func_start FUN_021DDC1C
FUN_021DDC1C: ; 0x021DDC1C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DDCE4 ; =0x02210518
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldrh r0, [r0, #4]
	cmp r0, #1
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021EBAE8
	mov r1, r0
	cmp r1, #5
	bne _021DDC80
	ldr r1, _021DDCE4 ; =0x02210518
	mov r0, #4
	ldr r3, [r1]
	mov r2, #1
	strh r0, [r3, #4]
	ldr r1, [r1]
	add sp, sp, #4
	strh r2, [r1, #6]
	ldmfd sp!, {pc}
_021DDC80:
	cmp r1, #0
	bge _021DDCD8
	mvn r0, #9
	cmp r1, r0
	blt _021DDCB8
	sub r1, r1, #0x2bc
	mov r0, #9
	bl FUN_021DD6B0
	ldr r1, _021DDCE4 ; =0x02210518
	mov r0, #8
	ldr r1, [r1]
	add sp, sp, #4
	strh r0, [r1, #4]
	ldmfd sp!, {pc}
_021DDCB8:
	mov r0, #5
	bl FUN_021DD6B0
	ldr r1, _021DDCE4 ; =0x02210518
	mov r0, #7
	ldr r1, [r1]
	add sp, sp, #4
	strh r0, [r1, #4]
	ldmfd sp!, {pc}
_021DDCD8:
	mov r0, #2
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DDCE4: .word 0x02210518

	arm_func_start FUN_021DDCE8
FUN_021DDCE8: ; 0x021DDCE8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DDD78 ; =0x02210518
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _021DDD28
	bl FUN_021EBB80
	ldr r1, _021DDD78 ; =0x02210518
	add sp, sp, #4
	ldr r1, [r1]
	str r0, [r1]
	ldmfd sp!, {pc}
_021DDD28:
	cmp r0, #4
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_020A71F8
	cmp r0, #9
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021DDD78 ; =0x02210518
	mov r3, #0
	ldr r2, [r0]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0]
	strh r1, [r0, #4]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DDD78: .word 0x02210518

	arm_func_start FUN_021DDD7C
FUN_021DDD7C: ; 0x021DDD7C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DDDC8 ; =0x02210518
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldr r0, [r1]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	mov r0, #3
	strh r0, [r1, #4]
	bl FUN_021DDC1C
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DDDC8: .word 0x02210518

	arm_func_start FUN_021DDDCC
FUN_021DDDCC: ; 0x021DDDCC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _021DDE70 ; =0x02210518
	ldr r0, [r0]
	cmp r0, #0
	beq _021DDE5C
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, _021DDE70 ; =0x02210518
	ldr r3, _021DDE74 ; =FUN_021DD944
	ldr lr, [r0]
	ldr r2, _021DDE78 ; =FUN_021DD904
	ldrh ip, [lr, #8]
	add r0, sp, #0
	mov r1, #2
	strb ip, [sp, #8]
	ldrh ip, [lr, #0xa]
	strb ip, [sp, #9]
	str r3, [sp]
	str r2, [sp, #4]
	strh r1, [lr, #4]
	bl FUN_021EBC60
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {pc}
	mov r0, #9
	mvn r1, #5
	bl FUN_021DD6B0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
_021DDE5C:
	mov r0, #9
	mvn r1, #3
	bl FUN_021DD6B0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021DDE70: .word 0x02210518
_021DDE74: .word FUN_021DD944
_021DDE78: .word FUN_021DD904

	arm_func_start FUN_021DDE7C
FUN_021DDE7C: ; 0x021DDE7C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021DDEA4
	cmp r0, #1
	beq _021DDEB4
	cmp r0, #2
	beq _021DDEC4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021DDEA4:
	ldr r0, _021DDED4 ; =0x0220D280
	bl FUN_021D9C1C
	add sp, sp, #4
	ldmfd sp!, {pc}
_021DDEB4:
	ldr r0, _021DDED8 ; =0x0220D2A8
	bl FUN_021D9C1C
	add sp, sp, #4
	ldmfd sp!, {pc}
_021DDEC4:
	ldr r0, _021DDEDC ; =0x0220D2CC
	bl FUN_021D9C1C
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DDED4: .word 0x0220D280
_021DDED8: .word 0x0220D2A8
_021DDEDC: .word 0x0220D2CC

	arm_func_start FUN_021DDEE0
FUN_021DDEE0: ; 0x021DDEE0
	stmdb sp!, {r4, r5, r6, lr}
	ldr r2, _021DDF3C ; =0x02210518
	mov r6, r0
	ldr r2, [r2]
	mov r5, r1
	mov r4, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	strh r5, [r6, #8]
	mov r0, #1
	strh r0, [r6, #0xa]
	strh r0, [r6, #4]
	mov r0, #0
	ldr r1, _021DDF3C ; =0x02210518
	strh r0, [r6, #6]
	str r6, [r1]
	bl FUN_021DDE7C
	mov r0, r4
	bl FUN_020A374C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DDF3C: .word 0x02210518

	arm_func_start FUN_021DDF40
FUN_021DDF40: ; 0x021DDF40
	ldr ip, _021DDF48 ; =FUN_021D9974
	bx ip
	.align 2, 0
_021DDF48: .word FUN_021D9974

	arm_func_start FUN_021DDF4C
FUN_021DDF4C: ; 0x021DDF4C
	stmdb sp!, {lr}
	sub sp, sp, #0x1c4
	ldr r0, _021DE054 ; =0x0221051C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqia sp!, {pc}
	add r0, r0, #0x1000
	ldr r0, [r0, #0xba0]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #1
	ldmeqia sp!, {pc}
	bl FUN_021D988C
	cmp r0, #0
	beq _021DDFA4
	cmp r0, #0x14
	beq _021DDFE0
	cmp r0, #0x15
	beq _021DDFB0
	b _021DE010
_021DDFA4:
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {pc}
_021DDFB0:
	bl FUN_021D991C
	ldr r0, _021DE054 ; =0x0221051C
	ldr r2, _021DE058 ; =0x00001E1C
	ldr r1, [r0]
	mov r0, #4
	bl FUN_021DD904
	ldr r0, _021DE054 ; =0x0221051C
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x1c4
	mov r0, #3
	ldmfd sp!, {pc}
_021DDFE0:
	bl FUN_021D991C
	ldr r0, _021DE054 ; =0x0221051C
	ldr r2, _021DE058 ; =0x00001E1C
	ldr r1, [r0]
	mov r0, #4
	bl FUN_021DD904
	ldr r0, _021DE054 ; =0x0221051C
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x1c4
	mov r0, #5
	ldmfd sp!, {pc}
_021DE010:
	add r0, sp, #0
	bl FUN_021D97F8
	bl FUN_021D991C
	ldr r0, _021DE054 ; =0x0221051C
	ldr r2, _021DE058 ; =0x00001E1C
	ldr r1, [r0]
	mov r0, #4
	bl FUN_021DD904
	ldr r1, [sp]
	ldr r2, _021DE054 ; =0x0221051C
	mov r3, #0
	mov r0, #2
	str r3, [r2]
	bl FUN_021DD6B0
	mov r0, #4
	add sp, sp, #0x1c4
	ldmfd sp!, {pc}
	.align 2, 0
_021DE054: .word 0x0221051C
_021DE058: .word 0x00001E1C

	arm_func_start FUN_021DE05C
FUN_021DE05C: ; 0x021DE05C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DE130 ; =0x0221051C
	ldr r0, [r0]
	cmp r0, #0
	beq _021DE078
	bl OS_Terminate
_021DE078:
	ldr r1, _021DE134 ; =0x00001E1C
	mov r0, #4
	bl FUN_021DD944
	ldr r1, _021DE130 ; =0x0221051C
	cmp r0, #0
	str r0, [r1]
	bne _021DE0AC
	ldr r1, _021DE138 ; =0xFFFFB17C
	mov r0, #9
	bl FUN_021DD6B0
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021DE0AC:
	ldr r2, _021DE134 ; =0x00001E1C
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021DE130 ; =0x0221051C
	ldr r1, _021DE13C ; =0x00001C44
	ldr r2, [r0]
	ldr r0, _021DE140 ; =0x0220D2EC
	add r1, r2, r1
	mov r2, #9
	bl MI_CpuCopy8
	ldr r1, _021DE130 ; =0x0221051C
	ldr r2, _021DE144 ; =FUN_021DD944
	ldr r0, [r1]
	ldr r3, _021DE148 ; =FUN_021DD904
	add r0, r0, #0x1000
	str r2, [r0, #0xc50]
	ldr r0, [r1]
	ldr r2, _021DE14C ; =0x00001C10
	add r0, r0, #0x1000
	str r3, [r0, #0xc54]
	ldr r1, [r1]
	add r0, r1, r2
	bl FUN_021D9ACC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	ldr r1, _021DE138 ; =0xFFFFB17C
	mov r0, #9
	bl FUN_021DD6B0
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DE130: .word 0x0221051C
_021DE134: .word 0x00001E1C
_021DE138: .word 0xFFFFB17C
_021DE13C: .word 0x00001C44
_021DE140: .word 0x0220D2EC
_021DE144: .word FUN_021DD944
_021DE148: .word FUN_021DD904
_021DE14C: .word 0x00001C10

	arm_func_start FUN_021DE150
FUN_021DE150: ; 0x021DE150
	stmdb sp!, {r4, lr}
	bl FUN_021DCF00
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _021DE16C
	bl FUN_021DD26C
_021DE16C:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021DE174
FUN_021DE174: ; 0x021DE174
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r0, _021DE1EC ; =FUN_021DD944
	ldr r1, _021DE1F0 ; =FUN_021DD904
	bl FUN_021DD2C4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	bl strlen
	cmp r0, #0
	bne _021DE1C0
	ldr r0, _021DE1F4 ; =0x0220D2F0
	mov r1, r4
	bl FUN_021DCFFC
	b _021DE1CC
_021DE1C0:
	mov r0, r5
	mov r1, r4
	bl FUN_021DCFFC
_021DE1CC:
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	bl FUN_021DD26C
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DE1EC: .word FUN_021DD944
_021DE1F0: .word FUN_021DD904
_021DE1F4: .word 0x0220D2F0

	arm_func_start FUN_021DE1F8
FUN_021DE1F8: ; 0x021DE1F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _021DE2C4 ; =0x022104F8
	mov r5, r0
	ldr r2, [r2]
	mov r4, r1
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	bl RTC_GetDate
	cmp r0, #0
	bne _021DE23C
	mov r0, r4
	bl RTC_GetTime
	cmp r0, #0
	beq _021DE248
_021DE23C:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DE248:
	mov r0, r5
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, _021DE2C8 ; =0x022104FC
	mov ip, #0
	ldr lr, [r2]
	ldr r3, [r2, #4]
	subs r2, r0, lr
	sbc r3, r1, r3
	subs r0, r2, ip
	sbcs r0, r3, ip
	blt _021DE2A0
	ldr r0, _021DE2CC ; =0xBC19137F
	subs r0, r0, r2
	sbcs r0, ip, r3
	bge _021DE2AC
_021DE2A0:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021DE2AC:
	mov r0, r5
	mov r1, r4
	bl RTC_ConvertSecondToDateTime
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DE2C4: .word 0x022104F8
_021DE2C8: .word 0x022104FC
_021DE2CC: .word 0xBC19137F

	arm_func_start FUN_021DE2D0
FUN_021DE2D0: ; 0x021DE2D0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_02207330
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021DE308
FUN_021DE308: ; 0x021DE308
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl FUN_02207158
	add sp, sp, #4
	ldmfd sp!, {pc}
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0220733C
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DE364
FUN_021DE364: ; 0x021DE364
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xb0
	mul r2, r4, r0
	mov r0, r6
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_022074EC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DE3AC
FUN_021DE3AC: ; 0x021DE3AC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl FUN_022077A8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021DE3D0
FUN_021DE3D0: ; 0x021DE3D0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_022069DC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021DE404
FUN_021DE404: ; 0x021DE404
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021DE454 ; =0x02210520
	ldr r2, [r1]
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	str r0, [r2, #4]
	ldr r0, [r1]
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _021DE440
	bl FUN_021DE730
	b _021DE448
_021DE440:
	ldr r0, _021DE458 ; =FUN_021DE730
	bl FUN_02206E6C
_021DE448:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DE454: .word 0x02210520
_021DE458: .word FUN_021DE730

	arm_func_start FUN_021DE45C
FUN_021DE45C: ; 0x021DE45C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0xa80
	mov r1, #0x20
	bl FUN_021DE884
	ldr r2, _021DE568 ; =0x02210520
	mov r1, #0
	str r0, [r2]
	str r1, [r0, #0x48]
	ldr r0, [r2]
	mov r2, #0xa80
	bl MI_CpuFill8
	ldr r0, _021DE568 ; =0x02210520
	mov r1, r5
	ldr r3, [r0]
	mov r2, #0x1f
	str r6, [r3]
	ldr r0, [r0]
	add r0, r0, #8
	bl strncpy
	ldr r0, _021DE568 ; =0x02210520
	mov r1, r4
	ldr r0, [r0]
	mov r2, #0x1f
	add r0, r0, #0x28
	bl strncpy
	ldr r1, _021DE568 ; =0x02210520
	ldr r0, _021DE56C ; =0x0220D2F8
	ldr r1, [r1]
	add r1, r1, #0x4c
	bl FUN_021DE174
	cmp r0, #0
	bne _021DE520
	ldr r0, _021DE568 ; =0x02210520
	ldr r0, [r0]
	bl FUN_021DE86C
	ldr r1, _021DE568 ; =0x02210520
	mov r0, #0
	str r0, [r1]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021DE520:
	ldr r0, _021DE568 ; =0x02210520
	mov r2, #0x800
	ldr r0, [r0]
	ldr r1, _021DE570 ; =FUN_021DE574
	add r0, r0, #0x9c0
	mov r3, r0
	str r2, [sp]
	mov ip, #0x10
	mov r2, #0
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021DE568 ; =0x02210520
	ldr r0, [r0]
	add r0, r0, #0x9c0
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DE568: .word 0x02210520
_021DE56C: .word 0x0220D2F8
_021DE570: .word FUN_021DE574

	arm_func_start FUN_021DE574
FUN_021DE574: ; 0x021DE574
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a4
	mov r7, #0
	mov r6, #6
	mvn r5, #0
	mov r4, #0x64
_021DE58C:
	bl FUN_021DE150
	cmp r0, #3
	bne _021DE6AC
	ldr r0, _021DE718 ; =0x02210520
	ldr r5, [r0]
	add r0, r5, #0x50
	bl strlen
	mov r4, r0
	ldr r0, _021DE71C ; =0x0220D300
	bl strlen
	add r0, r4, r0
	cmp r0, #0xff
	bls _021DE5D8
	mov r0, #0
	mov r1, #8
	mvn r2, #0
	bl FUN_021DE774
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE5D8:
	ldr r2, _021DE720 ; =0x0220D314
	add r0, sp, #0x10
	add r3, r5, #0x50
	mov r1, #0x100
	bl OS_SNPrintf
	ldr r0, _021DE718 ; =0x02210520
	ldr r4, [r0]
	add r0, r4, #0x91
	bl strlen
	mov r1, r0
	add r2, sp, #0x110
	add r0, r4, #0x91
	mov r3, #0x190
	bl FUN_021DD4FC
	cmp r0, #0
	bge _021DE630
	mov r0, #0
	mov r1, #8
	mvn r2, #0
	bl FUN_021DE774
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE630:
	ldr r0, _021DE718 ; =0x02210520
	ldr r4, _021DE724 ; =FUN_021DE774
	ldr r2, [r0]
	ldr r0, _021DE728 ; =FUN_021DE884
	add r1, r2, #8
	str r1, [sp]
	add r1, r2, #0x28
	str r1, [sp, #4]
	ldr r1, _021DE72C ; =FUN_021DE86C
	add r2, sp, #0x10
	add r3, sp, #0x110
	str r4, [sp, #8]
	bl FUN_02206EFC
	cmp r0, #0
	bne _021DE684
	mov r0, #0
	mov r1, #8
	mvn r2, #0
	bl FUN_021DE774
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE684:
	ldr r1, _021DE718 ; =0x02210520
	mov r0, #0
	ldr r3, [r1]
	mov r4, #1
	mov r1, r0
	mvn r2, #0
	str r4, [r3, #0x48]
	bl FUN_021DE774
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE6AC:
	cmp r0, #4
	bne _021DE6EC
	add r0, sp, #0xc
	bl FUN_021DD808
	ldr r1, [sp, #0xc]
	mov r0, #0xe
	bl FUN_021DD6B0
	ldr r1, _021DE718 ; =0x02210520
	mov r0, #0
	ldr r2, [r1]
	mov r1, #3
	ldr r3, [r2]
	mvn r2, #0
	blx r3
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DE6EC:
	cmp r0, #5
	bne _021DE704
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_021DE774
_021DE704:
	mov r0, r4
	bl OS_Sleep
	b _021DE58C

	arm_func_start FUN_021DE710
FUN_021DE710: ; 0x021DE710
	add sp, sp, #0x2a4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DE718: .word 0x02210520
_021DE71C: .word 0x0220D300
_021DE720: .word 0x0220D314
_021DE724: .word FUN_021DE774
_021DE728: .word FUN_021DE884
_021DE72C: .word FUN_021DE86C

	arm_func_start FUN_021DE730
FUN_021DE730: ; 0x021DE730
	stmdb sp!, {r4, lr}
	ldr r0, _021DE770 ; =0x02210520
	ldr r0, [r0]
	add r0, r0, #0x9c0
	bl OS_JoinThread
	ldr r0, _021DE770 ; =0x02210520
	ldr r0, [r0]
	ldr r4, [r0, #4]
	bl FUN_021DE86C
	ldr r0, _021DE770 ; =0x02210520
	mov r1, #0
	str r1, [r0]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	blx r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DE770: .word 0x02210520

	arm_func_start FUN_021DE774
FUN_021DE774: ; 0x021DE774
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	bne _021DE79C
	ldr r3, _021DE854 ; =0x02210520
	ldr r3, [r3]
	ldr r3, [r3]
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
_021DE79C:
	cmp r5, #8
	addls pc, pc, r5, lsl #2
	b _021DE830
_021DE7A8: ; jump table
	b _021DE830 ; case 0
	b _021DE7CC ; case 1
	b _021DE7DC ; case 2
	b _021DE7E4 ; case 3
	b _021DE7F4 ; case 4
	b _021DE804 ; case 5
	b _021DE834 ; case 6
	b _021DE818 ; case 7
	b _021DE820 ; case 8
_021DE7CC:
	ldr r1, _021DE858 ; =0xFFFF86E7
	mov r0, #9
	bl FUN_021DD6B0
	b _021DE834
_021DE7DC:
	bl OS_Terminate
	b _021DE834
_021DE7E4:
	ldr r1, _021DE85C ; =0xFFFF86D4
	mov r0, #0xf
	bl FUN_021DD6B0
	b _021DE834
_021DE7F4:
	ldr r1, _021DE860 ; =0xFFFF86CA
	mov r0, #0xe
	bl FUN_021DD6B0
	b _021DE834
_021DE804:
	ldr r1, _021DE864 ; =0xFFFF86E8
	mov r0, #0xe
	sub r1, r1, r4
	bl FUN_021DD6B0
	b _021DE834
_021DE818:
	bl OS_Terminate
	b _021DE834
_021DE820:
	ldr r1, _021DE868 ; =0xFFFF86DF
	mov r0, #9
	bl FUN_021DD6B0
	b _021DE834
_021DE830:
	bl OS_Terminate
_021DE834:
	ldr r1, _021DE854 ; =0x02210520
	mov r0, r6
	ldr r2, [r1]
	mov r1, r5
	ldr r3, [r2]
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DE854: .word 0x02210520
_021DE858: .word 0xFFFF86E7
_021DE85C: .word 0xFFFF86D4
_021DE860: .word 0xFFFF86CA
_021DE864: .word 0xFFFF86E8
_021DE868: .word 0xFFFF86DF

	arm_func_start FUN_021DE86C
FUN_021DE86C: ; 0x021DE86C
	ldr ip, _021DE880 ; =FUN_021DD904
	mov r1, r0
	mov r0, #6
	mov r2, #0
	bx ip
	.align 2, 0
_021DE880: .word FUN_021DD904

	arm_func_start FUN_021DE884
FUN_021DE884: ; 0x021DE884
	ldr ip, _021DE898 ; =FUN_021DD924
	mov r2, r1
	mov r1, r0
	mov r0, #6
	bx ip
	.align 2, 0
_021DE898: .word FUN_021DD924

	arm_func_start FUN_021DE89C
FUN_021DE89C: ; 0x021DE89C
	ldrh r1, [r0]
	mov r2, #0
	cmp r1, #0
	beq _021DE8C0
_021DE8AC:
	add r2, r2, #1
	mov r1, r2, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021DE8AC
_021DE8C0:
	mov r0, r2
	bx lr

	arm_func_start FUN_021DE8C8
FUN_021DE8C8: ; 0x021DE8C8
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r2, _021DE9E4 ; =0x02210524
	mov r1, #0
	ldr r3, [r2, #4]
	ldr ip, [r2]
	cmp r3, r1
	mov r4, r0
	cmpeq ip, r1
	bne _021DE98C
	ldr r0, [r2, #0xc]
	ldr r3, [r2, #8]
	cmp r0, r1
	cmpeq r3, r1
	bne _021DE98C
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x10]
	cmp r0, r1
	cmpeq r2, r1
	bne _021DE98C
	add r0, sp, #0
	bl OS_GetMacAddress
	bl OS_GetTick
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mov lr, r2, lsr #0x18
	mov r2, r1, lsl #0x18
	orr lr, lr, r3, lsl #8
	mvn r1, #0xff000000
	mov ip, r3, lsr #0x18
	and r1, lr, r1
	orr r3, r1, r0, lsl #24
	and r1, ip, #0
	orr r2, r2, r0, lsr #8
	orr r1, r1, r2
	str r1, [sp, #4]
	ldr ip, _021DE9E4 ; =0x02210524
	add r0, sp, #0
	str r3, [sp]
	ldmia r0, {r2, r3}
	stmia ip, {r2, r3}
	ldr r3, _021DE9E8 ; =0x6C078965
	ldr r2, _021DE9EC ; =0x5D588B65
	ldr r1, _021DE9F0 ; =0x00269EC3
	mov r0, #0
	str r3, [ip, #8]
	str r2, [ip, #0xc]
	str r1, [ip, #0x10]
	str r0, [ip, #0x14]
_021DE98C:
	ldr r1, _021DE9E4 ; =0x02210524
	ldr r3, [r1, #8]
	ldr r2, [r1]
	ldr r0, [r1, #4]
	umull lr, ip, r3, r2
	mla ip, r3, r0, ip
	ldr r0, [r1, #0xc]
	ldr r3, [r1, #0x10]
	mla ip, r0, r2, ip
	adds r2, r3, lr
	ldr r0, [r1, #0x14]
	str r2, [r1]
	adc r0, r0, ip
	cmp r4, #0
	str r0, [r1, #4]
	movne r3, #0
	umullne r2, r1, r0, r4
	mlane r1, r0, r3, r1
	mlane r1, r3, r4, r1
	movne r0, r1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DE9E4: .word 0x02210524
_021DE9E8: .word 0x6C078965
_021DE9EC: .word 0x5D588B65
_021DE9F0: .word 0x00269EC3

	arm_func_start FUN_021DE9F4
FUN_021DE9F4: ; 0x021DE9F4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r7, r0
	mov r6, r3
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r2
	mov r1, r6
	bl strchr
	movs r5, r0
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021DEA30:
	mov r0, r7
	bl strlen
	mov r2, r0
	mov r1, r7
	add r0, r5, #1
	bl strncmp
	cmp r0, #0
	bne _021DEA68
	mov r0, r7
	bl strlen
	add r0, r0, r5
	ldrsb r0, [r0, #1]
	cmp r6, r0
	beq _021DEAA4
_021DEA68:
	mov r1, r6
	add r0, r5, #1
	bl strchr
	cmp r0, #0
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r0, #1
	bl strchr
	movs r5, r0
	bne _021DEA30
	add sp, sp, #4
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DEAA4:
	mov r1, r6
	add r0, r5, #1
	bl strchr
	movs r5, r0
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r5, #1
	bl strchr
	cmp r0, #0
	addne r1, r5, #1
	subne r6, r0, r1
	bne _021DEAE8
	add r0, r5, #1
	bl strlen
	mov r6, r0
_021DEAE8:
	mov r0, r4
	mov r2, r6
	add r1, r5, #1
	bl strncpy
	mov r1, #0
	mov r0, r6
	strb r1, [r4, r6]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021DEB0C
FUN_021DEB0C: ; 0x021DEB0C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	mov r0, r5
	mov r1, #0
	bl strchr
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	bl FUN_021DEB54
	mov r0, r5
	bl strlen
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021DEB54
FUN_021DEB54: ; 0x021DEB54
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	str r0, [sp]
	mov r4, r2
	str r3, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _021DEB8C ; =0x0220D328
	mov r0, r4
	mov r1, #0x1000
	bl OS_SNPrintf
	mov r0, r4
	bl strlen
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DEB8C: .word 0x0220D328

	arm_func_start FUN_021DEB90
FUN_021DEB90: ; 0x021DEB90
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021FD43C
	bl FUN_021EFB28
	ldr r2, _021DEBCC ; =0x02210540
	ldr r1, _021DEBD0 ; =0xFFFE8515
	str r0, [r2]
	mov r0, #9
	bl FUN_021DD6B0
	ldr r0, _021DEBD4 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DEBCC: .word 0x02210540
_021DEBD0: .word 0xFFFE8515
_021DEBD4: .word 0x0221053C

	arm_func_start FUN_021DEBD8
FUN_021DEBD8: ; 0x021DEBD8
	ldr ip, _021DEBE0 ; =FUN_021EAC1C
	bx ip
	.align 2, 0
_021DEBE0: .word FUN_021EAC1C

	arm_func_start FUN_021DEBE4
FUN_021DEBE4: ; 0x021DEBE4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov fp, r0
	mov sb, r1
	mov sl, r7
	bl FUN_021E852C
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #4
	addls pc, pc, sb, lsl #2
	b _021DEC48
_021DEC18: ; jump table
	b _021DEC2C ; case 0
	b _021DEC2C ; case 1
	b _021DEC34 ; case 2
	b _021DEC34 ; case 3
	b _021DEC40 ; case 4
_021DEC2C:
	mov r4, r7
	b _021DEC48
_021DEC34:
	mov r4, #6
	ldr r6, _021DEF4C ; =0xFFFFE250
	b _021DEC48
_021DEC40:
	ldr r6, _021DEF50 ; =0xFFFFE24F
	mov r4, #9
_021DEC48:
	cmp r4, #0
	bne _021DED00
	mov r0, fp
	bl FUN_021FD3C4
	movs r7, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021DEF54 ; =0x0221053C
	ldrb r8, [r7, #1]
	ldr r1, [r0]
	mov r5, #1
	mov r0, r5,lsl  r8
	ldr r1, [r1, #0x644]
	ands r0, r1, r0
	mov r0, r8
	moveq r5, #0
	bl FUN_021EA9D8
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	bne _021DECA8
	cmp sb, #0
	beq _021DECBC
_021DECA8:
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	bne _021DECC0
	cmp r8, #0
	bne _021DECC0
_021DECBC:
	mov sl, #1
_021DECC0:
	mov r0, r8
	bl FUN_021DF56C
	ldr r1, _021DEF54 ; =0x0221053C
	ldrb r7, [r7]
	ldr r2, _021DEF58 ; =0x02210544
	mov fp, #0
	ldr r3, [r1]
	str fp, [r2, r7, lsl #2]
	ldrb r2, [r3, #0x361]
	mov r7, r0
	sub r0, r2, #1
	strb r0, [r3, #0x361]
	ldr r1, [r1]
	ldrb r0, [r1, #0x368]
	sub r0, r0, #1
	strb r0, [r1, #0x368]
_021DED00:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DED58
	ldr r0, [r1, #0x24]
	cmp r0, #6
	bne _021DED58
	cmp r5, #0
	bne _021DED58
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r4, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_021E85D4
	mov r0, r7
	bl FUN_021E8A50
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DED58:
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_021E8A74
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r4, #0
	beq _021DED90
	mov r0, r4
	mov r1, r6
	bl FUN_021DD6B0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DED90:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DEE04
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	beq _021DEDBC
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	bne _021DEE04
_021DEDBC:
	ldr r2, _021DEF54 ; =0x0221053C
	ldr r1, [r2]
	ldrb r0, [r1, #0x361]
	add r6, r0, #2
	add r3, r1, r6, lsl #2
	ldr r3, [r3, #0x448]
	cmp r3, #0
	beq _021DEE04
	add r3, r1, r6
	ldrb r3, [r3, #0x624]
	add r0, r0, #1
	add r0, r1, r0
	strb r3, [r0, #0x624]
	ldr r0, [r2]
	ldrb r1, [r0, #0x361]
	add r0, r1, #1
	add r1, r1, #3
	bl FUN_021E8830
_021DEE04:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	bne _021DEE4C
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DEE2C
	bl FUN_021E85D4
	b _021DEE68
_021DEE2C:
	ldrb r0, [r1, #0x361]
	cmp r0, #0
	bne _021DEE68
	ldr r1, _021DEF5C ; =0x0220D334
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
	b _021DEE68
_021DEE4C:
	ldrb r0, [r1, #0x361]
	cmp r0, #0
	bne _021DEE68
	ldr r1, _021DEF5C ; =0x0220D334
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
_021DEE68:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x369]
	cmp r0, #0
	beq _021DEE88
	ldrb r0, [r1, #0x369]
	cmp r0, #1
	bne _021DEEA4
_021DEE88:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r2, [r0]
	ldrb r1, [r2, #0x368]
	strb r1, [r2, #0x36a]
	ldr r0, [r0]
	ldr r0, [r0, #0x364]
	bl FUN_02202308
_021DEEA4:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r6, [r0]
	ldr r0, [r6, #0x90]
	cmp r0, #0
	beq _021DEF00
	cmp r5, #0
	beq _021DEF00
	cmp sb, #0
	moveq r5, #1
	mov r0, r7
	movne r5, #0
	bl FUN_021E1F18
	str r0, [sp]
	ldr r1, [r6, #0x94]
	ldr r0, _021DEF54 ; =0x0221053C
	str r1, [sp, #4]
	ldr r1, [r0]
	mov r0, r4
	ldr r4, [r1, #0x90]
	mov r1, r5
	mov r2, sl
	mov r3, r8
	blx r4
_021DEF00:
	ldr r0, _021DEF54 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DEF24
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DEF24:
	ldrb r0, [r1, #0x361]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_02200D6C
	bl FUN_021E8DC0
	mov r0, #3
	bl FUN_021DF5CC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021DEF4C: .word 0xFFFFE250
_021DEF50: .word 0xFFFFE24F
_021DEF54: .word 0x0221053C
_021DEF58: .word 0x02210544
_021DEF5C: .word 0x0220D334

	arm_func_start FUN_021DEF60
FUN_021DEF60: ; 0x021DEF60
	ldr ip, _021DEF68 ; =FUN_021EAC5C
	bx ip
	.align 2, 0
_021DEF68: .word FUN_021EAC5C

	arm_func_start FUN_021DEF6C
FUN_021DEF6C: ; 0x021DEF6C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	add r4, sp, #0
	mov r3, #0
	strb r3, [r4]
	strb r3, [r4, #1]
	strb r3, [r4, #2]
	strb r3, [r4, #3]
	strb r3, [r4, #4]
	strb r3, [r4, #5]
	strb r3, [r4, #6]
	strb r3, [r4, #7]
	strb r3, [r4, #8]
	strb r3, [r4, #9]
	strb r3, [r4, #0xa]
	mov r5, r1
	strb r3, [r4, #0xb]
	ldr r4, [r5, #8]
	mov r6, r0
	bl FUN_021E2068
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DF0C8 ; =0x0220D338
	bl strlen
	mov r2, r0
	ldr r1, _021DF0C8 ; =0x0220D338
	mov r0, r4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DF0C8 ; =0x0220D338
	bl strlen
	add r4, r4, r0
	mov r0, r4
	mov r1, #0x76
	bl strchr
	sub r7, r0, r4
	add r0, sp, #0
	mov r1, r4
	mov r2, r7
	bl strncpy
	cmp r7, #0xa
	addhi sp, sp, #0xc
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	cmp r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DF0CC ; =0x0220D340
	add r1, r7, #1
	add r4, r4, r1
	bl strlen
	mov r2, r0
	ldr r1, _021DF0CC ; =0x0220D340
	mov r0, r4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DF0D0 ; =0x0221053C
	ldr r1, [r0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	beq _021DF0A8
	cmp r0, #6
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	beq _021DF0A8
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021DF0A8:
	ldr r0, _021DF0CC ; =0x0220D340
	bl strlen
	add r2, r4, r0
	ldr r1, [r5]
	mov r0, r6
	bl FUN_021E8EF4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF0C8: .word 0x0220D338
_021DF0CC: .word 0x0220D340
_021DF0D0: .word 0x0221053C

	arm_func_start FUN_021DF0D4
FUN_021DF0D4: ; 0x021DF0D4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r1, #4]
	ldr r0, _021DF120 ; =0x00000603
	cmp r1, r0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021DF124 ; =0x00000901
	cmp r1, r0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, _021DF128 ; =0x00000B01
	cmp r1, r0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	mov r0, #3
	bl FUN_021DF414
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF120: .word 0x00000603
_021DF124: .word 0x00000901
_021DF128: .word 0x00000B01

	arm_func_start FUN_021DF12C
FUN_021DF12C: ; 0x021DF12C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021DF174
	cmp r6, #0
	beq _021DF174
	ldr r0, _021DF2AC ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x4f4]
	cmp r0, #0
	bne _021DF1D8
	bl FUN_021E8DC0
	mov r0, #3
	bl FUN_021DF5CC
	b _021DF1D8
_021DF174:
	cmp r7, #0
	bne _021DF1D8
	mov r0, #6
	bl FUN_021DF5CC
	ldr r1, _021DF2AC ; =0x0221053C
	mov r0, #0
	ldr r3, [r1]
	ldrb r1, [r3, #0x361]
	cmp r1, #0
	blt _021DF1D8
	ldr r2, [r3, #0x64]
_021DF1A0:
	add r1, r3, r0, lsl #2
	ldr r1, [r1, #0x448]
	cmp r2, r1
	bne _021DF1C8
	ldr r1, _021DF2AC ; =0x0221053C
	ldr r1, [r1]
	add r0, r1, r0
	ldrb r0, [r0, #0x624]
	strb r0, [r1, #0x2c]
	b _021DF1D8
_021DF1C8:
	ldrb r1, [r3, #0x361]
	add r0, r0, #1
	cmp r0, r1
	ble _021DF1A0
_021DF1D8:
	ldr r1, _021DF2AC ; =0x0221053C
	ldr r0, _021DF2B0 ; =0x00000624
	ldr r2, [r1]
	ldrb r1, [r2, #0x361]
	add r0, r2, r0
	add r1, r1, #1
	bl FUN_021DF530
	ldr r1, _021DF2AC ; =0x0221053C
	ldr r1, [r1]
	str r0, [r1, #0x644]
	bl FUN_021E8780
	ldr r0, _021DF2AC ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	beq _021DF224
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	bne _021DF258
_021DF224:
	ldr r0, _021DF2AC ; =0x0221053C
	ldr r1, [sp, #0x20]
	ldr r3, [r0]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r3, #0x8c]
	mov r1, r6
	str r2, [sp, #4]
	ldr r6, [r3, #0x88]
	mov r2, r5
	mov r3, r4
	blx r6
	b _021DF26C
_021DF258:
	ldr r2, [r1, #0x84]
	ldr r3, [r1, #0x80]
	mov r0, r7
	mov r1, r6
	blx r3
_021DF26C:
	cmp r7, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DF2AC ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r0, #0x24]
	cmp r0, #5
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #3
	bl FUN_021DF5CC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DF2AC: .word 0x0221053C
_021DF2B0: .word 0x00000624

	arm_func_start FUN_021DF2B4
FUN_021DF2B4: ; 0x021DF2B4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _021DF300 ; =0x0221053C
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	ldr r0, [r0, #0x28]
	cmp r0, #4
	beq _021DF2DC
	bl FUN_021DF5CC
_021DF2DC:
	ldr r1, _021DF300 ; =0x0221053C
	mov r0, r5
	ldr r3, [r1]
	mov r1, r4
	ldr r2, [r3, #0x7c]
	ldr r3, [r3, #0x78]
	blx r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DF300: .word 0x0221053C

	arm_func_start FUN_021DF304
FUN_021DF304: ; 0x021DF304
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	mov r4, r1
	bne _021DF334
	ldr r1, _021DF36C ; =0x0221053C
	mov r0, #3
	ldr r1, [r1]
	str r4, [r1, #0x64]
	bl FUN_021DF5CC
	bl FUN_021E1ED4
	b _021DF33C
_021DF334:
	mov r0, #0
	bl FUN_021DF5CC
_021DF33C:
	ldr r0, _021DF36C ; =0x0221053C
	ldr r0, [r0]
	ldr r3, [r0, #0x70]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r0, #0x74]
	mov r0, r5
	mov r1, r4
	blx r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021DF36C: .word 0x0221053C

	arm_func_start FUN_021DF370
FUN_021DF370: ; 0x021DF370
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _021DF3F4
_021DF38C: ; jump table
	b _021DF3F4 ; case 0
	b _021DF3AC ; case 1
	b _021DF3B8 ; case 2
	b _021DF3C8 ; case 3
	b _021DF3D4 ; case 4
	b _021DF3B8 ; case 5
	b _021DF3E0 ; case 6
	b _021DF3EC ; case 7
_021DF3AC:
	mov r0, #9
	mvn r2, #0
	b _021DF3F4
_021DF3B8:
	mov r0, #0
	mov r2, r0
	mov r4, r0
	b _021DF3F4
_021DF3C8:
	mov r0, #6
	mvn r2, #9
	b _021DF3F4
_021DF3D4:
	mov r0, #6
	mvn r2, #0x1d
	b _021DF3F4
_021DF3E0:
	mov r0, #6
	mvn r2, #0x45
	b _021DF3F4
_021DF3EC:
	mov r0, #6
	mvn r2, #0x4f
_021DF3F4:
	cmp r0, #0
	beq _021DF408
	ldr r1, _021DF410 ; =0xFFFEFA48
	add r1, r2, r1
	bl FUN_021E0EAC
_021DF408:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DF410: .word 0xFFFEFA48

	arm_func_start FUN_021DF414
FUN_021DF414: ; 0x021DF414
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _021DF470
_021DF430: ; jump table
	b _021DF470 ; case 0
	b _021DF444 ; case 1
	b _021DF450 ; case 2
	b _021DF45C ; case 3
	b _021DF468 ; case 4
_021DF444:
	mov r4, #9
	mvn r5, #0
	b _021DF470
_021DF450:
	mov r4, #9
	mvn r5, #1
	b _021DF470
_021DF45C:
	mov r4, #6
	mvn r5, #9
	b _021DF470
_021DF468:
	mov r4, #6
	mvn r5, #0x13
_021DF470:
	ldr r0, _021DF51C ; =0x0221053C
	ldr r1, [r0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021DF500
_021DF488: ; jump table
	b _021DF500 ; case 0
	b _021DF4A0 ; case 1
	b _021DF4B8 ; case 2
	b _021DF500 ; case 3
	b _021DF4F4 ; case 4
	b _021DF4DC ; case 5
_021DF4A0:
	ldr r1, _021DF520 ; =0xFFFF11B8
	mov r0, r4
	add r5, r5, r1
	mov r1, r5
	bl FUN_021E0EAC
	b _021DF508
_021DF4B8:
	ldr r1, [r1, #0x9c]
	ldr r0, _021DF520 ; =0xFFFF11B8
	cmp r1, #1
	add r5, r5, r0
	bge _021DF508
	mov r0, r4
	mov r1, r5
	bl FUN_021E0EAC
	b _021DF508
_021DF4DC:
	ldr r1, _021DF524 ; =0xFFFEC398
	mov r0, r4
	add r5, r5, r1
	mov r1, r5
	bl FUN_021E8E08
	b _021DF508
_021DF4F4:
	ldr r0, _021DF528 ; =0xFFFEEAA8
	add r5, r5, r0
	b _021DF508
_021DF500:
	ldr r0, _021DF52C ; =0xFFFE9C88
	add r5, r5, r0
_021DF508:
	mov r0, r4
	mov r1, r5
	bl FUN_021E2114
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DF51C: .word 0x0221053C
_021DF520: .word 0xFFFF11B8
_021DF524: .word 0xFFFEC398
_021DF528: .word 0xFFFEEAA8
_021DF52C: .word 0xFFFE9C88

	arm_func_start FUN_021DF530
FUN_021DF530: ; 0x021DF530
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, #0
	mov ip, lr
	cmp r1, #0
	ble _021DF560
	mov r3, #1
_021DF54C:
	ldrb r2, [r0, ip]
	add ip, ip, #1
	cmp ip, r1
	orr lr, lr, r3, lsl r2
	blt _021DF54C
_021DF560:
	mov r0, lr
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021DF56C
FUN_021DF56C: ; 0x021DF56C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl FUN_021E874C
	mov r1, r0
	cmp r1, #0
	mov r0, #0
	ble _021DF5B0
	ldr r3, [sp]
_021DF594:
	ldrb r2, [r3]
	cmp r4, r2
	beq _021DF5B0
	add r0, r0, #1
	cmp r0, r1
	add r3, r3, #1
	blt _021DF594
_021DF5B0:
	cmp r0, r1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021E8830
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021DF5CC
FUN_021DF5CC: ; 0x021DF5CC
	ldr r1, _021DF5E8 ; =0x0221053C
	ldr r3, [r1]
	ldr r2, [r3, #0x24]
	str r2, [r3, #0x28]
	ldr r1, [r1]
	str r0, [r1, #0x24]
	bx lr
	.align 2, 0
_021DF5E8: .word 0x0221053C

	arm_func_start FUN_021DF5EC
FUN_021DF5EC: ; 0x021DF5EC
	bx lr

	arm_func_start FUN_021DF5F0
FUN_021DF5F0: ; 0x021DF5F0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _021DF634 ; =0x02210544
_021DF600:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _021DF620
	bl FUN_021FD3C4
	ldrb r0, [r0, #1]
	cmp r6, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021DF620:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021DF600
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DF634: .word 0x02210544

	arm_func_start FUN_021DF638
FUN_021DF638: ; 0x021DF638
	ldr r1, _021DF644 ; =0x022105C4
	add r0, r1, r0, lsl #3
	bx lr
	.align 2, 0
_021DF644: .word 0x022105C4

	arm_func_start FUN_021DF648
FUN_021DF648: ; 0x021DF648
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0
	mov ip, #0
	ble _021DF684
	ldr r2, _021DF6B8 ; =0x0221053C
	ldr r3, [r2]
_021DF664:
	add r2, r3, ip, lsl #2
	ldr r2, [r2, #0x448]
	cmp r0, r2
	beq _021DF684
	add r2, ip, #1
	and ip, r2, #0xff
	cmp ip, r1
	blt _021DF664
_021DF684:
	cmp ip, r1
	addge sp, sp, #4
	movge r0, #0
	ldmgeia sp!, {pc}
	ldr r0, _021DF6B8 ; =0x0221053C
	ldr r0, [r0]
	add r0, r0, ip
	ldrb r0, [r0, #0x624]
	bl FUN_021DF760
	bl FUN_021DF730
	bl FUN_021DF6BC
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF6B8: .word 0x0221053C

	arm_func_start FUN_021DF6BC
FUN_021DF6BC: ; 0x021DF6BC
	ldr r1, _021DF6C8 ; =0x02210544
	add r0, r1, r0, lsl #2
	bx lr
	.align 2, 0
_021DF6C8: .word 0x02210544

	arm_func_start FUN_021DF6CC
FUN_021DF6CC: ; 0x021DF6CC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021DF6FC ; =0x02210544
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	ldr r1, _021DF700 ; =0x022105C4
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear32
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF6FC: .word 0x02210544
_021DF700: .word 0x022105C4

	arm_func_start FUN_021DF704
FUN_021DF704: ; 0x021DF704
	ldr r2, _021DF72C ; =0x02210544
	mov r0, #0
_021DF70C:
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bxeq lr
	add r0, r0, #1
	cmp r0, #0x20
	blt _021DF70C
	mvn r0, #0
	bx lr
	.align 2, 0
_021DF72C: .word 0x02210544

	arm_func_start FUN_021DF730
FUN_021DF730: ; 0x021DF730
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021FD3C4
	ldrb r0, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021DF748
FUN_021DF748: ; 0x021DF748
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021FD3C4
	ldrb r0, [r0, #1]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021DF760
FUN_021DF760: ; 0x021DF760
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _021DF7BC ; =0x0221053C
	mov r6, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _021DF7C0 ; =0x02210544
	mov r5, #0
_021DF784:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _021DF7A8
	bl FUN_021FD3C4
	ldrb r0, [r0, #1]
	cmp r6, r0
	ldreq r0, _021DF7C0 ; =0x02210544
	ldreq r0, [r0, r5, lsl #2]
	ldmeqia sp!, {r4, r5, r6, pc}
_021DF7A8:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021DF784
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DF7BC: .word 0x0221053C
_021DF7C0: .word 0x02210544

	arm_func_start FUN_021DF7C4
FUN_021DF7C4: ; 0x021DF7C4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _021DF87C ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #0x4000
	bl FUN_021DE8C8
	add r0, r0, #0xc000
	mov r1, r0, lsl #0x10
	ldr r3, _021DF87C ; =0x0221053C
	mov r0, #0
	mov r2, r0
	mov r1, r1, lsr #0x10
	ldr r4, [r3]
	bl FUN_021FFEB0
	ldr r1, _021DF880 ; =FUN_021DEB90
	ldr r2, _021DF87C ; =0x0221053C
	str r1, [sp]
	mov r1, r0
	ldr r0, [r2]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl FUN_021FD71C
	mov r4, r0
	bl FUN_021DF370
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r4
	ldmneia sp!, {r4, pc}
	ldr r0, _021DF87C ; =0x0221053C
	ldr r1, _021DF884 ; =FUN_021E9204
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_021FD6C8
	ldr r0, _021DF87C ; =0x0221053C
	ldr r1, _021DF888 ; =FUN_021E9464
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_021FD434
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DF87C: .word 0x0221053C
_021DF880: .word FUN_021DEB90
_021DF884: .word FUN_021E9204
_021DF888: .word FUN_021E9464

	arm_func_start FUN_021DF88C
FUN_021DF88C: ; 0x021DF88C
	ldr r0, _021DF8A4 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	bx lr
	.align 2, 0
_021DF8A4: .word 0x0221053C

	arm_func_start FUN_021DF8A8
FUN_021DF8A8: ; 0x021DF8A8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021DF8F0 ; =0x0221053C
	ldr r2, [r1]
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	mov r1, #1
	mov r1, r1,lsl  r0
	ldr r2, [r2, #0x644]
	ands r1, r2, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	bl FUN_021DF5F0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF8F0: .word 0x0221053C

	arm_func_start FUN_021DF8F4
FUN_021DF8F4: ; 0x021DF8F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _021DF954 ; =0x0221053C
	ldr r3, [r2]
	cmp r3, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldr r1, _021DF958 ; =0x00000624
	add r1, r3, r1
	str r1, [r0]
	ldr r2, [r2]
	ldrb r1, [r2, #0x369]
	cmp r1, #2
	beq _021DF93C
	ldrb r1, [r2, #0x369]
	cmp r1, #3
	bne _021DF948
_021DF93C:
	bl FUN_021E86A4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021DF948:
	bl FUN_021E874C
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF954: .word 0x0221053C
_021DF958: .word 0x00000624

	arm_func_start FUN_021DF95C
FUN_021DF95C: ; 0x021DF95C
	ldr r0, _021DF974 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	ldrneb r0, [r0, #0x2c]
	moveq r0, #0
	bx lr
	.align 2, 0
_021DF974: .word 0x0221053C

	arm_func_start FUN_021DF978
FUN_021DF978: ; 0x021DF978
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DF9D0 ; =0x0221053C
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	beq _021DF9B0
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	bne _021DF9C0
_021DF9B0:
	bl FUN_021E87D8
	add sp, sp, #4
	add r0, r0, #1
	ldmfd sp!, {pc}
_021DF9C0:
	bl FUN_021E8804
	add r0, r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DF9D0: .word 0x0221053C

	arm_func_start FUN_021DF9D4
FUN_021DF9D4: ; 0x021DF9D4
	stmdb sp!, {r4, lr}
	ldr r1, _021DFA3C ; =0x0221053C
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _021DFA14
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFA14
	ldr r0, _021DFA3C ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #5
	beq _021DFA1C
	cmp r0, #6
	beq _021DFA1C
_021DFA14:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_021DFA1C:
	mov r0, r4
	bl FUN_021DF760
	cmp r0, #0
	mvneq r0, #1
	ldmeqia sp!, {r4, pc}
	bl FUN_021FD488
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021DFA3C: .word 0x0221053C

	arm_func_start FUN_021DFA40
FUN_021DFA40: ; 0x021DFA40
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021DFAF0 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	beq _021DFA80
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFA80
	ldr r0, _021DFAF0 ; =0x0221053C
	ldr r2, [r0]
	ldr r0, [r2, #0x24]
	cmp r0, #5
	beq _021DFA8C
	cmp r0, #6
	beq _021DFA8C
_021DFA80:
	add sp, sp, #4
	mvn r0, #0
	ldmfd sp!, {pc}
_021DFA8C:
	ldrb r0, [r2, #0x361]
	cmp r0, #0
	bne _021DFAC0
	ldr r1, _021DFAF4 ; =0x0220D334
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
	bl FUN_02200D6C
	mov r0, #3
	bl FUN_021DF5CC
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021DFAC0:
	mov r1, #1
	ldr r0, _021DFAF0 ; =0x0221053C
	strb r1, [r2, #0x2d]
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_021FD45C
	ldr r1, _021DFAF0 ; =0x0221053C
	mov r0, #0
	ldr r1, [r1]
	strb r0, [r1, #0x2d]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021DFAF0: .word 0x0221053C
_021DFAF4: .word 0x0220D334

	arm_func_start FUN_021DFAF8
FUN_021DFAF8: ; 0x021DFAF8
	ldr r2, _021DFB1C ; =0x0221053C
	ldr r3, [r2]
	cmp r3, #0
	moveq r0, #0
	strne r0, [r3, #0x90]
	ldrne r2, [r2]
	movne r0, #1
	strne r1, [r2, #0x94]
	bx lr
	.align 2, 0
_021DFB1C: .word 0x0221053C

	arm_func_start FUN_021DFB20
FUN_021DFB20: ; 0x021DFB20
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x224
	mvn ip, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r5, r3
	str ip, [sp, #8]
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFB60
	ldr r0, _021DFD04 ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #3
	beq _021DFB6C
_021DFB60:
	add sp, sp, #0x224
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DFB6C:
	bl FUN_021DF6CC
	ldr r1, _021DFD04 ; =0x0221053C
	mov r0, #5
	ldr r2, [r1]
	str r6, [r2, #0x88]
	ldr r1, [r1]
	str r4, [r1, #0x8c]
	bl FUN_021DF5CC
	mov r0, r7
	bl FUN_021E1F84
	movs r4, r0
	beq _021DFBB8
	ldr r0, _021DFD04 ; =0x0221053C
	mov r1, r4
	ldr r0, [r0]
	add r0, r0, #0x1c
	bl FUN_021F05F4
	cmp r0, #0
	bne _021DFBC0
_021DFBB8:
	mov r5, #0xb
	b _021DFC8C
_021DFBC0:
	ldr r0, _021DFD04 ; =0x0221053C
	add r2, sp, #8
	ldr r0, [r0]
	mov r1, r4
	add r0, r0, #0x1c
	bl FUN_021F0664
	ldr r0, _021DFD04 ; =0x0221053C
	ldr r1, [sp, #8]
	ldr r0, [r0]
	add r2, sp, #0x10
	add r0, r0, #0x1c
	bl FUN_021F06E4
	ldr r0, [sp, #0x14]
	cmp r0, #6
	movne r5, #0xb
	bne _021DFC8C
	ldr r0, _021DFD08 ; =0x0220D344
	mov r6, #0x30
	add r1, sp, #0xc
	add r2, sp, #0x18
	mov r3, #0x2f
	strb r6, [sp, #0xc]
	bl FUN_021DE9F4
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	and r6, r0, #0xff
	ldr r0, _021DFD0C ; =0x0220D348
	add r1, sp, #0xc
	add r2, sp, #0x18
	mov r3, #0x2f
	bl FUN_021DE9F4
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	and r0, r0, #0xff
	cmp r0, r6
	moveq r5, #0xd
	beq _021DFC8C
	ldr r6, [sp, #0x238]
	ldr r1, _021DFD10 ; =FUN_021DF12C
	mov r0, r4
	mov r3, r5
	mov r2, #0
	str r6, [sp]
	bl FUN_021E9FD0
	add sp, sp, #0x224
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DFC8C:
	mov r0, r5
	mov r1, #0
	bl FUN_021DD6B0
	ldr r0, _021DFD04 ; =0x0221053C
	mov r1, #0
	ldr r4, [r0]
	mov r0, r5
	str r1, [sp]
	ldr r2, [r4, #0x8c]
	mov r3, r1
	str r2, [sp, #4]
	ldr r4, [r4, #0x88]
	mov r2, #1
	blx r4
	ldr r0, _021DFD04 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	beq _021DFCF8
	ldr r0, [r0, #0x24]
	cmp r0, #5
	bne _021DFCF8
	mov r0, #3
	bl FUN_021DF5CC
	ldr r1, _021DFD14 ; =0x0220D334
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
_021DFCF8:
	mov r0, #1
	add sp, sp, #0x224
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DFD04: .word 0x0221053C
_021DFD08: .word 0x0220D344
_021DFD0C: .word 0x0220D348
_021DFD10: .word FUN_021DF12C
_021DFD14: .word 0x0220D334

	arm_func_start FUN_021DFD18
FUN_021DFD18: ; 0x021DFD18
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFD50
	ldr r0, _021DFDB4 ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #3
	beq _021DFD5C
_021DFD50:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021DFD5C:
	bl FUN_021DF6CC
	ldr r1, _021DFDB4 ; =0x0221053C
	mov r2, #0
	ldr r3, [r1]
	mov r0, #5
	str r6, [r3, #0x88]
	ldr r3, [r1]
	str r5, [r3, #0x8c]
	ldr r1, [r1]
	strb r2, [r1, #0x2c]
	bl FUN_021DF5CC
	sub r0, r7, #1
	ldr r5, [sp, #0x18]
	ldr r1, _021DFDB8 ; =FUN_021DF12C
	mov r3, r4
	and r0, r0, #0xff
	mov r2, #0
	str r5, [sp]
	bl FUN_021EA138
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021DFDB4: .word 0x0221053C
_021DFDB8: .word FUN_021DF12C

	arm_func_start FUN_021DFDBC
FUN_021DFDBC: ; 0x021DFDBC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFDF8
	ldr r0, _021DFE5C ; =0x0221053C
	ldr r2, [r0]
	ldr r1, [r2, #0x24]
	cmp r1, #3
	blt _021DFDF8
	cmp r1, #4
	bne _021DFE04
_021DFDF8:
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DFE04:
	str r6, [r2, #0x78]
	ldr r1, [r0]
	mov r0, #4
	str r5, [r1, #0x7c]
	bl FUN_021DF5CC
	ldr r0, _021DFE5C ; =0x0221053C
	ldr r1, [sp, #0x20]
	ldr r3, [r0]
	ldr r0, [sp, #0x24]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r4, [sp, #0x28]
	str r0, [sp, #8]
	ldr r2, _021DFE60 ; =FUN_021DF2B4
	add r0, r3, #0xe0
	add r1, r3, #0x1e0
	mov r3, #0
	str r4, [sp, #0xc]
	bl FUN_021E2174
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DFE5C: .word 0x0221053C
_021DFE60: .word FUN_021DF2B4

	arm_func_start FUN_021DFE64
FUN_021DFE64: ; 0x021DFE64
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021DFE9C
	ldr r0, _021DFF6C ; =0x0221053C
	ldr r2, [r0]
	ldr r1, [r2, #0x24]
	cmp r1, #0
	beq _021DFEA4
_021DFE9C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021DFEA4:
	str r6, [r2, #0x70]
	ldr r1, [r0]
	cmp r4, #0
	str r5, [r1, #0x74]
	beq _021DFEC4
	ldrh r1, [r4]
	cmp r1, #0
	bne _021DFECC
_021DFEC4:
	mov r5, #0
	b _021DFF18
_021DFECC:
	ldr r1, [r0]
	mov r0, #0
	add r1, r1, #0x2e
	mov r2, #0x34
	bl MIi_CpuClear16
	mov r0, r4
	bl FUN_021DE89C
	cmp r0, #0x19
	movhi r5, #0x19
	bhi _021DFF00
	mov r0, r4
	bl FUN_021DE89C
	mov r5, r0
_021DFF00:
	ldr r1, _021DFF6C ; =0x0221053C
	mov r0, r4
	ldr r1, [r1]
	mov r2, r5, lsl #1
	add r1, r1, #0x2e
	bl MIi_CpuCopy16
_021DFF18:
	ldr r0, _021DFF6C ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	add r0, r0, r5, lsl #1
	strh r1, [r0, #0x2e]
	bl FUN_021DDC1C
	cmp r0, #4
	beq _021DFF4C
	ldr r1, _021DFF70 ; =0xFFFF1596
	mov r0, #2
	bl FUN_021E0EAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021DFF4C:
	mov r0, #1
	bl FUN_021DF5CC
	ldr r0, _021DFF6C ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x68]
	bl FUN_021EE898
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021DFF6C: .word 0x0221053C
_021DFF70: .word 0xFFFF1596

	arm_func_start FUN_021DFF74
FUN_021DFF74: ; 0x021DFF74
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DD984
	cmp r0, #0
	beq _021DFF8C
	bl FUN_021DF5EC
_021DFF8C:
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, [r0, #0x24]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _021E0194
_021DFFD8: ; jump table
	b _021E0194 ; case 0
	b _021DFFF4 ; case 1
	b _021E0124 ; case 2
	b _021E012C ; case 3
	b _021E012C ; case 4
	b _021E013C ; case 5
	b _021E014C ; case 6
_021DFFF4:
	bl FUN_021EE6A0
	cmp r0, #1
	beq _021E0014
	cmp r0, #2
	beq _021E00FC
	cmp r0, #3
	beq _021E0110
	b _021E0194
_021E0014:
	ldr r0, _021E01E4 ; =0x0221053C
	mov r2, #0
	ldr r0, [r0]
	ldr r1, [r0, #0xa0]
	add r0, r0, #0x1c
	bl FUN_021F0F94
	bl FUN_021DF414
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E01E4 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	ldr r2, _021E01E8 ; =FUN_021DF0D4
	mov r3, r1
	add r0, r0, #0x1c
	bl FUN_021F0EB0
	bl FUN_021DF414
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r2, _021E01EC ; =FUN_021DEF6C
	ldr r0, [r0]
	mov r1, #3
	add r0, r0, #0x1c
	mov r3, #0
	bl FUN_021F0EB0
	bl FUN_021DF414
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r2, _021E01F0 ; =FUN_021E20C8
	ldr r0, [r0]
	mov r1, #1
	add r0, r0, #0x1c
	mov r3, #0
	bl FUN_021F0EB0
	bl FUN_021DF414
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r2, _021E01F4 ; =FUN_021E1FE4
	ldr r0, [r0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, #0
	bl FUN_021F0EB0
	bl FUN_021DF414
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	mov r0, #2
	bl FUN_021DF5CC
	bl FUN_021E1034
	b _021E0194
_021E00FC:
	ldr r1, _021E01F8 ; =0xFFFFB172
	mov r0, #3
	bl FUN_021E0EAC
	add sp, sp, #4
	ldmfd sp!, {pc}
_021E0110:
	ldr r1, _021E01FC ; =0xFFFFB17B
	mov r0, #4
	bl FUN_021E0EAC
	add sp, sp, #4
	ldmfd sp!, {pc}
_021E0124:
	bl FUN_021E0F1C
	b _021E0194
_021E012C:
	bl FUN_021E2228
	mov r0, #0
	bl FUN_021E9568
	b _021E0194
_021E013C:
	mov r0, #1
	bl FUN_021E9568
	bl FUN_021E2228
	b _021E0194
_021E014C:
	bl FUN_021EAA64
	bl FUN_021E2228
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x369]
	cmp r0, #2
	beq _021E0174
	ldrb r0, [r1, #0x369]
	cmp r0, #3
	bne _021E0180
_021E0174:
	mov r0, #1
	bl FUN_021E9568
	b _021E0194
_021E0180:
	ldr r0, [r1]
	cmp r0, #0
	beq _021E0194
	mov r0, #0
	bl FUN_021E9568
_021E0194:
	ldr r0, _021E01E4 ; =0x0221053C
	ldr r1, [r0]
	ldrb r0, [r1, #0x36c]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, [r1, #0x364]
	cmp r0, #0
	beq _021E01CC
	bl FUN_02202280
	ldr r0, _021E01E4 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x364]
_021E01CC:
	ldr r0, _021E01E4 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x36c]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E01E4: .word 0x0221053C
_021E01E8: .word FUN_021DF0D4
_021E01EC: .word FUN_021DEF6C
_021E01F0: .word FUN_021E20C8
_021E01F4: .word FUN_021E1FE4
_021E01F8: .word 0xFFFFB172
_021E01FC: .word 0xFFFFB17B

	arm_func_start FUN_021E0200
FUN_021E0200: ; 0x021E0200
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E0370 ; =0x0221053C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, [r0, #0x364]
	cmp r0, #0
	beq _021E023C
	bl FUN_02202280
	ldr r0, _021E0370 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x364]
_021E023C:
	ldr r0, _021E0370 ; =0x0221053C
	mov r2, #0
	ldr r1, [r0]
	strb r2, [r1, #0x36c]
	ldr r0, [r0]
	ldr r0, [r0, #0x438]
	cmp r0, #0
	beq _021E0270
	bl FUN_02203E80
	ldr r0, _021E0370 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x438]
_021E0270:
	bl FUN_02200D6C
	bl FUN_021FBE7C
	ldr r0, _021E0370 ; =0x0221053C
	ldr ip, [r0]
	ldr r0, [ip, #0x1c]
	cmp r0, #0
	beq _021E0324
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, ip, #0x1c
	bl FUN_021F0EB0
	ldr r0, _021E0370 ; =0x0221053C
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #3
	bl FUN_021F0EB0
	ldr r0, _021E0370 ; =0x0221053C
	mov r2, #0
	ldr r0, [r0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #1
	bl FUN_021F0EB0
	ldr r0, _021E0370 ; =0x0221053C
	mov r2, #0
	ldr r0, [r0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, r2
	bl FUN_021F0EB0
	ldr r0, _021E0370 ; =0x0221053C
	ldr r0, [r0]
	add r0, r0, #0x1c
	bl FUN_021F0F18
	ldr r0, _021E0370 ; =0x0221053C
	ldr r0, [r0]
	add r0, r0, #0x1c
	bl FUN_021F0F64
	mov r1, #0
	ldr r0, _021E0370 ; =0x0221053C
	ldr r0, [r0]
	str r1, [r0, #0x1c]
_021E0324:
	bl FUN_021E0E48
	bl FUN_021E1D90
	bl FUN_021E854C
	bl FUN_021EA9C4
	ldr r0, _021E0370 ; =0x0221053C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _021E035C
	bl FUN_021FD704
	ldr r0, _021E0370 ; =0x0221053C
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0]
_021E035C:
	ldr r0, _021E0370 ; =0x0221053C
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E0370: .word 0x0221053C

	arm_func_start FUN_021E0374
FUN_021E0374: ; 0x021E0374
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr ip, _021E05D8 ; =0x0221053C
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str r0, [ip]
	bl FUN_021DD6F0
	ldr r0, _021E05D8 ; =0x0221053C
	mov r2, #0
	ldr r1, [r0]
	ldr r3, _021E05DC ; =FUN_021E8F80
	str r2, [r1]
	ldr r1, [r0]
	ldr r2, _021E05E0 ; =FUN_021DEF60
	str r3, [r1, #4]
	ldr r1, [r0]
	ldr ip, [sp, #0x24]
	str r2, [r1, #8]
	cmp ip, #0
	ldr r2, [r0]
	ldr r3, _021E05E4 ; =FUN_021DEBE4
	ldr r1, _021E05E8 ; =FUN_021DEBD8
	str r3, [r2, #0xc]
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	str r1, [r0, #0x10]
	ldr r0, _021E05D8 ; =0x0221053C
	moveq ip, #0x2000
	ldr r0, [r0]
	cmp r3, #0
	str ip, [r0, #0x14]
	moveq r3, #0x2000
	ldr r1, _021E05D8 ; =0x0221053C
	mov r0, #0
	ldr r2, [r1]
	ldr ip, _021E05EC ; =0x02210F94
	str r3, [r2, #0x18]
	ldr r2, [r1]
	ldr r3, _021E05F0 ; =0x02211094
	str r0, [r2, #0x1c]
	ldr r2, [r1]
	str r6, [r2, #0x20]
	ldr r2, [r1]
	str r0, [r2, #0x24]
	ldr r2, [r1]
	str r0, [r2, #0x28]
	ldr r2, [r1]
	strb r0, [r2, #0x2c]
	ldr r2, [r1]
	strb r0, [r2, #0x2d]
	ldr r2, [r1]
	str r0, [r2, #0x64]
	ldr r2, [r1]
	str ip, [r2, #0x68]
	ldr r2, [r1]
	str r3, [r2, #0x6c]
	ldr r2, [r1]
	str r0, [r2, #0x70]
	ldr r2, [r1]
	str r0, [r2, #0x74]
	ldr r2, [r1]
	str r0, [r2, #0x78]
	ldr r2, [r1]
	str r0, [r2, #0x7c]
	ldr r2, [r1]
	str r0, [r2, #0x80]
	ldr r2, [r1]
	str r0, [r2, #0x84]
	ldr r2, [r1]
	str r0, [r2, #0x88]
	ldr r2, [r1]
	str r0, [r2, #0x8c]
	ldr r2, [r1]
	str r0, [r2, #0x90]
	ldr r1, [r1]
	str r0, [r1, #0x94]
	bl FUN_021DF6CC
	ldr r0, _021E05D8 ; =0x0221053C
	mov r3, r5
	ldr r2, [r0]
	ldr r1, [r6, #0x24]
	ldr r0, _021E05F4 ; =FUN_021DF304
	str r1, [sp]
	add r1, r2, #0x2e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r5, #0
	add r0, r2, #0x98
	mov r1, r6
	add r2, r2, #0x1c
	str r5, [sp, #0xc]
	bl FUN_021E1074
	ldr r0, _021E05D8 ; =0x0221053C
	ldr r2, [sp, #0x30]
	ldr r5, [r0]
	ldr r3, [sp, #0x2c]
	str r2, [sp]
	add r0, r5, #0x2f8
	add r1, r5, #0x1c
	add r2, r5, #0x2e
	bl FUN_021E234C
	ldr r0, _021E05D8 ; =0x0221053C
	ldr r1, _021E05EC ; =0x02210F94
	ldr r2, [r0]
	ldr r0, _021E05F0 ; =0x02211094
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0x354
	add r1, r2, #0x1c
	add r3, r2, #4
	bl FUN_021EA368
	ldr r1, _021E05D8 ; =0x0221053C
	ldr r0, _021E05F8 ; =0x000007D8
	ldr r1, [r1]
	add r0, r1, r0
	bl FUN_021EACB4
	mov r0, r4
	bl strlen
	cmp r0, #0x100
	movhs r5, #0xff
	bhs _021E0578
	mov r0, r4
	bl strlen
	mov r5, r0
_021E0578:
	ldr r1, _021E05EC ; =0x02210F94
	mov r0, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r0, [sp, #0x20]
	ldr r1, _021E05EC ; =0x02210F94
	mov r2, #0
	strb r2, [r1, r5]
	bl strlen
	cmp r0, #0x100
	movhs r4, #0xff
	bhs _021E05B4
	ldr r0, [sp, #0x20]
	bl strlen
	mov r4, r0
_021E05B4:
	ldr r0, [sp, #0x20]
	ldr r1, _021E05F0 ; =0x02211094
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, _021E05F0 ; =0x02211094
	mov r1, #0
	strb r1, [r0, r4]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E05D8: .word 0x0221053C
_021E05DC: .word FUN_021E8F80
_021E05E0: .word FUN_021DEF60
_021E05E4: .word FUN_021DEBE4
_021E05E8: .word FUN_021DEBD8
_021E05EC: .word 0x02210F94
_021E05F0: .word 0x02211094
_021E05F4: .word FUN_021DF304
_021E05F8: .word 0x000007D8

	arm_func_start FUN_021E05FC
FUN_021E05FC: ; 0x021E05FC
	ldr r0, _021E0624 ; =0x022106C8
	ldr r0, [r0]
	cmp r0, #0
	beq _021E061C
	ldr r0, [r0, #4]
	cmp r0, #5
	moveq r0, #1
	bxeq lr
_021E061C:
	mov r0, #0
	bx lr
	.align 2, 0
_021E0624: .word 0x022106C8

	arm_func_start FUN_021E0628
FUN_021E0628: ; 0x021E0628
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r4, r1
	ldr r1, [r4]
	mov r5, r0
	cmp r1, #0
	addne sp, sp, #0x4c
	ldmneia sp!, {r4, r5, pc}
	ldr r1, _021E07CC ; =0x022106C8
	ldr r2, [r1]
	ldr r1, [r2, #4]
	cmp r1, #3
	bne _021E0704
	ldrsb r1, [r4, #0x8e]
	cmp r1, #0
	bne _021E06DC
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #8
	add r0, r0, #4
	bl FUN_02097218
	ldr r1, _021E07D0 ; =0x00000705
	add r2, sp, #8
	mov r0, r5
	bl FUN_021F0B30
	bl FUN_021E0DB0
	cmp r0, #0
	addne sp, sp, #0x4c
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021E07CC ; =0x022106C8
	mov r3, #4
	ldr r1, [r0]
	ldr r0, _021E07D4 ; =FUN_021E0628
	str r3, [r1, #4]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl FUN_021F0B9C
	bl FUN_021E0DB0
	add sp, sp, #0x4c
	cmp r0, #0
	ldmia sp!, {r4, r5, pc}
_021E06DC:
	bl FUN_021F0D54
	ldr r0, _021E07D8 ; =FUN_021E0C80
	mov r1, #0
	bl FUN_021E0A00
	ldr r0, _021E07CC ; =0x022106C8
	mov r1, #1
	ldr r0, [r0]
	add sp, sp, #0x4c
	str r1, [r0, #4]
	ldmia sp!, {r4, r5, pc}
_021E0704:
	cmp r1, #4
	addne sp, sp, #0x4c
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #0x1d
	add r0, r0, #4
	bl FUN_02097218
	add r1, sp, #0x1d
	add r0, r4, #0x8e
	bl strcmp
	cmp r0, #0
	bne _021E079C
	ldr r0, _021E07CC ; =0x022106C8
	add r2, sp, #0x32
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	add r0, r0, #0x3c
	bl FUN_02097218
	ldr r0, _021E07CC ; =0x022106C8
	ldr r2, [r4, #4]
	ldr r1, [r0]
	ldr r0, [r1, #0x1c]
	add r1, r1, #0x3c
	bl FUN_02096EC0
	mov r0, r5
	bl FUN_021F0D54
	ldr r0, _021E07CC ; =0x022106C8
	ldr r1, _021E07DC ; =0x022106C4
	ldr r4, [r0]
	ldr r0, _021E07E0 ; =0x022106CC
	ldr r2, [r1]
	ldr r3, [r0]
	add r0, r4, #0x48
	add r1, r4, #0x148
	blx r3
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
_021E079C:
	ldr r0, _021E07D4 ; =FUN_021E0628
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl FUN_021F0B9C
	bl FUN_021E0DB0
	cmp r0, #0
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E07CC: .word 0x022106C8
_021E07D0: .word 0x00000705
_021E07D4: .word FUN_021E0628
_021E07D8: .word FUN_021E0C80
_021E07DC: .word 0x022106C4
_021E07E0: .word 0x022106CC

	arm_func_start FUN_021E07E4
FUN_021E07E4: ; 0x021E07E4
	stmdb sp!, {lr}
	sub sp, sp, #0x3d4
	bl FUN_021D988C
	cmp r0, #0x15
	bne _021E08BC
	add r0, sp, #0
	bl FUN_021D97F8
	ldr r0, _021E09DC ; =0x022106C8
	add r1, sp, #0x4a
	ldr r0, [r0]
	add r0, r0, #0x48
	bl strcpy
	ldr r0, _021E09DC ; =0x022106C8
	add r1, sp, #0x100
	ldr r0, [r0]
	add r1, r1, #0x77
	add r0, r0, #0x148
	bl strcpy
	bl FUN_021D991C
	ldr r1, _021E09DC ; =0x022106C8
	mov r0, #0
	ldr r1, [r1]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl FUN_021DD904
	ldr r0, _021E09DC ; =0x022106C8
	mov r2, #0
	ldr r1, [r0]
	str r2, [r1, #0x24]
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl FUN_0209702C
	cmp r0, #0
	beq _021E0898
	ldr r0, _021E09DC ; =0x022106C8
	ldr r1, _021E09E0 ; =0x022106C4
	ldr ip, [r0]
	ldr r0, _021E09E4 ; =0x022106CC
	ldr r2, [r1]
	ldr r3, [r0]
	add r0, ip, #0x48
	add r1, ip, #0x148
	blx r3
	add sp, sp, #0x3d4
	ldmfd sp!, {pc}
_021E0898:
	ldr r0, _021E09DC ; =0x022106C8
	ldr r2, _021E09E8 ; =FUN_021E0C98
	ldr r1, [r0]
	mov r3, #3
	add r0, r1, #0x48
	add r1, r1, #0x148
	bl FUN_021E0BE0
	add sp, sp, #0x3d4
	ldmfd sp!, {pc}
_021E08BC:
	bl FUN_021D988C
	cmp r0, #0
	addeq sp, sp, #0x3d4
	ldmeqia sp!, {pc}
	bl OS_GetTick
	ldr r3, _021E09DC ; =0x022106C8
	ldr r2, _021E09EC ; =0x000082EA
	ldr ip, [r3]
	mov r3, #0
	ldr lr, [ip, #0x28]
	ldr ip, [ip, #0x2c]
	subs lr, r0, lr
	sbc r0, r1, ip
	mov r1, r0, lsl #6
	orr r1, r1, lr, lsr #26
	mov r0, lr, lsl #6
	bl _ll_udiv
	ldr r2, _021E09F0 ; =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _021E0958
	add r0, sp, #0x1c4
	bl FUN_021D97F8
	bl FUN_021D991C
	ldr r1, _021E09DC ; =0x022106C8
	mov r0, #0
	ldr r1, [r1]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl FUN_021DD904
	ldr r0, _021E09DC ; =0x022106C8
	mov r2, #0
	ldr r1, [r0]
	mov r0, #2
	str r2, [r1, #0x24]
	ldr r1, [sp, #0x1c4]
	bl FUN_021E0EAC
	add sp, sp, #0x3d4
	ldmfd sp!, {pc}
_021E0958:
	bl FUN_021D991C
	add r0, sp, #0x388
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _021E09DC ; =0x022106C8
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl FUN_021DE89C
	ldr r1, _021E09DC ; =0x022106C8
	mov r2, r0, lsl #1
	ldr r1, [r1]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0x388
	bl MI_CpuCopy8
	ldr r0, _021E09DC ; =0x022106C8
	ldr r1, _021E09F4 ; =0x00000251
	ldr r2, [r0]
	add r0, sp, #0x3bc
	add r1, r2, r1
	bl strcpy
	ldr r2, _021E09F8 ; =FUN_021DD944
	ldr r0, _021E09DC ; =0x022106C8
	str r2, [sp, #0x3c8]
	ldr r2, _021E09FC ; =FUN_021DD904
	ldr r1, [r0]
	str r2, [sp, #0x3cc]
	ldr r1, [r1, #0x24]
	add r0, sp, #0x388
	bl FUN_021D9ACC
	add sp, sp, #0x3d4
	ldmfd sp!, {pc}
	.align 2, 0
_021E09DC: .word 0x022106C8
_021E09E0: .word 0x022106C4
_021E09E4: .word 0x022106CC
_021E09E8: .word FUN_021E0C98
_021E09EC: .word 0x000082EA
_021E09F0: .word 0x00002710
_021E09F4: .word 0x00000251
_021E09F8: .word FUN_021DD944
_021E09FC: .word FUN_021DD904

	arm_func_start FUN_021E0A00
FUN_021E0A00: ; 0x021E0A00
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x4c
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r2, _021E0BBC ; =0x022106CC
	ldr r1, _021E0BC0 ; =0x022106C4
	ldr r0, [r0]
	str r5, [r2]
	str r4, [r1]
	ldr r0, [r0, #0x1c]
	bl FUN_0209702C
	cmp r0, #0
	beq _021E0A68
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r1, [r0]
	ldr r0, [r1, #0x1c]
	add r2, r1, #0x248
	ldr r1, [r0, #0x24]
	add r0, r0, #0x10
	bl FUN_02097218
	b _021E0B1C
_021E0A68:
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r0, [r0]
	add r0, r0, #0x3c
	bl FUN_0209703C
	cmp r0, #0
	bne _021E0AD0
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	add r0, r0, #4
	bl FUN_0209705C
	cmp r0, #0
	beq _021E0ABC
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r1, [r0]
	ldr r0, [r1, #0x1c]
	add r3, r1, #0x3c
	add r0, r0, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	b _021E0B04
_021E0ABC:
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r0, [r0]
	add r0, r0, #0x3c
	bl FUN_020970CC
	b _021E0B04
_021E0AD0:
	bl OS_GetTick
	ldr r2, _021E0BC4 ; =0x6C078965
	ldr r3, _021E0BC8 ; =0x5D588B65
	umull ip, r4, r0, r2
	mla r4, r0, r3, r4
	ldr r3, _021E0BB8 ; =0x022106C8
	ldr r0, _021E0BCC ; =0x00269EC3
	mla r4, r1, r2, r4
	adds r0, ip, r0
	ldr r3, [r3]
	adc r1, r4, #0
	add r0, r3, #0x3c
	bl FUN_02097508
_021E0B04:
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r2, [r0]
	ldr r1, [r2, #0xc]
	add r0, r2, #0x3c
	add r2, r2, #0x248
	bl FUN_02097218
_021E0B1C:
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bl FUN_021DE89C
	ldr r1, _021E0BB8 ; =0x022106C8
	mov r2, r0, lsl #1
	ldr r1, [r1]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0
	bl MI_CpuCopy8
	ldr r0, _021E0BB8 ; =0x022106C8
	ldr r1, _021E0BD0 ; =0x00000251
	ldr r2, [r0]
	add r0, sp, #0x34
	add r1, r2, r1
	bl strcpy
	ldr r4, _021E0BD4 ; =FUN_021DD944
	ldr r3, _021E0BD8 ; =FUN_021DD904
	ldr r1, _021E0BDC ; =0x00001C10
	mov r0, #0
	mov r2, #4
	str r4, [sp, #0x40]
	str r3, [sp, #0x44]
	bl FUN_021DD924
	ldr r1, _021E0BB8 ; =0x022106C8
	mov r4, r0
	ldr r0, [r1]
	str r4, [r0, #0x24]
	bl OS_GetTick
	ldr r2, _021E0BB8 ; =0x022106C8
	ldr r2, [r2]
	str r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	mov r1, r4
	add r0, sp, #0
	bl FUN_021D9ACC
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E0BB8: .word 0x022106C8
_021E0BBC: .word 0x022106CC
_021E0BC0: .word 0x022106C4
_021E0BC4: .word 0x6C078965
_021E0BC8: .word 0x5D588B65
_021E0BCC: .word 0x00269EC3
_021E0BD0: .word 0x00000251
_021E0BD4: .word FUN_021DD944
_021E0BD8: .word FUN_021DD904
_021E0BDC: .word 0x00001C10

	arm_func_start FUN_021E0BE0
FUN_021E0BE0: ; 0x021E0BE0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r4, _021E0C7C ; =0x022106C8
	mov r6, r1
	ldr r4, [r4]
	mov r1, r0
	add r0, r4, #0x48
	mov r5, r2
	mov r4, r3
	bl strcpy
	ldr r0, _021E0C7C ; =0x022106C8
	mov r1, r6
	ldr r0, [r0]
	add r0, r0, #0x148
	bl strcpy
	ldr r0, _021E0C7C ; =0x022106C8
	ldr r6, [r0]
	bl OS_GetTick
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r3, #1
	ldr r0, _021E0C7C ; =0x022106C8
	str r3, [r6, #0x30]
	ldr r2, [r0]
	mov r1, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r2]
	add r1, r2, #0x48
	add r2, r2, #0x148
	bl FUN_021F0D8C
	bl FUN_021E0DB0
	cmp r0, #0
	ldreq r0, _021E0C7C ; =0x022106C8
	ldreq r0, [r0]
	streq r4, [r0, #4]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E0C7C: .word 0x022106C8

	arm_func_start FUN_021E0C80
FUN_021E0C80: ; 0x021E0C80
	ldr ip, _021E0C90 ; =FUN_021E0BE0
	ldr r2, _021E0C94 ; =FUN_021E0C98
	mov r3, #2
	bx ip
	.align 2, 0
_021E0C90: .word FUN_021E0BE0
_021E0C94: .word FUN_021E0C98

	arm_func_start FUN_021E0C98
FUN_021E0C98: ; 0x021E0C98
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r3, _021E0DA0 ; =0x022106C8
	mov r2, #0
	ldr ip, [r3]
	mov r4, r1
	str r2, [ip, #0x30]
	ldr r1, [r4]
	cmp r1, #0
	bne _021E0D90
	ldr ip, [r3]
	ldr r1, [ip, #4]
	cmp r1, #2
	bne _021E0D5C
	ldr r1, [ip, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r1, #0x1c]
	cmp r1, r0
	bne _021E0D48
	ldr r1, _021E0DA4 ; =0x0220D34C
	mov r3, #5
	mov r0, #1
	str r3, [ip, #4]
	bl FUN_021E1E30
	bl FUN_021E0DB0
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldr r0, _021E0DA0 ; =0x022106C8
	ldr r1, [r4, #4]
	ldr r3, [r0]
	mov r0, #0
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #0x14]
	blx r3
	bl FUN_021DF7C4
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl FUN_021EA1E0
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r4, pc}
_021E0D48:
	ldr r1, _021E0DA8 ; =0xFFFF15A0
	mov r0, #6
	bl FUN_021E0EAC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_021E0D5C:
	cmp r1, #3
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldr r1, _021E0DAC ; =FUN_021E0628
	mov r3, r2
	str r1, [sp]
	str r2, [sp, #4]
	ldr r1, [r4, #4]
	bl FUN_021F0B9C
	bl FUN_021E0DB0
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r4, pc}
_021E0D90:
	mov r0, r1
	bl FUN_021E0DB0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E0DA0: .word 0x022106C8
_021E0DA4: .word 0x0220D34C
_021E0DA8: .word 0xFFFF15A0
_021E0DAC: .word FUN_021E0628

	arm_func_start FUN_021E0DB0
FUN_021E0DB0: ; 0x021E0DB0
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021E0E0C
_021E0DCC: ; jump table
	b _021E0E0C ; case 0
	b _021E0DE0 ; case 1
	b _021E0DEC ; case 2
	b _021E0DF8 ; case 3
	b _021E0E04 ; case 4
_021E0DE0:
	mov r0, #9
	mvn r2, #0
	b _021E0E0C
_021E0DEC:
	mov r0, #9
	mvn r2, #1
	b _021E0E0C
_021E0DF8:
	mov r0, #6
	mvn r2, #9
	b _021E0E0C
_021E0E04:
	mov r0, #6
	mvn r2, #0x13
_021E0E0C:
	ldr r1, _021E0E20 ; =0xFFFF11B8
	add r1, r2, r1
	bl FUN_021E0EAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E0E20: .word 0xFFFF11B8

	arm_func_start FUN_021E0E24
FUN_021E0E24: ; 0x021E0E24
	ldr r0, _021E0E44 ; =0x022106C8
	ldr r2, [r0]
	cmp r2, #0
	movne r1, #0
	strne r1, [r2, #4]
	ldrne r0, [r0]
	strne r1, [r0, #0x30]
	bx lr
	.align 2, 0
_021E0E44: .word 0x022106C8

	arm_func_start FUN_021E0E48
FUN_021E0E48: ; 0x021E0E48
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E0EA8 ; =0x022106C8
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021E0E94
	bl FUN_021D9974
	bl FUN_021D991C
	ldr r1, _021E0EA8 ; =0x022106C8
	mov r0, #0
	ldr r1, [r1]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl FUN_021DD904
	ldr r0, _021E0EA8 ; =0x022106C8
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x24]
_021E0E94:
	ldr r0, _021E0EA8 ; =0x022106C8
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E0EA8: .word 0x022106C8

	arm_func_start FUN_021E0EAC
FUN_021E0EAC: ; 0x021E0EAC
	stmdb sp!, {r4, lr}
	ldr r2, _021E0EFC ; =0x022106C8
	mov r4, r0
	ldr r2, [r2]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021DD6B0
	ldr r0, _021E0EFC ; =0x022106C8
	ldr r0, [r0]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021E0EF4
	ldr r2, [r0, #0x18]
	mov r0, r4
	mov r1, #0
	blx r3
_021E0EF4:
	bl FUN_021E0E24
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E0EFC: .word 0x022106C8

	arm_func_start FUN_021E0F00
FUN_021E0F00: ; 0x021E0F00
	ldr r0, _021E0F18 ; =0x022106C8
	ldr r0, [r0]
	cmp r0, #0
	ldrne r0, [r0, #0x1c]
	moveq r0, #0
	bx lr
	.align 2, 0
_021E0F18: .word 0x022106C8

	arm_func_start FUN_021E0F1C
FUN_021E0F1C: ; 0x021E0F1C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E1024 ; =0x022106C8
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E1024 ; =0x022106C8
	ldr r1, [r0]
	ldr r0, [r1, #4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021E101C
_021E0F60: ; jump table
	b _021E101C ; case 0
	b _021E0F78 ; case 1
	b _021E0F84 ; case 2
	b _021E0F84 ; case 3
	b _021E0F84 ; case 4
	b _021E101C ; case 5
_021E0F78:
	bl FUN_021E07E4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021E0F84:
	ldr r0, [r1]
	cmp r0, #0
	beq _021E0FA0
	ldr r1, [r0]
	cmp r1, #0
	beq _021E0FA0
	bl FUN_021F0F18
_021E0FA0:
	ldr r0, _021E1024 ; =0x022106C8
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl OS_GetTick
	ldr r3, _021E1024 ; =0x022106C8
	ldr r2, _021E1028 ; =0x000082EA
	ldr ip, [r3]
	mov r3, #0
	ldr lr, [ip, #0x34]
	ldr ip, [ip, #0x38]
	subs lr, r0, lr
	sbc r0, r1, ip
	mov r1, r0, lsl #6
	orr r1, r1, lr, lsr #26
	mov r0, lr, lsl #6
	bl _ll_udiv
	ldr r2, _021E102C ; =0x0000EA60
	cmp r1, #0
	cmpeq r0, r2
	addls sp, sp, #4
	ldmlsia sp!, {pc}
	ldr r1, _021E1030 ; =0xFFFF1172
	mov r0, #6
	bl FUN_021E0EAC
	ldr r0, _021E1024 ; =0x022106C8
	mov r1, #0
	ldr r0, [r0]
	str r1, [r0, #0x30]
_021E101C:
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E1024: .word 0x022106C8
_021E1028: .word 0x000082EA
_021E102C: .word 0x0000EA60
_021E1030: .word 0xFFFF1172

	arm_func_start FUN_021E1034
FUN_021E1034: ; 0x021E1034
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E106C ; =FUN_021E0C80
	mov r1, #0
	bl FUN_021E0A00
	ldr r0, _021E1070 ; =0x022106C8
	mov r3, #1
	ldr r2, [r0]
	mov r1, #0
	str r3, [r2, #4]
	ldr r0, [r0]
	str r1, [r0, #0x30]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E106C: .word FUN_021E0C80
_021E1070: .word 0x022106C8

	arm_func_start FUN_021E1074
FUN_021E1074: ; 0x021E1074
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _021E10F4 ; =0x022106C8
	mov r6, r1
	mov r5, r2
	mov r1, #0
	mov r2, #0x260
	mov r4, r3
	str r0, [ip]
	bl MI_CpuFill8
	ldr r0, _021E10F4 ; =0x022106C8
	mov r2, #0
	ldr r1, [r0]
	ldr ip, [sp, #0x10]
	str r5, [r1]
	ldr r1, [r0]
	ldr r5, [sp, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0]
	ldr r3, [sp, #0x18]
	str r4, [r1, #8]
	ldr r1, [r0]
	ldr r2, [sp, #0x1c]
	str ip, [r1, #0xc]
	ldr r1, [r0]
	str r5, [r1, #0x10]
	ldr r1, [r0]
	str r3, [r1, #0x14]
	ldr r1, [r0]
	str r2, [r1, #0x18]
	ldr r0, [r0]
	str r6, [r0, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E10F4: .word 0x022106C8

	arm_func_start FUN_021E10F8
FUN_021E10F8: ; 0x021E10F8
	ldr r0, _021E1108 ; =0x022106D0
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
_021E1108: .word 0x022106D0

	arm_func_start FUN_021E110C
FUN_021E110C: ; 0x021E110C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r1
	ldr r0, [sl]
	mov r8, #0
	cmp r0, #0
	mov r0, #1
	str r0, [sp]
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021E12B4 ; =0x022106D0
	mov sb, r8
	ldr r2, [r4]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	ble _021E1274
	mov r7, r8
	str r0, [sp, #4]
	mov fp, r8
	mov r5, r0
_021E115C:
	ldr r0, [r2, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #1
	bne _021E11C8
	bl FUN_021E0F00
	ldr r1, [r4]
	add r2, sp, #8
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl FUN_02096C78
	add r0, sp, #8
	add r1, sl, #0x8e
	bl strcmp
	cmp r0, #0
	bne _021E125C
	ldr r0, [r4]
	ldr r1, [sl, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02096C90
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097414
	mov r8, r5
	b _021E125C
_021E11C8:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #3
	beq _021E11F8
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #2
	bne _021E125C
_021E11F8:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097490
	cmp r0, #1
	streq fp, [sp]
	beq _021E125C
	ldr r6, [sl, #4]
	bl FUN_021E0F00
	ldr r1, [r4]
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl FUN_02096DA0
	cmp r6, r0
	bne _021E125C
	ldr r0, [r4]
	mov r1, r6
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02096C90
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097414
	ldr r8, [sp, #4]
_021E125C:
	ldr r2, [r4]
	add sb, sb, #1
	ldr r1, [r2, #0x14]
	add r7, r7, #0xc
	cmp sb, r1
	blt _021E115C
_021E1274:
	cmp r8, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r2, #0x18]
	ldr r2, [sl, #4]
	bl FUN_021E17F0
	ldr r1, [sp]
	cmp r1, #0
	beq _021E129C
	bl FUN_021E1DA4
_021E129C:
	ldr r0, _021E12B4 ; =0x022106D0
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E12B4: .word 0x022106D0

	arm_func_start FUN_021E12B8
FUN_021E12B8: ; 0x021E12B8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	cmp r1, #0
	mov fp, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021E1410 ; =0x022106D0
	mov r8, fp
	ldr r1, [r4]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ble _021E13E4
	add r0, sb, #0x8e
	mov r7, fp
	mov r5, #1
	str r0, [sp]
_021E1304:
	ldr r0, [r1, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #1
	bne _021E136C
	bl FUN_021E0F00
	ldr r1, [r4]
	add r2, sp, #4
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl FUN_02096C78
	ldr r1, [sp]
	add r0, sp, #4
	bl strcmp
	cmp r0, #0
	bne _021E13CC
	ldr r1, [sb, #4]
	mov r0, sl
	bl FUN_021F0944
	ldr r0, [r4]
	ldr r1, [sb, #4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02096C90
	mov fp, r5
	b _021E13CC
_021E136C:
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #3
	beq _021E139C
	ldr r0, [r4]
	ldr r0, [r0, #0x18]
	add r0, r0, r7
	bl FUN_02097484
	cmp r0, #2
	bne _021E13CC
_021E139C:
	ldr r6, [sb, #4]
	bl FUN_021E0F00
	ldr r1, [r4]
	ldr r1, [r1, #0x18]
	add r1, r1, r7
	bl FUN_02096DA0
	cmp r6, r0
	bne _021E13CC
	mov r0, sl
	mov r1, r6
	bl FUN_021F0944
	mov fp, r5
_021E13CC:
	ldr r1, [r4]
	add r8, r8, #1
	ldr r0, [r1, #0x14]
	add r7, r7, #0xc
	cmp r8, r0
	blt _021E1304
_021E13E4:
	cmp fp, #0
	beq _021E13FC
	ldr r0, [sb, #4]
	bl FUN_021E17BC
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E13FC:
	ldr r1, [sb, #4]
	mov r0, sl
	bl FUN_021F0864
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E1410: .word 0x022106D0

	arm_func_start FUN_021E1414
FUN_021E1414: ; 0x021E1414
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r1
	ldr r1, [sb]
	mov sl, r0
	mov r8, r2
	cmp r1, #0
	bne _021E15FC
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _021E15FC
	mov r0, #0xc
	ldr r1, _021E1670 ; =0x022106D0
	mul r6, r8, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl FUN_02097484
	cmp r0, #0
	beq _021E15FC
	ldr r7, _021E1670 ; =0x022106D0
	ldr r1, [r7]
	ldr r0, [r1]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #1
	strb r0, [r1, #0x1d]
	ldr r0, [sb, #4]
	mov r5, #0
	cmp r0, #0
	ble _021E14FC
	mov r4, r5
_021E1498:
	ldr r0, [r7]
	ldr r1, [sb, #0xc]
	ldr r0, [r0, #0x18]
	ldr r2, [r1, r4]
	mov r1, r8
	bl FUN_021E1900
	cmp r0, #0
	beq _021E14E8
	ldr r0, _021E1670 ; =0x022106D0
	mov r2, #1
	ldr r4, [r0]
	ldr r1, _021E1674 ; =0x00000601
	ldrb r3, [r4, #0x1c]
	add sp, sp, #4
	add r3, r3, #1
	strb r3, [r4, #0x1c]
	ldr r0, [r0]
	strb r2, [r0, #0x1e]
	str r1, [sb, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E14E8:
	ldr r0, [sb, #4]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0xac
	blt _021E1498
_021E14FC:
	cmp r0, #0
	mov r5, #0
	ble _021E15C4
	mov r7, r5
	add fp, sp, #0
	mvn r4, #0
_021E1514:
	ldr r1, [sb, #0xc]
	mov r0, sl
	ldr r1, [r1, r7]
	mov r2, fp
	bl FUN_021F0664
	bl FUN_021E1678
	ldr r0, [sp]
	cmp r0, r4
	bne _021E1548
	ldr r0, [sb, #0xc]
	ldr r0, [r0, r7]
	bl FUN_021E17BC
	b _021E15B0
_021E1548:
	ldr r0, _021E1670 ; =0x022106D0
	ldr r1, [sb, #0xc]
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl FUN_02096C90
	ldr r0, _021E1670 ; =0x022106D0
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	add r0, r0, r6
	bl FUN_02097414
	mov r0, r8
	bl FUN_021E1DA4
	ldr r0, _021E1670 ; =0x022106D0
	mov r2, #1
	ldr r4, [r0]
	ldr r1, _021E1674 ; =0x00000601
	ldrb r3, [r4, #0x1c]
	add sp, sp, #4
	add r3, r3, #1
	strb r3, [r4, #0x1c]
	ldr r0, [r0]
	strb r2, [r0, #0x1e]
	str r1, [sb, #8]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E15B0:
	ldr r0, [sb, #4]
	add r5, r5, #1
	cmp r5, r0
	add r7, r7, #0xac
	blt _021E1514
_021E15C4:
	ldr r0, [sb, #8]
	cmp r0, #0x600
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021E1670 ; =0x022106D0
	mov r1, #1
	ldr r3, [r0]
	add sp, sp, #4
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E15FC:
	ldr r0, [sb]
	cmp r0, #0
	beq _021E1618
	bl FUN_021E1678
	add sp, sp, #4
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E1618:
	ldr r0, _021E1670 ; =0x022106D0
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #1
	beq _021E1648
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r8, r0, r1
	bl FUN_02097484
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E1648:
	ldr r0, _021E1670 ; =0x022106D0
	mov r1, #1
	ldr r3, [r0]
	ldrb r2, [r3, #0x1c]
	add r2, r2, #1
	strb r2, [r3, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E1670: .word 0x022106D0
_021E1674: .word 0x00000601

	arm_func_start FUN_021E1678
FUN_021E1678: ; 0x021E1678
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021E16D4
_021E1694: ; jump table
	b _021E16D4 ; case 0
	b _021E16A8 ; case 1
	b _021E16B4 ; case 2
	b _021E16C0 ; case 3
	b _021E16CC ; case 4
_021E16A8:
	mov r0, #9
	mvn r2, #0
	b _021E16D4
_021E16B4:
	mov r0, #9
	mvn r2, #1
	b _021E16D4
_021E16C0:
	mov r0, #6
	mvn r2, #9
	b _021E16D4
_021E16CC:
	mov r0, #6
	mvn r2, #0x13
_021E16D4:
	ldr r1, _021E16E8 ; =0xFFFEEAA8
	add r1, r2, r1
	bl FUN_021E2114
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E16E8: .word 0xFFFEEAA8

	arm_func_start FUN_021E16EC
FUN_021E16EC: ; 0x021E16EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _021E17B8 ; =0x022106D0
	mov r3, #0
	ldr r2, [r2]
	mov r5, r0
	mov r4, r1
	str r3, [sp]
	cmp r2, #0
	beq _021E1720
	bl FUN_021E05FC
	cmp r0, #0
	bne _021E172C
_021E1720:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E172C:
	bl FUN_021E0F00
	mov r1, r5
	bl FUN_02096DA0
	mov r5, r0
	cmp r5, #0
	ble _021E176C
	ldr r0, _021E17B8 ; =0x022106D0
	add r2, sp, #0
	ldr r0, [r0]
	mov r1, r5
	ldr r0, [r0, #4]
	bl FUN_021F0664
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
_021E176C:
	cmp r5, #0
	ble _021E1784
	ldr r1, [sp]
	mvn r0, #0
	cmp r1, r0
	bne _021E1790
_021E1784:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E1790:
	ldr r0, _021E17B8 ; =0x022106D0
	mov r2, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_021F06E4
	cmp r0, #0
	movne r0, #0
	moveq r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E17B8: .word 0x022106D0

	arm_func_start FUN_021E17BC
FUN_021E17BC: ; 0x021E17BC
	stmdb sp!, {r4, lr}
	ldr r2, _021E17E8 ; =0x022106D0
	mov r1, r0
	ldr r0, [r2]
	ldr r2, _021E17EC ; =0x0220D350
	ldr r0, [r0, #4]
	bl FUN_021F09B0
	mov r4, r0
	bl FUN_021E1678
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E17E8: .word 0x022106D0
_021E17EC: .word 0x0220D350

	arm_func_start FUN_021E17F0
FUN_021E17F0: ; 0x021E17F0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r1
	mov fp, r0
	mvn r0, #0
	str r2, [sp]
	cmp sl, #0
	str r0, [sp, #4]
	mov r8, #0
	ble _021E18F0
	mov r6, fp
	mov r5, fp
	mov r0, #1
	str r0, [sp, #8]
_021E1828:
	mov r0, r8
	bl FUN_021E1F84
	movs sb, r0
	beq _021E18DC
	ldr r0, [sp]
	add r7, r8, #1
	cmp sb, r0
	streq r8, [sp, #4]
	cmp r7, sl
	bge _021E18DC
	mov r0, #0xc
	mla r4, r7, r0, fp
_021E1858:
	mov r0, r7
	bl FUN_021E1F84
	cmp sb, r0
	bne _021E18CC
	mov r0, r6
	bl FUN_02097484
	cmp r0, #2
	bne _021E1894
	mov r0, r4
	bl FUN_02097484
	cmp r0, #3
	bne _021E1894
	mov r0, r5
	mov r1, sb
	bl FUN_02096C90
_021E1894:
	mov r0, r4
	bl FUN_02097490
	cmp r0, #0
	beq _021E18AC
	mov r0, r5
	bl FUN_02097414
_021E18AC:
	mov r0, fp
	mov r1, r7
	mov r2, r8
	bl FUN_021E19B8
	ldr r0, _021E18FC ; =0x022106D0
	ldr r1, [r0]
	ldr r0, [sp, #8]
	strb r0, [r1, #0x1d]
_021E18CC:
	add r7, r7, #1
	cmp r7, sl
	add r4, r4, #0xc
	blt _021E1858
_021E18DC:
	add r8, r8, #1
	cmp r8, sl
	add r6, r6, #0xc
	add r5, r5, #0xc
	blt _021E1828
_021E18F0:
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E18FC: .word 0x022106D0

	arm_func_start FUN_021E1900
FUN_021E1900: ; 0x021E1900
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r7, r0
	mov r5, r2
	cmp r6, #0
	mov r4, #0
	ble _021E19A8
_021E1920:
	mov r0, r4
	bl FUN_021E1F84
	cmp r0, #0
	beq _021E199C
	cmp r0, r5
	bne _021E199C
	mov r0, #0xc
	mla r0, r6, r0, r7
	bl FUN_02097490
	cmp r0, #0
	beq _021E1974
	mov r0, #0xc
	mla r0, r4, r0, r7
	bl FUN_02097490
	cmp r0, #0
	bne _021E1974
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl FUN_021E19B8
	b _021E1984
_021E1974:
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_021E19B8
_021E1984:
	ldr r1, _021E19B4 ; =0x022106D0
	mov r0, #1
	ldr r1, [r1]
	add sp, sp, #4
	strb r0, [r1, #0x1d]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E199C:
	add r4, r4, #1
	cmp r4, r6
	blt _021E1920
_021E19A8:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E19B4: .word 0x022106D0

	arm_func_start FUN_021E19B8
FUN_021E19B8: ; 0x021E19B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r3, _021E1A1C ; =0x022106D0
	mov r5, r1
	ldr r1, [r3]
	mov r4, r2
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	mov r2, #0xc
	mla r0, r5, r2, r0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021E1A1C ; =0x022106D0
	ldr r0, [r0]
	ldr r3, [r0, #0x3c]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r0, #0x40]
	mov r0, r5
	mov r1, r4
	blx r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E1A1C: .word 0x022106D0

	arm_func_start FUN_021E1A20
FUN_021E1A20: ; 0x021E1A20
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021E1A5C ; =0x022106D0
	mov r0, #0
	ldr r3, [r1]
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	blx r3
	ldr r0, _021E1A5C ; =0x022106D0
	mov r1, #2
	ldr r0, [r0]
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E1A5C: .word 0x022106D0

	arm_func_start FUN_021E1A60
FUN_021E1A60: ; 0x021E1A60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24c
	ldr r2, _021E1CC4 ; =0x022106D0
	mov r6, r0
	ldr r2, [r2]
	mov r5, r1
	ldrb r0, [r2, #0x1e]
	cmp r0, #0
	bne _021E1B8C
	ldr r0, [r2, #4]
	add r1, sp, #0x18
	bl FUN_021F0828
	bl FUN_021E1678
	ldr r0, [sp, #0x18]
	mov fp, #0
	str fp, [sp, #0x1c]
	cmp r0, #0
	ble _021E1B7C
	ldr r8, _021E1CC4 ; =0x022106D0
	mov sb, #1
	mov r7, #0xc
_021E1AB4:
	ldr r0, [r8]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #4]
	add r2, sp, #0x38
	bl FUN_021F06E4
	bl FUN_021E1678
	mov r4, fp
	cmp r5, #0
	ble _021E1B30
_021E1AD8:
	mov r0, r4
	bl FUN_021E1F84
	ldr r1, [sp, #0x38]
	cmp r1, r0
	bne _021E1B24
	mul sl, r4, r7
	add r0, r6, sl
	bl FUN_02097490
	cmp r0, #0
	bne _021E1B30
	add sl, r6, sl
	ldr r1, [sp, #0x38]
	mov r0, sl
	bl FUN_02096C90
	mov r0, sl
	bl FUN_02097414
	ldr r0, [r8]
	strb sb, [r0, #0x1d]
	b _021E1B30
_021E1B24:
	add r4, r4, #1
	cmp r4, r5
	blt _021E1AD8
_021E1B30:
	cmp r4, r5
	bne _021E1B64
	ldr r0, [r8]
	ldr r1, [sp, #0x38]
	ldr r0, [r0, #4]
	bl FUN_021F0580
	bl FUN_021E1678
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	sub r1, r1, #1
	sub r0, r0, #1
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
_021E1B64:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r1, #1
	str r1, [sp, #0x1c]
	cmp r1, r0
	blt _021E1AB4
_021E1B7C:
	ldr r0, _021E1CC4 ; =0x022106D0
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
_021E1B8C:
	ldr sl, _021E1CC4 ; =0x022106D0
	ldr r0, [sl]
	ldrb r0, [r0, #0x1c]
	cmp r0, r5
	addge sp, sp, #0x24c
	ldmgeia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #0x1c
	mov r8, #0xc
	mvn sb, #0
_021E1BB0:
	bl FUN_021E1F84
	movs r7, r0
	beq _021E1C08
	ldr r1, [sl]
	mov r0, r6
	ldrb r1, [r1, #0x1c]
	mov r2, r7
	bl FUN_021E1900
	cmp r0, #0
	bne _021E1C9C
	ldr r0, [sl]
	mov r1, r7
	ldr r0, [r0, #4]
	mov r2, r4
	bl FUN_021F0664
	bl FUN_021E1678
	ldr r0, [sp, #0x1c]
	cmp r0, sb
	bne _021E1C9C
	mov r0, r7
	bl FUN_021E17BC
	b _021E1C9C
_021E1C08:
	bl FUN_021E0F00
	ldr r1, [sl]
	ldrb r2, [r1, #0x1c]
	mla r1, r2, r8, r6
	bl FUN_02096DA0
	cmp r0, sb
	bne _021E1C9C
	bl FUN_021E0F00
	ldr r2, _021E1CC4 ; =0x022106D0
	mov r1, #0xc
	ldr r3, [r2]
	add r2, sp, #0x20
	ldrb r3, [r3, #0x1c]
	mla r1, r3, r1, r6
	bl FUN_02096C78
	ldr r0, _021E1CC4 ; =0x022106D0
	mov r1, #0
	ldr r4, [r0]
	add r2, sp, #0x20
	str r1, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldr r0, _021E1CC8 ; =FUN_021E1414
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x1c]
	mov r2, r1
	mov r3, r1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_021F0C84
	ldr r0, _021E1CC4 ; =0x022106D0
	mov r1, #2
	ldr r0, [r0]
	add sp, sp, #0x24c
	strb r1, [r0, #0x1e]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E1C9C:
	ldr r1, [sl]
	ldrb r0, [r1, #0x1c]
	add r0, r0, #1
	strb r0, [r1, #0x1c]
	ldr r0, [sl]
	ldrb r0, [r0, #0x1c]
	cmp r0, r5
	blt _021E1BB0
	add sp, sp, #0x24c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E1CC4: .word 0x022106D0
_021E1CC8: .word FUN_021E1414

	arm_func_start FUN_021E1CCC
FUN_021E1CCC: ; 0x021E1CCC
	ldr r0, _021E1CF8 ; =0x022106D0
	ldr r1, [r0]
	cmp r1, #0
	bxeq lr
	mov r2, #0
	str r2, [r1]
	ldr r1, [r0]
	strb r2, [r1, #0x1e]
	ldr r0, [r0]
	strb r2, [r0, #0x1f]
	bx lr
	.align 2, 0
_021E1CF8: .word 0x022106D0

	arm_func_start FUN_021E1CFC
FUN_021E1CFC: ; 0x021E1CFC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _021E1D88 ; =0x022106D0
	mov r5, #0
	ldr r4, [r0]
	bl OS_GetTick
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x10]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E1D8C ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, r5
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021E1D7C
	ldr r1, [r4, #8]
	ldr r0, _021E1D88 ; =0x022106D0
	add r1, r1, #1
	str r1, [r4, #8]
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_021F0F18
	mov r5, r0
	bl OS_GetTick
	ldr r2, _021E1D88 ; =0x022106D0
	ldr r2, [r2]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_021E1D7C:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E1D88: .word 0x022106D0
_021E1D8C: .word 0x000082EA

	arm_func_start FUN_021E1D90
FUN_021E1D90: ; 0x021E1D90
	ldr r0, _021E1DA0 ; =0x022106D0
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_021E1DA0: .word 0x022106D0

	arm_func_start FUN_021E1DA4
FUN_021E1DA4: ; 0x021E1DA4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x210
	ldr r1, _021E1E2C ; =0x022106D0
	mov r4, r0
	ldr r3, [r1]
	ldr r2, [r3, #0x44]
	cmp r2, #0
	beq _021E1DD8
	ldr r1, [r3]
	cmp r1, #1
	beq _021E1DD8
	ldr r1, [r3, #0x48]
	blx r2
_021E1DD8:
	ldr r0, _021E1E2C ; =0x022106D0
	ldr r1, [r0]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x18]
	mov r0, #0xc
	mla r0, r4, r0, r1
	add r1, sp, #0x108
	bl FUN_021E26B8
	ldr r2, _021E1E2C ; =0x022106D0
	mov r1, r0
	ldr r0, [r2]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	blx ip
	add sp, sp, #0x210
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E1E2C: .word 0x022106D0

	arm_func_start FUN_021E1E30
FUN_021E1E30: ; 0x021E1E30
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _021E1ED0 ; =0x022106D0
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	beq _021E1E5C
	bl FUN_021E05FC
	cmp r0, #0
	bne _021E1E64
_021E1E5C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E1E64:
	mvn r0, #0
	cmp r6, r0
	ldreq r0, _021E1ED0 ; =0x022106D0
	ldreq r0, [r0]
	ldreq r0, [r0, #4]
	ldreq r0, [r0]
	ldreq r6, [r0, #0x214]
	cmp r5, #0
	ldreq r0, _021E1ED0 ; =0x022106D0
	mov r1, r6
	ldreq r0, [r0]
	ldreq r0, [r0, #4]
	ldreq r0, [r0]
	addeq r5, r0, #0x218
	cmp r4, #0
	ldreq r0, _021E1ED0 ; =0x022106D0
	mov r2, r5
	ldreq r0, [r0]
	ldreq r0, [r0, #4]
	ldreq r0, [r0]
	addeq r4, r0, #0x318
	ldr r0, _021E1ED0 ; =0x022106D0
	mov r3, r4
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_021F034C
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E1ED0: .word 0x022106D0

	arm_func_start FUN_021E1ED4
FUN_021E1ED4: ; 0x021E1ED4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E1F14 ; =0x022106D0
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	mov r0, #0
	str r0, [r1, #8]
	bl OS_GetTick
	ldr r2, _021E1F14 ; =0x022106D0
	ldr r2, [r2]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E1F14: .word 0x022106D0

	arm_func_start FUN_021E1F18
FUN_021E1F18: ; 0x021E1F18
	stmdb sp!, {r4, r5, r6, lr}
	ldr r4, _021E1F80 ; =0x022106D0
	mov r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E1F38
	cmp r6, #0
	bne _021E1F40
_021E1F38:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E1F40:
	ldr r0, [r0, #0x14]
	mov r5, #0
	cmp r0, #0
	ble _021E1F78
_021E1F50:
	mov r0, r5
	bl FUN_021E1F84
	cmp r6, r0
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	add r5, r5, #1
	ldr r0, [r0, #0x14]
	cmp r5, r0
	blt _021E1F50
_021E1F78:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E1F80: .word 0x022106D0

	arm_func_start FUN_021E1F84
FUN_021E1F84: ; 0x021E1F84
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _021E1FE0 ; =0x022106D0
	mov r5, r0
	ldr r0, [r1]
	ldr r4, [r0, #0x18]
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	bl FUN_021E0F00
	mov r1, #0xc
	mla r1, r5, r1, r4
	bl FUN_02096DA0
	cmp r0, #0
	beq _021E1FD4
	mvn r1, #0
	cmp r0, r1
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
_021E1FD4:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E1FE0: .word 0x022106D0

	arm_func_start FUN_021E1FE4
FUN_021E1FE4: ; 0x021E1FE4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x210
	ldr r2, _021E2064 ; =0x022106D0
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	ldr r0, [r0, #0x34]
	cmp r0, #0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	bl FUN_021E1F18
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #0x210
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #8]
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F06E4
	ldr r0, _021E2064 ; =0x022106D0
	ldr r1, [sp, #4]
	ldr r0, [r0]
	add r2, sp, #0x108
	ldr r3, [r0, #0x38]
	ldr ip, [r0, #0x34]
	mov r0, r4
	and r1, r1, #0xff
	blx ip
	add sp, sp, #0x210
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E2064: .word 0x022106D0

	arm_func_start FUN_021E2068
FUN_021E2068: ; 0x021E2068
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	ldr r0, [r4, #8]
	ldr r1, _021E20C0 ; =0x0220D354
	bl strcmp
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	ldr r0, _021E20C4 ; =FUN_021E110C
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r1, [r4]
	mov r0, r5
	mov r3, r2
	bl FUN_021F0B9C
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E20C0: .word 0x0220D354
_021E20C4: .word FUN_021E110C

	arm_func_start FUN_021E20C8
FUN_021E20C8: ; 0x021E20C8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r2, _021E210C ; =0x022106D0
	ldr r2, [r2]
	ldr r2, [r2, #0x18]
	cmp r2, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {pc}
	ldr r3, _021E2110 ; =FUN_021E12B8
	mov r2, #0
	str r3, [sp]
	str r2, [sp, #4]
	ldr r1, [r1]
	mov r3, r2
	bl FUN_021F0B9C
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021E210C: .word 0x022106D0
_021E2110: .word FUN_021E12B8

	arm_func_start FUN_021E2114
FUN_021E2114: ; 0x021E2114
	stmdb sp!, {r4, lr}
	ldr r2, _021E2170 ; =0x022106D0
	mov r4, r0
	ldr r2, [r2]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021DD6B0
	ldr r0, _021E2170 ; =0x022106D0
	ldr r3, [r0]
	ldr r0, [r3]
	cmp r0, #0
	beq _021E2168
	cmp r0, #2
	beq _021E2168
	ldrb r1, [r3, #0x1d]
	ldr r2, [r3, #0x30]
	ldr r3, [r3, #0x2c]
	mov r0, r4
	blx r3
_021E2168:
	bl FUN_021E1CCC
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E2170: .word 0x022106D0

	arm_func_start FUN_021E2174
FUN_021E2174: ; 0x021E2174
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _021E2224 ; =0x022106D0
	ldr r5, [sp, #0x10]
	ldr r1, [r0]
	ldr r4, [sp, #0x14]
	str r2, [r1, #0x2c]
	ldr r1, [r0]
	ldr lr, [sp, #0x18]
	str r3, [r1, #0x30]
	ldr r1, [r0]
	ldr ip, [sp, #0x1c]
	str r5, [r1, #0x34]
	ldr r1, [r0]
	mov r3, #0
	str r4, [r1, #0x38]
	ldr r1, [r0]
	mov r2, #1
	str lr, [r1, #0x3c]
	ldr r1, [r0]
	str ip, [r1, #0x40]
	ldr r1, [r0]
	strb r3, [r1, #0x1d]
	ldr r1, [r0]
	strb r3, [r1, #0x1e]
	ldr r1, [r0]
	strb r3, [r1, #0x1f]
	ldr r1, [r0]
	strb r3, [r1, #0x1c]
	ldr r1, [r0]
	str r2, [r1]
	ldr r1, [r0]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	ldreqb r0, [r1, #0x1f]
	addeq r0, r0, #1
	streqb r0, [r1, #0x1f]
	ldr r0, _021E2224 ; =0x022106D0
	ldr r1, [r0]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E2224: .word 0x022106D0

	arm_func_start FUN_021E2228
FUN_021E2228: ; 0x021E2228
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021E2348 ; =0x022106D0
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	bl FUN_021E10F8
	cmp r0, #0
	bne _021E227C
	bl FUN_021FBE5C
	cmp r0, #0
	beq _021E2280
_021E227C:
	bl FUN_021FBD00
_021E2280:
	ldr r0, _021E2348 ; =0x022106D0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E231C
	ldr r0, [r0]
	cmp r0, #0
	beq _021E231C
	bl FUN_021E1CFC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _021E2348 ; =0x022106D0
	ldr r3, [r0]
	ldr r0, [r3, #0x18]
	cmp r0, #0
	beq _021E231C
	ldrb r2, [r3, #0x1e]
	cmp r2, #3
	beq _021E231C
	ldr r1, [r3, #8]
	cmp r1, #7
	bls _021E231C
	cmp r2, #1
	bhi _021E22EC
	ldr r1, [r3, #0x14]
	bl FUN_021E1A60
_021E22EC:
	ldr r0, _021E2348 ; =0x022106D0
	ldr r3, [r0]
	ldrb r2, [r3, #0x1c]
	ldr r1, [r3, #0x14]
	cmp r2, r1
	blt _021E231C
	mov r1, #3
	strb r1, [r3, #0x1e]
	ldr r1, [r0]
	ldrb r0, [r1, #0x1f]
	add r0, r0, #1
	strb r0, [r1, #0x1f]
_021E231C:
	ldr r0, _021E2348 ; =0x022106D0
	ldr r1, [r0]
	ldrb r0, [r1, #0x1f]
	cmp r0, #2
	addlo sp, sp, #4
	ldmloia sp!, {pc}
	mov r0, #0
	strb r0, [r1, #0x1f]
	bl FUN_021E1A20
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E2348: .word 0x022106D0

	arm_func_start FUN_021E234C
FUN_021E234C: ; 0x021E234C
	stmdb sp!, {r4, lr}
	ldr lr, _021E2428 ; =0x022106D0
	mov ip, #0
	str r0, [lr]
	str ip, [r0]
	ldr r4, [lr]
	ldr r0, [sp, #8]
	str r1, [r4, #4]
	ldr r1, [lr]
	str ip, [r1, #8]
	ldr r1, [lr]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str r0, [r1, #0x14]
	ldr r0, [lr]
	str r3, [r0, #0x18]
	ldr r0, [lr]
	strb ip, [r0, #0x1c]
	ldr r0, [lr]
	strb ip, [r0, #0x1d]
	ldr r0, [lr]
	strb ip, [r0, #0x1e]
	ldr r0, [lr]
	strb ip, [r0, #0x1f]
	ldr r0, [lr]
	str ip, [r0, #0x20]
	ldr r0, [lr]
	str ip, [r0, #0x24]
	ldr r0, [lr]
	str r2, [r0, #0x28]
	ldr r0, [lr]
	str ip, [r0, #0x2c]
	ldr r0, [lr]
	str ip, [r0, #0x30]
	ldr r0, [lr]
	str ip, [r0, #0x34]
	ldr r0, [lr]
	str ip, [r0, #0x38]
	ldr r0, [lr]
	str ip, [r0, #0x3c]
	ldr r0, [lr]
	str ip, [r0, #0x40]
	ldr r0, [lr]
	str ip, [r0, #0x44]
	ldr r0, [lr]
	str ip, [r0, #0x48]
	ldr r0, [lr]
	str ip, [r0, #0x4c]
	ldr r0, [lr]
	str ip, [r0, #0x50]
	ldr r0, [lr]
	str ip, [r0, #0x54]
	ldr r0, [lr]
	str ip, [r0, #0x58]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E2428: .word 0x022106D0

	arm_func_start FUN_021E242C
FUN_021E242C: ; 0x021E242C
	ldr r2, _021E2450 ; =0x022106D0
	ldr r3, [r2]
	cmp r3, #0
	moveq r0, #0
	strne r0, [r3, #0x44]
	ldrne r2, [r2]
	movne r0, #1
	strne r1, [r2, #0x48]
	bx lr
	.align 2, 0
_021E2450: .word 0x022106D0

	arm_func_start FUN_021E2454
FUN_021E2454: ; 0x021E2454
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x104
	ldr r2, _021E24DC ; =0x022106D0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	cmp r0, #0
	beq _021E2480
	bl FUN_021E05FC
	cmp r0, #0
	bne _021E248C
_021E2480:
	add sp, sp, #0x104
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E248C:
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	mov r3, #0xff
	bl FUN_021DD4FC
	mvn r3, #0
	cmp r0, r3
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	add r2, sp, #0
	mov r1, #0
	strb r1, [r2, r0]
	mov r0, r3
	bl FUN_021E1E30
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E24DC: .word 0x022106D0

	arm_func_start FUN_021E24E0
FUN_021E24E0: ; 0x021E24E0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	mov r6, r3
	add r3, sp, #0
	ldr r4, [sp, #0x110]
	bl FUN_021E259C
	movs r5, r0
	mvneq r1, #0
	addeq sp, sp, #0x100
	streq r1, [r4]
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	bl strlen
	mov r2, #0
	mov r1, r0
	add r0, sp, #0
	mov r3, r2
	bl FUN_021DD36C
	str r0, [r4]
	cmp r6, #0
	beq _021E2544
	ldr r4, [r4]
	mvn r0, #0
	cmp r4, r0
	bne _021E2550
_021E2544:
	add sp, sp, #0x100
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
_021E2550:
	add r0, sp, #0
	bl strlen
	mov r1, r0
	add r0, sp, #0
	mov r2, r6
	mov r3, r4
	bl FUN_021DD36C
	mov r0, r5
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E2578
FUN_021E2578: ; 0x021E2578
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r3, r1
	mov r1, #0
	str r2, [sp]
	mov r2, r1
	bl FUN_021E24E0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E259C
FUN_021E259C: ; 0x021E259C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x218
	mov r6, r1
	add r1, sp, #4
	mov r4, r2
	mov r5, r3
	bl FUN_021E16EC
	cmp r0, #0
	beq _021E268C
	ldr r0, [sp, #8]
	cmp r0, #6
	bne _021E2650
	cmp r6, #0
	beq _021E260C
	ldr r0, _021E26B0 ; =0x0220D38C
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl FUN_021DE9F4
	cmp r0, #0
	movle r0, #0
	strleb r0, [r6]
	ble _021E260C
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	strb r0, [r6]
_021E260C:
	cmp r4, #0
	beq _021E2668
	ldr r0, _021E26B4 ; =0x0220D390
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl FUN_021DE9F4
	cmp r0, #0
	movle r0, #0
	strleb r0, [r4]
	ble _021E2668
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	strb r0, [r4]
	b _021E2668
_021E2650:
	cmp r6, #0
	movne r0, #0
	strneb r0, [r6]
	cmp r4, #0
	movne r0, #0
	strneb r0, [r4]
_021E2668:
	cmp r5, #0
	beq _021E267C
	add r1, sp, #0x10c
	mov r0, r5
	bl strcpy
_021E267C:
	ldr r0, [sp, #8]
	add sp, sp, #0x218
	and r0, r0, #0xff
	ldmia sp!, {r4, r5, r6, pc}
_021E268C:
	cmp r6, #0
	movne r0, #0
	strneb r0, [r6]
	cmp r4, #0
	movne r0, #0
	strneb r0, [r4]
	mov r0, #0
	add sp, sp, #0x218
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E26B0: .word 0x0220D38C
_021E26B4: .word 0x0220D390

	arm_func_start FUN_021E26B8
FUN_021E26B8: ; 0x021E26B8
	ldr ip, _021E26CC ; =FUN_021E259C
	mov r3, r1
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
_021E26CC: .word FUN_021E259C

	arm_func_start FUN_021E26D0
FUN_021E26D0: ; 0x021E26D0
	ldr r1, _021E26E0 ; =0x022106D8
	ldr r1, [r1]
	str r0, [r1, #0x1a0]
	bx lr
	.align 2, 0
_021E26E0: .word 0x022106D8

	arm_func_start FUN_021E26E4
FUN_021E26E4: ; 0x021E26E4
	ldr r0, _021E26F0 ; =0x022106D8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021E26F0: .word 0x022106D8

	arm_func_start FUN_021E26F4
FUN_021E26F4: ; 0x021E26F4
	ldr r1, _021E2700 ; =0x022106D8
	str r0, [r1]
	bx lr
	.align 2, 0
_021E2700: .word 0x022106D8

	arm_func_start FUN_021E2704
FUN_021E2704: ; 0x021E2704
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E273C
	bl FUN_021E26E4
	ldrb r1, [r0, #0x17d]
	add r1, r1, #1
	strb r1, [r0, #0x17d]
_021E273C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E275C
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17d]
	cmp r0, #5
	blo _021E2774
_021E275C:
	ldr r1, _021E2780 ; =0xFFFEAE6C
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021E2774:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E2780: .word 0xFFFEAE6C

	arm_func_start FUN_021E2784
FUN_021E2784: ; 0x021E2784
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov r6, r2
	mov r4, r3
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E27BC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
_021E27BC:
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _021E29B8
	mov r0, #0
	str r0, [r4, #8]
	bl FUN_021E26E4
	ldrb r1, [r0, #0x14]
	add r1, r1, #1
	strb r1, [r0, #0x14]
	bl FUN_021E26E4
	ldrb r1, [r4]
	ldrb r5, [r0, #0x14]
	cmp r1, #0
	beq _021E2950
	bl FUN_021E26E4
	ldr r1, [r6, #4]
	add r0, r0, r5, lsl #2
	str r1, [r0, #0x210]
	ldrh r4, [r6, #2]
	bl FUN_021E26E4
	mov r2, r4, asr #8
	mov r1, r4, lsl #8
	add r0, r0, r5, lsl #1
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x200
	strh r1, [r0, #0x90]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x180]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	bne _021E2878
	mov r0, #0xc
	bl FUN_021E26D0
	b _021E2880
_021E2878:
	mov r0, #7
	bl FUN_021E26D0
_021E2880:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xc]
	bl FUN_021E26E4
	ldr r3, [r0, #0x200]
	ldr r2, _021E2B58 ; =0x0220D394
	add r0, sp, #0x10
	mov r1, #0xc
	bl OS_SNPrintf
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	add r1, r6, r5, lsl #2
	mov r2, r0
	ldr r0, [r1, #0x210]
	add r1, r2, r5, lsl #1
	add r1, r1, #0x200
	ldrh r1, [r1, #0x90]
	mov r2, #0
	bl FUN_021FFEB0
	mov r6, r0
	bl FUN_021E26E4
	mvn r1, #0
	str r1, [sp]
	ldr r3, _021E2B5C ; =0x00001388
	mov r1, #0
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0]
	bl FUN_021FD52C
	cmp r0, #1
	bne _021E2928
	bl FUN_021E36B0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
_021E2928:
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	add sp, sp, #0x20
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E2950:
	cmp r6, #0
	beq _021E2994
	sub r4, r5, #1
	bl FUN_021E26E4
	ldr r1, [r6, #4]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x210]
	ldrh r5, [r6, #2]
	bl FUN_021E26E4
	mov r2, r5, asr #8
	mov r1, r5, lsl #8
	add r0, r0, r4, lsl #1
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	add r0, r0, #0x200
	strh r1, [r0, #0x90]
_021E2994:
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x18c]
	mov r0, #7
	str r1, [r4, #0x190]
	bl FUN_021E26D0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
_021E29B8:
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_021E3754
	mov r6, r0
	cmp r6, #2
	beq _021E29E8
	cmp r6, #1
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
_021E29E8:
	ldrb r0, [r4]
	cmp r0, #0
	bne _021E2A74
	cmp r6, #1
	beq _021E2A10
	cmp r6, #2
	bne _021E2A50
	ldrb r0, [r4, #1]
	cmp r0, #1
	blo _021E2A50
_021E2A10:
	mov r0, #0
	str r0, [r4, #8]
	bl FUN_021E2704
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E5908
	add sp, sp, #0x20
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E2A50:
	ldrb r1, [r4, #1]
	mov r0, r4
	add r1, r1, #1
	strb r1, [r4, #1]
	bl FUN_021E7A44
	bl FUN_021E37A4
	add sp, sp, #0x20
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E2A74:
	bl FUN_021E26E4
	mov r5, r0
	bl OS_GetTick
	str r0, [r5, #0x184]
	str r1, [r5, #0x188]
	cmp r6, #1
	beq _021E2AB0
	cmp r6, #2
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17c]
	cmp r0, #1
	addlo sp, sp, #0x20
	ldmloia sp!, {r4, r5, r6, pc}
_021E2AB0:
	mov r0, #0
	str r0, [r4, #8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E2AD8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E2AF0
_021E2AD8:
	mov r0, #1
	bl FUN_021E2704
	cmp r0, #0
	bne _021E2B04
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
_021E2AF0:
	mov r0, #0
	bl FUN_021E2704
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, pc}
_021E2B04:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x180]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	cmp r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E2B58: .word 0x0220D394
_021E2B5C: .word 0x00001388

	arm_func_start FUN_021E2B60
FUN_021E2B60: ; 0x021E2B60
	bx lr

	arm_func_start FUN_021E2B64
FUN_021E2B64: ; 0x021E2B64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x9c
	mov sl, r0
	mov sb, r1
	mov r8, #0
	bl FUN_021DF88C
	cmp r0, #5
	beq _021E2BB8
	bl FUN_021DF88C
	cmp r0, #6
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E2BB8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E2BB8:
	cmp sb, #0x14
	addlo sp, sp, #0x9c
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #0x1c
	add fp, sp, #8
	add r5, sl, #0x14
	mov r7, #0x14
	mov r6, #4
_021E2BD8:
	mov r0, sl
	mov r1, fp
	mov r2, r7
	bl MI_CpuCopy8
	ldr r1, _021E2C74 ; =0x0220D398
	mov r0, fp
	mov r2, r6
	bl strncmp
	cmp r0, #0
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #3
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sp, #0x11]
	mov r0, r5
	mov r1, r4
	bl MI_CpuCopy8
	str r4, [sp]
	ldrb r0, [sp, #0x11]
	mov r0, r0, asr #2
	str r0, [sp, #4]
	ldrb r0, [sp, #0x10]
	ldrh r3, [sp, #0x12]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	bl FUN_021E6730
	cmp r0, #0
	addeq sp, sp, #0x9c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sp, #0x11]
	add r0, r0, #0x14
	add r8, r8, r0
	add r0, r8, #0x14
	cmp r0, sb
	bls _021E2BD8
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E2C74: .word 0x0220D398

	arm_func_start FUN_021E2C78
FUN_021E2C78: ; 0x021E2C78
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E2C9C
	mov r0, #6
	bl FUN_021E26D0
	b _021E2CBC
_021E2C9C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E2CBC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	ldmneia sp!, {r4, pc}
_021E2CBC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x180]
	cmp r4, r0
	bne _021E2CE0
	bl FUN_021E26E4
	ldrb r1, [r0, #0x17c]
	add r1, r1, #1
	strb r1, [r0, #0x17c]
	b _021E2CF4
_021E2CE0:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl FUN_021E26E4
	str r4, [r0, #0x180]
_021E2CF4:
	bl FUN_021E26E4
	mov r2, #0
	str r2, [r0, #0x184]
	str r2, [r0, #0x188]
	mov r1, r4
	mov r0, #1
	bl FUN_021E7B04
	bl FUN_021E37A4
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl FUN_021E26E4
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E2D2C
FUN_021E2D2C: ; 0x021E2D2C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_021E26E4
	str r5, [r0, #0x1c]
	bl FUN_021E26E4
	strh r4, [r0, #0x1a]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E2D54
FUN_021E2D54: ; 0x021E2D54
	ldr ip, _021E2D5C ; =FUN_021E3800
	bx ip
	.align 2, 0
_021E2D5C: .word FUN_021E3800

	arm_func_start FUN_021E2D60
FUN_021E2D60: ; 0x021E2D60
	mov r0, #0
	bx lr

	arm_func_start FUN_021E2D68
FUN_021E2D68: ; 0x021E2D68
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	cmp r0, #0
	beq _021E2D88
	cmp r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021E2D88:
	mov r0, r6
	mov r1, #8
	bl FUN_02202254
	mov r0, r6
	mov r1, #0xa
	bl FUN_02202254
	mov r0, r6
	mov r1, #0x32
	bl FUN_02202254
	mov r0, r6
	mov r1, #0x33
	bl FUN_02202254
	mov r0, r6
	mov r1, #0x34
	bl FUN_02202254
	mov r0, r6
	mov r1, #0x35
	bl FUN_02202254
	mov r0, r6
	mov r1, #0x36
	bl FUN_02202254
	ldr r4, _021E2E0C ; =0x02210704
	mov r5, #0
_021E2DE4:
	ldrb r1, [r4]
	cmp r1, #0
	beq _021E2DF8
	mov r0, r6
	bl FUN_02202254
_021E2DF8:
	add r5, r5, #1
	cmp r5, #0x9a
	add r4, r4, #0xc
	blt _021E2DE4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E2E0C: .word 0x02210704

	arm_func_start FUN_021E2E10
FUN_021E2E10: ; 0x021E2E10
	bx lr

	arm_func_start FUN_021E2E14
FUN_021E2E14: ; 0x021E2E14
	bx lr

	arm_func_start FUN_021E2E18
FUN_021E2E18: ; 0x021E2E18
	stmdb sp!, {r4, lr}
	mov r4, r1
	cmp r0, #0x32
	bgt _021E2E54
	cmp r0, #0x32
	bge _021E2E9C
	cmp r0, #0xa
	bgt _021E2EF8
	cmp r0, #8
	blt _021E2EF8
	cmp r0, #8
	beq _021E2E74
	cmp r0, #0xa
	beq _021E2E88
	b _021E2EF8
_021E2E54:
	sub r1, r0, #0x33
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _021E2EF8
_021E2E64: ; jump table
	b _021E2EB0 ; case 0
	b _021E2EC4 ; case 1
	b _021E2ED8 ; case 2
	b _021E2EE8 ; case 3
_021E2E74:
	bl FUN_021E26E4
	ldrb r1, [r0, #0x14]
	mov r0, r4
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2E88:
	bl FUN_021E26E4
	ldrb r1, [r0, #0x16]
	mov r0, r4
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2E9C:
	bl FUN_021E26E4
	ldr r1, [r0, #0x200]
	mov r0, r4
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2EB0:
	bl FUN_021E26E4
	ldrb r1, [r0, #0x15]
	mov r0, r4
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2EC4:
	bl FUN_021E26E4
	ldr r1, [r0, #0x20]
	mov r0, r4
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2ED8:
	mov r0, r4
	mov r1, #3
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2EE8:
	mov r0, r4
	mov r1, #1
	bl FUN_02202220
	ldmia sp!, {r4, pc}
_021E2EF8:
	subs r1, r0, #0x64
	ldmmiia sp!, {r4, pc}
	cmp r1, #0x9a
	ldmgeia sp!, {r4, pc}
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _021E2F5C ; =0x02210704
	ldrb r0, [r0, r2]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _021E2F60 ; =0x02210705
	ldrb r0, [r0, r2]
	cmp r0, #0
	beq _021E2F44
	ldr r1, _021E2F64 ; =0x0221070C
	mov r0, r4
	ldr r1, [r1, r2]
	bl FUN_022021C0
	ldmia sp!, {r4, pc}
_021E2F44:
	ldr r1, _021E2F64 ; =0x0221070C
	mov r0, r4
	ldr r1, [r1, r2]
	ldr r1, [r1]
	bl FUN_02202220
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E2F5C: .word 0x02210704
_021E2F60: .word 0x02210705
_021E2F64: .word 0x0221070C

	arm_func_start FUN_021E2F68
FUN_021E2F68: ; 0x021E2F68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r8, #0
	mov r7, r8
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #1
	addle sp, sp, #0x1c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov sb, r8
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #0
	ble _021E2FF8
	ldr r4, _021E30D8 ; =0x0220BAC4
	ldr r6, _021E30DC ; =0x0220D3A0
	mvn r5, #0
_021E2FB4:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, sb
	bl FUN_02203BF4
	mov r1, r6
	mov r2, r5
	bl FUN_0220394C
	cmp r0, r8
	movgt r8, r0
	ldr r0, [r4, sb, lsl #2]
	add sb, sb, #1
	add r7, r7, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp sb, r0
	blt _021E2FB4
_021E2FF8:
	mov r0, #0x64
	bl FUN_021DE8C8
	mov sb, r0
	mov r6, #0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #0
	ble _021E3090
	add r5, sp, #0
	mov fp, r6
	mov r4, #0x64
_021E3028:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	sub r0, r0, #1
	cmp r6, r0
	beq _021E3090
	cmp r6, #0
	subgt r0, r6, #1
	ldrgt sl, [r5, r0, lsl #2]
	ldr r0, _021E30D8 ; =0x0220BAC4
	movle sl, fp
	ldr r2, [r0, r6, lsl #2]
	mov r1, r7
	mul r0, r2, r4
	bl _s32_div_f
	add r0, r0, sl
	str r0, [r5, r6, lsl #2]
	ldr r0, [r5, r6, lsl #2]
	cmp sb, r0
	blo _021E3090
	add r6, r6, #1
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r6, r0
	blt _021E3028
_021E3090:
	mvn r0, #0x80000000
	cmp r8, r0
	addlt r8, r8, #1
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, r6
	bl FUN_02203BF4
	ldr r1, _021E30DC ; =0x0220D3A0
	mov r2, r8
	bl FUN_02203A48
	bl FUN_021E26E4
	mov r1, #0
	ldr r0, [r0, #0xe4]
	ldr r2, _021E30DC ; =0x0220D3A0
	mov r3, r1
	bl FUN_02203BD4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E30D8: .word 0x0220BAC4
_021E30DC: .word 0x0220D3A0

	arm_func_start FUN_021E30E0
FUN_021E30E0: ; 0x021E30E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r1, #0
	str r1, [sp, #4]
	str r0, [sp]
	mov r8, r1
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #0
	ble _021E3268
	mov r0, #0x80
	mov r4, #1
	mov r5, r8
	str r0, [sp, #8]
	mov fp, #0x100
_021E3120:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, r8
	bl FUN_02203BF4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E31BC
	ldr r1, _021E32D4 ; =0x0220D3AC
	mov r0, r6
	mov r2, r5
	bl FUN_0220394C
	mov sb, r0
	mov sl, r5
	mov r7, r4
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E31B4
_021E3170:
	bl FUN_021E26E4
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0xf4]
	cmp sb, r0
	bne _021E31A0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, r6
	bl FUN_02203C50
	mov sl, r4
	sub r8, r8, #1
	b _021E31B4
_021E31A0:
	add r7, r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E3170
_021E31B4:
	cmp sl, #0
	bne _021E3250
_021E31BC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x474]
	cmp r0, #0
	beq _021E3238
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	ldr r1, [r0, #0x478]
	ldr r2, [r7, #0x474]
	mov r0, r8
	blx r2
	mov r7, r0
	cmp r7, #0
	ble _021E321C
	ldr r0, _021E32D8 ; =0x007FFFFF
	cmp r7, r0
	movgt r7, r0
	mov r0, fp
	bl FUN_021DE8C8
	orr r2, r0, r7, lsl #8
	ldr r1, _021E32DC ; =0x0220D3A0
	mov r0, r6
	bl FUN_02203A48
	b _021E3250
_021E321C:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, r6
	bl FUN_02203C50
	str r4, [sp, #4]
	sub r8, r8, #1
	b _021E3250
_021E3238:
	ldr r0, [sp, #8]
	bl FUN_021DE8C8
	mov r2, r0
	ldr r1, _021E32DC ; =0x0220D3A0
	mov r0, r6
	bl FUN_02203A48
_021E3250:
	add r8, r8, #1
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r8, r0
	blt _021E3120
_021E3268:
	ldr r0, [sp]
	cmp r0, #0
	beq _021E32A0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #0
	beq _021E32A0
	bl FUN_021E26E4
	mov r1, #0
	ldr r0, [r0, #0xe4]
	ldr r2, _021E32DC ; =0x0220D3A0
	mov r3, r1
	bl FUN_02203BD4
_021E32A0:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E32C8
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BE4
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E32C8:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E32D4: .word 0x0220D3AC
_021E32D8: .word 0x007FFFFF
_021E32DC: .word 0x0220D3A0

	arm_func_start FUN_021E32E0
FUN_021E32E0: ; 0x021E32E0
	bx lr

	arm_func_start FUN_021E32E4
FUN_021E32E4: ; 0x021E32E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	cmp r1, #0
	beq _021E330C
	cmp r1, #4
	beq _021E331C
	add sp, sp, #4
	cmp r1, #5
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E330C:
	mov r0, r2
	bl FUN_021E32E0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E331C:
	mov r5, #0
	bl FUN_02203BE4
	cmp r0, #0
	ble _021E336C
_021E332C:
	mov r0, r6
	mov r1, r5
	bl FUN_02203BF4
	mov r4, r0
	bl FUN_021E3F98
	cmp r0, #0
	bne _021E3358
	mov r0, r6
	mov r1, r4
	bl FUN_02203C50
	sub r5, r5, #1
_021E3358:
	mov r0, r6
	add r5, r5, #1
	bl FUN_02203BE4
	cmp r5, r0
	blt _021E332C
_021E336C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #2
	beq _021E3394
	cmp r0, #3
	beq _021E348C
	cmp r0, #5
	beq _021E3508
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3394:
	mov r0, r6
	mov r5, #0
	bl FUN_02203BE4
	cmp r0, #0
	ble _021E3424
_021E33A8:
	mov r0, r6
	mov r1, r5
	bl FUN_02203BF4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _021E3410
	bl FUN_021E26E4
	mov r7, r0
	mov r0, r4
	bl FUN_02203908
	ldr r1, [r7, #0x1c]
	cmp r1, r0
	bne _021E3410
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E3410
	bl FUN_021E26E4
	mov r7, r0
	mov r0, r4
	bl FUN_022038E4
	ldrh r1, [r7, #0x1a]
	cmp r1, r0
	beq _021E3424
_021E3410:
	mov r0, r6
	add r5, r5, #1
	bl FUN_02203BE4
	cmp r5, r0
	blt _021E33A8
_021E3424:
	mov r0, r6
	bl FUN_02203BE4
	cmp r5, r0
	bge _021E3464
	mov r0, #3
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	bl FUN_021E7E5C
	bl FUN_021E38E8
	add sp, sp, #4
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3464:
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	add sp, sp, #4
	str r1, [r4, #0xf0]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E348C:
	mov r0, #1
	bl FUN_021E30E0
	bl FUN_021E2F68
	mov r0, r6
	bl FUN_02203BE4
	cmp r0, #0
	beq _021E34E0
	mov r0, #0
	mov r1, r0
	bl FUN_021E6038
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #4
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E34E0:
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	add sp, sp, #4
	str r1, [r4, #0xf0]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3508:
	mov r0, r6
	bl FUN_02203BE4
	cmp r0, #0
	beq _021E3580
	mov r4, #0
_021E351C:
	mov r0, r6
	mov r1, r4
	bl FUN_02203BF4
	mov r5, r0
	bl FUN_02203908
	mov r7, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x1b8]
	cmp r7, r0
	bne _021E3564
	mov r0, r5
	bl FUN_022038E4
	mov r7, r0
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb4]
	cmp r7, r0
	beq _021E3580
_021E3564:
	mov r0, r6
	mov r1, r5
	bl FUN_02203C50
	mov r0, r6
	bl FUN_02203BE4
	cmp r0, #0
	bne _021E351C
_021E3580:
	mov r0, r6
	bl FUN_02203BE4
	cmp r0, #0
	beq _021E3684
	mov r0, r6
	mov r1, #0
	bl FUN_02203BF4
	ldr r1, _021E36AC ; =0x0220D3AC
	mov r2, #0
	bl FUN_0220394C
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E3650
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	bne _021E3650
	mov r0, #0
	bl FUN_021E30E0
	cmp r0, #0
	beq _021E3604
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E3650
	bl FUN_021E5824
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E3650
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3604:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #4
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, r0
	mov r0, #0
	ldr r2, [r1, #0xf4]
	mov r1, r0
	bl FUN_021E5D30
	bl FUN_021E61EC
	add sp, sp, #4
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3650:
	mov r0, #6
	bl FUN_021E26D0
	mov r0, r6
	mov r1, #0
	bl FUN_02203BF4
	mov r2, r0
	mov r0, #0
	mov r1, r0
	bl FUN_021E7B04
	bl FUN_021E37A4
	add sp, sp, #4
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E3684:
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E36AC: .word 0x0220D3AC

	arm_func_start FUN_021E36B0
FUN_021E36B0: ; 0x021E36B0
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _021E3734
_021E36CC: ; jump table
	b _021E3734 ; case 0
	b _021E36EC ; case 1
	b _021E36F8 ; case 2
	b _021E3708 ; case 3
	b _021E3714 ; case 4
	b _021E36F8 ; case 5
	b _021E3720 ; case 6
	b _021E372C ; case 7
_021E36EC:
	mov r0, #9
	mvn r2, #0
	b _021E3734
_021E36F8:
	mov r0, #0
	mov r2, r0
	mov r4, r0
	b _021E3734
_021E3708:
	mov r0, #6
	mvn r2, #9
	b _021E3734
_021E3714:
	mov r0, #6
	mvn r2, #0x1d
	b _021E3734
_021E3720:
	mov r0, #6
	mvn r2, #0x45
	b _021E3734
_021E372C:
	mov r0, #6
	mvn r2, #0x4f
_021E3734:
	cmp r0, #0
	beq _021E3748
	ldr r1, _021E3750 ; =0xFFFEAC28
	add r1, r2, r1
	bl FUN_021E8E08
_021E3748:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E3750: .word 0xFFFEAC28

	arm_func_start FUN_021E3754
FUN_021E3754: ; 0x021E3754
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #1
	beq _021E3778
	cmp r4, #2
	beq _021E3780
	b _021E3788
_021E3778:
	mov r0, #1
	ldmia sp!, {r4, pc}
_021E3780:
	mov r0, #2
	ldmia sp!, {r4, pc}
_021E3788:
	movs r0, #6
	beq _021E3798
	ldr r1, _021E37A0 ; =0xFFFEB007
	bl FUN_021E8E08
_021E3798:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E37A0: .word 0xFFFEB007

	arm_func_start FUN_021E37A4
FUN_021E37A4: ; 0x021E37A4
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #1
	beq _021E37D4
	cmp r4, #2
	beq _021E37E0
	cmp r4, #3
	moveq r0, #6
	mvneq r2, #0x1d
	b _021E37E8
_021E37D4:
	mov r0, #9
	mvn r2, #0
	b _021E37E8
_021E37E0:
	mov r0, #6
	mvn r2, #0x31
_021E37E8:
	ldr r1, _021E37FC ; =0xFFFEB010
	add r1, r2, r1
	bl FUN_021E8E08
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E37FC: .word 0xFFFEB010

	arm_func_start FUN_021E3800
FUN_021E3800: ; 0x021E3800
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _021E386C
_021E381C: ; jump table
	b _021E386C ; case 0
	b _021E3834 ; case 1
	b _021E3840 ; case 2
	b _021E384C ; case 3
	b _021E3858 ; case 4
	b _021E3864 ; case 5
_021E3834:
	mov r4, #6
	mvn r5, #0x31
	b _021E386C
_021E3840:
	mov r4, #6
	mvn r5, #0x3b
	b _021E386C
_021E384C:
	mov r4, #6
	mvn r5, #0x1d
	b _021E386C
_021E3858:
	mov r4, #6
	mvn r5, #0x4f
	b _021E386C
_021E3864:
	mov r4, #6
	mvn r5, #0x13
_021E386C:
	bl FUN_021DF88C
	cmp r0, #2
	beq _021E388C
	cmp r0, #4
	beq _021E389C
	cmp r0, #5
	beq _021E38B0
	b _021E38C4
_021E388C:
	mov r0, r4
	sub r1, r5, #0xfa00
	bl FUN_021E0EAC
	b _021E38D4
_021E389C:
	ldr r1, _021E38DC ; =0xFFFEDEF0
	mov r0, r4
	add r1, r5, r1
	bl FUN_021E2114
	b _021E38D4
_021E38B0:
	ldr r1, _021E38E0 ; =0xFFFEB7E0
	mov r0, r4
	add r1, r5, r1
	bl FUN_021E8E08
	b _021E38D4
_021E38C4:
	ldr r1, _021E38E4 ; =0xFFFE90D0
	mov r0, r4
	add r1, r5, r1
	bl FUN_021DD6B0
_021E38D4:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E38DC: .word 0xFFFEDEF0
_021E38E0: .word 0xFFFEB7E0
_021E38E4: .word 0xFFFE90D0

	arm_func_start FUN_021E38E8
FUN_021E38E8: ; 0x021E38E8
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #6
	addls pc, pc, r4, lsl #2
	b _021E3964
_021E3904: ; jump table
	b _021E3964 ; case 0
	b _021E3920 ; case 1
	b _021E392C ; case 2
	b _021E3938 ; case 3
	b _021E3944 ; case 4
	b _021E3950 ; case 5
	b _021E395C ; case 6
_021E3920:
	mov r0, #6
	mvn r2, #0x31
	b _021E3964
_021E392C:
	mov r0, #6
	mvn r2, #0x1d
	b _021E3964
_021E3938:
	mov r0, #6
	mvn r2, #0x13
	b _021E3964
_021E3944:
	mov r0, #6
	mvn r2, #0x27
	b _021E3964
_021E3950:
	mov r0, #9
	mvn r2, #0
	b _021E3964
_021E395C:
	mov r0, #9
	mvn r2, #1
_021E3964:
	ldr r1, _021E3978 ; =0xFFFEB3F8
	add r1, r2, r1
	bl FUN_021E8E08
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E3978: .word 0xFFFEB3F8

	arm_func_start FUN_021E397C
FUN_021E397C: ; 0x021E397C
	stmdb sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021E39D8
_021E3998: ; jump table
	b _021E39D8 ; case 0
	b _021E39AC ; case 1
	b _021E39B8 ; case 2
	b _021E39C4 ; case 3
	b _021E39D0 ; case 4
_021E39AC:
	mov r0, #9
	mvn r2, #0
	b _021E39D8
_021E39B8:
	mov r0, #9
	mvn r2, #1
	b _021E39D8
_021E39C4:
	mov r0, #6
	mvn r2, #9
	b _021E39D8
_021E39D0:
	mov r0, #6
	mvn r2, #0x13
_021E39D8:
	ldr r1, _021E39EC ; =0xFFFEC398
	add r1, r2, r1
	bl FUN_021E8E08
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E39EC: .word 0xFFFEC398

	arm_func_start FUN_021E39F0
FUN_021E39F0: ; 0x021E39F0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r0, _021E3E1C ; =0x022106D4
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [r0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	bne _021E3C58
	mov r0, #0
	bl FUN_021E3EC4
	ldr r1, _021E3E1C ; =0x022106D4
	ldr r5, [r1]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _021E3B2C
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bne _021E3AB8
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	mov r0, #0
	sub r1, r1, #1
	strb r1, [r4, #0x1a4]
	bl FUN_021E51C0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3AB8:
	bl OS_GetTick
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	mov r0, #0
	str r0, [r5, #8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E3B0C
	mov r0, #3
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	add sp, sp, #8
	str r1, [r4, #0xf0]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3B0C:
	mov r0, #4
	bl FUN_021E26D0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_021E5D30
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3B2C:
	ldrb r4, [r5, #2]
	bl OS_GetTick
	ldr r3, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3E20 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E3E24 ; =0x00001770
	mul r2, r4, r2
	cmp r1, r2, asr #31
	cmpeq r0, r2
	addlo sp, sp, #8
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r4, #5
	bls _021E3B98
	mov r0, #1
	bl FUN_021E3E28
	bl FUN_021E4B40
	mov r0, #1
	bl FUN_021E4CF8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3B98:
	mov r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3C3C
	ldr r8, _021E3E1C ; =0x022106D4
	mov r5, #0
	mov r4, #0x11
	mov r6, r7
_021E3BBC:
	bl FUN_021E26E4
	add r0, r0, r7
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r8]
	mov r0, r6,lsl  r0
	ldr r1, [r1, #8]
	ands r0, r1, r0
	bne _021E3C28
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	str r5, [sp]
	str r5, [sp, #4]
	add r0, r0, r7, lsl #1
	add r1, sl, r7, lsl #2
	add r2, sb, r7, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r4
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3C28:
	add r7, r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E3BBC
_021E3C3C:
	ldr r0, _021E3E1C ; =0x022106D4
	add sp, sp, #8
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	add r0, r0, #1
	strb r0, [r1, #2]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3C58:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	beq _021E3C7C
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3C7C:
	ldr r0, _021E3E1C ; =0x022106D4
	ldr r4, [r0]
	bl FUN_021E26E4
	ldrb r1, [r4, #1]
	ldrb r2, [r0, #0xd]
	sub r0, r1, #1
	cmp r2, r0
	addlt sp, sp, #8
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _021E3CF0
	ldr r0, _021E3E1C ; =0x022106D4
	ldr r4, [r0]
	bl OS_GetTick
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3E20 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2
	bhs _021E3D48
_021E3CF0:
	ldrb r0, [r4, #2]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _021E3E1C ; =0x022106D4
	ldr r4, [r0]
	bl OS_GetTick
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E3E20 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2, lsr #2
	addlo sp, sp, #8
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3D48:
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E3D74
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E3D74:
	mov r0, #0x13
	bl FUN_021E26D0
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3DF8
	mov r6, #0
	mov r5, #0x11
_021E3D98:
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	str r6, [sp]
	str r6, [sp, #4]
	add r0, r0, r4, lsl #1
	add r1, r8, r4, lsl #2
	add r2, r7, r4, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r5
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E3D98
_021E3DF8:
	ldr r0, _021E3E1C ; =0x022106D4
	ldr r4, [r0]
	bl OS_GetTick
	str r0, [r4, #0x18]
	str r1, [r4, #0x1c]
	mov r0, #1
	strb r0, [r4, #2]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021E3E1C: .word 0x022106D4
_021E3E20: .word 0x000082EA
_021E3E24: .word 0x00001770

	arm_func_start FUN_021E3E28
FUN_021E3E28: ; 0x021E3E28
	stmdb sp!, {r4, lr}
	ldr r1, _021E3E98 ; =0x022106D4
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r3]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	str r2, [r3, #8]
	ldr r0, [r1]
	str r2, [r0, #0xc]
	ldr r0, [r1]
	strb r2, [r0, #2]
	bl OS_GetTick
	ldr r2, _021E3E98 ; =0x022106D4
	cmp r4, #0
	ldr r2, [r2]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldmneia sp!, {r4, pc}
	bl OS_GetTick
	ldr r2, _021E3E98 ; =0x022106D4
	ldr r2, [r2]
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E3E98: .word 0x022106D4

	arm_func_start FUN_021E3E9C
FUN_021E3E9C: ; 0x021E3E9C
	stmdb sp!, {r4, lr}
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ad]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1f8]
	str r1, [r4, #0x1fc]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E3EC4
FUN_021E3EC4: ; 0x021E3EC4
	stmdb sp!, {r4, r5, r6, lr}
	cmp r0, #0
	mov r6, #0
	beq _021E3EE4
	bl FUN_021E26E4
	ldr r0, [r0, #0x2f0]
	bic r0, r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021E3EE4:
	mov r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E3F20
	mov r4, r5
_021E3EFC:
	bl FUN_021E26E4
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	add r5, r5, #1
	orr r6, r6, r4, lsl r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E3EFC
_021E3F20:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E3F28
FUN_021E3F28: ; 0x021E3F28
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r1, #0
	moveq r4, #1
	mov r5, r0
	movne r4, #0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	bgt _021E3F8C
_021E3F50:
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r5, r0
	bne _021E3F78
	bl FUN_021E26E4
	add r0, r0, r4
	add sp, sp, #4
	ldrb r0, [r0, #0x2d0]
	ldmia sp!, {r4, r5, pc}
_021E3F78:
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E3F50
_021E3F8C:
	mov r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E3F98
FUN_021E3F98: ; 0x021E3F98
	stmdb sp!, {r4, lr}
	ldr r1, _021E405C ; =0x0220D3B4
	mvn r2, #0
	mov r4, r0
	bl FUN_0220394C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E4060 ; =0x0220D3C0
	mov r0, r4
	bl FUN_0220394C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E4064 ; =0x0220D3CC
	mov r0, r4
	bl FUN_0220394C
	mvn r2, #0
	cmp r0, r2
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E4068 ; =0x0220D3D8
	mov r0, r4
	bl FUN_0220394C
	mvn r1, #0
	cmp r0, r1
	bne _021E4028
	ldr r1, _021E4068 ; =0x0220D3D8
	mov r0, r4
	mov r2, #0
	bl FUN_0220394C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021E4028:
	ldr r1, _021E406C ; =0x0220D3E4
	mov r0, r4
	mvn r2, #0
	bl FUN_0220394C
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021E4070 ; =0x0220D3AC
	mov r0, r4
	mov r2, #0
	bl FUN_0220394C
	ldmia sp!, {r4, pc}
	.align 2, 0
_021E405C: .word 0x0220D3B4
_021E4060: .word 0x0220D3C0
_021E4064: .word 0x0220D3CC
_021E4068: .word 0x0220D3D8
_021E406C: .word 0x0220D3E4
_021E4070: .word 0x0220D3AC

	arm_func_start FUN_021E4074
FUN_021E4074: ; 0x021E4074
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x2fc]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r4, #0
	bl FUN_021E26E4
	ldr r0, [r0, #0x344]
	cmp r0, #0
	ble _021E40E8
_021E40AC:
	bl FUN_021E26E4
	add r0, r0, r4
	ldrb r0, [r0, #0x304]
	bl FUN_021E1F84
	cmp r0, #0
	ble _021E40D4
	cmp r0, r5
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
_021E40D4:
	add r4, r4, #1
	bl FUN_021E26E4
	ldr r0, [r0, #0x344]
	cmp r4, r0
	blt _021E40AC
_021E40E8:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E40F4
FUN_021E40F4: ; 0x021E40F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, #0
	mov r4, r6
_021E4100:
	mov r5, r4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	blt _021E413C
_021E4114:
	bl FUN_021E26E4
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	cmp r6, r0
	beq _021E413C
	add r5, r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r5, r0
	ble _021E4114
_021E413C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r5, r0
	bgt _021E415C
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x20
	blo _021E4100
_021E415C:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E4164
FUN_021E4164: ; 0x021E4164
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r6, _021E41BC ; =0x02210704
	mov r7, #0
	mov r4, r7
	mov r5, #4
_021E417C:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _021E4194
	mov r0, r5
	mov r2, r4
	bl FUN_021DD904
_021E4194:
	add r7, r7, #1
	cmp r7, #0x9a
	add r6, r6, #0xc
	blt _021E417C
	ldr r1, _021E41BC ; =0x02210704
	ldr r2, _021E41C0 ; =0x00000738
	mov r0, #0
	bl MIi_CpuClear32
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E41BC: .word 0x02210704
_021E41C0: .word 0x00000738

	arm_func_start FUN_021E41C4
FUN_021E41C4: ; 0x021E41C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E41FC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xe
	beq _021E41FC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xf
	bne _021E4240
_021E41FC:
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E43D8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	mov r4, r0
	mov r5, r1
	b _021E424C
_021E4240:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E424C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E4270
	cmp r0, #0xe
	beq _021E42A4
	cmp r0, #0xf
	beq _021E43AC
	b _021E43CC
_021E4270:
	ldr r0, _021E43DC ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E43CC
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	mov r1, #0xe
	bl FUN_021E4604
	cmp r0, #0
	bne _021E43CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E42A4:
	ldr r0, _021E43DC ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E43CC
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1ac]
	add r1, r1, #1
	strb r1, [r0, #0x1ac]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1ac]
	cmp r0, #5
	bls _021E4330
	bl FUN_021E26E4
	ldr r0, [r0, #0x1d8]
	bl FUN_021E4A00
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E4324
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ac]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e8]
	str r1, [r4, #0x1ec]
	b _021E43CC
_021E4324:
	mov r0, #2
	bl FUN_021E4CF8
	b _021E43CC
_021E4330:
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E43CC
	mov r5, #0xd
	mov r6, r4
_021E434C:
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r7, #0x1d8]
	mov r0, r6,lsl  r0
	ands r0, r1, r0
	bne _021E4394
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r5
	bl FUN_021E4604
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021E4394:
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E434C
	b _021E43CC
_021E43AC:
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb2]
	cmp r5, r0, asr #31
	cmpeq r4, r0
	bls _021E43CC
	mov r0, #2
	bl FUN_021E4CF8
_021E43CC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E43D8: .word 0x000082EA
_021E43DC: .word 0x00001770

	arm_func_start FUN_021E43E0
FUN_021E43E0: ; 0x021E43E0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021DF88C
	cmp r0, #6
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r5, #0xd
	beq _021E441C
	cmp r5, #0xe
	beq _021E4458
	cmp r5, #0xf
	beq _021E45E0
	b _021E45F8
_021E441C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	beq _021E443C
	mov r0, #8
	bl FUN_021E26D0
	mov r0, r4
	bl FUN_021E4B78
_021E443C:
	mov r0, r6
	mov r1, #0xe
	bl FUN_021E4604
	cmp r0, #0
	bne _021E45F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E4458:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xe
	bne _021E45C4
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E4600 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	mov r2, r0, lsr #1
	mov r0, r1, lsr #1
	cmp r0, #0
	orr r2, r2, r1, lsl #31
	cmpeq r2, #0x12c
	bls _021E4524
	bl FUN_021E26E4
	ldr r1, [r0, #0x1e8]
	ldr r0, [r0, #0x1ec]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E4600 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	mov r3, r0, lsr #1
	mov r0, #0x12c
	orr r3, r3, r1, lsl #31
	rsb r0, r0, #0
	mvn r2, #0
	adds r5, r3, r0
	adc r4, r2, r1, lsr #1
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb2]
	cmp r4, r0, asr #31
	cmpeq r5, r0
	bls _021E4524
	bl FUN_021E26E4
	add r0, r0, #0x100
	strh r5, [r0, #0xb2]
_021E4524:
	mov r0, r6
	mov r1, #0
	bl FUN_021E3F28
	mov r4, r0
	cmp r4, #0xff
	beq _021E4550
	bl FUN_021E26E4
	ldr r2, [r0, #0x1d8]
	mov r1, #1
	orr r1, r2, r1, lsl r4
	str r1, [r0, #0x1d8]
_021E4550:
	mov r0, #1
	bl FUN_021E3EC4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x1d8]
	cmp r4, r0
	bne _021E45F8
	mov r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E45B8
	mov r4, #0xf
_021E4584:
	bl FUN_021E26E4
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r4
	bl FUN_021E4604
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E4584
_021E45B8:
	mov r0, #0xf
	bl FUN_021E26D0
	b _021E45F8
_021E45C4:
	mov r0, r6
	mov r1, #0xf
	bl FUN_021E4604
	cmp r0, #0
	bne _021E45F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E45E0:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #8
	bne _021E45F8
	mov r0, #2
	bl FUN_021E4CF8
_021E45F8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E4600: .word 0x000082EA

	arm_func_start FUN_021E4604
FUN_021E4604: ; 0x021E4604
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r1
	cmp r5, #0xd
	mov r6, r0
	movne r4, #0
	bne _021E4630
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	mov r4, #1
	str r0, [sp, #8]
_021E4630:
	add r0, sp, #8
	str r0, [sp]
	mov r2, #0
	mov r0, r5
	mov r1, r6
	mov r3, r2
	str r4, [sp, #4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e8]
	str r1, [r4, #0x1ec]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E4684
FUN_021E4684: ; 0x021E4684
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _021E46BC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _021E46BC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x11
	bne _021E4700
_021E46BC:
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1e0]
	ldr r0, [r0, #0x1e4]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E4908 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	mov r4, r0
	mov r5, r1
	b _021E470C
_021E4700:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E470C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	beq _021E4730
	cmp r0, #0x10
	beq _021E47A0
	cmp r0, #0x11
	beq _021E48DC
	b _021E48FC
_021E4730:
	ldr r0, _021E490C ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E48FC
	bl FUN_021DF88C
	cmp r0, #5
	bne _021E477C
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _021E477C
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5908
	cmp r0, #0
	bne _021E48FC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E477C:
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x2d0]
	mov r1, #3
	bl FUN_021E4910
	b _021E48FC
_021E47A0:
	ldr r0, _021E490C ; =0x00001770
	cmp r5, #0
	cmpeq r4, r0
	bls _021E48FC
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1ab]
	add r1, r1, #1
	strb r1, [r0, #0x1ab]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1ab]
	cmp r0, #5
	bls _021E4870
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E47F0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E4800
_021E47F0:
	bl FUN_021E4B40
	mov r0, #1
	bl FUN_021E4CF8
	b _021E48FC
_021E4800:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1d4]
	bl FUN_021E4A00
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E4850
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	b _021E48FC
_021E4850:
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	bl FUN_021E59D4
	cmp r0, #0
	bne _021E48FC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E4870:
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E48FC
	mov r5, #2
	mov r6, r4
_021E488C:
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r7, #0x1d4]
	mov r0, r6,lsl  r0
	ands r0, r1, r0
	bne _021E48C4
	bl FUN_021E26E4
	add r0, r0, r4
	ldrb r0, [r0, #0x2d0]
	mov r1, r5
	bl FUN_021E4910
_021E48C4:
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E488C
	b _021E48FC
_021E48DC:
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r5, r0, asr #31
	cmpeq r4, r0
	bls _021E48FC
	mov r0, #4
	bl FUN_021E51C0
_021E48FC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E4908: .word 0x000082EA
_021E490C: .word 0x00001770

	arm_func_start FUN_021E4910
FUN_021E4910: ; 0x021E4910
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	beq _021E4934
	cmp r4, #3
	beq _021E49AC
	b _021E49D0
_021E4934:
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	mov r6, #1
	cmp r5, r0
	moveq r0, #1
	streqb r0, [sp]
	movne r0, #0
	strneb r0, [sp]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blo _021E49D0
_021E4974:
	bl FUN_021E26E4
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	cmp r5, r0
	streqb r6, [sp, #1]
	streqb r5, [sp, #2]
	beq _021E49D0
	add r0, r6, #1
	and r6, r0, #0xff
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	bls _021E4974
	b _021E49D0
_021E49AC:
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	strb r0, [sp]
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	mov r0, r0, asr #8
	strb r0, [sp, #1]
_021E49D0:
	add r2, sp, #0
	mov r0, r4
	mov r1, r5
	mov r3, #4
	bl FUN_021EAF20
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E4A00
FUN_021E4A00: ; 0x021E4A00
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x108
	mov sb, #0
	mov sl, r0
	mov r8, sb
	mov r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E4A8C
	add r4, sp, #8
	add r5, sp, #0x88
	mov r6, r7
_021E4A34:
	bl FUN_021E26E4
	add r0, r0, r7
	ldrb r0, [r0, #0x2d0]
	mov r0, r6,lsl  r0
	ands r0, sl, r0
	beq _021E4A64
	bl FUN_021E26E4
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, r8, lsl #2]
	add r8, r8, #1
	b _021E4A78
_021E4A64:
	bl FUN_021E26E4
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r4, sb, lsl #2]
	add sb, sb, #1
_021E4A78:
	add r7, r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E4A34
_021E4A8C:
	cmp r8, #0
	mov sl, #0
	ble _021E4AE4
	add r7, sp, #8
	add r5, sp, #0x88
	mov r4, sl
	mov r6, #0x10
_021E4AA8:
	str r7, [sp]
	str sb, [sp, #4]
	ldr r1, [r5, sl, lsl #2]
	mov r0, r6
	mov r2, r4
	mov r3, r4
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x108
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add sl, sl, #1
	cmp sl, r8
	blt _021E4AA8
_021E4AE4:
	bl FUN_021E26E4
	mov r1, #2
	strb r1, [r0, #0x1a8]
	cmp sb, #0
	mov r6, #0
	ble _021E4B28
	add r5, sp, #8
	mov r4, r6
_021E4B04:
	ldr r0, [r5, r6, lsl #2]
	mov r1, r4
	bl FUN_021E3F28
	cmp r0, #0xff
	beq _021E4B1C
	bl FUN_021DF9D4
_021E4B1C:
	add r6, r6, #1
	cmp r6, sb
	blt _021E4B04
_021E4B28:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, #1
	add sp, sp, #0x108
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start FUN_021E4B40
FUN_021E4B40: ; 0x021E4B40
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	mov r1, #2
	strb r1, [r0, #0x1a8]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E4B78
FUN_021E4B78: ; 0x021E4B78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_021E26E4
	str r5, [r0, #0x20c]
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl FUN_021DF648
	movs r4, r0
	beq _021E4BD4
	bl FUN_021E26E4
	mov r1, #2
	strb r1, [r0, #0x1a8]
	ldr r0, [r4]
	bl FUN_021FD488
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, pc}
_021E4BD4:
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	mov r0, r5
	add r1, r1, #1
	bl FUN_021E89EC
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E4BF4
FUN_021E4BF4: ; 0x021E4BF4
	stmdb sp!, {r4, lr}
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021E4CA4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E4C64
	mov r0, #3
	bl FUN_021E26D0
	mov r0, #0
	bl FUN_021E7E5C
	mov r4, r0
	bl FUN_021E38E8
	cmp r0, #0
	beq _021E4CAC
	mov r0, r4
	ldmia sp!, {r4, pc}
_021E4C64:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E4CAC
	mov r0, #4
	bl FUN_021E26D0
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	mov r1, #0
	bl FUN_021E6038
	mov r4, r0
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E4CAC
	mov r0, r4
	ldmia sp!, {r4, pc}
_021E4CA4:
	mov r0, #1
	bl FUN_021E4CF8
_021E4CAC:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E4CB4
FUN_021E4CB4: ; 0x021E4CB4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021E4B40
	mov r0, #1
	bl FUN_021E4CF8
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E4CF8
FUN_021E4CF8: ; 0x021E4CF8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r4, r0
	bne _021E4D14
	bl FUN_021E4ED4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021E4D14:
	bl FUN_021E8174
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E4D38
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E4D94
_021E4D38:
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r6, #1
	movne r6, #0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	bl FUN_021E1F18
	mov r4, r0
	bl FUN_021E26E4
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r2, r6
	mov r1, #1
	mov r3, r0
	blx ip
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021E4D94:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E4DC8
	cmp r4, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	bl FUN_021E7E5C
	bl FUN_021E38E8
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E4DC8:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #1
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl FUN_021E5D30
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E4E00
FUN_021E4E00: ; 0x021E4E00
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, #0
	str r4, [sp, #8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E4EC8
	bl FUN_021E26E4
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _021E4EC8
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	beq _021E4EC8
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	add r2, sp, #8
	mov r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	ldrb r3, [r0, #0xd]
	ldrb r2, [r6, #0xd]
	ldr r1, [r7, #0x20]
	add r3, r3, #1
	add r2, r2, #1
	add r3, r4, r3, lsl #1
	add r2, r5, r2, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r2, [r2, #0x24]
	mov r0, #0xc
	bl FUN_021E7884
	mov r4, r0
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20]
_021E4EC8:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021E4ED4
FUN_021E4ED4: ; 0x021E4ED4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _021E4F90 ; =0x0220D3F0
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
	bl FUN_021E397C
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E8034
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	movne r6, #1
	bne _021E4F28
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r6, #1
	movne r6, #0
_021E4F28:
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	bl FUN_021E1F18
	mov r4, r0
	bl FUN_021E26E4
	str r4, [sp]
	ldr r1, [r0, #0x468]
	mov r2, r7
	str r1, [sp, #4]
	ldr ip, [r5, #0x464]
	mov r3, r6
	mov r0, #0
	mov r1, #1
	blx ip
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a9]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E4F90: .word 0x0220D3F0

	arm_func_start FUN_021E4F94
FUN_021E4F94: ; 0x021E4F94
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20c]
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #2
	bne _021E4FC4
	bl FUN_021E4ED4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021E4FC4:
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E5038
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E5010
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
	b _021E502C
_021E5010:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
_021E502C:
	bl FUN_021E4ED4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021E5038:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	beq _021E5098
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #5
	beq _021E5098
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E5098
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	beq _021E5098
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021E5098
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021E50D8
_021E5098:
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E50C4
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
_021E50C4:
	bl FUN_021E4E00
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
_021E50D8:
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E5100
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	bl FUN_022006B4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E5100:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E512C
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x1a9]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
_021E512C:
	bl FUN_021E4ED4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E5138
FUN_021E5138: ; 0x021E5138
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021E5168
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021E5168:
	cmp r5, #0
	mov r4, #0
	bls _021E51B8
_021E5174:
	ldr r0, [r6, r4, lsl #2]
	bl FUN_021E4074
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021E51AC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021E51AC:
	add r4, r4, #1
	cmp r4, r5
	blo _021E5174
_021E51B8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E51C0
FUN_021E51C0: ; 0x021E51C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	cmp r0, #4
	mov r5, #3
	mov r4, #0
	addls pc, pc, r0, lsl #2
	b _021E57E8
_021E51DC: ; jump table
	b _021E51F0 ; case 0
	b _021E5594 ; case 1
	b _021E55D8 ; case 2
	b _021E569C ; case 3
	b _021E56BC ; case 4
_021E51F0:
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	ldrb r1, [r6, #0x1a4]
	sub r0, r0, #1
	cmp r1, r0
	bge _021E52B0
	mov r0, #0xd
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [sp, #8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	str r0, [sp, #0xc]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r5, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	add r0, r0, #1
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x14]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	mov r5, #5
	add r0, r0, #1
	add r0, r6, r0, lsl #1
	ldrh r0, [r0, #0xa4]
	str r0, [sp, #0x18]
	b _021E54FC
_021E52B0:
	bl FUN_021E26E4
	mov r1, r4
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, r4
	str r1, [r0, #0x20]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E52F0
	mov r0, r5
	bl FUN_021E26D0
	b _021E5314
_021E52F0:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E530C
	mov r0, #4
	bl FUN_021E26D0
	b _021E5314
_021E530C:
	mov r0, #0xa
	bl FUN_021E26D0
_021E5314:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E534C
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r1, [r6, #0xd]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021E53FC
_021E534C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E5384
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r7, #0x20c]
	b _021E53A4
_021E5384:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20c]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	str r0, [r6, #0xf4]
_021E53A4:
	mov r0, #0x10
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1d4]
	mov r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E54EC
	mov r6, #2
_021E53D0:
	bl FUN_021E26E4
	add r0, r0, r7
	ldrb r0, [r0, #0x2d0]
	mov r1, r6
	bl FUN_021E4910
	add r7, r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r7, r0
	ble _021E53D0
	b _021E54EC
_021E53FC:
	mov r0, #0
	str r0, [sp, #8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	str r0, [sp, #0xc]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r6, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0x10]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E5460
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r6, r0
	bl OS_GetTick
	str r0, [r6, #0xec]
	str r1, [r6, #0xf0]
	b _021E54EC
_021E5460:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E54EC
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_021E5D30
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E54EC
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	blo _021E54EC
	bl FUN_021E26E4
	mov r8, r0
	mov r0, #0
	bl FUN_021E3EC4
	mov r6, r0
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	mov r1, #1
	ldr r2, [r8, #0x1dc]
	add r0, r7, r0
	ldrb r0, [r0, #0x2d0]
	mvn r0, r1, lsl r0
	and r0, r6, r0
	cmp r2, r0
	beq _021E54EC
	bl FUN_021E4CB4
	b _021E57E8
_021E54EC:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	movne r4, #1
_021E54FC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	beq _021E57E8
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	add r1, sp, #8
	str r1, [sp]
	str r5, [sp, #4]
	mov ip, r0
	ldrb r3, [sb, #0xd]
	ldrb r2, [r7, #0xd]
	ldrb r1, [ip, #0xd]
	add r5, sl, r3, lsl #2
	add r2, r8, r2, lsl #2
	add r3, r6, r1, lsl #1
	ldrh r3, [r3, #0xa4]
	ldr r1, [r5, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, #8
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x3cd]
	b _021E57E8
_021E5594:
	mov r0, #1
	bl FUN_021E26D0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E55D0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r5, #0x20c]
_021E55D0:
	mov r4, #1
	b _021E57E8
_021E55D8:
	mov r0, #1
	bl FUN_021E26D0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E5600
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E5620
_021E5600:
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	str r0, [r5, #0x20]
_021E5620:
	bl FUN_021E3E9C
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bls _021E57E8
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	add r3, r8, #0xf4
	ldrb r2, [r0, #0xd]
	mov r1, #1
	mov r0, #9
	sub r2, r2, #1
	add r2, r3, r2, lsl #2
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r7, #0xf4]
	ldr r2, [r6, #0x24]
	ldrh r3, [r5, #0xa4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E57E8
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E569C:
	mov r0, #1
	bl FUN_021E26D0
	bl FUN_021E3E9C
	bl FUN_021E26E4
	mov r1, r4
	str r1, [r0, #0x20c]
	mov r4, #1
	b _021E57E8
_021E56BC:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	beq _021E56DC
	ldr r1, _021E581C ; =0x0220D3F0
	mov r0, #2
	mov r2, r4
	bl FUN_021E1E30
_021E56DC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	bl FUN_021E1F18
	mov r5, r0
	bl FUN_021E26E4
	str r5, [sp]
	ldr r1, [r0, #0x468]
	mov r0, #0
	str r1, [sp, #4]
	ldr r5, [r6, #0x464]
	mov r2, r7
	mov r1, r0
	mov r3, r0
	blx r5
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E5750
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E5758
_021E5750:
	bl FUN_021E8034
	b _021E57DC
_021E5758:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021E5780
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203E80
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe4]
_021E5780:
	bl FUN_02200D6C
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E57C8
	bl FUN_021E85D4
	bl FUN_021E397C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _021E5820 ; =0x022106DC
	ldrb r1, [r0]
	cmp r1, #1
	moveq r1, #1
	streqb r1, [r0, #1]
	mov r0, #0xa
	bl FUN_021E26D0
	b _021E57D0
_021E57C8:
	mov r0, #1
	bl FUN_021E26D0
_021E57D0:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20c]
_021E57DC:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a9]
_021E57E8:
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	addeq sp, sp, #0x20
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203C04
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021E581C: .word 0x0220D3F0
_021E5820: .word 0x022106DC

	arm_func_start FUN_021E5824
FUN_021E5824: ; 0x021E5824
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E58BC
	mov r5, #0xa
_021E5844:
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	add r1, r6, #0x348
	str r1, [sp]
	ldr ip, [r0, #0x348]
	add r3, r7, r4, lsl #1
	add ip, ip, #1
	str ip, [sp, #4]
	add r1, sb, r4, lsl #2
	add r2, r8, r4, lsl #2
	ldrh r3, [r3, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r5
	bl FUN_021E7884
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E5844
_021E58BC:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20]
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x1a8]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	mov r0, r1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021E5908
FUN_021E5908: ; 0x021E5908
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E5950
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E5938
	bl FUN_021E4B40
_021E5938:
	ldr r1, _021E59D0 ; =0xFFFEC5D2
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E5950:
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r5, #0x14]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E5998
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	bl FUN_022006B4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E5998:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E59B0
	bl FUN_021E4CB4
	b _021E59C4
_021E59B0:
	mov r0, #4
	bl FUN_021E26D0
	mov r0, #0
	bl FUN_021E5C44
	mov r4, r0
_021E59C4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E59D0: .word 0xFFFEC5D2

	arm_func_start FUN_021E59D4
FUN_021E59D4: ; 0x021E59D4
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E5A0C
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	moveq r4, #0
	beq _021E5A10
_021E5A0C:
	mov r4, #1
_021E5A10:
	cmp r4, #0
	beq _021E5A3C
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
_021E5A3C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0x1f
	bhs _021E5A6C
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	mov r1, #0
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r1, [r0, #0xf4]
_021E5A6C:
	bl FUN_021E26E4
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E5AA0
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	bl FUN_022006B4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E5AA0:
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r6, #0x14]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	cmp r4, #0
	bne _021E5AE0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E5BE8
	bl FUN_021E4CB4
	b _021E5BE8
_021E5AE0:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E5B1C
	mov r0, #3
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #2
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E5BE8
_021E5B1C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E5B48
	mov r0, #4
	bl FUN_021E26D0
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_021E5D30
	b _021E5BE8
_021E5B48:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E5BE8
	mov r0, #0xe
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1d8]
	bl FUN_021E26E4
	add r1, r0, #0x100
	mov r2, #0
	mov r0, r5
	strh r2, [r1, #0xb2]
	bl FUN_021E4B78
	mov r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E5BD0
	mov r4, #0xd
_021E5B9C:
	bl FUN_021E26E4
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	mov r1, r4
	bl FUN_021E4604
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E5B9C
_021E5BD0:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _021E5BE8
	mov r0, #2
	bl FUN_021E4CF8
_021E5BE8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E5BF0
FUN_021E5BF0: ; 0x021E5BF0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r5
	mov r0, #5
	bl FUN_021E7884
	mov r4, r0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E5C44
FUN_021E5C44: ; 0x021E5C44
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E5CC0
	mov r0, #3
	bl FUN_021E26D0
	mov r0, #0
	bl FUN_021E7E5C
	bl FUN_021E38E8
	cmp r0, #0
	beq _021E5D20
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E5CC0:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E5CF8
	mov r0, #0
	mov r1, r0
	mov r2, r5
	bl FUN_021E5D30
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E5D20
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E5CF8:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E5D20
	ldr r1, _021E5D2C ; =0xFFFEC5E6
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021E5D20:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E5D2C: .word 0xFFFEC5E6

	arm_func_start FUN_021E5D30
FUN_021E5D30: ; 0x021E5D30
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x23c
	movs r4, r1
	str r0, [sp]
	str r2, [sp, #4]
	beq _021E5D58
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a5]
	str r0, [sp, #0xc]
	b _021E5D90
_021E5D58:
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x344]
	ldrb r1, [r5, #0x1a5]
	sub r0, r0, #1
	cmp r1, r0
	movge r0, #0
	strge r0, [sp, #0xc]
	bge _021E5D90
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a5]
	add r0, r0, #1
	str r0, [sp, #0xc]
_021E5D90:
	cmp r4, #0
	moveq r0, #1
	mov sb, #0
	streq r0, [sp, #8]
	strne sb, [sp, #8]
	mov r7, #1
	mov r8, #0
	mov r5, #0x2f
	mov r4, #0xa
_021E5DB4:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021E5DC8
	cmp sb, #0
	beq _021E5DFC
_021E5DC8:
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1a5]
	add r1, r1, #1
	strb r1, [r0, #0x1a5]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r1, [r6, #0x1a5]
	ldr r0, [r0, #0x344]
	cmp r1, r0
	blt _021E5DFC
	bl FUN_021E26E4
	strb r8, [r0, #0x1a5]
_021E5DFC:
	cmp sb, #0
	beq _021E5E50
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1a5]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _021E5E50
	bl FUN_021E26E4
	ldr r1, _021E6028 ; =0x00000BB8
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	add sp, sp, #0x23c
	mov r0, r1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021E5E50:
	mov sb, r7
	bl FUN_021E0F00
	mov fp, r0
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r1, r0
	ldrb r2, [r1, #0x1a5]
	ldr r3, [sl, #0x2fc]
	mov r1, #0xc
	add r2, r6, r2
	ldrb r2, [r2, #0x304]
	mov r0, fp
	mla r1, r2, r1, r3
	bl FUN_02096DA0
	movs sl, r0
	beq _021E5DB4
	mvn r0, #0
	cmp sl, r0
	beq _021E5DB4
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov fp, r0
	bl FUN_021E26E4
	ldr r2, [r6, #0x2fc]
	ldrb r1, [r0, #0x1a5]
	mov r0, #0xc
	add r1, fp, r1
	ldrb r1, [r1, #0x304]
	mla r0, r1, r0, r2
	bl FUN_02097000
	cmp r0, #0
	beq _021E5DB4
	mov r6, r7
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E5F1C
_021E5EF4:
	bl FUN_021E26E4
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0xf4]
	cmp sl, r0
	beq _021E5F1C
	add r6, r6, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	ble _021E5EF4
_021E5F1C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r6, r0
	ble _021E5DB4
	bl FUN_021E26E4
	ldr r0, [r0]
	mov r1, sl
	add r2, sp, #0x18
	bl FUN_021F0664
	mov r6, r0
	bl FUN_021E26E4
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x28
	bl FUN_021F06E4
	orrs r0, r6, r0
	bne _021E5DB4
	ldr r0, [sp, #0x2c]
	cmp r0, #4
	bne _021E5DB4
	ldr r0, _021E602C ; =0x0220D3F4
	add r1, sp, #0x1c
	add r2, sp, #0x30
	mov r3, r5
	bl FUN_021DE9F4
	mov r6, r0
	ldr r0, _021E6030 ; =0x0220D3F8
	add r1, sp, #0x12
	add r2, sp, #0x30
	mov r3, r5
	bl FUN_021DE9F4
	mov fp, r0
	ldr r0, _021E6034 ; =0x0220D3FC
	add r1, sp, #0x10
	add r2, sp, #0x30
	mov r3, r5
	bl FUN_021DE9F4
	cmp r6, #0
	ble _021E5DB4
	cmp fp, #0
	ble _021E5DB4
	cmp r0, #0
	ble _021E5DB4
	add r0, sp, #0x1c
	mov r1, r8
	mov r2, r4
	bl strtoul
	cmp r0, #3
	bne _021E5DB4
	add r0, sp, #0x12
	mov r1, r8
	mov r2, r4
	bl strtoul
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x16]
	cmp r6, r0
	bne _021E5DB4
	ldr r0, [sp, #4]
	cmp sl, r0
	moveq r0, #1
	streq r0, [sp]
	ldr r1, [sp]
	mov r0, sl
	bl FUN_021E6038
	add sp, sp, #0x23c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E6028: .word 0x00000BB8
_021E602C: .word 0x0220D3F4
_021E6030: .word 0x0220D3F8
_021E6034: .word 0x0220D3FC

	arm_func_start FUN_021E6038
FUN_021E6038: ; 0x021E6038
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	cmp r1, #0
	bne _021E606C
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E60A0
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	bne _021E60A0
_021E606C:
	bl FUN_021E26E4
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl FUN_021E26E4
	str r5, [r0, #0xf4]
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E60A0:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E6124
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl FUN_02203BF4
	mov r6, r0
	bl FUN_021E26E4
	mov r4, r0
	ldr r1, _021E61E4 ; =0x0220D3AC
	mov r0, r6
	mov r2, #0
	bl FUN_0220394C
	str r0, [r4, #0xf4]
	bl FUN_021E26E4
	mov r4, r0
	mov r0, r6
	bl FUN_02203908
	str r0, [r4, #0x24]
	bl FUN_021E26E4
	mov r4, r0
	mov r0, r6
	bl FUN_022038E4
	strh r0, [r4, #0xa4]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	mov r4, #1
	str r0, [r6, #0x204]
	b _021E6160
_021E6124:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E613C
	bl FUN_021E26E4
	str r5, [r0, #0xf4]
_021E613C:
	bl FUN_021E26E4
	str r5, [r0, #0x204]
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0xc]
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	mov r4, #3
	str r0, [sp, #0x10]
_021E6160:
	bl FUN_021E26E4
	ldr r1, _021E61E8 ; =0x00001770
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	mov r6, r0
	bl OS_GetTick
	str r0, [r6, #0x1cc]
	str r1, [r6, #0x1d0]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	movne r7, #0xb
	moveq r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	str r0, [sp, #8]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	add r2, sp, #8
	str r2, [sp]
	mov r3, r0
	str r4, [sp, #4]
	ldrh r3, [r3, #0xa4]
	ldr r2, [r6, #0x24]
	mov r1, r5
	mov r0, r7
	bl FUN_021E7884
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E61E4: .word 0x0220D3AC
_021E61E8: .word 0x00001770

	arm_func_start FUN_021E61EC
FUN_021E61EC: ; 0x021E61EC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E6210
	mov r0, r4
	bl FUN_021E38E8
	ldmia sp!, {r4, pc}
_021E6210:
	mov r0, r4
	bl FUN_021E397C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E621C
FUN_021E621C: ; 0x021E621C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	add r4, r1, #2
	cmp r4, #2
	bls _021E6250
	bl FUN_021E26E4
	sub r2, r4, #2
	add r1, r0, #0x350
	add r0, r5, #4
	mov r2, r2, lsl #2
	bl MIi_CpuCopy32
_021E6250:
	bl FUN_021E26E4
	sub r1, r4, #1
	str r1, [r0, #0x348]
	bl FUN_021E26E4
	str r6, [r0, #0x34c]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E6268
FUN_021E6268: ; 0x021E6268
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E62A4
	bl FUN_021E26E4
	ldr r0, [r0, #0x20]
	cmp r6, r0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021E62A4:
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	str r6, [r0, #0x20]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r6, [r0, #0xf4]
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #2
	str r5, [r0, #0x24]
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r7, r0, lsl #1
	strh r4, [r0, #0xa4]
	bl FUN_021E26E4
	str r5, [r0, #0x1b8]
	bl FUN_021E26E4
	add r0, r0, #0x100
	strh r4, [r0, #0xb4]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E40F4
	ldrb r1, [r4, #0x14]
	add r1, r1, #1
	add r1, r5, r1
	strb r0, [r1, #0x2d0]
	str r6, [sp, #8]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	mov r7, #1
	add r0, r0, #1
	add r0, r4, r0
	ldrb r0, [r0, #0x2d0]
	str r0, [sp, #0xc]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _021E6414
	add r6, sp, #8
	mov r5, #2
	mov r4, #7
_021E63B8:
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	str r6, [sp]
	str r5, [sp, #4]
	add r0, r0, r7, lsl #1
	add r1, sb, r7, lsl #2
	add r2, r8, r7, lsl #2
	ldrh r3, [r0, #0xa4]
	ldr r1, [r1, #0xf4]
	ldr r2, [r2, #0x24]
	mov r0, r4
	bl FUN_021E7884
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r7, r0
	ble _021E63B8
_021E6414:
	mov r0, #1
	bl FUN_021E3E28
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021E6428
FUN_021E6428: ; 0x021E6428
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r8, r3
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E6490
	cmp r0, #1
	beq _021E6460
	cmp r0, #2
	beq _021E6670
	b _021E6724
_021E6460:
	bl FUN_021E26E4
	ldr r0, [r0]
	mov r1, r7
	bl FUN_021F05F4
	cmp r0, #0
	moveq r4, #0xff
	beq _021E6724
	mov r0, r7
	bl FUN_021E4074
	cmp r0, #0
	moveq r4, #3
	beq _021E6724
_021E6490:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r8, r0
	bne _021E64F8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	bne _021E64F8
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	beq _021E64F8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E655C
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r1, [r4, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _021E655C
_021E64F8:
	mov r4, #3
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E6724
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	bne _021E6724
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E6724
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r1, [r5, #0x20]
	ldr r0, [r0, #0x200]
	cmp r1, r0
	bne _021E6724
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	b _021E6724
_021E655C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	beq _021E657C
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E65AC
_021E657C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E659C
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E65AC
_021E659C:
	cmp r6, #0
	bne _021E65B4
	cmp r5, #0
	bne _021E65B4
_021E65AC:
	mov r4, #4
	b _021E6724
_021E65B4:
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r0, #0
	beq _021E6668
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r7, r0
	bne _021E6610
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021E6600
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	cmp r0, r7
	bge _021E6608
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r7, r0
	beq _021E6608
_021E6600:
	mov r4, #2
	b _021E6724
_021E6608:
	mov r4, #0xff
	b _021E6724
_021E6610:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021E663C
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	cmp r0, r7
	bge _021E6660
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _021E6660
_021E663C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	movne r0, #0xff
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #2
	b _021E6724
_021E6660:
	mov r4, #3
	b _021E6724
_021E6668:
	mov r4, #2
	b _021E6724
_021E6670:
	bl FUN_021E26E4
	ldr r0, [r0]
	mov r1, r7
	bl FUN_021F05F4
	cmp r0, #0
	moveq r4, #0xff
	beq _021E6724
	cmp r8, #3
	bne _021E66B0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r1, [r4, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021E66B8
_021E66B0:
	mov r4, #3
	b _021E6724
_021E66B8:
	ldr r0, _021E672C ; =0x022106DC
	ldrb r1, [r0]
	cmp r1, #1
	bne _021E66D8
	ldrb r0, [r0, #1]
	cmp r0, #1
	moveq r4, #0x13
	beq _021E6724
_021E66D8:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	bne _021E6718
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _021E6708
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _021E6718
_021E6708:
	cmp r6, #0
	bne _021E6720
	cmp r5, #0
	bne _021E6720
_021E6718:
	mov r4, #4
	b _021E6724
_021E6720:
	mov r4, #2
_021E6724:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021E672C: .word 0x022106DC

	arm_func_start FUN_021E6730
FUN_021E6730: ; 0x021E6730
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x118
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov sl, r3
	ldr r6, [sp, #0x138]
	ldr r5, [sp, #0x13c]
	mov r4, #0
	bl FUN_021E26E4
	cmp r0, #0
	beq _021E6770
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	bne _021E677C
_021E6770:
	add sp, sp, #0x118
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E677C:
	bl FUN_021DF88C
	cmp r0, #5
	bne _021E67AC
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E67AC
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E67AC
	bl FUN_021E3E9C
_021E67AC:
	cmp sb, #0x40
	bgt _021E684C
	cmp sb, #0x40
	bge _021E7594
	cmp sb, #0x20
	addls pc, pc, sb, lsl #2
	b _021E7608
_021E67C8: ; jump table
	b _021E7608 ; case 0
	b _021E6854 ; case 1
	b _021E6A20 ; case 2
	b _021E6BF8 ; case 3
	b _021E6C58 ; case 4
	b _021E6D78 ; case 5
	b _021E6DF4 ; case 6
	b _021E6F04 ; case 7
	b _021E701C ; case 8
	b _021E719C ; case 9
	b _021E71F0 ; case 10
	b _021E6854 ; case 11
	b _021E7298 ; case 12
	b _021E730C ; case 13
	b _021E730C ; case 14
	b _021E730C ; case 15
	b _021E7330 ; case 16
	b _021E7380 ; case 17
	b _021E7424 ; case 18
	b _021E7480 ; case 19
	b _021E7608 ; case 20
	b _021E7608 ; case 21
	b _021E7608 ; case 22
	b _021E7608 ; case 23
	b _021E7608 ; case 24
	b _021E7608 ; case 25
	b _021E7608 ; case 26
	b _021E7608 ; case 27
	b _021E7608 ; case 28
	b _021E7608 ; case 29
	b _021E7608 ; case 30
	b _021E7608 ; case 31
	b _021E7498 ; case 32
_021E684C:
	cmp sb, #0x41
	b _021E7608
_021E6854:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	ldrne r0, [r6, #8]
	ldrne r7, [r6, #4]
	movne r0, r0, lsl #0x10
	movne sl, r0, lsr #0x10
	cmp sb, #0xb
	moveq r0, #1
	movne r0, #0
	str r0, [sp]
	ldr r3, [r6]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl FUN_021E6428
	mov r5, r0
	cmp r5, #2
	bne _021E6994
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1dc]
	mov r0, r8
	mov r1, r7
	mov r2, sl
	bl FUN_021E6268
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E6918
	bl FUN_021E26E4
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _021E6918
	bl FUN_021E26E4
	mov r6, r0
	mov r0, r8
	bl FUN_021E1F18
	mov r4, r0
	bl FUN_021E26E4
	ldr r1, [r0, #0x470]
	ldr r2, [r6, #0x46c]
	mov r0, r4
	blx r2
_021E6918:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	mov r4, #1
	str r0, [sp, #0x14]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r0, #1
	blt _021E6960
	add r6, sp, #0x14
_021E693C:
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r6, r4, lsl #2]
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	cmp r4, r0
	ble _021E693C
_021E6960:
	bl FUN_021E26E4
	ldr r1, [r0, #0x1c]
	add r0, sp, #0x14
	str r1, [r0, r4, lsl #2]
	bl FUN_021E26E4
	ldrh r2, [r0, #0x1a]
	add r3, r4, #1
	add r1, sp, #0x14
	mov r0, #0xb
	str r2, [r1, r3, lsl #2]
	add r4, r4, #2
	bl FUN_021E26D0
	b _021E69E0
_021E6994:
	cmp r5, #3
	bne _021E69E0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _021E69E0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r1, [r6, #0x14]
	ldrb r0, [r0, #0x16]
	cmp r1, r0
	bne _021E69E0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r0, #0x10
	streq r0, [sp, #0x14]
	moveq r4, #1
_021E69E0:
	cmp r5, #0xff
	beq _021E7608
	add r1, sp, #0x14
	str r1, [sp]
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, sl
	str r4, [sp, #4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6A20:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E7608
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x24]
	bl FUN_021E26E4
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xa4]
	bl FUN_021E26E4
	ldr r1, [r6]
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #4]
	str r1, [r0, #0x1b8]
	bl FUN_021E26E4
	ldr r1, [r6]
	add r0, r0, #0x100
	add r1, r6, r1, lsl #2
	ldr r1, [r1, #8]
	strh r1, [r0, #0xb4]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E6B4C
	ldr r1, [r6]
	add r0, r6, #4
	bl FUN_021E5138
	cmp r0, #0
	beq _021E6B08
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E6B4C
	mov r0, r8
	mov r1, r6
	bl FUN_021E621C
	b _021E6B4C
_021E6B08:
	mov r0, r8
	bl FUN_021E5BF0
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #0
	mov r1, r0
	mov r2, r8
	bl FUN_021E5D30
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6B4C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E6BD0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E6B90
	mov r0, r8
	mov r1, r6
	bl FUN_021E621C
	bl FUN_021E5824
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6B90:
	mov r0, #6
	bl FUN_021E26D0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	mov r1, #0
	bl FUN_02203BF4
	mov r2, r0
	mov r0, #0
	mov r1, r0
	bl FUN_021E7B04
	bl FUN_021E37A4
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6BD0:
	mov r0, #5
	bl FUN_021E26D0
	mov r0, r8
	bl FUN_021E7E5C
	bl FUN_021E38E8
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6BF8:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E7608
	cmp r5, #0
	ble _021E6C44
	ldr r0, [r6]
	cmp r0, #0x10
	bne _021E6C44
	mov r0, #0xd
	mov r1, #0
	bl FUN_021E8E08
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6C44:
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	bl FUN_021E5C44
	add sp, sp, #0x118
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6C58:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #4
	bne _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	cmp r8, r0
	bne _021E7608
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1cc]
	str r1, [r4, #0x1d0]
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021E6CAC
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a7]
	cmp r0, #0x10
	blo _021E6CBC
_021E6CAC:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E6D00
_021E6CBC:
	bl FUN_021E26E4
	mov r1, #1
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1c0]
	str r1, [r4, #0x1c4]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E7608
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1a7]
	add r1, r1, #1
	strb r1, [r0, #0x1a7]
	b _021E7608
_021E6D00:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E6D54
	mov r0, #3
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #1
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xec]
	str r1, [r4, #0xf0]
	b _021E7608
_021E6D54:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E7608
	mov r1, #0
	mov r2, r1
	mov r0, #1
	bl FUN_021E5D30
	b _021E7608
_021E6D78:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _021E7608
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E6DD8
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _021E6DD8
	bl FUN_021E26E4
	ldr r0, [r0, #0xf8]
	cmp r8, r0
	bne _021E6DD8
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
_021E6DD8:
	mov r0, r8
	bl FUN_021E59D4
	cmp r0, #0
	bne _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6DF4:
	ldr r0, [r6, #4]
	ldr r4, [r6]
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E6E20
	mov r0, #6
	bl FUN_021E26D0
	b _021E6E50
_021E6E20:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	beq _021E6E40
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	bne _021E7608
_021E6E40:
	bl FUN_021E26E4
	ldr r0, [r0, #0x20]
	cmp r8, r0
	bne _021E7608
_021E6E50:
	bl FUN_021E26E4
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	beq _021E6E9C
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r6, r0, lsl #2
	str r8, [r0, #0xf4]
_021E6E9C:
	mov r1, r5, asr #8
	mov r0, r5, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	str r4, [sp, #0x10]
	strh r0, [sp, #0xe]
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x194]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD43C
	mov r4, r0
	bl FUN_021E26E4
	add r3, r0, #0x194
	mov r1, r4
	mov r0, #0
	add r2, sp, #0xc
	bl FUN_021E2784
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	b _021E7608
_021E6F04:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E7608
	ldr r0, [r6]
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	and r4, r0, #0xff
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E6F98
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E6F98
	ldr r0, [sp, #8]
	bl FUN_021E4074
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	str r0, [sp]
	mov r5, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x20
	str r5, [sp, #4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6F98:
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	ldr r1, [sp, #8]
	add r0, r0, #1
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xf4]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r0, #1
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	bl FUN_021E26E4
	ldr r0, [r0, #0x46c]
	cmp r0, #0
	beq _021E7608
	bl FUN_021E26E4
	mov r5, r0
	ldr r0, [sp, #8]
	bl FUN_021E1F18
	mov r4, r0
	bl FUN_021E26E4
	ldr r1, [r0, #0x470]
	ldr r2, [r5, #0x46c]
	mov r0, r4
	blx r2
	b _021E7608
_021E701C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E7608
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E7608
	ldr r0, [r6]
	str r0, [sp, #8]
	cmp r0, #0
	bne _021E7084
	ldr r5, [r6, #4]
	ldr r4, [r6, #8]
	bl FUN_021E26E4
	add r0, r5, r0
	strb r4, [r0, #0x2d0]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r2, [r0, #0x200]
	add r1, r4, r5, lsl #2
	mov r0, #3
	str r2, [r1, #0xf4]
	bl FUN_021E51C0
	b _021E7608
_021E7084:
	ldr r0, [r6, #8]
	ldr r4, [r6, #4]
	and r5, r0, #0xff
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r1, [sp, #8]
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _021E7104
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	sub r0, r0, #1
	cmp r4, r0
	bne _021E7104
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	add r1, sp, #8
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r2, [r4, #0x24]
	mov r1, r8
	mov r0, #9
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7104:
	bl FUN_021E26E4
	ldr r1, [sp, #8]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0xf4]
	bl FUN_021E26E4
	add r0, r4, r0
	strb r5, [r0, #0x2d0]
	bl FUN_021E26E4
	ldr r1, [r6, #0xc]
	add r0, r0, r4, lsl #2
	str r1, [r0, #0x24]
	bl FUN_021E26E4
	ldr r1, [r6, #0x10]
	add r0, r0, r4, lsl #1
	strh r1, [r0, #0xa4]
	bl FUN_021E26E4
	ldr r1, [r6, #0xc]
	str r1, [r0, #0x1b8]
	bl FUN_021E26E4
	add r1, r0, #0x100
	ldr r2, [r6, #0x10]
	mov r0, #5
	strh r2, [r1, #0xb4]
	bl FUN_021E26D0
	ldr r0, [sp, #8]
	bl FUN_021E7E5C
	bl FUN_021E38E8
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	b _021E7608
_021E719C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	bne _021E7608
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a4]
	ldr r1, [r6]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	bne _021E7608
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1a4]
	add r1, r1, #1
	strb r1, [r0, #0x1a4]
	mov r0, #0
	bl FUN_021E51C0
	b _021E7608
_021E71F0:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	beq _021E7210
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _021E7608
_021E7210:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E7234
	ldr r1, [r6]
	add r0, r6, #4
	bl FUN_021E5138
	cmp r0, #0
	beq _021E7250
_021E7234:
	bl FUN_021E26E4
	ldr r1, [r6, #4]
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a7]
	b _021E725C
_021E7250:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
_021E725C:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E7280
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
	b _021E7608
_021E7280:
	bl FUN_021E4BF4
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7298:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E7608
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E72C8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E72E4
_021E72C8:
	mov r0, r8
	bl FUN_021E5908
	cmp r0, #0
	bne _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E72E4:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E7608
	bl FUN_021E26E4
	str r8, [r0, #0x20c]
	bl FUN_021E4B40
	mov r0, #0
	bl FUN_021E4CF8
	b _021E7608
_021E730C:
	ldr r2, [r6]
	mov r0, r8
	mov r1, sb
	bl FUN_021E43E0
	cmp r0, #0
	bne _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7330:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	addne sp, sp, #0x118
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r5, #0
	mov r7, #0
	ble _021E7608
	mov r4, r7
_021E7358:
	ldr r0, [r6, r7, lsl #2]
	mov r1, r4
	bl FUN_021E3F28
	cmp r0, #0xff
	beq _021E7370
	bl FUN_021DF9D4
_021E7370:
	add r7, r7, #1
	cmp r7, r5
	blt _021E7358
	b _021E7608
_021E7380:
	ldr r0, _021E7614 ; =0x022106D4
	ldr r4, [r0]
	cmp r4, #0
	beq _021E73E0
	ldrb r0, [r4]
	cmp r0, #0
	beq _021E73E0
	bl OS_GetTick
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #0x14]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021E7618 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, [r4, #4]
	cmp r1, #0
	cmpeq r0, r2
	movhs r0, #1
	strhs r0, [sp, #0x14]
	bhs _021E73E8
_021E73E0:
	mov r0, #0
	str r0, [sp, #0x14]
_021E73E8:
	add r0, sp, #0x14
	str r0, [sp]
	mov r4, #1
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x12
	str r4, [sp, #4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7424:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x13
	bne _021E7608
	mov r0, r8
	mov r1, #0
	bl FUN_021E3F28
	cmp r0, #0xff
	beq _021E7608
	ldr r1, _021E7614 ; =0x022106D4
	mov r4, #1
	ldr r3, [r1]
	mov r5, r4,lsl  r0
	ldr r2, [r3, #8]
	orr r0, r2, r4, lsl r0
	str r0, [r3, #8]
	ldr r0, [r6]
	cmp r0, #0
	ldrne r1, [r1]
	ldrne r0, [r1, #0xc]
	orrne r0, r0, r5
	strne r0, [r1, #0xc]
	b _021E7608
_021E7480:
	mov r0, #0xc
	mov r1, #0
	bl FUN_021E8E08
	add sp, sp, #0x118
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7498:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E7608
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	bne _021E7608
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E7608
_021E74CC:
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E757C
	ldr r0, [r6]
	cmp r0, #0
	bne _021E7554
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021E750C
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021E7524
_021E750C:
	bl FUN_021E4E00
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0x118
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E7524:
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E754C
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	bl FUN_022006B4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E754C:
	bl FUN_021E4CB4
	b _021E7608
_021E7554:
	bl FUN_021E26E4
	mov r4, r0
	mov r0, r8
	mov r1, #0
	bl FUN_021E3F28
	ldr r2, [r4, #0x1dc]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r4, #0x1dc]
	b _021E7608
_021E757C:
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E74CC
	b _021E7608
_021E7594:
	mov r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E7608
_021E75A8:
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r8, r0
	bne _021E75F4
	mov r4, #0
	str r4, [sp]
	mov r1, r8
	mov r2, r7
	mov r3, sl
	mov r0, #0x41
	str r4, [sp, #4]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E7608
	add sp, sp, #0x118
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E75F4:
	add r4, r4, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r4, r0
	ble _021E75A8
_021E7608:
	mov r0, #1
	add sp, sp, #0x118
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021E7614: .word 0x022106D4
_021E7618: .word 0x000082EA

	arm_func_start FUN_021E761C
FUN_021E761C: ; 0x021E761C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r1
	mov r4, r0
	mov r8, r2
	mov r0, sb
	mov r1, #0
	bl strchr
	mov r7, r0
	cmp r8, #0
	mov r6, #0
	ble _021E767C
	mov r5, #0x2f
_021E7650:
	mov r0, sb
	mov r1, r5
	bl strchr
	cmp r0, #0
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, r8
	add sb, r0, #1
	blt _021E7650
_021E767C:
	mov r0, sb
	mov r1, #0x2f
	bl strchr
	cmp r0, #0
	moveq r0, r7
	cmp sb, r0
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	sub r5, r0, sb
	mov r0, sb
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r1, #0
	mov r0, r5
	strb r1, [r4, r5]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021E76C8
FUN_021E76C8: ; 0x021E76C8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x208
	mov r7, r0
	mov r5, r2
	mov r4, r3
	mov r0, #3
	mov r6, r1
	str r0, [sp]
	ldr ip, _021E7760 ; =0x0220D410
	ldr r2, _021E7764 ; =0x0220D400
	ldr r3, _021E7768 ; =0x0220D408
	add r0, sp, #8
	mov r1, #0x200
	str ip, [sp, #4]
	bl OS_SNPrintf
	add r1, sp, #8
	add r2, sp, #9
	strb r6, [r1, r0]
	mov r1, #0
	strb r1, [r2, r0]
	cmp r4, #0
	add r8, r2, r0
	beq _021E7748
	mov r0, r4
	bl strlen
	mov r6, r0
	mov r0, r4
	mov r1, r8
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r8, r6]
_021E7748:
	add r2, sp, #8
	mov r0, r7
	mov r1, r5
	bl FUN_021F02B8
	add sp, sp, #0x208
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021E7760: .word 0x0220D410
_021E7764: .word 0x0220D400
_021E7768: .word 0x0220D408

	arm_func_start FUN_021E776C
FUN_021E776C: ; 0x021E776C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x9c
	mov r5, r0
	mov r8, r1
	mov r7, r2
	cmp r3, #0
	ldr r4, [sp, #0xb8]
	beq _021E77A8
	cmp r4, #0
	beq _021E77A8
	add r1, sp, #0x18
	mov r0, r3
	mov r2, r4, lsl #2
	bl MIi_CpuCopy32
	b _021E77AC
_021E77A8:
	mov r4, #0
_021E77AC:
	ldr r6, _021E7880 ; =0x0220D398
	add sb, sp, #4
	ldrb r3, [r6]
	ldrb r2, [r6, #1]
	mov r0, r4, lsl #2
	mov r1, #3
	strb r3, [sb]
	strb r2, [sb, #1]
	ldrb r3, [r6, #2]
	ldrb r2, [r6, #3]
	strb r3, [sb, #2]
	strb r2, [sb, #3]
	ldrb r2, [r6, #4]
	strb r2, [sb, #4]
	str r1, [sp, #8]
	strb r5, [sp, #0xc]
	strb r0, [sp, #0xd]
	bl FUN_021E26E4
	ldrh r0, [r0, #0x1a]
	strh r0, [sp, #0xe]
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x10]
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	mov r6, #0
	str r0, [sp, #0x14]
	mov r4, r6
_021E781C:
	bl FUN_021E26E4
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r4
	bl FUN_021FFEB0
	mov r1, r0
	ldrb r0, [sp, #0xd]
	mov r2, r7
	mov r3, sb
	add r0, r0, #0x14
	str r0, [sp]
	ldr r0, [r5, #0xe4]
	bl FUN_02203CC4
	cmp r0, #0
	addeq sp, sp, #0x9c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r0, #2
	addne sp, sp, #0x9c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _021E781C
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021E7880: .word 0x0220D398

	arm_func_start FUN_021E7884
FUN_021E7884: ; 0x021E7884
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x224
	mov fp, r0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr sl, [sp, #0x248]
	ldr sb, [sp, #0x24c]
	mov r8, #0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E78E0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	beq _021E78D8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a6]
	cmp r0, #0
	beq _021E7900
_021E78D8:
	cmp fp, #6
	bne _021E7900
_021E78E0:
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, fp
	mov r3, sl
	str sb, [sp]
	bl FUN_021E776C
	mov r4, r0
	b _021E79A0
_021E7900:
	cmp sl, #0
	beq _021E7978
	cmp sb, #0
	beq _021E7978
	ldr r3, [sl]
	ldr r2, _021E7A3C ; =0x0220D394
	add r0, sp, #0x20
	mov r1, #0x200
	bl OS_SNPrintf
	mov r8, r0
	cmp sb, #1
	mov r7, #1
	ble _021E7978
	add r6, sp, #0x10
	mov r5, #0x10
_021E793C:
	ldr r3, [sl, r7, lsl #2]
	ldr r2, _021E7A40 ; =0x0220D414
	mov r0, r6
	mov r1, r5
	bl OS_SNPrintf
	mov r4, r0
	add r1, sp, #0x20
	mov r0, r6
	add r1, r1, r8
	mov r2, r4
	bl MI_CpuCopy8
	add r7, r7, #1
	add r8, r8, r4
	cmp r7, sb
	blt _021E793C
_021E7978:
	add r0, sp, #0x20
	mov r1, #0
	strb r1, [r0, r8]
	bl FUN_021E26E4
	ldr r0, [r0]
	ldr r2, [sp, #4]
	add r3, sp, #0x20
	mov r1, fp
	bl FUN_021E76C8
	mov r4, r0
_021E79A0:
	cmp fp, #2
	beq _021E79C0
	cmp fp, #6
	beq _021E79C0
	add r0, fp, #0xf8
	and r0, r0, #0xff
	cmp r0, #1
	bhi _021E7A30
_021E79C0:
	bl FUN_021E26E4
	strb fp, [r0, #0x3cc]
	bl FUN_021E26E4
	add r1, r0, #0x300
	ldr r0, [sp, #0xc]
	strh r0, [r1, #0xce]
	bl FUN_021E26E4
	ldr r1, [sp, #8]
	str r1, [r0, #0x3d0]
	bl FUN_021E26E4
	ldr r1, [sp, #4]
	str r1, [r0, #0x454]
	bl FUN_021E26E4
	str sb, [r0, #0x458]
	bl FUN_021E26E4
	mov r5, r0
	bl OS_GetTick
	str r0, [r5, #0x45c]
	str r1, [r5, #0x460]
	cmp sl, #0
	beq _021E7A30
	cmp sb, #0
	beq _021E7A30
	bl FUN_021E26E4
	add r1, r0, #0x3d4
	mov r0, sl
	mov r2, sb, lsl #2
	bl MIi_CpuCopy32
_021E7A30:
	mov r0, r4
	add sp, sp, #0x224
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021E7A3C: .word 0x0220D394
_021E7A40: .word 0x0220D414

	arm_func_start FUN_021E7A44
FUN_021E7A44: ; 0x021E7A44
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldrb r0, [r7]
	cmp r0, #0
	bne _021E7A9C
	bl FUN_021E26E4
	mov r4, r0
	mov r1, #0
	ldr r0, [r7, #4]
	mov r2, r1
	bl FUN_021FFEB0
	mov r1, r0
	ldrh r2, [r7, #2]
	ldr r0, [r4, #0xe4]
	ldr r3, [r7, #8]
	bl FUN_02203C7C
	bl FUN_021E38E8
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021E7A9C:
	ldr r5, _021E7AFC ; =FUN_021E2784
	ldr r4, _021E7B00 ; =FUN_021E2B60
	mov r6, #0
_021E7AA8:
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD43C
	str r5, [sp]
	str r7, [sp, #4]
	ldrb r2, [r7]
	ldr r1, [r7, #8]
	mov r3, r4
	bl FUN_022006EC
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r6, r6, #1
	cmp r6, #5
	blt _021E7AA8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7AFC: .word FUN_021E2784
_021E7B00: .word FUN_021E2B60

	arm_func_start FUN_021E7B04
FUN_021E7B04: ; 0x021E7B04
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r8, r1
	mov r7, r2
	bl FUN_021E26E4
	cmp r4, #0
	ldrb r6, [r0, #0x14]
	mov r4, #0
	bne _021E7D48
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	add r1, r0, #0x100
	ldr r2, [r5, #0x200]
	ldr r0, _021E7DEC ; =0x0000FFFF
	ldrh r1, [r1, #0x7e]
	and r2, r2, r0
	mov r0, r7
	orr r8, r2, r1, lsl #16
	bl FUN_022038C4
	cmp r0, #0
	beq _021E7BC0
	mov r0, r7
	bl FUN_02203908
	mov r5, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203BCC
	cmp r5, r0
	movne r5, #1
	bne _021E7C48
	bl FUN_021E26E4
	mov r5, r0
	mov r0, r7
	bl FUN_022038BC
	add r1, r5, r6, lsl #2
	str r0, [r1, #0x210]
	bl FUN_021E26E4
	mov r5, r0
	mov r0, r7
	bl FUN_02203898
	add r1, r5, r6, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, r4
	b _021E7C48
_021E7BC0:
	bl FUN_0209A60C
	mov r0, r0, lsl #0x10
	ldr r1, _021E7DEC ; =0x0000FFFF
	ldr r2, _021E7DF0 ; =0x0000A8C0
	and r1, r1, r0, lsr #16
	cmp r1, r2
	mov r0, r0, lsr #0x10
	beq _021E7C08
	and r1, r0, #0xff
	cmp r1, #0xac
	bne _021E7C00
	and r0, r0, #0xff00
	cmp r0, #0x1000
	blo _021E7C00
	cmp r0, #0x1f00
	bls _021E7C08
_021E7C00:
	cmp r1, #0x10
	bne _021E7C10
_021E7C08:
	mov r5, #1
	b _021E7C48
_021E7C10:
	bl FUN_021E26E4
	mov r5, r0
	mov r0, r7
	bl FUN_02203908
	add r1, r5, r6, lsl #2
	str r0, [r1, #0x210]
	bl FUN_021E26E4
	mov r5, r0
	mov r0, r7
	bl FUN_022038E4
	add r1, r5, r6, lsl #1
	add r1, r1, #0x200
	strh r0, [r1, #0x90]
	mov r5, #0
_021E7C48:
	cmp r5, #0
	beq _021E7C74
	bl FUN_021E26E4
	mov r6, r0
	mov r0, #0x10000
	bl FUN_021DE8C8
	add r1, r6, #0x100
	strh r0, [r1, #0x7e]
	bl FUN_021E26E4
	str r8, [r0, #0x19c]
	b _021E7D00
_021E7C74:
	bl FUN_0209A60C
	str r0, [sp, #8]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD454
	str r0, [sp, #0xc]
	bl FUN_021E26E4
	mov sb, r0
	mov r0, r7
	bl FUN_02203908
	mov r8, r0
	mov r0, r7
	bl FUN_022038E4
	add r1, sb, r6, lsl #2
	add r6, sp, #8
	mov r3, r0
	mov r0, #2
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [r1, #0xf4]
	mov r2, r8
	mov r0, #6
	bl FUN_021E7884
	mov r6, r0
	bl FUN_021E26E4
	mov r1, #0
	cmp r6, #0
	strb r1, [r0, #0x3cd]
	addne sp, sp, #0x14
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E7D00:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x194]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x195]
	bl FUN_021E26E4
	mov r6, r0
	mov r0, r7
	bl FUN_022038E4
	add r1, r6, #0x100
	strh r0, [r1, #0x96]
	bl FUN_021E26E4
	mov r6, r0
	mov r0, r7
	bl FUN_02203908
	str r0, [r6, #0x198]
	b _021E7D88
_021E7D48:
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x194]
	bl FUN_021E26E4
	mov r1, r4
	strb r1, [r0, #0x195]
	bl FUN_021E26E4
	add r0, r0, #0x100
	mov r1, r4
	strh r1, [r0, #0x96]
	bl FUN_021E26E4
	mov r1, r4
	str r1, [r0, #0x198]
	bl FUN_021E26E4
	str r8, [r0, #0x19c]
	mov r5, #1
_021E7D88:
	cmp r5, #0
	beq _021E7DA4
	bl FUN_021E26E4
	add r0, r0, #0x194
	bl FUN_021E7A44
	mov r4, r0
	b _021E7DE0
_021E7DA4:
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD43C
	mov r5, r0
	bl FUN_021E26E4
	add r3, r0, #0x194
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl FUN_021E2784
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
_021E7DE0:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021E7DEC: .word 0x0000FFFF
_021E7DF0: .word 0x0000A8C0

	arm_func_start FUN_021E7DF4
FUN_021E7DF4: ; 0x021E7DF4
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	mov lr, #3
	ldr ip, _021E7E48 ; =0x0220D3AC
	str lr, [sp]
	str ip, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, _021E7E4C ; =0x0220D3CC
	ldr r1, _021E7E50 ; =0x0220D3D8
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r2, _021E7E54 ; =0x0220D418
	ldr r3, _021E7E58 ; =0x0220D3E4
	mov r1, #0x100
	str ip, [sp, #0x20]
	bl OS_SNPrintf
	add sp, sp, #0x24
	ldmfd sp!, {pc}
	.align 2, 0
_021E7E48: .word 0x0220D3AC
_021E7E4C: .word 0x0220D3CC
_021E7E50: .word 0x0220D3D8
_021E7E54: .word 0x0220D418
_021E7E58: .word 0x0220D3E4

	arm_func_start FUN_021E7E5C
FUN_021E7E5C: ; 0x021E7E5C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1b0
	mov r7, #8
	mov r6, #0xa
	mov r5, #0x32
	mov r4, #0x33
	mov r3, #0x34
	mov r2, #0x35
	mov r1, #0x36
	strb r7, [sp, #0x10c]
	strb r6, [sp, #0x10d]
	strb r5, [sp, #0x10e]
	strb r4, [sp, #0x10f]
	strb r3, [sp, #0x110]
	strb r2, [sp, #0x111]
	strb r1, [sp, #0x112]
	mov r5, r0
	mov r4, #7
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E7EC4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E7EF4
_021E7EC4:
	add r1, sp, #0x100
	ldr r2, _021E8020 ; =0x02210704
	add r1, r1, #0x13
	mov r3, #0
_021E7ED4:
	ldrb r0, [r2]
	add r3, r3, #1
	add r2, r2, #0xc
	cmp r0, #0
	strneb r0, [r1], #1
	addne r4, r4, #1
	cmp r3, #0x9a
	blt _021E7ED4
_021E7EF4:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021E7FAC
_021E7F08: ; jump table
	b _021E7FAC ; case 0
	b _021E7FAC ; case 1
	b _021E7F8C ; case 2
	b _021E7F20 ; case 3
	b _021E7F8C ; case 4
	b _021E7F8C ; case 5
_021E7F20:
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	bne _021E7F84
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldr r1, [r6, #0x200]
	ldrb r2, [r5, #0x16]
	ldrb r3, [r0, #0x15]
	add r0, sp, #0xc
	bl FUN_021E7DF4
	ldr r0, _021E8024 ; =0x022106E0
	ldr r5, [r0]
	cmp r5, #0
	beq _021E7FAC
	add r0, sp, #0xc
	ldr r2, _021E8028 ; =0x0220D470
	mov r3, r0
	mov r1, #0x100
	str r5, [sp]
	bl OS_SNPrintf
	b _021E7FAC
_021E7F84:
	bl FUN_021E26E4
	ldr r5, [r0, #0x208]
_021E7F8C:
	ldr r2, _021E802C ; =0x0220D47C
	ldr r3, _021E8030 ; =0x0220D3AC
	add r0, sp, #0xc
	mov r1, #0x100
	str r5, [sp]
	bl OS_SNPrintf
	bl FUN_021E26E4
	str r5, [r0, #0x204]
_021E7FAC:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203C04
	mov sl, #0
	add sb, sp, #0xc
	add r5, sp, #0x10c
	mov r6, sl
	mov r8, #6
	mov r7, #1
_021E7FD0:
	bl FUN_021E26E4
	str r4, [sp]
	str sb, [sp, #4]
	str r8, [sp, #8]
	ldr r0, [r0, #0xe4]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl FUN_02203D1C
	cmp r0, #0
	addeq sp, sp, #0x1b0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r0, #2
	addne sp, sp, #0x1b0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add sl, sl, #1
	cmp sl, #5
	blt _021E7FD0
	add sp, sp, #0x1b0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021E8020: .word 0x02210704
_021E8024: .word 0x022106E0
_021E8028: .word 0x0220D470
_021E802C: .word 0x0220D47C
_021E8030: .word 0x0220D3AC

	arm_func_start FUN_021E8034
FUN_021E8034: ; 0x021E8034
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021E8074
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203E80
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe4]
_021E8074:
	bl FUN_02200D6C
	mov r0, #0
	bl FUN_021E26D0
	ldr r0, _021E80C0 ; =0x022106E0
	ldr r1, [r0]
	cmp r1, #0
	beq _021E80A8
	mov r0, #4
	mov r2, #0
	bl FUN_021DD904
	ldr r0, _021E80C0 ; =0x022106E0
	mov r1, #0
	str r1, [r0]
_021E80A8:
	bl FUN_021E4164
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x18]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E80C0: .word 0x022106E0

	arm_func_start FUN_021E80C4
FUN_021E80C4: ; 0x021E80C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021E8174
	bl FUN_021E26E4
	strb r7, [r0, #0x15]
	bl FUN_021E26E4
	strb r6, [r0, #0x16]
	bl FUN_021E26E4
	str r5, [r0, #0x464]
	bl FUN_021E26E4
	str r4, [r0, #0x468]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17d]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x2d0]
	mov r0, #0x32
	ldr r1, _021E8160 ; =0x0220D3AC
	bl FUN_0220277C
	mov r0, #0x33
	ldr r1, _021E8164 ; =0x0220D3CC
	bl FUN_0220277C
	mov r0, #0x34
	ldr r1, _021E8168 ; =0x0220D3D8
	bl FUN_0220277C
	mov r0, #0x35
	ldr r1, _021E816C ; =0x0220D3E4
	bl FUN_0220277C
	mov r0, #0x36
	ldr r1, _021E8170 ; =0x0220D3A0
	bl FUN_0220277C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E8160: .word 0x0220D3AC
_021E8164: .word 0x0220D3CC
_021E8168: .word 0x0220D3D8
_021E816C: .word 0x0220D3E4
_021E8170: .word 0x0220D3A0

	arm_func_start FUN_021E8174
FUN_021E8174: ; 0x021E8174
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xc]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17c]
	bl FUN_021E26E4
	mov r5, r0
	mov r0, #0x10000
	bl FUN_021DE8C8
	add r1, r5, #0x100
	strh r0, [r1, #0x7e]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x180]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x184]
	str r1, [r0, #0x188]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a4]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a9]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1aa]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ab]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ac]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a7]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a8]
	bl FUN_021E26E4
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb2]
	bl FUN_021E26E4
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb4]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1b8]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1e0]
	str r1, [r0, #0x1e4]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1f0]
	str r1, [r0, #0x1f4]
	bl FUN_021E26E4
	add r1, r0, #0x3cc
	mov r0, #0
	mov r2, #0x98
	bl MIi_CpuClear32
	cmp r4, #2
	bne _021E82F0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x14]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E82CC
	mov r0, #1
	bl FUN_021E26D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021E82CC:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r0, #0xa
	bl FUN_021E26D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021E82F0:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xd]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xe]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x14]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe8]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a5]
	bl FUN_021E26E4
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb0]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1bc]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c0]
	str r1, [r0, #0x1c4]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1cc]
	str r1, [r0, #0x1d0]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1d4]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x204]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x208]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x2f0]
	bl FUN_021E26E4
	add r1, r0, #0x24
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl FUN_021E26E4
	add r1, r0, #0xa4
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	bl FUN_021E26E4
	add r1, r0, #0xf4
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl FUN_021E26E4
	add r1, r0, #0x194
	mov r0, #0
	mov r2, #0xc
	bl MIi_CpuClear32
	bl FUN_021E26E4
	add r1, r0, #0x210
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	bl FUN_021E26E4
	add r1, r0, #0x290
	mov r0, #0
	mov r2, #0x40
	bl MIi_CpuClear16
	bl FUN_021E26E4
	add r0, r0, #0x2d0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	bl FUN_021E26E4
	add r1, r0, #0x348
	mov r0, #0
	mov r2, #0x84
	bl MIi_CpuClear32
	cmp r4, #1
	bne _021E84A8
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E8484
	mov r0, #3
	bl FUN_021E26D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021E8484:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r0, #4
	bl FUN_021E26D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021E84A8:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x15]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x16]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x18]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20c]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1a6]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ad]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1f8]
	str r1, [r0, #0x1fc]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x46c]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x470]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021E852C
FUN_021E852C: ; 0x021E852C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E854C
FUN_021E854C: ; 0x021E854C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0
	bl FUN_021E26F4
	ldr r0, _021E85C8 ; =0x022106E0
	ldr r1, [r0]
	cmp r1, #0
	beq _021E8584
	mov r0, #4
	mov r2, #0
	bl FUN_021DD904
	ldr r0, _021E85C8 ; =0x022106E0
	mov r1, #0
	str r1, [r0]
_021E8584:
	bl FUN_021E4164
	ldr r0, _021E85CC ; =0x022106D4
	ldr r1, [r0]
	cmp r1, #0
	beq _021E85B0
	mov r0, #4
	mov r2, #0
	bl FUN_021DD904
	ldr r0, _021E85CC ; =0x022106D4
	mov r1, #0
	str r1, [r0]
_021E85B0:
	ldr r0, _021E85D0 ; =0x022106DC
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021E85C8: .word 0x022106E0
_021E85CC: .word 0x022106D4
_021E85D0: .word 0x022106DC

	arm_func_start FUN_021E85D4
FUN_021E85D4: ; 0x021E85D4
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addne sp, sp, #0x2c
	movne r0, #0
	ldmneia sp!, {pc}
	bl FUN_021E26E4
	ldrb r1, [r0, #0x16]
	ldr r2, _021E8694 ; =0x0220D394
	add r0, sp, #0
	add r3, r1, #1
	mov r1, #0xc
	bl OS_SNPrintf
	ldr r0, _021E8698 ; =0x0220D484
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl FUN_021DEB54
	bl FUN_021E26E4
	ldrb r2, [r0, #0xd]
	add r0, sp, #0
	mov r1, #0xc
	add r3, r2, #1
	ldr r2, _021E8694 ; =0x0220D394
	bl OS_SNPrintf
	ldr r0, _021E869C ; =0x0220D488
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl FUN_021DEB0C
	ldr r2, _021E8694 ; =0x0220D394
	add r0, sp, #0
	mov r1, #0xc
	mov r3, #3
	bl OS_SNPrintf
	ldr r0, _021E86A0 ; =0x0220D3F4
	add r1, sp, #0
	add r2, sp, #0xc
	mov r3, #0x2f
	bl FUN_021DEB0C
	mov r0, #6
	add r1, sp, #0xc
	mov r2, #0
	bl FUN_021E1E30
	add sp, sp, #0x2c
	ldmfd sp!, {pc}
	.align 2, 0
_021E8694: .word 0x0220D394
_021E8698: .word 0x0220D484
_021E869C: .word 0x0220D488
_021E86A0: .word 0x0220D3F4

	arm_func_start FUN_021E86A4
FUN_021E86A4: ; 0x021E86A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl FUN_021E26E4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _021E8748 ; =0x022106E4
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	mov r6, #0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	blt _021E8730
	ldr r5, _021E8748 ; =0x022106E4
	mov r4, #1
_021E86E8:
	bl FUN_021E26E4
	mov r8, r0
	bl FUN_021E26E4
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	ldr r1, [r8, #0x2f0]
	mov r0, r4,lsl  r0
	ands r0, r1, r0
	beq _021E8730
	bl FUN_021E26E4
	add r0, r0, r6
	ldrb r0, [r0, #0x2d0]
	add r6, r6, #1
	strb r0, [r5], #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xe]
	cmp r6, r0
	ble _021E86E8
_021E8730:
	ldr r0, _021E8748 ; =0x022106E4
	str r0, [r7]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xe]
	add r0, r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021E8748: .word 0x022106E4

	arm_func_start FUN_021E874C
FUN_021E874C: ; 0x021E874C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021E26E4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021E26E4
	add r0, r0, #0x2d0
	str r0, [r4]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E8780
FUN_021E8780: ; 0x021E8780
	stmdb sp!, {r4, r5, r6, lr}
	mvn r6, #0
	mov r5, #0
	mov r4, #1
_021E8790:
	bl FUN_021E26E4
	mov r1, r4,lsl  r5
	ldr r0, [r0, #0x2f0]
	add r5, r5, #1
	ands r0, r1, r0
	addne r6, r6, #1
	cmp r5, #0x20
	blt _021E8790
	mvn r0, #0
	cmp r6, r0
	bne _021E87CC
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
_021E87CC:
	bl FUN_021E26E4
	strb r6, [r0, #0xe]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E87D8
FUN_021E87D8: ; 0x021E87D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0xe]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E8804
FUN_021E8804: ; 0x021E8804
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E8830
FUN_021E8830: ; 0x021E8830
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r8, r1
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_021E26E4
	add r0, r0, sb, lsl #2
	ldr fp, [r0, #0xf4]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	add r0, r0, sb
	ldrb r0, [r0, #0x2d0]
	mov r1, #1
	ldr r2, [r4, #0x2f0]
	mvn r0, r1, lsl r0
	and r0, r2, r0
	str r0, [r4, #0x2f0]
	bl FUN_021E8780
	sub r0, r8, #1
	cmp sb, r0
	bge _021E8970
	sub r0, r8, sb
	sub r6, r0, #1
	cmp r6, #0
	mov r7, #0
	ble _021E8970
_021E88AC:
	add r4, sb, r7
	add r5, r4, #1
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x24]
	add r0, sl, r4, lsl #2
	str r1, [r0, #0x24]
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r0, r0, r5, lsl #1
	ldrh r1, [r0, #0xa4]
	add r0, sl, r4, lsl #1
	strh r1, [r0, #0xa4]
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r1, sl, r4, lsl #2
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xf4]
	str r0, [r1, #0xf4]
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r1, sl, r4, lsl #2
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x210]
	str r0, [r1, #0x210]
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r1, sl, r4, lsl #1
	add r1, r1, #0x200
	add r0, r0, r5, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0x90]
	strh r0, [r1, #0x90]
	bl FUN_021E26E4
	mov sl, r0
	bl FUN_021E26E4
	add r1, r0, r5
	add r0, sl, r4
	ldrb r1, [r1, #0x2d0]
	add r7, r7, #1
	cmp r7, r6
	strb r1, [r0, #0x2d0]
	blt _021E88AC
_021E8970:
	cmp r8, #0
	ble _021E89E0
	sub r4, r8, #1
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x24]
	bl FUN_021E26E4
	add r0, r0, r4, lsl #1
	mov r1, #0
	strh r1, [r0, #0xa4]
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0xf4]
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	mov r1, #0
	str r1, [r0, #0x210]
	bl FUN_021E26E4
	add r0, r0, r4, lsl #1
	add r0, r0, #0x200
	mov r1, #0
	strh r1, [r0, #0x90]
	bl FUN_021E26E4
	add r0, r0, r4
	mov r1, #0
	strb r1, [r0, #0x2d0]
_021E89E0:
	mov r0, fp
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_021E89EC
FUN_021E89EC: ; 0x021E89EC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_021E26E4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	mov r4, #0
	ble _021E8A48
_021E8A14:
	bl FUN_021E26E4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r6, r0
	bne _021E8A3C
	mov r0, r4
	mov r1, r5
	bl FUN_021E8830
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021E8A3C:
	add r4, r4, #1
	cmp r4, r5
	blt _021E8A14
_021E8A48:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E8A50
FUN_021E8A50: ; 0x021E8A50
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021E59D4
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E8A74
FUN_021E8A74: ; 0x021E8A74
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_021DF88C
	cmp r0, #5
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	cmp r5, #0
	beq _021E8AD4
	ldr r1, _021E8C00 ; =0xFFFEC780
	mov r0, r5
	add r1, r4, r1
	bl FUN_021E8E08
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, pc}
_021E8AD4:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x2d0]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a9]
	cmp r0, #1
	beq _021E8B10
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a8]
	cmp r0, #1
	beq _021E8B10
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a8]
	cmp r0, #2
	bne _021E8B1C
_021E8B10:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, pc}
_021E8B1C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	cmp r0, #0
	beq _021E8B44
	bl FUN_021E26E4
	ldr r0, [r0, #0x19c]
	bl FUN_022006B4
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x19c]
_021E8B44:
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _021E8B84
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a8]
	cmp r0, #0
	bne _021E8BF4
	bl FUN_021E26E4
	mov r1, #3
	strb r1, [r0, #0x1a8]
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD45C
	b _021E8BF4
_021E8B84:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E8BA4
	ldr r1, _021E8C04 ; =0xFFFEC5D2
	mov r0, #6
	bl FUN_021E8E08
	b _021E8BF4
_021E8BA4:
	bl FUN_021E26E4
	ldr r0, [r0, #0x208]
	cmp r0, #0
	beq _021E8BBC
	bl FUN_021E4BF4
	b _021E8BF4
_021E8BBC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E8BEC
	mov r0, #0x12
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0x1f0]
	str r1, [r4, #0x1f4]
	b _021E8BF4
_021E8BEC:
	mov r0, #1
	bl FUN_021E4CF8
_021E8BF4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021E8C00: .word 0xFFFEC780
_021E8C04: .word 0xFFFEC5D2

	arm_func_start FUN_021E8C08
FUN_021E8C08: ; 0x021E8C08
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r2
	cmp r1, #2
	beq _021E8C30
	cmp r1, #3
	beq _021E8CDC
	cmp r1, #4
	beq _021E8DA4
	ldmia sp!, {r4, r5, r6, pc}
_021E8C30:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #1
	bne _021E8CCC
	ldrb r0, [r4]
	cmp r0, #1
	bne _021E8C58
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x20c]
_021E8C58:
	ldrb r6, [r4, #1]
	bl FUN_021E26E4
	ldrb r1, [r4, #2]
	add r0, r0, r6
	strb r1, [r0, #0x2d0]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r1, [r0, #0x200]
	add r0, r4, r6, lsl #2
	str r1, [r0, #0xf4]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E8CA4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #1
	bne _021E8CB8
_021E8CA4:
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
_021E8CB8:
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ad]
	mov r0, #9
	bl FUN_021E26D0
_021E8CCC:
	mov r0, r5
	mov r1, #3
	bl FUN_021E4910
	ldmia sp!, {r4, r5, r6, pc}
_021E8CDC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x10
	bne _021E8D94
	bl FUN_021E26E4
	ldr r2, [r0, #0x1d4]
	mov r1, #1
	orr r1, r2, r1, lsl r5
	str r1, [r0, #0x1d4]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	orr r4, r1, r0, lsl #8
	bl FUN_021E26E4
	add r0, r0, #0x100
	ldrh r0, [r0, #0xb0]
	cmp r4, r0
	ble _021E8D2C
	bl FUN_021E26E4
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_021E8D2C:
	mov r0, #0
	bl FUN_021E3EC4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x1d4]
	cmp r4, r0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	blt _021E8D88
	mov r4, #4
_021E8D60:
	bl FUN_021E26E4
	add r0, r0, r5
	ldrb r0, [r0, #0x2d0]
	mov r1, r4
	bl FUN_021E4910
	add r5, r5, #1
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r5, r0
	ble _021E8D60
_021E8D88:
	mov r0, #0x11
	bl FUN_021E26D0
	ldmia sp!, {r4, r5, r6, pc}
_021E8D94:
	mov r0, r5
	mov r1, #4
	bl FUN_021E4910
	ldmia sp!, {r4, r5, r6, pc}
_021E8DA4:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #9
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, #4
	bl FUN_021E51C0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021E8DC0
FUN_021E8DC0: ; 0x021E8DC0
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x14]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x16]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E8E08
FUN_021E8E08: ; 0x021E8E08
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_021E4B40
	mov r0, r4
	mov r1, r5
	bl FUN_021DD6B0
	ldr r1, _021E8EC8 ; =0x0220D3F0
	mov r0, #1
	mov r2, #0
	bl FUN_021E1E30
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	moveq r7, #1
	movne r7, #0
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x20c]
	bl FUN_021E1F18
	mov r5, r0
	bl FUN_021E26E4
	str r5, [sp]
	ldr r1, [r0, #0x468]
	mov r0, r4
	str r1, [sp, #4]
	ldr r4, [r6, #0x464]
	mov r2, r8
	mov r3, r7
	mov r1, #0
	blx r4
	bl FUN_021E8034
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021E8EC8: .word 0x0220D3F0

	arm_func_start FUN_021E8ECC
FUN_021E8ECC: ; 0x021E8ECC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021E26E4
	mov r1, #0xff
	strb r1, [r0, #0x3cc]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x3cd]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021E8EF4
FUN_021E8EF4: ; 0x021E8EF4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x21c
	mov fp, r2
	mov sl, #0
	str r1, [sp, #8]
	add sb, sp, #0xc
	add r5, sp, #0x1c
	mov r7, sl
	add r8, fp, #1
	mov r6, #0xa
	mvn r4, #0
_021E8F20:
	mov r0, sb
	mov r1, r8
	mov r2, sl
	bl FUN_021E761C
	cmp r0, r4
	beq _021E8F58
	mov r0, sb
	mov r1, r7
	mov r2, r6
	bl strtoul
	str r0, [r5, sl, lsl #2]
	add sl, sl, #1
	cmp sl, #0x80
	blt _021E8F20
_021E8F58:
	add r0, sp, #0x1c
	str r0, [sp]
	str sl, [sp, #4]
	ldrb r0, [fp]
	mov r2, #0
	ldr r1, [sp, #8]
	mov r3, r2
	bl FUN_021E6730
	add sp, sp, #0x21c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_021E8F80
FUN_021E8F80: ; 0x021E8F80
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	mov r4, r1
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	beq _021E8FC4
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021E8FC4:
	cmp r4, #0
	beq _021E9140
	cmp r4, #5
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #6
	bne _021E9114
	bl FUN_021E26E4
	ldrb r1, [r0, #0xc]
	add r1, r1, #1
	strb r1, [r0, #0xc]
	bl FUN_021E26E4
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bls _021E9030
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xc]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9030:
	bl FUN_021E26E4
	ldr r3, [r0, #0x200]
	ldr r2, _021E91F8 ; =0x0220D394
	add r0, sp, #0x10
	mov r1, #0xc
	bl OS_SNPrintf
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r2, [r6, #0x14]
	ldrb r1, [r0, #0x14]
	add r0, r7, r2, lsl #2
	add r1, r5, r1, lsl #1
	add r1, r1, #0x200
	ldrh r1, [r1, #0x90]
	ldr r0, [r0, #0x210]
	mov r2, #0
	bl FUN_021FFEB0
	mov r5, r0
	bl FUN_021E26E4
	mvn r1, #0
	str r1, [sp]
	ldr r3, _021E91FC ; =0x00001388
	mov r1, #0
	str r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r5
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #4]
	add r3, sp, #0x10
	ldr r0, [r0]
	bl FUN_021FD52C
	cmp r0, #1
	bne _021E90E0
	bl FUN_021E36B0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E90E0:
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x14]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9114:
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	add sp, sp, #0x1c
	cmp r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9140:
	bl FUN_021DF704
	mov r5, r0
	mvn r1, #0
	cmp r5, r1
	bne _021E9168
	ldr r1, _021E9200 ; =0xFFFEABC4
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9168:
	bl FUN_021DF6BC
	mov r4, r0
	mov r0, r5
	bl FUN_021DF638
	str r6, [r4]
	mov r4, r0
	bl FUN_021E26E4
	ldrb r2, [r0, #0xd]
	mov r1, #0
	add r2, r2, #1
	strb r2, [r0, #0xd]
	strb r5, [r4]
	strh r1, [r4, #2]
	str r1, [r4, #4]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r2, [r0, #0xd]
	mov r0, r6
	mov r1, r4
	add r2, r5, r2
	ldrb r2, [r2, #0x2d0]
	strb r2, [r4, #1]
	bl FUN_021FD3F8
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xc
	bne _021E91E8
	mov r0, #0
	bl FUN_021E51C0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E91E8:
	mov r0, #1
	bl FUN_021E51C0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E91F8: .word 0x0220D394
_021E91FC: .word 0x00001388
_021E9200: .word 0xFFFEABC4

	arm_func_start FUN_021E9204
FUN_021E9204: ; 0x021E9204
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_021E26E4
	cmp r0, #0
	beq _021E9244
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #7
	bne _021E9244
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	beq _021E925C
_021E9244:
	ldr r1, _021E944C ; =0x0220D48C
	mov r0, r8
	mvn r2, #0
	bl FUN_021FD6B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021E925C:
	bl FUN_021DF704
	mov r5, r0
	mvn r2, #0
	cmp r5, r2
	bne _021E9290
	ldr r1, _021E9450 ; =0x0220D498
	mov r0, r8
	bl FUN_021FD6B0
	ldr r1, _021E9454 ; =0xFFFEABC4
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021E9290:
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0x210]
	cmp r7, r0
	bne _021E92D4
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	ldrh r0, [r0, #0x90]
	cmp r6, r0
	beq _021E9364
_021E92D4:
	ldr r0, [sp, #0x24]
	ldrb r1, [r0]
	cmp r1, #0
	beq _021E934C
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	mov r4, r0
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, sb, r0, lsl #2
	ldr r0, [r0, #0xf4]
	cmp r4, r0
	bne _021E934C
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	str r7, [r0, #0x210]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #1
	add r0, r0, #0x200
	strh r6, [r0, #0x90]
	b _021E9364
_021E934C:
	ldr r1, _021E9458 ; =0x0220D4A4
	mov r0, r8
	mvn r2, #0
	bl FUN_021FD6B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021E9364:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl FUN_021E26E4
	ldr r1, [r0, #8]
	mov r0, r8
	bl FUN_021FD6BC
	cmp r0, #0
	bne _021E93A0
	ldr r1, _021E945C ; =0xFFFEC5E6
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021E93A0:
	bl FUN_021E8ECC
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	bne _021E93D4
	ldr r1, [sp, #0x20]
	ldr r0, _021E9460 ; =0x0000FFFF
	mov r4, r1, asr #1
	cmp r4, r0
	movge r4, r0
	bl FUN_021E26E4
	add r0, r0, #0x100
	strh r4, [r0, #0xb0]
_021E93D4:
	mov r0, r5
	bl FUN_021DF6BC
	mov r4, r0
	mov r0, r5
	bl FUN_021DF638
	str r8, [r4]
	mov r4, r0
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	add r1, r1, #1
	strb r1, [r0, #0xd]
	strb r5, [r4]
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	mov r0, r8
	mov r2, #0
	sub r1, r1, #1
	add r1, r5, r1
	ldrb r3, [r1, #0x2d0]
	mov r1, r4
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	str r2, [r4, #4]
	bl FUN_021FD3F8
	mov r0, #2
	bl FUN_021E51C0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021E944C: .word 0x0220D48C
_021E9450: .word 0x0220D498
_021E9454: .word 0xFFFEABC4
_021E9458: .word 0x0220D4A4
_021E945C: .word 0xFFFEC5E6
_021E9460: .word 0x0000FFFF

	arm_func_start FUN_021E9464
FUN_021E9464: ; 0x021E9464
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, [sp, #0x18]
	mov r5, r1
	mov r6, r2
	mov r4, r3
	cmp r0, #0
	beq _021E948C
	cmp r4, #0
	bne _021E9498
_021E948C:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E9498:
	add r1, sp, #0
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClear32
	mov r1, r6, asr #8
	mov r0, r6, lsl #8
	mov r2, #2
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strb r2, [sp, #1]
	strh r0, [sp, #2]
	str r5, [sp, #4]
	ldrb r5, [r4]
	cmp r5, #0xfe
	bne _021E94E4
	ldrb r0, [r4, #1]
	cmp r0, #0xfd
	beq _021E94EC
_021E94E4:
	cmp r5, #0x5c
	bne _021E9518
_021E94EC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021E9558
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x18]
	add r3, sp, #0
	mov r1, r4
	bl FUN_022011A8
	b _021E9558
_021E9518:
	ldr r1, _021E9564 ; =0x0220F018
	mov r0, r4
	mov r2, #6
	bl memcmp
	cmp r0, #0
	bne _021E9544
	ldr r1, [sp, #0x18]
	add r2, sp, #0
	mov r0, r4
	bl FUN_021FFF78
	b _021E9558
_021E9544:
	cmp r5, #0xfe
	moveq r0, #0
	add sp, sp, #8
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021E9558:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021E9564: .word 0x0220F018

	arm_func_start FUN_021E9568
FUN_021E9568: ; 0x021E9568
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	bl FUN_021E26E4
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _021E95E4
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021E95B8
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202534
_021E95B8:
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD6D4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E95E4:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _021E9D04
_021E960C: ; jump table
	b _021E9D04 ; case 0
	b _021E9C0C ; case 1
	b _021E97B8 ; case 2
	b _021E97B8 ; case 3
	b _021E9644 ; case 4
	b _021E97B8 ; case 5
	b _021E9D04 ; case 6
	b _021E9870 ; case 7
	b _021E9D04 ; case 8
	b _021E9D04 ; case 9
	b _021E9D04 ; case 10
	b _021E99F8 ; case 11
	b _021E9D04 ; case 12
	b _021E9AEC ; case 13
_021E9644:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1c8]
	cmp r0, #0
	beq _021E9730
	bl OS_GetTick
	mov r6, r0
	mov r7, r1
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	ldr r1, [r5, #0x1cc]
	ldr r0, [r5, #0x1d0]
	subs r2, r6, r1
	sbc r0, r7, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	ldr r1, [r4, #0x1c8]
	cmpeq r0, r1
	bls _021E9730
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c8]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #3
	bne _021E971C
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1aa]
	add r1, r1, #1
	strb r1, [r0, #0x1aa]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1aa]
	cmp r0, #5
	bls _021E96F8
	ldr r1, _021E9EFC ; =0xFFFEC5D2
	mov r0, #6
	bl FUN_021E8E08
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E96F8:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl FUN_021E6038
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E9730
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E971C:
	mov r0, #0
	bl FUN_021E5C44
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021E9730:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1bc]
	cmp r0, #0
	beq _021E9D04
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	ldr r0, _021E9F00 ; =0x00000BB8
	mla r5, r1, r0, r0
	bl OS_GetTick
	mov r4, r0
	mov r6, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1c0]
	ldr r0, [r0, #0x1c4]
	subs r2, r4, r1
	sbc r0, r6, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, r5
	blo _021E9D04
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl FUN_021E6038
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E97B8:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe8]
	cmp r0, #0
	ble _021E9D04
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #3
	bne _021E97EC
	bl FUN_021E26E4
	ldrb r1, [r0, #0xd]
	ldr r0, _021E9F00 ; =0x00000BB8
	mla r5, r1, r0, r0
	b _021E9800
_021E97EC:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe8]
	cmp r0, #1
	moveq r5, #0x3e8
	ldrne r5, _021E9F00 ; =0x00000BB8
_021E9800:
	bl OS_GetTick
	mov r4, r0
	mov r6, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0xec]
	ldr r0, [r0, #0xf0]
	subs r3, r4, r1
	sbc r0, r6, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, r5
	bls _021E9D04
	bl FUN_021E26E4
	ldr r0, [r0, #0x204]
	bl FUN_021E7E5C
	bl FUN_021E38E8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe8]
	b _021E9D04
_021E9870:
	bl FUN_021E26E4
	ldr r2, [r0, #0x18c]
	ldr r1, [r0, #0x190]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _021E9900
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x18c]
	ldr r0, [r0, #0x190]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F04 ; =0x000061A8
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9D04
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x18c]
	str r1, [r0, #0x190]
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5908
	cmp r0, #0
	bne _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9900:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x3cc]
	cmp r0, #6
	bne _021E9D04
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F08 ; =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9D04
	bl FUN_021E26E4
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x3cd]
	cmp r0, #5
	bls _021E9998
	bl FUN_021E8ECC
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5908
	cmp r0, #0
	bne _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9998:
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #6
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E99F8:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x3cc]
	cmp r0, #2
	bne _021E9D04
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _021E9A60
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F08 ; =0x00001770
	cmp r1, #0
	cmpeq r0, r2
	bhi _021E9AB8
_021E9A60:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E9D04
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F0C ; =0x00004A38
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9D04
_021E9AB8:
	bl FUN_021E8ECC
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r0, #1
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	cmp r0, #0
	bne _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9AEC:
	bl FUN_021E26E4
	ldrb r0, [r0, #0x3cc]
	cmp r0, #8
	bne _021E9D04
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x45c]
	ldr r0, [r0, #0x460]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F10 ; =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9D04
	bl FUN_021E26E4
	ldrb r1, [r0, #0x3cd]
	add r1, r1, #1
	strb r1, [r0, #0x3cd]
	bl FUN_021E26E4
	ldrb r0, [r0, #0x3cd]
	cmp r0, #0
	beq _021E9BAC
	bl FUN_021E8ECC
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bne _021E9BA4
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	add r0, r4, r0, lsl #2
	ldr r0, [r0, #0xf4]
	bl FUN_021E59D4
	cmp r0, #0
	bne _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9BA4:
	bl FUN_021E4CB4
	b _021E9D04
_021E9BAC:
	bl FUN_021E26E4
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	add r1, r4, #0x3d4
	str r1, [sp]
	add r3, r5, #0x300
	ldr r1, [r0, #0x458]
	mov r0, #8
	str r1, [sp, #4]
	ldr r1, [r7, #0x454]
	ldr r2, [r6, #0x3d0]
	ldrh r3, [r3, #0xce]
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	beq _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9C0C:
	bl FUN_021DF88C
	cmp r0, #5
	bne _021E9D04
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1f8]
	ldr r0, [r0, #0x1fc]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F10 ; =0x00007530
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9D04
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1ad]
	cmp r0, #5
	blo _021E9C8C
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	bl FUN_021E5908
	cmp r0, #0
	bne _021E9D04
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_021E9C8C:
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldrh r3, [r0, #0xa4]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4, #0x24]
	mov r0, #0x40
	bl FUN_021E7884
	bl FUN_021E61EC
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldrb r1, [r0, #0x1ad]
	add r1, r1, #1
	strb r1, [r0, #0x1ad]
	bl FUN_021E26E4
	mov r4, r0
	bl OS_GetTick
	ldr r2, _021E9F14 ; =0xFF403B3A
	mvn r3, #0
	adds r0, r0, r2
	str r0, [r4, #0x1f8]
	adc r0, r1, r3
	str r0, [r4, #0x1fc]
_021E9D04:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	beq _021E9D24
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #6
	bne _021E9DA0
_021E9D24:
	bl FUN_021E26E4
	ldr r2, [r0, #0x184]
	ldr r1, [r0, #0x188]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r0
	beq _021E9DA0
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x184]
	ldr r0, [r0, #0x188]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F18 ; =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9DA0
	bl FUN_021E26E4
	mov r1, #0
	add r3, r0, #0x194
	mov r2, r1
	mov r0, #1
	bl FUN_021E2784
_021E9DA0:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	beq _021E9DBC
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	bl FUN_02203C38
_021E9DBC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_021E9F1C
	bl FUN_02200468
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E9DEC
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD6D4
_021E9DEC:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0x12
	bne _021E9E54
	bl OS_GetTick
	mov r4, r0
	mov r5, r1
	bl FUN_021E26E4
	ldr r1, [r0, #0x1f0]
	ldr r0, [r0, #0x1f4]
	subs r3, r4, r1
	sbc r0, r5, r0
	mov r1, r0, lsl #6
	ldr r2, _021E9EF8 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	ldr r2, _021E9F00 ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	bls _021E9E54
	bl FUN_021E4BF4
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021E9E54:
	bl FUN_021E4684
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E41C4
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E39F0
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1ae]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xa
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldrb r0, [r0, #0xd]
	strb r0, [r4, #0x16]
	bl FUN_021E85D4
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1ae]
	bl FUN_021E26E4
	ldr r0, [r0, #0x47c]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x480]
	ldr r1, [r4, #0x47c]
	blx r1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9EF8: .word 0x000082EA
_021E9EFC: .word 0xFFFEC5D2
_021E9F00: .word 0x00000BB8
_021E9F04: .word 0x000061A8
_021E9F08: .word 0x00001770
_021E9F0C: .word 0x00004A38
_021E9F10: .word 0x00007530
_021E9F14: .word 0xFF403B3A
_021E9F18: .word 0x00002710

	arm_func_start FUN_021E9F1C
FUN_021E9F1C: ; 0x021E9F1C
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	bl FUN_02202534
	ldr r0, [r4, #0xb4]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl FUN_021E26E4
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _021E9F5C
	cmp r0, #1
	beq _021E9F5C
	cmp r0, #2
	beq _021E9FB0
	ldmia sp!, {r4, pc}
_021E9F5C:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_021E9F70: ; jump table
	ldmia sp!, {r4, pc} ; case 0
	b _021E9FA0 ; case 1
	b _021E9FA0 ; case 2
	b _021E9FA0 ; case 3
	b _021E9FA0 ; case 4
	ldmia sp!, {r4, pc} ; case 5
	b _021E9FA0 ; case 6
	ldmia sp!, {r4, pc} ; case 7
	ldmia sp!, {r4, pc} ; case 8
	ldmia sp!, {r4, pc} ; case 9
	ldmia sp!, {r4, pc} ; case 10
	b _021E9FA0 ; case 11
_021E9FA0:
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	ldmia sp!, {r4, pc}
_021E9FB0:
	bl FUN_021E26E4
	ldr r0, [r0, #0x1a0]
	cmp r0, #0xb
	ldmneia sp!, {r4, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021E9FD0
FUN_021E9FD0: ; 0x021E9FD0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r2
	mov r6, r0
	mov r4, r3
	mov r2, r1
	mov r3, r5
	mov r0, #3
	mov r1, #0
	bl FUN_021E80C4
	bl FUN_021E26E4
	str r4, [r0, #0x46c]
	bl FUN_021E26E4
	ldr r1, [sp, #0x28]
	str r1, [r0, #0x470]
	bl FUN_021E26E4
	mov r1, #1
	strb r1, [r0, #0x17]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	str r0, [r4, #0x20]
	bl FUN_021E26E4
	str r6, [r0, #0xf4]
	mov r0, #4
	bl FUN_021E26D0
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021EA0A4
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	mov r5, r0
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	mov r2, r0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	ldr r0, _021EA130 ; =FUN_021E32E4
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x2f4]
	ldr r1, [r4, #0x2f4]
	ldr r2, [r2, #0x2f8]
	bl FUN_02203EA4
	str r0, [r6, #0xe4]
_021EA0A4:
	bl FUN_021E26E4
	ldr r0, [r0, #0xe4]
	cmp r0, #0
	bne _021EA0C8
	mov r0, #5
	bl FUN_021E38E8
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
_021EA0C8:
	ldr r1, _021EA134 ; =0x0220D3F0
	mov r0, #5
	mov r2, #0
	bl FUN_021E1E30
	bl FUN_021E397C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021EA110
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	bl FUN_021EA1E0
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, pc}
_021EA110:
	bl FUN_021E26E4
	ldr r0, [r0, #0xf4]
	mov r1, #0
	bl FUN_021E6038
	bl FUN_021E61EC
	cmp r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EA130: .word FUN_021E32E4
_021EA134: .word 0x0220D3F0

	arm_func_start FUN_021EA138
FUN_021EA138: ; 0x021EA138
	stmdb sp!, {r4, lr}
	mov lr, r1
	mov ip, r2
	mov r4, r3
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #2
	bl FUN_021E80C4
	bl FUN_021E26E4
	str r4, [r0, #0x46c]
	bl FUN_021E26E4
	ldr r1, [sp, #8]
	str r1, [r0, #0x470]
	bl FUN_021E26E4
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	str r0, [r4, #0xf4]
	bl FUN_021E26E4
	mov r1, #1
	str r1, [r0, #0x2f0]
	bl FUN_021E26E4
	mov r2, #0
	strb r2, [r0, #0xe]
	ldr r1, _021EA1DC ; =0x022106DC
	mov r0, #0xa
	strb r2, [r1, #1]
	bl FUN_021E26D0
	bl FUN_021E85D4
	bl FUN_021E397C
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	bl FUN_021E26E4
	ldr r0, [r0, #0x200]
	bl FUN_021EA1E0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EA1DC: .word 0x022106DC

	arm_func_start FUN_021EA1E0
FUN_021EA1E0: ; 0x021EA1E0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	addne sp, sp, #0x2c
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_021E26E4
	str r4, [r0, #0x200]
	mov sl, #0
	ldr fp, _021EA344 ; =FUN_021E2E18
	mov r4, sl
	mov r5, #1
_021EA21C:
	bl FUN_021E26E4
	mov sb, r0
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD43C
	mov r8, r0
	bl FUN_021E26E4
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_021FD454
	mov r7, r0
	bl FUN_021E26E4
	mov r6, r0
	bl FUN_021E26E4
	ldr r3, [r0, #0x2f8]
	mov r1, r8
	str r3, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r3, _021EA348 ; =FUN_021E2E14
	str fp, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, _021EA34C ; =FUN_021E2E10
	mov r2, r7
	str r3, [sp, #0x14]
	ldr r3, _021EA350 ; =FUN_021E2D68
	add r0, sb, #0x10
	str r3, [sp, #0x18]
	ldr r3, _021EA354 ; =FUN_021E2D60
	str r3, [sp, #0x1c]
	ldr r3, _021EA358 ; =FUN_021E2D54
	str r3, [sp, #0x20]
	str r4, [sp, #0x24]
	ldr r3, [r6, #0x2f4]
	bl FUN_022025B0
	movs r6, r0
	beq _021EA2E4
	cmp r6, #3
	bne _021EA2C4
	cmp sl, #4
	bne _021EA2D8
_021EA2C4:
	mov r0, r6
	bl FUN_021E3800
	add sp, sp, #0x2c
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EA2D8:
	add sl, sl, #1
	cmp sl, #5
	blt _021EA21C
_021EA2E4:
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c]
	bl FUN_021E26E4
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	ldr r1, _021EA35C ; =FUN_021E2D2C
	bl FUN_02202568
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	ldr r1, _021EA360 ; =FUN_021E2C78
	bl FUN_02202598
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	ldr r1, _021EA364 ; =FUN_021E2B64
	bl FUN_02202580
	bl FUN_021E26E4
	ldr r0, [r0, #0x10]
	bl FUN_02202308
	mov r0, r6
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EA344: .word FUN_021E2E18
_021EA348: .word FUN_021E2E14
_021EA34C: .word FUN_021E2E10
_021EA350: .word FUN_021E2D68
_021EA354: .word FUN_021E2D60
_021EA358: .word FUN_021E2D54
_021EA35C: .word FUN_021E2D2C
_021EA360: .word FUN_021E2C78
_021EA364: .word FUN_021E2B64

	arm_func_start FUN_021EA368
FUN_021EA368: ; 0x021EA368
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021E26F4
	bl FUN_021E26E4
	str r6, [r0]
	bl FUN_021E26E4
	str r5, [r0, #4]
	bl FUN_021E26E4
	str r4, [r0, #8]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x10]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1c]
	bl FUN_021E26E4
	mov r1, #0
	strh r1, [r0, #0x1a]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0xe4]
	mov r0, r1
	bl FUN_021E26D0
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0xf]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x19]
	bl FUN_021E26E4
	mov r1, #0
	strb r1, [r0, #0x1af]
	bl FUN_021E26E4
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #0xb6]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x1dc]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x200]
	bl FUN_021E26E4
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x2f4]
	bl FUN_021E26E4
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x2f8]
	bl FUN_021E26E4
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x2fc]
	bl FUN_021E26E4
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x300]
	bl FUN_021E26E4
	add r0, r0, #0x304
	mov r1, #0
	mov r2, #0x40
	bl MI_CpuFill8
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x344]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x464]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x468]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x474]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x478]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x47c]
	bl FUN_021E26E4
	mov r1, #0
	str r1, [r0, #0x480]
	bl FUN_021E4164
	ldr r1, _021EA4D0 ; =0x022106DC
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strh r0, [r1, #2]
	bl FUN_021E8174
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EA4D0: .word 0x022106DC

	arm_func_start FUN_021EA4D4
FUN_021EA4D4: ; 0x021EA4D4
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl FUN_021E26E4
	cmp r0, #0
	beq _021EA518
	bl FUN_021DF88C
	cmp r0, #5
	bne _021EA518
	bl FUN_021E26E4
	ldrb r0, [r0, #0x1a9]
	cmp r0, #0
	beq _021EA524
_021EA518:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021EA524:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EA530
FUN_021EA530: ; 0x021EA530
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021EA4D4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
	bl FUN_021E4F94
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EA55C
FUN_021EA55C: ; 0x021EA55C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DF760
	bl FUN_021FD444
	ldr r1, _021EA584 ; =0xFFFFFDF9
	add r0, r0, r1
	cmp r0, #0
	movle r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EA584: .word 0xFFFFFDF9

	arm_func_start FUN_021EA588
FUN_021EA588: ; 0x021EA588
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_021EA9AC
	ldrb r1, [r0, #0x1e]
	strb r1, [r0, #0x1d]
	ldrh r1, [r0, #0x22]
	cmp r1, #2
	beq _021EA5C4
	cmp r1, #3
	beq _021EA5C4
	cmp r1, #4
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
_021EA5C4:
	mov r0, r5
	mov r2, r4
	bl FUN_021E8C08
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EA5D8
FUN_021EA5D8: ; 0x021EA5D8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r3, _021EA6D0 ; =0x02210E3C
	mov r7, r0
	ldr r4, [r3]
	mov r3, #0x30
	mla r4, r7, r3, r4
	mov r6, r1
	mov r5, r2
	bl FUN_021EA974
	cmp r0, #2
	bne _021EA644
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #8]
	add r1, r3, r5
	cmp r1, r0
	ble _021EA630
	ldr r1, _021EA6D4 ; =0xFFFE82AC
	mov r0, #6
	bl FUN_021DD6B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EA630:
	ldr r1, [r4, #4]
	mov r0, r6
	mov r2, r5
	add r1, r1, r3
	bl MI_CpuCopy8
_021EA644:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, r2
	bne _021EA694
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, _021EA6D0 ; =0x02210E3C
	str r1, [r4, #0x18]
	ldr r0, [r0]
	ldr r3, [r0, #0x604]
	cmp r3, #0
	beq _021EA694
	ldr r1, [r4, #4]
	mov r0, r7
	blx r3
_021EA694:
	ldr r0, _021EA6D0 ; =0x02210E3C
	ldr r0, [r0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl OS_GetTick
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA6D0: .word 0x02210E3C
_021EA6D4: .word 0xFFFE82AC

	arm_func_start FUN_021EA6D8
FUN_021EA6D8: ; 0x021EA6D8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r4, _021EA79C ; =0x02210E3C
	mov r3, #0x30
	ldr r4, [r4]
	mov r7, r1
	mla r5, r0, r3, r4
	mov r6, r2
	bl FUN_021EA974
	strb r0, [r5, #0x1e]
	mov r0, r7
	bl FUN_021EAD6C
	mov r4, r0
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021EA790
_021EA718: ; jump table
	b _021EA790 ; case 0
	b _021EA72C ; case 1
	b _021EA788 ; case 2
	b _021EA788 ; case 3
	b _021EA788 ; case 4
_021EA72C:
	cmp r6, #8
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	bl MI_CpuCopy8
	ldr r1, [sp]
	mov r0, #0
	str r1, [r5, #0x18]
	str r0, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EA77C
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	movge r0, #2
	strgeb r0, [r5, #0x1d]
	bge _021EA790
_021EA77C:
	mov r0, #4
	strb r0, [r5, #0x1d]
	b _021EA790
_021EA788:
	mov r0, #3
	strb r0, [r5, #0x1d]
_021EA790:
	strh r4, [r5, #0x22]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA79C: .word 0x02210E3C

	arm_func_start FUN_021EA7A0
FUN_021EA7A0: ; 0x021EA7A0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r1
	mov r6, r2
	bl FUN_021DF748
	ldr r1, _021EA854 ; =0x02210E3C
	mov r4, r0
	ldr r1, [r1]
	mov r0, #0x30
	mla r5, r4, r0, r1
	ldr r1, [r5, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #8]
	cmp r0, r6
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, _021EA854 ; =0x02210E3C
	ldr r0, [r0]
	ldr r3, [r0, #0x604]
	cmp r3, #0
	beq _021EA818
	ldr r1, [r5, #4]
	mov r0, r4
	mov r2, r6
	blx r3
_021EA818:
	ldr r0, _021EA854 ; =0x02210E3C
	ldr r0, [r0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	bl OS_GetTick
	str r0, [r5, #0x24]
	str r1, [r5, #0x28]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EA854: .word 0x02210E3C

	arm_func_start FUN_021EA858
FUN_021EA858: ; 0x021EA858
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	bl FUN_021DF748
	mov r4, r0
	bl FUN_021EA974
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021EA934
_021EA87C: ; jump table
	b _021EA890 ; case 0
	b _021EA8BC ; case 1
	b _021EA8D0 ; case 2
	b _021EA8E4 ; case 3
	b _021EA8F8 ; case 4
_021EA890:
	mov r0, r6
	bl FUN_021EAD6C
	cmp r0, #2
	ldmloia sp!, {r4, r5, r6, pc}
	cmp r0, #4
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_021EA6D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8BC:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_021EA6D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8D0:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_021EA5D8
	ldmia sp!, {r4, r5, r6, pc}
_021EA8E4:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_021EA588
	ldmia sp!, {r4, r5, r6, pc}
_021EA8F8:
	mov r0, #0x30
	mul ip, r4, r0
	ldr r0, _021EA944 ; =0x02210E3C
	mov r3, #1
	ldr r1, [r0]
	mov r2, #0
	add r1, r1, ip
	strb r3, [r1, #0x1d]
	ldr r1, [r0]
	add r1, r1, ip
	str r2, [r1, #0x10]
	ldr r0, [r0]
	add r0, r0, ip
	str r2, [r0, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
_021EA934:
	ldr r1, _021EA948 ; =0xFFFE82B6
	mov r0, #6
	bl FUN_021DD6B0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EA944: .word 0x02210E3C
_021EA948: .word 0xFFFE82B6

	arm_func_start FUN_021EA94C
FUN_021EA94C: ; 0x021EA94C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021DF760
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_021FD498
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EA974
FUN_021EA974: ; 0x021EA974
	ldr r2, _021EA98C ; =0x02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_021EA98C: .word 0x02210E3C

	arm_func_start FUN_021EA990
FUN_021EA990: ; 0x021EA990
	ldr r2, _021EA9A8 ; =0x02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_021EA9A8: .word 0x02210E3C

	arm_func_start FUN_021EA9AC
FUN_021EA9AC: ; 0x021EA9AC
	ldr r2, _021EA9C0 ; =0x02210E3C
	mov r1, #0x30
	ldr r2, [r2]
	mla r0, r1, r0, r2
	bx lr
	.align 2, 0
_021EA9C0: .word 0x02210E3C

	arm_func_start FUN_021EA9C4
FUN_021EA9C4: ; 0x021EA9C4
	ldr r0, _021EA9D4 ; =0x02210E3C
	mov r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_021EA9D4: .word 0x02210E3C

	arm_func_start FUN_021EA9D8
FUN_021EA9D8: ; 0x021EA9D8
	ldr r2, _021EAA60 ; =0x02210E3C
	ldr r3, [r2]
	cmp r3, #0
	bxeq lr
	mov r1, #0x30
	mul r1, r0, r1
	add r0, r3, r1
	mov r3, #0
	str r3, [r0, #0xc]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x10]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x14]
	ldr r0, [r2]
	add r0, r0, r1
	str r3, [r0, #0x18]
	ldr r0, [r2]
	add r0, r0, r1
	strb r3, [r0, #0x1c]
	ldr r0, [r2]
	add r2, r0, #0x1d
	ldrb r0, [r2, r1]
	add r2, r2, r1
	cmp r0, #0
	movne r0, #1
	strneb r0, [r2]
	ldr r0, _021EAA60 ; =0x02210E3C
	mov r2, #0
	ldr r0, [r0]
	add r0, r0, r1
	strh r2, [r0, #0x22]
	bx lr
	.align 2, 0
_021EAA60: .word 0x02210E3C

	arm_func_start FUN_021EAA64
FUN_021EAA64: ; 0x021EAA64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r0, _021EAC14 ; =0x02210E3C
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl FUN_021DF8F4
	mov sb, r0
	cmp sb, #0
	mov r8, #0
	addle sp, sp, #0xc
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021EAC14 ; =0x02210E3C
	str r8, [sp]
	str r8, [sp, #4]
	mov fp, #1
_021EAAAC:
	ldr r0, [sp, #8]
	ldrb r7, [r0, r8]
	mov r0, r7
	bl FUN_021DF8A8
	cmp r0, #0
	beq _021EAB44
	mov r0, r7
	bl FUN_021EA9AC
	ldr r1, [r4]
	mov r6, r0
	ldr r0, [r1, #0x608]
	cmp r0, #0
	beq _021EAB44
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq _021EAB44
	bl OS_GetTick
	mov sl, r1
	ldr r2, [r6, #0x24]
	mov r5, r0
	subs r2, r5, r2
	ldr r1, [r6, #0x28]
	mov r0, r2, lsl #6
	sbc r1, sl, r1
	mov r1, r1, lsl #6
	orr r1, r1, r2, lsr #26
	ldr r2, _021EAC18 ; =0x000082EA
	ldr r3, [sp]
	bl _ll_udiv
	ldr r1, [r6, #0x2c]
	cmp r0, r1
	bls _021EAB44
	ldr r1, [r4]
	mov r0, r7
	ldr r1, [r1, #0x608]
	blx r1
	str r5, [r6, #0x24]
	str sl, [r6, #0x28]
_021EAB44:
	bl FUN_021DF95C
	cmp r7, r0
	beq _021EAC00
	mov r0, r7
	bl FUN_021EA990
	cmp r0, #1
	bne _021EAC00
	mov r0, r7
	bl FUN_021EA9AC
	mov r5, r0
	ldr r0, [r4]
	ldr r2, [r5, #0x14]
	add r0, r0, #0x600
	ldr r1, [r5, #0xc]
	ldrh r6, [r0, #0x10]
	sub r0, r2, r1
	cmp r0, r6
	movle r6, r0
	mov r0, r7
	bl FUN_021EA55C
	cmp r0, r6
	blt _021EAC00
	ldr r3, [r5]
	ldr r1, [r5, #0xc]
	mov r0, r7
	mov r2, r6
	add r1, r3, r1
	mov r3, fp
	bl FUN_021EA94C
	ldr r0, [r5, #0xc]
	add r0, r0, r6
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bne _021EAC00
	ldr r1, [sp, #4]
	strb r1, [r5, #0x1c]
	str r1, [r5]
	str r1, [r5, #0xc]
	str r1, [r5, #0x14]
	ldr r1, [r4]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021EAC00
	mov r1, r7
	blx r2
_021EAC00:
	add r8, r8, #1
	cmp r8, sb
	blt _021EAAAC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EAC14: .word 0x02210E3C
_021EAC18: .word 0x000082EA

	arm_func_start FUN_021EAC1C
FUN_021EAC1C: ; 0x021EAC1C
	stmdb sp!, {r4, lr}
	ldr r2, _021EAC58 ; =0x02210E3C
	mov r4, r1
	ldr r1, [r2]
	ldr r1, [r1, #0x60c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021DF748
	ldr r2, _021EAC58 ; =0x02210E3C
	mov r1, r0
	ldr r2, [r2]
	mov r0, r4
	ldr r2, [r2, #0x60c]
	blx r2
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EAC58: .word 0x02210E3C

	arm_func_start FUN_021EAC5C
FUN_021EAC5C: ; 0x021EAC5C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _021EACB0 ; =0x02210E3C
	ldr ip, [ip]
	cmp ip, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	cmp r3, #0
	beq _021EACA4
	bl FUN_021EA858
	add sp, sp, #4
	ldmfd sp!, {pc}
_021EACA4:
	bl FUN_021EA7A0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EACB0: .word 0x02210E3C

	arm_func_start FUN_021EACB4
FUN_021EACB4: ; 0x021EACB4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021EACEC ; =0x02210E3C
	ldr r2, _021EACF0 ; =0x00000614
	mov r1, #0
	str r0, [r3]
	bl MI_CpuFill8
	ldr r0, _021EACEC ; =0x02210E3C
	ldr r1, _021EACF4 ; =0x000005B9
	ldr r0, [r0]
	add r0, r0, #0x600
	strh r1, [r0, #0x10]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EACEC: .word 0x02210E3C
_021EACF0: .word 0x00000614
_021EACF4: .word 0x000005B9

	arm_func_start FUN_021EACF8
FUN_021EACF8: ; 0x021EACF8
	stmdb sp!, {r4, lr}
	ldr r2, _021EAD40 ; =0x02210E3C
	ldr r3, [r2]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x30
	mul r4, r0, r2
	add r0, r3, r4
	str r1, [r0, #0x2c]
	bl OS_GetTick
	ldr r2, _021EAD40 ; =0x02210E3C
	ldr r2, [r2]
	add r2, r2, r4
	str r0, [r2, #0x24]
	str r1, [r2, #0x28]
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EAD40: .word 0x02210E3C

	arm_func_start FUN_021EAD44
FUN_021EAD44: ; 0x021EAD44
	cmp r0, #2
	beq _021EAD5C
	cmp r0, #3
	beq _021EAD5C
	cmp r0, #4
	bne _021EAD64
_021EAD5C:
	mov r0, #0xc
	bx lr
_021EAD64:
	mov r0, #8
	bx lr

	arm_func_start FUN_021EAD6C
FUN_021EAD6C: ; 0x021EAD6C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	add r1, sp, #0
	mov r2, #8
	bl MI_CpuCopy8
	ldr r1, _021EADA4 ; =0x0220D4BC
	add r0, sp, #6
	mov r2, #2
	bl memcmp
	cmp r0, #0
	ldreqh r0, [sp, #4]
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021EADA4: .word 0x0220D4BC

	arm_func_start FUN_021EADA8
FUN_021EADA8: ; 0x021EADA8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r1, _021EADD4 ; =0x0220D4BC
	add r0, r6, #6
	mov r2, #2
	bl strncpy
	strh r5, [r6, #4]
	str r4, [r6]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EADD4: .word 0x0220D4BC

	arm_func_start FUN_021EADD8
FUN_021EADD8: ; 0x021EADD8
	ldr r1, _021EADF4 ; =0x02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x608]
	movne r0, #1
	bx lr
	.align 2, 0
_021EADF4: .word 0x02210E3C

	arm_func_start FUN_021EADF8
FUN_021EADF8: ; 0x021EADF8
	ldr r1, _021EAE14 ; =0x02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x604]
	movne r0, #1
	bx lr
	.align 2, 0
_021EAE14: .word 0x02210E3C

	arm_func_start FUN_021EAE18
FUN_021EAE18: ; 0x021EAE18
	ldr r1, _021EAE34 ; =0x02210E3C
	ldr r1, [r1]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x600]
	movne r0, #1
	bx lr
	.align 2, 0
_021EAE34: .word 0x02210E3C

	arm_func_start FUN_021EAE38
FUN_021EAE38: ; 0x021EAE38
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_021EA9AC
	mov r4, r0
	mov r0, r7
	bl FUN_021EA974
	cmp r0, #2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	str r1, [r4, #0x18]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021EAE90
FUN_021EAE90: ; 0x021EAE90
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	mov r4, r2
	bl FUN_021DD6D4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_021DF8A8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021EAF1C ; =0x02210E3C
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x10]
	cmp r4, r0
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_021EA94C
	ldr r0, _021EAF1C ; =0x02210E3C
	ldr r0, [r0]
	ldr r2, [r0, #0x600]
	cmp r2, #0
	beq _021EAF14
	mov r0, r4
	mov r1, r5
	blx r2
_021EAF14:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EAF1C: .word 0x02210E3C

	arm_func_start FUN_021EAF20
FUN_021EAF20: ; 0x021EAF20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl FUN_021EA9AC
	mov r4, r0
	mov r0, r7
	mov r1, r8
	bl FUN_021EB06C
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #1
	strb r0, [r4, #0x1c]
	str r6, [r4]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, sp, #0
	mov r1, r8
	mov r2, r5
	str r5, [r4, #0x14]
	bl FUN_021EADA8
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	mov r3, #1
	bl FUN_021EA94C
	ldr r0, _021EB040 ; =0x02210E3C
	ldr r0, [r0]
	add r0, r0, #0x600
	ldrh sb, [r0, #0x10]
	mov r0, r7
	cmp r5, sb
	movle sb, r5
	bl FUN_021EA55C
	cmp sb, r0
	addgt sp, sp, #0xc
	movgt r0, #1
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r6
	mov r2, sb
	mov r3, #1
	bl FUN_021EA94C
	ldr r0, [r4, #0xc]
	add r0, r0, sb
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	cmp r1, r0
	bne _021EB034
	mov r2, #0
	strb r2, [r4, #0x1c]
	str r2, [r4]
	str r2, [r4, #0xc]
	ldr r1, _021EB040 ; =0x02210E3C
	str r2, [r4, #0x14]
	ldr r1, [r1]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021EB034
	cmp r8, #1
	bne _021EB034
	mov r1, r7
	blx r2
_021EB034:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021EB040: .word 0x02210E3C

	arm_func_start FUN_021EB044
FUN_021EB044: ; 0x021EB044
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #1
	bl FUN_021EAF20
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EB06C
FUN_021EB06C: ; 0x021EB06C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	bl FUN_021DD6D4
	cmp r0, #0
	bne _021EB0B0
	cmp r5, #1
	bne _021EB0A0
	mov r0, r4
	bl FUN_021DF8A8
	cmp r0, #0
	beq _021EB0B0
_021EB0A0:
	mov r0, r4
	bl FUN_021DF5F0
	cmp r0, #0
	bne _021EB0BC
_021EB0B0:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021EB0BC:
	mov r0, r4
	bl FUN_021EA990
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r4
	bl FUN_021EA55C
	mov r4, r0
	mov r0, r5
	bl FUN_021EAD44
	cmp r4, r0
	movge r0, #1
	movlt r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EB0FC
FUN_021EB0FC: ; 0x021EB0FC
	ldr ip, _021EB108 ; =FUN_021EB06C
	mov r1, #1
	bx ip
	.align 2, 0
_021EB108: .word FUN_021EB06C

	arm_func_start FUN_021EB10C
FUN_021EB10C: ; 0x021EB10C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r0, _021EB178 ; =0x02210E40
	ldr r7, [r0]
	cmp r7, #0
	beq _021EB164
	mov r5, #4
	mov r4, #0
_021EB12C:
	mov r6, r7
	ldr r1, [r6, #0x10]
	ldr r7, [r7, #0x18]
	cmp r1, #0
	beq _021EB14C
	mov r0, r5
	mov r2, r4
	bl FUN_021DD904
_021EB14C:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_021DD904
	cmp r7, #0
	bne _021EB12C
_021EB164:
	ldr r0, _021EB178 ; =0x02210E40
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EB178: .word 0x02210E40

	arm_func_start FUN_021EB17C
FUN_021EB17C: ; 0x021EB17C
	stmdb sp!, {r4, lr}
	ldr r1, _021EB1FC ; =0x02210E40
	ldr r1, [r1]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	cmp r1, r0
	bne _021EB1B4
	mov r0, #4
	mov r2, #0
	ldr r4, [r1, #0x18]
	bl FUN_021DD904
	ldr r0, _021EB1FC ; =0x02210E40
	str r4, [r0]
	ldmia sp!, {r4, pc}
_021EB1B4:
	ldr r2, [r1, #0x18]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
_021EB1C0:
	cmp r2, r0
	movne r1, r2
	bne _021EB1EC
	ldr ip, [r1, #0x18]
	mov r0, #4
	ldr r3, [ip, #0x18]
	mov r2, #0
	str r3, [r1, #0x18]
	mov r1, ip
	bl FUN_021DD904
	ldmia sp!, {r4, pc}
_021EB1EC:
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _021EB1C0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB1FC: .word 0x02210E40

	arm_func_start FUN_021EB200
FUN_021EB200: ; 0x021EB200
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x1c
	bl FUN_021DD944
	movs ip, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [ip, #0x18]
	ldr r1, _021EB258 ; =0x02210E40
	str r0, [ip, #0x10]
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, ip
	streq ip, [r1]
	strne r0, [ip, #0x18]
	movne r0, ip
	strne ip, [r1]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB258: .word 0x02210E40

	arm_func_start FUN_021EB25C
FUN_021EB25C: ; 0x021EB25C
	stmdb sp!, {r4, lr}
	movs r4, r0
	mov r0, #7
	ldr r1, _021EB39C ; =0xFFFE8130
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r4, #7
	cmp r2, #0x1a
	addls pc, pc, r2, lsl #2
	b _021EB390
_021EB284: ; jump table
	b _021EB2F0 ; case 0
	b _021EB2F8 ; case 1
	b _021EB304 ; case 2
	b _021EB30C ; case 3
	b _021EB30C ; case 4
	b _021EB30C ; case 5
	b _021EB314 ; case 6
	b _021EB390 ; case 7
	b _021EB320 ; case 8
	b _021EB32C ; case 9
	b _021EB334 ; case 10
	b _021EB340 ; case 11
	b _021EB348 ; case 12
	b _021EB350 ; case 13
	b _021EB358 ; case 14
	b _021EB360 ; case 15
	b _021EB360 ; case 16
	b _021EB360 ; case 17
	b _021EB350 ; case 18
	b _021EB350 ; case 19
	b _021EB36C ; case 20
	b _021EB36C ; case 21
	b _021EB374 ; case 22
	b _021EB380 ; case 23
	b _021EB388 ; case 24
	b _021EB390 ; case 25
	b _021EB320 ; case 26
_021EB2F0:
	sub r1, r1, #0x320
	b _021EB390
_021EB2F8:
	ldr r2, _021EB3A0 ; =0xFFFFFCD6
	add r1, r1, r2
	b _021EB390
_021EB304:
	sub r1, r1, #0x348
	b _021EB390
_021EB30C:
	sub r1, r1, #0x334
	b _021EB390
_021EB314:
	ldr r2, _021EB3A4 ; =0xFFFFFCC2
	add r1, r1, r2
	b _021EB390
_021EB320:
	sub r1, r1, #1
	mov r0, #9
	b _021EB390
_021EB32C:
	sub r1, r1, #0x348
	b _021EB390
_021EB334:
	ldr r2, _021EB3A8 ; =0xFFFFFCAE
	add r1, r1, r2
	b _021EB390
_021EB340:
	sub r1, r1, #0x1e
	b _021EB390
_021EB348:
	sub r1, r1, #0x32
	b _021EB390
_021EB350:
	sub r1, r1, #0x14
	b _021EB390
_021EB358:
	sub r1, r1, #0x35c
	b _021EB390
_021EB360:
	ldr r2, _021EB3AC ; =0xFFFFFC9A
	add r1, r1, r2
	b _021EB390
_021EB36C:
	sub r1, r1, #0x370
	b _021EB390
_021EB374:
	ldr r2, _021EB3B0 ; =0xFFFFFC86
	add r1, r1, r2
	b _021EB390
_021EB380:
	sub r1, r1, #0x384
	b _021EB390
_021EB388:
	ldr r2, _021EB3B4 ; =0xFFFFFC72
	add r1, r1, r2
_021EB390:
	bl FUN_021DD6B0
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB39C: .word 0xFFFE8130
_021EB3A0: .word 0xFFFFFCD6
_021EB3A4: .word 0xFFFFFCC2
_021EB3A8: .word 0xFFFFFCAE
_021EB3AC: .word 0xFFFFFC9A
_021EB3B0: .word 0xFFFFFC86
_021EB3B4: .word 0xFFFFFC72

	arm_func_start FUN_021EB3B8
FUN_021EB3B8: ; 0x021EB3B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r7, r1
	mov r6, r2
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #0x14
	mvnne r0, #7
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r2, #0
	mov r1, #1
	add r0, sp, #0
	str r6, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl FUN_021EB200
	movs r4, r0
	bne _021EB430
	mvn r0, #4
	bl FUN_021EB25C
	mov r0, #0
	mov r1, r0
	mov r3, r6
	mvn r2, #4
	blx r7
	add sp, sp, #0x14
	mvn r0, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EB430:
	ldr r2, _021EB47C ; =FUN_021EB480
	mov r0, r5
	mov r3, r4
	mov r1, #0
	bl FUN_02213D80
	movs r5, r0
	bpl _021EB46C
	bl FUN_021EB25C
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r6
	blx r7
	mov r0, r4
	bl FUN_021EB17C
_021EB46C:
	mov r0, r5
	str r5, [r4, #0x14]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EB47C: .word FUN_021EB480

	arm_func_start FUN_021EB480
FUN_021EB480: ; 0x021EB480
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r6, [sp, #0x18]
	mov r7, r1
	ldr r5, [r6, #4]
	ldr r4, [r6, #0xc]
	cmp r5, #0
	beq _021EB4DC
	cmp r7, #0
	bne _021EB4C0
	mov r1, r3
	mov r0, r2
	ldr r3, [r6]
	mov r2, r7
	blx r5
	b _021EB4DC
_021EB4C0:
	mov r0, r7
	bl FUN_021EB25C
	mov r0, #0
	ldr r3, [r6]
	mov r1, r0
	mov r2, r7
	blx r5
_021EB4DC:
	cmp r7, #0
	bne _021EB4EC
	cmp r4, #1
	bne _021EB508
_021EB4EC:
	ldr r1, [r6, #0x10]
	cmp r1, #0
	moveq r4, #1
	beq _021EB508
	mov r0, #4
	mov r2, #0
	bl FUN_021DD904
_021EB508:
	mov r0, r6
	bl FUN_021EB17C
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021EB524
FUN_021EB524: ; 0x021EB524
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021DD6D4
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl FUN_02213B08
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021EB598 ; =0x02210E44
	ldr r0, [r0]
	cmp r0, #0
	addle sp, sp, #4
	movle r0, #1
	ldmleia sp!, {pc}
	bl FUN_02213DBC
	ldr r0, _021EB598 ; =0x02210E44
	ldr r1, [r0]
	subs r1, r1, #1
	str r1, [r0]
	bne _021EB58C
	bl FUN_021EB10C
_021EB58C:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB598: .word 0x02210E44

	arm_func_start FUN_021EB59C
FUN_021EB59C: ; 0x021EB59C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02213E24
	ldr r1, _021EB5C4 ; =0x02210E44
	mov r0, #1
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB5C4: .word 0x02210E44

	arm_func_start FUN_021EB5C8
FUN_021EB5C8: ; 0x021EB5C8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r1, _021EB660 ; =0x02210E48
	ldr r0, _021EB664 ; =0x00000474
	ldr sl, [r1]
	mov r4, #0xc0
	ldrb r7, [sl, #0xd13]
	add r5, sl, r0
	ldrb r0, [sl, #0xd0d]
	mla sb, r7, r4, r5
	cmp r0, #6
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r6, [sl, #0xd12]
	mov r8, #0
	cmp r6, #0
	bls _021EB658
_021EB608:
	cmp r8, r7
	beq _021EB648
	add r0, sl, r8, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _021EB648
	mul r1, r8, r4
	add r0, sl, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	mov r0, sb
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EB648:
	add r0, r8, #1
	and r8, r0, #0xff
	cmp r8, r6
	blo _021EB608
_021EB658:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EB660: .word 0x02210E48
_021EB664: .word 0x00000474

	arm_func_start FUN_021EB668
FUN_021EB668: ; 0x021EB668
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021EB6A0 ; =0x02210E54
	mov r0, #8
	ldr r1, [r1]
	mov r2, #0xc
	bl FUN_021EB910
	ldr r0, _021EB6A4 ; =0x02210E48
	ldr r2, _021EB6A8 ; =0x00000D18
	ldr r1, [r0]
	mov r0, #0x10
	bl FUN_021EB910
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB6A0: .word 0x02210E54
_021EB6A4: .word 0x02210E48
_021EB6A8: .word 0x00000D18

	arm_func_start FUN_021EB6AC
FUN_021EB6AC: ; 0x021EB6AC
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr

	arm_func_start FUN_021EB6BC
FUN_021EB6BC: ; 0x021EB6BC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021EB6AC
	ldr r1, _021EB6DC ; =0x02210E58
	ldr r1, [r1]
	strb r0, [r1, #0x17]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EB6DC: .word 0x02210E58

	arm_func_start FUN_021EB6E0
FUN_021EB6E0: ; 0x021EB6E0
	ldr r0, _021EB6F0 ; =0x02210E58
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_021EB6F0: .word 0x02210E58

	arm_func_start FUN_021EB6F4
FUN_021EB6F4: ; 0x021EB6F4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	bl FUN_021EB798
	mov r4, r0
	str r5, [r4, #0xc]
	bl FUN_021EB720
	strb r0, [r4, #0xa]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EB720
FUN_021EB720: ; 0x021EB720
	ldr r0, _021EB730 ; =0x02210E58
	ldr r0, [r0]
	ldrb r0, [r0, #9]
	bx lr
	.align 2, 0
_021EB730: .word 0x02210E58

	arm_func_start FUN_021EB734
FUN_021EB734: ; 0x021EB734
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_021EB798
	mov r5, r0
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	ldmlsia sp!, {r4, r5, r6, pc}
	strb r6, [r5, #0x16]
	cmp r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl FUN_021EB6AC
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EB798
FUN_021EB798: ; 0x021EB798
	ands r1, r0, #1
	ldrne r0, _021EB7EC ; =0x02210E58
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #2
	ldrne r0, _021EB7F0 ; =0x02210E4C
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #4
	ldrne r0, _021EB7F4 ; =0x02210E50
	ldrne r0, [r0]
	bxne lr
	ands r1, r0, #8
	ldrne r0, _021EB7F8 ; =0x02210E54
	ldrne r0, [r0]
	bxne lr
	ands r0, r0, #0x10
	ldrne r0, _021EB7FC ; =0x02210E48
	ldrne r0, [r0]
	moveq r0, #0
	bx lr
	.align 2, 0
_021EB7EC: .word 0x02210E58
_021EB7F0: .word 0x02210E4C
_021EB7F4: .word 0x02210E50
_021EB7F8: .word 0x02210E54
_021EB7FC: .word 0x02210E48

	arm_func_start FUN_021EB800
FUN_021EB800: ; 0x021EB800
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl FUN_021EB798
	mov r4, r0
	ldrb r0, [r4, #8]
	ands r0, r0, #0x10
	beq _021EB844
	mov r0, #0x10
	bl FUN_021EB798
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _021EB90C ; =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
_021EB844:
	ldrb r0, [r4, #8]
	ands r0, r0, #8
	beq _021EB878
	mov r0, #8
	bl FUN_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_021EB878:
	ldrb r0, [r4, #8]
	ands r0, r0, #4
	beq _021EB8AC
	mov r0, #4
	bl FUN_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_021EB8AC:
	ldrb r0, [r4, #8]
	ands r0, r0, #2
	beq _021EB8E0
	mov r0, #2
	bl FUN_021EB798
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_021EB8E0:
	ldrb r0, [r4, #8]
	ands r1, r0, #1
	ldmeqia sp!, {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x18
	blx r3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EB90C: .word 0x00000D18

	arm_func_start FUN_021EB910
FUN_021EB910: ; 0x021EB910
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl FUN_021EB798
	ldrb r2, [r0, #8]
	ands r1, r2, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EB958
FUN_021EB958: ; 0x021EB958
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl FUN_021EB798
	ldrb r1, [r0, #8]
	ands r2, r1, r5
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r5
	mov r1, r4
	blx r2
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EB9A4
FUN_021EB9A4: ; 0x021EB9A4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl FUN_021EB798
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EB9D8
FUN_021EB9D8: ; 0x021EB9D8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021EB720
	strb r0, [sp]
	ldrb r0, [sp]
	cmp r0, #0
	beq _021EB9FC
	cmp r0, #0x12
	bne _021EBA0C
_021EB9FC:
	bl FUN_021EB800
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021EBA0C:
	add r0, sp, #0
	bl FUN_021ECB38
	ldrb r0, [sp]
	bl FUN_021EB734
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EBA28
FUN_021EBA28: ; 0x021EBA28
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_021EB798
	mov r5, r0
	bl FUN_021EB720
	cmp r0, #0xa
	blo _021EBAB0
	cmp r0, #0x10
	bhi _021EBAB0
	bl FUN_020A8850
	mov r4, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #6
	bl MI_CpuCopy8
	ldrb r0, [r5, #0x17]
	cmp r0, #4
	bne _021EBAA8
	mov r0, #0
	bl FUN_020A87E0
	mov r4, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	mov r0, r4
	add r1, r6, #6
	bl FUN_021EE5F4
_021EBAA8:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021EBAB0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EBAB8
FUN_021EBAB8: ; 0x021EBAB8
	stmdb sp!, {r4, lr}
	mov r4, #0xff
	bl FUN_021EB720
	cmp r0, #0xa
	blo _021EBADC
	cmp r0, #0x10
	ldrls r0, _021EBAE4 ; =0x02210E58
	ldrls r0, [r0]
	ldrlsb r4, [r0, #0x17]
_021EBADC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EBAE4: .word 0x02210E58

	arm_func_start FUN_021EBAE8
FUN_021EBAE8: ; 0x021EBAE8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021EB720
	cmp r0, #1
	addls sp, sp, #4
	movls r0, #0
	ldmlsia sp!, {pc}
	cmp r0, #7
	addlo sp, sp, #4
	movlo r0, #1
	ldmloia sp!, {pc}
	cmp r0, #9
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	cmp r0, #0xa
	addlo sp, sp, #4
	movlo r0, #2
	ldmloia sp!, {pc}
	cmp r0, #0xb
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	cmp r0, #0x10
	addlo sp, sp, #4
	movlo r0, #3
	ldmloia sp!, {pc}
	cmp r0, #0x10
	addeq sp, sp, #4
	moveq r0, #5
	ldmeqia sp!, {pc}
	cmp r0, #0x11
	addeq sp, sp, #4
	moveq r0, #4
	ldmeqia sp!, {pc}
	bl FUN_021ECD54
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EBB80
FUN_021EBB80: ; 0x021EBB80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_021EB720
	mov r5, r0
	cmp r5, #1
	bne _021EBBA4
	bl FUN_021EDB44
	mov r5, r0
	b _021EBC18
_021EBBA4:
	cmp r5, #7
	bhs _021EBBCC
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_021EDA70
	mov r5, r0
	bl FUN_021EB734
	mov r0, r4
	bl OS_RestoreInterrupts
	b _021EBC18
_021EBBCC:
	cmp r5, #9
	bhs _021EBBE0
	bl FUN_021ECA08
	mov r5, r0
	b _021EBC18
_021EBBE0:
	cmp r5, #0xa
	bhs _021EBBF4
	bl FUN_021ED218
	mov r5, r0
	b _021EBC18
_021EBBF4:
	cmp r5, #0x10
	bhs _021EBC08
	bl FUN_021EDFBC
	mov r5, r0
	b _021EBC18
_021EBC08:
	cmp r5, #0x11
	bne _021EBC18
	bl FUN_021ECDA8
	mov r5, r0
_021EBC18:
	mov r0, r5
	bl FUN_021EB734
	cmp r5, #0x10
	bne _021EBC40
	bl FUN_021EB5C8
	mov r4, r0
	bl FUN_021EB668
	add sp, sp, #4
	mov r0, r4
	ldmia sp!, {r4, r5, pc}
_021EBC40:
	cmp r5, #0x12
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	bl FUN_021EB668
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EBC60
FUN_021EBC60: ; 0x021EBC60
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4]
	mov r0, #1
	mov r1, #0x18
	blx r2
	mov r1, r0
	ldr r3, _021EBE08 ; =0x02210E58
	mov r0, #0
	mov r2, #0x18
	str r1, [r3]
	bl MIi_CpuClear32
	ldr r0, _021EBE08 ; =0x02210E58
	ldr r1, [r4]
	ldr r3, [r0]
	mov r2, #1
	str r1, [r3]
	ldr r0, [r4, #4]
	ldr r1, _021EBE0C ; =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl FUN_021EB958
	ldr r2, _021EBE10 ; =0x02210E48
	mov r1, #0x2300
	str r0, [r2]
	mov r0, #2
	bl FUN_021EB958
	ldr r2, _021EBE14 ; =0x02210E4C
	mov r1, #0x58
	str r0, [r2]
	mov r0, #4
	bl FUN_021EB958
	ldr r2, _021EBE18 ; =0x02210E50
	mov r1, #0xc
	str r0, [r2]
	mov r0, #8
	bl FUN_021EB958
	ldr r2, _021EBE1C ; =0x02210E54
	ldr r1, _021EBE10 ; =0x02210E48
	str r0, [r2]
	ldr r1, [r1]
	mov r0, #0
	ldr r2, _021EBE0C ; =0x00000D18
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE14 ; =0x02210E4C
	mov r2, #0x2300
	ldr r1, [r1]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE18 ; =0x02210E50
	mov r2, #0x58
	ldr r1, [r1]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021EBE1C ; =0x02210E54
	mov r2, #0xc
	ldr r1, [r1]
	bl MIi_CpuClear32
	ldr r0, _021EBE10 ; =0x02210E48
	ldrb r1, [r4, #8]
	ldr r0, [r0]
	strb r1, [r0, #0xd0a]
	ldrb r2, [r0, #0xd0b]
	ldrb r1, [r4, #9]
	bic r2, r2, #3
	and r1, r1, #3
	orr r1, r2, r1
	strb r1, [r0, #0xd0b]
	ldr r1, _021EBE1C ; =0x02210E54
	ldr r2, [r4]
	ldr r3, [r1]
	mov r1, #0
	str r2, [r3]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0xd0c]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	bic r2, r2, #0x30
	and r1, r1, #3
	orr r1, r2, r1, lsl #4
	strb r1, [r0, #0xd0c]
	bl FUN_02095FA8
	ldr r0, _021EBE14 ; =0x02210E4C
	mov r1, #0x2300
	ldr r0, [r0]
	bl FUN_020A7E80
	cmp r0, #1
	beq _021EBDF4
	cmp r0, #4
	blt _021EBE00
_021EBDF4:
	bl FUN_021EB800
	mov r0, #0
	ldmia sp!, {r4, pc}
_021EBE00:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EBE08: .word 0x02210E58
_021EBE0C: .word 0x00000D18
_021EBE10: .word 0x02210E48
_021EBE14: .word 0x02210E4C
_021EBE18: .word 0x02210E50
_021EBE1C: .word 0x02210E54

	arm_func_start FUN_021EBE20
FUN_021EBE20: ; 0x021EBE20
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xcc
	ldr r2, _021EBF1C ; =0x00000444
	mov sl, r0
	add r0, r1, #0x470
	add r8, r1, r2
	str r0, [sp]
	subs sb, sl, #1
	bmi _021EBEF0
	mov r4, #0xc0
	mla r6, sb, r4, r0
	add r7, r8, sb, lsl #2
	mov r5, #4
_021EBE54:
	add r1, r8, sl, lsl #2
	add r0, r8, sb, lsl #2
	ldrb r1, [r1, #2]
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _021EBEF0
	mov r0, r7
	add r1, sp, #4
	mov r2, r5
	bl MIi_CpuCopy32
	add fp, r8, sl, lsl #2
	mov r0, fp
	mov r1, r7
	mov r2, r5
	bl MIi_CpuCopy32
	mov r1, fp
	add r0, sp, #4
	mov r2, r5
	bl MIi_CpuCopy32
	mov r0, r6
	add r1, sp, #8
	mov r2, r4
	bl MIi_CpuCopy32
	ldr r0, [sp]
	mov r1, #0xc0
	mla fp, sl, r1, r0
	mov r0, fp
	mov r1, r6
	mov r2, r4
	bl MIi_CpuCopy32
	mov r1, fp
	add r0, sp, #8
	mov r2, r4
	bl MIi_CpuCopy32
	mov sl, sb
	sub r7, r7, #4
	sub r6, r6, #0xc0
	subs sb, sb, #1
	bpl _021EBE54
_021EBEF0:
	add r1, r8, #0x28
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear32
	ldr r0, [sp]
	mov r2, #0xc0
	add r1, r0, #0x780
	mov r0, #0
	bl MIi_CpuClear32
	add sp, sp, #0xcc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EBF1C: .word 0x00000444

	arm_func_start FUN_021EBF20
FUN_021EBF20: ; 0x021EBF20
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldrh r4, [r1, #2]
	ldr lr, _021EBF9C ; =0x00000444
	add r5, r3, #0x470
	mov ip, #0xc0
	add r3, r3, lr
	mla ip, r0, ip, r5
	add r0, r3, r0, lsl #2
	ands r3, r4, #2
	movne r3, r4, asr #2
	andne r4, r3, #0xff
	moveq r3, r4, asr #2
	addeq r3, r3, #0x19
	andeq r4, r3, #0xff
	ldrb r3, [r0, #2]
	and lr, r4, #0xff
	cmp lr, r3
	bls _021EBF84
	strb lr, [r0, #2]
	ldrb r3, [r0, #3]
	and r2, r2, #0x7f
	bic r3, r3, #0x7f
	orr r2, r3, r2
	strb r2, [r0, #3]
_021EBF84:
	mov r0, r1
	mov r1, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EBF9C: .word 0x00000444

	arm_func_start FUN_021EBFA0
FUN_021EBFA0: ; 0x021EBFA0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr lr, _021EC004 ; =0x0000046C
	add ip, r3, #0xbf0
	add r3, r3, lr
	strb r0, [r3, #1]
	ldrh lr, [r1, #2]
	and r2, r2, #0x7f
	ands r0, lr, #2
	movne r0, lr, asr #2
	andne r0, r0, #0xff
	moveq r0, lr, asr #2
	addeq r0, r0, #0x19
	andeq r0, r0, #0xff
	strb r0, [r3, #2]
	ldrb lr, [r3, #3]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	mov r1, ip
	mov r2, #0xc0
	strb lr, [r3, #3]
	bl MIi_CpuCopy32
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EC004: .word 0x0000046C

	arm_func_start FUN_021EC008
FUN_021EC008: ; 0x021EC008
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r3, [r6, #0xd12]
	mvn r4, #0
	mov r5, #0
	cmp r3, #0
	ble _021EC0A0
	ldr lr, _021EC0E4 ; =0x00000474
	ldrb ip, [r1, #4]
	add lr, r6, lr
_021EC030:
	ldrb r7, [lr]
	cmp ip, r7
	bne _021EC090
	ldrb r8, [r1, #5]
	ldrb r7, [lr, #1]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #6]
	ldrb r7, [lr, #2]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #7]
	ldrb r7, [lr, #3]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #8]
	ldrb r7, [lr, #4]
	cmp r8, r7
	bne _021EC090
	ldrb r8, [r1, #9]
	ldrb r7, [lr, #5]
	cmp r8, r7
	moveq r4, r5
	beq _021EC0A0
_021EC090:
	add r5, r5, #1
	cmp r5, r3
	add lr, lr, #0xc0
	blt _021EC030
_021EC0A0:
	mvn r3, #0
	cmp r4, r3
	bne _021EC0D0
	mov r3, r6
	and r0, r0, #0xff
	bl FUN_021EBFA0
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r6, #0xd12]
	b _021EC0DC
_021EC0D0:
	mov r0, r4
	mov r3, r6
	bl FUN_021EBF20
_021EC0DC:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EC0E4: .word 0x00000474

	arm_func_start FUN_021EC0E8
FUN_021EC0E8: ; 0x021EC0E8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r0
	ldrh r2, [r4, #0xa]
	mov sl, r1
	cmp r2, #0x20
	bne _021EC10C
	bl FUN_021EC210
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EC10C:
	ldrb r5, [sl, #0xd12]
	mov sb, #0
	cmp r5, #0
	ble _021EC174
	ldr r0, _021EC17C ; =0x0000047C
	ldrh r6, [r4, #0xa]
	mov r8, sl
	add r7, sl, r0
	add r4, r4, #0xc
_021EC130:
	add r0, r8, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r6, r0
	bne _021EC160
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl strncmp
	cmp r0, #0
	addeq r0, sl, sb, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EC160:
	add sb, sb, #1
	cmp sb, r5
	add r8, r8, #0xc0
	add r7, r7, #0xc0
	blt _021EC130
_021EC174:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EC17C: .word 0x0000047C

	arm_func_start FUN_021EC180
FUN_021EC180: ; 0x021EC180
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _021EC1B0
	bl FUN_021EC210
	cmp r0, #0
	addgt sp, sp, #4
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021EC1B0:
	cmp r5, #0
	mov sb, #0
	ble _021EC204
	ldrh r8, [r6, #0xa]
	add r6, r6, #0xc
	and r7, r8, #0xff
_021EC1C8:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _021EC1F4
	mov r0, r6
	mov r2, r8
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	addeq sp, sp, #4
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021EC1F4:
	add sb, sb, #1
	cmp sb, r5
	add r4, r4, #0x24
	blt _021EC1C8
_021EC204:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021EC210
FUN_021EC210: ; 0x021EC210
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021EC240
	cmp r0, #4
	bne _021EC270
_021EC240:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #1
	bne _021EC270
	add r0, r5, #0xc
	bl FUN_021EE5C8
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
_021EC270:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021EC288
	cmp r0, #5
	bne _021EC2B8
_021EC288:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #1
	bne _021EC2B8
	add r0, r5, #0xc
	bl FUN_021EE668
	cmp r0, #1
	addeq sp, sp, #4
	moveq r0, #7
	ldmeqia sp!, {r4, r5, pc}
_021EC2B8:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EC2C4
FUN_021EC2C4: ; 0x021EC2C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0x10
	mvn r6, #0
	bl FUN_021EB798
	mov r4, r0
	mov r0, #1
	bl FUN_021EB798
	mov r1, #1
	strb r1, [r0, #0xb]
	bl FUN_021EB720
	cmp r0, #3
	beq _021EC314
	cmp r0, #4
	beq _021EC384
	cmp r0, #5
	beq _021EC3D0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
_021EC314:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r4, #0xd11]
	cmp r1, #0
	beq _021EC330
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne _021EC33C
_021EC330:
	ldrh r0, [r7, #0x36]
	bl FUN_021EDA3C
	b _021EC418
_021EC33C:
	cmp r1, #1
	beq _021EC34C
	cmp r0, #0x20
	bne _021EC36C
_021EC34C:
	ldrh r0, [r7, #0x36]
	bl FUN_021EDA3C
	ldrb r1, [r4, #0xd10]
	mov r0, r7
	add r2, r4, #0x300
	bl FUN_021EC180
	mov r6, r0
	b _021EC418
_021EC36C:
	ldrb r1, [r4, #0xd10]
	mov r0, r7
	add r2, r4, #0x300
	bl FUN_021EC180
	mov r6, r0
	b _021EC418
_021EC384:
	ldrb r2, [r4, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r4
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r4
	sub r2, r2, #1
	and r5, r2, #0xff
	bl FUN_021EC0E8
	movs r6, r0
	bmi _021EC418
	ldr r0, _021EC448 ; =0x00000447
	ldrb r1, [r4, #0xd0f]
	add r2, r4, r0
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _021EC418
_021EC3D0:
	ldrb r1, [r4, #0xd0f]
	add r2, r4, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r4, #0xd11]
	bl FUN_021EC180
	movs r6, r0
	bmi _021EC418
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r3, r4, #0x300
	mul r2, r1, r0
	ldrb r0, [r3, r2]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r3, r2]
_021EC418:
	cmp r6, #0
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_021EC008
	mov r1, r4
	bl FUN_021EBE20
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EC448: .word 0x00000447

	arm_func_start FUN_021EC44C
FUN_021EC44C: ; 0x021EC44C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	ldrsh r1, [r4]
	cmp r1, #5
	bne _021EC4C4
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _021EC494
	cmp r1, #0xf
	beq _021EC4A0
	cmp r1, #0x11
	beq _021EC4AC
	b _021EC4B8
_021EC494:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4A0:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4AC:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4B8:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmia sp!, {r4, pc}
_021EC4C4:
	cmp r1, #7
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl FUN_021EC2C4
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EC4D8
FUN_021EC4D8: ; 0x021EC4D8
	stmdb sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _021EC5B8
_021EC4EC: ; jump table
	b _021EC51C ; case 0
	b _021EC518 ; case 1
	b _021EC514 ; case 2
	b _021EC548 ; case 3
	b _021EC544 ; case 4
	b _021EC540 ; case 5
	b _021EC56C ; case 6
	b _021EC594 ; case 7
	b _021EC5B8 ; case 8
	b _021EC5B8 ; case 9
_021EC514:
	add r0, r0, #0x100
_021EC518:
	add r0, r0, #0x100
_021EC51C:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x50
	strb r3, [r4]
	bl MI_CpuCopy8
	b _021EC5B8
_021EC540:
	add r0, r0, #0x100
_021EC544:
	add r0, r0, #0x100
_021EC548:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #0x14
	strb r3, [r4]
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x16]
	b _021EC5B8
_021EC56C:
	mov r1, #2
	strb r1, [r4]
	ldr r1, _021EC5CC ; =0x0000047C
	ldrb r2, [r0, #0xd13]
	add r1, r0, r1
	mov r0, #0xc0
	mla r0, r2, r0, r1
	add r1, r4, #2
	bl FUN_021EE5B8
	b _021EC5B8
_021EC594:
	mov r1, #2
	strb r1, [r4]
	ldr r1, _021EC5CC ; =0x0000047C
	ldrb r2, [r0, #0xd13]
	add r1, r0, r1
	mov r0, #0xc0
	mla r0, r2, r0, r1
	add r1, r4, #2
	bl FUN_021EE640
_021EC5B8:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EC5CC: .word 0x0000047C

	arm_func_start FUN_021EC5D0
FUN_021EC5D0: ; 0x021EC5D0
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr

	arm_func_start FUN_021EC5EC
FUN_021EC5EC: ; 0x021EC5EC
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr

	arm_func_start FUN_021EC608
FUN_021EC608: ; 0x021EC608
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla sb, r2, r0, r3
	mov r0, r1, lsl #0x18
	movs r0, r0, lsr #0x1e
	mov r0, #0
	str r0, [sp]
	bne _021EC72C
	ldrh r0, [sb, #0xa]
	ldr r7, [sp]
	cmp r0, #0x20
	bne _021EC66C
	mov r0, sb
	bl FUN_021EC210
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r7, r7, #1
	strle r0, [sp]
	b _021EC690
_021EC66C:
	cmp r0, #8
	bne _021EC690
	mov r0, sb
	bl FUN_021ED12C
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r7, r7, #1
	streq r0, [sp]
_021EC690:
	ldrb r0, [sl, #0xd10]
	mov r8, #0
	cmp r0, #0
	ble _021EC79C
	mov r6, sl
	add r5, sl, #0x304
	add r4, sl, #0x300
	ldr r0, _021EC7AC ; =0x00000D0C
	add fp, sl, r0
_021EC6B4:
	ldrh r2, [sb, #0xa]
	ldrb r0, [r6, #0x303]
	cmp r2, r0
	bne _021EC70C
	mov r1, r5
	add r0, sb, #0xc
	bl strncmp
	cmp r0, #0
	bne _021EC70C
	cmp r7, #0
	ldreqb r0, [r6, #0x301]
	streq r0, [sp]
	beq _021EC708
	ldrb r0, [r4]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4]
	ldrb r0, [fp]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp]
_021EC708:
	add r7, r7, #1
_021EC70C:
	ldrb r0, [sl, #0xd10]
	add r8, r8, #1
	add r6, r6, #0x24
	cmp r8, r0
	add r5, r5, #0x24
	add r4, r4, #0x24
	blt _021EC6B4
	b _021EC79C
_021EC72C:
	ldrb r0, [sl, #0xd10]
	ldr r2, [sp]
	mov r3, r2
	cmp r0, #0
	ble _021EC78C
	mov r4, sl
	add r5, sl, #0x300
_021EC748:
	ldrb r0, [r5]
	mov r1, r0, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _021EC774
	cmp r3, #0
	biceq r0, r0, #0xf0
	streqb r0, [r5]
	ldreqb r0, [r4, #0x301]
	add r3, r3, #1
	streq r0, [sp]
_021EC774:
	ldrb r0, [sl, #0xd10]
	add r2, r2, #1
	add r5, r5, #0x24
	cmp r2, r0
	add r4, r4, #0x24
	blt _021EC748
_021EC78C:
	cmp r3, #1
	ldreqb r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	streqb r0, [sl, #0xd0c]
_021EC79C:
	ldr r0, [sp]
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021EC7AC: .word 0x00000D0C

	arm_func_start FUN_021EC7B0
FUN_021EC7B0: ; 0x021EC7B0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_020A71F8
	ldrb r2, [r6, #0xd13]
	add r3, r6, #0x470
	mov r1, #0xc0
	mla r5, r2, r1, r3
	cmp r0, #3
	bne _021EC8BC
	mov r0, r6
	bl FUN_021EC5EC
	ldrb r1, [r6, #0xd15]
	mov r4, r0
	add r0, r1, #1
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd15]
	cmp r1, #3
	bls _021EC818
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC818:
	cmp r1, #1
	beq _021EC898
	ldrb r0, [r6, #0xd14]
	cmp r0, #1
	ldreqb r0, [r6, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r6, #0xd0b]
	beq _021EC898
	cmp r0, #2
	bne _021EC860
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC860:
	cmp r0, #3
	bne _021EC888
	mov r0, #0
	strb r0, [r6, #0xd15]
	ldrb r1, [r6, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EC888:
	cmp r1, #3
	ldreqb r0, [r6, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r6, #0xd0b]
_021EC898:
	mov r0, r6
	bl FUN_021EC5D0
	mov r2, r0
	ldr r1, _021EC8E8 ; =0x00000CB8
	mov r0, r5
	add r1, r6, r1
	orr r2, r4, r2
	bl FUN_020A75C0
	b _021EC8E0
_021EC8BC:
	cmp r0, #9
	bne _021EC8E0
	mov r0, #0
	strb r0, [r6, #0xd15]
	bl OS_GetTick
	str r0, [r6, #0xcb0]
	str r1, [r6, #0xcb4]
	mov r0, #0xa
	ldmia sp!, {r4, r5, r6, pc}
_021EC8E0:
	mov r0, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EC8E8: .word 0x00000CB8

	arm_func_start FUN_021EC8EC
FUN_021EC8EC: ; 0x021EC8EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl FUN_021EC608
	ldr r1, _021ECA04 ; =0x00000CB8
	strb r0, [r5, #0xd0d]
	add r0, r5, r1
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	ldr r2, _021ECA04 ; =0x00000CB8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r5, r2
	bl FUN_021EC4D8
	cmp r0, #0
	beq _021EC9B0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	ands r0, r0, #1
	bne _021EC97C
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC97C:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	bne _021EC9EC
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _021EC9EC
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC9B0:
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _021EC9EC
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	add sp, sp, #4
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	mov r0, #9
	ldmia sp!, {r4, r5, pc}
_021EC9EC:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ECA04: .word 0x00000CB8

	arm_func_start FUN_021ECA08
FUN_021ECA08: ; 0x021ECA08
	stmdb sp!, {r4, lr}
	bl FUN_021EB720
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	cmp r4, #7
	beq _021ECA30
	cmp r4, #8
	beq _021ECA3C
	b _021ECA44
_021ECA30:
	bl FUN_021EC8EC
	mov r4, r0
	b _021ECA44
_021ECA3C:
	bl FUN_021EC7B0
	mov r4, r0
_021ECA44:
	mov r0, r4
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021ECA4C
FUN_021ECA4C: ; 0x021ECA4C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02099A94
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	bl THUNK_FUN_02099BC8
	cmp r0, #0
	beq _021ECA80
	mvn r1, #0x26
	cmp r0, r1
	bne _021ECA8C
_021ECA80:
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021ECA8C:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021ECA98
FUN_021ECA98: ; 0x021ECA98
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_020A71F8
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021ECB2C
_021ECAB0: ; jump table
	b _021ECAE4 ; case 0
	b _021ECAF0 ; case 1
	b _021ECB2C ; case 2
	b _021ECAF8 ; case 3
	b _021ECB2C ; case 4
	b _021ECB2C ; case 5
	b _021ECB00 ; case 6
	b _021ECB2C ; case 7
	b _021ECB2C ; case 8
	b _021ECB08 ; case 9
	b _021ECB2C ; case 10
	b _021ECB18 ; case 11
	b _021ECB10 ; case 12
_021ECAE4:
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {pc}
_021ECAF0:
	bl FUN_020A7E0C
	b _021ECB2C
_021ECAF8:
	bl FUN_020A7AC8
	b _021ECB2C
_021ECB00:
	bl FUN_020A7820
	b _021ECB2C
_021ECB08:
	bl FUN_020A7488
	b _021ECB2C
_021ECB10:
	bl FUN_020A722C
	b _021ECB2C
_021ECB18:
	mov r0, #0
	bl FUN_021EB6F4
	add sp, sp, #4
	mvn r0, #0
	ldmfd sp!, {pc}
_021ECB2C:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021ECB38
FUN_021ECB38: ; 0x021ECB38
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _021ECB80
	bl FUN_021ECA98
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	mvn r1, #0
	cmp r0, r1
	bne _021ECBB4
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021ECB80:
	cmp r0, #0xe
	bne _021ECB9C
	bl FUN_021DC7F0
	bl FUN_021DC870
	mov r0, #0xc
	strb r0, [r4]
	b _021ECBB4
_021ECB9C:
	cmp r0, #0x12
	bhs _021ECBB4
	bl FUN_021ECA4C
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_021ECBB4:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021ECBBC
FUN_021ECBBC: ; 0x021ECBBC
	ldrb r1, [r0, #0x16]
	cmp r1, #0xa
	bhs _021ECC04
	ldrb r1, [r0, #0x14]
	cmp r1, #3
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCC4 ; =0xFFFF3864
	subeq r2, r0, r1
	beq _021ECCBC
	cmp r1, #4
	ldreqb r1, [r0, #0x15]
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r2, r0, r1
	ldrneb r1, [r0, #0x15]
	ldrne r0, _021ECCC8 ; =0xFFFF379C
	subne r2, r0, r1
	b _021ECCBC
_021ECC04:
	cmp r1, #0xd
	ldrlob r1, [r0, #0x15]
	ldrlo r0, _021ECCCC ; =0xFFFF34E0
	sublo r2, r0, r1
	blo _021ECCBC
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD0 ; =0xFFFF3CB0
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #0
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD4 ; =0xFFFF347C
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #1
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCD8 ; =0xFFFF3418
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #2
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCDC ; =0xFFFF33B4
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #3
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE0 ; =0xFFFF30F8
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #4
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE4 ; =0xFFFF3094
	subeq r2, r0, r1
	beq _021ECCBC
	mvn r1, #5
	cmp r2, r1
	ldreqb r1, [r0, #0x15]
	ldreq r0, _021ECCE8 ; =0xFFFF3030
	subeq r2, r0, r1
_021ECCBC:
	mov r0, r2
	bx lr
	.align 2, 0
_021ECCC4: .word 0xFFFF3864
_021ECCC8: .word 0xFFFF379C
_021ECCCC: .word 0xFFFF34E0
_021ECCD0: .word 0xFFFF3CB0
_021ECCD4: .word 0xFFFF347C
_021ECCD8: .word 0xFFFF3418
_021ECCDC: .word 0xFFFF33B4
_021ECCE0: .word 0xFFFF30F8
_021ECCE4: .word 0xFFFF3094
_021ECCE8: .word 0xFFFF3030

	arm_func_start FUN_021ECCEC
FUN_021ECCEC: ; 0x021ECCEC
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	ldreq r0, _021ECD00 ; =0xFFFF3C4D
	ldrne r0, _021ECD04 ; =0xFFFF3865
	bx lr
	.align 2, 0
_021ECD00: .word 0xFFFF3C4D
_021ECD04: .word 0xFFFF3865

	arm_func_start FUN_021ECD08
FUN_021ECD08: ; 0x021ECD08
	mvn r0, #5
	bx lr

	arm_func_start FUN_021ECD10
FUN_021ECD10: ; 0x021ECD10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021ECD4C
_021ECD1C: ; jump table
	b _021ECD34 ; case 0
	b _021ECD2C ; case 1
	b _021ECD3C ; case 2
	b _021ECD44 ; case 3
_021ECD2C:
	mvn r0, #8
	bx lr
_021ECD34:
	mvn r0, #9
	bx lr
_021ECD3C:
	mvn r0, #7
	bx lr
_021ECD44:
	mvn r0, #6
	bx lr
_021ECD4C:
	mov r0, #0
	bx lr

	arm_func_start FUN_021ECD54
FUN_021ECD54: ; 0x021ECD54
	stmdb sp!, {r4, lr}
	mov r0, #1
	bl FUN_021EB798
	mov r4, r0
	bl FUN_021EB6E0
	cmp r0, #4
	bge _021ECD78
	bl FUN_021ECD10
	ldmia sp!, {r4, pc}
_021ECD78:
	cmp r0, #5
	bge _021ECD88
	bl FUN_021ECD08
	ldmia sp!, {r4, pc}
_021ECD88:
	cmp r0, #5
	bne _021ECD9C
	mov r0, r4
	bl FUN_021ECCEC
	ldmia sp!, {r4, pc}
_021ECD9C:
	mov r0, r4
	bl FUN_021ECBBC
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021ECDA8
FUN_021ECDA8: ; 0x021ECDA8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #1
	bl FUN_021EB798
	add r0, r0, #0xa
	bl FUN_021ECB38
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021ECDD4
FUN_021ECDD4: ; 0x021ECDD4
	ldrb r2, [r0, #0xd12]
	mov r3, #0
	mov ip, r3
	cmp r2, #0
	bls _021ECE10
_021ECDE8:
	add r1, r0, ip, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, ip
	beq _021ECE10
	add r1, ip, #1
	and ip, r1, #0xff
	cmp ip, r2
	blo _021ECDE8
_021ECE10:
	mov r0, r3
	bx lr

	arm_func_start FUN_021ECE18
FUN_021ECE18: ; 0x021ECE18
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldrb r1, [r0, #0xd12]
	mov r3, #0
	mov ip, r3
	cmp r1, #0
	ble _021ECEA0
	ldr r2, _021ECEAC ; =0x00000447
	mov r1, r0
	add r2, r0, r2
_021ECE40:
	add r4, r0, ip, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _021ECE7C
	add lr, r1, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r2]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	bicne lr, lr, #0x80
	addne r3, r3, #1
	strneb lr, [r2]
	andne r3, r3, #0xff
	bne _021ECE88
_021ECE7C:
	ldrb lr, [r2]
	orr lr, lr, #0x80
	strb lr, [r2]
_021ECE88:
	ldrb lr, [r0, #0xd12]
	add ip, ip, #1
	add r2, r2, #4
	cmp ip, lr
	add r1, r1, #0xc0
	blt _021ECE40
_021ECEA0:
	mov r0, r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ECEAC: .word 0x00000447

	arm_func_start FUN_021ECEB0
FUN_021ECEB0: ; 0x021ECEB0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, #0
	mov r4, r0
	mov r6, r5
	add lr, r0, #0x300
	mov ip, r5
	mov r2, r5
	mov r1, r5
	mov r7, r5
	mov r3, #1
_021ECED8:
	ldrb r8, [r0, #0xd0c]
	mov r8, r8, lsl #0x1c
	movs sb, r8, lsr #0x1c
	beq _021ECEF4
	add r8, r6, #1
	cmp sb, r8
	bne _021ECFB0
_021ECEF4:
	ldrb r8, [r4, #0xe7]
	cmp r8, #0xff
	beq _021ECFB0
	mov sb, ip
_021ECF04:
	add r8, r4, sb
	ldrb sl, [r8, #0x40]
	cmp sl, #0
	beq _021ECF2C
	add r8, sb, #1
	add sb, lr, sb
	strb sl, [sb, #4]
	and sb, r8, #0xff
	cmp sb, #0x20
	blo _021ECF04
_021ECF2C:
	cmp sb, #0
	strneb sb, [lr, #3]
	movne r8, r3
	strneb r6, [lr, #1]
	moveq r8, r2
	cmp r8, #0
	addne r5, r5, #1
	ldrb r8, [r4, #0xe7]
	andne r5, r5, #0xff
	addne lr, lr, #0x24
	cmp r8, #1
	bne _021ECFB0
	mov sb, r1
_021ECF60:
	add r8, r4, sb
	ldrb sl, [r8, #0x60]
	cmp sl, #0
	beq _021ECF88
	add r8, sb, #1
	add sb, lr, sb
	strb sl, [sb, #4]
	and sb, r8, #0xff
	cmp sb, #0x20
	blo _021ECF60
_021ECF88:
	cmp sb, #0
	strneb sb, [lr, #3]
	movne sb, r3
	addne r8, r6, #3
	moveq sb, r7
	strneb r8, [lr, #1]
	cmp sb, #0
	addne r5, r5, #1
	andne r5, r5, #0xff
	addne lr, lr, #0x24
_021ECFB0:
	add r6, r6, #1
	cmp r6, #3
	add r4, r4, #0x100
	blt _021ECED8
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start FUN_021ECFC8
FUN_021ECFC8: ; 0x021ECFC8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r4, r6, #0x300
	bl FUN_021ECEB0
	ldrb r1, [r6, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mov r1, r1, lsl #0x1c
	mla r4, r5, r0, r4
	movs r0, r1, lsr #0x1c
	beq _021ECFFC
	cmp r0, #4
	bne _021ED028
_021ECFFC:
	ldr r0, _021ED0B4 ; =0x0220D4C0
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #6
	strb r1, [r4, #1]
	and r5, r0, #0xff
	add r4, r4, #0x24
_021ED028:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED040
	cmp r0, #7
	bne _021ED06C
_021ED040:
	ldr r0, _021ED0B8 ; =0x0220BADC
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #9
	strb r1, [r4, #1]
	and r5, r0, #0xff
	add r4, r4, #0x24
_021ED06C:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED084
	cmp r0, #8
	bne _021ED0AC
_021ED084:
	ldr r0, _021ED0BC ; =0x0220BAEC
	add r1, r4, #4
	mov r2, #0xb
	bl MI_CpuCopy8
	mov r1, #0xb
	add r0, r5, #1
	strb r1, [r4, #3]
	mov r1, #0xa
	strb r1, [r4, #1]
	and r5, r0, #0xff
_021ED0AC:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021ED0B4: .word 0x0220D4C0
_021ED0B8: .word 0x0220BADC
_021ED0BC: .word 0x0220BAEC

	arm_func_start FUN_021ED0C0
FUN_021ED0C0: ; 0x021ED0C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r4, r5, #0x300
	bl FUN_021ECEB0
	ldrb r1, [r5, #0xd0c]
	mov r5, r0
	mov r0, #0x24
	mov r1, r1, lsl #0x1c
	mla r4, r5, r0, r4
	movs r0, r1, lsr #0x1c
	beq _021ED0F8
	cmp r0, #6
	bne _021ED11C
_021ED0F8:
	ldr r0, _021ED128 ; =0x0220BAE4
	add r1, r4, #4
	mov r2, #8
	bl MI_CpuCopy8
	mov r1, #8
	strb r1, [r4, #3]
	add r0, r5, #1
	strb r1, [r4, #1]
	and r5, r0, #0xff
_021ED11C:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ED128: .word 0x0220BAE4

	arm_func_start FUN_021ED12C
FUN_021ED12C: ; 0x021ED12C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _021ED154
	cmp r0, #6
	bne _021ED170
_021ED154:
	ldr r1, _021ED178 ; =0x0220BAE4
	add r0, r4, #0xc
	mov r2, #8
	bl strncmp
	cmp r0, #0
	moveq r0, #8
	ldmeqia sp!, {r4, pc}
_021ED170:
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED178: .word 0x0220BAE4

	arm_func_start FUN_021ED17C
FUN_021ED17C: ; 0x021ED17C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	cmp r5, #0
	beq _021ED1B0
	cmp r5, #1
	beq _021ED1D0
	cmp r5, #2
	beq _021ED1E8
	b _021ED20C
_021ED1B0:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r4
	bl FUN_021ED0C0
	strb r0, [r4, #0xd10]
	b _021ED20C
_021ED1D0:
	bl FUN_021ECE18
	strb r0, [r4, #0xd10]
	mov r0, r4
	bl FUN_021ECDD4
	strb r0, [r4, #0xd0f]
	b _021ED20C
_021ED1E8:
	add r1, r4, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r1, #0
	mov r0, r4
	strb r1, [r4, #0xd0f]
	bl FUN_021ECFC8
	strb r0, [r4, #0xd10]
_021ED20C:
	ldrb r0, [r4, #0xd10]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021ED218
FUN_021ED218: ; 0x021ED218
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	mov r5, #9
	bl FUN_020A71F8
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021ED2F0
_021ED240: ; jump table
	b _021ED2F0 ; case 0
	b _021ED2F0 ; case 1
	b _021ED2F0 ; case 2
	b _021ED274 ; case 3
	b _021ED2F0 ; case 4
	b _021ED2F0 ; case 5
	b _021ED2C0 ; case 6
	b _021ED2F0 ; case 7
	b _021ED2F0 ; case 8
	b _021ED2C8 ; case 9
	b _021ED2F0 ; case 10
	b _021ED2E4 ; case 11
	b _021ED2D0 ; case 12
_021ED274:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _021ED2A4
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _021ED2F0
_021ED2A4:
	cmp r5, #3
	blo _021ED2F0
	cmp r5, #5
	bhi _021ED2F0
	mov r0, r5
	bl FUN_021ED8D4
	b _021ED2F0
_021ED2C0:
	bl FUN_020A7820
	b _021ED2F0
_021ED2C8:
	bl FUN_020A7488
	b _021ED2F0
_021ED2D0:
	bl FUN_020A722C
	mov r0, #4
	bl FUN_021EB6F4
	mov r5, #0x11
	b _021ED2F0
_021ED2E4:
	mov r0, #0
	bl FUN_021EB6F4
	mov r5, #0x11
_021ED2F0:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021ED2FC
FUN_021ED2FC: ; 0x021ED2FC
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, _021ED324 ; =0x0220BAF8
	cmp r2, #0xc
	movgt r2, #0xc
	ldr r2, [ip, r2, lsl #2]
	orr r2, r3, r2
	bl FUN_020A7A90
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021ED324: .word 0x0220BAF8

	arm_func_start FUN_021ED328
FUN_021ED328: ; 0x021ED328
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _021ED364
	mov r0, #2
	bl FUN_021ED17C
	cmp r0, #0
	beq _021ED364
	mov r0, #0
	bl FUN_021ED9D0
	strb r0, [r4, #0xd11]
	mov r0, #5
	ldmia sp!, {r4, pc}
_021ED364:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021ED798
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021ED388
FUN_021ED388: ; 0x021ED388
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	cmp r4, #0x11
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	ldrb r1, [r5, #0xd12]
	mov r2, #0
	cmp r1, #0
	bls _021ED3D8
_021ED3B8:
	add r0, r5, r2, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _021ED3D8
	add r0, r2, #1
	and r2, r0, #0xff
	cmp r2, r1
	blo _021ED3B8
_021ED3D8:
	cmp r4, #6
	bne _021ED410
	cmp r1, r2
	bne _021ED448
	cmp r2, #0
	bne _021ED3FC
	mov r0, #5
	bl FUN_021EB6F4
	b _021ED404
_021ED3FC:
	mov r0, #6
	bl FUN_021EB6F4
_021ED404:
	add sp, sp, #4
	mov r0, #0x11
	ldmia sp!, {r4, r5, pc}
_021ED410:
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	cmp r1, r2
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, pc}
	add r0, r5, r2, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	addlo sp, sp, #4
	movlo r0, r4
	ldmloia sp!, {r4, r5, pc}
_021ED448:
	strb r2, [r5, #0xd13]
	bl FUN_020A7820
	cmp r0, #1
	strneb r4, [r5, #0xd0e]
	movne r4, #7
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021ED468
FUN_021ED468: ; 0x021ED468
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _021ED494
	cmp r4, #4
	beq _021ED4F8
	cmp r4, #5
	beq _021ED504
	b _021ED524
_021ED494:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	bne _021ED4B0
	add r1, r5, #0xd00
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	beq _021ED4D4
_021ED4B0:
	mov r0, #1
	bl FUN_021ED17C
	cmp r0, #0
	movne r4, #4
	bne _021ED524
	mov r0, r5
	bl FUN_021ED328
	mov r4, r0
	b _021ED524
_021ED4D4:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021ED524
	bl FUN_021ED798
	mov r4, r0
	b _021ED524
_021ED4F8:
	bl FUN_021ED328
	mov r4, r0
	b _021ED524
_021ED504:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _021ED524
	bl FUN_021ED798
	mov r4, r0
_021ED524:
	mov r0, r4
	bl FUN_021ED8D4
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021ED538
FUN_021ED538: ; 0x021ED538
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED650 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021ED598
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _021ED648
_021ED598:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r3, r4, #0x300
	mul r2, r1, r0
	ldrb r0, [r3, r2]
	bic r0, r0, #0xf
	strb r0, [r3, r2]
	ldrb r0, [r4, #0xd0f]
	add r0, r0, #1
	strb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	ldrb r0, [r4, #0xd0f]
	cmp r1, r0
	bhi _021ED5F0
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	add r1, r1, #1
	strb r1, [r4, #0xd15]
	strb r0, [r4, #0xd0f]
	ldrb r0, [r4, #0xd15]
	bl FUN_021ED9D0
	strb r0, [r4, #0xd11]
_021ED5F0:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _021ED618
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl FUN_021ED468
	ldmia sp!, {r4, pc}
_021ED618:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021ED654 ; =0x020FF590
	mov r3, #0x300000
	bl FUN_021ED2FC
_021ED648:
	mov r0, #5
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED650: .word 0x000082EA
_021ED654: .word 0x020FF590

	arm_func_start FUN_021ED658
FUN_021ED658: ; 0x021ED658
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED784 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x96
	bhs _021ED6B4
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _021ED77C
_021ED6B4:
	ldr r0, _021ED788 ; =0x00000447
	ldrb r1, [r4, #0xd0f]
	add r2, r4, r0
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r3, [r4, #0xd0f]
	cmp r3, r2
	bhs _021ED714
	ldr r0, _021ED78C ; =0x00000D0F
	add r1, r4, r0
_021ED6E4:
	add r0, r4, r3, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _021ED714
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrb r2, [r4, #0xd12]
	ldrb r3, [r4, #0xd0f]
	cmp r3, r2
	blo _021ED6E4
_021ED714:
	cmp r2, r3
	bhi _021ED734
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl FUN_021ED468
	ldmia sp!, {r4, pc}
_021ED734:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	ldr r1, _021ED790 ; =0x00000474
	mul ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	ldr r0, _021ED794 ; =0x0000047C
	add r3, r4, r1
	add r1, r4, r0
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl FUN_021ED2FC
_021ED77C:
	mov r0, #4
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED784: .word 0x000082EA
_021ED788: .word 0x00000447
_021ED78C: .word 0x00000D0F
_021ED790: .word 0x00000474
_021ED794: .word 0x0000047C

	arm_func_start FUN_021ED798
FUN_021ED798: ; 0x021ED798
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	strb r0, [r4, #0xd15]
	ldrb r2, [r4, #0xd0b]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	and r1, r1, #0xf
	orr r1, r2, r1, lsl #4
	strb r1, [r4, #0xd0b]
	bl FUN_021ED17C
	mov r0, #1
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021ED7E0
FUN_021ED7E0: ; 0x021ED7E0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021ED878 ; =0x000082EA
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0x12c
	blo _021ED870
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	add r1, r1, #2
	strb r1, [r4, #0xd11]
	ldrsb r0, [r0, #0x11]
	cmp r0, #0xd
	blt _021ED84C
	mov r0, r4
	mov r1, #3
	bl FUN_021ED468
	ldmia sp!, {r4, pc}
_021ED84C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED87C ; =0x020FF590
	ldr r1, _021ED880 ; =0x020FF598
	mov r3, #0x200000
	bl FUN_021ED2FC
_021ED870:
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED878: .word 0x000082EA
_021ED87C: .word 0x020FF590
_021ED880: .word 0x020FF598

	arm_func_start FUN_021ED884
FUN_021ED884: ; 0x021ED884
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	mov r0, #0
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED8CC ; =0x020FF590
	ldr r1, _021ED8D0 ; =0x020FF598
	mov r3, #0x200000
	bl FUN_021ED2FC
	mov r0, #3
	ldmia sp!, {r4, pc}
	.align 2, 0
_021ED8CC: .word 0x020FF590
_021ED8D0: .word 0x020FF598

	arm_func_start FUN_021ED8D4
FUN_021ED8D4: ; 0x021ED8D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	cmp r5, #3
	beq _021ED90C
	cmp r5, #4
	beq _021ED938
	cmp r5, #5
	beq _021ED988
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED90C:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r0, _021ED9C0 ; =0x020FF590
	ldr r1, _021ED9C4 ; =0x020FF598
	mov r3, #0x200000
	bl FUN_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED938:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	ldr r1, _021ED9C8 ; =0x00000474
	mul ip, r2, r0
	add r0, r4, ip
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	ldr r0, _021ED9CC ; =0x0000047C
	add r3, r4, r1
	add r1, r4, r0
	add r0, r3, ip
	add r1, r1, ip
	sub r2, r2, #1
	mov r3, #0x300000
	bl FUN_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021ED988:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	add r2, r4, #0xd00
	mla r1, r3, r0, r1
	ldrsb r2, [r2, #0x11]
	ldr r0, _021ED9C0 ; =0x020FF590
	mov r3, #0x300000
	bl FUN_021ED2FC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021ED9C0: .word 0x020FF590
_021ED9C4: .word 0x020FF598
_021ED9C8: .word 0x00000474
_021ED9CC: .word 0x0000047C

	arm_func_start FUN_021ED9D0
FUN_021ED9D0: ; 0x021ED9D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	add r0, r0, #0xd00
	ldrh r2, [r0, #0x16]
	cmp r2, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov ip, #0
	mov r3, ip
	mov r1, #1
_021EDA00:
	mov r0, r1,lsl  ip
	ands r0, r2, r0
	beq _021EDA24
	cmp r3, r4
	moveq r0, ip, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqia sp!, {r4, pc}
	add r0, r3, #1
	and r3, r0, #0xff
_021EDA24:
	add r0, ip, #1
	and ip, r0, #0xff
	cmp ip, #0xd
	blo _021EDA00
	mvn r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EDA3C
FUN_021EDA3C: ; 0x021EDA3C
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	add r0, r0, #0xd00
	cmp r4, #0xd
	movhi r4, #0xd
	ldrh r3, [r0, #0x16]
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EDA70
FUN_021EDA70: ; 0x021EDA70
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r0, #0x10
	bl FUN_021EB798
	mov r5, r0
	bl FUN_021EB720
	mov r4, r0
	bl FUN_020A71F8
	cmp r4, #2
	bne _021EDAB0
	cmp r0, #3
	bne _021EDAB0
	mov r0, r5
	bl FUN_021ED884
	mov r4, r0
	b _021EDB38
_021EDAB0:
	cmp r4, #6
	bne _021EDACC
	mov r0, r5
	mov r1, r4
	bl FUN_021ED388
	mov r4, r0
	b _021EDB38
_021EDACC:
	cmp r0, #3
	beq _021EDADC
	cmp r0, #6
	bne _021EDB38
_021EDADC:
	mov r0, r5
	mov r1, r4
	bl FUN_021ED388
	mov r4, r0
	cmp r4, #7
	beq _021EDB38
	cmp r4, #3
	bne _021EDB0C
	mov r0, r5
	bl FUN_021ED7E0
	mov r4, r0
	b _021EDB38
_021EDB0C:
	cmp r4, #4
	bne _021EDB24
	mov r0, r5
	bl FUN_021ED658
	mov r4, r0
	b _021EDB38
_021EDB24:
	cmp r4, #5
	bne _021EDB38
	mov r0, r5
	bl FUN_021ED538
	mov r4, r0
_021EDB38:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EDB44
FUN_021EDB44: ; 0x021EDB44
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	bl FUN_020A71F8
	mov r4, r0
	mov r0, #0x10
	bl FUN_021EB798
	cmp r4, #1
	bne _021EDBB0
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl FUN_021ED17C
	ldr r1, _021EDBC8 ; =FUN_021EC44C
	add r0, sp, #0
	bl FUN_020A7BD4
	cmp r0, #1
	beq _021EDB9C
	cmp r0, #4
	blt _021EDBBC
_021EDB9C:
	mov r0, #1
	bl FUN_021EB6F4
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_021EDBB0:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_021EDBBC:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EDBC8: .word FUN_021EC44C

	arm_func_start FUN_021EDBCC
FUN_021EDBCC: ; 0x021EDBCC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsia sp!, {r4, pc}
	bl FUN_021EB6AC
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmneia sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0xc8
	bl FUN_021EDCA8
	str r0, [sp]
	add r0, r4, #0xcc
	bl FUN_021EDCA8
	str r0, [sp, #4]
	add r0, sp, #0
	add r1, sp, #4
	bl FUN_0209A594
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EDC54
FUN_021EDC54: ; 0x021EDC54
	rsb r0, r0, #0x20
	cmp r0, #0
	mvn r3, #0
	mov r1, #0
	ble _021EDC78
_021EDC68:
	add r1, r1, #1
	cmp r1, r0
	mov r3, r3, lsl #1
	blt _021EDC68
_021EDC78:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr

	arm_func_start FUN_021EDCA8
FUN_021EDCA8: ; 0x021EDCA8
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	mov r3, #0
	orr r3, r3, r1, lsl #24
	ldrb r1, [r0, #2]
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr

	arm_func_start FUN_021EDCFC
FUN_021EDCFC: ; 0x021EDCFC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _021EDDB8 ; =0x0220BB2C
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsia sp!, {r4, r5, r6, pc}
	bl FUN_021EB6AC
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	beq _021EDD94
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl FUN_021EDCA8
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl FUN_021EDC54
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl FUN_021EDCA8
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl FUN_021EDCA8
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl FUN_021EDCA8
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
_021EDD94:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EDDB8: .word 0x0220BB2C

	arm_func_start FUN_021EDDBC
FUN_021EDDBC: ; 0x021EDDBC
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02099A94
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0xb
	ldmneia sp!, {pc}
	bl THUNK_FUN_02099BC8
	cmp r0, #0
	beq _021EDDF0
	mvn r1, #0x26
	cmp r0, r1
	bne _021EDDFC
_021EDDF0:
	add sp, sp, #4
	mov r0, #9
	ldmfd sp!, {pc}
_021EDDFC:
	mov r0, #0xb
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EDE08
FUN_021EDE08: ; 0x021EDE08
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrb r0, [r0, #0xd0d]
	bl FUN_021EB6BC
	mov r0, #0x10
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EDE24
FUN_021EDE24: ; 0x021EDE24
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_021EB798
	mov r4, r0
	bl FUN_021DC7AC
	movs r5, r0
	beq _021EDE88
	ldrb r0, [r6, #0xd0d]
	bl FUN_021EB6AC
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _021EDE60
	bl FUN_021DC794
	str r0, [r4, #0x10]
_021EDE60:
	bl FUN_021DC870
	cmp r5, #0xb
	moveq r0, #0xf
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, r5, r6, pc}
_021EDE88:
	mov r0, #0xe
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EDE90
FUN_021EDE90: ; 0x021EDE90
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #8
	bl FUN_021EB798
	bl FUN_021DC970
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0xe
	ldmeqia sp!, {pc}
	mov r0, #3
	bl FUN_021EB6F4
	mov r0, #0x11
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EDEC8
FUN_021EDEC8: ; 0x021EDEC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_0209A60C
	cmp r0, #0
	beq _021EDF00
	mov r0, r4
	bl FUN_021EDBCC
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmia sp!, {r4, pc}
_021EDF00:
	bl OS_GetTick
	ldr r3, [r4, #0xcb0]
	ldr r2, [r4, #0xcb4]
	subs r3, r0, r3
	sbc r0, r1, r2
	mov r1, r0, lsl #6
	ldr r2, _021EDF54 ; =0x01FF6210
	orr r1, r1, r3, lsr #26
	mov r0, r3, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmloia sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EDF54: .word 0x01FF6210

	arm_func_start FUN_021EDF58
FUN_021EDF58: ; 0x021EDF58
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_021EB798
	mov r5, r0
	mov r0, #4
	bl FUN_021EB798
	mov r4, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_021EDCFC
	ldr r1, _021EDFB8 ; =0x021C8CC4
	mov r2, #4
	mov r0, r4
	str r2, [r1]
	bl FUN_0209A2C0
	cmp r0, #0
	moveq r0, #0xc
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #2
	bl FUN_021EB6F4
	mov r0, #0x11
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EDFB8: .word 0x021C8CC4

	arm_func_start FUN_021EDFBC
FUN_021EDFBC: ; 0x021EDFBC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_021EB720
	mov r5, r0
	mov r0, #0x10
	bl FUN_021EB798
	mov r4, r0
	bl FUN_020A71F8
	cmp r0, #9
	bne _021EE064
	sub r0, r5, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021EE0B4
_021EDFF4: ; jump table
	b _021EE00C ; case 0
	b _021EE058 ; case 1
	b _021EE01C ; case 2
	b _021EE02C ; case 3
	b _021EE038 ; case 4
	b _021EE048 ; case 5
_021EE00C:
	mov r0, r4
	bl FUN_021EDF58
	mov r5, r0
	b _021EE0B4
_021EE01C:
	mov r0, r4
	bl FUN_021EDEC8
	mov r5, r0
	b _021EE0B4
_021EE02C:
	bl FUN_021EDE90
	mov r5, r0
	b _021EE0B4
_021EE038:
	mov r0, r4
	bl FUN_021EDE24
	mov r5, r0
	b _021EE0B4
_021EE048:
	mov r0, r4
	bl FUN_021EDE08
	mov r5, r0
	b _021EE0B4
_021EE058:
	bl FUN_021EDDBC
	mov r5, r0
	b _021EE0B4
_021EE064:
	cmp r5, #0xb
	beq _021EE08C
	cmp r5, #0xe
	beq _021EE098
	cmp r5, #0xf
	bne _021EE0A0
	mov r0, r4
	bl FUN_021EDE08
	mov r5, r0
	b _021EE0B4
_021EE08C:
	bl FUN_021EDDBC
	mov r5, r0
	b _021EE0B4
_021EE098:
	bl FUN_021DC7F0
	bl FUN_021DC870
_021EE0A0:
	ldrb r0, [r4, #0xd13]
	mov r1, #2
	mov r5, #0xb
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
_021EE0B4:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EE0C0
FUN_021EE0C0: ; 0x021EE0C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov r4, #3
	mul r4, r2, r4
	mov r4, r4, lsr #2
	mov sl, r0
	mov r0, r4
	cmp r3, r0
	andhs fp, r2, #3
	subhs r0, r2, fp
	str r4, [sp, #4]
	mov sb, r1
	strhs r0, [sp]
	bhs _021EE104
	add sp, sp, #0x1c
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EE104:
	cmp r0, #0
	mov r7, #0
	ble _021EE190
	mov r5, r7
	add r4, sp, #0x10
	str r7, [sp, #0xc]
	str r7, [sp, #8]
_021EE120:
	ldr r8, [sp, #8]
	mov r6, r8
_021EE128:
	add r0, r7, r6
	ldrb r0, [sl, r0]
	bl FUN_021EE234
	rsb r2, r6, #3
	mov r1, #6
	mul r1, r2, r1
	orr r8, r8, r0, lsl r1
	add r6, r6, #1
	cmp r6, #4
	blt _021EE128
	mov r0, #3
	mul r1, r5, r0
	ldr r2, [sp, #0xc]
	str r8, [sp, #0x10]
_021EE160:
	rsb r0, r2, #2
	ldrb r0, [r4, r0]
	add r2, r2, #1
	cmp r2, #3
	strb r0, [sb, r1]
	add r1, r1, #1
	blt _021EE160
	ldr r0, [sp]
	add r7, r7, #4
	cmp r7, r0
	add r5, r5, #1
	blt _021EE120
_021EE190:
	cmp fp, #0
	beq _021EE228
	mov r5, #0
	mov r4, r5
	str r5, [sp, #0x14]
	cmp fp, #0
	ble _021EE1E4
	mov r6, #6
_021EE1B0:
	ldr r0, [sp]
	add r0, r0, r4
	ldrb r0, [sl, r0]
	bl FUN_021EE234
	rsb r1, r4, #3
	mul r2, r1, r6
	orr r5, r5, r0, lsl r2
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	orr r0, r0, r5
	cmp r4, fp
	str r0, [sp, #0x14]
	blt _021EE1B0
_021EE1E4:
	cmp fp, #0
	mov r2, #0
	ble _021EE228
	ldr r0, [sp]
	mov r1, #3
	mul r1, r0, r1
	mov r0, r1, asr #1
	add r0, r1, r0, lsr #30
	mov r3, r0, asr #2
	add r1, sp, #0x14
_021EE20C:
	rsb r0, r2, #2
	ldrb r0, [r1, r0]
	add r2, r2, #1
	cmp r2, fp
	strb r0, [sb, r3]
	add r3, r3, #1
	blt _021EE20C
_021EE228:
	ldr r0, [sp, #4]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_021EE234
FUN_021EE234: ; 0x021EE234
	cmp r0, #0x41
	blo _021EE248
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_021EE248:
	cmp r0, #0x61
	blo _021EE260
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_021EE260:
	cmp r0, #0x30
	blo _021EE278
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_021EE278:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr

	arm_func_start FUN_021EE2A4
FUN_021EE2A4: ; 0x021EE2A4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r1, #0
	ldr lr, _021EE454 ; =0x92492493
	ldr ip, _021EE458 ; =0x00000007
_021EE2BC:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r3, r3, asr #2
	mov r2, r1, lsr #0x1f
	add r3, r2, r3
	smull r2, r3, ip, r3
	sub r3, r1, r2
	add r2, r3, #0xd
	ldrb r3, [r0, r1]
	ldrb r2, [r0, r2]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _021EE2BC
	mov ip, #0
_021EE2FC:
	add r3, ip, #3
	add r1, ip, #0xd
	ldrb r2, [r4, r3]
	ldrb r1, [r0, r1]
	add ip, ip, #1
	cmp ip, #7
	eor r1, r2, r1
	strb r1, [r4, r3]
	blt _021EE2FC
	ldr r0, _021EE45C ; =0x0220D4DC
	mov r3, #0
_021EE328:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021EE328
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r3, _021EE460 ; =0x0220BB84
	add ip, sp, #0
	mov r2, #0
_021EE364:
	ldrb r1, [ip]
	ldrb r0, [r3]
	add r2, r2, #1
	cmp r2, #0xd
	strb r1, [r4, r0]
	add ip, ip, #1
	add r3, r3, #1
	blt _021EE364
	ldr r0, _021EE464 ; =0x0220D4E0
	mov r3, #0
_021EE38C:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _021EE38C
	ldr r2, _021EE468 ; =0x0220BB94
	mov ip, #0
_021EE3B4:
	ldrb r3, [r4, ip]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, ip]
	add ip, ip, #1
	cmp ip, #0xd
	blt _021EE3B4
	mov r0, #0
_021EE3E4:
	add lr, r0, #6
	ldrb r2, [r4, r0]
	ldrb r1, [r4, lr]
	add ip, r0, #9
	add r3, r0, #3
	eor r1, r2, r1
	strb r1, [r4, r0]
	ldrb r2, [r4, r3]
	ldrb r1, [r4, ip]
	eor r1, r2, r1
	strb r1, [r4, r3]
	ldrb r2, [r4, lr]
	ldrb r1, [r4, r3]
	eor r1, r2, r1
	strb r1, [r4, lr]
	ldrb r2, [r4, ip]
	ldrb r1, [r4, r0]
	eor r1, r2, r1
	strb r1, [r4, ip]
	ldrb r1, [r4, r0]
	ldrb r2, [r4, #0xc]
	add r0, r0, #1
	cmp r0, #3
	eor r1, r2, r1
	strb r1, [r4, #0xc]
	blt _021EE3E4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EE454: .word 0x92492493
_021EE458: .word 0x00000007
_021EE45C: .word 0x0220D4DC
_021EE460: .word 0x0220BB84
_021EE464: .word 0x0220D4E0
_021EE468: .word 0x0220BB94

	arm_func_start FUN_021EE46C
FUN_021EE46C: ; 0x021EE46C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	mov r5, r0
	add r0, sp, #0x14
	mov r4, r1
	bl DGT_Hash1Reset
	add r0, sp, #0x14
	mov r1, r5
	mov r2, #0x18
	bl DGT_Hash1SetSource
	add r0, sp, #0
	add r1, sp, #0x14
	bl DGT_Hash1GetDigest_R
	add r0, sp, #3
	mov r1, r4
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EE4B8
FUN_021EE4B8: ; 0x021EE4B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr lr, _021EE5AC ; =0x0220BBA4
	add ip, sp, #0
	mov r4, r1
	mov r3, #0xc
_021EE4D0:
	ldrb r2, [lr], #1
	ldrb r1, [lr], #1
	subs r3, r3, #1
	strb r2, [ip], #1
	strb r1, [ip], #1
	bne _021EE4D0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl FUN_021EE0C0
	mov r3, #0
	ldr r0, _021EE5B0 ; =0x0220D4E4
_021EE500:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021EE500
	mov lr, #0
	add ip, sp, #0
	mov r1, #0xff
_021EE52C:
	and r7, lr, #0xff
	ldrb r0, [ip, r7]
	mov r6, r7
	ldrb r5, [r4, lr]
	cmp r0, #0xff
	beq _021EE570
_021EE544:
	add r3, ip, r6
	ldrb r6, [ip, r6]
	ldrb r0, [ip, r7]
	ldrb r2, [r4, r6]
	mov r7, r6
	strb r5, [r4, r0]
	strb r1, [r3]
	ldrb r0, [ip, r6]
	mov r5, r2
	cmp r0, #0xff
	bne _021EE544
_021EE570:
	add lr, lr, #1
	cmp lr, #0x18
	blt _021EE52C
	ldr r0, _021EE5B4 ; =0x0220D4D8
	mov r3, #0
_021EE584:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _021EE584
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EE5AC: .word 0x0220BBA4
_021EE5B0: .word 0x0220D4E4
_021EE5B4: .word 0x0220D4D8

	arm_func_start FUN_021EE5B8
FUN_021EE5B8: ; 0x021EE5B8
	ldr ip, _021EE5C4 ; =FUN_021EE2A4
	add r0, r0, #0xc
	bx ip
	.align 2, 0
_021EE5C4: .word FUN_021EE2A4

	arm_func_start FUN_021EE5C8
FUN_021EE5C8: ; 0x021EE5C8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021EE5F0 ; =0x0220D540
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EE5F0: .word 0x0220D540

	arm_func_start FUN_021EE5F4
FUN_021EE5F4: ; 0x021EE5F4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl FUN_021EE4B8
	ldr r1, _021EE63C ; =0x0220D54C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, pc}
	add r0, sp, #8
	mov r1, r4
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EE63C: .word 0x0220D54C

	arm_func_start FUN_021EE640
FUN_021EE640: ; 0x021EE640
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r4, r1
	add r1, sp, #0
	bl FUN_021EE4B8
	add r0, sp, #0
	mov r1, r4
	bl FUN_021EE46C
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EE668
FUN_021EE668: ; 0x021EE668
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	add r1, sp, #0
	bl FUN_021EE4B8
	ldr r1, _021EE69C ; =0x0220D54C
	add r0, sp, #0
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {pc}
	.align 2, 0
_021EE69C: .word 0x0220D54C

	arm_func_start FUN_021EE6A0
FUN_021EE6A0: ; 0x021EE6A0
	stmdb sp!, {lr}
	sub sp, sp, #0x5c
	ldr r0, _021EE7D4 ; =0x02210EE0
	mov r2, #8
	ldr r0, [r0]
	mvn r1, #0
	cmp r0, r1
	ldreq r1, _021EE7D8 ; =0x02210E5C
	moveq r0, #1
	str r2, [sp, #0x10]
	streq r0, [r1]
	addeq sp, sp, #0x5c
	ldmeqia sp!, {pc}
	bl FUN_021EFF2C
	cmp r0, #0
	beq _021EE774
	add r0, sp, #8
	str r0, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	ldr r0, _021EE7D4 ; =0x02210EE0
	add r1, sp, #0x18
	ldr r0, [r0]
	mov r2, #0x40
	mov r3, #0
	bl FUN_021EFC40
	mov r1, r0
	add r0, sp, #0x18
	add r2, sp, #8
	add r3, sp, #0x14
	bl FUN_021EE7DC
	cmp r0, #0
	bne _021EE774
	ldr r0, _021EE7D4 ; =0x02210EE0
	ldr r0, [r0]
	bl FUN_021EFD9C
	ldr r1, [sp, #0x14]
	ands r0, r1, #1
	ldrne r0, _021EE7D8 ; =0x02210E5C
	movne r1, #2
	strne r1, [r0]
	bne _021EE764
	ands r0, r1, #2
	ldrne r0, _021EE7D8 ; =0x02210E5C
	movne r1, #3
	strne r1, [r0]
	ldreq r0, _021EE7D8 ; =0x02210E5C
	moveq r1, #1
	streq r1, [r0]
_021EE764:
	ldr r0, _021EE7D8 ; =0x02210E5C
	add sp, sp, #0x5c
	ldr r0, [r0]
	ldmfd sp!, {pc}
_021EE774:
	bl FUN_021F025C
	ldr r1, _021EE7D4 ; =0x02210EE0
	ldr r2, [r1, #0x50]
	add r2, r2, #0x7d0
	cmp r0, r2
	bls _021EE7C8
	ldr r0, [r1, #0x54]
	cmp r0, #1
	bne _021EE7B4
	ldr r0, [r1]
	bl FUN_021EFD9C
	ldr r1, _021EE7D8 ; =0x02210E5C
	mov r0, #1
	str r0, [r1]
	add sp, sp, #0x5c
	ldmfd sp!, {pc}
_021EE7B4:
	bl FUN_021EE990
	ldr r0, _021EE7D4 ; =0x02210EE0
	ldr r1, [r0, #0x54]
	add r1, r1, #1
	str r1, [r0, #0x54]
_021EE7C8:
	mov r0, #0
	add sp, sp, #0x5c
	ldmfd sp!, {pc}
	.align 2, 0
_021EE7D4: .word 0x02210EE0
_021EE7D8: .word 0x02210E5C

	arm_func_start FUN_021EE7DC
FUN_021EE7DC: ; 0x021EE7DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #7
	mov r6, r2
	mov r4, r3
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r1, _021EE88C ; =0x02210EE8
	add r0, r6, #4
	mov r2, #4
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, _021EE890 ; =0x02210EE0
	ldrh r1, [r6, #2]
	ldrh r0, [r0, #6]
	cmp r1, r0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021EE894 ; =0x0220D558
	mov r0, r5
	mov r2, #3
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldrsb r2, [r5, #3]
	ldrsb r0, [r5, #4]
	ldrsb r1, [r5, #5]
	mov r3, r2, lsl #0x18
	mov r2, r0, lsl #0x10
	ldrsb r0, [r5, #6]
	mov r1, r1, lsl #8
	and r3, r3, #0xff000000
	and r2, r2, #0xff0000
	orr r2, r3, r2
	and r1, r1, #0xff00
	orr r1, r2, r1
	and r0, r0, #0xff
	orr r0, r1, r0
	str r0, [r4]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EE88C: .word 0x02210EE8
_021EE890: .word 0x02210EE0
_021EE894: .word 0x0220D558

	arm_func_start FUN_021EE898
FUN_021EE898: ; 0x021EE898
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x44
	mov r4, r0
	ldr r0, _021EE974 ; =0x02210EA0
	mov r1, r4
	bl strcpy
	ldr r0, _021EE978 ; =0x02210EE0
	mvn r1, #0
	str r1, [r0]
	bl FUN_021F024C
	ldr r0, _021EE97C ; =0x02210E60
	ldrsb r5, [r0]
	cmp r5, #0
	bne _021EE8E0
	ldr r1, _021EE980 ; =0x0220D55C
	add r0, sp, #0
	mov r2, r4
	bl sprintf
_021EE8E0:
	cmp r5, #0
	ldrne r0, _021EE97C ; =0x02210E60
	ldr r1, _021EE984 ; =0x00006CFC
	ldr r2, _021EE988 ; =0x02210EE4
	addeq r0, sp, #0
	bl FUN_021EE9E0
	cmp r0, #0
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_021EFDB8
	ldr r2, _021EE978 ; =0x02210EE0
	mvn r1, #0
	cmp r0, r1
	str r0, [r2]
	addeq sp, sp, #0x44
	ldmeqia sp!, {r4, r5, pc}
	mov r1, #9
	mov r0, r4
	strb r1, [r2, #0xc]
	bl strlen
	mov r5, r0
	ldr r0, _021EE98C ; =0x02210EF1
	mov r1, r4
	add r2, r5, #1
	bl memcpy
	ldr r0, _021EE978 ; =0x02210EE0
	add r1, r5, #6
	str r1, [r0, #0x4c]
	bl FUN_021EE990
	ldr r0, _021EE978 ; =0x02210EE0
	mov r1, #0
	str r1, [r0, #0x54]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EE974: .word 0x02210EA0
_021EE978: .word 0x02210EE0
_021EE97C: .word 0x02210E60
_021EE980: .word 0x0220D55C
_021EE984: .word 0x00006CFC
_021EE988: .word 0x02210EE4
_021EE98C: .word 0x02210EF1

	arm_func_start FUN_021EE990
FUN_021EE990: ; 0x021EE990
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _021EE9D4 ; =0x02210EE4
	mov r0, #8
	str r1, [sp]
	ldr r1, _021EE9D8 ; =0x02210EE0
	str r0, [sp, #4]
	ldr r0, [r1]
	ldr r2, [r1, #0x4c]
	ldr r1, _021EE9DC ; =0x02210EEC
	mov r3, #0
	bl FUN_021EFBD4
	bl FUN_021F025C
	ldr r1, _021EE9D8 ; =0x02210EE0
	str r0, [r1, #0x50]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021EE9D4: .word 0x02210EE4
_021EE9D8: .word 0x02210EE0
_021EE9DC: .word 0x02210EEC

	arm_func_start FUN_021EE9E0
FUN_021EE9E0: ; 0x021EE9E0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	mov r4, r2
	mov ip, #2
	and r2, r3, #0xff
	and r1, r1, #0xff00
	strb ip, [r4, #1]
	orr r1, r2, r1
	strh r1, [r4, #2]
	mov r5, r0
	bl FUN_021EFB38
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	mvn r0, #0
	cmp r1, r0
	bne _021EEA58
	mov r0, r5
	bl FUN_0209A6EC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r4, #4]
_021EEA58:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EEA64
FUN_021EEA64: ; 0x021EEA64
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r7, [sp, #0x2c]
	mov r6, #0
	str r0, [sp]
	mov sl, r1
	mov sb, r3
	str r6, [r7]
	subs r5, r2, #1
	ldr r8, [sp, #0x28]
	bmi _021EEAC4
	mov fp, #1
_021EEA94:
	add r0, r6, r5
	mov r4, r0, asr #1
	mla r0, r4, sb, sl
	ldr r1, [sp]
	blx r8
	cmp r0, #0
	streq fp, [r7]
	cmp r0, #0
	addlt r6, r4, #1
	subge r5, r4, #1
	cmp r6, r5
	ble _021EEA94
_021EEAC4:
	mla r0, r6, sb, sl
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_021EEAD0
FUN_021EEAD0: ; 0x021EEAD0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r8, #0
	ldr r6, [sp, #0x20]
	mov r5, #0
	ble _021EEB20
	mov r4, r5
_021EEAF8:
	mov r0, sl
	add r1, sb, r4
	blx r6
	cmp r0, #0
	mlaeq r0, r7, r5, sb
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r5, r5, #1
	cmp r5, r8
	add r4, r4, r7
	blt _021EEAF8
_021EEB20:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start FUN_021EEB28
FUN_021EEB28: ; 0x021EEB28
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_021EF06C
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
_021EEB44:
	mov r0, r5
	mov r1, r4
	bl FUN_021EED84
	subs r4, r4, #1
	bpl _021EEB44
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EEB60
FUN_021EEB60: ; 0x021EEB60
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	bne _021EEB88
	ldr r0, _021EEBC8 ; =0x0220D580
	ldr r1, _021EEBCC ; =0x0220D584
	ldr r3, _021EEBD0 ; =0x00000121
	mov r2, #0
	bl __msl_assertion_failed
_021EEB88:
	ldr r0, [r8]
	subs r5, r0, #1
	bmi _021EEBC0
_021EEB94:
	mov r0, r8
	mov r1, r5
	bl FUN_021EEFFC
	mov r1, r6
	mov r4, r0
	blx r7
	cmp r0, #0
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	subs r5, r5, #1
	bpl _021EEB94
_021EEBC0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EEBC8: .word 0x0220D580
_021EEBCC: .word 0x0220D584
_021EEBD0: .word 0x00000121

	arm_func_start FUN_021EEBD4
FUN_021EEBD4: ; 0x021EEBD4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EEC00
	ldr r0, _021EEC34 ; =0x0220D580
	ldr r1, _021EEC38 ; =0x0220D584
	mov r2, #0
	mov r3, #0x104
	bl __msl_assertion_failed
_021EEC00:
	ldr r0, [r7]
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, r6, r7, pc}
_021EEC10:
	mov r0, r7
	mov r1, r4
	bl FUN_021EEFFC
	mov r1, r5
	blx r6
	subs r4, r4, #1
	bpl _021EEC10
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEC34: .word 0x0220D580
_021EEC38: .word 0x0220D584

	arm_func_start FUN_021EEC3C
FUN_021EEC3C: ; 0x021EEC3C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov ip, #1
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str ip, [sp, #8]
	beq _021EEC6C
	ldr r8, [r7]
	cmp r8, #0
	bne _021EEC78
_021EEC6C:
	add sp, sp, #0x10
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EEC78:
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _021EECB0
	mov r1, r4
	bl FUN_021EEFFC
	add r1, sp, #8
	str r5, [sp]
	str r1, [sp, #4]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl FUN_021EEA64
	b _021EECD0
_021EECB0:
	mov r1, r4
	bl FUN_021EEFFC
	str r5, [sp]
	mov r1, r0
	ldr r3, [r7, #8]
	mov r0, r6
	sub r2, r8, r4
	bl FUN_021EEAD0
_021EECD0:
	cmp r0, #0
	beq _021EECFC
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _021EECFC
	ldr r2, [r7, #0x14]
	ldr r1, [r7, #8]
	sub r0, r0, r2
	bl _s32_div_f
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021EECFC:
	mvn r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_021EED08
FUN_021EED08: ; 0x021EED08
	ldr ip, _021EED24 ; =0x020E1888
	mov r2, r0
	mov r3, r1
	ldr r0, [r2, #0x14]
	ldr r1, [r2]
	ldr r2, [r2, #8]
	bx ip
	.align 2, 0
_021EED24: .word 0x020E1888

	arm_func_start FUN_021EED28
FUN_021EED28: ; 0x021EED28
	stmdb sp!, {r4, r5, r6, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021EED48
	ldr r0, [r6]
	cmp r4, r0
	blt _021EED5C
_021EED48:
	ldr r0, _021EED7C ; =0x0220D590
	ldr r1, _021EED80 ; =0x0220D584
	mov r2, #0
	mov r3, #0xd3
	bl __msl_assertion_failed
_021EED5C:
	mov r0, r6
	mov r1, r4
	bl FUN_021EF240
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021EF1B8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EED7C: .word 0x0220D590
_021EED80: .word 0x0220D584

	arm_func_start FUN_021EED84
FUN_021EED84: ; 0x021EED84
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	bmi _021EEDA4
	ldr r0, [r5]
	cmp r4, r0
	blt _021EEDB8
_021EEDA4:
	ldr r0, _021EEDD8 ; =0x0220D590
	ldr r1, _021EEDDC ; =0x0220D584
	mov r2, #0
	mov r3, #0xca
	bl __msl_assertion_failed
_021EEDB8:
	mov r0, r5
	mov r1, r4
	bl FUN_021EF240
	mov r0, r5
	mov r1, r4
	bl FUN_021EEDE0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EEDD8: .word 0x0220D590
_021EEDDC: .word 0x0220D584

	arm_func_start FUN_021EEDE0
FUN_021EEDE0: ; 0x021EEDE0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r1
	mov r4, r0
	bmi _021EEE00
	ldr r0, [r4]
	cmp r7, r0
	blt _021EEE14
_021EEE00:
	ldr r0, _021EEE6C ; =0x0220D590
	ldr r1, _021EEE70 ; =0x0220D584
	mov r2, #0
	mov r3, #0xc0
	bl __msl_assertion_failed
_021EEE14:
	ldr r0, [r4]
	sub r6, r0, #1
	cmp r7, r6
	bge _021EEE58
	mov r0, r4
	mov r1, r7
	bl FUN_021EEFFC
	mov r5, r0
	mov r0, r4
	add r1, r7, #1
	bl FUN_021EEFFC
	mov r1, r0
	ldr r3, [r4, #8]
	sub r0, r6, r7
	mul r2, r3, r0
	mov r0, r5
	bl memmove
_021EEE58:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EEE6C: .word 0x0220D590
_021EEE70: .word 0x0220D584

	arm_func_start FUN_021EEE74
FUN_021EEE74: ; 0x021EEE74
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bne _021EEEA0
	ldr r0, _021EEEE8 ; =0x0220D5B0
	ldr r1, _021EEEEC ; =0x0220D584
	mov r2, #0
	mov r3, #0xb7
	bl __msl_assertion_failed
_021EEEA0:
	add r0, sp, #8
	str r4, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #0x14]
	ldr r2, [r6]
	ldr r3, [r6, #8]
	mov r0, r5
	bl FUN_021EEA64
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #8]
	sub r0, r0, r2
	bl _s32_div_f
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_021EEEF0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EEEE8: .word 0x0220D5B0
_021EEEEC: .word 0x0220D584

	arm_func_start FUN_021EEEF0
FUN_021EEEF0: ; 0x021EEEF0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r2
	mov r6, r0
	mov r5, r1
	bmi _021EEF10
	ldr r0, [r6]
	cmp r4, r0
	ble _021EEF24
_021EEF10:
	ldr r0, _021EEFA0 ; =0x0220D5BC
	ldr r1, _021EEFA4 ; =0x0220D584
	mov r2, #0
	mov r3, #0xa7
	bl __msl_assertion_failed
_021EEF24:
	ldr r1, [r6]
	ldr r0, [r6, #4]
	cmp r1, r0
	bne _021EEF3C
	mov r0, r6
	bl FUN_021EF1E4
_021EEF3C:
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	ldr r0, [r6]
	sub r8, r0, #1
	cmp r4, r8
	bge _021EEF8C
	mov r0, r6
	add r1, r4, #1
	bl FUN_021EEFFC
	mov r7, r0
	mov r0, r6
	mov r1, r4
	bl FUN_021EEFFC
	mov r1, r0
	ldr r3, [r6, #8]
	sub r0, r8, r4
	mul r2, r3, r0
	mov r0, r7
	bl memmove
_021EEF8C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021EF1B8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EEFA0: .word 0x0220D5BC
_021EEFA4: .word 0x0220D584

	arm_func_start FUN_021EEFA8
FUN_021EEFA8: ; 0x021EEFA8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	mov r4, r1
	bne _021EEFD0
	ldr r0, _021EEFF4 ; =0x0220D5DC
	ldr r1, _021EEFF8 ; =0x0220D584
	mov r2, #0
	mov r3, #0xa0
	bl __msl_assertion_failed
_021EEFD0:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r5]
	mov r0, r5
	mov r1, r4
	bl FUN_021EEEF0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EEFF4: .word 0x0220D5DC
_021EEFF8: .word 0x0220D584

	arm_func_start FUN_021EEFFC
FUN_021EEFFC: ; 0x021EEFFC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r1
	mov r5, r0
	bmi _021EF01C
	ldr r0, [r5]
	cmp r4, r0
	blt _021EF030
_021EF01C:
	ldr r0, _021EF064 ; =0x0220D590
	ldr r1, _021EF068 ; =0x0220D584
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021EF030:
	cmp r4, #0
	blt _021EF044
	ldr r0, [r5]
	cmp r4, r0
	blt _021EF050
_021EF044:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021EF050:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #8]
	mla r0, r1, r4, r0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF064: .word 0x0220D590
_021EF068: .word 0x0220D584

	arm_func_start FUN_021EF06C
FUN_021EF06C: ; 0x021EF06C
	ldr r0, [r0]
	bx lr

	arm_func_start FUN_021EF074
FUN_021EF074: ; 0x021EF074
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	bne _021EF098
	ldr r0, _021EF0DC ; =0x0220D5DC
	ldr r1, _021EF0E0 ; =0x0220D584
	mov r2, #0
	mov r3, #0x69
	bl __msl_assertion_failed
_021EF098:
	ldr r0, [r5]
	mov r4, #0
	cmp r0, #0
	ble _021EF0C4
_021EF0A8:
	mov r0, r5
	mov r1, r4
	bl FUN_021EF240
	ldr r0, [r5]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF0A8
_021EF0C4:
	ldr r0, [r5, #0x14]
	bl FUN_021DD82C
	mov r0, r5
	bl FUN_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF0DC: .word 0x0220D5DC
_021EF0E0: .word 0x0220D584

	arm_func_start FUN_021EF0E4
FUN_021EF0E4: ; 0x021EF0E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r0, #0x18
	mov r6, r1
	mov r5, r2
	bl FUN_021DD860
	movs r4, r0
	bne _021EF11C
	ldr r0, _021EF1A8 ; =0x0220D5DC
	ldr r1, _021EF1AC ; =0x0220D584
	mov r2, #0
	mov r3, #0x52
	bl __msl_assertion_failed
_021EF11C:
	cmp r7, #0
	bne _021EF138
	ldr r0, _021EF1B0 ; =0x0220D5E4
	ldr r1, _021EF1AC ; =0x0220D584
	mov r2, #0
	mov r3, #0x53
	bl __msl_assertion_failed
_021EF138:
	mov r0, #0
	cmp r6, #0
	moveq r6, #8
	str r0, [r4]
	str r6, [r4, #4]
	str r7, [r4, #8]
	str r6, [r4, #0xc]
	str r5, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021EF198
	ldr r0, [r4, #8]
	mul r0, r1, r0
	bl FUN_021DD860
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021EF19C
	ldr r0, _021EF1B4 ; =0x0220D5F0
	ldr r1, _021EF1AC ; =0x0220D584
	mov r2, #0
	mov r3, #0x5e
	bl __msl_assertion_failed
	b _021EF19C
_021EF198:
	str r0, [r4, #0x14]
_021EF19C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF1A8: .word 0x0220D5DC
_021EF1AC: .word 0x0220D584
_021EF1B0: .word 0x0220D5E4
_021EF1B4: .word 0x0220D5F0

	arm_func_start FUN_021EF1B8
FUN_021EF1B8: ; 0x021EF1B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r1, r2
	bl FUN_021EEFFC
	ldr r2, [r5, #8]
	mov r1, r4
	bl memcpy
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EF1E4
FUN_021EF1E4: ; 0x021EF1E4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	mul r1, r2, r1
	bl FUN_021DD844
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _021EF238 ; =0x0220D5F0
	ldr r1, _021EF23C ; =0x0220D584
	mov r2, #0
	mov r3, #0x41
	bl __msl_assertion_failed
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EF238: .word 0x0220D5F0
_021EF23C: .word 0x0220D584

	arm_func_start FUN_021EF240
FUN_021EF240: ; 0x021EF240
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021EEFFC
	ldr r1, [r4, #0x10]
	blx r1
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EF264
FUN_021EF264: ; 0x021EF264
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EF290
	ldr r0, _021EF2DC ; =0x0220D5FC
	ldr r1, _021EF2E0 ; =0x0220D600
	mov r2, #0
	mov r3, #0xd3
	bl __msl_assertion_failed
_021EF290:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EF2D0
_021EF2A0:
	ldr r0, [r7]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl FUN_021EEB60
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF2A0
_021EF2D0:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF2DC: .word 0x0220D5FC
_021EF2E0: .word 0x0220D600

	arm_func_start FUN_021EF2E4
FUN_021EF2E4: ; 0x021EF2E4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r6, r1
	mov r7, r0
	mov r5, r2
	bne _021EF310
	ldr r0, _021EF350 ; =0x0220D5FC
	ldr r1, _021EF354 ; =0x0220D600
	mov r2, #0
	mov r3, #0xb6
	bl __msl_assertion_failed
_021EF310:
	ldr r0, [r7, #4]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, pc}
_021EF324:
	ldr r0, [r7]
	mov r1, r6
	ldr r0, [r0, r4, lsl #2]
	mov r2, r5
	bl FUN_021EEBD4
	ldr r0, [r7, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF324
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021EF350: .word 0x0220D5FC
_021EF354: .word 0x0220D600

	arm_func_start FUN_021EF358
FUN_021EF358: ; 0x021EF358
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF380
	ldr r0, _021EF3EC ; =0x0220D60C
	ldr r1, _021EF3F0 ; =0x0220D600
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021EF380:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl FUN_021EEC3C
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	ldr r0, [r0, r4, lsl #2]
	bl FUN_021EEFFC
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF3EC: .word 0x0220D60C
_021EF3F0: .word 0x0220D600

	arm_func_start FUN_021EF3F4
FUN_021EF3F4: ; 0x021EF3F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF41C
	ldr r0, _021EF48C ; =0x0220D60C
	ldr r1, _021EF490 ; =0x0220D600
	mov r2, #0
	mov r3, #0x82
	bl __msl_assertion_failed
_021EF41C:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl FUN_021EEC3C
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	ldr r0, [r0, r4, lsl #2]
	bl FUN_021EED84
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF48C: .word 0x0220D60C
_021EF490: .word 0x0220D600

	arm_func_start FUN_021EF494
FUN_021EF494: ; 0x021EF494
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	bne _021EF4BC
	ldr r0, _021EF538 ; =0x0220D60C
	ldr r1, _021EF53C ; =0x0220D600
	mov r2, #0
	mov r3, #0x71
	bl __msl_assertion_failed
_021EF4BC:
	cmp r6, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldr r2, [r6, #0xc]
	mov r0, r5
	blx r2
	mov r3, #0
	str r3, [sp]
	ldr r1, [r6]
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [r6, #0x10]
	mov r1, r5
	bl FUN_021EEC3C
	mov r2, r0
	mvn r0, #0
	cmp r2, r0
	bne _021EF520
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	bl FUN_021EEFA8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
_021EF520:
	ldr r0, [r6]
	mov r1, r5
	ldr r0, [r0, r4, lsl #2]
	bl FUN_021EED28
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF538: .word 0x0220D60C
_021EF53C: .word 0x0220D600

	arm_func_start FUN_021EF540
FUN_021EF540: ; 0x021EF540
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r4, #0
	bne _021EF564
	ldr r0, _021EF5A8 ; =0x0220D60C
	ldr r1, _021EF5AC ; =0x0220D600
	mov r2, r4
	mov r3, #0x61
	bl __msl_assertion_failed
_021EF564:
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	mov r5, #0
	cmp r0, #0
	ble _021EF5A0
_021EF580:
	ldr r0, [r6]
	ldr r0, [r0, r5, lsl #2]
	bl FUN_021EF06C
	ldr r1, [r6, #4]
	add r5, r5, #1
	cmp r5, r1
	add r4, r4, r0
	blt _021EF580
_021EF5A0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021EF5A8: .word 0x0220D60C
_021EF5AC: .word 0x0220D600

	arm_func_start FUN_021EF5B0
FUN_021EF5B0: ; 0x021EF5B0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	bne _021EF5D4
	ldr r0, _021EF624 ; =0x0220D60C
	ldr r1, _021EF628 ; =0x0220D600
	mov r2, #0
	mov r3, #0x51
	bl __msl_assertion_failed
_021EF5D4:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r5, #4]
	mov r4, #0
	cmp r0, #0
	ble _021EF60C
_021EF5F0:
	ldr r0, [r5]
	ldr r0, [r0, r4, lsl #2]
	bl FUN_021EF074
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EF5F0
_021EF60C:
	ldr r0, [r5]
	bl FUN_021DD82C
	mov r0, r5
	bl FUN_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021EF624: .word 0x0220D60C
_021EF628: .word 0x0220D600

	arm_func_start FUN_021EF62C
FUN_021EF62C: ; 0x021EF62C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r7, r3
	mov sl, r0
	mov sb, r1
	mov r8, r2
	ldr r6, [sp, #0x24]
	bne _021EF65C
	ldr r0, _021EF750 ; =0x0220D614
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x38
	bl __msl_assertion_failed
_021EF65C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _021EF67C
	ldr r0, _021EF758 ; =0x0220D61C
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x39
	bl __msl_assertion_failed
_021EF67C:
	cmp sl, #0
	bne _021EF698
	ldr r0, _021EF75C ; =0x0220D624
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x3a
	bl __msl_assertion_failed
_021EF698:
	cmp sb, #0
	bne _021EF6B4
	ldr r0, _021EF760 ; =0x0220D630
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x3b
	bl __msl_assertion_failed
_021EF6B4:
	mov r0, #0x14
	bl FUN_021DD860
	movs r5, r0
	bne _021EF6D8
	ldr r0, _021EF764 ; =0x0220D60C
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x3e
	bl __msl_assertion_failed
_021EF6D8:
	mov r0, sb, lsl #2
	bl FUN_021DD860
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	bne _021EF704
	ldr r0, _021EF768 ; =0x0220D63C
	ldr r1, _021EF754 ; =0x0220D600
	mov r2, #0
	mov r3, #0x41
	bl __msl_assertion_failed
_021EF704:
	cmp sb, #0
	mov r4, #0
	ble _021EF734
_021EF710:
	mov r0, sl
	mov r1, r8
	mov r2, r6
	bl FUN_021EF0E4
	ldr r1, [r5]
	str r0, [r1, r4, lsl #2]
	add r4, r4, #1
	cmp r4, sb
	blt _021EF710
_021EF734:
	str sb, [r5, #4]
	ldr r0, [sp, #0x20]
	str r6, [r5, #8]
	str r0, [r5, #0x10]
	mov r0, r5
	str r7, [r5, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EF750: .word 0x0220D614
_021EF754: .word 0x0220D600
_021EF758: .word 0x0220D61C
_021EF75C: .word 0x0220D624
_021EF760: .word 0x0220D630
_021EF764: .word 0x0220D60C
_021EF768: .word 0x0220D63C

	arm_func_start FUN_021EF76C
FUN_021EF76C: ; 0x021EF76C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [sp, #0x10]
	str r3, [sp]
	mov r3, r2
	mov r2, #4
	str ip, [sp, #4]
	bl FUN_021EF62C
	add sp, sp, #0xc
	ldmfd sp!, {pc}

	arm_func_start FUN_021EF794
FUN_021EF794: ; 0x021EF794
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0x10
	mov r5, r1
	mov r4, r2
	bl FUN_020A8BBC
	add r0, sp, #0x10
	mov r1, r6
	mov r2, r5
	bl FUN_020A8BB0
	add r0, sp, #0
	add r1, sp, #0x10
	bl FUN_020A8BA4
	add r0, sp, #0
	mov r1, r4
	bl FUN_021EF7E0
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EF7E0
FUN_021EF7E0: ; 0x021EF7E0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0
	mov r8, r0
	mov r7, r1
	mov r5, r6
	ldr r4, _021EF81C ; =0x0220D64C
_021EF7F8:
	ldrb r2, [r8, r6]
	mov r1, r4
	add r0, r7, r5
	bl sprintf
	add r6, r6, #1
	cmp r6, #0x10
	add r5, r5, #2
	blo _021EF7F8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021EF81C: .word 0x0220D64C

	arm_func_start FUN_021EF820
FUN_021EF820: ; 0x021EF820
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r1
	mov r6, r2
	mov sl, r0
	mov r4, r7
	mov sb, r6
	cmp r3, #1
	beq _021EF84C
	cmp r3, #2
	beq _021EF854
	b _021EF85C
_021EF84C:
	ldr r5, _021EF948 ; =0x0220BBBC
	b _021EF860
_021EF854:
	ldr r5, _021EF94C ; =0x0220BBC0
	b _021EF860
_021EF85C:
	ldr r5, _021EF950 ; =0x0220BBC4
_021EF860:
	cmp r6, #0
	ble _021EF898
	mov r8, #3
_021EF86C:
	cmp r6, #3
	movge r2, r8
	movlt r2, r6
	mov r0, sl
	mov r1, r7
	bl FUN_021EF95C
	sub sb, sb, #3
	cmp sb, #0
	add r7, r7, #4
	add sl, sl, #3
	bgt _021EF86C
_021EF898:
	ldr r1, _021EF954 ; =0x55555556
	ldr r2, _021EF958 ; =0x00000003
	smull r0, r3, r1, r6
	add r3, r3, r6, lsr #31
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r1, r7
	cmp r3, #1
	subeq r1, r7, #2
	beq _021EF8C8
	cmp r3, #2
	subeq r1, r7, #1
_021EF8C8:
	mov r0, #0
	strb r0, [r7]
	cmp r7, r4
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EF8D8:
	sub r7, r7, #1
	cmp r7, r1
	ldrhssb r0, [r5, #2]
	strhsb r0, [r7]
	bhs _021EF93C
	ldrsb r0, [r7]
	cmp r0, #0x19
	addle r0, r0, #0x41
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x33
	addle r0, r0, #0x47
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x3d
	suble r0, r0, #4
	strleb r0, [r7]
	ble _021EF93C
	cmp r0, #0x3e
	ldreqsb r0, [r5]
	streqb r0, [r7]
	beq _021EF93C
	cmp r0, #0x3f
	ldreqsb r0, [r5, #1]
	streqb r0, [r7]
_021EF93C:
	cmp r7, r4
	bhi _021EF8D8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021EF948: .word 0x0220BBBC
_021EF94C: .word 0x0220BBC0
_021EF950: .word 0x0220BBC4
_021EF954: .word 0x55555556
_021EF958: .word 0x00000003

	arm_func_start FUN_021EF95C
FUN_021EF95C: ; 0x021EF95C
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #0
	mov lr, #0
	ble _021EF988
	add ip, sp, #0
_021EF974:
	ldrsb r3, [r0, lr]
	add lr, lr, #1
	cmp lr, r2
	strb r3, [ip], #1
	blt _021EF974
_021EF988:
	cmp lr, #3
	bge _021EF9AC
	add r0, sp, #0
	add r2, r0, lr
	mov r0, #0
_021EF99C:
	add lr, lr, #1
	cmp lr, #3
	strb r0, [r2], #1
	blt _021EF99C
_021EF9AC:
	ldrb r0, [sp]
	mov r0, r0, asr #2
	strb r0, [r1]
	ldrb r2, [sp]
	ldrb r0, [sp, #1]
	and r2, r2, #3
	mov r2, r2, lsl #4
	orr r0, r2, r0, asr #4
	strb r0, [r1, #1]
	ldrb r2, [sp, #1]
	ldrb r0, [sp, #2]
	and r2, r2, #0xf
	mov r2, r2, lsl #2
	orr r0, r2, r0, asr #6
	strb r0, [r1, #2]
	ldrb r0, [sp, #2]
	and r0, r0, #0x3f
	strb r0, [r1, #3]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EF9FC
FUN_021EF9FC: ; 0x021EF9FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	subs r4, r1, r5
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	bl FUN_021EFA48
	mov r1, r4
	bl _s32_div_f
	add r0, r1, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EFA2C
FUN_021EFA2C: ; 0x021EFA2C
	cmp r0, #0
	bicne r1, r0, #0x80000000
	ldr r0, _021EFA44 ; =0x0220D654
	moveq r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_021EFA44: .word 0x0220D654

	arm_func_start FUN_021EFA48
FUN_021EFA48: ; 0x021EFA48
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021EFA6C ; =0x0220D654
	ldr r0, [r0]
	bl FUN_021EFA70
	ldr r1, _021EFA6C ; =0x0220D654
	str r0, [r1]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021EFA6C: .word 0x0220D654

	arm_func_start FUN_021EFA70
FUN_021EFA70: ; 0x021EFA70
	ldr r1, _021EFABC ; =0x0000FFFF
	ldr r2, _021EFAC0 ; =0x000041A7
	mov r3, r0, lsr #0x10
	and r1, r0, r1
	mul ip, r3, r2
	mul r2, r1, r2
	ldr r0, _021EFAC4 ; =0x00007FFF
	mvn r1, #0x80000000
	and r0, ip, r0
	add r0, r2, r0, lsl #16
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	add r0, r0, ip, lsr #15
	mvn r1, #0x80000000
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	bx lr
	.align 2, 0
_021EFABC: .word 0x0000FFFF
_021EFAC0: .word 0x000041A7
_021EFAC4: .word 0x00007FFF

	arm_func_start FUN_021EFAC8
FUN_021EFAC8: ; 0x021EFAC8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021EFAF0
	ldr r0, _021EFB18 ; =0x0220D658
	ldr r1, _021EFB1C ; =0x0220D678
	ldr r3, _021EFB20 ; =0x00000667
	mov r2, #0
	bl __msl_assertion_failed
_021EFAF0:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021EFB24 ; =0x01FF6210
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ll_udiv
	cmp r4, #0
	strne r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EFB18: .word 0x0220D658
_021EFB1C: .word 0x0220D678
_021EFB20: .word 0x00000667
_021EFB24: .word 0x01FF6210

	arm_func_start FUN_021EFB28
FUN_021EFB28: ; 0x021EFB28
	ldr r0, _021EFB34 ; =0x02210F3C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_021EFB34: .word 0x02210F3C

	arm_func_start FUN_021EFB38
FUN_021EFB38: ; 0x021EFB38
	stmdb sp!, {lr}
	sub sp, sp, #4
	add r1, sp, #0
	bl FUN_0209A224
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [sp]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFB5C
FUN_021EFB5C: ; 0x021EFB5C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	mov r5, r1
	strb r2, [r5]
	bl FUN_0209A650
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EFB90
FUN_021EFB90: ; 0x021EFB90
	ldr ip, _021EFBA0 ; =FUN_021EFDD4
	mov r0, #0
	mvn r1, #0
	bx ip
	.align 2, 0
_021EFBA0: .word FUN_021EFDD4

	arm_func_start FUN_021EFBA4
FUN_021EFBA4: ; 0x021EFBA4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [sp, #8]
	mov r0, r3
	ldr r2, [r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFBD4
FUN_021EFBD4: ; 0x021EFBD4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr r5, [sp, #0x20]
	add r6, sp, #4
	mov r4, #4
_021EFBE8:
	ldrb lr, [r5], #1
	ldrb ip, [r5], #1
	subs r4, r4, #1
	strb lr, [r6], #1
	strb ip, [r6], #1
	bne _021EFBE8
	ldr lr, [sp, #0x24]
	add ip, sp, #4
	strb lr, [sp, #4]
	str ip, [sp]
	bl FUN_0209A7D0
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021EFC24
FUN_021EFC24: ; 0x021EFC24
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0209A858
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFC40
FUN_021EFC40: ; 0x021EFC40
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x10]
	ldr ip, [r4]
	strb ip, [r5]
	str r5, [sp]
	bl FUN_0209A880
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EFC78
FUN_021EFC78: ; 0x021EFC78
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0209A91C
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFC94
FUN_021EFC94: ; 0x021EFC94
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r2
	ldr r2, [r4]
	mov r5, r1
	strb r2, [r5]
	bl FUN_0209A504
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4]
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021EFCC8
FUN_021EFCC8: ; 0x021EFCC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0209A588
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFCE4
FUN_021EFCE4: ; 0x021EFCE4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov lr, #4
_021EFCF4:
	ldrb ip, [r1], #1
	ldrb r3, [r1], #1
	subs lr, lr, #1
	strb ip, [r4], #1
	strb r3, [r4], #1
	bne _021EFCF4
	add r1, sp, #0
	strb r2, [sp]
	bl FUN_0209A944
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EFD28
FUN_021EFD28: ; 0x021EFD28
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldrh r3, [r1, #2]
	cmp r3, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r4, sp, #0
	mov lr, #4
_021EFD4C:
	ldrb ip, [r1], #1
	ldrb r3, [r1], #1
	subs lr, lr, #1
	strb ip, [r4], #1
	strb r3, [r4], #1
	bne _021EFD4C
	add r1, sp, #0
	strb r2, [sp]
	bl FUN_0209A9A4
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021EFD80
FUN_021EFD80: ; 0x021EFD80
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl thunk_FUN_020995dc
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFD9C
FUN_021EFD9C: ; 0x021EFD9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl thunk_FUN_0209996c
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFDB8
FUN_021EFDB8: ; 0x021EFDB8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_0209A9D0
	mvn r1, #0
	bl FUN_021EFDD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFDD4
FUN_021EFDD4: ; 0x021EFDD4
	cmp r0, #0
	ldrlt r2, _021EFDE8 ; =0x02210F3C
	strlt r0, [r2]
	movlt r0, r1
	bx lr
	.align 2, 0
_021EFDE8: .word 0x02210F3C

	arm_func_start FUN_021EFDEC
FUN_021EFDEC: ; 0x021EFDEC
	ldr r3, [r0]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r1, r1, r0
	mov r0, r1, lsr #0x18
	and r2, r0, #0xff
	mov r0, r1, lsr #0x10
	and r0, r0, #0xff
	cmp r2, #0xa
	moveq r0, #1
	bxeq lr
	cmp r2, #0xac
	bne _021EFE54
	cmp r0, #0x10
	blt _021EFE54
	cmp r0, #0x1f
	movle r0, #1
	bxle lr
_021EFE54:
	cmp r2, #0xc0
	bne _021EFE68
	cmp r0, #0xa8
	moveq r0, #1
	bxeq lr
_021EFE68:
	mov r0, #0
	bx lr

	arm_func_start FUN_021EFE70
FUN_021EFE70: ; 0x021EFE70
	stmdb sp!, {r4, lr}
	ldr r4, _021EFEE8 ; =0x0220D684
	ldr r1, _021EFEEC ; =0x02210F40
	ldr lr, _021EFEF0 ; =0x02210F38
	ldr r2, _021EFEF4 ; =0x02210F64
	mov ip, #2
	mov r3, #0
	ldr r0, _021EFEF8 ; =0x02210F50
	str r4, [r1]
	str lr, [r1, #4]
	strh ip, [r1, #8]
	strh r3, [r1, #0xa]
	str r2, [r1, #0xc]
	str r3, [r0]
	bl FUN_02099C78
	ldr r1, _021EFEF8 ; =0x02210F50
	bl FUN_0209A174
	ldr r2, _021EFEF8 ; =0x02210F50
	ldr r0, [r2]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _021EFEF4 ; =0x02210F64
	mov r3, #0
	ldr r0, _021EFEEC ; =0x02210F40
	mov ip, #4
	str r2, [r1]
	strh ip, [r0, #0xa]
	str r3, [r1, #4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021EFEE8: .word 0x0220D684
_021EFEEC: .word 0x02210F40
_021EFEF0: .word 0x02210F38
_021EFEF4: .word 0x02210F64
_021EFEF8: .word 0x02210F50

	arm_func_start FUN_021EFEFC
FUN_021EFEFC: ; 0x021EFEFC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
	str r1, [sp]
	bl FUN_021EFF5C
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFF2C
FUN_021EFF2C: ; 0x021EFF2C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r2, #0
	add r1, sp, #0
	mov r3, r2
	str r2, [sp]
	bl FUN_021EFF5C
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021EFF5C
FUN_021EFF5C: ; 0x021EFF5C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r1
	mov r1, #0
	strh r1, [sp, #4]
	str r0, [sp]
	ldrnesh r0, [sp, #4]
	mov r5, r2
	mov r2, #0
	orrne r0, r0, #1
	strneh r0, [sp, #4]
	cmp r5, #0
	ldrnesh r0, [sp, #4]
	mov r4, r3
	mov r3, r2
	orrne r0, r0, #8
	strneh r0, [sp, #4]
	add r0, sp, #0
	mov r1, #1
	strh r2, [sp, #6]
	bl FUN_0209A0AC
	cmp r0, #0
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	beq _021EFFEC
	cmp r0, #0
	ble _021EFFE4
	ldrsh r1, [sp, #6]
	ands r1, r1, #0x41
	movne r1, #1
	strne r1, [r6]
	bne _021EFFEC
_021EFFE4:
	mov r1, #0
	str r1, [r6]
_021EFFEC:
	cmp r5, #0
	beq _021F0018
	cmp r0, #0
	ble _021F0010
	ldrsh r1, [sp, #6]
	ands r1, r1, #8
	movne r1, #1
	strne r1, [r5]
	bne _021F0018
_021F0010:
	mov r1, #0
	str r1, [r5]
_021F0018:
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #0
	ble _021F0044
	ldrsh r1, [sp, #6]
	ands r1, r1, #0x20
	movne r1, #1
	addne sp, sp, #8
	strne r1, [r4]
	ldmneia sp!, {r4, r5, r6, pc}
_021F0044:
	mov r1, #0
	str r1, [r4]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F0054
FUN_021F0054: ; 0x021F0054
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, #4
	str r1, [sp, #8]
	add ip, sp, #8
	ldr r1, _021F0094 ; =0x0000FFFF
	ldr r2, _021F0098 ; =0x00001001
	add r3, sp, #4
	str ip, [sp]
	bl FUN_021EFBA4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #4]
	mov r0, r1
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F0094: .word 0x0000FFFF
_021F0098: .word 0x00001001

	arm_func_start FUN_021F009C
FUN_021F009C: ; 0x021F009C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, #4
	str r1, [sp, #8]
	add ip, sp, #8
	ldr r1, _021F00DC ; =0x0000FFFF
	ldr r2, _021F00E0 ; =0x00001002
	add r3, sp, #4
	str ip, [sp]
	bl FUN_021EFBA4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #4]
	mov r0, r1
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F00DC: .word 0x0000FFFF
_021F00E0: .word 0x00001002

	arm_func_start FUN_021F00E4
FUN_021F00E4: ; 0x021F00E4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021F0128 ; =0x0000FFFF
	mov ip, #4
	ldr r2, _021F012C ; =0x00001001
	add r3, sp, #0xc
	str ip, [sp]
	bl FUN_021EFB90
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F0128: .word 0x0000FFFF
_021F012C: .word 0x00001001

	arm_func_start FUN_021F0130
FUN_021F0130: ; 0x021F0130
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _021F0174 ; =0x0000FFFF
	mov ip, #4
	ldr r2, _021F0178 ; =0x00001002
	add r3, sp, #0xc
	str ip, [sp]
	bl FUN_021EFB90
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F0174: .word 0x0000FFFF
_021F0178: .word 0x00001002

	arm_func_start FUN_021F017C
FUN_021F017C: ; 0x021F017C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r1, #3
	mov r2, #0
	mov r5, r0
	bl FUN_0209A4B4
	cmp r4, #0
	bicne r2, r0, #4
	orreq r2, r0, #4
	mov r0, r5
	mov r1, #4
	bl FUN_0209A4B4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021F01C4
FUN_021F01C4: ; 0x021F01C4
	ldrsb r3, [r0]
	mov r2, r0
	cmp r3, #0
	beq _021F01FC
	ldr r1, _021F0204 ; =0x0210420C
_021F01D8:
	cmp r3, #0
	blt _021F01EC
	cmp r3, #0x80
	bge _021F01EC
	ldrb r3, [r1, r3]
_021F01EC:
	strb r3, [r0]
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _021F01D8
_021F01FC:
	mov r0, r2
	bx lr
	.align 2, 0
_021F0204: .word 0x0210420C

	arm_func_start FUN_021F0208
FUN_021F0208: ; 0x021F0208
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	bl strlen
	add r0, r0, #1
	bl FUN_021DD860
	movs r4, r0
	beq _021F023C
	mov r1, r5
	bl strcpy
_021F023C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021F0248
FUN_021F0248: ; 0x021F0248
	bx lr

	arm_func_start FUN_021F024C
FUN_021F024C: ; 0x021F024C
	bx lr

	arm_func_start FUN_021F0250
FUN_021F0250: ; 0x021F0250
	ldr ip, _021F0258 ; =0x020CAFC0
	bx ip
	.align 2, 0
_021F0258: .word 0x020CAFC0

	arm_func_start FUN_021F025C
FUN_021F025C: ; 0x021F025C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021F0284
	ldr r0, _021F02A8 ; =0x0220D658
	ldr r1, _021F02AC ; =0x0220D678
	ldr r3, _021F02B0 ; =0x00000109
	mov r2, #0
	bl __msl_assertion_failed
_021F0284:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021F02B4 ; =0x000082EA
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ll_udiv
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F02A8: .word 0x0220D658
_021F02AC: .word 0x0220D678
_021F02B0: .word 0x00000109
_021F02B4: .word 0x000082EA

	arm_func_start FUN_021F02B8
FUN_021F02B8: ; 0x021F02B8
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r3, r2
	cmp r0, #0
	beq _021F02D8
	ldr ip, [r0]
	cmp ip, #0
	bne _021F02E4
_021F02D8:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F02E4:
	ldr r2, [ip, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [ip, #0x1d8]
	cmp r2, #4
	bne _021F0318
	ldr r1, _021F0344 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0318:
	cmp r3, #0
	bne _021F0334
	ldr r1, _021F0348 ; =0x0220D6E4
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0334:
	mov r2, #1
	bl FUN_021F1A64
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0344: .word 0x0220D690
_021F0348: .word 0x0220D6E4

	arm_func_start FUN_021F034C
FUN_021F034C: ; 0x021F034C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x204
	movs r7, r0
	mov r6, r1
	mov r5, r3
	beq _021F0370
	ldr r4, [r7]
	cmp r4, #0
	bne _021F037C
_021F0370:
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F037C:
	ldr r1, [r4, #0x108]
	cmp r1, #0
	addne sp, sp, #0x204
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021F03B0
	ldr r1, _021F0560 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03B0:
	cmp r2, #0
	bne _021F03CC
	ldr r1, _021F0564 ; =0x0220D6F8
	bl FUN_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03CC:
	cmp r5, #0
	bne _021F03E8
	ldr r1, _021F0568 ; =0x0220D710
	bl FUN_021FAEEC
	add sp, sp, #0x204
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F03E8:
	mov r1, r2
	add r0, sp, #0
	mov r2, #0x100
	bl FUN_021FB3DC
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021F0424
	add r2, sp, #0
	mov r1, #0x2f
_021F040C:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F040C
_021F0424:
	add r0, sp, #0x100
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	add r0, sp, #0x100
	ldrsb r0, [r0]
	cmp r0, #0
	beq _021F0464
	add r2, sp, #0x100
	mov r1, #0x2f
_021F044C:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F044C
_021F0464:
	ldr r0, [r4, #0x214]
	cmp r6, r0
	bne _021F04A0
	add r0, sp, #0
	add r1, r4, #0x218
	bl strcmp
	cmp r0, #0
	bne _021F04A0
	add r0, sp, #0x100
	add r1, r4, #0x318
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #0x204
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021F04A0:
	add r1, sp, #0
	add r0, r4, #0x218
	mov r2, #0x100
	str r6, [r4, #0x214]
	bl FUN_021FB3DC
	add r1, sp, #0x100
	add r0, r4, #0x318
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r2, _021F056C ; =0x0220D728
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r7
	mov r2, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F0570 ; =0x0220D6C0
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F0574 ; =0x0220D734
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl FUN_021F2F9C
	ldr r2, _021F0578 ; =0x0220D744
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0x100
	bl FUN_021F2F9C
	ldr r2, _021F057C ; =0x0220D6CC
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, #0
	add sp, sp, #0x204
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F0560: .word 0x0220D690
_021F0564: .word 0x0220D6F8
_021F0568: .word 0x0220D710
_021F056C: .word 0x0220D728
_021F0570: .word 0x0220D6C0
_021F0574: .word 0x0220D734
_021F0578: .word 0x0220D744
_021F057C: .word 0x0220D6CC

	arm_func_start FUN_021F0580
FUN_021F0580: ; 0x021F0580
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F059C
	ldr r3, [r0]
	cmp r3, #0
	bne _021F05A8
_021F059C:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F05A8:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021F05DC
	ldr r1, _021F05F0 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F05DC:
	bl FUN_021F17B0
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F05F0: .word 0x0220D690

	arm_func_start FUN_021F05F4
FUN_021F05F4: ; 0x021F05F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0610
	ldr r2, [r0]
	cmp r2, #0
	bne _021F061C
_021F0610:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021F061C:
	ldr r2, [r2, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	add r2, sp, #0
	bl FUN_021F85E8
	cmp r0, #0
	beq _021F0658
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {pc}
_021F0658:
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F0664
FUN_021F0664: ; 0x021F0664
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r2
	cmp r0, #0
	beq _021F0684
	ldr r2, [r0]
	cmp r2, #0
	bne _021F0690
_021F0684:
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0690:
	ldr r2, [r2, #0x108]
	cmp r2, #0
	movne r0, #0
	addne sp, sp, #8
	strne r0, [r4]
	ldmneia sp!, {r4, pc}
	add r2, sp, #0
	bl FUN_021F85E8
	cmp r0, #0
	beq _021F06D0
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrne r0, [r0]
	strne r0, [r4]
	bne _021F06D8
_021F06D0:
	mvn r0, #0
	str r0, [r4]
_021F06D8:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F06E4
FUN_021F06E4: ; 0x021F06E4
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r2
	beq _021F0700
	ldr r3, [r5]
	cmp r3, #0
	bne _021F0708
_021F0700:
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0708:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	beq _021F072C
	mov r0, r4
	mov r1, #0
	mov r2, #0x210
	bl Call_FillMemWithValue
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F072C:
	cmp r4, #0
	bne _021F0744
	ldr r1, _021F0814 ; =0x0220D750
	bl FUN_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F0744:
	cmp r1, #0
	ldr r2, [r3, #0x430]
	blt _021F0758
	cmp r1, r2
	blt _021F076C
_021F0758:
	ldr r1, _021F0818 ; =0x0220D760
	mov r0, r5
	bl FUN_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F076C:
	bl FUN_021F8430
	movs r6, r0
	bne _021F078C
	ldr r1, _021F0818 ; =0x0220D760
	mov r0, r5
	bl FUN_021FAEEC
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F078C:
	ldr r5, [r6, #8]
	cmp r5, #0
	bne _021F07AC
	ldr r0, _021F081C ; =0x0220D770
	ldr r1, _021F0820 ; =0x0220D77C
	ldr r3, _021F0824 ; =0x000005CF
	mov r2, #0
	bl __msl_assertion_failed
_021F07AC:
	ldr r0, [r6]
	str r0, [r4]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r1, [r5, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021F07DC
	add r0, r4, #8
	mov r2, #0x100
	bl FUN_021FB3DC
_021F07DC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021F07FC
	add r0, r4, #0x108
	mov r2, #0x100
	bl FUN_021FB3DC
_021F07FC:
	ldr r1, [r5, #0x10]
	mov r0, #0
	str r1, [r4, #0x208]
	ldr r1, [r5, #0x14]
	str r1, [r4, #0x20c]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F0814: .word 0x0220D750
_021F0818: .word 0x0220D760
_021F081C: .word 0x0220D770
_021F0820: .word 0x0220D77C
_021F0824: .word 0x000005CF

	arm_func_start FUN_021F0828
FUN_021F0828: ; 0x021F0828
	cmp r0, #0
	beq _021F083C
	ldr r2, [r0]
	cmp r2, #0
	bne _021F0844
_021F083C:
	mov r0, #2
	bx lr
_021F0844:
	ldr r0, [r2, #0x108]
	cmp r0, #0
	movne r0, #0
	strne r0, [r1]
	ldreq r2, [r2, #0x430]
	moveq r0, #0
	streq r2, [r1]
	bx lr

	arm_func_start FUN_021F0864
FUN_021F0864: ; 0x021F0864
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	beq _021F0880
	ldr r5, [r4]
	cmp r5, #0
	bne _021F088C
_021F0880:
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F088C:
	ldr r2, [r5, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, pc}
	ldr r2, [r5, #0x1d8]
	cmp r2, #4
	bne _021F08C0
	ldr r1, _021F0940 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F08C0:
	add r2, sp, #0
	bl FUN_021F85E8
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021F0934
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021F0934
	ldr r0, [r1, #0x10]
	bl FUN_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl FUN_021F83EC
	cmp r0, #0
	beq _021F0934
	ldr r1, [sp]
	mov r0, r4
	bl FUN_021F85A0
_021F0934:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F0940: .word 0x0220D690

	arm_func_start FUN_021F0944
FUN_021F0944: ; 0x021F0944
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0960
	ldr r3, [r0]
	cmp r3, #0
	bne _021F096C
_021F0960:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F096C:
	ldr r2, [r3, #0x108]
	cmp r2, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021F09A0
	ldr r1, _021F09AC ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F09A0:
	bl FUN_021F1984
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F09AC: .word 0x0220D690

	arm_func_start FUN_021F09B0
FUN_021F09B0: ; 0x021F09B0
	stmdb sp!, {r4, r5, r6, lr}
	ldr ip, _021F0B0C ; =0x00000408
	sub sp, sp, ip
	movs r6, r0
	mov r5, r1
	beq _021F09D4
	ldr r4, [r6]
	cmp r4, #0
	bne _021F09E4
_021F09D4:
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F09E4:
	ldr r1, [r4, #0x108]
	cmp r1, #0
	ldrne ip, _021F0B0C ; =0x00000408
	movne r0, #0
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021F0A20
	ldr r1, _021F0B10 ; =0x0220D690
	bl FUN_021FAEEC
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F0A20:
	cmp r2, #0
	bne _021F0A40
	ldr r1, _021F0B14 ; =0x0220D784
	bl FUN_021FAEEC
	ldr ip, _021F0B0C ; =0x00000408
	mov r0, #2
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
_021F0A40:
	mov r1, r2
	ldr r2, _021F0B18 ; =0x00000401
	add r0, sp, #0
	bl FUN_021FB3DC
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021F0A7C
	add r2, sp, #0
	mov r1, #0x2f
_021F0A64:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021F0A64
_021F0A7C:
	ldr r2, _021F0B1C ; =0x0220D794
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F0B20 ; =0x0220D6C0
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F0B24 ; =0x0220D7A0
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r2, r5
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F0B28 ; =0x0220D7B0
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl FUN_021F2F9C
	ldr r2, _021F0B2C ; =0x0220D6CC
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, #0
	ldr ip, _021F0B0C ; =0x00000408
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F0B0C: .word 0x00000408
_021F0B10: .word 0x0220D690
_021F0B14: .word 0x0220D784
_021F0B18: .word 0x00000401
_021F0B1C: .word 0x0220D794
_021F0B20: .word 0x0220D6C0
_021F0B24: .word 0x0220D7A0
_021F0B28: .word 0x0220D7B0
_021F0B2C: .word 0x0220D6CC

	arm_func_start FUN_021F0B30
FUN_021F0B30: ; 0x021F0B30
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0B4C
	ldr ip, [r0]
	cmp ip, #0
	bne _021F0B58
_021F0B4C:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0B58:
	ldr r3, [ip, #0x108]
	cmp r3, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	ldr r3, [ip, #0x1d8]
	cmp r3, #4
	bne _021F0B8C
	ldr r1, _021F0B98 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0B8C:
	bl FUN_021F50B8
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0B98: .word 0x0220D690

	arm_func_start FUN_021F0B9C
FUN_021F0B9C: ; 0x021F0B9C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x20c
	movs r5, r0
	beq _021F0BC0
	ldr r4, [r5]
	cmp r4, #0
	beq _021F0BC0
	cmp r1, #0
	bne _021F0BCC
_021F0BC0:
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0BCC:
	ldr lr, [sp, #0x218]
	cmp lr, #0
	bne _021F0BEC
	ldr r1, _021F0C7C ; =0x0220D6D4
	bl FUN_021FAEEC
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0BEC:
	ldr ip, [r4, #0x108]
	cmp ip, #0
	beq _021F0C44
	mov r0, #0
	add lr, sp, #8
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #0x10
_021F0C10:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021F0C10
	ldr r2, [sp, #0x21c]
	str r0, [lr]
	ldr r3, [sp, #0x218]
	add r1, sp, #8
	mov r0, r5
	blx r3
	add sp, sp, #0x20c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F0C44:
	ldr ip, [r4, #0x1d8]
	cmp ip, #4
	bne _021F0C64
	ldr r1, _021F0C80 ; =0x0220D690
	bl FUN_021FAEEC
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F0C64:
	ldr ip, [sp, #0x21c]
	str lr, [sp]
	str ip, [sp, #4]
	bl FUN_021F4E64
	add sp, sp, #0x20c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F0C7C: .word 0x0220D6D4
_021F0C80: .word 0x0220D690

	arm_func_start FUN_021F0C84
FUN_021F0C84: ; 0x021F0C84
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x30
	cmp r0, #0
	beq _021F0CA0
	ldr r4, [r0]
	cmp r4, #0
	bne _021F0CAC
_021F0CA0:
	add sp, sp, #0x30
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0CAC:
	ldr ip, [sp, #0x48]
	cmp ip, #0
	bne _021F0CCC
	ldr r1, _021F0D4C ; =0x0220D6D4
	bl FUN_021FAEEC
	add sp, sp, #0x30
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0CCC:
	ldr r4, [r4, #0x108]
	cmp r4, #0
	beq _021F0D0C
	add r1, sp, #0x1c
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	ldr r2, [sp, #0x4c]
	ldr r3, _021F0D50 ; =0x00000601
	str r4, [r1, #0xc]
	str r3, [sp, #0x24]
	blx ip
	add sp, sp, #0x30
	mov r0, r4
	ldmia sp!, {r4, pc}
_021F0D0C:
	ldr r4, [sp, #0x38]
	ldr lr, [sp, #0x3c]
	str r4, [sp]
	ldr r4, [sp, #0x40]
	str lr, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0
	ldr lr, [sp, #0x44]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	ldr lr, [sp, #0x4c]
	str ip, [sp, #0x14]
	str lr, [sp, #0x18]
	bl FUN_021FA770
	add sp, sp, #0x30
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F0D4C: .word 0x0220D6D4
_021F0D50: .word 0x00000601

	arm_func_start FUN_021F0D54
FUN_021F0D54: ; 0x021F0D54
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x108]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	bl FUN_021F35F4
	mov r0, r4
	bl FUN_021F14C0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F0D8C
FUN_021F0D8C: ; 0x021F0D8C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x48
	movs lr, r0
	beq _021F0DA8
	ldr ip, [lr]
	cmp ip, #0
	bne _021F0DB4
_021F0DA8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DB4:
	cmp r1, #0
	beq _021F0DC8
	ldrsb r4, [r1]
	cmp r4, #0
	bne _021F0DD4
_021F0DC8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DD4:
	cmp r2, #0
	beq _021F0DE8
	ldrsb r4, [r2]
	cmp r4, #0
	bne _021F0DF4
_021F0DE8:
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0DF4:
	ldr r4, [sp, #0x54]
	cmp r4, #0
	bne _021F0E14
	ldr r1, _021F0EA8 ; =0x0220D6D4
	bl FUN_021FAEEC
	add sp, sp, #0x48
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F0E14:
	ldr ip, [ip, #0x108]
	cmp ip, #0
	beq _021F0E5C
	add r3, sp, #0x24
	mov r0, #0
	mov r2, r3
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r2, [sp, #0x58]
	mov r0, lr
	mov r1, r3
	blx r4
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r4, pc}
_021F0E5C:
	ldr lr, _021F0EAC ; =0x0220D7BC
	mov ip, #0
	str lr, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str ip, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r1, [sp, #0x50]
	str ip, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr ip, [sp, #0x58]
	str r4, [sp, #0x1c]
	mov r1, lr
	mov r2, lr
	mov r3, lr
	str ip, [sp, #0x20]
	bl FUN_021F4670
	add sp, sp, #0x48
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F0EA8: .word 0x0220D6D4
_021F0EAC: .word 0x0220D7BC

	arm_func_start FUN_021F0EB0
FUN_021F0EB0: ; 0x021F0EB0
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0ECC
	ldr ip, [r0]
	cmp ip, #0
	bne _021F0ED8
_021F0ECC:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0ED8:
	cmp r1, #0
	blt _021F0EE8
	cmp r1, #6
	blt _021F0EFC
_021F0EE8:
	ldr r1, _021F0F14 ; =0x0220D7C0
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0EFC:
	add r0, ip, r1, lsl #3
	str r2, [r0, #0x1a4]
	str r3, [r0, #0x1a8]
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0F14: .word 0x0220D7C0

	arm_func_start FUN_021F0F18
FUN_021F0F18: ; 0x021F0F18
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	beq _021F0F34
	ldr r1, [r0]
	cmp r1, #0
	bne _021F0F40
_021F0F34:
	add sp, sp, #4
	mov r0, #2
	ldmfd sp!, {pc}
_021F0F40:
	ldr r1, [r1, #0x108]
	cmp r1, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	mov r1, #0
	bl FUN_021F0FD4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F0F64
FUN_021F0F64: ; 0x021F0F64
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	ldr r1, [r0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021F1620
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F0F94
FUN_021F0F94: ; 0x021F0F94
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, _021F0FD0 ; =0x02210E5C
	ldr r3, [r3]
	cmp r3, #1
	addne sp, sp, #4
	movne r0, #2
	ldmneia sp!, {pc}
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {pc}
	bl FUN_021F1668
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021F0FD0: .word 0x02210E5C

	arm_func_start FUN_021F0FD4
FUN_021F0FD4: ; 0x021F0FD4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr r7, [sl]
	mov sb, r1
	ldr r0, [r7, #0x1d8]
	mov r6, #0
	cmp r0, #4
	bls _021F100C
	ldr r0, _021F117C ; =0x0220D7D0
	ldr r1, _021F1180 ; =0x0220D8C8
	ldr r3, _021F1184 ; =0x000001B5
	mov r2, r6
	bl __msl_assertion_failed
_021F100C:
	ldr r0, [r7, #0x1d8]
	cmp r0, #1
	bne _021F10A8
	mov r4, #0
	mov r5, #1
	mov fp, #0xa
_021F1024:
	mov r0, sl
	bl FUN_021F3880
	movs r6, r0
	bne _021F104C
	cmp sb, #0
	beq _021F104C
	ldr r0, [r7, #0x1d8]
	cmp r0, #1
	moveq r8, r5
	beq _021F1050
_021F104C:
	mov r8, r4
_021F1050:
	cmp r8, #0
	beq _021F1060
	mov r0, fp
	bl FUN_021F0250
_021F1060:
	cmp r8, #0
	bne _021F1024
	cmp r6, #0
	beq _021F10A8
	add r1, sp, #0
	mov r0, sl
	mov r2, #1
	bl FUN_021F6C38
	cmp r0, #0
	ldrne r0, [sp]
	movne r1, #4
	strne r1, [r0, #0x1c]
	bne _021F10A8
	ldr r0, _021F1188 ; =0x0220D8D0
	ldr r1, _021F1180 ; =0x0220D8C8
	ldr r3, _021F118C ; =0x000001DB
	mov r2, #0
	bl __msl_assertion_failed
_021F10A8:
	ldr r0, [r7, #0x1d8]
	sub r0, r0, #2
	cmp r0, #1
	bhi _021F10E0
	cmp r6, #0
	bne _021F10CC
	mov r0, sl
	bl FUN_021F1190
	mov r6, r0
_021F10CC:
	cmp r6, #0
	bne _021F10E0
	mov r0, sl
	bl FUN_021F775C
	mov r6, r0
_021F10E0:
	cmp r6, #0
	bne _021F10F4
	mov r0, sl
	bl FUN_021F8974
	mov r6, r0
_021F10F4:
	ldr r1, [r7, #0x424]
	str r1, [sp]
	cmp r1, #0
	beq _021F1140
_021F1104:
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	ldreq r0, [r1, #0x20]
	streq r0, [sp]
	beq _021F1134
	mov r0, sl
	bl FUN_021F6E44
	ldr r1, [sp]
	mov r0, sl
	ldr r2, [r1, #0x20]
	str r2, [sp]
	bl FUN_021F6C84
_021F1134:
	ldr r1, [sp]
	cmp r1, #0
	bne _021F1104
_021F1140:
	mov r0, sl
	mov r1, sb
	bl FUN_021F3170
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r7, #0x41c]
	cmp r0, #0
	beq _021F1170
	mov r0, sl
	mov r1, #0
	bl FUN_021F35F4
_021F1170:
	mov r0, r6
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F117C: .word 0x0220D7D0
_021F1180: .word 0x0220D8C8
_021F1184: .word 0x000001B5
_021F1188: .word 0x0220D8D0
_021F118C: .word 0x000001DB

	arm_func_start FUN_021F1190
FUN_021F1190: ; 0x021F1190
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov fp, #0
	mov r5, r0
	str fp, [sp, #0x18]
	ldr r4, [r5]
	mov r0, #0x800
	str r0, [sp, #8]
	add sb, r4, #0x1f0
	add r8, r4, #0x1e4
	mov sl, #1
	mov r0, #4
	str r0, [sp, #0xc]
	mov r6, #0xa
_021F11C8:
	mov r0, r5
	add r1, r4, #0x1f4
	bl FUN_021F5DF8
	ldr r0, _021F1494 ; =0x0220D8D4
	str sl, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	mov r0, r5
	add r2, r4, #0x1f4
	add r3, sp, #0x18
	bl FUN_021F28AC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x18
	str r0, [sp]
	ldr r0, _021F1494 ; =0x0220D8D4
	add r2, r4, #0x1dc
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	mov r0, r5
	add r3, sp, #0x14
	bl FUN_021F2A2C
	cmp r0, #0
	beq _021F1264
	cmp r0, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, _021F1498 ; =0x0220D8D8
	mov r0, r5
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1264:
	ldr r0, [r4, #0x1dc]
	ldr r1, _021F149C ; =0x0220D904
	bl strstr
	movs r7, r0
	beq _021F1428
_021F1278:
	strb fp, [r7]
	ldr r1, _021F14A0 ; =0x0220D90C
	ldr r2, [r4, #0x1dc]
	mov r0, r5
	bl FUN_021FB3D0
	ldr r0, [r4, #0x1dc]
	sub r1, r7, r0
	str r1, [sp, #0x14]
	ldr r0, [r4, #0x1f0]
	cmp r1, r0
	ble _021F12EC
	cmp r1, #0x800
	ldrlt r1, [sp, #8]
	ldr r0, [sb]
	add r0, r0, r1
	str r0, [sb]
	ldr r1, [r4, #0x1f0]
	ldr r0, [r4, #0x1ec]
	add r1, r1, #1
	bl FUN_021DD844
	cmp r0, #0
	bne _021F12E8
	ldr r1, _021F14A4 ; =0x0220D918
	mov r0, r5
	bl FUN_021FAEEC
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F12E8:
	str r0, [r4, #0x1ec]
_021F12EC:
	ldr r2, [sp, #0x14]
	ldr r0, [r4, #0x1ec]
	ldr r1, [r4, #0x1dc]
	add r2, r2, #1
	bl memcpy
	ldr r0, [r4, #0x1dc]
	add r1, r7, #7
	ldr r2, [r8]
	sub r0, r1, r0
	sub r0, r2, r0
	str r0, [r8]
	ldr r2, [r4, #0x1e4]
	ldr r0, [r4, #0x1dc]
	add r2, r2, #1
	bl memmove
	ldr r7, [r4, #0x1ec]
	ldr r1, _021F14A8 ; =0x0220D928
	mov r0, r7
	bl strstr
	cmp r0, #0
	beq _021F1398
	add r0, r0, #4
	bl atol
	mov r7, r0
	mov r0, r5
	add r1, sp, #0x10
	mov r2, r7
	bl FUN_021F6C38
	cmp r0, #0
	bne _021F1378
	ldr r1, _021F14AC ; =0x0220D930
	mov r2, r7
	mov r0, r5
	bl FUN_021FB3D0
	b _021F1414
_021F1378:
	mov r0, r5
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x1ec]
	bl FUN_021F6B50
	cmp r0, #0
	beq _021F1414
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1398:
	mov r1, r7
	mov r0, r5
	mov r2, sl
	bl FUN_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, [r4, #0x1ec]
	ldr r1, _021F14B0 ; =0x0220D958
	ldr r2, [sp, #0xc]
	mov r0, r7
	bl strncmp
	cmp r0, #0
	bne _021F13F0
	mov r1, r7
	mov r0, r5
	bl FUN_021F1C48
	cmp r0, #0
	beq _021F1414
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F13F0:
	ldr r1, _021F14B4 ; =0x0220D960
	mov r0, r7
	mov r2, r6
	bl strncmp
	cmp r0, #0
	beq _021F1414
	ldr r1, _021F14B8 ; =0x0220D968
	mov r0, r5
	bl FUN_021FB3D0
_021F1414:
	ldr r0, [r4, #0x1dc]
	ldr r1, _021F149C ; =0x0220D904
	bl strstr
	movs r7, r0
	bne _021F1278
_021F1428:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _021F1468
	ldr r2, _021F14BC ; =0x0220D998
	mov r3, #4
	mov r0, r5
	mov r1, #7
	str r3, [r4, #0x1d8]
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x1c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1468:
	mov r0, r5
	bl FUN_021F6BF8
	movs r7, r0
	beq _021F1480
	mov r0, r6
	bl FUN_021F0250
_021F1480:
	cmp r7, #0
	bne _021F11C8
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F1494: .word 0x0220D8D4
_021F1498: .word 0x0220D8D8
_021F149C: .word 0x0220D904
_021F14A0: .word 0x0220D90C
_021F14A4: .word 0x0220D918
_021F14A8: .word 0x0220D928
_021F14AC: .word 0x0220D930
_021F14B0: .word 0x0220D958
_021F14B4: .word 0x0220D960
_021F14B8: .word 0x0220D968
_021F14BC: .word 0x0220D998

	arm_func_start FUN_021F14C0
FUN_021F14C0: ; 0x021F14C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	mov r1, #0
	strb r1, [r4, #0x110]
	strb r1, [r4, #0x12f]
	strb r1, [r4, #0x144]
	mvn r0, #0
	str r0, [r4, #0x1d4]
	str r1, [r4, #0x1d8]
	str r1, [r4, #0x1e4]
	str r1, [r4, #0x1e8]
	str r1, [r4, #0x1e0]
	ldr r0, [r4, #0x1dc]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1dc]
	str r0, [r4, #0x1dc]
	str r0, [r4, #0x1f0]
	ldr r0, [r4, #0x1ec]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1fc]
	str r0, [r4, #0x200]
	str r0, [r4, #0x1f8]
	ldr r0, [r4, #0x1f4]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1f4]
	str r0, [r4, #0x1f4]
	str r0, [r4, #0x448]
	str r0, [r4, #0x44c]
	str r0, [r4, #0x444]
	ldr r0, [r4, #0x440]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x440]
	str r0, [r4, #0x440]
	str r0, [r4, #0x458]
	str r0, [r4, #0x45c]
	str r0, [r4, #0x454]
	ldr r0, [r4, #0x450]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x450]
	str r0, [r4, #0x450]
	mvn r0, #0
	str r0, [r4, #0x204]
	mov r0, #2
	str r0, [r4, #0x20c]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021F15B4
_021F15A0:
	mov r0, r5
	bl FUN_021F6C84
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021F15A0
_021F15B4:
	mov r2, #0
	str r2, [r4, #0x424]
	ldr r1, _021F1600 ; =FUN_021F1604
	mov r0, r5
	str r2, [r4, #0x430]
	bl FUN_021F848C
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
	str r0, [r4, #0x198]
	str r0, [r4, #0x210]
	str r0, [r4, #0x41c]
	str r0, [r4, #0x434]
	mvn r1, #0
	str r1, [r4, #0x214]
	strb r0, [r4, #0x218]
	strb r0, [r4, #0x318]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F1600: .word FUN_021F1604

	arm_func_start FUN_021F1604
FUN_021F1604: ; 0x021F1604
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	mov r0, #1
	bx lr

	arm_func_start FUN_021F1620
FUN_021F1620: ; 0x021F1620
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	mov r1, #1
	bl FUN_021F35F4
	ldr r0, [r4, #0x460]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x460]
	ldr r0, [r4, #0x428]
	bl FUN_021EF5B0
	mov r0, r4
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021F1668
FUN_021F1668: ; 0x021F1668
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r0, #0
	str r0, [r6]
	mov r0, #0x490
	mov r5, r1
	mov r4, r2
	bl FUN_021DD860
	str r0, [sp]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, #0
	mov r2, #0x490
	bl Call_FillMemWithValue
	ldr r0, [sp]
	mov r3, #0
	strb r3, [r0]
	ldr r0, [sp]
	mov r2, #1
	str r3, [r0, #0x418]
	ldr r1, [sp]
	add r0, sp, #0
	str r2, [r1, #0x100]
	ldr r1, [sp]
	str r3, [r1, #0x104]
	ldr r1, [sp]
	str r3, [r1, #0x108]
	ldr r1, [sp]
	str r3, [r1, #0x10c]
	ldr r1, [sp]
	str r5, [r1, #0x46c]
	ldr r1, [sp]
	str r4, [r1, #0x470]
	bl FUN_021F8870
	cmp r0, #0
	bne _021F1720
	ldr r0, [sp]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [sp]
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F1720:
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x420]
	mov r3, r1
_021F1730:
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	str r3, [r0, #0x1a4]
	ldr r0, [sp]
	add r0, r0, r1, lsl #3
	add r1, r1, #1
	str r3, [r0, #0x1a8]
	cmp r1, #6
	blt _021F1730
	ldr r2, [sp]
	ldr r1, _021F17AC ; =0x0220D9C0
	add r0, sp, #0
	str r3, [r2, #0x460]
	bl FUN_021FB3D0
	add r0, sp, #0
	bl FUN_021F14C0
	movs r4, r0
	beq _021F178C
	add r0, sp, #0
	bl FUN_021F1620
	add sp, sp, #8
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_021F178C:
	bl FUN_021F024C
	bl FUN_021F025C
	bl srand
	ldr r1, [sp]
	mov r0, #0
	str r1, [r6]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F17AC: .word 0x0220D9C0

	arm_func_start FUN_021F17B0
FUN_021F17B0: ; 0x021F17B0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r2, sp, #0
	ldr r5, [r6]
	bl FUN_021F85E8
	cmp r0, #0
	bne _021F17E8
	ldr r1, _021F1938 ; =0x0220D9E4
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #8
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F17E8:
	ldr r2, _021F193C ; =0x0220D9F8
	mov r0, r6
	add r1, r5, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F1940 ; =0x0220DA04
	mov r0, r6
	add r1, r5, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r5, #0x198]
	mov r0, r6
	add r1, r5, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F1944 ; =0x0220DA10
	mov r0, r6
	add r1, r5, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r5, #0x1f4
	ldr r2, [sp]
	ldr r2, [r2]
	bl FUN_021F2F64
	mov r0, r6
	add r1, r5, #0x1f4
	ldr r2, _021F1948 ; =0x0220DA20
	bl FUN_021F2F9C
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F192C
	ldr r4, [r0]
	cmp r4, #0
	bge _021F187C
	ldr r0, _021F194C ; =0x0220DA28
	ldr r1, _021F1950 ; =0x0220DA34
	ldr r3, _021F1954 ; =0x000001FD
	mov r2, #0
	bl __msl_assertion_failed
_021F187C:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #8]
	bl FUN_021DD82C
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl FUN_021DD82C
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	bl FUN_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [sp]
	bl FUN_021F83EC
	cmp r0, #0
	beq _021F18F0
	ldr r1, [sp]
	mov r0, r6
	bl FUN_021F85A0
_021F18F0:
	ldr r0, [r5, #0x430]
	sub r0, r0, #1
	str r0, [r5, #0x430]
	ldr r0, [r5, #0x430]
	cmp r0, #0
	bge _021F191C
	ldr r0, _021F1958 ; =0x0220DA40
	ldr r1, _021F1950 ; =0x0220DA34
	mov r2, #0
	mov r3, #0x204
	bl __msl_assertion_failed
_021F191C:
	ldr r1, _021F195C ; =FUN_021F1960
	mov r0, r6
	mov r2, r4
	bl FUN_021F848C
_021F192C:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F1938: .word 0x0220D9E4
_021F193C: .word 0x0220D9F8
_021F1940: .word 0x0220DA04
_021F1944: .word 0x0220DA10
_021F1948: .word 0x0220DA20
_021F194C: .word 0x0220DA28
_021F1950: .word 0x0220DA34
_021F1954: .word 0x000001FD
_021F1958: .word 0x0220DA40
_021F195C: .word FUN_021F1960

	arm_func_start FUN_021F1960
FUN_021F1960: ; 0x021F1960
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _021F197C
	ldr r0, [r1]
	cmp r0, r2
	subgt r0, r0, #1
	strgt r0, [r1]
_021F197C:
	mov r0, #1
	bx lr

	arm_func_start FUN_021F1984
FUN_021F1984: ; 0x021F1984
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	add r2, sp, #0
	ldr r5, [r4]
	bl FUN_021F85E8
	cmp r0, #0
	bne _021F19BC
	ldr r1, _021F1A60 ; =0x0220D9E4
	mov r0, r4
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F19BC:
	ldr r1, [sp]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _021F19E4
	ldr r1, _021F1A60 ; =0x0220D9E4
	mov r0, r4
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021F19E4:
	mov r0, r4
	bl FUN_021F265C
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021F1A54
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021F1A54
	ldr r0, [r1, #0x10]
	bl FUN_021DD82C
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl FUN_021F83EC
	cmp r0, #0
	beq _021F1A54
	ldr r1, [sp]
	mov r0, r4
	bl FUN_021F85A0
_021F1A54:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F1A60: .word 0x0220D9E4

	arm_func_start FUN_021F1A64
FUN_021F1A64: ; 0x021F1A64
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_021F7720
	movs r8, r0
	bne _021F1B3C
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl FUN_021F85E8
	cmp r0, #0
	beq _021F1ABC
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021F1ABC
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021F1AD8
_021F1ABC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_021F1B60
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F1AD8:
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl FUN_021F7674
	movs r8, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _021F1B24
	mov r0, r7
	mov r1, r8
	bl FUN_021F7610
	cmp r0, #0
	beq _021F1B3C
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F1B24:
	mov r0, r7
	mov r1, r8
	bl FUN_021F7478
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F1B3C:
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl FUN_021F72EC
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_021F1B60
FUN_021F1B60: ; 0x021F1B60
	stmdb sp!, {r4, r5, r6, r7, lr}
	ldr ip, _021F1C2C ; =0x00000DB4
	sub sp, sp, ip
	mov r7, r0
	mov r5, r2
	mov r6, r1
	ldr r2, _021F1C30 ; =0x00000DAD
	add r0, sp, #0
	mov r1, r3
	ldr r4, [r7]
	bl FUN_021FB3DC
	ldr r2, _021F1C34 ; =0x0220DA6C
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r7
	mov r2, r5
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F1C38 ; =0x0220DA04
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F1C3C ; =0x0220DA74
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F1C40 ; =0x0220DA78
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl FUN_021F2F9C
	ldr r2, _021F1C44 ; =0x0220DA20
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, #0
	ldr ip, _021F1C2C ; =0x00000DB4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F1C2C: .word 0x00000DB4
_021F1C30: .word 0x00000DAD
_021F1C34: .word 0x0220DA6C
_021F1C38: .word 0x0220DA04
_021F1C3C: .word 0x0220DA74
_021F1C40: .word 0x0220DA78
_021F1C44: .word 0x0220DA20

	arm_func_start FUN_021F1C48
FUN_021F1C48: ; 0x021F1C48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021F2618 ; =0x0000113C
	sub sp, sp, ip
	mov r4, r1
	mov sl, r0
	ldr r1, _021F261C ; =0x0220DA6C
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	ldr r6, [sl]
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F1CAC
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1CAC:
	add r0, sp, #0x38
	bl atol
	mov r5, r0
	ldr r1, _021F2624 ; =0x0220DAB0
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F1D04
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1D04:
	add r0, sp, #0x38
	bl atol
	mov r8, r0
	ldr r1, _021F2628 ; =0x0220DAB4
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	beq _021F1D3C
	add r0, sp, #0x38
	bl atol
	mov sb, r0
	b _021F1D48
_021F1D3C:
	mov r0, #0
	bl FUN_021EFAC8
	mov sb, r0
_021F1D48:
	cmp r5, #0x64
	bgt _021F1D7C
	cmp r5, #0x64
	bge _021F2078
	cmp r5, #2
	bgt _021F2608
	cmp r5, #1
	blt _021F2608
	cmp r5, #1
	beq _021F1DA0
	cmp r5, #2
	beq _021F1EB4
	b _021F2608
_021F1D7C:
	cmp r5, #0x66
	bgt _021F2608
	cmp r5, #0x65
	blt _021F2608
	cmp r5, #0x65
	beq _021F2408
	cmp r5, #0x66
	beq _021F25A8
	b _021F2608
_021F1DA0:
	ldr r1, [r6, #0x1bc]
	ldr r0, [r6, #0x1c0]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021F2608
	mov r0, #0xc
	bl FUN_021DD860
	movs r5, r0
	bne _021F1DE4
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1DE4:
	ldr r1, _021F2630 ; =0x0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F1E30
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1E30:
	add r0, sp, #0x38
	bl strlen
	add r0, r0, #1
	bl FUN_021DD860
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F1E6C
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1E6C:
	add r1, sp, #0x38
	bl strcpy
	str r8, [r5]
	str sb, [r5, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, sl
	mov r3, r5
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1EB4:
	mov r0, sl
	mov r1, r8
	bl FUN_021F8624
	movs r5, r0
	bne _021F1EE4
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1EE4:
	ldr r1, _021F2630 ; =0x0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F1F30
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1F30:
	ldr r1, _021F2634 ; =0x0220DACC
	add r0, sp, #0x38
	bl strstr
	movs r4, r0
	bne _021F1F74
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1F74:
	mov r1, #0
	add r0, r4, #8
	strb r1, [r4]
	bl strlen
	cmp r0, #0x20
	beq _021F1FBC
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F1FBC:
	ldr r0, [r5, #0x10]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x10]
	add r0, r4, #8
	bl FUN_021F0208
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	add r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r6, #0x1ac]
	ldr r0, [r6, #0x1b0]
	cmp r1, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	beq _021F2608
	ldr r0, _021F2638 ; =0x0000040C
	bl FUN_021DD860
	movs r4, r0
	bne _021F2028
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2028:
	ldr r2, _021F263C ; =0x00000401
	add r1, sp, #0x38
	add r0, r4, #8
	bl FUN_021FB3DC
	str r8, [r4]
	str sb, [r4, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r1, sp, #0x20
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2078:
	mov r0, sl
	mov r1, r8
	bl FUN_021F8624
	movs r5, r0
	bne _021F20A8
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F20A8:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F211C
	mov r0, #0x18
	bl FUN_021DD860
	str r0, [r5, #8]
	ldr r2, [r5, #8]
	cmp r2, #0
	bne _021F20E8
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F20E8:
	mov r1, #6
	mov r0, #0
_021F20F0:
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	subs r1, r1, #1
	bne _021F20F0
	ldr r1, [r6, #0x430]
	add r0, r1, #1
	str r0, [r6, #0x430]
	ldr r0, [r5, #8]
	str r1, [r0]
_021F211C:
	ldr r1, _021F2630 ; =0x0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	ldr r7, [r5, #8]
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F216C
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F216C:
	ldr r1, _021F2640 ; =0x0220DAD8
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F21B8
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F21B8:
	add r0, sp, #0x28
	bl atol
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	bl FUN_021DD82C
	mov r0, #0
	add r2, sp, #0x1000
	str r0, [r7, #8]
	ldr r1, _021F2644 ; =0x0220DADC
	add r0, sp, #0x38
	add r2, r2, #0x38
	mov r3, #0x100
	bl FUN_021FB1F0
	cmp r0, #0
	addeq r0, sp, #0x1000
	moveq r1, #0
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	add r0, sp, #0x1000
	add r0, r0, #0x38
	bl FUN_021F0208
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021F2238
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2238:
	ldr r0, [r7, #0xc]
	bl FUN_021DD82C
	add r2, sp, #0x1000
	mov r4, #0
	ldr r1, _021F2648 ; =0x0220DAE4
	add r0, sp, #0x38
	add r2, r2, #0x38
	mov r3, #0x100
	str r4, [r7, #0xc]
	bl FUN_021FB1F0
	cmp r0, #0
	addeq r0, sp, #0x1000
	moveq r1, r4
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	add r0, sp, #0x1000
	add r0, r0, #0x38
	bl FUN_021F0208
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _021F22AC
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F22AC:
	ldr r1, _021F264C ; =0x0220DAEC
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x10]
	beq _021F232C
	add r0, sp, #0x28
	bl atol
	mov r5, r0
	add r0, sp, #0x28
	bl atol
	mov r4, r0
	add r0, sp, #0x28
	bl atol
	mov fp, r0
	add r0, sp, #0x28
	bl atol
	mov r1, fp, lsr #0x18
	mov r0, r0, lsr #8
	mov r2, r4, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r5, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [r7, #0x10]
_021F232C:
	ldr r1, _021F2650 ; =0x0220DAF4
	add r0, sp, #0x38
	add r2, sp, #0x28
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [r7, #0x14]
	beq _021F2380
	add r0, sp, #0x28
	bl atol
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x14]
_021F2380:
	ldr r1, [r6, #0x1b4]
	ldr r0, [r6, #0x1b8]
	cmp r1, #0
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	beq _021F2608
	mov r0, #0xc
	bl FUN_021DD860
	movs r3, r0
	bne _021F23C4
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F23C4:
	str r8, [r3]
	ldr r1, [r7]
	mov r0, #0
	str r1, [r3, #8]
	str sb, [r3, #4]
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	add r1, sp, #0x18
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2408:
	ldr r1, _021F2630 ; =0x0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F2454
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2454:
	ldr r1, _021F2650 ; =0x0220DAF4
	add r0, sp, #0x38
	bl strstr
	cmp r0, #0
	bne _021F2498
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2498:
	ldrsb r1, [r0, #3]
	cmp r1, #0
	bne _021F24D4
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F24D4:
	add r0, r0, #3
	bl atol
	mov r4, r0
	ldr r1, _021F2654 ; =0x0220DAF8
	add r0, sp, #0x38
	bl strstr
	movs r1, r0
	addeq r0, sp, #0x1000
	moveq r1, #0
	addeq r0, r0, #8
	streqb r1, [r0, #0x30]
	beq _021F2518
	add r0, sp, #0x1000
	add r0, r0, #0x38
	add r1, r1, #3
	mov r2, #0x100
	bl FUN_021FB3DC
_021F2518:
	ldr r1, [r6, #0x1c4]
	ldr r0, [r6, #0x1c8]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F2608
	mov r0, #0x108
	bl FUN_021DD860
	movs r5, r0
	bne _021F255C
	ldr r1, _021F262C ; =0x0220DABC
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F255C:
	add r1, sp, #0x1000
	str r8, [r5]
	add r1, r1, #0x38
	add r0, r5, #8
	str r4, [r5, #4]
	bl strcpy
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, sl
	mov r3, r5
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F2608
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F25A8:
	ldr r1, _021F2630 ; =0x0220DA78
	add r2, sp, #0x38
	mov r0, r4
	mov r3, #0x1000
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F25F4
	ldr r2, _021F2620 ; =0x0220DA80
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F2618 ; =0x0000113C
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F25F4:
	ldr r3, _021F2658 ; =0x0220DAFC
	mov r0, sl
	mov r1, r8
	mov r2, #0x67
	bl FUN_021F1A64
_021F2608:
	mov r0, #0
	ldr ip, _021F2618 ; =0x0000113C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2618: .word 0x0000113C
_021F261C: .word 0x0220DA6C
_021F2620: .word 0x0220DA80
_021F2624: .word 0x0220DAB0
_021F2628: .word 0x0220DAB4
_021F262C: .word 0x0220DABC
_021F2630: .word 0x0220DA78
_021F2634: .word 0x0220DACC
_021F2638: .word 0x0000040C
_021F263C: .word 0x00000401
_021F2640: .word 0x0220DAD8
_021F2644: .word 0x0220DADC
_021F2648: .word 0x0220DAE4
_021F264C: .word 0x0220DAEC
_021F2650: .word 0x0220DAF4
_021F2654: .word 0x0220DAF8
_021F2658: .word 0x0220DAFC

	arm_func_start FUN_021F265C
FUN_021F265C: ; 0x021F265C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	ldr r2, _021F26F0 ; =0x0220DB00
	mov r5, r1
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F26F4 ; =0x0220DA04
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F26F8 ; =0x0220DB0C
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r5]
	bl FUN_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F26FC ; =0x0220DB1C
	bl FUN_021F2F9C
	ldr r2, [r5, #0x10]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F2700 ; =0x0220DA20
	bl FUN_021F2F9C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F26F0: .word 0x0220DB00
_021F26F4: .word 0x0220DA04
_021F26F8: .word 0x0220DB0C
_021F26FC: .word 0x0220DB1C
_021F2700: .word 0x0220DA20

	arm_func_start FUN_021F2704
FUN_021F2704: ; 0x021F2704
	stmdb sp!, {r4, lr}
	movs r4, r1
	beq _021F2728
	ldr r0, [r4]
	cmp r0, #0
	beq _021F2728
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021F2730
_021F2728:
	mov r0, #0
	ldmia sp!, {r4, pc}
_021F2730:
	ldr r0, [r4, #8]
	sub r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _021F2758
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	add r1, r0, r1
	bl memmove
_021F2758:
	ldr r2, [r4]
	ldr r1, [r4, #8]
	mov r0, #0
	strb r0, [r2, r1]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F2770
FUN_021F2770: ; 0x021F2770
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r5, r2
	mov r0, #0
	mov r6, r1
	str r0, [r5]
	ldr r1, [r6, #8]
	mov r7, r3
	cmp r1, #5
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	mov r1, #0xa
	bl strchr
	movs r4, r0
	beq _021F2894
	ldr r1, _021F28A0 ; =0x0220DB24
	sub r0, r4, #5
	mov r2, #5
	bl strncmp
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6]
	ldr r1, _021F28A4 ; =0x0220DB2C
	add r2, sp, #0
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atol
	str r0, [r7]
	ldr r0, [r6]
	ldr r1, _021F28A8 ; =0x0220DB30
	add r2, sp, #0
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atol
	ldr r2, [r6]
	add r1, r0, #1
	sub r2, r4, r2
	ldr r3, [r6, #8]
	add r2, r1, r2
	cmp r3, r2
	ble _021F288C
	ldrsb r2, [r4, r1]
	cmp r2, #0
	addne sp, sp, #0x14
	movne r0, #3
	ldmneia sp!, {r4, r5, r6, r7, pc}
	add r3, r4, #1
	ldr r2, [sp, #0x28]
	str r3, [r5]
	str r0, [r2]
	ldr r0, [r6]
	sub r0, r4, r0
	add r0, r1, r0
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _021F2894
_021F288C:
	mov r0, #0xa
	strb r0, [r4]
_021F2894:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F28A0: .word 0x0220DB24
_021F28A4: .word 0x0220DB2C
_021F28A8: .word 0x0220DB30

	arm_func_start FUN_021F28AC
FUN_021F28AC: ; 0x021F28AC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	str r2, [sp, #0xc]
	mov sb, r1
	str r3, [sp, #0x10]
	movs r0, r2
	ldr r8, [sp, #0x44]
	bne _021F28E4
	ldr r0, _021F2A0C ; =0x0220DB38
	ldr r1, _021F2A10 ; =0x0220DB50
	ldr r3, _021F2A14 ; =0x000001B9
	mov r2, #0
	bl __msl_assertion_failed
_021F28E4:
	ldr r0, [sp, #0xc]
	mov r7, #0
	ldr fp, [r0, #8]
	ldr r4, [r0, #0xc]
	ldr r5, [r0]
	subs r6, fp, r4
	addeq sp, sp, #0x1c
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2908:
	add r1, sp, #0x14
	str r1, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r2, r4, r7
	mov r0, sl
	mov r1, sb
	mov r3, r6
	add r2, r5, r2
	str r8, [sp, #8]
	bl FUN_021F2E68
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x18]
	cmp r0, #0
	addne r7, r7, r0
	subne r6, r6, r0
	cmp r0, #0
	beq _021F2960
	cmp r6, #0
	bne _021F2908
_021F2960:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _021F298C
	cmp r7, #0
	ble _021F2990
	mov r0, r5
	add r1, r5, r7
	add r2, r6, #1
	bl memmove
	sub fp, fp, r7
	b _021F2990
_021F298C:
	add r4, r4, r7
_021F2990:
	cmp fp, #0
	bge _021F29AC
	ldr r0, _021F2A18 ; =0x0220DB5C
	ldr r1, _021F2A10 ; =0x0220DB50
	ldr r3, _021F2A1C ; =0x000001DE
	mov r2, #0
	bl __msl_assertion_failed
_021F29AC:
	cmp r4, #0
	bge _021F29C8
	ldr r0, _021F2A20 ; =0x0220DB68
	ldr r1, _021F2A10 ; =0x0220DB50
	ldr r3, _021F2A24 ; =0x000001DF
	mov r2, #0
	bl __msl_assertion_failed
_021F29C8:
	cmp r4, fp
	ble _021F29E4
	ldr r0, _021F2A28 ; =0x0220DB74
	ldr r1, _021F2A10 ; =0x0220DB50
	mov r2, #0
	mov r3, #0x1e0
	bl __msl_assertion_failed
_021F29E4:
	ldr r0, [sp, #0xc]
	str fp, [r0, #8]
	str r4, [r0, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r1, [sp, #0x14]
	strne r1, [r0]
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2A0C: .word 0x0220DB38
_021F2A10: .word 0x0220DB50
_021F2A14: .word 0x000001B9
_021F2A18: .word 0x0220DB5C
_021F2A1C: .word 0x000001DE
_021F2A20: .word 0x0220DB68
_021F2A24: .word 0x000001DF
_021F2A28: .word 0x0220DB74

	arm_func_start FUN_021F2A2C
FUN_021F2A2C: ; 0x021F2A2C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov fp, r0
	ldr r0, [sp, #0x3c]
	mov sl, r1
	mvn r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp sl, r1
	str r0, [sp, #0x3c]
	bne _021F2A6C
	ldr r0, _021F2C28 ; =0x0220DB80
	ldr r1, _021F2C2C ; =0x0220DB50
	mov r2, #0
	mov r3, #0x150
	bl __msl_assertion_failed
_021F2A6C:
	ldr r0, [sp]
	cmp r0, #0
	bne _021F2A8C
	ldr r0, _021F2C30 ; =0x0220DB98
	ldr r1, _021F2C2C ; =0x0220DB50
	ldr r3, _021F2C34 ; =0x00000151
	mov r2, #0
	bl __msl_assertion_failed
_021F2A8C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021F2AAC
	ldr r0, _021F2C38 ; =0x0220DBAC
	ldr r1, _021F2C2C ; =0x0220DB50
	ldr r3, _021F2C3C ; =0x00000152
	mov r2, #0
	bl __msl_assertion_failed
_021F2AAC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne _021F2ACC
	ldr r0, _021F2C40 ; =0x0220DBC0
	ldr r1, _021F2C2C ; =0x0220DB50
	ldr r3, _021F2C44 ; =0x00000153
	mov r2, #0
	bl __msl_assertion_failed
_021F2ACC:
	ldr r0, [sp]
	mov r5, #0
	ldr sb, [r0]
	ldr r8, [r0, #8]
	ldr r7, [r0, #4]
	mov r0, #1
	mov r4, r5
	str r5, [sp, #8]
	str r5, [sp, #0x10]
	str r0, [sp, #0xc]
_021F2AF4:
	add r0, r8, #0x800
	cmp r0, r7
	ble _021F2B30
	mov r7, r0
	add r1, r0, #1
	mov r0, sb
	bl FUN_021DD844
	movs sb, r0
	bne _021F2B30
	ldr r1, _021F2C48 ; =0x0220DBD4
	mov r0, fp
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2B30:
	ldr r3, [sp, #8]
	mov r0, sl
	add r1, sb, r8
	sub r2, r7, r8
	bl FUN_021EFC78
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	bne _021F2B98
	mov r0, sl
	bl FUN_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F2BBC
	mvn r1, #0x19
	cmp r0, r1
	beq _021F2BBC
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F2BBC
	ldr r1, _021F2C4C ; =0x0220DBE4
	mov r0, fp
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2B98:
	cmp r6, #0
	addne r8, r8, r6
	addne r5, r5, r6
	bne _021F2BBC
	ldr r1, _021F2C50 ; =0x0220DC10
	ldr r2, [sp, #0x3c]
	mov r0, fp
	ldr r4, [sp, #0xc]
	bl FUN_021FB3D0
_021F2BBC:
	ldr r0, [sp, #0x10]
	strb r0, [sb, r8]
	mvn r0, #0
	cmp r6, r0
	beq _021F2BE0
	cmp r4, #0
	bne _021F2BE0
	cmp r5, #0x20000
	blt _021F2AF4
_021F2BE0:
	cmp r5, #0
	beq _021F2BFC
	ldr r1, _021F2C54 ; =0x0220DC34
	ldr r2, [sp, #0x3c]
	mov r0, fp
	mov r3, r5
	bl FUN_021FB3D0
_021F2BFC:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	str sb, [r0]
	str r8, [r0, #8]
	str r7, [r0, #4]
	ldr r0, [sp, #4]
	str r5, [r0]
	str r4, [r1]
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2C28: .word 0x0220DB80
_021F2C2C: .word 0x0220DB50
_021F2C30: .word 0x0220DB98
_021F2C34: .word 0x00000151
_021F2C38: .word 0x0220DBAC
_021F2C3C: .word 0x00000152
_021F2C40: .word 0x0220DBC0
_021F2C44: .word 0x00000153
_021F2C48: .word 0x0220DBD4
_021F2C4C: .word 0x0220DBE4
_021F2C50: .word 0x0220DC10
_021F2C54: .word 0x0220DC34

	arm_func_start FUN_021F2C58
FUN_021F2C58: ; 0x021F2C58
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021F2C88
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F2C88
FUN_021F2C88: ; 0x021F2C88
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	ldr r1, [sb, #0x28]
	mov sl, r0
	mov r8, r2
	mov r7, r3
	cmp r1, #0
	bne _021F2CC0
	ldr r0, _021F2D80 ; =0x0220DC4C
	ldr r1, _021F2D84 ; =0x0220DB50
	mov r2, #0
	mov r3, #0xfb
	bl __msl_assertion_failed
_021F2CC0:
	cmp r7, #0
	mov r6, #0
	addeq sp, sp, #0x14
	moveq r0, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x34]
	subs r0, r1, r0
	bne _021F2D4C
	ldr r0, [sb, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	bne _021F2D4C
	ldr fp, _021F2D88 ; =0x0220DC70
	add r5, sp, #0xc
	add r4, sp, #0x10
_021F2D00:
	str r5, [sp]
	str r4, [sp, #4]
	str fp, [sp, #8]
	ldr r1, [sb, #8]
	mov r0, sl
	mov r3, r7
	add r2, r8, r6
	bl FUN_021F2E68
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addne r6, r6, r0
	subne r7, r7, r0
	cmp r0, #0
	beq _021F2D4C
	cmp r7, #0
	bne _021F2D00
_021F2D4C:
	cmp r7, #0
	beq _021F2D74
	mov r0, sl
	mov r3, r7
	add r1, sb, #0x28
	add r2, r8, r6
	bl FUN_021F2FCC
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F2D74:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F2D80: .word 0x0220DC4C
_021F2D84: .word 0x0220DB50
_021F2D88: .word 0x0220DC70

	arm_func_start FUN_021F2D8C
FUN_021F2D8C: ; 0x021F2D8C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	ldr r1, [r4, #0x28]
	mov r5, r0
	cmp r1, #0
	bne _021F2DC0
	ldr r0, _021F2E5C ; =0x0220DC4C
	ldr r1, _021F2E60 ; =0x0220DB50
	mov r2, #0
	mov r3, #0xde
	bl __msl_assertion_failed
_021F2DC0:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	subs r0, r1, r0
	bne _021F2E3C
	ldr r0, [r4, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	bne _021F2E3C
	add r0, sp, #0xc
	str r0, [sp]
	add r1, sp, #0x10
	ldr r0, _021F2E64 ; =0x0220DC70
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r4, #8]
	add r2, sp, #0x28
	mov r0, r5
	mov r3, #1
	bl FUN_021F2E68
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
_021F2E3C:
	ldrsb r2, [sp, #0x28]
	mov r0, r5
	add r1, r4, #0x28
	bl FUN_021F30D4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F2E5C: .word 0x0220DC4C
_021F2E60: .word 0x0220DB50
_021F2E64: .word 0x0220DC70

	arm_func_start FUN_021F2E68
FUN_021F2E68: ; 0x021F2E68
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r0
	mov r1, r2
	mov r2, r3
	mov r0, r8
	mov r3, #0
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	bl FUN_021EFC24
	mvn r1, #0
	cmp r0, r1
	bne _021F2F20
	mov r0, r8
	bl FUN_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F2F10
	mvn r1, #0x19
	cmp r0, r1
	beq _021F2F10
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F2F10
	ldrsb r0, [r4]
	cmp r0, #0x50
	bne _021F2EE8
	ldrsb r0, [r4, #1]
	cmp r0, #0x52
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021F2EE8:
	ldr r2, _021F2F5C ; =0x0220DC74
	mov r0, r7
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r7
	mov r1, #3
	mov r2, #0
	bl FUN_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F2F10:
	mov r0, #0
	str r0, [r5]
	str r0, [r6]
	b _021F2F54
_021F2F20:
	cmp r0, #0
	strne r0, [r5]
	movne r0, #0
	strne r0, [r6]
	bne _021F2F54
	ldr r1, _021F2F60 ; =0x0220DC9C
	mov r0, r7
	mov r2, r4
	bl FUN_021FB3D0
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	str r0, [r6]
_021F2F54:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F2F5C: .word 0x0220DC74
_021F2F60: .word 0x0220DC9C

	arm_func_start FUN_021F2F64
FUN_021F2F64: ; 0x021F2F64
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	ldr r1, _021F2F98 ; =0x0220DC48
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl FUN_021F2F9C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F2F98: .word 0x0220DC48

	arm_func_start FUN_021F2F9C
FUN_021F2F9C: ; 0x021F2F9C
	stmdb sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021F2FCC
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F2FCC
FUN_021F2FCC: ; 0x021F2FCC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	bne _021F2FF8
	ldr r0, _021F30C0 ; =0x0220DCC0
	ldr r1, _021F30C4 ; =0x0220DB50
	mov r2, #0
	mov r3, #0x51
	bl __msl_assertion_failed
_021F2FF8:
	cmp r7, #0
	bge _021F3014
	ldr r0, _021F30C8 ; =0x0220DCD0
	ldr r1, _021F30C4 ; =0x0220DB50
	mov r2, #0
	mov r3, #0x52
	bl __msl_assertion_failed
_021F3014:
	cmp sb, #0
	bne _021F3030
	ldr r0, _021F30CC ; =0x0220DB38
	ldr r1, _021F30C4 ; =0x0220DB50
	mov r2, #0
	mov r3, #0x53
	bl __msl_assertion_failed
_021F3030:
	cmp r8, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r6, [sb, #8]
	ldr r5, [sb, #4]
	ldr r4, [sb]
	sub r0, r5, r6
	cmp r0, r7
	bge _021F308C
	cmp r7, #0x800
	movlt r0, #0x800
	movge r0, r7
	add r5, r5, r0
	mov r0, r4
	add r1, r5, #1
	bl FUN_021DD844
	movs r4, r0
	bne _021F308C
	ldr r1, _021F30D0 ; =0x0220DBD4
	mov r0, sl
	bl FUN_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F308C:
	mov r1, r8
	mov r2, r7
	add r0, r4, r6
	bl memcpy
	add r1, r6, r7
	mov r0, #0
	strb r0, [r4, r1]
	ldr r1, [sb, #8]
	add r1, r1, r7
	str r1, [sb, #8]
	str r5, [sb, #4]
	str r4, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021F30C0: .word 0x0220DCC0
_021F30C4: .word 0x0220DB50
_021F30C8: .word 0x0220DCD0
_021F30CC: .word 0x0220DB38
_021F30D0: .word 0x0220DBD4

	arm_func_start FUN_021F30D4
FUN_021F30D4: ; 0x021F30D4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	bne _021F30FC
	ldr r0, _021F3164 ; =0x0220DB38
	ldr r1, _021F3168 ; =0x0220DB50
	mov r2, #0
	mov r3, #0x25
	bl __msl_assertion_failed
_021F30FC:
	ldr r6, [r4, #8]
	ldr r5, [r4, #4]
	ldr r0, [r4]
	cmp r5, r6
	bne _021F3138
	add r5, r5, #0x800
	add r1, r5, #1
	bl FUN_021DD844
	cmp r0, #0
	bne _021F3138
	ldr r1, _021F316C ; =0x0220DBD4
	mov r0, r8
	bl FUN_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3138:
	strb r7, [r0, r6]
	add r1, r6, #1
	mov r2, #0
	strb r2, [r0, r1]
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	str r5, [r4, #4]
	str r0, [r4]
	mov r0, r2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3164: .word 0x0220DB38
_021F3168: .word 0x0220DB50
_021F316C: .word 0x0220DBD4

	arm_func_start FUN_021F3170
FUN_021F3170: ; 0x021F3170
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	movs sb, r1
	ldr r8, [sl]
	beq _021F3214
	ldr r7, [r8, #0x438]
	ldr r6, [r8, #0x43c]
	mov r5, #0
	str r5, [r8, #0x438]
	mov r1, r7
	str r5, [r8, #0x43c]
	cmp r7, #0
	beq _021F31F0
_021F31A4:
	ldr r0, [r1, #0x10]
	ldr r4, [r1, #0x14]
	cmp r0, sb
	beq _021F31C0
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _021F31E0
_021F31C0:
	mov r0, sl
	cmp r5, #0
	strne r4, [r5, #0x14]
	moveq r7, r4
	cmp r6, r1
	moveq r6, r5
	bl FUN_021F3260
	b _021F31E4
_021F31E0:
	mov r5, r1
_021F31E4:
	mov r1, r4
	cmp r4, #0
	bne _021F31A4
_021F31F0:
	ldr r0, [r8, #0x438]
	cmp r0, #0
	ldrne r0, [r8, #0x43c]
	strne r7, [r0, #0x14]
	strne r6, [r8, #0x43c]
	streq r7, [r8, #0x438]
	streq r6, [r8, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F3214:
	ldr r1, [r8, #0x438]
	cmp r1, #0
	beq _021F3258
	mov r4, #0
_021F3224:
	str r4, [r8, #0x438]
	str r4, [r8, #0x43c]
	cmp r1, #0
	beq _021F324C
_021F3234:
	ldr r5, [r1, #0x14]
	mov r0, sl
	bl FUN_021F3260
	mov r1, r5
	cmp r5, #0
	bne _021F3234
_021F324C:
	ldr r1, [r8, #0x438]
	cmp r1, #0
	bne _021F3224
_021F3258:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}

	arm_func_start FUN_021F3260
FUN_021F3260: ; 0x021F3260
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	ldr r1, [r7]
	mov r4, r0
	cmp r1, #0
	bne _021F328C
	ldr r0, _021F3448 ; =0x0220DCE0
	ldr r1, _021F344C ; =0x0220DD00
	mov r2, #0
	mov r3, #0x6e
	bl __msl_assertion_failed
_021F328C:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021F32AC
	ldr r0, _021F3450 ; =0x0220DD10
	ldr r1, _021F344C ; =0x0220DD00
	mov r2, #0
	mov r3, #0x6f
	bl __msl_assertion_failed
_021F32AC:
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	ldr r3, [r7]
	mov r0, r4
	blx r3
	ldr r0, [r7, #0xc]
	cmp r0, #2
	bne _021F32E8
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	bl FUN_021DD82C
	ldr r0, [r7, #8]
	mov r1, #0
	str r1, [r0, #8]
	b _021F342C
_021F32E8:
	cmp r0, #3
	bne _021F3368
	ldr r5, [r7, #8]
	mov r6, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _021F3344
	mov r4, r6
	mov r8, r6
_021F330C:
	ldr r0, [r5, #0x3c]
	ldr r0, [r0, r6, lsl #2]
	bl FUN_021DD82C
	ldr r0, [r5, #0x3c]
	str r4, [r0, r6, lsl #2]
	ldr r0, [r5, #0x40]
	ldr r0, [r0, r6, lsl #2]
	bl FUN_021DD82C
	ldr r0, [r5, #0x40]
	str r8, [r0, r6, lsl #2]
	ldr r0, [r5, #0x38]
	add r6, r6, #1
	cmp r6, r0
	blt _021F330C
_021F3344:
	ldr r0, [r5, #0x3c]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x40]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x40]
	b _021F342C
_021F3368:
	cmp r0, #4
	bne _021F3388
	ldr r4, [r7, #8]
	ldr r0, [r4, #0xc]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0xc]
	b _021F342C
_021F3388:
	cmp r0, #7
	bne _021F33B0
	ldr r4, [r7, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021F342C
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x10]
	b _021F342C
_021F33B0:
	cmp r0, #8
	bne _021F33D8
	ldr r4, [r7, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F342C
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #8]
	b _021F342C
_021F33D8:
	cmp r0, #9
	bne _021F342C
	ldr r4, [r7, #8]
	mov r5, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	ble _021F341C
	mov r6, r5
_021F33F8:
	ldr r0, [r4, #8]
	ldr r0, [r0, r5, lsl #2]
	bl FUN_021DD82C
	ldr r0, [r4, #8]
	str r6, [r0, r5, lsl #2]
	ldr r0, [r4, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _021F33F8
_021F341C:
	ldr r0, [r4, #8]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F342C:
	ldr r0, [r7, #8]
	bl FUN_021DD82C
	mov r1, #0
	mov r0, r7
	str r1, [r7, #8]
	bl FUN_021DD82C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3448: .word 0x0220DCE0
_021F344C: .word 0x0220DD00
_021F3450: .word 0x0220DD10

	arm_func_start FUN_021F3454
FUN_021F3454: ; 0x021F3454
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0x18
	mov r5, r3
	ldr r4, [r6]
	bl FUN_021DD860
	cmp r0, #0
	bne _021F3494
	ldr r1, _021F34FC ; =0x0220DD24
	mov r0, r6
	bl FUN_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021F3494:
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x20]
	str r3, [r0]
	str r2, [r0, #4]
	str r5, [r0, #8]
	cmp r1, #0
	ldrne r1, [r1, #0x18]
	ldr r2, [sp, #0x24]
	strne r1, [r0, #0x10]
	moveq r1, #0
	streq r1, [r0, #0x10]
	mov r1, #0
	str r2, [r0, #0xc]
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x438]
	cmp r1, #0
	streq r0, [r4, #0x438]
	ldr r1, [r4, #0x43c]
	cmp r1, #0
	strne r0, [r1, #0x14]
	str r0, [r4, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	.align 2, 0
_021F34FC: .word 0x0220DD24

	arm_func_start FUN_021F3500
FUN_021F3500: ; 0x021F3500
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r5, [r4]
	mov r7, r1
	mov r6, r2
	cmp r5, #0
	bne _021F3534
	ldr r0, _021F35E4 ; =0x0220DD34
	ldr r1, _021F35E8 ; =0x0220DD00
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021F3534:
	cmp r7, #0
	bne _021F3550
	ldr r0, _021F35EC ; =0x0220DD48
	ldr r1, _021F35E8 ; =0x0220DD00
	mov r2, #0
	mov r3, #0x24
	bl __msl_assertion_failed
_021F3550:
	cmp r6, #1
	beq _021F3574
	cmp r6, #0
	beq _021F3574
	ldr r0, _021F35F0 ; =0x0220DD60
	ldr r1, _021F35E8 ; =0x0220DD00
	mov r2, #0
	mov r3, #0x25
	bl __msl_assertion_failed
_021F3574:
	cmp r6, #1
	moveq r0, #1
	streq r0, [r5, #0x41c]
	ldr r1, [r5, #0x1a4]
	ldr r0, [r5, #0x1a8]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x10
	bl FUN_021DD860
	movs r3, r0
	strne r7, [r3]
	strne r6, [r3, #0xc]
	ldrne r0, [r5, #0x418]
	add r1, sp, #8
	strne r0, [r3, #4]
	strne r5, [r3, #8]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F35E4: .word 0x0220DD34
_021F35E8: .word 0x0220DD00
_021F35EC: .word 0x0220DD48
_021F35F0: .word 0x0220DD60

	arm_func_start FUN_021F35F4
FUN_021F35F4: ; 0x021F35F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r4, [r5]
	ldr r2, [r4, #0x1d8]
	cmp r2, #4
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r2, #0
	beq _021F36E0
	cmp r1, #0
	beq _021F3658
	cmp r2, #3
	bne _021F3658
	ldr r2, _021F37A8 ; =0x0220DDD0
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r5
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F37AC ; =0x0220DDE4
	mov r0, r5
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
_021F3658:
	mov r1, #1
	ldr r0, _021F37B0 ; =0x0220DDEC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #0x1d4]
	add r3, sp, #8
	mov r0, r5
	add r2, r4, #0x1f4
	bl FUN_021F28AC
	ldr r0, [r4, #0x1d4]
	mvn r1, #0
	cmp r0, r1
	beq _021F36A4
	mov r1, #2
	bl FUN_021EFD80
	ldr r0, [r4, #0x1d4]
	bl FUN_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x1d4]
_021F36A4:
	ldr r0, [r4, #0x204]
	mvn r1, #0
	cmp r0, r1
	beq _021F36CC
	mov r1, #2
	bl FUN_021EFD80
	ldr r0, [r4, #0x204]
	bl FUN_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x204]
_021F36CC:
	mov r0, #4
	str r0, [r4, #0x1d8]
	mov r0, #0
	str r0, [r4, #0x19c]
	str r0, [r4, #0x1a0]
_021F36E0:
	ldr r0, [r4, #0x1dc]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1dc]
	ldr r0, [r4, #0x1ec]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1ec]
	ldr r0, [r4, #0x1f4]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x1f4]
	ldr r0, [r4, #0x440]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x440]
	ldr r0, [r4, #0x450]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x450]
	ldr r1, [r4, #0x424]
	cmp r1, #0
	beq _021F3750
_021F373C:
	mov r0, r5
	bl FUN_021F6C84
	ldr r1, [r4, #0x424]
	cmp r1, #0
	bne _021F373C
_021F3750:
	mov r0, #0
	str r0, [r4, #0x424]
	ldr r6, [r4, #0x434]
	cmp r6, #0
	beq _021F377C
_021F3764:
	mov r1, r6
	ldr r6, [r6, #0x3c]
	mov r0, r5
	bl FUN_021F79E0
	cmp r6, #0
	bne _021F3764
_021F377C:
	mov r6, #0
	str r6, [r4, #0x434]
	ldr r4, _021F37B4 ; =FUN_021F37B8
_021F3788:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_021F848C
	cmp r0, #0
	beq _021F3788
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F37A8: .word 0x0220DDD0
_021F37AC: .word 0x0220DDE4
_021F37B0: .word 0x0220DDEC
_021F37B4: .word FUN_021F37B8

	arm_func_start FUN_021F37B8
FUN_021F37B8: ; 0x021F37B8
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r1, #0
	ldr r4, [r6]
	beq _021F381C
	ldr r0, [r4, #0x104]
	cmp r0, #0
	bne _021F381C
	ldr r0, [r1, #8]
	bl FUN_021DD82C
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #0xc]
	bl FUN_021DD82C
	ldr r0, [r5, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r5, #8]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #8]
_021F381C:
	ldr r0, [r5, #0x10]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F3864
	ldr r0, [r4, #0x104]
	cmp r0, #1
	bne _021F3878
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021F3878
_021F3864:
	mov r0, r6
	mov r1, r5
	bl FUN_021F85A0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F3878:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F3880
FUN_021F3880: ; 0x021F3880
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5]
	add r2, sp, #0
	ldr r1, [r4, #0x1d4]
	bl FUN_021FB0FC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #4
	bne _021F38E0
	ldr r1, _021F3920 ; =0x00000107
	ldr r2, _021F3924 ; =0x0220DDF0
	mov r0, r5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #4
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #4
	mov r0, #4
	ldmia sp!, {r4, r5, pc}
_021F38E0:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	cmp r0, #3
	beq _021F390C
	ldr r0, _021F3928 ; =0x0220DE18
	ldr r1, _021F392C ; =0x0220DE30
	ldr r3, _021F3930 ; =0x000002EF
	mov r2, #0
	bl __msl_assertion_failed
_021F390C:
	mov r0, #2
	str r0, [r4, #0x1d8]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F3920: .word 0x00000107
_021F3924: .word 0x0220DDF0
_021F3928: .word 0x0220DE18
_021F392C: .word 0x0220DE30
_021F3930: .word 0x000002EF

	arm_func_start FUN_021F3934
FUN_021F3934: ; 0x021F3934
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2a0
	mov r6, r2
	mov r8, r0
	mov r7, r1
	mov r1, r6
	mov r2, #0
	ldr r5, [r8]
	bl FUN_021FB2F8
	cmp r0, #0
	beq _021F3A34
	ldr r2, [r5, #0x418]
	ldr r0, _021F3FC0 ; =0x00000106
	cmp r2, r0
	bne _021F3994
	ldr r1, [r5, #0x1a0]
	cmp r1, #0
	beq _021F3994
	mov r0, r8
	bl FUN_021F85B4
	mov r0, #0
	str r0, [r5, #0x19c]
	str r0, [r5, #0x1a0]
	b _021F39C8
_021F3994:
	ldr r0, _021F3FC4 ; =0x00000201
	cmp r2, r0
	bne _021F39C8
	ldr r1, _021F3FC8 ; =0x0220DE40
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	beq _021F39C8
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
_021F39C8:
	ldr r1, _021F3FCC ; =0x0220DE48
	mov r0, r6
	bl strstr
	cmp r0, #0
	beq _021F3A08
	ldr r1, [r5, #0x418]
	mov r0, r8
	mov r2, r5
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #4
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A08:
	ldr r1, [r5, #0x418]
	mov r0, r8
	mov r2, r5
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #4
	mov r2, #0
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A34:
	ldr r0, [r7, #0x14]
	ldr r4, [r7, #4]
	cmp r0, #1
	beq _021F3A58
	cmp r0, #2
	beq _021F3C48
	cmp r0, #3
	beq _021F3B38
	b _021F3FB4
_021F3A58:
	ldr r1, _021F3FD0 ; =0x0220DE50
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3A9C
	ldr r2, _021F3FD4 ; =0x0220DE58
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3A9C:
	ldr r1, _021F3FD8 ; =0x0220DE88
	mov r0, r6
	mov r2, r4
	mov r3, #0x80
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3AE4
	ldr r2, _021F3FD4 ; =0x0220DE58
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3AE4:
	ldr r0, [r4, #0x304]
	cmp r0, #0
	beq _021F3B14
	mov r0, r8
	mov r1, r4
	bl FUN_021F401C
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #3
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3B14:
	mov r0, r8
	mov r1, r4
	bl FUN_021F42B8
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3B38:
	ldr r1, _021F3FDC ; =0x0220DE94
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3B7C
	ldr r2, _021F3FD4 ; =0x0220DE58
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3B7C:
	ldr r1, _021F3FE0 ; =0x0220DE9C
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3BC4
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3BC4:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x19c]
	ldr r1, _021F3FE8 ; =0x0220DED8
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3C18
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3C18:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
	mov r0, r8
	mov r1, r4
	bl FUN_021F42B8
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #2
	str r0, [r7, #0x14]
	b _021F3FB4
_021F3C48:
	ldr r1, _021F3FEC ; =0x0220DEE4
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F3C8C
	ldr r2, _021F3FD4 ; =0x0220DE58
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3C8C:
	ldr r1, _021F3FF0 ; =0x0220DEEC
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3CD4
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3CD4:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x198]
	ldr r1, _021F3FE0 ; =0x0220DE9C
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3D28
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3D28:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x19c]
	ldr r1, _021F3FE8 ; =0x0220DED8
	add r2, sp, #0x4e
	mov r0, r6
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3D7C
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3D7C:
	add r0, sp, #0x4e
	bl atol
	str r0, [r5, #0x1a0]
	ldr r1, _021F3FF4 ; =0x0220DEF8
	add r2, sp, #0x39
	mov r0, r6
	mov r3, #0x15
	bl FUN_021FB1F0
	ldr r2, _021F3FF8 ; =0x00000474
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x39]
	ldr r1, _021F3FFC ; =0x0220DF08
	mov r0, r6
	add r2, r5, r2
	mov r3, #0x19
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x474]
	ldrsb r0, [r4, #0xc2]
	cmp r0, #0
	addne r0, r4, #0xc2
	bne _021F3E14
	add r0, r5, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	ldrne r0, _021F4000 ; =0x0000012F
	addne r0, r5, r0
	bne _021F3E14
	add r0, sp, #0x200
	ldr r1, _021F4004 ; =0x0220DF10
	add r0, r0, #0x4e
	add r2, r5, #0x110
	add r3, r5, #0x144
	bl sprintf
	add r0, sp, #0x200
	add r0, r0, #0x4e
_021F3E14:
	str r0, [sp]
	str r4, [sp, #4]
	add r2, r4, #0x80
	str r2, [sp, #8]
	add r2, r4, #0xa1
	ldr r1, _021F4008 ; =0x0220DF18
	ldr r3, _021F400C ; =0x0220DF28
	add r0, sp, #0x4e
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0x4e
	bl strlen
	mov r1, r0
	add r0, sp, #0x4e
	add r2, sp, #0x18
	bl FUN_021EF794
	ldr r1, _021F4010 ; =0x0220DF5C
	mov r0, r6
	add r2, sp, #0x4e
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F3E9C
	ldr r2, _021F3FE4 ; =0x0220DEA8
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3E9C:
	add r0, sp, #0x18
	add r1, sp, #0x4e
	mov r2, #0x20
	bl memcmp
	cmp r0, #0
	beq _021F3EE0
	ldr r2, _021F4014 ; =0x0220DF64
	mov r0, r8
	mov r1, #0x108
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x2a0
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3EE0:
	ldr r0, [r5, #0x100]
	cmp r0, #0
	beq _021F3F08
	ldr r1, [r5, #0x1a0]
	mov r0, r8
	bl FUN_021F8624
	ldr r1, [r5, #0x1a0]
	str r1, [r0]
	ldr r1, [r5, #0x19c]
	str r1, [r0, #4]
_021F3F08:
	mov r0, #3
	str r0, [r5, #0x1d8]
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F3FA8
	mov r0, #0x20
	bl FUN_021DD860
	movs r4, r0
	bne _021F3F50
	ldr r1, _021F4018 ; =0x0220DF84
	mov r0, r8
	bl FUN_021FAEEC
	add sp, sp, #0x2a0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F3F50:
	mov r1, #0
	mov r2, #0x20
	bl Call_FillMemWithValue
	ldr r1, [r5, #0x1a0]
	mov r0, #0
	str r1, [r4, #4]
	str r0, [r4]
	add r1, sp, #0x39
	add r0, r4, #8
	mov r2, #0x15
	bl FUN_021FB3DC
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, r8
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	addne sp, sp, #0x2a0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F3FA8:
	mov r0, r8
	mov r1, r7
	bl FUN_021F6C84
_021F3FB4:
	mov r0, #0
	add sp, sp, #0x2a0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F3FC0: .word 0x00000106
_021F3FC4: .word 0x00000201
_021F3FC8: .word 0x0220DE40
_021F3FCC: .word 0x0220DE48
_021F3FD0: .word 0x0220DE50
_021F3FD4: .word 0x0220DE58
_021F3FD8: .word 0x0220DE88
_021F3FDC: .word 0x0220DE94
_021F3FE0: .word 0x0220DE9C
_021F3FE4: .word 0x0220DEA8
_021F3FE8: .word 0x0220DED8
_021F3FEC: .word 0x0220DEE4
_021F3FF0: .word 0x0220DEEC
_021F3FF4: .word 0x0220DEF8
_021F3FF8: .word 0x00000474
_021F3FFC: .word 0x0220DF08
_021F4000: .word 0x0000012F
_021F4004: .word 0x0220DF10
_021F4008: .word 0x0220DF18
_021F400C: .word 0x0220DF28
_021F4010: .word 0x0220DF5C
_021F4014: .word 0x0220DF64
_021F4018: .word 0x0220DF84

	arm_func_start FUN_021F401C
FUN_021F401C: ; 0x021F401C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xec
	mov fp, r0
	ldr r4, [fp]
	ldr r0, _021F4278 ; =0x00000177
	mov r5, r1
	add r0, r4, r0
	bl strlen
	mov sb, r0
	ldr r0, _021F427C ; =0x79707367
	bl FUN_021EFA2C
	cmp sb, #0
	mov sl, #0
	bls _021F4090
	add r8, sp, #0
	mov r7, sl
	mov r6, #0xff
_021F4060:
	mov r0, r7
	mov r1, r6
	bl FUN_021EF9FC
	add r1, r4, sl
	add r1, r1, #0x100
	add sl, sl, #1
	ldrsb r1, [r1, #0x77]
	mov r0, r0, lsl #0x18
	cmp sl, sb
	eor r0, r1, r0, asr #24
	strb r0, [r8], #1
	blo _021F4060
_021F4090:
	add r0, sp, #0
	mov r6, #0
	add r1, sp, #0x1f
	mov r2, sb
	mov r3, #1
	strb r6, [r0, sl]
	bl FUN_021EF820
	ldr r2, _021F4280 ; =0x0220DF94
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F4284 ; =0x0220DFA0
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, #0x144
	bl FUN_021F2F9C
	ldr r2, _021F4288 ; =0x0220DFA8
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, #0x110
	bl FUN_021F2F9C
	ldr r2, _021F428C ; =0x0220DFB0
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, sp, #0x1f
	bl FUN_021F2F9C
	ldr r2, _021F4290 ; =0x0220DFC0
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x46c]
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F4294 ; =0x0220DFCC
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F4298 ; =0x02210EA0
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F429C ; =0x0220DFD8
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x470]
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F42A0 ; =0x0220DEF8
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F42A4 ; =0x0000012F
	mov r0, fp
	add r1, r4, #0x1f4
	add r2, r4, r2
	bl FUN_021F2F9C
	add r0, r5, #0x200
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	beq _021F424C
	ldr r0, _021F42A8 ; =0x000002C2
	add r0, r5, r0
	bl strlen
	mov sl, r0
	ldr r0, _021F427C ; =0x79707367
	bl FUN_021EFA2C
	cmp sl, #0
	mov r8, r6
	bls _021F4210
	add sb, sp, #0x4c
	mov r7, r8
	mov r6, #0xff
_021F41E0:
	mov r0, r7
	mov r1, r6
	bl FUN_021EF9FC
	add r1, r5, r8
	add r1, r1, #0x200
	add r8, r8, #1
	ldrsb r1, [r1, #0xc2]
	mov r0, r0, lsl #0x18
	cmp r8, sl
	eor r0, r1, r0, asr #24
	strb r0, [sb], #1
	blo _021F41E0
_021F4210:
	add r0, sp, #0x4c
	mov r5, #0
	add r1, sp, #0x8d
	mov r2, sl
	mov r3, #1
	strb r5, [r0, r8]
	bl FUN_021EF820
	ldr r2, _021F42AC ; =0x0220DFE8
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	add r2, sp, #0x8d
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
_021F424C:
	ldr r2, _021F42B0 ; =0x0220DFF4
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F42B4 ; =0x0220DDE4
	mov r0, fp
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, #0
	add sp, sp, #0xec
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F4278: .word 0x00000177
_021F427C: .word 0x79707367
_021F4280: .word 0x0220DF94
_021F4284: .word 0x0220DFA0
_021F4288: .word 0x0220DFA8
_021F428C: .word 0x0220DFB0
_021F4290: .word 0x0220DFC0
_021F4294: .word 0x0220DFCC
_021F4298: .word 0x02210EA0
_021F429C: .word 0x0220DFD8
_021F42A0: .word 0x0220DEF8
_021F42A4: .word 0x0000012F
_021F42A8: .word 0x000002C2
_021F42AC: .word 0x0220DFE8
_021F42B0: .word 0x0220DFF4
_021F42B4: .word 0x0220DDE4

	arm_func_start FUN_021F42B8
FUN_021F42B8: ; 0x021F42B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x28c
	mov r5, r1
	mov r6, r0
	add r0, r5, #0x80
	mov r1, #0x20
	ldr r4, [r6]
	bl FUN_021F4C48
	add r0, r5, #0x100
	ldrsb r0, [r0, #0xc2]
	cmp r0, #0
	ldrne r0, _021F4614 ; =0x000001C2
	addne r7, r5, r0
	ldreq r0, _021F4618 ; =0x00000177
	addeq r7, r4, r0
	mov r0, r7
	bl strlen
	mov r1, r0
	mov r0, r7
	add r2, r5, #0xa1
	bl FUN_021EF794
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	addne r0, r5, #0xc2
	bne _021F4354
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	ldrne r0, _021F461C ; =0x0000012F
	addne r0, r4, r0
	bne _021F4354
	add r0, sp, #0x200
	ldr r1, _021F4620 ; =0x0220DF10
	add r0, r0, #0x35
	add r2, r4, #0x110
	add r3, r4, #0x144
	bl sprintf
	add r0, sp, #0x200
	add r0, r0, #0x35
_021F4354:
	str r0, [sp]
	add r0, r5, #0x80
	str r0, [sp, #4]
	ldr r1, _021F4624 ; =0x0220DF18
	ldr r3, _021F4628 ; =0x0220DF28
	add r0, sp, #0x35
	str r5, [sp, #8]
	add r2, r5, #0xa1
	str r2, [sp, #0xc]
	bl sprintf
	add r0, sp, #0x35
	bl strlen
	mov r1, r0
	add r0, sp, #0x35
	add r2, sp, #0x14
	bl FUN_021EF794
	ldr r0, [r4, #0x100]
	cmp r0, #0
	beq _021F43D0
	add r3, sp, #0x10
	mov r0, r6
	add r1, r4, #0x110
	add r2, r4, #0x144
	bl FUN_021F84F4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r0, [r0, #4]
	strne r0, [r4, #0x19c]
	ldrne r0, [sp, #0x10]
	ldrne r0, [r0]
	strne r0, [r4, #0x1a0]
_021F43D0:
	ldr r2, _021F462C ; =0x0220DFFC
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F4630 ; =0x0220DE88
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0x80
	bl FUN_021F2F9C
	ldrsb r0, [r5, #0xc2]
	cmp r0, #0
	beq _021F4430
	ldr r2, _021F4634 ; =0x0220E004
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r5, #0xc2
	bl FUN_021F2F9C
	b _021F44A8
_021F4430:
	add r0, r4, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	beq _021F4468
	ldr r2, _021F4638 ; =0x0220DEF8
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, _021F461C ; =0x0000012F
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, r2
	bl FUN_021F2F9C
	b _021F44A8
_021F4468:
	ldr r2, _021F463C ; =0x0220E010
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x110
	bl FUN_021F2F9C
	ldr r2, _021F4640 ; =0x0220E018
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, r4, #0x144
	bl FUN_021F2F9C
_021F44A8:
	ldr r0, [r4, #0x19c]
	cmp r0, #0
	beq _021F44D4
	ldr r2, _021F4644 ; =0x0220DE9C
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x19c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
_021F44D4:
	ldr r0, [r4, #0x1a0]
	cmp r0, #0
	beq _021F4500
	ldr r2, _021F4648 ; =0x0220DED8
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x1a0]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
_021F4500:
	ldr r2, _021F464C ; =0x0220E01C
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	add r2, sp, #0x14
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r0, [r4, #0x10c]
	cmp r0, #1
	bne _021F453C
	ldr r2, _021F4650 ; =0x0220E028
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
_021F453C:
	ldr r2, _021F4654 ; =0x0220E034
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r1, [r4, #0x208]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, r1, lsl #0x10
	add r1, r4, #0x1f4
	mov r2, r2, asr #0x10
	bl FUN_021F2F64
	ldr r2, _021F4658 ; =0x0220DFC0
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x46c]
	mov r0, r6
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F465C ; =0x0220DFCC
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4660 ; =0x02210EA0
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4664 ; =0x0220DFD8
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, [r4, #0x470]
	bl FUN_021F2F64
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F4668 ; =0x0220DFF4
	bl FUN_021F2F9C
	mov r0, r6
	add r1, r4, #0x1f4
	ldr r2, _021F466C ; =0x0220DDE4
	bl FUN_021F2F9C
	mov r0, #0
	add sp, sp, #0x28c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F4614: .word 0x000001C2
_021F4618: .word 0x00000177
_021F461C: .word 0x0000012F
_021F4620: .word 0x0220DF10
_021F4624: .word 0x0220DF18
_021F4628: .word 0x0220DF28
_021F462C: .word 0x0220DFFC
_021F4630: .word 0x0220DE88
_021F4634: .word 0x0220E004
_021F4638: .word 0x0220DEF8
_021F463C: .word 0x0220E010
_021F4640: .word 0x0220E018
_021F4644: .word 0x0220DE9C
_021F4648: .word 0x0220DED8
_021F464C: .word 0x0220E01C
_021F4650: .word 0x0220E028
_021F4654: .word 0x0220E034
_021F4658: .word 0x0220DFC0
_021F465C: .word 0x0220DFCC
_021F4660: .word 0x02210EA0
_021F4664: .word 0x0220DFD8
_021F4668: .word 0x0220DFF4
_021F466C: .word 0x0220DDE4

	arm_func_start FUN_021F4670
FUN_021F4670: ; 0x021F4670
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r4, [r8]
	mov r7, r1
	ldr r1, [r4, #0x1d8]
	mov r6, r2
	mov r5, r3
	cmp r1, #4
	bne _021F46A8
	bl FUN_021F14C0
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F46A8:
	ldr r0, [r4, #0x1d8]
	cmp r0, #0
	beq _021F46CC
	ldr r1, _021F48AC ; =0x0220E03C
	mov r0, r8
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F46CC:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _021F46EC
	cmp r0, #1
	bne _021F46F8
	mov r0, #1
	str r0, [r4, #0x10c]
	b _021F4710
_021F46EC:
	mov r0, #0
	str r0, [r4, #0x10c]
	b _021F4710
_021F46F8:
	ldr r1, _021F48B0 ; =0x0220E050
	mov r0, r8
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4710:
	mov r3, #1
	mov r1, r7
	add r0, r4, #0x110
	mov r2, #0x1f
	str r3, [r4, #0x10c]
	bl FUN_021FB3DC
	ldr r0, _021F48B4 ; =0x0000012F
	mov r1, r6
	add r0, r4, r0
	mov r2, #0x15
	bl FUN_021FB3DC
	mov r1, r5
	add r0, r4, #0x144
	mov r2, #0x33
	bl FUN_021FB3DC
	ldr r0, _021F48B8 ; =0x00000177
	ldr r1, [sp, #0x28]
	add r0, r4, r0
	mov r2, #0x1f
	bl FUN_021FB3DC
	add r0, r4, #0x144
	bl FUN_021F01C4
	mov r0, #0x308
	bl FUN_021DD860
	movs r4, r0
	bne _021F4790
	ldr r1, _021F48BC ; =0x0220DF84
	mov r0, r8
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4790:
	mov r1, #0
	mov r2, #0x308
	bl Call_FillMemWithValue
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x2c]
	str r0, [r4, #0x304]
	ldrsb r0, [r1]
	cmp r0, #0
	beq _021F47E4
	ldr r0, [sp, #0x30]
	ldrsb r0, [r0]
	cmp r0, #0
	beq _021F47E4
	add r0, r4, #0xc2
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r0, _021F48C0 ; =0x000001C2
	ldr r1, [sp, #0x30]
	add r0, r4, r0
	mov r2, #0x100
	bl FUN_021FB3DC
_021F47E4:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _021F4800
	ldr r0, _021F48C4 ; =0x000002C2
	mov r2, #0x41
	add r0, r4, r0
	bl FUN_021FB3DC
_021F4800:
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r1, [sp]
	str r0, [sp, #4]
	ldr r5, [sp, #0x48]
	add r3, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r1, #0
	str r5, [sp, #8]
	bl FUN_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0xc]
	mov r0, r8
	bl FUN_021F48C8
	movs r4, r0
	beq _021F4878
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r4, [r1, #0x1c]
	ldr r1, [sp, #0xc]
	bl FUN_021F6E44
	mov r0, r8
	mov r1, #0
	bl FUN_021F35F4
	add sp, sp, #0x10
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4878:
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F48A0
	ldr r1, [r1, #0x18]
	mov r0, r8
	bl FUN_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F48A0:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F48AC: .word 0x0220E03C
_021F48B0: .word 0x0220E050
_021F48B4: .word 0x0000012F
_021F48B8: .word 0x00000177
_021F48BC: .word 0x0220DF84
_021F48C0: .word 0x000001C2
_021F48C4: .word 0x000002C2

	arm_func_start FUN_021F48C8
FUN_021F48C8: ; 0x021F48C8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r4, [r6]
	mov r5, r1
	ldr r0, [r4, #0x10c]
	cmp r0, #0
	bne _021F4A70
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4, #0x204]
	ldr r0, [r4, #0x204]
	mvn r1, #0
	cmp r0, r1
	bne _021F4938
	ldr r2, _021F4C1C ; =0x0220E064
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4938:
	mov r1, #0
	bl FUN_021F017C
	cmp r0, #0
	bne _021F4974
	ldr r2, _021F4C20 ; =0x0220E08C
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4974:
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	mov r0, #2
	strb r0, [sp, #1]
	ldr r0, [r4, #0x204]
	mov r2, #8
	bl FUN_021EFD28
	mvn r1, #0
	cmp r0, r1
	bne _021F49D0
	ldr r2, _021F4C24 ; =0x0220E0C0
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F49D0:
	ldr r0, [r4, #0x204]
	mov r1, #5
	bl FUN_021EFCC8
	mvn r1, #0
	cmp r0, r1
	bne _021F4A14
	ldr r2, _021F4C28 ; =0x0220E0E8
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4A14:
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, [r4, #0x204]
	add r1, sp, #0
	add r2, sp, #8
	bl FUN_021EFB5C
	mvn r1, #0
	cmp r0, r1
	bne _021F4A64
	ldr r2, _021F4C2C ; =0x0220E114
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4A64:
	ldrh r0, [sp, #2]
	str r0, [r4, #0x208]
	b _021F4A80
_021F4A70:
	mvn r0, #0
	str r0, [r4, #0x204]
	mov r0, #0
	str r0, [r4, #0x208]
_021F4A80:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4, #0x1d4]
	ldr r0, [r4, #0x1d4]
	mvn r1, #0
	cmp r0, r1
	bne _021F4AD0
	ldr r2, _021F4C1C ; =0x0220E064
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4AD0:
	mov r1, #0
	bl FUN_021F017C
	cmp r0, #0
	bne _021F4B0C
	ldr r2, _021F4C20 ; =0x0220E08C
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4B0C:
	ldr r0, _021F4C30 ; =0x0220DD90
	bl FUN_0209A6EC
	cmp r0, #0
	bne _021F4B48
	ldr r2, _021F4C34 ; =0x0220E144
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4B48:
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	mov r1, #2
	strb r1, [sp, #1]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021F4B88
	ldr r0, _021F4C38 ; =0x0220E178
	ldr r1, _021F4C3C ; =0x0220DE30
	mov r3, #0x90
	bl __msl_assertion_failed
_021F4B88:
	ldr r0, _021F4C40 ; =0x0000CC74
	add r1, sp, #0
	strh r0, [sp, #2]
	ldr r0, [r4, #0x1d4]
	mov r2, #8
	bl FUN_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021F4C04
	ldr r0, [r4, #0x1d4]
	bl FUN_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F4C04
	mvn r1, #0x19
	cmp r0, r1
	beq _021F4C04
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F4C04
	ldr r2, _021F4C44 ; =0x0220E198
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F4C04:
	mov r0, #1
	str r0, [r5, #0x14]
	str r0, [r4, #0x1d8]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F4C1C: .word 0x0220E064
_021F4C20: .word 0x0220E08C
_021F4C24: .word 0x0220E0C0
_021F4C28: .word 0x0220E0E8
_021F4C2C: .word 0x0220E114
_021F4C30: .word 0x0220DD90
_021F4C34: .word 0x0220E144
_021F4C38: .word 0x0220E178
_021F4C3C: .word 0x0220DE30
_021F4C40: .word 0x0000CC74
_021F4C44: .word 0x0220E198

	arm_func_start FUN_021F4C48
FUN_021F4C48: ; 0x021F4C48
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r1
	mov sb, r0
	cmp r8, #0
	mov r7, #0
	ble _021F4CA0
	ldr r6, _021F4CB0 ; =0x0220E1C0
	ldr r5, _021F4CB4 ; =0x08421085
	ldr r4, _021F4CB8 ; =0x0000003E
_021F4C70:
	bl rand
	umull r1, r2, r0, r5
	sub r1, r0, r2
	add r2, r2, r1, lsr #1
	mov r2, r2, lsr #5
	umull r1, r2, r4, r2
	sub r2, r0, r1
	ldrsb r0, [r6, r2]
	strb r0, [sb, r7]
	add r7, r7, #1
	cmp r7, r8
	blt _021F4C70
_021F4CA0:
	mov r0, #0
	strb r0, [sb, r7]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F4CB0: .word 0x0220E1C0
_021F4CB4: .word 0x08421085
_021F4CB8: .word 0x0000003E

	arm_func_start FUN_021F4CBC
FUN_021F4CBC: ; 0x021F4CBC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x10]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x14]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0xc8]
	bl FUN_021DD82C
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r1, [r0, #0xc8]
	ldr r0, [r4, #0xc]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F4D88
FUN_021F4D88: ; 0x021F4D88
	stmdb sp!, {r4, r5, r6, lr}
	ldr r0, [r0]
	mov r5, r1
	ldr r0, [r0, #0x100]
	mov r4, r2
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_021F4CBC
	mov r0, #0xf0
	bl FUN_021DD860
	str r0, [r5, #0xc]
	ldr r6, [r5, #0xc]
	cmp r6, #0
	beq _021F4E50
	mov lr, r4
	mov ip, #0xf
_021F4DD0:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021F4DD0
	ldr r0, [r4]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1]
	ldr r0, [r4, #4]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #4]
	ldr r0, [r4, #8]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #8]
	ldr r0, [r4, #0xc]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x10]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x14]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0x14]
	ldr r0, [r4, #0xc8]
	bl FUN_021F0208
	ldr r1, [r5, #0xc]
	str r0, [r1, #0xc8]
_021F4E50:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F4E64
FUN_021F4E64: ; 0x021F4E64
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r8, r0
	ldr r0, [r8]
	mov r4, #0
	str r4, [sp, #0x10]
	ldr r5, [sp, #0x38]
	cmp r2, #1
	ldr r0, [r0, #0x100]
	moveq r4, #1
	cmp r0, #0
	moveq r4, #0
	mov r7, r1
	mov r6, r3
	cmp r5, #0
	beq _021F4F94
	cmp r4, #0
	beq _021F4F94
	add r2, sp, #0xc
	mov r0, r8
	mov r1, r7
	bl FUN_021F85E8
	cmp r0, #0
	beq _021F4F94
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021F4F94
	mov r0, #0x204
	bl FUN_021DD860
	movs r4, r0
	bne _021F4EFC
	ldr r1, _021F5014 ; =0x0220E200
	mov r0, r8
	bl FUN_021FAEEC
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F4EFC:
	ldr r0, [sp, #0xc]
	mov r1, r4
	ldr r0, [r0, #0xc]
	bl FUN_021F66D4
	mov r2, #0
	str r2, [r4]
	str r7, [r4, #4]
	ldr r7, [sp, #0x3c]
	str r5, [sp, #0x14]
	str r7, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #2
	str r7, [sp, #8]
	bl FUN_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x10]
	mov r0, #0
	ldr r5, [r2, #0x18]
	add r1, sp, #0x14
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, r8
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x10]
	mov r0, r8
	bl FUN_021F6C84
	b _021F4FE8
_021F4F94:
	str r6, [sp]
	ldr r4, [sp, #0x3c]
	str r5, [sp, #4]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #2
	mov r2, #0
	str r4, [sp, #8]
	bl FUN_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x10]
	mov r0, r8
	ldr r5, [r1, #0x18]
	mov r1, r7
	mov r2, r5
	bl FUN_021F5018
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F4FE8:
	cmp r6, #0
	beq _021F5008
	mov r0, r8
	mov r1, r5
	bl FUN_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_021F5008:
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F5014: .word 0x0220E200

	arm_func_start FUN_021F5018
FUN_021F5018: ; 0x021F5018
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r4, [r7]
	mov r5, r2
	mov r6, r1
	ldr r2, _021F50A8 ; =0x0220E210
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	ldr r2, _021F50AC ; =0x0220E228
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F9C
	mov r2, r6
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F50B0 ; =0x0220E234
	bl FUN_021F2F9C
	mov r2, r5
	mov r0, r7
	add r1, r4, #0x1f4
	bl FUN_021F2F64
	mov r0, r7
	add r1, r4, #0x1f4
	ldr r2, _021F50B4 ; =0x0220E23C
	bl FUN_021F2F9C
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F50A8: .word 0x0220E210
_021F50AC: .word 0x0220E228
_021F50B0: .word 0x0220E234
_021F50B4: .word 0x0220E23C

	arm_func_start FUN_021F50B8
FUN_021F50B8: ; 0x021F50B8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	mov r6, r0
	movs r5, r2
	ldr r4, [r6]
	bne _021F50E4
	ldr r1, _021F5810 ; =0x0220E264
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F50E4:
	sub r1, r1, #0x700
	cmp r1, #0x1e
	addls pc, pc, r1, lsl #2
	b _021F57EC
_021F50F4: ; jump table
	b _021F5170 ; case 0
	b _021F51D0 ; case 1
	b _021F5234 ; case 2
	b _021F529C ; case 3
	b _021F5300 ; case 4
	b _021F5330 ; case 5
	b _021F54BC ; case 6
	b _021F5360 ; case 7
	b _021F5390 ; case 8
	b _021F53C0 ; case 9
	b _021F57EC ; case 10
	b _021F5418 ; case 11
	b _021F57EC ; case 12
	b _021F54EC ; case 13
	b _021F5514 ; case 14
	b _021F553C ; case 15
	b _021F556C ; case 16
	b _021F5594 ; case 17
	b _021F55C4 ; case 18
	b _021F57EC ; case 19
	b _021F55EC ; case 20
	b _021F5614 ; case 21
	b _021F563C ; case 22
	b _021F566C ; case 23
	b _021F569C ; case 24
	b _021F56CC ; case 25
	b _021F56FC ; case 26
	b _021F572C ; case 27
	b _021F575C ; case 28
	b _021F578C ; case 29
	b _021F57BC ; case 30
_021F5170:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F5190
	ldr r1, _021F5810 ; =0x0220E264
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5190:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl FUN_021FB3DC
	add r1, sp, #0
	add r0, r4, #0x110
	mov r2, #0x1f
	bl FUN_021FB3DC
	ldr r1, _021F5814 ; =0x0220E274
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F51D0:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F51F0
	ldr r1, _021F5810 ; =0x0220E264
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F51F0:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x15
	bl FUN_021FB3DC
	ldr r0, _021F5818 ; =0x0000012F
	add r1, sp, #0
	add r0, r4, r0
	mov r2, #0x15
	bl FUN_021FB3DC
	ldr r1, _021F581C ; =0x0220E27C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5234:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F5254
	ldr r1, _021F5810 ; =0x0220E264
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5254:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl FUN_021FB3DC
	add r0, sp, #0
	bl FUN_021F01C4
	add r1, sp, #0
	add r0, r4, #0x144
	mov r2, #0x33
	bl FUN_021FB3DC
	ldr r1, _021F5820 ; =0x0220E28C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F529C:
	ldrsb r1, [r5]
	cmp r1, #0
	bne _021F52BC
	ldr r1, _021F5810 ; =0x0220E264
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F52BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl FUN_021FB3DC
	ldr r0, _021F5824 ; =0x00000177
	add r1, sp, #0
	add r0, r4, r0
	mov r2, #0x1f
	bl FUN_021FB3DC
	ldr r1, _021F5828 ; =0x0220E294
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5300:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl FUN_021FB3DC
	ldr r1, _021F582C ; =0x0220E2A0
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5330:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x1f
	bl FUN_021FB3DC
	ldr r1, _021F5830 ; =0x0220E2AC
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5360:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x4c
	bl FUN_021FB3DC
	ldr r1, _021F5834 ; =0x0220E2B8
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5390:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0xb
	bl FUN_021FB3DC
	ldr r1, _021F5838 ; =0x0220E2C4
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F53C0:
	mov r0, r5
	bl strlen
	cmp r0, #2
	beq _021F53E8
	ldr r1, _021F583C ; =0x0220E2D0
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F53E8:
	add r0, sp, #0
	mov r1, r5
	mov r2, #3
	bl FUN_021FB3DC
	ldr r1, _021F5840 ; =0x0220E2E8
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5418:
	ldrsb r1, [r5]
	cmp r1, #0
	blt _021F5434
	cmp r1, #0x80
	bge _021F5434
	ldr r0, _021F5844 ; =0x0210428C
	ldrb r1, [r0, r1]
_021F5434:
	mov r0, r1, lsl #0x18
	mov r0, r0, asr #0x18
	cmp r0, #0x4d
	bne _021F5460
	ldr r0, _021F5848 ; =0x0220E2F8
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F549C
_021F5460:
	cmp r0, #0x46
	bne _021F5484
	ldr r0, _021F584C ; =0x0220E2FC
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
	b _021F549C
_021F5484:
	ldr r0, _021F5850 ; =0x0220E300
	add r2, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r2]
	strb r0, [r2, #1]
_021F549C:
	ldr r1, _021F5854 ; =0x0220E304
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F54BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5858 ; =0x0220E30C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F54EC:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F585C ; =0x0000070D
	mov r0, r6
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5514:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5860 ; =0x0000070E
	mov r0, r6
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F553C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5864 ; =0x0220E318
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F556C:
	mov r0, r5
	bl atol
	mov r2, r0
	mov r0, r6
	mov r1, #0x710
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5594:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5868 ; =0x0220E32C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F55C4:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F586C ; =0x00000712
	mov r0, r6
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F55EC:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5870 ; =0x00000714
	mov r0, r6
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F5614:
	mov r0, r5
	bl atol
	mov r2, r0
	ldr r1, _021F5874 ; =0x00000715
	mov r0, r6
	bl FUN_021F58A0
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F563C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5878 ; =0x0220E340
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F566C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x33
	bl FUN_021FB3DC
	ldr r1, _021F587C ; =0x0220E34C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F569C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5880 ; =0x0220E354
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F56CC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5884 ; =0x0220E35C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F56FC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5888 ; =0x0220E364
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F572C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F588C ; =0x0220E36C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F575C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5890 ; =0x0220E374
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F578C:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5894 ; =0x0220E37C
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F57BC:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl FUN_021FB3DC
	ldr r1, _021F5898 ; =0x0220E384
	add r2, sp, #0
	mov r0, r6
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5804
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
_021F57EC:
	ldr r1, _021F589C ; =0x0220E248
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #0x100
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021F5804:
	mov r0, #0
	add sp, sp, #0x100
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F5810: .word 0x0220E264
_021F5814: .word 0x0220E274
_021F5818: .word 0x0000012F
_021F581C: .word 0x0220E27C
_021F5820: .word 0x0220E28C
_021F5824: .word 0x00000177
_021F5828: .word 0x0220E294
_021F582C: .word 0x0220E2A0
_021F5830: .word 0x0220E2AC
_021F5834: .word 0x0220E2B8
_021F5838: .word 0x0220E2C4
_021F583C: .word 0x0220E2D0
_021F5840: .word 0x0220E2E8
_021F5844: .word 0x0210428C
_021F5848: .word 0x0220E2F8
_021F584C: .word 0x0220E2FC
_021F5850: .word 0x0220E300
_021F5854: .word 0x0220E304
_021F5858: .word 0x0220E30C
_021F585C: .word 0x0000070D
_021F5860: .word 0x0000070E
_021F5864: .word 0x0220E318
_021F5868: .word 0x0220E32C
_021F586C: .word 0x00000712
_021F5870: .word 0x00000714
_021F5874: .word 0x00000715
_021F5878: .word 0x0220E340
_021F587C: .word 0x0220E34C
_021F5880: .word 0x0220E354
_021F5884: .word 0x0220E35C
_021F5888: .word 0x0220E364
_021F588C: .word 0x0220E36C
_021F5890: .word 0x0220E374
_021F5894: .word 0x0220E37C
_021F5898: .word 0x0220E384
_021F589C: .word 0x0220E248

	arm_func_start FUN_021F58A0
FUN_021F58A0: ; 0x021F58A0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r3, _021F5D08 ; =0x00000706
	mov r4, r0
	sub r1, r1, r3
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _021F5CE4
_021F58C0: ; jump table
	b _021F59F8 ; case 0
	b _021F5CE4 ; case 1
	b _021F5924 ; case 2
	b _021F5CE4 ; case 3
	b _021F5CE4 ; case 4
	b _021F596C ; case 5
	b _021F5A24 ; case 6
	b _021F5A50 ; case 7
	b _021F5A7C ; case 8
	b _021F5CE4 ; case 9
	b _021F5AB4 ; case 10
	b _021F5CE4 ; case 11
	b _021F5AEC ; case 12
	b _021F5B24 ; case 13
	b _021F5B50 ; case 14
	b _021F5B7C ; case 15
	b _021F5CE4 ; case 16
	b _021F5CE4 ; case 17
	b _021F5BB0 ; case 18
	b _021F5BDC ; case 19
	b _021F5C08 ; case 20
	b _021F5C34 ; case 21
	b _021F5C60 ; case 22
	b _021F5C8C ; case 23
	b _021F5CB8 ; case 24
_021F5924:
	cmp r2, #0
	bge _021F5940
	ldr r1, _021F5D0C ; =0x0220E38C
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F5940:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D14 ; =0x0220E2C4
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F596C:
	cmp r2, #0x500
	beq _021F5990
	ldr r1, _021F5D18 ; =0x00000501
	cmp r2, r1
	beq _021F59AC
	ldr r1, _021F5D1C ; =0x00000502
	cmp r2, r1
	beq _021F59C8
	b _021F59E4
_021F5990:
	ldr r1, _021F5D20 ; =0x0220E304
	ldr r2, _021F5D24 ; =0x0220E2F8
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59AC:
	ldr r1, _021F5D20 ; =0x0220E304
	ldr r2, _021F5D28 ; =0x0220E2FC
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59C8:
	ldr r1, _021F5D20 ; =0x0220E304
	ldr r2, _021F5D2C ; =0x0220E300
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F59E4:
	ldr r1, _021F5D30 ; =0x0220E3A0
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F59F8:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D34 ; =0x0220E30C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A24:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D38 ; =0x0220E3B0
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A50:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D3C ; =0x0220E3C0
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5A7C:
	mov r0, r2, asr #3
	add r2, r2, r0, lsr #28
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	mov r2, r2, asr #4
	bl sprintf
	ldr r1, _021F5D40 ; =0x0220E3CC
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5AB4:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sprintf
	ldr r1, _021F5D44 ; =0x0220E3D8
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5AEC:
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	mov r2, r2, asr #2
	bl sprintf
	ldr r1, _021F5D48 ; =0x0220E3E8
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B24:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D4C ; =0x0220E3F8
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B50:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D50 ; =0x0220E408
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5B7C:
	ldr r1, _021F5D10 ; =0x0220E244
	cmp r2, #0
	movne r2, #1
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D54 ; =0x0220E41C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5D78
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5BB0:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D58 ; =0x0220E354
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5BDC:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D5C ; =0x0220E35C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C08:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D60 ; =0x0220E364
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C34:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D64 ; =0x0220E36C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C60:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D68 ; =0x0220E374
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5C8C:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D6C ; =0x0220E37C
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5CB8:
	ldr r1, _021F5D10 ; =0x0220E244
	add r0, sp, #0
	bl sprintf
	ldr r1, _021F5D70 ; =0x0220E384
	add r2, sp, #0
	mov r0, r4
	bl FUN_021F5DB8
	cmp r0, #0
	beq _021F5CFC
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_021F5CE4:
	ldr r1, _021F5D74 ; =0x0220E248
	mov r0, r4
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #2
	ldmia sp!, {r4, pc}
_021F5CFC:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F5D08: .word 0x00000706
_021F5D0C: .word 0x0220E38C
_021F5D10: .word 0x0220E244
_021F5D14: .word 0x0220E2C4
_021F5D18: .word 0x00000501
_021F5D1C: .word 0x00000502
_021F5D20: .word 0x0220E304
_021F5D24: .word 0x0220E2F8
_021F5D28: .word 0x0220E2FC
_021F5D2C: .word 0x0220E300
_021F5D30: .word 0x0220E3A0
_021F5D34: .word 0x0220E30C
_021F5D38: .word 0x0220E3B0
_021F5D3C: .word 0x0220E3C0
_021F5D40: .word 0x0220E3CC
_021F5D44: .word 0x0220E3D8
_021F5D48: .word 0x0220E3E8
_021F5D4C: .word 0x0220E3F8
_021F5D50: .word 0x0220E408
_021F5D54: .word 0x0220E41C
_021F5D58: .word 0x0220E354
_021F5D5C: .word 0x0220E35C
_021F5D60: .word 0x0220E364
_021F5D64: .word 0x0220E36C
_021F5D68: .word 0x0220E374
_021F5D6C: .word 0x0220E37C
_021F5D70: .word 0x0220E384
_021F5D74: .word 0x0220E248

	arm_func_start FUN_021F5D78
FUN_021F5D78: ; 0x021F5D78
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x450
	bl FUN_021F2F9C
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x450
	bl FUN_021F2F9C
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F5DB8
FUN_021F5DB8: ; 0x021F5DB8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0x440
	bl FUN_021F2F9C
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x440
	bl FUN_021F2F9C
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F5DF8
FUN_021F5DF8: ; 0x021F5DF8
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6]
	mov r5, r1
	ldr r2, [r4, #0x448]
	cmp r2, #0
	ble _021F5E54
	ldr r2, _021F5EB0 ; =0x0220E42C
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F64
	ldr r2, [r4, #0x440]
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F9C
	ldr r2, _021F5EB4 ; =0x0220E23C
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F9C
	mov r0, #0
	str r0, [r4, #0x448]
_021F5E54:
	ldr r0, [r4, #0x458]
	cmp r0, #0
	ble _021F5EA8
	ldr r2, _021F5EB8 ; =0x0220E444
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F9C
	ldr r2, [r4, #0x198]
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F64
	ldr r2, [r4, #0x450]
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F9C
	ldr r2, _021F5EB4 ; =0x0220E23C
	mov r0, r6
	mov r1, r5
	bl FUN_021F2F9C
	mov r0, #0
	str r0, [r4, #0x458]
_021F5EA8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F5EB0: .word 0x0220E42C
_021F5EB4: .word 0x0220E23C
_021F5EB8: .word 0x0220E444

	arm_func_start FUN_021F5EBC
FUN_021F5EBC: ; 0x021F5EBC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x26c
	mov r4, r2
	mov sl, r0
	mov fp, r1
	mov r1, r4
	mov r2, #1
	ldr r8, [sl]
	bl FUN_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x26c
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F6648 ; =0x0220E458
	mov r0, r4
	mov r2, #4
	bl strncmp
	cmp r0, #0
	beq _021F5F34
	ldr r2, _021F664C ; =0x0220E460
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5F34:
	ldr r1, _021F6650 ; =0x0220E228
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F5F7C
	ldr r2, _021F664C ; =0x0220E460
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F5F7C:
	add r0, sp, #0x14
	bl atol
	mov sb, r0
	cmp sb, #0
	bgt _021F5FA4
	ldr r0, _021F6654 ; =0x0220E490
	ldr r1, _021F6658 ; =0x0220E4A0
	ldr r3, _021F665C ; =0x0000015A
	mov r2, #0
	bl __msl_assertion_failed
_021F5FA4:
	add r2, sp, #8
	mov r0, sl
	mov r1, sb
	bl FUN_021F85E8
	mov r0, #0
	add r6, sp, #0x12c
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #7
_021F5FCC:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _021F5FCC
	stmia r6!, {r0, r1, r2, r3}
	add r3, sp, #0x73
	add r1, sp, #0xbb
	add r2, sp, #0x54
	add r5, sp, #0x88
	add r0, sp, #0xda
	str r3, [sp, #0x130]
	add r3, sp, #0x21c
	str r1, [sp, #0x138]
	str r5, [sp, #0x134]
	add r5, sp, #0xf9
	str r0, [sp, #0x13c]
	str r3, [sp, #0x140]
	ldr r1, _021F6660 ; =0x0220E274
	mov r0, r4
	mov r3, #0x1f
	str r2, [sp, #0x12c]
	str r5, [sp, #0x1f4]
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x12c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x130]
	ldr r1, _021F6664 ; =0x0220E27C
	mov r0, r4
	mov r3, #0x15
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x130]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x134]
	ldr r1, _021F6668 ; =0x0220E28C
	mov r0, r4
	mov r3, #0x33
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x134]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x138]
	ldr r1, _021F666C ; =0x0220E2A0
	mov r0, r4
	mov r3, #0x1f
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x138]
	moveq r1, #0
	streqb r1, [r0]
	ldr r2, [sp, #0x13c]
	ldr r1, _021F6670 ; =0x0220E2AC
	mov r0, r4
	mov r3, #0x1f
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x13c]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F6674 ; =0x0220E30C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x144]
	beq _021F60F8
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x144]
_021F60F8:
	ldr r2, [sp, #0x140]
	ldr r1, _021F6678 ; =0x0220E2B8
	mov r0, r4
	mov r3, #0x4c
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x140]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F667C ; =0x0220E2C4
	add r2, sp, #0x148
	mov r0, r4
	mov r3, #0xb
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	add r2, sp, #0x100
	streqb r0, [sp, #0x148]
	ldr r1, _021F6680 ; =0x0220E2E8
	add r2, r2, #0x53
	mov r0, r4
	mov r3, #3
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x153]
	ldr r1, _021F6684 ; =0x0220E4AC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x158]
	beq _021F6194
	add r0, sp, #0x14
	bl atod
	bl _d2f
	str r0, [sp, #0x158]
_021F6194:
	ldr r1, _021F6688 ; =0x0220E4B4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x15c]
	beq _021F61C8
	add r0, sp, #0x14
	bl atod
	bl _d2f
	str r0, [sp, #0x15c]
_021F61C8:
	ldr r1, _021F668C ; =0x0220E4BC
	add r2, sp, #0x160
	mov r0, r4
	mov r3, #0x80
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [sp, #0x160]
	ldr r1, _021F6690 ; =0x0220E258
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1e0]
	streq r0, [sp, #0x1e4]
	streq r0, [sp, #0x1e8]
	beq _021F6244
	add r0, sp, #0x14
	bl atol
	add r5, sp, #0x1e8
	mov r1, r0
	add r2, sp, #0x1e0
	add r3, sp, #0x1e4
	mov r0, sl
	str r5, [sp]
	bl FUN_021F68D8
	cmp r0, #0
	addne sp, sp, #0x26c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F6244:
	ldr r1, _021F6694 ; =0x0220E304
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, _021F6698 ; =0x00000502
	streq r0, [sp, #0x1ec]
	beq _021F6290
	ldrsb r0, [sp, #0x14]
	cmp r0, #0x30
	moveq r0, #0x500
	streq r0, [sp, #0x1ec]
	beq _021F6290
	cmp r0, #0x31
	ldreq r0, _021F669C ; =0x00000501
	streq r0, [sp, #0x1ec]
	ldrne r0, _021F6698 ; =0x00000502
	strne r0, [sp, #0x1ec]
_021F6290:
	ldr r1, _021F66A0 ; =0x0220E4C4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	mvneq r0, #0
	streq r0, [sp, #0x1f0]
	beq _021F62C0
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1f0]
_021F62C0:
	ldr r2, [sp, #0x1f4]
	ldr r1, _021F66A4 ; =0x0220E34C
	mov r0, r4
	mov r3, #0x33
	bl FUN_021FB1F0
	cmp r0, #0
	ldreq r0, [sp, #0x1f4]
	moveq r1, #0
	streqb r1, [r0]
	ldr r1, _021F66A8 ; =0x0220E354
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1f8]
	beq _021F6314
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1f8]
_021F6314:
	ldr r1, _021F66AC ; =0x0220E35C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x1fc]
	beq _021F6344
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x1fc]
_021F6344:
	ldr r1, _021F66B0 ; =0x0220E364
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x200]
	beq _021F6374
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x200]
_021F6374:
	ldr r1, _021F66B4 ; =0x0220E36C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x204]
	beq _021F63A4
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x204]
_021F63A4:
	ldr r1, _021F66B8 ; =0x0220E374
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x208]
	beq _021F63D4
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x208]
_021F63D4:
	ldr r1, _021F66BC ; =0x0220E37C
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x20c]
	beq _021F6404
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x20c]
_021F6404:
	ldr r1, _021F66C0 ; =0x0220E384
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x210]
	beq _021F6434
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x210]
_021F6434:
	ldr r1, _021F66C4 ; =0x0220E4CC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x214]
	beq _021F6464
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x214]
_021F6464:
	ldr r1, _021F66C8 ; =0x0220E4D4
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x218]
	beq _021F6494
	add r0, sp, #0x14
	bl atol
	str r0, [sp, #0x218]
_021F6494:
	ldr r1, _021F66CC ; =0x0220E4DC
	add r2, sp, #0x14
	mov r0, r4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F64DC
	ldr r2, _021F664C ; =0x0220E460
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x26c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F64DC:
	ldr r7, [r8, #0x434]
	ldr r6, [r8, #0x100]
	cmp r7, #0
	beq _021F653C
	mov r5, #0x66
	mov r4, #1
_021F64F4:
	ldr r0, [r7, #0xc]
	cmp r0, sb
	bne _021F6530
	ldr r0, [r7]
	cmp r0, #0x65
	bne _021F6530
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021F6528
	mov r0, sl
	mov r1, sb
	bl FUN_021F8624
	str r0, [sp, #8]
_021F6528:
	mov r6, r4
	str r5, [r7]
_021F6530:
	ldr r7, [r7, #0x3c]
	cmp r7, #0
	bne _021F64F4
_021F653C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021F6564
	ldr r0, [r8, #0x100]
	cmp r0, #0
	beq _021F6564
	mov r0, sl
	mov r1, sb
	bl FUN_021F8624
	str r0, [sp, #8]
_021F6564:
	cmp r6, #0
	beq _021F6594
	ldr r0, [sp, #8]
	ldr r0, [r0, #0x18]
	bl FUN_021DD82C
	ldr r1, [sp, #8]
	mov r2, #0
	add r0, sp, #0x14
	str r2, [r1, #0x18]
	bl FUN_021F0208
	ldr r1, [sp, #8]
	str r0, [r1, #0x18]
_021F6594:
	ldr r0, [r8, #0x100]
	cmp r0, #0
	beq _021F65B0
	ldr r1, [sp, #8]
	add r2, sp, #0x12c
	mov r0, sl
	bl FUN_021F4D88
_021F65B0:
	ldr r1, [fp, #0xc]
	ldr r0, [fp, #0x10]
	cmp r1, #0
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	beq _021F6630
	mov r0, #0x204
	bl FUN_021DD860
	movs r4, r0
	bne _021F65F0
	ldr r1, _021F66D0 ; =0x0220E200
	mov r0, sl
	bl FUN_021FAEEC
	add sp, sp, #0x26c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F65F0:
	add r0, sp, #0x12c
	mov r1, r4
	bl FUN_021F66D4
	mov r0, #0
	str r0, [r4]
	str sb, [r4, #4]
	str fp, [sp]
	str r0, [sp, #4]
	add r1, sp, #0xc
	mov r0, sl
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	addne sp, sp, #0x26c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F6630:
	mov r0, sl
	mov r1, fp
	bl FUN_021F6C84
	mov r0, #0
	add sp, sp, #0x26c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F6648: .word 0x0220E458
_021F664C: .word 0x0220E460
_021F6650: .word 0x0220E228
_021F6654: .word 0x0220E490
_021F6658: .word 0x0220E4A0
_021F665C: .word 0x0000015A
_021F6660: .word 0x0220E274
_021F6664: .word 0x0220E27C
_021F6668: .word 0x0220E28C
_021F666C: .word 0x0220E2A0
_021F6670: .word 0x0220E2AC
_021F6674: .word 0x0220E30C
_021F6678: .word 0x0220E2B8
_021F667C: .word 0x0220E2C4
_021F6680: .word 0x0220E2E8
_021F6684: .word 0x0220E4AC
_021F6688: .word 0x0220E4B4
_021F668C: .word 0x0220E4BC
_021F6690: .word 0x0220E258
_021F6694: .word 0x0220E304
_021F6698: .word 0x00000502
_021F669C: .word 0x00000501
_021F66A0: .word 0x0220E4C4
_021F66A4: .word 0x0220E34C
_021F66A8: .word 0x0220E354
_021F66AC: .word 0x0220E35C
_021F66B0: .word 0x0220E364
_021F66B4: .word 0x0220E36C
_021F66B8: .word 0x0220E374
_021F66BC: .word 0x0220E37C
_021F66C0: .word 0x0220E384
_021F66C4: .word 0x0220E4CC
_021F66C8: .word 0x0220E4D4
_021F66CC: .word 0x0220E4DC
_021F66D0: .word 0x0220E200

	arm_func_start FUN_021F66D4
FUN_021F66D4: ; 0x021F66D4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, [r5]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #8]
	beq _021F6704
	add r0, r4, #8
	mov r2, #0x1f
	bl FUN_021FB3DC
_021F6704:
	ldr r1, [r5, #4]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x27]
	beq _021F6724
	add r0, r4, #0x27
	mov r2, #0x15
	bl FUN_021FB3DC
_021F6724:
	ldr r1, [r5, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x3c]
	beq _021F6744
	add r0, r4, #0x3c
	mov r2, #0x33
	bl FUN_021FB3DC
_021F6744:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x6f]
	beq _021F6764
	add r0, r4, #0x6f
	mov r2, #0x1f
	bl FUN_021FB3DC
_021F6764:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x8e]
	beq _021F6784
	add r0, r4, #0x8e
	mov r2, #0x1f
	bl FUN_021FB3DC
_021F6784:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0xad]
	beq _021F67A4
	add r0, r4, #0xad
	mov r2, #0x4c
	bl FUN_021FB3DC
_021F67A4:
	ldr r3, [r5, #0x18]
	add r0, r4, #0x100
	add r1, r5, #0x1c
	mov r2, #0xb
	str r3, [r4, #0xfc]
	bl FUN_021FB3DC
	ldr r0, _021F68D4 ; =0x0000010B
	add r1, r5, #0x27
	add r0, r4, r0
	mov r2, #3
	bl FUN_021FB3DC
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0x34
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	moveq r0, #0
	streqb r0, [r4, #0x118]
	beq _021F67FC
	add r0, r4, #0x118
	mov r2, #0x80
	bl FUN_021FB3DC
_021F67FC:
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r1, [r5, #0xc8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, #0x1ac]
	beq _021F6844
	add r0, r4, #0x1ac
	mov r2, #0x33
	bl FUN_021FB3DC
_021F6844:
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xfc]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x110]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x114]
	ldr r0, [r5, #0xb4]
	str r0, [r4, #0x198]
	ldr r0, [r5, #0xb8]
	str r0, [r4, #0x19c]
	ldr r0, [r5, #0xbc]
	str r0, [r4, #0x1a0]
	ldr r0, [r5, #0xc0]
	str r0, [r4, #0x1a4]
	ldr r0, [r5, #0xc4]
	str r0, [r4, #0x1a8]
	ldr r0, [r5, #0xcc]
	str r0, [r4, #0x1e0]
	ldr r0, [r5, #0xd0]
	str r0, [r4, #0x1e4]
	ldr r0, [r5, #0xd4]
	str r0, [r4, #0x1e8]
	ldr r0, [r5, #0xd8]
	str r0, [r4, #0x1ec]
	ldr r0, [r5, #0xdc]
	str r0, [r4, #0x1f0]
	ldr r0, [r5, #0xe0]
	str r0, [r4, #0x1f4]
	ldr r0, [r5, #0xe4]
	str r0, [r4, #0x1f8]
	ldr r0, [r5, #0xe8]
	str r0, [r4, #0x1fc]
	ldr r0, [r5, #0xec]
	str r0, [r4, #0x200]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F68D4: .word 0x0000010B

	arm_func_start FUN_021F68D8
FUN_021F68D8: ; 0x021F68D8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr ip, _021F6978 ; =0x0000FFFF
	mov r4, r1, asr #0x18
	mov lr, r1, asr #0x10
	and r7, r4, #0xff
	mov r4, r0
	and r6, lr, #0xff
	and r5, r1, ip
	mov sb, r2
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r8, r3
	bl FUN_021F6988
	cmp r0, #0
	bne _021F6930
	ldr r0, _021F697C ; =0x0220E4E4
	ldr r1, _021F6980 ; =0x0220E4A0
	mov r2, #0
	mov r3, #0xb7
	bl __msl_assertion_failed
_021F6930:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_021F6988
	cmp r0, #0
	strne r7, [sb]
	ldrne r0, [sp, #0x20]
	strne r6, [r8]
	strne r5, [r0]
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _021F6984 ; =0x0220E4FC
	mov r0, r4
	bl FUN_021FAEEC
	mov r0, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F6978: .word 0x0000FFFF
_021F697C: .word 0x0220E4E4
_021F6980: .word 0x0220E4A0
_021F6984: .word 0x0220E4FC

	arm_func_start FUN_021F6988
FUN_021F6988: ; 0x021F6988
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r0, #0
	bne _021F69B0
	cmp r1, #0
	bne _021F69B0
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
_021F69B0:
	cmp r0, #0
	blt _021F69C8
	cmp r1, #0
	blt _021F69C8
	cmp r2, #0
	bge _021F69D4
_021F69C8:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F69D4:
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _021F6ACC
_021F69E0: ; jump table
	b _021F6A14 ; case 0
	b _021F6A28 ; case 1
	b _021F6A50 ; case 2
	b _021F6A28 ; case 3
	b _021F6A3C ; case 4
	b _021F6A28 ; case 5
	b _021F6A3C ; case 6
	b _021F6A28 ; case 7
	b _021F6A28 ; case 8
	b _021F6A3C ; case 9
	b _021F6A28 ; case 10
	b _021F6A3C ; case 11
	b _021F6A28 ; case 12
_021F6A14:
	cmp r0, #0
	beq _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A28:
	cmp r0, #0x1f
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A3C:
	cmp r0, #0x1e
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6A50:
	mov r4, r2, lsr #0x1f
	rsb r3, r4, r2, lsl #30
	adds r3, r4, r3, ror #30
	bne _021F6A80
	ldr ip, _021F6B3C ; =0x51EB851F
	ldr lr, _021F6B40 ; =0x00000064
	smull r3, r5, ip, r2
	mov r5, r5, asr #5
	add r5, r4, r5
	smull r3, ip, lr, r5
	subs r5, r2, r3
	bne _021F6AA4
_021F6A80:
	ldr lr, _021F6B3C ; =0x51EB851F
	mov r3, r2, lsr #0x1f
	smull ip, r4, lr, r2
	mov r4, r4, asr #7
	ldr lr, _021F6B44 ; =0x00000190
	add r4, r3, r4
	smull r3, ip, lr, r4
	subs r4, r2, r3
	bne _021F6AB8
_021F6AA4:
	cmp r0, #0x1d
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6AB8:
	cmp r0, #0x1c
	ble _021F6AD8
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6ACC:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021F6AD8:
	ldr r3, _021F6B48 ; =0x0000076C
	cmp r2, r3
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	ldr r3, _021F6B4C ; =0x0000081F
	cmp r2, r3
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
	cmp r2, r3
	bne _021F6B30
	cmp r1, #6
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
	cmp r1, #6
	bne _021F6B30
	cmp r0, #6
	addgt sp, sp, #4
	movgt r0, #0
	ldmgtia sp!, {r4, r5, pc}
_021F6B30:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6B3C: .word 0x51EB851F
_021F6B40: .word 0x00000064
_021F6B44: .word 0x00000190
_021F6B48: .word 0x0000076C
_021F6B4C: .word 0x0000081F

	arm_func_start FUN_021F6B50
FUN_021F6B50: ; 0x021F6B50
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r3, [r5]
	mov r4, #0
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _021F6BB4
_021F6B70: ; jump table
	b _021F6B84 ; case 0
	b _021F6B90 ; case 1
	b _021F6B9C ; case 2
	b _021F6BB4 ; case 3
	b _021F6BA8 ; case 4
_021F6B84:
	bl FUN_021F3934
	mov r4, r0
	b _021F6BD4
_021F6B90:
	bl FUN_021F8710
	mov r4, r0
	b _021F6BD4
_021F6B9C:
	bl FUN_021F5EBC
	mov r4, r0
	b _021F6BD4
_021F6BA8:
	bl FUN_021FADE8
	mov r4, r0
	b _021F6BD4
_021F6BB4:
	ldr r1, _021F6BE8 ; =0x0220E50C
	mov r2, r3
	bl FUN_021FB3D0
	ldr r0, _021F6BEC ; =0x0220E554
	ldr r1, _021F6BF0 ; =0x0220E558
	ldr r3, _021F6BF4 ; =0x00000146
	mov r2, #0
	bl __msl_assertion_failed
_021F6BD4:
	cmp r4, #0
	strne r4, [r5, #0x1c]
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6BE8: .word 0x0220E50C
_021F6BEC: .word 0x0220E554
_021F6BF0: .word 0x0220E558
_021F6BF4: .word 0x00000146

	arm_func_start FUN_021F6BF8
FUN_021F6BF8: ; 0x021F6BF8
	ldr r0, [r0]
	ldr r1, [r0, #0x424]
	cmp r1, #0
	beq _021F6C30
_021F6C08:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F6C24
	ldr r0, [r1]
	cmp r0, #3
	movne r0, #1
	bxne lr
_021F6C24:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	bne _021F6C08
_021F6C30:
	mov r0, #0
	bx lr

	arm_func_start FUN_021F6C38
FUN_021F6C38: ; 0x021F6C38
	ldr r0, [r0]
	ldr r3, [r0, #0x424]
	cmp r3, #0
	beq _021F6C70
_021F6C48:
	ldr r0, [r3, #0x18]
	cmp r0, r2
	bne _021F6C64
	cmp r1, #0
	strne r3, [r1]
	mov r0, #1
	bx lr
_021F6C64:
	ldr r3, [r3, #0x20]
	cmp r3, #0
	bne _021F6C48
_021F6C70:
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	mov r0, #0
	bx lr

	arm_func_start FUN_021F6C84
FUN_021F6C84: ; 0x021F6C84
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [r0]
	mov r3, #0
	ldr r2, [ip, #0x424]
	cmp r2, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
_021F6CA4:
	cmp r2, r1
	bne _021F6CCC
	cmp r3, #0
	ldreq r2, [r2, #0x20]
	streq r2, [ip, #0x424]
	ldrne r2, [r1, #0x20]
	strne r2, [r3, #0x20]
	bl FUN_021F6CE4
	add sp, sp, #4
	ldmfd sp!, {pc}
_021F6CCC:
	mov r3, r2
	ldr r2, [r2, #0x20]
	cmp r2, #0
	bne _021F6CA4
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F6CE4
FUN_021F6CE4: ; 0x021F6CE4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldr r1, [r5]
	ldr r2, [r0]
	cmp r1, #3
	bne _021F6D64
	ldr r0, [r2, #0x210]
	ldr r4, [r5, #4]
	sub r0, r0, #1
	str r0, [r2, #0x210]
	ldr r0, [r2, #0x210]
	cmp r0, #0
	bge _021F6D30
	ldr r0, _021F6D84 ; =0x0220E568
	ldr r1, _021F6D88 ; =0x0220E558
	mov r2, #0
	mov r3, #0xb6
	bl __msl_assertion_failed
_021F6D30:
	ldr r0, [r4, #4]
	mov r1, #2
	bl FUN_021EFD80
	ldr r0, [r4, #4]
	bl FUN_021EFD9C
	ldr r0, [r4, #0x18]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #8]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F6D64:
	ldr r0, [r5, #4]
	bl FUN_021DD82C
	mov r1, #0
	mov r0, r5
	str r1, [r5, #4]
	bl FUN_021DD82C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F6D84: .word 0x0220E568
_021F6D88: .word 0x0220E558

	arm_func_start FUN_021F6D8C
FUN_021F6D8C: ; 0x021F6D8C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x24
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [r8]
	bl FUN_021DD860
	cmp r0, #0
	bne _021F6DC8
	ldr r1, _021F6E40 ; =0x0220E588
	mov r0, r8
	bl FUN_021FAEEC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F6DC8:
	str r7, [r0]
	ldr r1, [sp, #0x18]
	str r6, [r0, #4]
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0x14]
	cmp r7, #0
	moveq r1, #1
	streq r1, [r0, #0x18]
	beq _021F6E10
	ldr r2, [r4, #0x20c]
	add r1, r2, #1
	str r1, [r4, #0x20c]
	str r2, [r0, #0x18]
	ldr r1, [r4, #0x20c]
	cmp r1, #2
	movlt r1, #2
	strlt r1, [r4, #0x20c]
_021F6E10:
	mov r3, #0
	ldr r2, [sp, #0x1c]
	str r3, [r0, #0x1c]
	ldr r1, [sp, #0x20]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x424]
	str r1, [r0, #0x20]
	str r0, [r4, #0x424]
	str r0, [r5]
	mov r0, r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F6E40: .word 0x0220E588

	arm_func_start FUN_021F6E44
FUN_021F6E44: ; 0x021F6E44
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	ldr r5, [r7]
	bne _021F6E70
	ldr r0, _021F7168 ; =0x0220E598
	ldr r1, _021F716C ; =0x0220E558
	mov r2, #0
	mov r3, #0x22
	bl __msl_assertion_failed
_021F6E70:
	ldr r0, [r7]
	cmp r0, #0
	bne _021F6E90
	ldr r0, _021F7170 ; =0x0220E5AC
	ldr r1, _021F716C ; =0x0220E558
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021F6E90:
	cmp r6, #0
	bne _021F6EAC
	ldr r0, _021F7174 ; =0x0220E5C0
	ldr r1, _021F716C ; =0x0220E558
	mov r2, #0
	mov r3, #0x24
	bl __msl_assertion_failed
_021F6EAC:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021F715C
	ldr r0, [r6]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021F7148
_021F6ED4: ; jump table
	b _021F6EE8 ; case 0
	b _021F6F70 ; case 1
	b _021F6FEC ; case 2
	b _021F7058 ; case 3
	b _021F70DC ; case 4
_021F6EE8:
	mov r0, #0x20
	bl FUN_021DD860
	movs r4, r0
	bne _021F6F10
	ldr r1, _021F7178 ; =0x0220E588
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F10:
	mov r1, #0
	mov r2, #0x20
	bl Call_FillMemWithValue
	ldr r1, [r6, #0x1c]
	ldr r0, _021F717C ; =0x00000201
	str r1, [r4]
	ldr r1, [r5, #0x418]
	mov r3, r4
	cmp r1, r0
	ldreq r1, [r5, #0x1a0]
	moveq r0, #0
	streq r1, [r4, #4]
	streq r0, [r5, #0x1a0]
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F70:
	mov r0, #8
	bl FUN_021DD860
	movs r3, r0
	bne _021F6F98
	ldr r1, _021F7178 ; =0x0220E588
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6F98:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F6FEC:
	mov r0, #0x204
	bl FUN_021DD860
	movs r4, r0
	bne _021F7014
	ldr r1, _021F7178 ; =0x0220E588
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7014:
	mov r1, #0
	mov r2, #0x204
	bl Call_FillMemWithValue
	ldr r1, [r6, #0x1c]
	mov r0, #0
	str r1, [r4]
	str r6, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7058:
	mov r0, #0x10
	bl FUN_021DD860
	movs r3, r0
	bne _021F7080
	ldr r1, _021F7178 ; =0x0220E588
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7080:
	mov r2, r3
	mov r1, #4
	mov r0, #0
_021F708C:
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	strb r0, [r2], #1
	subs r1, r1, #1
	bne _021F708C
	ldr r1, [r6, #0x1c]
	mov r0, #0
	str r1, [r3]
	str r0, [r3, #0xc]
	str r6, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r7
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F70DC:
	mov r0, #4
	bl FUN_021DD860
	movs r3, r0
	bne _021F7104
	ldr r1, _021F7178 ; =0x0220E588
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7104:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F715C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7148:
	ldr r0, _021F7180 ; =0x0220E554
	ldr r1, _021F716C ; =0x0220E558
	mov r2, #0
	mov r3, #0x6b
	bl __msl_assertion_failed
_021F715C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7168: .word 0x0220E598
_021F716C: .word 0x0220E558
_021F7170: .word 0x0220E5AC
_021F7174: .word 0x0220E5C0
_021F7178: .word 0x0220E588
_021F717C: .word 0x00000201
_021F7180: .word 0x0220E554

	arm_func_start FUN_021F7184
FUN_021F7184: ; 0x021F7184
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bne _021F71B4
	ldr r0, _021F7258 ; =0x0220E5D4
	ldr r1, _021F725C ; =0x0220E5E4
	ldr r3, _021F7260 ; =0x00000389
	mov r2, #0
	bl __msl_assertion_failed
_021F71B4:
	mvn r0, #0
	cmp r5, #0
	ldreq r5, _021F7264 ; =0x0220E5F0
	cmp r4, r0
	bne _021F71D4
	mov r0, r5
	bl strlen
	mov r4, r0
_021F71D4:
	ldr r1, _021F7268 ; =0x0220E5F4
	add r0, sp, #0
	mov r2, r4
	bl sprintf
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl FUN_021F2C58
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_021F2C88
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl FUN_021F2D8C
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	bl FUN_021EFAC8
	add r0, r0, #0x12c
	str r0, [r6, #0x10]
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7258: .word 0x0220E5D4
_021F725C: .word 0x0220E5E4
_021F7260: .word 0x00000389
_021F7264: .word 0x0220E5F0
_021F7268: .word 0x0220E5F4

	arm_func_start FUN_021F726C
FUN_021F726C: ; 0x021F726C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x4c
	mov sb, r0
	mov r8, r1
	mov r7, r2
	cmp r3, #0
	ldr r6, [r3, #4]
	ldr r5, [r3]
	ldr r4, [r3, #8]
	bne _021F72A8
	ldr r0, _021F72DC ; =0x0220E604
	ldr r1, _021F72E0 ; =0x0220E5E4
	ldr r3, _021F72E4 ; =0x00000376
	mov r2, #0
	bl __msl_assertion_failed
_021F72A8:
	ldr r1, _021F72E8 ; =0x0220E610
	str r6, [sp]
	add r0, sp, #8
	mov r2, r7
	mov r3, r5
	str r4, [sp, #4]
	bl sprintf
	add r2, sp, #8
	mov r0, sb
	mov r1, r8
	bl FUN_021F2C58
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F72DC: .word 0x0220E604
_021F72E0: .word 0x0220E5E4
_021F72E4: .word 0x00000376
_021F72E8: .word 0x0220E610

	arm_func_start FUN_021F72EC
FUN_021F72EC: ; 0x021F72EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	bne _021F731C
	ldr r0, _021F745C ; =0x0220E5D4
	ldr r1, _021F7460 ; =0x0220E5E4
	mov r2, #0
	mov r3, #0x340
	bl __msl_assertion_failed
_021F731C:
	cmp r5, #0
	bne _021F7338
	ldr r0, _021F7464 ; =0x0220E624
	ldr r1, _021F7460 ; =0x0220E5E4
	ldr r3, _021F7468 ; =0x00000341
	mov r2, #0
	bl __msl_assertion_failed
_021F7338:
	mov r0, r5
	bl strlen
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	mov r4, r0
	ldr r2, _021F746C ; =0x0220E634
	mov r0, r8
	str r6, [sp, #0x10]
	bl FUN_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r6
	bl FUN_021F2F64
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F7470 ; =0x0220E638
	add r1, sp, #0
	mov r0, r8
	bl FUN_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, r4
	bl FUN_021F2F64
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021F7474 ; =0x0220E640
	add r1, sp, #0
	mov r0, r8
	bl FUN_021F2F9C
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [sp, #8]
	add r1, sp, #0
	mov r0, r8
	mov r2, r5
	mov r3, r4
	str ip, [sp, #0x14]
	bl FUN_021F2FCC
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #0
	mov r0, r8
	mov r2, #0
	bl FUN_021F30D4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r7, #0x38]
	add r1, sp, #0
	bl FUN_021EEFA8
	mov r0, #0
	bl FUN_021EFAC8
	add r0, r0, #0x12c
	str r0, [r7, #0x10]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021F745C: .word 0x0220E5D4
_021F7460: .word 0x0220E5E4
_021F7464: .word 0x0220E624
_021F7468: .word 0x00000341
_021F746C: .word 0x0220E634
_021F7470: .word 0x0220E638
_021F7474: .word 0x0220E640

	arm_func_start FUN_021F7478
FUN_021F7478: ; 0x021F7478
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	ldr r1, [r4, #0xc]
	add r2, sp, #8
	mov r5, r0
	bl FUN_021F85E8
	cmp r0, #0
	bne _021F74B4
	ldr r1, _021F7600 ; =0x0220E648
	mov r0, r5
	bl FUN_021FAEEC
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F74B4:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	mvn r1, #0
	cmp r0, r1
	bne _021F7504
	ldr r2, _021F7604 ; =0x0220E664
	mov r0, r5
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl FUN_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F7504:
	mov r1, #0
	bl FUN_021F017C
	cmp r0, #0
	bne _021F7540
	ldr r2, _021F7608 ; =0x0220E68C
	mov r0, r5
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #0
	bl FUN_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F7540:
	ldr r0, [r4, #8]
	bl FUN_021F7854
	add r1, sp, #0
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	mov r0, #2
	ldr r3, [sp, #8]
	strb r0, [sp, #1]
	ldr r0, [r3, #8]
	mov r2, #8
	ldr r0, [r0, #0x10]
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	ldr r0, [r0, #0x14]
	strh r0, [sp, #2]
	ldr r0, [r4, #8]
	bl FUN_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021F75EC
	ldr r0, [r4, #8]
	bl FUN_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021F75EC
	mvn r1, #0x19
	cmp r0, r1
	beq _021F75EC
	mvn r1, #0x4b
	cmp r0, r1
	beq _021F75EC
	ldr r2, _021F760C ; =0x0220E6C0
	mov r0, r5
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021F75EC:
	mov r0, #0x67
	str r0, [r4]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021F7600: .word 0x0220E648
_021F7604: .word 0x0220E664
_021F7608: .word 0x0220E68C
_021F760C: .word 0x0220E6C0

	arm_func_start FUN_021F7610
FUN_021F7610: ; 0x021F7610
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r2, #0
	str r2, [sp]
	mov r4, r1
	str r2, [sp, #4]
	add r3, sp, #0xc
	mov r1, #2
	mov r5, r0
	str r2, [sp, #8]
	bl FUN_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0xc]
	ldr r2, [r0, #0x18]
	mov r0, r5
	bl FUN_021F5018
	cmp r0, #0
	moveq r0, #0x65
	streq r0, [r4]
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021F7674
FUN_021F7674: ; 0x021F7674
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r5, [r0]
	mov r0, #0x40
	mov r7, r1
	mov r6, r2
	bl FUN_021DD860
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x40
	bl Call_FillMemWithValue
	mov r0, #0x64
	str r0, [r4]
	str r6, [r4, #4]
	mvn r0, #0
	str r0, [r4, #8]
	mov r0, #0
	str r7, [r4, #0xc]
	bl FUN_021EFAC8
	add r0, r0, #0x12c
	str r0, [r4, #0x10]
	ldr r3, [r5, #0x434]
	ldr r2, _021F7700 ; =FUN_021F7704
	mov r0, #0x18
	mov r1, #0
	str r3, [r4, #0x3c]
	bl FUN_021EF0E4
	str r0, [r4, #0x38]
	mov r0, r4
	str r4, [r5, #0x434]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7700: .word FUN_021F7704

	arm_func_start FUN_021F7704
FUN_021F7704: ; 0x021F7704
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F7720
FUN_021F7720: ; 0x021F7720
	ldr r0, [r0]
	ldr r0, [r0, #0x434]
	cmp r0, #0
	beq _021F7754
_021F7730:
	ldr r2, [r0, #0xc]
	cmp r2, r1
	bne _021F7748
	ldr r2, [r0]
	cmp r2, #0x69
	bxeq lr
_021F7748:
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _021F7730
_021F7754:
	mov r0, #0
	bx lr

	arm_func_start FUN_021F775C
FUN_021F775C: ; 0x021F775C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r7, [r4]
	mvn r1, #0
	ldr r0, [r7, #0x204]
	cmp r0, r1
	beq _021F77E8
	bl FUN_021EFF2C
	cmp r0, #0
	beq _021F77E8
	mov r1, #0
	ldr r0, [r7, #0x204]
	mov r2, r1
	bl FUN_021EFC94
	mov r6, r0
	mvn r1, #0
	cmp r6, r1
	beq _021F77E8
	mov r0, r4
	mov r2, #0
	bl FUN_021F7674
	movs r5, r0
	beq _021F77E0
	mov r0, #0x68
	str r0, [r5]
	mov r0, r6
	str r6, [r5, #8]
	mov r1, #0
	bl FUN_021F017C
	ldr r0, [r5, #8]
	bl FUN_021F7854
	b _021F77E8
_021F77E0:
	mov r0, r6
	bl FUN_021EFD9C
_021F77E8:
	ldr r6, [r7, #0x434]
	cmp r6, #0
	beq _021F7848
	mov r5, #0
_021F77F8:
	mov r0, r4
	mov r1, r6
	ldr r7, [r6, #0x3c]
	bl FUN_021F7A40
	ldr r1, [r6]
	cmp r1, #0x6a
	beq _021F7830
	cmp r0, #0
	bne _021F7830
	mov r0, r5
	bl FUN_021EFAC8
	ldr r1, [r6, #0x10]
	cmp r0, r1
	ble _021F783C
_021F7830:
	mov r0, r4
	mov r1, r6
	bl FUN_021F78CC
_021F783C:
	mov r6, r7
	cmp r7, #0
	bne _021F77F8
_021F7848:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021F7854
FUN_021F7854: ; 0x021F7854
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r1, #0x4000
	bl FUN_021F0130
	mov r0, r4
	mov r1, #0x8000
	bl FUN_021F0130
	mov r0, r4
	mov r1, #0x10000
	bl FUN_021F0130
	mov r0, r4
	mov r1, #0x20000
	bl FUN_021F0130
	mov r0, r4
	mov r1, #0x40000
	bl FUN_021F0130
	mov r0, r4
	mov r1, #0x4000
	bl FUN_021F00E4
	mov r0, r4
	mov r1, #0x8000
	bl FUN_021F00E4
	mov r0, r4
	mov r1, #0x10000
	bl FUN_021F00E4
	mov r0, r4
	bl FUN_021F009C
	mov r0, r4
	bl FUN_021F0054
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F78CC
FUN_021F78CC: ; 0x021F78CC
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	movs r4, r1
	ldr r6, [r5]
	bne _021F78F4
	ldr r0, _021F79C8 ; =0x0220E5D4
	ldr r1, _021F79CC ; =0x0220E5E4
	ldr r3, _021F79D0 ; =0x00000213
	mov r2, #0
	bl __msl_assertion_failed
_021F78F4:
	ldr r1, [r6, #0x434]
	cmp r1, r4
	ldreq r0, [r4, #0x3c]
	streq r0, [r6, #0x434]
	beq _021F7958
	ldr r0, [r1, #0x3c]
	cmp r0, r4
	beq _021F7950
_021F7914:
	cmp r0, #0
	bne _021F7940
	ldr r0, _021F79D4 ; =0x0220E6E8
	ldr r1, _021F79CC ; =0x0220E5E4
	ldr r3, _021F79D8 ; =0x00000225
	mov r2, #0
	bl __msl_assertion_failed
	ldr r1, _021F79DC ; =0x0220E6EC
	mov r0, r5
	bl FUN_021FB3D0
	ldmia sp!, {r4, r5, r6, pc}
_021F7940:
	mov r1, r0
	ldr r0, [r0, #0x3c]
	cmp r0, r4
	bne _021F7914
_021F7950:
	ldr r0, [r4, #0x3c]
	str r0, [r1, #0x3c]
_021F7958:
	ldr r0, [r4, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	beq _021F79B8
	mov r6, #0
_021F796C:
	ldr r0, [r4, #0x38]
	mov r1, r6
	bl FUN_021EEFFC
	ldr r2, [r0, #0x10]
	cmp r2, #0x64
	bge _021F799C
	ldr ip, [r0]
	ldr r3, [r0, #0x14]
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r3, ip, r3
	bl FUN_021F1B60
_021F799C:
	ldr r0, [r4, #0x38]
	mov r1, r6
	bl FUN_021EED84
	ldr r0, [r4, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	bne _021F796C
_021F79B8:
	mov r0, r5
	mov r1, r4
	bl FUN_021F79E0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F79C8: .word 0x0220E5D4
_021F79CC: .word 0x0220E5E4
_021F79D0: .word 0x00000213
_021F79D4: .word 0x0220E6E8
_021F79D8: .word 0x00000225
_021F79DC: .word 0x0220E6EC

	arm_func_start FUN_021F79E0
FUN_021F79E0: ; 0x021F79E0
	stmdb sp!, {r4, lr}
	mov r4, r1
	ldr r0, [r4, #8]
	mov r1, #2
	bl FUN_021EFD80
	ldr r0, [r4, #8]
	bl FUN_021EFD9C
	ldr r0, [r4, #0x18]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021F7A34
	bl FUN_021EF074
	mov r0, #0
	str r0, [r4, #0x38]
_021F7A34:
	mov r0, r4
	bl FUN_021DD82C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F7A40
FUN_021F7A40: ; 0x021F7A40
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #0x64
	mov r4, #0
	bne _021F7A70
	ldr r0, _021F7AD8 ; =0x0220E710
	ldr r1, _021F7ADC ; =0x0220E5E4
	ldr r3, _021F7AE0 ; =0x000001D9
	mov r2, r4
	bl __msl_assertion_failed
_021F7A70:
	ldr r0, [r5]
	cmp r0, #0x69
	beq _021F7AAC
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F7A9C
	mov r0, r6
	mov r1, r5
	bl FUN_021F8088
	mov r4, r0
	b _021F7AAC
_021F7A9C:
	mov r0, r6
	mov r1, r5
	bl FUN_021F7E3C
	mov r4, r0
_021F7AAC:
	cmp r4, #0
	bne _021F7AD0
	ldr r0, [r5]
	cmp r0, #0x69
	bne _021F7AD0
	mov r0, r6
	mov r1, r5
	bl FUN_021F7AE4
	mov r4, r0
_021F7AD0:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F7AD8: .word 0x0220E710
_021F7ADC: .word 0x0220E5E4
_021F7AE0: .word 0x000001D9

	arm_func_start FUN_021F7AE4
FUN_021F7AE4: ; 0x021F7AE4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x24
	mov r6, r1
	ldr r1, [r6, #0x30]
	mov r7, r0
	cmp r1, #0
	ldr r5, [r7]
	beq _021F7B4C
	mov r2, #1
	str r2, [sp]
	ldr r1, _021F7D60 ; =0x0220E738
	add r3, sp, #0xc
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	add r2, r6, #0x28
	bl FUN_021F28AC
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _021F7B38
	cmp r0, #0
	beq _021F7B4C
_021F7B38:
	mov r0, #0x6a
	str r0, [r6]
	add sp, sp, #0x24
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7B4C:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	bne _021F7B84
	mov r0, r7
	mov r1, r6
	bl FUN_021F7D6C
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6]
	cmp r0, #0x6a
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021F7B84:
	add r1, sp, #0xc
	ldr r0, _021F7D60 ; =0x0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	add r3, sp, #8
	mov r0, r7
	add r2, r6, #0x18
	bl FUN_021F2A2C
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r6]
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _021F7BDC
	mov r0, #0
	bl FUN_021EFAC8
	add r0, r0, #0x12c
	str r0, [r6, #0x10]
_021F7BDC:
	add r4, sp, #0x20
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r0, r7
	add r1, r6, #0x18
	str r4, [sp]
	bl FUN_021F2770
	cmp r0, #0
	addne sp, sp, #0x24
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _021F7D38
	ldr r2, [sp, #0x1c]
	cmp r2, #0x66
	bgt _021F7C30
	cmp r2, #0x66
	bge _021F7CF8
	cmp r2, #1
	beq _021F7C64
	b _021F7D2C
_021F7C30:
	sub r0, r2, #0xc8
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _021F7D2C
_021F7C40: ; jump table
	b _021F7D10 ; case 0
	b _021F7D10 ; case 1
	b _021F7D10 ; case 2
	b _021F7D10 ; case 3
	b _021F7D10 ; case 4
	b _021F7D10 ; case 5
	b _021F7D10 ; case 6
	b _021F7D10 ; case 7
	b _021F7D10 ; case 8
_021F7C64:
	ldr r1, [r5, #0x1bc]
	ldr r0, [r5, #0x1c0]
	cmp r1, #0
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	beq _021F7D2C
	mov r0, #0xc
	bl FUN_021DD860
	movs r4, r0
	bne _021F7CA4
	ldr r1, _021F7D64 ; =0x0220E73C
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x24
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7CA4:
	ldr r0, [r6, #0xc]
	str r0, [r4]
	ldr r0, [sp, #0x18]
	bl FUN_021F0208
	str r0, [r4, #8]
	mov r0, #0
	bl FUN_021EFAC8
	str r0, [r4, #4]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, r7
	mov r3, r4
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021F7D2C
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7CF8:
	ldr r1, [r6, #0xc]
	ldr r3, _021F7D68 ; =0x0220E74C
	mov r0, r7
	mov r2, #0x67
	bl FUN_021F1A64
	b _021F7D2C
_021F7D10:
	str r1, [sp]
	ldr r1, [sp, #0x20]
	mov r0, r7
	str r1, [sp, #4]
	ldr r3, [r6, #0x18]
	mov r1, r6
	bl FUN_021FACC0
_021F7D2C:
	mov r0, r7
	add r1, r6, #0x18
	bl FUN_021F2704
_021F7D38:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021F7BDC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r6]
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F7D60: .word 0x0220E738
_021F7D64: .word 0x0220E73C
_021F7D68: .word 0x0220E74C

	arm_func_start FUN_021F7D6C
FUN_021F7D6C: ; 0x021F7D6C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r1
	ldr r1, [r8, #0x30]
	mov sb, r0
	cmp r1, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	beq _021F7E2C
	ldr r5, _021F7E38 ; =0x0220E738
	add r4, sp, #8
	mov r7, #0
_021F7DAC:
	ldr r0, [r8, #0x38]
	mov r1, r7
	bl FUN_021EEFFC
	mov r6, r0
	str r7, [sp]
	str r5, [sp, #4]
	ldr r1, [r8, #8]
	mov r0, sb
	mov r2, r6
	mov r3, r4
	bl FUN_021F28AC
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _021F7DEC
	cmp r0, #0
	beq _021F7E00
_021F7DEC:
	mov r0, #0x6a
	str r0, [r8]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021F7E00:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #8]
	cmp r1, r0
	bne _021F7E2C
	ldr r0, [r8, #0x38]
	mov r1, r7
	bl FUN_021EED84
	ldr r0, [r8, #0x38]
	bl FUN_021EF06C
	cmp r0, #0
	bne _021F7DAC
_021F7E2C:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021F7E38: .word 0x0220E738

	arm_func_start FUN_021F7E3C
FUN_021F7E3C: ; 0x021F7E3C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x184
	mov r5, r1
	ldr r1, [r5]
	mov r6, r0
	cmp r1, #0x68
	ldr r4, [r6]
	beq _021F7E70
	ldr r0, _021F8058 ; =0x0220E750
	ldr r1, _021F805C ; =0x0220E5E4
	mov r2, #0
	mov r3, #0xc1
	bl __msl_assertion_failed
_021F7E70:
	add r1, sp, #0xc
	ldr r0, _021F8060 ; =0x0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	add r3, sp, #8
	mov r0, r6
	add r2, r5, #0x18
	bl FUN_021F2A2C
	cmp r0, #0
	addne sp, sp, #0x184
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x6a
	strne r0, [r5]
	addne sp, sp, #0x184
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x18]
	ldr r1, _021F8064 ; =0x0220E770
	bl strstr
	cmp r0, #0
	beq _021F804C
	mov r1, #0
	strb r1, [r0]
	ldr r7, [r5, #0x18]
	ldr r1, _021F8068 ; =0x0220E778
	mov r0, r7
	mov r2, #6
	bl strncmp
	cmp r0, #0
	bne _021F8030
	ldr r1, _021F806C ; =0x0220E780
	add r2, sp, #0x10
	mov r0, r7
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0x10
	bl atol
	mov r7, r0
	ldr r0, [r5, #0x18]
	ldr r1, _021F8070 ; =0x0220E788
	add r2, sp, #0x20
	mov r3, #0x1f
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x18]
	ldr r1, _021F8074 ; =0x0220E790
	add r2, sp, #0x3f
	mov r3, #0x21
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0x6a
	streq r0, [r5]
	addeq sp, sp, #0x184
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r7, [sp]
	ldr r2, _021F8078 ; =0x00000177
	ldr r3, [r4, #0x1a0]
	ldr r1, _021F807C ; =0x0220E798
	add r0, sp, #0x81
	add r2, r4, r2
	bl sprintf
	add r0, sp, #0x81
	bl strlen
	mov r1, r0
	add r0, sp, #0x81
	add r2, sp, #0x60
	bl FUN_021EF794
	add r0, sp, #0x3f
	add r1, sp, #0x60
	bl strcmp
	cmp r0, #0
	beq _021F8000
	ldr r2, _021F8080 ; =0x0220E7A0
	mov r0, r6
	add r1, r5, #0x28
	bl FUN_021F2F9C
	ldr r2, _021F8064 ; =0x0220E770
	mov r0, r6
	add r1, r5, #0x28
	bl FUN_021F2F9C
	mov r0, #0x6a
	str r0, [r5]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8000:
	ldr r2, _021F8084 ; =0x0220E7A8
	mov r0, r6
	add r1, r5, #0x28
	bl FUN_021F2F9C
	ldr r2, _021F8064 ; =0x0220E770
	mov r0, r6
	add r1, r5, #0x28
	bl FUN_021F2F9C
	mov r0, #0x69
	str r0, [r5]
	str r7, [r5, #0xc]
	b _021F8044
_021F8030:
	mov r0, #0x6a
	str r0, [r5]
	add sp, sp, #0x184
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8044:
	mov r0, #0
	str r0, [r5, #0x20]
_021F804C:
	mov r0, #0
	add sp, sp, #0x184
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F8058: .word 0x0220E750
_021F805C: .word 0x0220E5E4
_021F8060: .word 0x0220E738
_021F8064: .word 0x0220E770
_021F8068: .word 0x0220E778
_021F806C: .word 0x0220E780
_021F8070: .word 0x0220E788
_021F8074: .word 0x0220E790
_021F8078: .word 0x00000177
_021F807C: .word 0x0220E798
_021F8080: .word 0x0220E7A0
_021F8084: .word 0x0220E7A8

	arm_func_start FUN_021F8088
FUN_021F8088: ; 0x021F8088
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r1
	ldr r2, [r6]
	mov r7, r0
	sub r2, r2, #0x65
	ldr r5, [r7]
	cmp r2, #3
	addls pc, pc, r2, lsl #2
	b _021F834C
_021F80B0: ; jump table
	b _021F8360 ; case 0
	b _021F80C0 ; case 1
	b _021F80D4 ; case 2
	b _021F8258 ; case 3
_021F80C0:
	bl FUN_021F7478
	cmp r0, #0
	beq _021F8360
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F80D4:
	ldr r1, [r6, #8]
	add r2, sp, #8
	bl FUN_021FB0FC
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #8]
	cmp r0, #4
	bne _021F8110
	ldr r1, _021F83B8 ; =0x0220E648
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8110:
	cmp r0, #3
	bne _021F8360
	ldr r1, [r6, #0xc]
	add r2, sp, #0x14
	mov r0, r7
	mov r4, #1
	bl FUN_021F85E8
	cmp r0, #0
	bne _021F814C
	ldr r1, _021F83B8 ; =0x0220E648
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F814C:
	ldr r2, _021F83BC ; =0x0220E778
	mov r0, r7
	add r1, r6, #0x28
	bl FUN_021F2F9C
	ldr r2, _021F83C0 ; =0x0220E780
	mov r0, r7
	add r1, r6, #0x28
	bl FUN_021F2F9C
	ldr r2, [r5, #0x1a0]
	mov r0, r7
	add r1, r6, #0x28
	bl FUN_021F2F64
	ldr r2, _021F83C4 ; =0x0220E788
	mov r0, r7
	add r1, r6, #0x28
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	add r2, r5, #0x110
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F83C8 ; =0x0220E790
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, [sp, #0x14]
	ldr r2, [r2, #0x18]
	bl FUN_021F2F9C
	mov r0, r7
	add r1, r6, #0x28
	ldr r2, _021F83CC ; =0x0220E770
	bl FUN_021F2F9C
	ldr r3, [r5, #0x434]
	cmp r3, #0
	beq _021F8210
	ldr r2, [r6, #0xc]
	mov r0, #0
_021F81E4:
	ldr r1, [r3, #0xc]
	cmp r1, r2
	bne _021F8204
	cmp r3, r6
	beq _021F8204
	ldr r1, [r3]
	cmp r1, #0x67
	movle r4, r0
_021F8204:
	ldr r3, [r3, #0x3c]
	cmp r3, #0
	bne _021F81E4
_021F8210:
	cmp r4, #0
	beq _021F824C
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x18]
	bl FUN_021DD82C
	ldr r0, [sp, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r0, [sp, #0x14]
	bl FUN_021F83EC
	cmp r0, #0
	beq _021F824C
	ldr r1, [sp, #0x14]
	mov r0, r7
	bl FUN_021F85A0
_021F824C:
	mov r0, #0x68
	str r0, [r6]
	b _021F8360
_021F8258:
	add r2, sp, #0x10
	str r2, [sp]
	ldr r1, _021F83D0 ; =0x0220E738
	add r3, sp, #0xc
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	add r2, r6, #0x18
	bl FUN_021F2A2C
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r6, #0x18]
	ldr r1, _021F83CC ; =0x0220E770
	bl strstr
	cmp r0, #0
	beq _021F8360
	mov r1, #0
	strb r1, [r0]
	ldr r4, [r6, #0x18]
	ldr r1, _021F83D4 ; =0x0220E7A0
	mov r0, r4
	mov r2, #7
	bl strncmp
	cmp r0, #0
	bne _021F8308
	ldr r0, [r6, #0x14]
	add r0, r0, #1
	str r0, [r6, #0x14]
	ldr r0, [r6, #0x14]
	cmp r0, #1
	ble _021F82EC
	ldr r1, _021F83D8 ; =0x0220E7B0
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F82EC:
	mov r0, r7
	mov r1, r6
	bl FUN_021F7610
	cmp r0, #0
	beq _021F8338
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8308:
	ldr r1, _021F83DC ; =0x0220E7A8
	mov r0, r4
	mov r2, #6
	bl strncmp
	cmp r0, #0
	beq _021F8338
	ldr r1, _021F83E0 ; =0x0220E7D4
	mov r0, r7
	bl FUN_021FAEEC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F8338:
	mov r0, #0x69
	str r0, [r6]
	mov r0, #0
	str r0, [r6, #0x20]
	b _021F8360
_021F834C:
	ldr r0, _021F83E4 ; =0x0220E6E8
	ldr r1, _021F83E8 ; =0x0220E5E4
	mov r2, #0
	mov r3, #0x9f
	bl __msl_assertion_failed
_021F8360:
	ldr r0, [r6, #0x30]
	cmp r0, #0
	ble _021F83AC
	mov r1, #1
	ldr r0, _021F83D0 ; =0x0220E738
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [r6, #8]
	add r3, sp, #0x10
	mov r0, r7
	add r2, r6, #0x28
	bl FUN_021F28AC
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _021F83A4
	cmp r0, #0
	beq _021F83AC
_021F83A4:
	mov r0, #0x6a
	str r0, [r6]
_021F83AC:
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021F83B8: .word 0x0220E648
_021F83BC: .word 0x0220E778
_021F83C0: .word 0x0220E780
_021F83C4: .word 0x0220E788
_021F83C8: .word 0x0220E790
_021F83CC: .word 0x0220E770
_021F83D0: .word 0x0220E738
_021F83D4: .word 0x0220E7A0
_021F83D8: .word 0x0220E7B0
_021F83DC: .word 0x0220E7A8
_021F83E0: .word 0x0220E7D4
_021F83E4: .word 0x0220E6E8
_021F83E8: .word 0x0220E5E4

	arm_func_start FUN_021F83EC
FUN_021F83EC: ; 0x021F83EC
	cmp r0, #0
	beq _021F8428
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021F8428
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021F8428
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _021F8428
	ldr r0, [r0, #0x10]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
_021F8428:
	mov r0, #0
	bx lr

	arm_func_start FUN_021F8430
FUN_021F8430: ; 0x021F8430
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r1, [sp]
	mov r3, #0
	ldr r1, _021F845C ; =FUN_021F8460
	add r2, sp, #0
	str r3, [sp, #4]
	bl FUN_021F848C
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F845C: .word FUN_021F8460

	arm_func_start FUN_021F8460
FUN_021F8460: ; 0x021F8460
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021F8484
	ldr r3, [r2]
	ldr r0, [r0]
	cmp r3, r0
	streq r1, [r2, #4]
	moveq r0, #0
	bxeq lr
_021F8484:
	mov r0, #1
	bx lr

	arm_func_start FUN_021F848C
FUN_021F848C: ; 0x021F848C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r3, [r0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp]
	ldr r0, [r3, #0x428]
	ldr r1, _021F84C8 ; =FUN_021F84CC
	add r2, sp, #0
	bl FUN_021EF264
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_021F84C8: .word FUN_021F84CC

	arm_func_start FUN_021F84CC
FUN_021F84CC: ; 0x021F84CC
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov ip, r0
	ldr r0, [r1]
	ldr r2, [r1, #8]
	ldr r3, [r1, #4]
	mov r1, ip
	blx r3
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F84F4
FUN_021F84F4: ; 0x021F84F4
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	str r1, [sp]
	mov ip, #0
	str r2, [sp, #4]
	mov r4, r3
	ldr r1, _021F853C ; =FUN_021F8540
	add r2, sp, #0
	str ip, [sp, #0xc]
	str r4, [sp, #8]
	bl FUN_021F848C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F853C: .word FUN_021F8540

	arm_func_start FUN_021F8540
FUN_021F8540: ; 0x021F8540
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldr r4, [r6, #0xc]
	mov r5, r2
	cmp r4, #0
	beq _021F8598
	ldr r0, [r5]
	ldr r1, [r4]
	bl strcmp
	cmp r0, #0
	bne _021F8598
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl strcmp
	cmp r0, #0
	bne _021F8598
	ldr r1, [r5, #8]
	mov r0, #1
	str r6, [r1]
	str r0, [r5, #0xc]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F8598:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021F85A0
FUN_021F85A0: ; 0x021F85A0
	ldr r0, [r0]
	ldr ip, _021F85B0 ; =FUN_021EF3F4
	ldr r0, [r0, #0x428]
	bx ip
	.align 2, 0
_021F85B0: .word FUN_021EF3F4

	arm_func_start FUN_021F85B4
FUN_021F85B4: ; 0x021F85B4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r2, sp, #0
	ldr r4, [r0]
	bl FUN_021F85E8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x428]
	ldr r1, [sp]
	bl FUN_021EF3F4
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F85E8
FUN_021F85E8: ; 0x021F85E8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x20
	ldr r0, [r0]
	mov r4, r2
	str r1, [sp]
	ldr r0, [r0, #0x428]
	add r1, sp, #0
	bl FUN_021EF358
	cmp r4, #0
	strne r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F8624
FUN_021F8624: ; 0x021F8624
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r2, [r5]
	ldr r0, _021F8700 ; =0x00000428
	mov r4, r1
	cmp r4, #0
	add r6, r2, r0
	bgt _021F865C
	ldr r0, _021F8704 ; =0x0220E7F4
	ldr r1, _021F8708 ; =0x0220E7FC
	ldr r3, _021F870C ; =0x000002B5
	mov r2, #0
	bl __msl_assertion_failed
_021F865C:
	cmp r4, #0
	addle sp, sp, #0x20
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl FUN_021F85E8
	cmp r0, #0
	ldrne r0, [sp]
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	str r4, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r6]
	bl FUN_021EF494
	ldr r0, [r6, #4]
	add r2, sp, #0
	add r3, r0, #1
	mov r0, r5
	mov r1, r4
	str r3, [r6, #4]
	bl FUN_021F85E8
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F8700: .word 0x00000428
_021F8704: .word 0x0220E7F4
_021F8708: .word 0x0220E7FC
_021F870C: .word 0x000002B5

	arm_func_start FUN_021F8710
FUN_021F8710: ; 0x021F8710
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r2
	mov r4, r1
	mov r1, r6
	mov r2, #1
	mov r5, r0
	bl FUN_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021F8860 ; =0x0220E80C
	mov r0, r6
	mov r2, #5
	bl strncmp
	cmp r0, #0
	beq _021F8784
	ldr r2, _021F8864 ; =0x0220E814
	mov r0, r5
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F8784:
	ldr r1, _021F8868 ; =0x0220E844
	add r2, sp, #0x10
	mov r0, r6
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F87CC
	ldr r2, _021F8864 ; =0x0220E814
	mov r0, r5
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x20
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021F87CC:
	add r0, sp, #0x10
	bl atol
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	mov r6, r0
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	cmp r2, #0
	beq _021F8848
	mov r0, #8
	bl FUN_021DD860
	movs r3, r0
	bne _021F8818
	ldr r1, _021F886C ; =0x0220E850
	mov r0, r5
	bl FUN_021FAEEC
	add sp, sp, #0x20
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021F8818:
	str r6, [r3, #4]
	mov r0, #0
	str r0, [r3]
	str r4, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r5
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
_021F8848:
	mov r0, r5
	mov r1, r4
	bl FUN_021F6C84
	mov r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021F8860: .word 0x0220E80C
_021F8864: .word 0x0220E814
_021F8868: .word 0x0220E844
_021F886C: .word 0x0220E850

	arm_func_start FUN_021F8870
FUN_021F8870: ; 0x021F8870
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0]
	mov r1, #0
	str r1, [r4, #0x430]
	str r1, [r4, #0x42c]
	ldr r0, _021F88C0 ; =FUN_021F88CC
	ldr r2, _021F88C4 ; =FUN_021F8958
	str r0, [sp]
	ldr r3, _021F88C8 ; =FUN_021F8948
	mov r0, #0x1c
	mov r1, #4
	bl FUN_021EF76C
	str r0, [r4, #0x428]
	ldr r0, [r4, #0x428]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021F88C0: .word FUN_021F88CC
_021F88C4: .word FUN_021F8958
_021F88C8: .word FUN_021F8948

	arm_func_start FUN_021F88CC
FUN_021F88CC: ; 0x021F88CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F891C
	ldr r0, [r0, #8]
	bl FUN_021DD82C
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0xc]
	bl FUN_021DD82C
	ldr r0, [r4, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #8]
_021F891C:
	mov r0, r4
	bl FUN_021F4CBC
	ldr r0, [r4, #0x10]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r4, #0x18]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021F8948
FUN_021F8948: ; 0x021F8948
	ldr r2, [r0]
	ldr r0, [r1]
	sub r0, r2, r0
	bx lr

	arm_func_start FUN_021F8958
FUN_021F8958: ; 0x021F8958
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0]
	bl _s32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021F8974
FUN_021F8974: ; 0x021F8974
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	ldr sb, [sl]
	mov r6, #0
	ldr r0, [sb, #0x210]
	cmp r0, #0
	ble _021F8AB4
	mov r0, r0, lsl #2
	bl FUN_021DD860
	movs r8, r0
	bne _021F89BC
	ldr r1, _021F8AC0 ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F89BC:
	ldr r7, [sb, #0x424]
	cmp r7, #0
	beq _021F8A38
	ldr fp, _021F8AC4 ; =0x0220E8B0
	mov r5, r6
	mov r4, #1
_021F89D4:
	ldr r0, [r7]
	cmp r0, #3
	bne _021F8A2C
	ldr r0, [r7, #0x14]
	cmp r0, #5
	beq _021F8A2C
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x13c]
	cmp r0, #0
	bne _021F8A2C
	ldr r0, [sb, #0x210]
	cmp r6, r0
	blt _021F8A1C
	ldr r1, _021F8AC8 ; =0x0220E8D0
	ldr r3, _021F8ACC ; =0x00000563
	mov r0, fp
	mov r2, r5
	bl __msl_assertion_failed
_021F8A1C:
	str r7, [r8, r6, lsl #2]
	ldr r0, [r7, #4]
	add r6, r6, #1
	str r4, [r0, #0x13c]
_021F8A2C:
	ldr r7, [r7, #0x20]
	cmp r7, #0
	bne _021F89D4
_021F8A38:
	cmp r6, #0
	mov r4, #0
	ble _021F8A68
_021F8A44:
	ldr r1, [r8, r4, lsl #2]
	mov r0, sl
	bl FUN_021F8AD0
	cmp r0, #0
	ldrne r1, [r8, r4, lsl #2]
	add r4, r4, #1
	strne r0, [r1, #0x1c]
	cmp r4, r6
	blt _021F8A44
_021F8A68:
	cmp r6, #0
	mov r4, #0
	ble _021F8AAC
	mov r5, r4
_021F8A78:
	ldr r0, [r8, r4, lsl #2]
	mov r1, r4, lsl #2
	ldr r0, [r0, #4]
	str r5, [r0, #0x13c]
	ldr r0, [r0, #0x140]
	cmp r0, #0
	beq _021F8AA0
	ldr r1, [r8, r1]
	mov r0, sl
	bl FUN_021F6C84
_021F8AA0:
	add r4, r4, #1
	cmp r4, r6
	blt _021F8A78
_021F8AAC:
	mov r0, r8
	bl FUN_021DD82C
_021F8AB4:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021F8AC0: .word 0x0220E8A0
_021F8AC4: .word 0x0220E8B0
_021F8AC8: .word 0x0220E8D0
_021F8ACC: .word 0x00000563

	arm_func_start FUN_021F8AD0
FUN_021F8AD0: ; 0x021F8AD0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021F99B4 ; =0x000004EC
	sub sp, sp, ip
	mov sl, r0
	ldr r0, [sl]
	str r1, [sp, #0x1c]
	ldr r1, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r1, #0
	movne r4, #1
	ldr sb, [r0, #4]
	moveq r4, #0
_021F8B04:
	mov r1, #1
	ldr r0, _021F99B8 ; =0x0220E8DC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sb, #4]
	add r3, sp, #0xa0
	mov r0, sl
	add r2, sb, #0x18
	bl FUN_021F28AC
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x14]
	cmp r0, #1
	bne _021F9174
	ldr r1, [sb, #4]
	add r2, sp, #0x8c
	mov r0, sl
	bl FUN_021FB0FC
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x8c]
	cmp r0, #4
	bne _021F8BA4
	ldr r1, _021F99BC ; =0x00000D01
	ldr r2, _021F99C0 ; =0x0220E8E0
	mov r0, sl
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #4
	mov r2, #0
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F8BA4:
	cmp r0, #3
	bne _021FA704
	ldr r0, [sb]
	cmp r0, #1
	bne _021F8D6C
	ldr r2, _021F99C4 ; =0x0220E90C
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99C8 ; =0x0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl FUN_021F2F64
	ldr r2, _021F99CC ; =0x0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldr r2, _021F99D0 ; =0x0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldrsb r0, [sb, #0x28]
	cmp r0, #0
	beq _021F8C60
	ldr r2, _021F99D4 ; =0x0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl FUN_021F2F9C
_021F8C60:
	ldrsb r0, [sb, #0x47]
	cmp r0, #0
	beq _021F8C8C
	ldr r2, _021F99D8 ; =0x0220E948
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl FUN_021F2F9C
_021F8C8C:
	ldrsb r0, [sb, #0x5c]
	cmp r0, #0
	beq _021F8CB8
	ldr r2, _021F99DC ; =0x0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl FUN_021F2F9C
_021F8CB8:
	ldrsb r0, [sb, #0x8f]
	cmp r0, #0
	beq _021F8CE4
	ldr r2, _021F99E0 ; =0x0220E960
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x8f
	bl FUN_021F2F9C
_021F8CE4:
	ldrsb r0, [sb, #0xae]
	cmp r0, #0
	beq _021F8D10
	ldr r2, _021F99E4 ; =0x0220E96C
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xae
	bl FUN_021F2F9C
_021F8D10:
	ldr r0, [sb, #0x130]
	cmp r0, #0
	beq _021F8D3C
	ldr r2, _021F99E8 ; =0x0220E978
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sb, #0x130]
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F64
_021F8D3C:
	ldr r0, [sb, #0x134]
	cmp r0, #0
	ble _021F9134
	ldr r2, _021F99EC ; =0x0220E984
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sb, #0x134]
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F64
	b _021F9134
_021F8D6C:
	cmp r0, #2
	bne _021F8DA8
	ldr r2, _021F99F0 ; =0x0220E98C
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99DC ; =0x0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl FUN_021F2F9C
	b _021F9134
_021F8DA8:
	cmp r0, #3
	bne _021F8E28
	ldr r2, _021F99F4 ; =0x0220E994
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99DC ; =0x0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl FUN_021F2F9C
	ldr r2, _021F99F8 ; =0x0220E99C
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl FUN_021F2F9C
	ldr r2, _021F99D0 ; =0x0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl FUN_021F2F64
	b _021F9134
_021F8E28:
	cmp r0, #4
	bne _021F8EAC
	ldr r2, _021F99FC ; =0x0220E9A4
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99C8 ; =0x0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl FUN_021F2F64
	ldr r2, _021F99CC ; =0x0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldr r2, _021F9A00 ; =0x0220E9B0
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sb, #0x138]
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F64
	b _021F9134
_021F8EAC:
	cmp r0, #5
	bne _021F8F28
	ldr r2, _021F9A04 ; =0x0220E9BC
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99D4 ; =0x0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	ldr r2, _021F99DC ; =0x0220E958
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	ldr r2, _021F99F8 ; =0x0220E99C
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl FUN_021F2F9C
	b _021F9134
_021F8F28:
	cmp r0, #6
	bne _021F9038
	ldr r2, _021F9A08 ; =0x0220E9C4
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99D4 ; =0x0220E940
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x28
	bl FUN_021F2F9C
	ldr r2, _021F99DC ; =0x0220E958
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x5c
	bl FUN_021F2F9C
	ldr r2, _021F99F8 ; =0x0220E99C
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xcd
	bl FUN_021F2F9C
	ldr r2, _021F9A0C ; =0x0220E9D0
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x46c]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldr r2, _021F99D0 ; =0x0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldr r2, _021F99D8 ; =0x0220E948
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl FUN_021F2F9C
	ldrsb r0, [sb, #0xec]
	cmp r0, #0
	beq _021F9134
	ldr r2, _021F9A10 ; =0x0220E9DC
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0xec
	bl FUN_021F2F9C
	b _021F9134
_021F9038:
	cmp r0, #7
	bne _021F90C0
	ldr r2, _021F9A14 ; =0x0220E9E4
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F99C8 ; =0x0220E918
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r0, [sp, #0x24]
	add r1, sb, #0x18
	ldr r2, [r0, #0x198]
	mov r0, sl
	bl FUN_021F2F64
	ldr r2, _021F99CC ; =0x0220E924
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x1a0]
	add r1, sb, #0x18
	bl FUN_021F2F64
	ldr r2, _021F99D0 ; =0x0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl FUN_021F2F64
	b _021F9134
_021F90C0:
	cmp r0, #8
	bne _021F9120
	ldr r2, _021F9A18 ; =0x0220E9F0
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F9A1C ; =0x0220EA00
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	mov r0, sl
	add r1, sb, #0x18
	add r2, sb, #0x47
	bl FUN_021F2F9C
	ldr r2, _021F99D0 ; =0x0220E930
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, [sp, #0x24]
	mov r0, sl
	ldr r2, [r2, #0x470]
	add r1, sb, #0x18
	bl FUN_021F2F64
	b _021F9134
_021F9120:
	ldr r0, _021F9A20 ; =0x0220EA10
	ldr r1, _021F9A24 ; =0x0220E8D0
	ldr r3, _021F9A28 ; =0x00000275
	mov r2, #0
	bl __msl_assertion_failed
_021F9134:
	ldr r2, _021F9A2C ; =0x0220EA14
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F9A30 ; =0x02210EA0
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r2, _021F9A34 ; =0x0220EA20
	mov r0, sl
	add r1, sb, #0x18
	bl FUN_021F2F9C
	ldr r0, [sp, #0x1c]
	mov r1, #4
	str r1, [r0, #0x14]
	b _021FA704
_021F9174:
	cmp r0, #4
	bne _021FA704
	add r1, sp, #0xa0
	ldr r0, _021F99B8 ; =0x0220E8DC
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sb, #4]
	add r3, sp, #0x9c
	mov r0, sl
	add r2, sb, #8
	bl FUN_021F2A2C
	cmp r0, #0
	beq _021F91E8
	cmp r0, #3
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F99BC ; =0x00000D01
	ldr r2, _021F9A38 ; =0x0220EA28
	mov r0, sl
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #0
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F91E8:
	ldr r0, [sb, #8]
	ldr r1, _021F9A34 ; =0x0220EA20
	bl strstr
	cmp r0, #0
	beq _021FA704
	mov r0, #0
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x1c]
	mov r1, #5
	str r1, [r0, #0x14]
	ldr r1, [sb, #8]
	mov r0, sl
	mov r2, #1
	bl FUN_021FB2F8
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	movne r0, #1
	strne r0, [sb, #0x140]
	addne sp, sp, ip
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sb]
	cmp r0, #1
	bne _021F9600
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0xdc]
	str r0, [sp, #0xe0]
	str r0, [sp, #0xe8]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0x33
	str r0, [sp, #0x50]
	mov r0, #0x15
	str r0, [sp, #0x4c]
	mov r0, #0x600
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	ldr r1, _021F9A3C ; =0x00000601
	str r0, [sp, #0x40]
	mov r0, #0xac
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0xe4]
	add r5, sp, #0xec
	add r6, sp, #0x2ec
	mov r4, #0x1f
	str r0, [sp, #0x48]
_021F92A8:
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A40 ; =0x0220EA54
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9344
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A44 ; =0x0220EA5C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9338
	ldr r1, _021F9A20 ; =0x0220EA10
	mov r0, r6
	bl strcmp
	cmp r0, #0
	ldrne r0, [sp, #0x38]
	strne r0, [sp, #0xe4]
_021F9338:
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x20]
	b _021F9530
_021F9344:
	ldr r1, _021F9A48 ; =0x0220EA64
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9500
	ldr r1, [sp, #0xe0]
	ldr r0, [sp, #0xe8]
	add r2, r1, #1
	mov r1, #0xac
	mul r1, r2, r1
	str r2, [sp, #0xe0]
	bl FUN_021DD844
	movs r8, r0
	str r8, [sp, #0xe8]
	bne _021F939C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F939C:
	ldr r1, [sp, #0xe0]
	mov r0, #0xac
	sub r1, r1, #1
	mul fp, r1, r0
	add r7, r8, fp
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	mov r0, r7
	bl Call_FillMemWithValue
	mov r0, r6
	bl atol
	str r0, [r8, fp]
	ldr r8, [sp, #0x48]
_021F93D0:
	ldr fp, [sp, #0x90]
	mov r0, sl
	str r6, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =0x0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9424
	add r0, r7, #4
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021F94F4
_021F9424:
	ldr r1, _021F9A54 ; =0x0220EA70
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F944C
	ldr r2, [sp, #0x4c]
	add r0, r7, #0x23
	mov r1, r6
	bl FUN_021FB3DC
	b _021F94F4
_021F944C:
	ldr r1, _021F9A58 ; =0x0220EA7C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F9474
	add r0, r7, #0x38
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021F94F4
_021F9474:
	ldr r1, _021F9A5C ; =0x0220EA88
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F949C
	add r0, r7, #0x57
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021F94F4
_021F949C:
	ldr r1, _021F9A60 ; =0x0220EA94
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F94C4
	ldr r2, [sp, #0x50]
	add r0, r7, #0x76
	mov r1, r6
	bl FUN_021FB3DC
	b _021F94F4
_021F94C4:
	ldr r1, _021F9A48 ; =0x0220EA64
	mov r0, r5
	bl strcmp
	cmp r0, #0
	beq _021F94EC
	ldr r1, _021F9A40 ; =0x0220EA54
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021F94F4
_021F94EC:
	ldr r8, [sp, #0x3c]
	str fp, [sp, #0x90]
_021F94F4:
	cmp r8, #0
	beq _021F93D0
	b _021F9530
_021F9500:
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9530:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021F92A8
	ldr r0, [sp, #0x1c]
	ldr r4, [sp, #0xe4]
	ldr r3, [r0, #0xc]
	ldr r2, [r0, #0x10]
	cmp r3, #0
	str r3, [sp, #0x94]
	str r2, [sp, #0x98]
	beq _021F9568
	add r1, sp, #0xdc
	mov r0, sl
	blx r3
_021F9568:
	cmp r4, #0x600
	bne _021F95EC
	ldr r0, [sp, #0xe4]
	cmp r0, #0x600
	bne _021F95EC
	add r0, sb, #0x8f
	str r0, [sp]
	add r0, sb, #0xae
	str r0, [sp, #4]
	ldr r1, [sb, #0x130]
	mov r0, sl
	str r1, [sp, #8]
	ldr r3, [sp, #0xe0]
	ldr r2, [sb, #0x134]
	add r1, sb, #0x28
	add r2, r3, r2
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r3, [r2, #8]
	add r2, sb, #0x47
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x1c]
	ldr r4, [r3, #0xc]
	add r3, sb, #0x5c
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x1c]
	ldr r4, [r4, #0x10]
	str r4, [sp, #0x18]
	bl FUN_021FA770
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F95EC:
	ldr r0, [sp, #0xe8]
	bl FUN_021DD82C
	mov r0, #0
	str r0, [sp, #0xe8]
	b _021FA6F8
_021F9600:
	cmp r0, #2
	bne _021F972C
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xd4]
	str r0, [sp, #0xd8]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A68 ; =0x0220EAC4
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9694
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9694:
	mov r0, #0x3c
	bl FUN_021DD860
	movs r4, r0
	bne _021F96C0
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F96C0:
	mov r0, #0
	str r0, [r4]
	add r0, r4, #4
	add r1, sb, #0x5c
	mov r2, #0x33
	bl FUN_021FB3DC
	add r0, sp, #0x28c
	ldrsb r0, [r0, #0x60]
	add r1, sp, #0xd4
	mov r3, r4
	cmp r0, #0x30
	moveq r0, #0
	streq r0, [r4, #0x38]
	movne r0, #1
	strne r0, [r4, #0x38]
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F972C:
	cmp r0, #3
	bne _021F9AFC
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xcc]
	str r0, [sp, #0xd0]
	beq _021FA6F8
	mov r0, #0x44
	bl FUN_021DD860
	movs r8, r0
	bne _021F977C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F977C:
	mov r2, #0
	add r0, r8, #4
	add r1, sb, #0x5c
	str r2, [r8]
	bl strcpy
	mov r1, #0
	str r1, [r8, #0x38]
	str r1, [r8, #0x3c]
	add r0, sp, #0x2ec
	str r1, [r8, #0x40]
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A6C ; =0x0220EAC8
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9810
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9810:
	mov r0, #1
	mov r7, #0
	add r6, sp, #0xec
	add fp, sp, #0x2ec
	mov r5, #0x1f
	mov r4, #0x15
	str r0, [sp, #0x54]
_021F982C:
	str fp, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r6
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =0x0220EA68
	mov r0, r6
	bl strcmp
	cmp r0, #0
	bne _021F9904
	ldr r0, [r8, #0x3c]
	ldr r1, [r8, #0x38]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl FUN_021DD844
	cmp r0, #0
	bne _021F98A0
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F98A0:
	str r0, [r8, #0x3c]
	mov r0, r5
	bl FUN_021DD860
	cmp r0, #0
	bne _021F98D0
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F98D0:
	ldr r3, [r8, #0x3c]
	ldr r2, [r8, #0x38]
	mov r1, fp
	str r0, [r3, r2, lsl #2]
	ldr r3, [r8, #0x3c]
	ldr r0, [r8, #0x38]
	mov r2, r5
	ldr r0, [r3, r0, lsl #2]
	bl FUN_021FB3DC
	ldr r0, [r8, #0x38]
	add r0, r0, #1
	str r0, [r8, #0x38]
	b _021F9ABC
_021F9904:
	ldr r1, _021F9A54 ; =0x0220EA70
	mov r0, r6
	bl strcmp
	cmp r0, #0
	bne _021F9A74
	ldr r0, [r8, #0x38]
	cmp r0, #0
	ble _021F9ABC
	mov r1, r0, lsl #2
	ldr r0, [r8, #0x40]
	bl FUN_021DD844
	cmp r0, #0
	bne _021F9954
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9954:
	str r0, [r8, #0x40]
	mov r0, r4
	bl FUN_021DD860
	cmp r0, #0
	bne _021F9984
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9984:
	ldr r3, [r8, #0x40]
	ldr r2, [r8, #0x38]
	mov r1, fp
	sub r2, r2, #1
	str r0, [r3, r2, lsl #2]
	ldr r3, [r8, #0x40]
	ldr r0, [r8, #0x38]
	mov r2, r4
	sub r0, r0, #1
	ldr r0, [r3, r0, lsl #2]
	bl FUN_021FB3DC
	b _021F9ABC
	.align 2, 0
_021F99B4: .word 0x000004EC
_021F99B8: .word 0x0220E8DC
_021F99BC: .word 0x00000D01
_021F99C0: .word 0x0220E8E0
_021F99C4: .word 0x0220E90C
_021F99C8: .word 0x0220E918
_021F99CC: .word 0x0220E924
_021F99D0: .word 0x0220E930
_021F99D4: .word 0x0220E940
_021F99D8: .word 0x0220E948
_021F99DC: .word 0x0220E958
_021F99E0: .word 0x0220E960
_021F99E4: .word 0x0220E96C
_021F99E8: .word 0x0220E978
_021F99EC: .word 0x0220E984
_021F99F0: .word 0x0220E98C
_021F99F4: .word 0x0220E994
_021F99F8: .word 0x0220E99C
_021F99FC: .word 0x0220E9A4
_021F9A00: .word 0x0220E9B0
_021F9A04: .word 0x0220E9BC
_021F9A08: .word 0x0220E9C4
_021F9A0C: .word 0x0220E9D0
_021F9A10: .word 0x0220E9DC
_021F9A14: .word 0x0220E9E4
_021F9A18: .word 0x0220E9F0
_021F9A1C: .word 0x0220EA00
_021F9A20: .word 0x0220EA10
_021F9A24: .word 0x0220E8D0
_021F9A28: .word 0x00000275
_021F9A2C: .word 0x0220EA14
_021F9A30: .word 0x02210EA0
_021F9A34: .word 0x0220EA20
_021F9A38: .word 0x0220EA28
_021F9A3C: .word 0x00000601
_021F9A40: .word 0x0220EA54
_021F9A44: .word 0x0220EA5C
_021F9A48: .word 0x0220EA64
_021F9A4C: .word 0x0220E8A0
_021F9A50: .word 0x0220EA68
_021F9A54: .word 0x0220EA70
_021F9A58: .word 0x0220EA7C
_021F9A5C: .word 0x0220EA88
_021F9A60: .word 0x0220EA94
_021F9A64: .word 0x0220EA9C
_021F9A68: .word 0x0220EAC4
_021F9A6C: .word 0x0220EAC8
_021F9A70: .word 0x0220EACC
_021F9A74:
	ldr r1, _021F9A70 ; =0x0220EACC
	mov r0, r6
	bl strcmp
	cmp r0, #0
	ldreq r7, [sp, #0x54]
	beq _021F9ABC
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9ABC:
	cmp r7, #0
	beq _021F982C
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xcc
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, sl
	mov r3, r8
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9AFC:
	cmp r0, #4
	bne _021F9DE0
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xc4]
	str r0, [sp, #0xc8]
	beq _021FA6F8
	mov r0, #0x10
	bl FUN_021DD860
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _021F9B50
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9B50:
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r1, [sb, #0x138]
	ldr r0, [sp, #0x28]
	add r4, sp, #0xec
	str r1, [r0, #4]
	ldr r1, [sp, #0x34]
	add r5, sp, #0x2ec
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x68]
	mov r0, #0x100
	str r0, [sp, #0x64]
	mov r0, r1
	str r0, [sp, #0x58]
	mov r0, #0x128
	str r0, [sp, #0x5c]
	mov r0, r1
	mov fp, #1
	str r0, [sp, #0x60]
_021F9BA8:
	str r5, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r4
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA72C ; =0x0220EAD4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	streq fp, [sp, #0x34]
	beq _021F9D9C
	ldr r1, _021FA730 ; =0x0220EADC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D6C
	ldr r0, [sp, #0x28]
	mov r2, #0x128
	ldr r0, [r0, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [r0, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0xc]
	ldr r3, [r1, #8]
	mul r1, r3, r2
	bl FUN_021DD844
	ldr r1, [sp, #0x28]
	str r0, [r1, #0xc]
	mov r0, r1
	ldr r6, [r0, #0xc]
	cmp r6, #0
	bne _021F9C5C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9C5C:
	ldr r1, [r0, #8]
	mov r0, #0x128
	sub r1, r1, #1
	mul r7, r1, r0
	add r8, r6, r7
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	mov r0, r8
	bl Call_FillMemWithValue
	mov r0, r5
	str fp, [r8, #0x24]
	bl atol
	str r0, [r6, r7]
	ldr r7, [sp, #0x60]
_021F9C94:
	ldr r6, [sp, #0x90]
	mov r0, sl
	str r5, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r4
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA734 ; =0x0220EAE0
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9CE8
	ldr r2, [sp, #0x64]
	add r0, r8, #0x28
	mov r1, r5
	bl FUN_021FB3DC
	b _021F9D0C
_021F9CE8:
	ldr r1, _021F9A50 ; =0x0220EA68
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D0C
	ldr r2, [sp, #0x68]
	add r0, r8, #4
	mov r1, r5
	bl FUN_021FB3DC
_021F9D0C:
	ldr r1, _021FA738 ; =0x0220EAE8
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D30
	mov r0, r5
	bl atol
	str r0, [r8, #0x24]
	b _021F9D60
_021F9D30:
	ldr r1, _021FA730 ; =0x0220EADC
	mov r0, r4
	bl strcmp
	cmp r0, #0
	beq _021F9D58
	ldr r1, _021FA72C ; =0x0220EAD4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _021F9D60
_021F9D58:
	str r6, [sp, #0x90]
	mov r7, fp
_021F9D60:
	cmp r7, #0
	beq _021F9C94
	b _021F9D9C
_021F9D6C:
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9D9C:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _021F9BA8
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	add r1, sp, #0xc4
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9DE0:
	cmp r0, #5
	bne _021F9F50
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xbc]
	str r0, [sp, #0xc0]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA73C ; =0x0220EAF4
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9E74
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9E74:
	add r0, sp, #0x2ec
	bl atol
	movs r5, r0
	ldrne r0, [sp, #0x24]
	movne r4, #0
	strne r5, [r0, #0x418]
	bne _021F9EE8
	ldr r0, [sb, #8]
	ldr r1, _021FA740 ; =0x0220EAF8
	add r2, sp, #0x2ec
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021F9EDC
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9EDC:
	add r0, sp, #0x2ec
	bl atol
	mov r4, r0
_021F9EE8:
	mov r0, #8
	bl FUN_021DD860
	movs r3, r0
	bne _021F9F14
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9F14:
	str r5, [r3]
	ldr r0, [sp, #0x1c]
	str r4, [r3, #4]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0xbc
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9F50:
	cmp r0, #6
	bne _021FA0C8
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xb4]
	str r0, [sp, #0xb8]
	beq _021FA6F8
	add r0, sp, #0x2ec
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA744 ; =0x0220EB00
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021F9FE4
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9FE4:
	add r0, sp, #0x2ec
	bl atol
	movs r5, r0
	ldrne r0, [sp, #0x24]
	ldr r1, _021FA740 ; =0x0220EAF8
	strne r5, [r0, #0x418]
	ldr r0, [sb, #8]
	add r2, sp, #0x2ec
	mov r3, #0x200
	bl FUN_021FB1F0
	cmp r0, #0
	bne _021FA054
	cmp r5, #0
	bne _021FA04C
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA04C:
	mov r4, #0
	b _021FA060
_021FA054:
	add r0, sp, #0x2ec
	bl atol
	mov r4, r0
_021FA060:
	mov r0, #8
	bl FUN_021DD860
	movs r3, r0
	bne _021FA08C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA08C:
	str r5, [r3]
	ldr r0, [sp, #0x1c]
	str r4, [r3, #4]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, sp, #0xb4
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA0C8:
	cmp r0, #7
	bne _021FA474
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xac]
	str r0, [sp, #0xb0]
	beq _021FA6F8
	mov r0, #0xc
	bl FUN_021DD860
	str r0, [sp, #0x2c]
	cmp r0, #0
	bne _021FA11C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA11C:
	mov r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	add r1, sp, #0x2ec
	str r1, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA748 ; =0x0220EB04
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021FA19C
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA19C:
	mov r0, #0
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x6c]
	mov r0, #0x33
	str r0, [sp, #0x80]
	mov r0, #0x15
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x30]
	add r5, sp, #0xec
	str r0, [sp, #0x70]
	mov r0, #0xac
	str r0, [sp, #0x74]
	ldr r0, [sp, #0x30]
	add r6, sp, #0x2ec
	mov r4, #0x1f
	str r0, [sp, #0x78]
_021FA1E0:
	str r6, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA74C ; =0x0220EB0C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	ldreq r0, [sp, #0x6c]
	streq r0, [sp, #0x30]
	beq _021FA430
	ldr r1, _021FA750 ; =0x0220EB14
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA400
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x2c]
	ldr r2, [r1, #4]
	mov r1, #0xac
	add r2, r2, #1
	mul r1, r2, r1
	ldr r0, [r0, #8]
	bl FUN_021DD844
	cmp r0, #0
	bne _021FA27C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA27C:
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x74]
	str r0, [r1, #8]
	mov r0, r1
	ldr r1, [r0, #4]
	ldr r7, [r0, #8]
	mov r0, #0xac
	mul fp, r1, r0
	add r8, r7, fp
	ldr r1, [sp, #0x70]
	mov r0, r8
	bl Call_FillMemWithValue
	ldr r0, [sp, #0x2c]
	ldr r1, [r0, #4]
	mov r0, r6
	add r2, r1, #1
	ldr r1, [sp, #0x2c]
	str r2, [r1, #4]
	bl atol
	str r0, [r7, fp]
	ldr r7, [sp, #0x78]
_021FA2D0:
	ldr fp, [sp, #0x90]
	mov r0, sl
	str r6, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =0x0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA324
	add r0, r8, #4
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021FA3F4
_021FA324:
	ldr r1, _021F9A54 ; =0x0220EA70
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA34C
	ldr r2, [sp, #0x7c]
	add r0, r8, #0x23
	mov r1, r6
	bl FUN_021FB3DC
	b _021FA3F4
_021FA34C:
	ldr r1, _021FA754 ; =0x0220EB18
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA374
	add r0, r8, #0x38
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021FA3F4
_021FA374:
	ldr r1, _021FA758 ; =0x0220EB20
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA39C
	add r0, r8, #0x57
	mov r1, r6
	mov r2, r4
	bl FUN_021FB3DC
	b _021FA3F4
_021FA39C:
	ldr r1, _021F9A60 ; =0x0220EA94
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA3C4
	ldr r2, [sp, #0x80]
	add r0, r8, #0x76
	mov r1, r6
	bl FUN_021FB3DC
	b _021FA3F4
_021FA3C4:
	ldr r1, _021FA750 ; =0x0220EB14
	mov r0, r5
	bl strcmp
	cmp r0, #0
	beq _021FA3EC
	ldr r1, _021FA74C ; =0x0220EB0C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA3F4
_021FA3EC:
	ldr r7, [sp, #0x6c]
	str fp, [sp, #0x90]
_021FA3F4:
	cmp r7, #0
	beq _021FA2D0
	b _021FA430
_021FA400:
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA430:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _021FA1E0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r1, sp, #0xac
	mov r0, sl
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA474:
	cmp r0, #8
	bne _021FA6E4
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #0x10]
	cmp r1, #0
	str r1, [sp, #0xa4]
	str r0, [sp, #0xa8]
	beq _021FA6F8
	mov r0, #0xc
	mov r8, #0
	bl FUN_021DD860
	movs r7, r0
	bne _021FA4C8
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA4C8:
	mov r1, r8
	str r1, [r7]
	str r1, [r7, #4]
	add r0, sp, #0x2ec
	str r1, [r7, #8]
	str r0, [sp]
	ldr r1, [sb, #8]
	add r2, sp, #0x90
	add r3, sp, #0xec
	mov r0, sl
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FA75C ; =0x0220EB28
	add r0, sp, #0xec
	bl strcmp
	cmp r0, #0
	beq _021FA548
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA548:
	add r0, sp, #0x2ec
	bl atol
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	mov r0, r0, lsl #2
	bl FUN_021DD860
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021FA58C
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA58C:
	mov r6, r8
	mov r0, #1
	add r5, sp, #0xec
	add fp, sp, #0x2ec
	mov r4, #0x15
	str r6, [sp, #0x84]
	str r0, [sp, #0x88]
_021FA5A8:
	str fp, [sp]
	ldr r1, [sb, #8]
	mov r0, sl
	add r2, sp, #0x90
	mov r3, r5
	bl FUN_021FAF2C
	cmp r0, #0
	ldrne ip, _021F99B4 ; =0x000004EC
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021F9A50 ; =0x0220EA68
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA634
	mov r0, r4
	bl FUN_021DD860
	ldr r1, [r7, #8]
	str r0, [r1, r8, lsl #2]
	ldr r0, [r7, #8]
	ldr r0, [r0, r8, lsl #2]
	cmp r0, #0
	bne _021FA620
	ldr r1, _021F9A4C ; =0x0220E8A0
	mov r0, sl
	bl FUN_021FAEEC
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #1
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA620:
	mov r1, fp
	mov r2, r4
	bl FUN_021FB3DC
	add r8, r8, #1
	b _021FA6A4
_021FA634:
	ldr r1, _021FA760 ; =0x0220EB2C
	mov r0, r5
	bl strcmp
	cmp r0, #0
	bne _021FA674
	ldr r0, [r7, #4]
	cmp r8, r0
	beq _021FA668
	ldr r0, _021FA764 ; =0x0220EB34
	ldr r1, _021F9A24 ; =0x0220E8D0
	ldr r2, [sp, #0x84]
	ldr r3, _021FA768 ; =0x00000515
	bl __msl_assertion_failed
_021FA668:
	str r8, [r7, #4]
	ldr r6, [sp, #0x88]
	b _021FA6A4
_021FA674:
	ldr r2, _021F9A64 ; =0x0220EA9C
	mov r0, sl
	mov r1, #1
	bl FUN_021FAF00
	mov r0, sl
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	ldr ip, _021F99B4 ; =0x000004EC
	mov r0, #3
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA6A4:
	cmp r6, #0
	beq _021FA5A8
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xa4
	str r0, [sp]
	mov r0, #9
	str r0, [sp, #4]
	mov r0, sl
	mov r3, r7
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	beq _021FA6F8
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FA6E4:
	ldr r0, _021F9A20 ; =0x0220EA10
	ldr r1, _021F9A24 ; =0x0220E8D0
	ldr r3, _021FA76C ; =0x0000052A
	mov r2, #0
	bl __msl_assertion_failed
_021FA6F8:
	mov r0, #1
	str r0, [sb, #0x140]
	mov r4, #0
_021FA704:
	cmp r4, #0
	beq _021FA714
	mov r0, #0xa
	bl FUN_021F0250
_021FA714:
	cmp r4, #0
	bne _021F8B04
	mov r0, #0
	ldr ip, _021F99B4 ; =0x000004EC
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FA72C: .word 0x0220EAD4
_021FA730: .word 0x0220EADC
_021FA734: .word 0x0220EAE0
_021FA738: .word 0x0220EAE8
_021FA73C: .word 0x0220EAF4
_021FA740: .word 0x0220EAF8
_021FA744: .word 0x0220EB00
_021FA748: .word 0x0220EB04
_021FA74C: .word 0x0220EB0C
_021FA750: .word 0x0220EB14
_021FA754: .word 0x0220EB18
_021FA758: .word 0x0220EB20
_021FA75C: .word 0x0220EB28
_021FA760: .word 0x0220EB2C
_021FA764: .word 0x0220EB34
_021FA768: .word 0x00000515
_021FA76C: .word 0x0000052A

	arm_func_start FUN_021FA770
FUN_021FA770: ; 0x021FA770
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	movs r8, r1
	mov sb, r0
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	beq _021FA7A0
	ldrsb r0, [r8]
	cmp r0, #0
	bne _021FA814
_021FA7A0:
	cmp r6, #0
	beq _021FA7B4
	ldrsb r0, [r6]
	cmp r0, #0
	bne _021FA814
_021FA7B4:
	cmp r5, #0
	beq _021FA7C8
	ldrsb r0, [r5]
	cmp r0, #0
	bne _021FA814
_021FA7C8:
	cmp r4, #0
	beq _021FA7DC
	ldrsb r0, [r4]
	cmp r0, #0
	bne _021FA814
_021FA7DC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _021FA814
	cmp r7, #0
	beq _021FA7FC
	ldrsb r0, [r7]
	cmp r0, #0
	bne _021FA814
_021FA7FC:
	ldr r1, _021FA958 ; =0x0220EB54
	mov r0, sb
	bl FUN_021FAEEC
	add sp, sp, #0xc
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FA814:
	add r1, sp, #4
	mov r0, sb
	mov r2, #1
	bl FUN_021FA9F0
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r8, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x28]
	beq _021FA858
	ldr r0, [sp, #4]
	mov r1, r8
	add r0, r0, #0x28
	mov r2, #0x1f
	bl FUN_021FB3DC
_021FA858:
	cmp r7, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x47]
	beq _021FA880
	ldr r0, [sp, #4]
	mov r1, r7
	add r0, r0, #0x47
	mov r2, #0x15
	bl FUN_021FB3DC
_021FA880:
	cmp r6, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x5c]
	beq _021FA8A8
	ldr r0, [sp, #4]
	mov r1, r6
	add r0, r0, #0x5c
	mov r2, #0x33
	bl FUN_021FB3DC
_021FA8A8:
	ldr r0, [sp, #4]
	add r0, r0, #0x5c
	bl FUN_021F01C4
	cmp r5, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0x8f]
	beq _021FA8DC
	ldr r0, [sp, #4]
	mov r1, r5
	add r0, r0, #0x8f
	mov r2, #0x1f
	bl FUN_021FB3DC
_021FA8DC:
	cmp r4, #0
	ldreq r0, [sp, #4]
	moveq r1, #0
	streqb r1, [r0, #0xae]
	beq _021FA904
	ldr r0, [sp, #4]
	mov r1, r4
	add r0, r0, #0xae
	mov r2, #0x1f
	bl FUN_021FB3DC
_021FA904:
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x34]
	str r2, [r1, #0x130]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x40]
	str r2, [r1, #0x134]
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r0, sb
	bl FUN_021FA95C
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FA958: .word 0x0220EB54

	arm_func_start FUN_021FA95C
FUN_021FA95C: ; 0x021FA95C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r4, [r5]
	ldr ip, [sp, #0x20]
	ldr lr, [r4, #0x210]
	add lr, lr, #1
	str lr, [r4, #0x210]
	str r2, [sp]
	str r3, [sp, #4]
	mov r2, r1
	add r3, sp, #0xc
	mov r1, #3
	str ip, [sp, #8]
	bl FUN_021F6D8C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp, #0xc]
	mov r0, r5
	bl FUN_021FAAB4
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [sp, #0xc]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _021FA9E4
	ldr r1, [r1, #0x18]
	mov r0, r5
	bl FUN_021F0FD4
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
_021FA9E4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FA9F0
FUN_021FA9F0: ; 0x021FA9F0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r0, #0x144
	mov r5, r1
	mov r7, r2
	bl FUN_021DD860
	movs r4, r0
	bne _021FAA2C
	ldr r1, _021FAAB0 ; =0x0220E8A0
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FAA2C:
	mov r1, #0
	mov r2, #0x144
	bl Call_FillMemWithValue
	str r7, [r4]
	mvn r0, #0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0xc]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	mov r0, #0x1000
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	bl FUN_021DD860
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x13c]
	strne r0, [r4, #0x140]
	addne sp, sp, #4
	strne r4, [r5]
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _021FAAB0 ; =0x0220E8A0
	mov r0, r6
	bl FUN_021FAEEC
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FAAB0: .word 0x0220E8A0

	arm_func_start FUN_021FAAB4
FUN_021FAAB4: ; 0x021FAAB4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r4, [r5, #4]
	mov r1, #0x1000
	str r1, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r6, r0
	add r0, r1, #1
	bl FUN_021DD860
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021FAB04
	ldr r1, _021FAC9C ; =0x0220E8A0
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FAB04:
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	mvn r1, #0
	cmp r0, r1
	bne _021FAB54
	ldr r2, _021FACA0 ; =0x0220EB68
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAB54:
	mov r1, #0
	bl FUN_021F017C
	cmp r0, #0
	bne _021FAB90
	ldr r2, _021FACA4 ; =0x0220EB90
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAB90:
	ldr r0, _021FACA8 ; =0x0220E860
	bl FUN_0209A6EC
	cmp r0, #0
	bne _021FABCC
	ldr r2, _021FACAC ; =0x0220EBC4
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FABCC:
	add r1, sp, #0
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #4]
	mov r1, #2
	strb r1, [sp, #1]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021FAC0C
	ldr r0, _021FACB0 ; =0x0220EBF4
	ldr r1, _021FACB4 ; =0x0220E8D0
	mov r3, #0x59
	bl __msl_assertion_failed
_021FAC0C:
	ldr r0, _021FACB8 ; =0x0000CD74
	add r1, sp, #0
	strh r0, [sp, #2]
	ldr r0, [r4, #4]
	mov r2, #8
	bl FUN_021EFCE4
	mvn r1, #0
	cmp r0, r1
	bne _021FAC88
	ldr r0, [r4, #4]
	bl FUN_021EFB28
	mvn r1, #5
	cmp r0, r1
	beq _021FAC88
	mvn r1, #0x19
	cmp r0, r1
	beq _021FAC88
	mvn r1, #0x4b
	cmp r0, r1
	beq _021FAC88
	ldr r2, _021FACBC ; =0x0220EC14
	mov r0, r6
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #8
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAC88:
	mov r0, #1
	str r0, [r5, #0x14]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FAC9C: .word 0x0220E8A0
_021FACA0: .word 0x0220EB68
_021FACA4: .word 0x0220EB90
_021FACA8: .word 0x0220E860
_021FACAC: .word 0x0220EBC4
_021FACB0: .word 0x0220EBF4
_021FACB4: .word 0x0220E8D0
_021FACB8: .word 0x0000CD74
_021FACBC: .word 0x0220EC14

	arm_func_start FUN_021FACC0
FUN_021FACC0: ; 0x021FACC0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r1
	mov r5, r0
	mov r0, r3
	ldr r1, _021FAD3C ; =0x0220EC3C
	add r2, sp, #4
	mov r3, #0x40
	bl FUN_021FB1F0
	cmp r0, #0
	addeq sp, sp, #0x54
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _021FAD40 ; =0x0220EC44
	add ip, sp, #0x4c
	add r0, sp, #4
	add r2, sp, #0x44
	add r3, sp, #0x48
	str ip, [sp]
	bl sscanf
	cmp r0, #3
	addne sp, sp, #0x54
	ldmneia sp!, {r4, r5, pc}
	mov ip, #0
	add r1, sp, #0x44
	mov r0, r5
	mov r2, r4
	mov r3, #2
	str ip, [sp]
	bl FUN_021FAD44
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FAD3C: .word 0x0220EC3C
_021FAD40: .word 0x0220EC44

	arm_func_start FUN_021FAD44
FUN_021FAD44: ; 0x021FAD44
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr ip, [sp, #0x30]
	mov r5, r2
	mov r6, r0
	cmp ip, #0
	ldreq r0, _021FADE0 ; =0x0220EC50
	mov lr, r1
	mov r4, r3
	streq r0, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mov r3, lr
	mov r2, #0xc9
	bl FUN_021F726C
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021FADE4 ; =0x0220EC54
	add r0, sp, #0
	mov r3, r4
	mov r2, #1
	bl sprintf
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl FUN_021F2C58
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r2, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mvn r3, #0
	bl FUN_021F7184
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FADE0: .word 0x0220EC50
_021FADE4: .word 0x0220EC54

	arm_func_start FUN_021FADE8
FUN_021FADE8: ; 0x021FADE8
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, r2
	mov r5, r1
	mov r1, r4
	mov r2, #1
	mov r6, r0
	bl FUN_021FB2F8
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021FAEE0 ; =0x0220EC6C
	mov r0, r4
	mov r2, #4
	bl strncmp
	cmp r0, #0
	beq _021FAE5C
	ldr r2, _021FAEE4 ; =0x0220EC74
	mov r0, r6
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r6
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_021FAE5C:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r1, #0
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	beq _021FAEC8
	mov r0, #4
	bl FUN_021DD860
	movs r3, r0
	bne _021FAE9C
	ldr r1, _021FAEE8 ; =0x0220ECA4
	mov r0, r6
	bl FUN_021FAEEC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FAE9C:
	mov r0, #0
	str r0, [r3]
	str r5, [sp]
	str r0, [sp, #4]
	add r1, sp, #8
	mov r0, r6
	ldmia r1, {r1, r2}
	bl FUN_021F3454
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, pc}
_021FAEC8:
	mov r0, r6
	mov r1, r5
	bl FUN_021F6C84
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FAEE0: .word 0x0220EC6C
_021FAEE4: .word 0x0220EC74
_021FAEE8: .word 0x0220ECA4

	arm_func_start FUN_021FAEEC
FUN_021FAEEC: ; 0x021FAEEC
	ldr ip, _021FAEFC ; =FUN_021FB3DC
	ldr r0, [r0]
	mov r2, #0x100
	bx ip
	.align 2, 0
_021FAEFC: .word FUN_021FB3DC

	arm_func_start FUN_021FAF00
FUN_021FAF00: ; 0x021FAF00
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r4, [r0]
	mov r5, r1
	mov r1, r2
	mov r0, r4
	mov r2, #0x100
	bl FUN_021FB3DC
	str r5, [r4, #0x418]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FAF2C
FUN_021FAF2C: ; 0x021FAF2C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x18]
	bne _021FAF5C
	ldr r0, _021FB0D8 ; =0x0220ECB4
	ldr r1, _021FB0DC ; =0x0220ECC4
	ldr r3, _021FB0E0 ; =0x00000199
	mov r2, #0
	bl __msl_assertion_failed
_021FAF5C:
	cmp r5, #0
	bne _021FAF78
	ldr r0, _021FB0E4 ; =0x0220ECD4
	ldr r1, _021FB0DC ; =0x0220ECC4
	ldr r3, _021FB0E8 ; =0x0000019A
	mov r2, #0
	bl __msl_assertion_failed
_021FAF78:
	cmp r4, #0
	bne _021FAF94
	ldr r0, _021FB0EC ; =0x0220ECE0
	ldr r1, _021FB0DC ; =0x0220ECC4
	ldr r3, _021FB0F0 ; =0x0000019B
	mov r2, #0
	bl __msl_assertion_failed
_021FAF94:
	ldr r1, [r6]
	ldrsb r0, [r7, r1]
	add r3, r7, r1
	cmp r0, #0x5c
	beq _021FAFD0
	ldr r2, _021FB0F4 ; =0x0220ECF0
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FAFD0:
	ldrsb r2, [r3, #1]
	add r7, r3, #2
	mov r1, #0
	cmp r2, #0x5c
	beq _021FB05C
	ldr r0, _021FB0F8 ; =0x000001FF
_021FAFE8:
	cmp r2, #0
	bne _021FB018
	ldr r2, _021FB0F4 ; =0x0220ECF0
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB018:
	cmp r1, r0
	bne _021FB048
	ldr r2, _021FB0F4 ; =0x0220ECF0
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB048:
	strb r2, [r5], #1
	ldrsb r2, [r7], #1
	add r1, r1, #1
	cmp r2, #0x5c
	bne _021FAFE8
_021FB05C:
	mov r2, #0
	strb r2, [r5]
	ldr r0, _021FB0F8 ; =0x000001FF
	b _021FB0A4
_021FB06C:
	cmp r2, r0
	bne _021FB09C
	ldr r2, _021FB0F4 ; =0x0220ECF0
	mov r0, r8
	mov r1, #1
	bl FUN_021FAF00
	mov r0, r8
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB09C:
	strb r1, [r4], #1
	add r2, r2, #1
_021FB0A4:
	ldrsb r1, [r7], #1
	cmp r1, #0x5c
	beq _021FB0B8
	cmp r1, #0
	bne _021FB06C
_021FB0B8:
	mov r0, #0
	strb r0, [r4]
	sub r1, r7, r3
	ldr r2, [r6]
	sub r1, r1, #1
	add r1, r2, r1
	str r1, [r6]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB0D8: .word 0x0220ECB4
_021FB0DC: .word 0x0220ECC4
_021FB0E0: .word 0x00000199
_021FB0E4: .word 0x0220ECD4
_021FB0E8: .word 0x0000019A
_021FB0EC: .word 0x0220ECE0
_021FB0F0: .word 0x0000019B
_021FB0F4: .word 0x0220ECF0
_021FB0F8: .word 0x000001FF

	arm_func_start FUN_021FB0FC
FUN_021FB0FC: ; 0x021FB0FC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov ip, #0
	mov r4, r2
	mov r5, r0
	mov r0, r1
	add r2, sp, #0
	add r3, sp, #4
	mov r1, ip
	str ip, [sp]
	str ip, [sp, #4]
	bl FUN_021EFF5C
	mvn r1, #0
	cmp r0, r1
	bne _021FB170
	ldr r1, _021FB1E0 ; =0x0220ED00
	mov r0, r5
	bl FUN_021FB3D0
	ldr r2, _021FB1E4 ; =0x0220ED14
	mov r0, r5
	mov r1, #5
	bl FUN_021FAF00
	mov r0, r5
	mov r1, #3
	mov r2, #1
	bl FUN_021F3500
	add sp, sp, #0xc
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_021FB170:
	cmp r0, #0
	ble _021FB1D0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021FB1A4
	ldr r1, _021FB1E8 ; =0x0220ED4C
	mov r0, r5
	bl FUN_021FB3D0
	mov r0, #4
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FB1A4:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FB1D0
	ldr r1, _021FB1EC ; =0x0220ED64
	mov r0, r5
	bl FUN_021FB3D0
	mov r0, #3
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FB1D0:
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB1E0: .word 0x0220ED00
_021FB1E4: .word 0x0220ED14
_021FB1E8: .word 0x0220ED4C
_021FB1EC: .word 0x0220ED64

	arm_func_start FUN_021FB1F0
FUN_021FB1F0: ; 0x021FB1F0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	bne _021FB21C
	ldr r0, _021FB2D8 ; =0x0220ED7C
	ldr r1, _021FB2DC ; =0x0220ECC4
	ldr r3, _021FB2E0 ; =0x0000010D
	mov r2, #0
	bl __msl_assertion_failed
_021FB21C:
	cmp r8, #0
	bne _021FB238
	ldr r0, _021FB2E4 ; =0x0220ECD4
	ldr r1, _021FB2DC ; =0x0220ECC4
	ldr r3, _021FB2E8 ; =0x0000010E
	mov r2, #0
	bl __msl_assertion_failed
_021FB238:
	cmp r4, #0
	bne _021FB254
	ldr r0, _021FB2EC ; =0x0220ECE0
	ldr r1, _021FB2DC ; =0x0220ECC4
	ldr r3, _021FB2F0 ; =0x0000010F
	mov r2, #0
	bl __msl_assertion_failed
_021FB254:
	cmp r7, #0
	bgt _021FB270
	ldr r0, _021FB2F4 ; =0x0220ED8C
	ldr r1, _021FB2DC ; =0x0220ECC4
	mov r2, #0
	mov r3, #0x110
	bl __msl_assertion_failed
_021FB270:
	ldrsb r6, [r8]
	mov r0, r5
	mov r1, r8
	bl strstr
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl strlen
	add r3, r5, r0
	sub r0, r7, #1
	mov r2, #0
	b _021FB2AC
_021FB2A4:
	strb r1, [r4, r2]
	add r2, r2, #1
_021FB2AC:
	cmp r2, r0
	bge _021FB2C8
	ldrsb r1, [r3, r2]
	cmp r1, #0
	beq _021FB2C8
	cmp r1, r6
	bne _021FB2A4
_021FB2C8:
	mov r0, #0
	strb r0, [r4, r2]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB2D8: .word 0x0220ED7C
_021FB2DC: .word 0x0220ECC4
_021FB2E0: .word 0x0000010D
_021FB2E4: .word 0x0220ECD4
_021FB2E8: .word 0x0000010E
_021FB2EC: .word 0x0220ECE0
_021FB2F0: .word 0x0000010F
_021FB2F4: .word 0x0220ED8C

	arm_func_start FUN_021FB2F8
FUN_021FB2F8: ; 0x021FB2F8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	mov r7, r0
	mov r5, r2
	ldr r1, _021FB3C0 ; =0x0220ED94
	mov r0, r6
	mov r2, #7
	ldr r4, [r7]
	bl strncmp
	cmp r0, #0
	bne _021FB3B4
	ldr r1, _021FB3C4 ; =0x0220ED9C
	add r2, sp, #0
	mov r0, r6
	mov r3, #0x10
	bl FUN_021FB1F0
	cmp r0, #0
	beq _021FB350
	add r0, sp, #0
	bl atol
	str r0, [r4, #0x418]
_021FB350:
	ldr r1, _021FB3C8 ; =0x0220EDA4
	mov r0, r6
	mov r2, r4
	mov r3, #0x100
	bl FUN_021FB1F0
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r4]
	cmp r5, #0
	beq _021FB3A8
	ldr r1, _021FB3CC ; =0x0220EDB0
	mov r0, r6
	bl strstr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r2, #1
	moveq r2, #0
	mov r0, r7
	mov r1, #4
	bl FUN_021F3500
_021FB3A8:
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FB3B4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB3C0: .word 0x0220ED94
_021FB3C4: .word 0x0220ED9C
_021FB3C8: .word 0x0220EDA4
_021FB3CC: .word 0x0220EDB0

	arm_func_start FUN_021FB3D0
FUN_021FB3D0: ; 0x021FB3D0
	stmdb sp!, {r0, r1, r2, r3}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FB3DC
FUN_021FB3DC: ; 0x021FB3DC
	stmdb sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _021FB404
	ldr r0, _021FB440 ; =0x0220EDB8
	ldr r1, _021FB444 ; =0x0220ECC4
	mov r2, #0
	mov r3, #0x2f
	bl __msl_assertion_failed
_021FB404:
	cmp r5, #0
	bne _021FB420
	ldr r0, _021FB448 ; =0x0220EDC8
	ldr r1, _021FB444 ; =0x0220ECC4
	mov r2, #0
	mov r3, #0x30
	bl __msl_assertion_failed
_021FB420:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl strncpy
	add r0, r6, r4
	mov r1, #0
	strb r1, [r0, #-1]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FB440: .word 0x0220EDB8
_021FB444: .word 0x0220ECC4
_021FB448: .word 0x0220EDC8

	arm_func_start FUN_021FB44C
FUN_021FB44C: ; 0x021FB44C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	ldr r0, _021FB520 ; =0x02210F84
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	bl FUN_021EF06C
	subs r4, r0, #1
	bmi _021FB500
	ldr r5, _021FB524 ; =0x0220BBC8
	add r3, sp, #0x14
	mov r2, #8
_021FB480:
	ldrb r1, [r5], #1
	ldrb r0, [r5], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FB480
	ldr sb, _021FB528 ; =0x0220EDEC
	ldr r5, _021FB52C ; =0x0220EDD8
	add r8, sp, #4
	mov r7, #0xf
	mov r6, #0
_021FB4AC:
	add ip, sp, #0x14
	add r3, sp, #4
	mov r2, #8
_021FB4B8:
	ldrb r1, [ip], #1
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FB4B8
	mov r0, r8
	mov r1, r7
	str sb, [r5]
	bl FUN_021FBCB8
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r6, [sp]
	bl FUN_021FB530
	subs r4, r4, #1
	bpl _021FB4AC
_021FB500:
	ldr r0, _021FB520 ; =0x02210F84
	ldr r0, [r0]
	bl FUN_021EF074
	ldr r0, _021FB520 ; =0x02210F84
	mov r1, #0
	str r1, [r0]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FB520: .word 0x02210F84
_021FB524: .word 0x0220BBC8
_021FB528: .word 0x0220EDEC
_021FB52C: .word 0x0220EDD8

	arm_func_start FUN_021FB530
FUN_021FB530: ; 0x021FB530
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	addmi sp, sp, #0x14
	ldmmiia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021FB650 ; =0x02210F84
	ldr r0, [r0]
	bl FUN_021EF06C
	cmp r7, r0
	addge sp, sp, #0x14
	ldmgeia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021FB650 ; =0x02210F84
	mov r1, r7
	ldr r0, [r0]
	bl FUN_021EEFFC
	mov r3, r0
	ldr ip, [r3, #0x18]
	cmp ip, #0
	beq _021FB638
	ldr r0, [r3]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021FB638
_021FB598: ; jump table
	b _021FB5A8 ; case 0
	b _021FB5C8 ; case 1
	b _021FB5FC ; case 2
	b _021FB624 ; case 3
_021FB5A8:
	ldr r0, [r3, #0x14]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	mov r3, r4
	blx ip
	b _021FB638
_021FB5C8:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x28]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	blx ip
	b _021FB638
_021FB5FC:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r3, #0x14]
	str r0, [sp, #8]
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	blx ip
	b _021FB638
_021FB624:
	ldr r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r3, [r3, #0x14]
	mov r2, r6
	blx ip
_021FB638:
	ldr r0, _021FB650 ; =0x02210F84
	mov r1, r7
	ldr r0, [r0]
	bl FUN_021EED84
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB650: .word 0x02210F84

	arm_func_start FUN_021FB654
FUN_021FB654: ; 0x021FB654
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	mov sl, r0
	mov r7, sb
	bl FUN_021FBB3C
	mov r8, r0
	ldr r5, _021FB6D4 ; =0x0220EDDC
	ldr r4, _021FB6D8 ; =0x0220EDD8
	b _021FB6BC
_021FB678:
	sub r6, r8, sl
	mov r0, sl
	mov r1, r6
	str r5, [r4]
	bl FUN_021FBCB8
	mov r0, sl
	mov r1, r6
	bl FUN_021FB6DC
	add r0, r6, #7
	sub sb, sb, r0
	cmp sb, #0
	add sl, r8, #7
	ble _021FB6BC
	mov r0, sl
	mov r1, sb
	bl FUN_021FBB3C
	mov r8, r0
_021FB6BC:
	cmp sb, #0
	ble _021FB6CC
	cmp r8, #0
	bne _021FB678
_021FB6CC:
	sub r0, r7, sb
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FB6D4: .word 0x0220EDDC
_021FB6D8: .word 0x0220EDD8

	arm_func_start FUN_021FB6DC
FUN_021FB6DC: ; 0x021FB6DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	ldr r1, _021FB7D0 ; =0x0220EDFC
	mov r5, r0
	mov r3, #0
	mov r2, #8
	strb r3, [r5, r4]
	bl strncmp
	cmp r0, #0
	bne _021FB71C
	mov r0, r5
	mov r1, r4
	bl FUN_021FBA00
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB71C:
	ldr r1, _021FB7D4 ; =0x0220EE08
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021FB748
	mov r0, r5
	mov r1, r4
	bl FUN_021FB968
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB748:
	ldr r1, _021FB7D4 ; =0x0220EE08
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021FB774
	mov r0, r5
	mov r1, r4
	bl FUN_021FB968
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB774:
	ldr r1, _021FB7D8 ; =0x0220EE14
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	bne _021FB7A0
	mov r0, r5
	mov r1, r4
	bl FUN_021FB884
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_021FB7A0:
	ldr r1, _021FB7DC ; =0x0220EE20
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_021FB7E0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB7D0: .word 0x0220EDFC
_021FB7D4: .word 0x0220EE08
_021FB7D8: .word 0x0220EE14
_021FB7DC: .word 0x0220EE20

	arm_func_start FUN_021FB7E0
FUN_021FB7E0: ; 0x021FB7E0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r1, _021FB874 ; =0x0220EE2C
	mov r7, r0
	bl FUN_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB878 ; =0x0220EE34
	mov r0, r7
	bl FUN_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FB87C ; =0x0220EE38
	mov r0, r7
	bl FUN_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FB880 ; =0x0220EE3C
	mov r0, r7
	bl FUN_021FBBC8
	bl atol
	mov r1, r4
	mov r4, r0
	mov r2, r5
	mov r0, #2
	bl FUN_021FBAB0
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r3, #0
	mov r1, r6
	mov r2, r4
	str r3, [sp]
	bl FUN_021FB530
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FB874: .word 0x0220EE2C
_021FB878: .word 0x0220EE34
_021FB87C: .word 0x0220EE38
_021FB880: .word 0x0220EE3C

	arm_func_start FUN_021FB884
FUN_021FB884: ; 0x021FB884
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _021FB94C ; =0x0220EE40
	mov r4, r0
	bl FUN_021FBBC8
	bl atol
	mov r7, r0
	ldr r1, _021FB950 ; =0x0220EE38
	mov r0, r4
	bl FUN_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB954 ; =0x0220EE34
	mov r0, r4
	bl FUN_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FB958 ; =0x0220EE3C
	mov r0, r4
	bl FUN_021FBBC8
	bl atol
	mov r2, r5
	mov r5, r0
	mov r1, r6
	mov r0, #1
	bl FUN_021FBAB0
	mov r8, r0
	mvn r0, #0
	cmp r8, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _021FB95C ; =0x0220EE48
	mov r0, r4
	bl FUN_021FBBC8
	bl atol
	mov r6, r0
	ldr r1, _021FB960 ; =0x0220EE50
	mov r0, r4
	bl strstr
	cmp r0, #0
	ldreq r3, _021FB964 ; =0x0220EE58
	moveq r6, #0
	addne r3, r0, #6
	mov r0, r8
	mov r1, r7
	mov r2, r5
	str r6, [sp]
	bl FUN_021FB530
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FB94C: .word 0x0220EE40
_021FB950: .word 0x0220EE38
_021FB954: .word 0x0220EE34
_021FB958: .word 0x0220EE3C
_021FB95C: .word 0x0220EE48
_021FB960: .word 0x0220EE50
_021FB964: .word 0x0220EE58

	arm_func_start FUN_021FB968
FUN_021FB968: ; 0x021FB968
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _021FB9F4 ; =0x0220EE5C
	mov r5, r0
	bl FUN_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FB9F8 ; =0x0220EE38
	mov r0, r5
	bl FUN_021FBBC8
	bl atol
	mov r1, r0
	mov r0, #3
	mov r2, #0
	bl FUN_021FBAB0
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _021FB9FC ; =0x02210F84
	mov r1, r5
	ldr r0, [r0]
	bl FUN_021EEFFC
	cmp r4, #0
	movgt r1, #1
	mov r2, #0
	str r4, [r0, #8]
	movle r1, #0
	mov r0, r5
	mov r3, r2
	str r2, [sp]
	bl FUN_021FB530
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FB9F4: .word 0x0220EE5C
_021FB9F8: .word 0x0220EE38
_021FB9FC: .word 0x02210F84

	arm_func_start FUN_021FBA00
FUN_021FBA00: ; 0x021FBA00
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _021FBAA0 ; =0x0220EE64
	mov r6, r0
	bl FUN_021FBBC8
	bl atol
	mov r5, r0
	ldr r1, _021FBAA4 ; =0x0220EE38
	mov r0, r6
	bl FUN_021FBBC8
	bl atol
	mov r4, r0
	ldr r1, _021FBAA8 ; =0x0220EE6C
	mov r0, r6
	bl FUN_021FBBC8
	mov r1, r4
	mov r4, r0
	mov r0, #0
	mov r2, r0
	bl FUN_021FBAB0
	mov r6, r0
	mvn r0, #0
	cmp r6, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021FBAAC ; =0x02210F84
	mov r1, r6
	ldr r0, [r0]
	bl FUN_021EEFFC
	cmp r5, #0
	movgt r1, #1
	str r5, [r0, #8]
	mov r2, #0
	movle r1, #0
	mov r0, r6
	mov r3, r4
	str r2, [sp]
	bl FUN_021FB530
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FBAA0: .word 0x0220EE64
_021FBAA4: .word 0x0220EE38
_021FBAA8: .word 0x0220EE6C
_021FBAAC: .word 0x02210F84

	arm_func_start FUN_021FBAB0
FUN_021FBAB0: ; 0x021FBAB0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _021FBB38 ; =0x02210F84
	mov r7, r0
	ldr r0, [r3]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	bl FUN_021EF06C
	cmp r0, #0
	ble _021FBB30
	ldr r8, _021FBB38 ; =0x02210F84
_021FBAE8:
	ldr r0, [r8]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r1, [r0]
	cmp r1, r7
	bne _021FBB1C
	ldr r1, [r0, #4]
	cmp r1, r6
	bne _021FBB1C
	ldr r0, [r0, #8]
	cmp r0, r5
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021FBB1C:
	ldr r0, [r8]
	add r4, r4, #1
	bl FUN_021EF06C
	cmp r4, r0
	blt _021FBAE8
_021FBB30:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FBB38: .word 0x02210F84

	arm_func_start FUN_021FBB3C
FUN_021FBB3C: ; 0x021FBB3C
	sub r2, r1, #6
	mov r3, r0
	cmp r2, #0
	ble _021FBBB4
_021FBB4C:
	ldrsb r1, [r3]
	cmp r1, #0x5c
	bne _021FBBA4
	ldrsb r1, [r3, #1]
	cmp r1, #0x66
	bne _021FBBA4
	ldrsb r1, [r3, #2]
	cmp r1, #0x69
	bne _021FBBA4
	ldrsb r1, [r3, #3]
	cmp r1, #0x6e
	bne _021FBBA4
	ldrsb r1, [r3, #4]
	cmp r1, #0x61
	bne _021FBBA4
	ldrsb r1, [r3, #5]
	cmp r1, #0x6c
	bne _021FBBA4
	ldrsb r1, [r3, #6]
	cmp r1, #0x5c
	moveq r0, r3
	bxeq lr
_021FBBA4:
	add r3, r3, #1
	sub r1, r3, r0
	cmp r1, r2
	blt _021FBB4C
_021FBBB4:
	mov r0, #0
	bx lr

	arm_func_start FUN_021FBBBC
FUN_021FBBBC: ; 0x021FBBBC
	ldr ip, _021FBBC4 ; =FUN_021EFF2C
	bx ip
	.align 2, 0
_021FBBC4: .word FUN_021EFF2C

	arm_func_start FUN_021FBBC8
FUN_021FBBC8: ; 0x021FBBC8
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_021FBBE8
	cmp r0, #0
	ldreq r0, _021FBBE4 ; =0x0220EE58
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FBBE4: .word 0x0220EE58

	arm_func_start FUN_021FBBE8
FUN_021FBBE8: ; 0x021FBBE8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr lr, _021FBCA8 ; =0x0220BBD8
	add ip, sp, #0
	mov r4, r0
	mov r3, #0x80
_021FBC00:
	ldrb r2, [lr], #1
	ldrb r0, [lr], #1
	subs r3, r3, #1
	strb r2, [ip], #1
	strb r0, [ip], #1
	bne _021FBC00
	ldr r2, _021FBCAC ; =0x02210F8C
	add r0, sp, #0
	ldr r3, [r2]
	eor r3, r3, #1
	str r3, [r2]
	bl strcat
	ldr r1, _021FBCB0 ; =0x0220EE74
	add r0, sp, #0
	bl strcat
	add r1, sp, #0
	mov r0, r4
	bl strstr
	movs r4, r0
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0
	bl strlen
	ldr r1, _021FBCAC ; =0x02210F8C
	ldr r2, _021FBCB4 ; =0x02211194
	ldr r1, [r1]
	add r3, r4, r0
	add r0, r2, r1, lsl #8
	mov r2, r0
	b _021FBC84
_021FBC7C:
	ldrsb r1, [r3], #1
	strb r1, [r2], #1
_021FBC84:
	ldrsb r1, [r3]
	cmp r1, #0
	beq _021FBC98
	cmp r1, #0x5c
	bne _021FBC7C
_021FBC98:
	mov r1, #0
	strb r1, [r2]
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FBCA8: .word 0x0220BBD8
_021FBCAC: .word 0x02210F8C
_021FBCB0: .word 0x0220EE74
_021FBCB4: .word 0x02211194

	arm_func_start FUN_021FBCB8
FUN_021FBCB8: ; 0x021FBCB8
	stmdb sp!, {r4, lr}
	ldr r2, _021FBCFC ; =0x0220EDD8
	mov r4, #0
	cmp r1, #0
	ldr lr, [r2]
	ldmleia sp!, {r4, pc}
_021FBCD0:
	ldrsb ip, [r0, r4]
	ldrsb r3, [lr]
	eor r3, ip, r3
	strb r3, [r0, r4]
	ldrsb r3, [lr, #1]!
	add r4, r4, #1
	cmp r3, #0
	ldreq lr, [r2]
	cmp r4, r1
	blt _021FBCD0
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FBCFC: .word 0x0220EDD8

	arm_func_start FUN_021FBD00
FUN_021FBD00: ; 0x021FBD00
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _021FBE48 ; =0x0220EDD4
	mvn r1, #0
	ldr r0, [r0]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _021FBE4C ; =0x02210F88
	ldr r1, [r1]
	cmp r1, #5
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021FBBBC
	cmp r0, #0
	beq _021FBE2C
	ldr r8, _021FBE50 ; =0x02210F80
	ldr sl, _021FBE54 ; =0x02210F90
	ldr sb, _021FBE58 ; =0x02210F7C
	ldr r7, _021FBE48 ; =0x0220EDD4
	mov r6, #0x100
	mov r5, #0
_021FBD54:
	ldr r1, [sl]
	ldr r0, [sb]
	sub r0, r1, r0
	cmp r0, #0x80
	bge _021FBD98
	cmp r1, #0x100
	strlt r6, [sl]
	movge r0, r1, lsl #1
	strge r0, [sl]
	ldr r1, [sl]
	ldr r0, [r8]
	add r1, r1, #1
	bl FUN_021DD844
	str r0, [r8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FBD98:
	ldr r4, [sb]
	ldr r1, [r8]
	ldr r2, [sl]
	ldr r0, [r7]
	mov r3, r5
	add r1, r1, r4
	sub r2, r2, r4
	bl FUN_021EFC78
	cmp r0, #0
	bgt _021FBDCC
	bl FUN_021FBE7C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FBDCC:
	ldr r2, [sb]
	ldr r1, [r8]
	add r0, r2, r0
	str r0, [sb]
	strb r5, [r1, r0]
	ldr r0, [r8]
	ldr r1, [sb]
	bl FUN_021FB654
	ldr r1, [sb]
	mov r4, r0
	cmp r4, r1
	streq r5, [sb]
	beq _021FBE1C
	ldr r0, [r8]
	sub r2, r1, r4
	add r1, r0, r4
	bl memmove
	ldr r0, [sb]
	sub r0, r0, r4
	str r0, [sb]
_021FBE1C:
	ldr r0, [r7]
	bl FUN_021FBBBC
	cmp r0, #0
	bne _021FBD54
_021FBE2C:
	ldr r1, _021FBE48 ; =0x0220EDD4
	mvn r0, #0
	ldr r1, [r1]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FBE48: .word 0x0220EDD4
_021FBE4C: .word 0x02210F88
_021FBE50: .word 0x02210F80
_021FBE54: .word 0x02210F90
_021FBE58: .word 0x02210F7C

	arm_func_start FUN_021FBE5C
FUN_021FBE5C: ; 0x021FBE5C
	ldr r1, _021FBE78 ; =0x0220EDD4
	mvn r0, #0
	ldr r1, [r1]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	.align 2, 0
_021FBE78: .word 0x0220EDD4

	arm_func_start FUN_021FBE7C
FUN_021FBE7C: ; 0x021FBE7C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _021FBEF8 ; =0x0220EDD4
	mvn r1, #0
	ldr r0, [r0]
	cmp r0, r1
	beq _021FBEAC
	mov r1, #2
	bl FUN_021EFD80
	ldr r0, _021FBEF8 ; =0x0220EDD4
	ldr r0, [r0]
	bl FUN_021EFD9C
_021FBEAC:
	ldr r0, _021FBEF8 ; =0x0220EDD4
	mvn r1, #0
	str r1, [r0]
	bl FUN_021FB44C
	ldr r0, _021FBEFC ; =0x02210F80
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021DD82C
	ldr r2, _021FBEFC ; =0x02210F80
	mov r3, #0
	ldr r1, _021FBF00 ; =0x02210F90
	ldr r0, _021FBF04 ; =0x02210F7C
	str r3, [r2]
	str r3, [r1]
	str r3, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FBEF8: .word 0x0220EDD4
_021FBEFC: .word 0x02210F80
_021FBF00: .word 0x02210F90
_021FBF04: .word 0x02210F7C

	arm_func_start FUN_021FBF08
FUN_021FBF08: ; 0x021FBF08
	mov ip, #0
_021FBF0C:
	cmp ip, #0
	beq _021FBF30
	cmp ip, #0xd
	beq _021FBF30
	ldrb r3, [r0, ip]
	ldrb r2, [r1, ip]
	cmp r3, r2
	movne r0, #0
	bxne lr
_021FBF30:
	add ip, ip, #1
	cmp ip, #0x20
	blt _021FBF0C
	mov r0, #1
	bx lr

	arm_func_start FUN_021FBF44
FUN_021FBF44: ; 0x021FBF44
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, _021FC06C ; =0x0220EE78
	mov r4, r1
	bl strlen
	mov r8, r0
	mov r0, r4
	bl FUN_021FC1BC
	mov sl, #0
	mov fp, r0
	mov r7, sl
_021FBF74:
	cmp fp, #0
	beq _021FBF8C
	cmp sl, #0
	beq _021FBF8C
	cmp sl, #0xd
	bne _021FBFBC
_021FBF8C:
	bl rand
	ldr r1, _021FC070 ; =0x2C0B02C1
	smull r2, r3, r1, r0
	mov r3, r3, asr #4
	mov r1, r0, lsr #0x1f
	add r3, r1, r3
	ldr r1, _021FC074 ; =0x0000005D
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r0, r3, #0x21
	strb r0, [r5, sl]
	b _021FC04C
_021FBFBC:
	cmp sl, #1
	beq _021FBFCC
	cmp sl, #0xe
	bne _021FBFD4
_021FBFCC:
	ldrsb sb, [r4, sl]
	b _021FBFDC
_021FBFD4:
	sub r0, sl, #1
	ldrsb sb, [r4, r0]
_021FBFDC:
	ldrb r6, [r4, sl]
	mov r1, r8
	add r0, sl, r6
	bl _s32_div_f
	mul r0, sb, r7
	mov sb, r1
	mov r1, r8
	bl _s32_div_f
	ldr r0, _021FC06C ; =0x0220EE78
	ldrsb r3, [r0, sb]
	ldrsb r2, [r0, r1]
	mla r0, sl, r6, r3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	ldrb r0, [r4, r0]
	eor r0, r0, r2
	bl abs
	ldr r1, _021FC070 ; =0x2C0B02C1
	smull r2, r3, r1, r0
	mov r3, r3, asr #4
	mov r1, r0, lsr #0x1f
	add r3, r1, r3
	ldr r1, _021FC074 ; =0x0000005D
	smull r2, r3, r1, r3
	sub r3, r0, r2
	add r0, r3, #0x21
	strb r0, [r5, sl]
_021FC04C:
	ldr r0, _021FC078 ; =0x00004647
	add sl, sl, #1
	cmp sl, #0x20
	add r7, r7, r0
	blt _021FBF74
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FC06C: .word 0x0220EE78
_021FC070: .word 0x2C0B02C1
_021FC074: .word 0x0000005D
_021FC078: .word 0x00004647

	arm_func_start FUN_021FC07C
FUN_021FC07C: ; 0x021FC07C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	movs sl, r0
	bne _021FC0A0
	ldr r0, _021FC1AC ; =0x0220EE9C
	ldr r1, _021FC1B0 ; =0x0220EEA4
	mov r2, #0
	mov r3, #0x2b
	bl __msl_assertion_failed
_021FC0A0:
	bl FUN_021F025C
	bl srand
	bl rand
	ldr r1, _021FC1B4 ; =0x2C0B02C1
	mov r2, r0, lsr #0x1f
	smull r3, r4, r1, r0
	mov r8, #0
	mov r4, r4, asr #4
	mov sb, #1
	ldr r1, _021FC1B8 ; =0x0000005D
	add r4, r2, r4
	smull r2, r3, r1, r4
	sub r4, r0, r2
	add r0, r4, #0x21
	strb r0, [sl]
	mov r5, r8
	mov r6, sb
	mov fp, r8
	mov r4, sb
_021FC0EC:
	sub r0, sb, #1
	ldrb r2, [sl, r0]
	ldrb r3, [sl]
	add r7, sl, sb
	cmp r2, r3
	eor r2, sb, r2
	movlo r0, r6
	and r2, r2, #1
	movhs r0, r5
	cmp r3, #0x4f
	movlo r1, r4
	and r3, r3, #1
	eor r2, r8, r2
	movhs r1, fp
	eor r2, r3, r2
	eor r1, r2, r1
	eor r8, r1, r0
	bl rand
	ldr r2, _021FC1B4 ; =0x2C0B02C1
	cmp r8, #0
	smull r3, r1, r2, r0
	mov r1, r1, asr #4
	mov r2, r0, lsr #0x1f
	add r1, r2, r1
	ldr r2, _021FC1B8 ; =0x0000005D
	smull r1, r3, r2, r1
	sub r1, r0, r1
	add r0, r1, #0x21
	strb r0, [sl, sb]
	beq _021FC170
	ldrb r0, [r7]
	ands r0, r0, #1
	beq _021FC188
_021FC170:
	cmp r8, #0
	bne _021FC194
	ldrb r0, [r7]
	and r0, r0, #1
	cmp r0, #1
	bne _021FC194
_021FC188:
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021FC194:
	add sb, sb, #1
	cmp sb, #0x20
	blt _021FC0EC
	mov r0, sl
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FC1AC: .word 0x0220EE9C
_021FC1B0: .word 0x0220EEA4
_021FC1B4: .word 0x2C0B02C1
_021FC1B8: .word 0x0000005D

	arm_func_start FUN_021FC1BC
FUN_021FC1BC: ; 0x021FC1BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldrb r4, [r0]
	mov r6, #0
	mov r5, #1
	and lr, r4, #1
	mov r3, r6
	mov ip, r5
	mov r1, r6
	mov r2, r5
_021FC1E4:
	sub r7, r5, #1
	ldrb sb, [r0, r7]
	cmp sb, r4
	eor sb, r5, sb
	movlo r7, ip
	and sb, sb, #1
	movhs r7, r3
	cmp r4, #0x4f
	movlo r8, r2
	eor r6, r6, sb
	movhs r8, r1
	eor r6, lr, r6
	eor r6, r6, r8
	eors r6, r6, r7
	beq _021FC22C
	ldrb r7, [r0, r5]
	ands r7, r7, #1
	beq _021FC244
_021FC22C:
	cmp r6, #0
	bne _021FC250
	ldrb r7, [r0, r5]
	and r7, r7, #1
	cmp r7, #1
	bne _021FC250
_021FC244:
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FC250:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021FC1E4
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021FC268
FUN_021FC268: ; 0x021FC268
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mvn r1, #0
	mov r6, r0
	cmp r5, r1
	ldreq r0, [r6, #8]
	mov r4, r2
	subeq r5, r0, r4
	ldr r0, [r6, #8]
	cmp r5, r0
	ble _021FC2A8
	ldr r0, _021FC2F8 ; =0x0220EEB0
	ldr r1, _021FC2FC ; =0x0220EEC8
	mov r2, #0
	mov r3, #0x4f
	bl __msl_assertion_failed
_021FC2A8:
	ldr r0, [r6, #8]
	sub r0, r0, r5
	cmp r4, r0
	ble _021FC2CC
	ldr r0, _021FC300 ; =0x0220EED4
	ldr r1, _021FC2FC ; =0x0220EEC8
	mov r2, #0
	mov r3, #0x50
	bl __msl_assertion_failed
_021FC2CC:
	ldr r0, [r6]
	ldr r1, [r6, #8]
	add r0, r0, r5
	sub r2, r1, r5
	add r1, r0, r4
	sub r2, r2, r4
	bl memmove
	ldr r0, [r6, #8]
	sub r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FC2F8: .word 0x0220EEB0
_021FC2FC: .word 0x0220EEC8
_021FC300: .word 0x0220EED4

	arm_func_start FUN_021FC304
FUN_021FC304: ; 0x021FC304
	stmdb sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r0, #0
	cmp r4, r0
	bne _021FC338
	mov r0, r5
	bl strlen
	mov r4, r0
_021FC338:
	ldr r1, [r6, #8]
	ldr r0, [r6, #4]
	add r1, r1, r4
	cmp r1, r0
	ble _021FC360
	ldr r0, _021FC388 ; =0x0220EEF8
	ldr r1, _021FC38C ; =0x0220EEC8
	mov r2, #0
	mov r3, #0x40
	bl __msl_assertion_failed
_021FC360:
	ldr r3, [r6]
	ldr r0, [r6, #8]
	mov r1, r5
	mov r2, r4
	add r0, r3, r0
	bl memcpy
	ldr r0, [r6, #8]
	add r0, r0, r4
	str r0, [r6, #8]
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_021FC388: .word 0x0220EEF8
_021FC38C: .word 0x0220EEC8

	arm_func_start FUN_021FC390
FUN_021FC390: ; 0x021FC390
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r0, [r5, #4]
	add r2, r2, #2
	mov r4, r1
	cmp r2, r0
	ble _021FC3C8
	ldr r0, _021FC3FC ; =0x0220EF1C
	ldr r1, _021FC400 ; =0x0220EEC8
	mov r2, #0
	mov r3, #0x2e
	bl __msl_assertion_failed
_021FC3C8:
	ldr r2, [r5, #8]
	mov r1, r4, asr #8
	add r0, r2, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r1, [r0, r2]
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r4, [r0, r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC3FC: .word 0x0220EF1C
_021FC400: .word 0x0220EEC8

	arm_func_start FUN_021FC404
FUN_021FC404: ; 0x021FC404
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r0, [r5, #4]
	mov r4, r1
	cmp r2, r0
	blt _021FC438
	ldr r0, _021FC454 ; =0x0220EF40
	ldr r1, _021FC458 ; =0x0220EEC8
	mov r2, #0
	mov r3, #0x23
	bl __msl_assertion_failed
_021FC438:
	ldr r1, [r5, #8]
	add r0, r1, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	strb r4, [r0, r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC454: .word 0x0220EF40
_021FC458: .word 0x0220EEC8

	arm_func_start FUN_021FC45C
FUN_021FC45C: ; 0x021FC45C
	ldr r1, [r0, #4]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	bx lr

	arm_func_start FUN_021FC46C
FUN_021FC46C: ; 0x021FC46C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl FUN_021DD860
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	moveq r0, #0
	strne r4, [r5, #4]
	movne r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FC4A4
FUN_021FC4A4: ; 0x021FC4A4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x24]
	mov r6, r2
	mov r2, #0
	movs r8, r0
	mov r7, r1
	mov r5, r3
	str r2, [r4]
	bne _021FC4DC
	ldr r0, _021FC590 ; =0x0220EF5C
	ldr r1, _021FC594 ; =0x0220EF64
	ldr r3, _021FC598 ; =0x00000197
	bl __msl_assertion_failed
_021FC4DC:
	cmp r8, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x30]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _021FC514
	cmp r5, #0
	bne _021FC51C
_021FC514:
	mov r5, #0
	str r5, [sp, #0x20]
_021FC51C:
	ldr r1, [r8, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r1, #1
	str r1, [r8, #0x1c]
	str r0, [sp]
	ldr ip, [r8, #0x30]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	blx ip
	str r0, [r4]
	ldr r0, [r8, #0x1c]
	sub r0, r0, #1
	str r0, [r8, #0x1c]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _021FC584
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	bne _021FC584
	mov r0, r8
	bl FUN_021FF9CC
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FC584:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FC590: .word 0x0220EF5C
_021FC594: .word 0x0220EF64
_021FC598: .word 0x00000197

	arm_func_start FUN_021FC59C
FUN_021FC59C: ; 0x021FC59C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC5CC
	ldr r0, _021FC6BC ; =0x0220EF5C
	ldr r1, _021FC6C0 ; =0x0220EF64
	mov r2, #0
	mov r3, #0x160
	bl __msl_assertion_failed
_021FC5CC:
	cmp r7, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ldrne ip, [r7, #0x28]
	ldreq ip, [r7, #0x2c]
	cmp ip, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FC614
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021FC620
_021FC614:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_021FC620:
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	add r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	ldr r1, [sp, #0x20]
	addne r0, r0, #1
	strne r0, [r6, #0x24]
	str r1, [sp]
	ldr r0, [sp, #0x24]
	ldr lr, [sp, #0x28]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str lr, [sp, #8]
	blx ip
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	subne r0, r0, #1
	strne r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021FC6B0
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021FC6B0
	mov r0, r7
	bl FUN_021FF9CC
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC6B0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC6BC: .word 0x0220EF5C
_021FC6C0: .word 0x0220EF64

	arm_func_start FUN_021FC6C4
FUN_021FC6C4: ; 0x021FC6C4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC6F4
	ldr r0, _021FC7C8 ; =0x0220EF74
	ldr r1, _021FC7CC ; =0x0220EF64
	ldr r3, _021FC7D0 ; =0x0000012D
	mov r2, #0
	bl __msl_assertion_failed
_021FC6F4:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x9c]
	mov r1, r6
	bl FUN_021EEFFC
	movs lr, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FC730
	cmp r5, #0
	bne _021FC738
_021FC730:
	mov r5, #0
	mov r4, r5
_021FC738:
	ldr r0, [r7, #0x24]
	ldr r2, [sp, #0x18]
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r0, r7
	ldr r3, [ip, #0x1c]
	mov r1, r6
	add r3, r3, #1
	str r3, [ip, #0x1c]
	str r2, [sp]
	ldr r6, [lr]
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC7BC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC7BC
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC7BC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC7C8: .word 0x0220EF74
_021FC7CC: .word 0x0220EF64
_021FC7D0: .word 0x0000012D

	arm_func_start FUN_021FC7D4
FUN_021FC7D4: ; 0x021FC7D4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FC804
	ldr r0, _021FC8D8 ; =0x0220EF74
	ldr r1, _021FC8DC ; =0x0220EF64
	ldr r3, _021FC8E0 ; =0x00000101
	mov r2, #0
	bl __msl_assertion_failed
_021FC804:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x98]
	mov r1, r6
	bl FUN_021EEFFC
	movs lr, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FC840
	cmp r5, #0
	bne _021FC848
_021FC840:
	mov r5, #0
	mov r4, r5
_021FC848:
	ldr r0, [r7, #0x24]
	ldr r2, [sp, #0x18]
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r0, r7
	ldr r3, [ip, #0x1c]
	mov r1, r6
	add r3, r3, #1
	str r3, [ip, #0x1c]
	str r2, [sp]
	ldr r6, [lr]
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC8CC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC8CC
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FC8CC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FC8D8: .word 0x0220EF74
_021FC8DC: .word 0x0220EF64
_021FC8E0: .word 0x00000101

	arm_func_start FUN_021FC8E4
FUN_021FC8E4: ; 0x021FC8E4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	mov r5, r1
	bne _021FC90C
	ldr r0, _021FC9B0 ; =0x0220EF74
	ldr r1, _021FC9B4 ; =0x0220EF64
	mov r2, #0
	mov r3, #0xd9
	bl __msl_assertion_failed
_021FC90C:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x34]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x34]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FC9A4
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FC9A4
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FC9A4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FC9B0: .word 0x0220EF74
_021FC9B4: .word 0x0220EF64

	arm_func_start FUN_021FC9B8
FUN_021FC9B8: ; 0x021FC9B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r4, r0
	mov r5, r1
	bne _021FC9E0
	ldr r0, _021FCA84 ; =0x0220EF74
	ldr r1, _021FCA88 ; =0x0220EF64
	mov r2, #0
	mov r3, #0xba
	bl __msl_assertion_failed
_021FC9E0:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x30]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCA78
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCA78
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021FCA78:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FCA84: .word 0x0220EF74
_021FCA88: .word 0x0220EF64

	arm_func_start FUN_021FCA8C
FUN_021FCA8C: ; 0x021FCA8C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FCABC
	ldr r0, _021FCB80 ; =0x0220EF74
	ldr r1, _021FCB84 ; =0x0220EF64
	mov r2, #0
	mov r3, #0x94
	bl __msl_assertion_failed
_021FCABC:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _021FCAF0
	cmp r6, #0
	bne _021FCAF8
_021FCAF0:
	mov r6, #0
	mov r5, r6
_021FCAF8:
	ldr r1, [r7, #0x24]
	mov r0, r7
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r1, r6
	ldr r3, [ip, #0x1c]
	mov r2, r5
	add r3, r3, #1
	str r3, [ip, #0x1c]
	ldr r5, [r7, #0x2c]
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCB74
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCB74
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCB74:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCB80: .word 0x0220EF74
_021FCB84: .word 0x0220EF64

	arm_func_start FUN_021FCB88
FUN_021FCB88: ; 0x021FCB88
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021FCBB8
	ldr r0, _021FCC80 ; =0x0220EF74
	ldr r1, _021FCC84 ; =0x0220EF64
	mov r2, #0
	mov r3, #0x69
	bl __msl_assertion_failed
_021FCBB8:
	cmp r7, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	str r6, [r7, #0x18]
	ldr r0, [r7, #0x28]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #0
	beq _021FCBF0
	cmp r5, #0
	bne _021FCBF8
_021FCBF0:
	mov r5, #0
	mov r4, r5
_021FCBF8:
	ldr r1, [r7, #0x24]
	mov r0, r7
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	mov r1, r6
	ldr r3, [ip, #0x1c]
	mov r2, r5
	add r3, r3, #1
	str r3, [ip, #0x1c]
	ldr r5, [r7, #0x28]
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021FCC74
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021FCC74
	bl FUN_021FF9CC
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCC74:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCC80: .word 0x0220EF74
_021FCC84: .word 0x0220EF64

	arm_func_start FUN_021FCC88
FUN_021FCC88: ; 0x021FCC88
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	beq _021FCCAC
	cmp r6, #0
	bne _021FCCC0
_021FCCAC:
	ldr r0, _021FCDAC ; =0x0220EF80
	ldr r1, _021FCDB0 ; =0x0220EF64
	mov r2, #0
	mov r3, #0x3d
	bl __msl_assertion_failed
_021FCCC0:
	cmp r7, #0
	beq _021FCCD0
	cmp r6, #0
	bne _021FCCDC
_021FCCD0:
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCCDC:
	ldr r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _021FCD08
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _021FCD14
_021FCD08:
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
_021FCD14:
	ldr r1, [r7, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r1, #1
	str r1, [r7, #0x1c]
	ldr r2, [r6, #0x24]
	ldr r1, [sp, #0x24]
	add r2, r2, #1
	str r2, [r6, #0x24]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr ip, [r7, #0x20]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	blx ip
	ldr r0, [r7, #0x1c]
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldr r0, [r6, #0x24]
	sub r0, r0, #1
	str r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021FCDA0
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021FCDA0
	mov r0, r7
	bl FUN_021FF9CC
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FCDA0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FCDAC: .word 0x0220EF80
_021FCDB0: .word 0x0220EF64

	arm_func_start FUN_021FCDB4
FUN_021FCDB4: ; 0x021FCDB4
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _021FCDD4
	ldr r0, _021FCE44 ; =0x0220EF5C
	ldr r1, _021FCE48 ; =0x0220EF64
	mov r2, #0
	mov r3, #0x1b
	bl __msl_assertion_failed
_021FCDD4:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x24]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	blx r1
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021FCE3C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _021FCE3C
	mov r0, r4
	bl FUN_021FF9CC
	mov r0, #0
	ldmia sp!, {r4, pc}
_021FCE3C:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FCE44: .word 0x0220EF5C
_021FCE48: .word 0x0220EF64

	arm_func_start FUN_021FCE4C
FUN_021FCE4C: ; 0x021FCE4C
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021FCE64
	bl FUN_021DD82C
_021FCE64:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021FCE74
	bl FUN_021DD82C
_021FCE74:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021FCE84
	bl FUN_021DD82C
_021FCE84:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021FCE94
	bl FUN_021EF074
_021FCE94:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021FCEA4
	bl FUN_021EF074
_021FCEA4:
	ldr r0, [r4, #0x98]
	cmp r0, #0
	beq _021FCEB4
	bl FUN_021EF074
_021FCEB4:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	beq _021FCEC4
	bl FUN_021EF074
_021FCEC4:
	mov r0, r4
	bl FUN_021DD82C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FCED0
FUN_021FCED0: ; 0x021FCED0
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #7
	addeq sp, sp, #4
	ldmeqia sp!, {lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #7
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl FUN_021EF3F4
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x10]
	bl FUN_021EEFA8
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FCF38
FUN_021FCF38: ; 0x021FCF38
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _021FCF78
	ldr r1, [r4, #0xc]
	cmp r1, #7
	ldmgeia sp!, {r4, pc}
	bl FUN_021FCED0
	mov r0, r4
	bl FUN_021FD828
	mov r0, r4
	mov r1, #0
	bl FUN_021FC9B8
	mov r0, r4
	bl FUN_021FF6BC
	ldmia sp!, {r4, pc}
_021FCF78:
	mov r1, #6
	str r1, [r4, #0xc]
	bl FUN_021FDA74
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FCF88
FUN_021FCF88: ; 0x021FCF88
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl FUN_021FD108
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_021FD004
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_021FD090
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_021FD044
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FD004
FUN_021FD004: ; 0x021FD004
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r0, #0x88]
	ldr r2, _021FD040 ; =0x00007530
	sub r1, r1, r3
	cmp r1, r2
	bls _021FD034
	bl FUN_021FDA18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FD034:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_021FD040: .word 0x00007530

	arm_func_start FUN_021FD044
FUN_021FD044: ; 0x021FD044
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0, #0x90]
	cmp r2, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	ldr r2, [r0, #0x94]
	sub r1, r1, r2
	cmp r1, #0x64
	bls _021FD084
	bl FUN_021FD8E4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FD084:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FD090
FUN_021FD090: ; 0x021FD090
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #0x60]
	mov r6, r1
	bl FUN_021EF06C
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _021FD0FC
_021FD0B8:
	ldr r0, [r7, #0x60]
	mov r1, r5
	bl FUN_021EEFFC
	mov r1, r0
	ldr r0, [r1, #0xc]
	sub r0, r6, r0
	cmp r0, #0x3e8
	bls _021FD0F0
	mov r0, r7
	bl FUN_021FD760
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FD0F0:
	add r5, r5, #1
	cmp r5, r4
	blt _021FD0B8
_021FD0FC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021FD108
FUN_021FD108: ; 0x021FD108
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, #5
	bge _021FD1A0
	ldr r0, [r4, #0x10]
	mov r3, #0
	cmp r0, #0
	beq _021FD14C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _021FD168
	ldr r0, [r4, #0x1c]
	sub r0, r1, r0
	cmp r0, r2
	movhi r3, #1
	b _021FD168
_021FD14C:
	cmp r2, #4
	bge _021FD168
	ldr r2, [r4, #0x1c]
	ldr r0, _021FD1A8 ; =0x0000EA60
	sub r1, r1, r2
	cmp r1, r0
	movhi r3, #1
_021FD168:
	cmp r3, #0
	beq _021FD1A0
	mov r0, r4
	bl FUN_021FD828
	mov r0, r4
	bl FUN_021FCED0
	mov r2, #0
	mov r0, r4
	mov r3, r2
	mov r1, #6
	bl FUN_021FCB88
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FD1A0:
	mov r0, #1
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD1A8: .word 0x0000EA60

	arm_func_start FUN_021FD1AC
FUN_021FD1AC: ; 0x021FD1AC
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	str r2, [sp]
	mov r3, r1
	ldrh r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4]
	bl FUN_021FF50C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021F025C
	str r0, [r4, #0x88]
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FD1F4
FUN_021FD1F4: ; 0x021FD1F4
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmneia sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0xc
	add r1, sp, #0x10
	bl FUN_021FFCDC
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r4
	bl FUN_021FDAD0
	mov r0, #6
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FD24C
FUN_021FD24C: ; 0x021FD24C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #0x14]
	mov r4, r1
	cmp r2, #0
	movne r0, #0
	addne sp, sp, #4
	strne r0, [r5, #0x14]
	ldmneia sp!, {r4, r5, pc}
	mov r2, #0
	str r2, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, #4
	addne sp, sp, #4
	movne r0, r2
	ldmneia sp!, {r4, r5, pc}
	bl FUN_021FDB44
	mov r0, #5
	cmp r4, #0
	str r0, [r5, #0xc]
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FD2B8
FUN_021FD2B8: ; 0x021FD2B8
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r3
	bl FUN_021FFCDC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ble _021FD31C
	bl FUN_021DD860
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x38]
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl memcpy
	ldr r0, [sp, #0x38]
	str r0, [r5, #0x3c]
_021FD31C:
	cmp r4, #0
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	add r0, sp, #0
	bl FUN_021FC07C
	add r1, sp, #0
	add r0, r5, #0x68
	bl FUN_021FBF44
	add r1, sp, #0
	mov r0, r5
	bl FUN_021FDCB4
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FD364
FUN_021FD364: ; 0x021FD364
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_021FF790
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	mov r1, #2
	str r1, [r0, #0xc]
	ldr r1, [r4]
	mov r0, #0
	str r0, [r1, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FD394
FUN_021FD394: ; 0x021FD394
	stmdb sp!, {r4, lr}
	mov r4, r1
	bl FUN_021FF790
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4]
	mov r2, #1
	str r2, [r1, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FD3C4
FUN_021FD3C4: ; 0x021FD3C4
	stmdb sp!, {r4, lr}
	movs r4, r0
	bne _021FD3E4
	ldr r0, _021FD3EC ; =0x0220EF98
	ldr r1, _021FD3F0 ; =0x0220EFA4
	ldr r3, _021FD3F4 ; =0x000001A3
	mov r2, #0
	bl __msl_assertion_failed
_021FD3E4:
	ldr r0, [r4, #0x40]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD3EC: .word 0x0220EF98
_021FD3F0: .word 0x0220EFA4
_021FD3F4: .word 0x000001A3

	arm_func_start FUN_021FD3F8
FUN_021FD3F8: ; 0x021FD3F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r0
	mov r4, r1
	bne _021FD420
	ldr r0, _021FD42C ; =0x0220EF98
	ldr r1, _021FD430 ; =0x0220EFA4
	mov r2, #0
	mov r3, #0x19c
	bl __msl_assertion_failed
_021FD420:
	str r4, [r5, #0x40]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FD42C: .word 0x0220EF98
_021FD430: .word 0x0220EFA4

	arm_func_start FUN_021FD434
FUN_021FD434: ; 0x021FD434
	str r1, [r0, #0x30]
	bx lr

	arm_func_start FUN_021FD43C
FUN_021FD43C: ; 0x021FD43C
	ldr r0, [r0]
	bx lr

	arm_func_start FUN_021FD444
FUN_021FD444: ; 0x021FD444
	ldr r1, [r0, #0x54]
	ldr r0, [r0, #0x58]
	sub r0, r1, r0
	bx lr

	arm_func_start FUN_021FD454
FUN_021FD454: ; 0x021FD454
	ldrh r0, [r0, #8]
	bx lr

	arm_func_start FUN_021FD45C
FUN_021FD45C: ; 0x021FD45C
	ldr ip, _021FD470 ; =FUN_021EF2E4
	ldr r0, [r0, #0xc]
	ldr r1, _021FD474 ; =FUN_021FD478
	mov r2, #0
	bx ip
	.align 2, 0
_021FD470: .word FUN_021EF2E4
_021FD474: .word FUN_021FD478

	arm_func_start FUN_021FD478
FUN_021FD478: ; 0x021FD478
	ldr ip, _021FD484 ; =FUN_021FD488
	ldr r0, [r0]
	bx ip
	.align 2, 0
_021FD484: .word FUN_021FD488

	arm_func_start FUN_021FD488
FUN_021FD488: ; 0x021FD488
	ldr ip, _021FD494 ; =FUN_021FCF38
	mov r1, #1
	bx ip
	.align 2, 0
_021FD494: .word FUN_021FCF38

	arm_func_start FUN_021FD498
FUN_021FD498: ; 0x021FD498
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0xc]
	mov r4, r3
	cmp r0, #5
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0x14
	add r1, sp, #0x18
	bl FUN_021FFCDC
	ldr r0, [r5, #0x98]
	bl FUN_021EF06C
	cmp r0, #0
	beq _021FD508
	str r4, [sp]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	mov r0, r5
	mov r1, #0
	bl FUN_021FC7D4
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_021FD508:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	mov r0, r5
	mov r3, r4
	bl FUN_021FD738
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FD52C
FUN_021FD52C: ; 0x021FD52C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	mov r0, r2
	add r1, sp, #8
	add r2, sp, #0
	mov r4, r3
	bl FUN_021FFD28
	cmp r0, #0
	beq _021FD570
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _021FD570
	ldrh r3, [sp]
	cmp r3, #0
	bne _021FD57C
_021FD570:
	add sp, sp, #0x10
	mov r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD57C:
	mov r1, r2, lsr #0x18
	mov r0, r2, lsr #8
	mov r7, r2, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov ip, r2, lsl #0x18
	orr r0, r1, r0
	and r7, r7, #0xff0000
	and r1, ip, #0xff000000
	orr r0, r7, r0
	orr r0, r1, r0
	and r0, r0, #0xe0000000
	cmp r0, #-0x20000000
	addeq sp, sp, #0x10
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, sp, #4
	mov r0, r6
	bl FUN_021FD394
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x28]
	str r1, [r0, #0x20]
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x30]
	mov r1, r4
	bl FUN_021FD2B8
	movs r4, r0
	beq _021FD610
	ldr r0, [sp, #4]
	bl FUN_021FF6BC
	add sp, sp, #0x10
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD610:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _021FD634
	cmp r5, #0
	ldrne r0, [sp, #4]
	add sp, sp, #0x10
	strne r0, [r5]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD634:
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x24]
	add r0, r0, #1
	str r0, [r1, #0x24]
	mov r4, #0
	mov r7, #1
_021FD64C:
	mov r0, r6
	bl FUN_021FD6D4
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #5
	movge r8, r7
	movlt r8, r4
	cmp r8, #0
	bne _021FD678
	mov r0, r7
	bl FUN_021F0250
_021FD678:
	cmp r8, #0
	beq _021FD64C
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x24]
	sub r0, r0, #1
	str r0, [r1, #0x24]
	ldr r1, [sp, #4]
	ldr r0, [r1, #0xc]
	cmp r0, #5
	streq r1, [r5]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_021FD6B0
FUN_021FD6B0: ; 0x021FD6B0
	ldr ip, _021FD6B8 ; =FUN_021FD1F4
	bx ip
	.align 2, 0
_021FD6B8: .word FUN_021FD1F4

	arm_func_start FUN_021FD6BC
FUN_021FD6BC: ; 0x021FD6BC
	ldr ip, _021FD6C4 ; =FUN_021FD24C
	bx ip
	.align 2, 0
_021FD6C4: .word FUN_021FD24C

	arm_func_start FUN_021FD6C8
FUN_021FD6C8: ; 0x021FD6C8
	ldr ip, _021FD6D0 ; =FUN_021FF9C4
	bx ip
	.align 2, 0
_021FD6D0: .word FUN_021FF9C4

	arm_func_start FUN_021FD6D4
FUN_021FD6D4: ; 0x021FD6D4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021FDF60
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FF470
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FF42C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FD704
FUN_021FD704: ; 0x021FD704
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021FD45C
	mov r0, r4
	bl FUN_021FF9CC
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FD71C
FUN_021FD71C: ; 0x021FD71C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr ip, [sp, #8]
	str ip, [sp]
	bl FUN_021FFA10
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FD738
FUN_021FD738: ; 0x021FD738
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r3, #0
	beq _021FD754
	bl FUN_021FDD24
	add sp, sp, #4
	ldmfd sp!, {pc}
_021FD754:
	bl FUN_021FD94C
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FD760
FUN_021FD760: ; 0x021FD760
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, r1
	ldr r1, [r5]
	ldrh r2, [r4, #0x66]
	ldr r0, [r4, #0x50]
	add r1, r1, #5
	bl FUN_021FF3BC
	ldr r3, [r4, #0x50]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	mov r0, r4
	add r1, r3, r1
	bl FUN_021FD1AC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0x88]
	str r0, [r5, #0xc]
	ldr r0, [r5]
	ldr r1, [r4, #0x50]
	add r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	ldreq r0, [r4, #0x88]
	streq r0, [r4, #0x8c]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FD7DC
FUN_021FD7DC: ; 0x021FD7DC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r4, _021FD824 ; =0x0220EFB0
	add r3, sp, #4
	ldrb r5, [r4]
	ldrb r4, [r4, #1]
	mov lr, #0x68
	mov ip, #3
	strb r5, [r3]
	strb r4, [r3, #1]
	strb lr, [sp, #6]
	str ip, [sp]
	bl FUN_021FF50C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FD824: .word 0x0220EFB0

	arm_func_start FUN_021FD828
FUN_021FD828: ; 0x021FD828
	ldr ip, _021FD840 ; =FUN_021FD7DC
	mov r1, r0
	ldrh r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_021FD840: .word FUN_021FD7DC

	arm_func_start FUN_021FD844
FUN_021FD844: ; 0x021FD844
	ldr ip, _021FD854 ; =FUN_021FD1AC
	mov r3, #0x67
	strb r3, [r1, #2]
	bx ip
	.align 2, 0
_021FD854: .word FUN_021FD1AC

	arm_func_start FUN_021FD858
FUN_021FD858: ; 0x021FD858
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r3, _021FD8E0 ; =0x0220EFB0
	mov r4, r0
	ldrb ip, [r3]
	ldrb r3, [r3, #1]
	add r0, sp, #0
	mov r7, r1
	strb ip, [r0]
	mov r6, r2
	strb r3, [r0, #1]
	mov r3, #0x65
	mov r2, r7
	mov r5, #0
	mov r1, #3
	strb r3, [sp, #2]
	bl FUN_021FF3BC
	cmp r7, r6
	add r5, r5, #5
	beq _021FD8BC
	add r0, sp, #0
	mov r1, r5
	mov r2, r6
	bl FUN_021FF3BC
	add r5, r5, #2
_021FD8BC:
	add r1, sp, #0
	mov r0, r4
	mov r2, r5
	bl FUN_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FD8E0: .word 0x0220EFB0

	arm_func_start FUN_021FD8E4
FUN_021FD8E4: ; 0x021FD8E4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021FD948 ; =0x0220EFB0
	mov r4, r0
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, sp, #0
	mov r1, #0x64
	strb r3, [r0]
	strb r2, [r0, #1]
	strb r1, [sp, #2]
	ldrh r2, [r4, #0x66]
	mov r1, #3
	bl FUN_021FF3BC
	add r1, sp, #0
	mov r0, r4
	mov r2, #5
	bl FUN_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #0
	strne r0, [r4, #0x90]
	movne r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FD948: .word 0x0220EFB0

	arm_func_start FUN_021FD94C
FUN_021FD94C: ; 0x021FD94C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	cmp r6, #2
	blt _021FD97C
	ldr r1, _021FDA14 ; =0x0220EFB0
	mov r0, r7
	mov r2, #2
	bl memcmp
	cmp r0, #0
	beq _021FD99C
_021FD97C:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FD99C:
	add r5, r6, #2
	add r0, r8, #0x50
	bl FUN_021FC45C
	cmp r0, r5
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [r8, #0x50]
	ldr r3, [r8, #0x58]
	ldr r1, _021FDA14 ; =0x0220EFB0
	add r0, r8, #0x50
	mov r2, #2
	add r4, ip, r3
	bl FUN_021FC304
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x50
	bl FUN_021FC304
	mov r0, r8
	mov r1, r4
	mov r2, r5
	bl FUN_021FD1AC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r2, r5
	add r0, r8, #0x50
	mvn r1, #0
	bl FUN_021FC268
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_021FDA14: .word 0x0220EFB0

	arm_func_start FUN_021FDA18
FUN_021FDA18: ; 0x021FDA18
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r1, #7
	add r3, sp, #0
	mov r2, r1
	mov r4, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FDA74
FUN_021FDA74: ; 0x021FDA74
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r1, #6
	mov r2, #7
	mov r4, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FDAD0
FUN_021FDAD0: ; 0x021FDAD0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #5
	mov r6, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl FUN_021FC304
	mov r0, r6
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FDB44
FUN_021FDB44: ; 0x021FDB44
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r1, #4
	mov r2, #7
	mov r4, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FDBA0
FUN_021FDBA0: ; 0x021FDBA0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r3
	mov r6, r1
	mov r5, r2
	add r3, sp, #0
	add r2, r4, #0x27
	mov r1, #3
	mov r7, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x50
	mov r2, #0x20
	bl FUN_021FC304
	mov r1, r5
	mov r2, r4
	add r0, r7, #0x50
	bl FUN_021FC304
	mov r0, r7
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021FDC28
FUN_021FDC28: ; 0x021FDC28
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r4, r2
	add r3, sp, #0
	mov r1, #2
	mov r2, #0x47
	mov r6, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	add r0, r6, #0x50
	mov r2, #0x20
	bl FUN_021FC304
	mov r1, r4
	add r0, r6, #0x50
	mov r2, #0x20
	bl FUN_021FC304
	mov r0, r6
	bl FUN_021FDD98
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	moveq r0, #0
	movne r0, #1
	strne r1, [r6, #0x8c]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FDCB4
FUN_021FDCB4: ; 0x021FDCB4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	add r3, sp, #0
	mov r1, #1
	mov r2, #0x27
	mov r5, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x50
	mov r2, #0x20
	bl FUN_021FC304
	mov r0, r5
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FDD24
FUN_021FDD24: ; 0x021FDD24
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #0
	mov r6, r0
	bl FUN_021FDE18
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl FUN_021FC304
	mov r0, r6
	bl FUN_021FDD98
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FDD98
FUN_021FDD98: ; 0x021FDD98
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x60]
	bl FUN_021EF06C
	mov r4, r0
	cmp r4, #0
	bgt _021FDDCC
	ldr r0, _021FDE0C ; =0x0220EFBC
	ldr r1, _021FDE10 ; =0x0220EFC4
	ldr r3, _021FDE14 ; =0x00000475
	mov r2, #0
	bl __msl_assertion_failed
_021FDDCC:
	ldr r0, [r5, #0x60]
	sub r1, r4, #1
	bl FUN_021EEFFC
	ldr r3, [r5, #0x50]
	ldr r1, [r0]
	ldr r2, [r0, #4]
	mov r0, r5
	add r1, r3, r1
	bl FUN_021FD1AC
	cmp r0, #0
	moveq r0, #0
	movne r0, #0
	strne r0, [r5, #0x90]
	movne r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FDE0C: .word 0x0220EFBC
_021FDE10: .word 0x0220EFC4
_021FDE14: .word 0x00000475

	arm_func_start FUN_021FDE18
FUN_021FDE18: ; 0x021FDE18
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	mov r5, r2
	add r0, r7, #0x50
	mov r6, r1
	mov r4, r3
	bl FUN_021FC45C
	cmp r0, r5
	bge _021FDE60
	mov r0, r7
	bl FUN_021FF2D8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	strne r0, [r4]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FDE60:
	ldrh r1, [r7, #0x64]
	mov r0, r7
	mov r2, r5
	bl FUN_021FDEEC
	cmp r0, #0
	bne _021FDE98
	mov r0, r7
	bl FUN_021FF2D8
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	strne r0, [r4]
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FDE98:
	ldr r1, _021FDEE8 ; =0x0220EFB0
	add r0, r7, #0x50
	mov r2, #2
	bl FUN_021FC304
	add r0, r7, #0x50
	and r1, r6, #0xff
	bl FUN_021FC404
	ldrh r1, [r7, #0x64]
	add r0, r7, #0x50
	add r2, r1, #1
	strh r2, [r7, #0x64]
	bl FUN_021FC390
	ldrh r1, [r7, #0x66]
	add r0, r7, #0x50
	bl FUN_021FC390
	mov r0, #0
	str r0, [r4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FDEE8: .word 0x0220EFB0

	arm_func_start FUN_021FDEEC
FUN_021FDEEC: ; 0x021FDEEC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r3, #0
	str r3, [r4]
	str r3, [r4, #4]
	str r3, [r4, #8]
	mov r5, r0
	str r3, [r4, #0xc]
	ldr r0, [r5, #0x58]
	str r0, [sp]
	str r2, [sp, #4]
	strh r1, [sp, #8]
	bl FUN_021F025C
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x60]
	bl FUN_021EF06C
	mov r4, r0
	ldr r0, [r5, #0x60]
	add r1, sp, #0
	bl FUN_021EEFA8
	ldr r0, [r5, #0x60]
	bl FUN_021EF06C
	add r1, r4, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FDF60
FUN_021FDF60: ; 0x021FDF60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _021FE0AC ; =0x000005F4
	sub sp, sp, ip
	mov sl, r0
	ldr r0, [sl]
	bl FUN_021EFF2C
	cmp r0, #0
	beq _021FE09C
	ldr fp, _021FE0B0 ; =0x000005DC
	add r6, sp, #0x14
	add r8, sp, #8
	add r7, sp, #0x10
	mov sb, #8
	mov r5, #0
	mvn r4, #0xe
_021FDF9C:
	str sb, [sp, #0x10]
	str r8, [sp]
	str r7, [sp, #4]
	ldr r0, [sl]
	mov r1, r6
	mov r2, fp
	mov r3, r5
	bl FUN_021EFC40
	mov r2, r0
	mvn r0, #0
	cmp r2, r0
	bne _021FE044
	ldr r0, [sl]
	bl FUN_021EFB28
	cmp r0, r4
	bne _021FE020
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_021FE0B4
	cmp r0, #0
	bne _021FE08C
	ldr ip, _021FE0AC ; =0x000005F4
	mov r0, #0
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE020:
	mvn r1, #0x22
	cmp r0, r1
	beq _021FE08C
	mov r0, sl
	bl FUN_021FF3F0
	ldr ip, _021FE0AC ; =0x000005F4
	mov r0, #0
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE044:
	ldrh ip, [sp, #0xa]
	mov r0, sl
	mov r1, r6
	mov r3, ip, asr #8
	mov ip, ip, lsl #8
	and r3, r3, #0xff
	and ip, ip, #0xff00
	orr r3, r3, ip
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp]
	ldr r3, [sp, #0xc]
	bl FUN_021FE1B4
	cmp r0, #0
	ldreq ip, _021FE0AC ; =0x000005F4
	moveq r0, #0
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021FE08C:
	ldr r0, [sl]
	bl FUN_021EFF2C
	cmp r0, #0
	bne _021FDF9C
_021FE09C:
	mov r0, #1
	ldr ip, _021FE0AC ; =0x000005F4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_021FE0AC: .word 0x000005F4
_021FE0B0: .word 0x000005DC

	arm_func_start FUN_021FE0B4
FUN_021FE0B4: ; 0x021FE0B4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_021FFC3C
	ldr r1, [r7, #0x2c]
	mov r4, r0
	cmp r1, #0
	beq _021FE118
	mov r0, #1
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	str ip, [sp, #0xc]
	bl FUN_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FE118:
	cmp r4, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FE188
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021FE158
	bl FUN_021F025C
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	sub r0, r0, r2
	cmp r0, r1
	bhs _021FE164
_021FE158:
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FE164:
	mov r0, r4
	mov r1, #6
	mov r2, #1
	bl FUN_021FF318
	cmp r0, #0
	bne _021FE1A8
	add sp, sp, #0x14
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FE188:
	mov r0, r4
	mov r1, #2
	mov r2, #1
	bl FUN_021FF318
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
_021FE1A8:
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021FE1B4
FUN_021FE1B4: ; 0x021FE1B4
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	ldr r5, [sp, #0x38]
	mov r6, r3
	mov r8, r1
	mov r7, r2
	mov r1, r6
	mov r2, r5
	mov sb, r0
	bl FUN_021FFC3C
	str r0, [sp, #0x10]
	ldr r0, [sb, #0x2c]
	cmp r0, #0
	beq _021FE224
	mov r0, #0
	str r0, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl FUN_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE224:
	cmp r7, #2
	ble _021FE248
	ldr r1, _021FE470 ; =0x0220EFB0
	mov r0, r8
	mov r2, #2
	bl memcmp
	cmp r0, #0
	moveq r4, #1
	beq _021FE24C
_021FE248:
	mov r4, #0
_021FE24C:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021FE354
	add ip, sp, #0x14
	str r7, [sp]
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	str ip, [sp, #4]
	bl FUN_021FC4A4
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r4, #0
	beq _021FE2B0
	ldrb r0, [r8, #2]
	cmp r0, #1
	beq _021FE2F0
_021FE2B0:
	cmp r4, #0
	beq _021FE2C4
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021FE2E4
_021FE2C4:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl FUN_021FD7DC
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE2E4:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE2F0:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r1, sp, #0x10
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl FUN_021FD364
	cmp r0, #0
	beq _021FE354
	cmp r0, #5
	beq _021FE348
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl FUN_021FD7DC
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE348:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE354:
	ldr r5, [sp, #0x10]
	ldr r0, [r5, #0xc]
	cmp r0, #7
	bne _021FE39C
	cmp r4, #0
	beq _021FE378
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021FE390
_021FE378:
	mov r0, r5
	bl FUN_021FD828
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE390:
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE39C:
	cmp r4, #0
	beq _021FE3CC
	cmp r7, #4
	blt _021FE3CC
	ldr r1, _021FE470 ; =0x0220EFB0
	add r0, r8, #2
	mov r2, #2
	bl memcmp
	cmp r0, #0
	addeq r8, r8, #2
	subeq r7, r7, #2
	moveq r4, #0
_021FE3CC:
	cmp r4, #0
	bne _021FE3F8
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl FUN_021FF134
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE3F8:
	ldrb r1, [r8, #2]
	cmp r1, #0
	bge _021FE420
	mov r0, r5
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE420:
	cmp r1, #8
	bge _021FE44C
	mov r0, r5
	mov r2, r8
	mov r3, r7
	bl FUN_021FE780
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x1c
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE44C:
	mov r0, r5
	mov r2, r8
	mov r3, r7
	bl FUN_021FE474
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FE470: .word 0x0220EFB0

	arm_func_start FUN_021FE474
FUN_021FE474: ; 0x021FE474
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0x64
	add lr, r2, #3
	sub ip, r3, #3
	bne _021FE4AC
	mov r1, lr
	mov r2, ip
	bl FUN_021FE734
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4AC:
	cmp r1, #0x65
	bne _021FE4D4
	mov r1, lr
	mov r2, ip
	bl FUN_021FE648
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4D4:
	cmp r1, #0x66
	bne _021FE4FC
	mov r1, r2
	mov r2, r3
	bl FUN_021FE63C
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE4FC:
	cmp r1, #0x67
	bne _021FE524
	mov r1, lr
	mov r2, ip
	bl FUN_021FE590
	cmp r0, #0
	bne _021FE540
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FE524:
	cmp r1, #0x68
	bne _021FE540
	bl FUN_021FE54C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FE540:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FE54C
FUN_021FE54C: ; 0x021FE54C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r0, #0xc]
	cmp r1, #7
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {pc}
	cmp r1, #6
	moveq r2, #0
	movne r2, #1
	mov r1, #2
	bl FUN_021FF318
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FE590
FUN_021FE590: ; 0x021FE590
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x34]
	mov r5, r1
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	cmp r2, #8
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	ldr r1, _021FE638 ; =0x0220EFB4
	mov r0, r5
	mov r2, #4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r4, r5, pc}
	add r2, r5, #4
	ldrb r1, [r5, #4]
	ldrb r0, [r2, #1]
	add r3, sp, #0
	strb r1, [r3]
	strb r0, [r3, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	bl FUN_021F025C
	mov r2, r0
	ldr r1, [sp]
	mov r0, r4
	sub r1, r2, r1
	bl FUN_021FC8E4
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FE638: .word 0x0220EFB4

	arm_func_start FUN_021FE63C
FUN_021FE63C: ; 0x021FE63C
	ldr ip, _021FE644 ; =FUN_021FD844
	bx ip
	.align 2, 0
_021FE644: .word FUN_021FD844

	arm_func_start FUN_021FE648
FUN_021FE648: ; 0x021FE648
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r4, r0
	mov r0, r6
	mov r1, #0
	mov r5, r2
	bl FUN_021FF3D0
	mov sb, r0
	cmp r5, #2
	moveq r8, sb
	beq _021FE6B0
	cmp r5, #4
	bne _021FE694
	mov r0, r6
	mov r1, #2
	bl FUN_021FF3D0
	mov r8, r0
	b _021FE6B0
_021FE694:
	mov r0, r4
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE6B0:
	ldr r0, [r4, #0x60]
	bl FUN_021EF06C
	mov r7, r0
	cmp r7, #0
	mov r6, #0
	ble _021FE728
_021FE6C8:
	ldr r0, [r4, #0x60]
	mov r1, r6
	bl FUN_021EEFFC
	mov r5, r0
	ldrh r0, [r5, #8]
	mov r1, sb
	bl FUN_021FF3AC
	cmp r0, #0
	blt _021FE71C
	ldrh r0, [r5, #8]
	mov r1, r8
	bl FUN_021FF3AC
	cmp r0, #0
	bgt _021FE71C
	mov r0, r4
	mov r1, r5
	bl FUN_021FD760
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FE71C:
	add r6, r6, #1
	cmp r6, r7
	blt _021FE6C8
_021FE728:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021FE734
FUN_021FE734: ; 0x021FE734
	stmdb sp!, {r4, lr}
	mov r4, r0
	cmp r2, #2
	beq _021FE758
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FE758:
	mov r0, r1
	mov r1, #0
	bl FUN_021FF3D0
	mov r1, r0
	mov r0, r4
	bl FUN_021FF1C8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FE780
FUN_021FE780: ; 0x021FE780
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r3
	mov r4, r0
	mov r8, r1
	mov r7, r2
	cmp r6, #7
	bge _021FE7B8
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE7B8:
	mov r0, r7
	mov r1, #3
	bl FUN_021FF3D0
	mov r5, r0
	mov r0, r7
	mov r1, #5
	bl FUN_021FF3D0
	mov r1, r0
	mov r0, r4
	bl FUN_021FF1C8
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r1, [r4, #0x66]
	cmp r5, r1
	bne _021FE844
	mov r0, r4
	bl FUN_021FE8CC
	mov r0, r4
	mov r1, r8
	add r2, r7, #7
	sub r3, r6, #7
	bl FUN_021FEBD0
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_021FE8F4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE844:
	mov r0, r5
	bl FUN_021FF3AC
	cmp r0, #0
	bge _021FE868
	mov r0, r4
	bl FUN_021FE8CC
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FE868:
	sub r0, r6, #7
	str r0, [sp]
	add ip, sp, #8
	mov r0, r4
	mov r1, r8
	mov r2, r5
	add r3, r7, #7
	str ip, [sp, #4]
	bl FUN_021FEA0C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021FE8C0
	mov r0, r4
	bl FUN_021FF2D8
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_021FE8C0:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_021FE8CC
FUN_021FE8CC: ; 0x021FE8CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #1
	str r0, [r4, #0x90]
	bl FUN_021F025C
	str r0, [r4, #0x94]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FE8F4
FUN_021FE8F4: ; 0x021FE8F4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
_021FE8FC:
	ldr r0, [r6, #0x5c]
	bl FUN_021EF06C
	subs r5, r0, #1
	bmi _021FE970
_021FE90C:
	ldr r0, [r6, #0x5c]
	mov r1, r5
	bl FUN_021EEFFC
	mov r4, r0
	ldrh r1, [r4, #0xc]
	ldrh r0, [r6, #0x66]
	cmp r1, r0
	bne _021FE968
	ldr ip, [r6, #0x44]
	ldr r2, [r4]
	ldr r1, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r6
	add r2, ip, r2
	bl FUN_021FEBD0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_021FE978
	b _021FE8FC
_021FE968:
	subs r5, r5, #1
	bpl _021FE90C
_021FE970:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FE978
FUN_021FE978: ; 0x021FE978
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #0x5c]
	ldr r7, [r1]
	ldr r6, [r1, #4]
	mov r1, r2
	mov r8, #0
	bl FUN_021EED84
	ldr r0, [sb, #0x5c]
	bl FUN_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, r8
	ble _021FE9F4
_021FE9B4:
	ldr r0, [sb, #0x5c]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r1, [r0]
	cmp r1, r7
	ble _021FE9E8
	sub r1, r1, r6
	str r1, [r0]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	cmp r8, r0
	movle r8, r0
_021FE9E8:
	add r4, r4, #1
	cmp r4, r5
	blt _021FE9B4
_021FE9F4:
	mov r1, r7
	mov r2, r6
	add r0, sb, #0x44
	bl FUN_021FC268
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_021FEA0C
FUN_021FEA0C: ; 0x021FEA0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sb, r0
	ldr r0, [sb, #0x5c]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x34]
	bl FUN_021EF06C
	mov r4, r0
	cmp r4, #0
	mov sl, #0
	ble _021FEA84
_021FEA40:
	ldr r0, [sb, #0x5c]
	mov r1, sl
	bl FUN_021EEFFC
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	moveq r0, #0
	streq r0, [r5]
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r1, r7
	bl FUN_021FF3AC
	cmp r0, #0
	bgt _021FEA84
	add sl, sl, #1
	cmp sl, r4
	blt _021FEA40
_021FEA84:
	add r0, sb, #0x44
	bl FUN_021FC45C
	ldr r2, [sp, #0x30]
	cmp r0, r2
	movlt r0, #1
	addlt sp, sp, #0x10
	strlt r0, [r5]
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [sb, #0x4c]
	add r1, sp, #0
	str r2, [sp, #4]
	str r8, [sp, #8]
	strh r7, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sb, #0x5c]
	ldr r2, _021FEBB8 ; =FUN_021FEBBC
	bl FUN_021EEE74
	ldr r0, [sb, #0x5c]
	bl FUN_021EF06C
	add r1, r4, #1
	cmp r1, r0
	movne r0, #1
	addne sp, sp, #0x10
	strne r0, [r5]
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r2, [sp, #0x30]
	mov r1, r6
	add r0, sb, #0x44
	bl FUN_021FC304
	cmp r4, #0
	bne _021FEB2C
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	ldrh r1, [sb, #0x66]
	mov r0, sb
	mov r2, r2, lsr #0x10
	bl FUN_021FD858
	cmp r0, #0
	bne _021FEBA4
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FEB2C:
	ldr r0, [sb, #0x5c]
	mov r1, r4
	bl FUN_021EEFFC
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	bne _021FEBA4
	ldr r0, [sb, #0x5c]
	sub r1, r4, #1
	bl FUN_021EEFFC
	mov r4, r0
	ldrh r1, [r4, #0xc]
	mov r0, r7
	bl FUN_021FF3AC
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bls _021FEBA4
	ldrh r1, [r4, #0xc]
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	add r0, r1, #1
	mov r1, r0, lsl #0x10
	mov r0, sb
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_021FD858
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021FEBA4:
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_021FEBB8: .word FUN_021FEBBC

	arm_func_start FUN_021FEBBC
FUN_021FEBBC: ; 0x021FEBBC
	ldr ip, _021FEBCC ; =FUN_021FF3AC
	ldrh r0, [r0, #0xc]
	ldrh r1, [r1, #0xc]
	bx ip
	.align 2, 0
_021FEBCC: .word FUN_021FF3AC

	arm_func_start FUN_021FEBD0
FUN_021FEBD0: ; 0x021FEBD0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrh ip, [r0, #0x66]
	cmp r1, #0
	add ip, ip, #1
	strh ip, [r0, #0x66]
	bne _021FEC0C
	mov r1, r2
	mov r2, r3
	bl FUN_021FF084
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC0C:
	cmp r1, #1
	bne _021FEC34
	mov r1, r2
	mov r2, r3
	bl FUN_021FEFEC
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC34:
	cmp r1, #2
	bne _021FEC5C
	mov r1, r2
	mov r2, r3
	bl FUN_021FEF10
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC5C:
	cmp r1, #3
	bne _021FEC84
	mov r1, r2
	mov r2, r3
	bl FUN_021FEDFC
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FEC84:
	cmp r1, #4
	bne _021FECA4
	bl FUN_021FEDA4
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FECA4:
	cmp r1, #5
	bne _021FECCC
	mov r1, r2
	mov r2, r3
	bl FUN_021FED38
	cmp r0, #0
	bne _021FECE8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_021FECCC:
	cmp r1, #6
	bne _021FECE8
	bl FUN_021FECF4
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {pc}
_021FECE8:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FECF4
FUN_021FECF4: ; 0x021FECF4
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, #2
	cmp r0, #6
	moveq r2, #0
	movne r2, #1
	mov r0, r4
	bl FUN_021FF318
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FED38
FUN_021FED38: ; 0x021FED38
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #1
	beq _021FED68
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FED68:
	bl FUN_021FCED0
	mov r0, r6
	bl FUN_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #2
	bl FUN_021FCB88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FEDA4
FUN_021FEDA4: ; 0x021FEDA4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, [r0, #0xc]
	cmp r1, #1
	beq _021FEDD0
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmfd sp!, {pc}
_021FEDD0:
	mov r1, #0
	mov ip, #5
	mov r2, r1
	mov r3, r1
	str ip, [r0, #0xc]
	bl FUN_021FCB88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FEDFC
FUN_021FEDFC: ; 0x021FEDFC
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #3
	beq _021FEE34
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE34:
	cmp r4, #0x20
	bge _021FEE54
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE54:
	mov r0, r5
	add r1, r6, #0x68
	bl FUN_021FBF08
	cmp r0, #0
	bne _021FEE84
	mov r0, r6
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x10
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FEE84:
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021FEEC0
	mov r0, r6
	bl FUN_021FD828
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_021FCED0
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021FEEC0:
	mov r0, #4
	str r0, [r6, #0xc]
	bl FUN_021F025C
	ldr r2, [r6, #0x8c]
	add r1, r5, #0x20
	sub r0, r0, r2
	str r0, [sp]
	str r1, [sp, #4]
	sub r0, r4, #0x20
	str r0, [sp, #8]
	ldrh r3, [r6, #4]
	ldr r0, [r6, #8]
	ldr r2, [r6]
	mov r1, r6
	bl FUN_021FCC88
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FEF10
FUN_021FEF10: ; 0x021FEF10
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	ldr r3, [r5, #0xc]
	mov r4, r1
	cmp r3, #0
	beq _021FEF44
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF44:
	cmp r2, #0x40
	bge _021FEF64
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF64:
	mov r0, r4
	add r1, r5, #0x68
	bl FUN_021FBF08
	cmp r0, #0
	bne _021FEF94
	mov r0, r5
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x24
	moveq r0, #0
	ldmia sp!, {r4, r5, pc}
_021FEF94:
	add r0, sp, #0
	add r1, r4, #0x20
	bl FUN_021FBF44
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	add r1, sp, #0
	mov r0, r5
	bl FUN_021FDBA0
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021FEFDC
	bl FUN_021DD82C
	mov r0, #0
	str r0, [r5, #0x38]
_021FEFDC:
	mov r0, #1
	str r0, [r5, #0xc]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FEFEC
FUN_021FEFEC: ; 0x021FEFEC
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x40
	mov r4, r0
	ldr r3, [r4, #0xc]
	cmp r3, #2
	beq _021FF01C
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FF01C:
	cmp r2, #0x20
	bge _021FF03C
	bl FUN_021FF304
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021FF03C:
	add r0, sp, #0
	bl FUN_021FBF44
	add r0, sp, #0x20
	bl FUN_021FC07C
	add r1, sp, #0x20
	add r0, r4, #0x68
	bl FUN_021FBF44
	add r1, sp, #0
	add r2, sp, #0x20
	mov r0, r4
	bl FUN_021FDC28
	cmp r0, #0
	moveq r0, #0
	movne r0, #3
	strne r0, [r4, #0xc]
	movne r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FF084
FUN_021FF084: ; 0x021FF084
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #5
	beq _021FF0C4
	cmp r3, #6
	beq _021FF0C4
	bl FUN_021FF304
	cmp r0, #0
	bne _021FF128
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF0C4:
	ldr r0, [r6, #0x9c]
	bl FUN_021EF06C
	cmp r0, #0
	beq _021FF104
	mov ip, #1
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	str ip, [sp]
	bl FUN_021FC6C4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF104:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #1
	bl FUN_021FCA8C
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_021FF128:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FF134
FUN_021FF134: ; 0x021FF134
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r0, #5
	beq _021FF164
	cmp r0, #6
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_021FF164:
	ldr r0, [r6, #0x9c]
	bl FUN_021EF06C
	cmp r0, #0
	beq _021FF1A0
	mov r1, #0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r1, [sp]
	bl FUN_021FC6C4
	cmp r0, #0
	movne r0, #1
	add sp, sp, #8
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF1A0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl FUN_021FCA8C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FF1C8
FUN_021FF1C8: ; 0x021FF1C8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x60]
	mov r7, r1
	bl FUN_021EF06C
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r6, #0
	mov r5, #0
	ble _021FF228
_021FF1FC:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl FUN_021EEFFC
	ldrh r0, [r0, #8]
	mov r1, r7
	bl FUN_021FF3AC
	cmp r0, #0
	bge _021FF228
	add r5, r5, #1
	cmp r5, r6
	blt _021FF1FC
_021FF228:
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r5, #0
	sub r5, r5, #1
	beq _021FF25C
_021FF244:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl FUN_021EED84
	cmp r5, #0
	sub r5, r5, #1
	bne _021FF244
_021FF25C:
	ldr r0, [r4, #0x60]
	bl FUN_021EF06C
	movs r6, r0
	moveq r0, #0
	streq r0, [r4, #0x58]
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl FUN_021EEFFC
	cmp r6, #0
	ldr r7, [r0]
	mov r5, #0
	ble _021FF2BC
_021FF298:
	ldr r0, [r4, #0x60]
	mov r1, r5
	bl FUN_021EEFFC
	ldr r1, [r0]
	add r5, r5, #1
	sub r1, r1, r7
	str r1, [r0]
	cmp r5, r6
	blt _021FF298
_021FF2BC:
	mov r2, r7
	add r0, r4, #0x50
	mov r1, #0
	bl FUN_021FC268
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021FF2D8
FUN_021FF2D8: ; 0x021FF2D8
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021FD828
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	mov r2, #4
	bl FUN_021FF318
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FF304
FUN_021FF304: ; 0x021FF304
	ldr ip, _021FF314 ; =FUN_021FF318
	mov r1, #7
	mov r2, #2
	bx ip
	.align 2, 0
_021FF314: .word FUN_021FF318

	arm_func_start FUN_021FF318
FUN_021FF318: ; 0x021FF318
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #5
	bge _021FF380
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021FF368
	bl FUN_021FCED0
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl FUN_021FCB88
	cmp r0, #0
	bne _021FF3A4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FF368:
	cmp r3, #4
	moveq r0, #1
	streq r0, [r6, #0x14]
	mov r0, r6
	bl FUN_021FCED0
	b _021FF3A4
_021FF380:
	cmp r3, #7
	beq _021FF3A4
	bl FUN_021FCED0
	mov r0, r6
	mov r1, r4
	bl FUN_021FC9B8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_021FF3A4:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_021FF3AC
FUN_021FF3AC: ; 0x021FF3AC
	sub r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr

	arm_func_start FUN_021FF3BC
FUN_021FF3BC: ; 0x021FF3BC
	mov r3, r2, asr #8
	strb r3, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	bx lr

	arm_func_start FUN_021FF3D0
FUN_021FF3D0: ; 0x021FF3D0
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r1, [r0, r1]
	mov r0, r2, lsl #8
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr

	arm_func_start FUN_021FF3F0
FUN_021FF3F0: ; 0x021FF3F0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	str r1, [r4, #0x18]
	bl FUN_021FD45C
	mov r0, r4
	bl FUN_021FCDB4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021FF9CC
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FF42C
FUN_021FF42C: ; 0x021FF42C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x10]
	bl FUN_021EF06C
	subs r4, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
_021FF44C:
	ldr r0, [r5, #0x10]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r0, [r0]
	bl FUN_021FF6BC
	subs r4, r4, #1
	bpl _021FF44C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_021FF470
FUN_021FF470: ; 0x021FF470
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bl FUN_021F025C
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _021FF4A8 ; =FUN_021FF4AC
	add r2, sp, #0
	bl FUN_021EF264
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FF4A8: .word FUN_021FF4AC

	arm_func_start FUN_021FF4AC
FUN_021FF4AC: ; 0x021FF4AC
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	ldr r1, [r1]
	ldr r0, [r4, #0xc]
	cmp r0, #7
	beq _021FF4D8
	mov r0, r4
	bl FUN_021FCF88
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FF4D8:
	ldr r0, [r4, #0xc]
	cmp r0, #7
	bne _021FF504
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021FF504
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021FF504
	mov r0, r4
	bl FUN_021FF6BC
_021FF504:
	mov r0, #1
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FF50C
FUN_021FF50C: ; 0x021FF50C
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r2
	bl FUN_021FFCDC
	ldr r0, [r6]
	bl FUN_021EFEFC
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4, asr #8
	mov r0, r4, lsl #8
	add ip, sp, #0x10
	mov r3, #0
	str r3, [ip]
	str r3, [ip, #4]
	mov r2, #2
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x12]
	strb r2, [sp, #0x11]
	str r5, [sp, #0x14]
	str ip, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r6]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl FUN_021EFBD4
	mvn r1, #0
	cmp r0, r1
	bne _021FF640
	ldr r0, [r6]
	bl FUN_021EFB28
	mvn r1, #0xe
	cmp r0, r1
	bne _021FF5EC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021FE0B4
	cmp r0, #0
	bne _021FF6A8
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF5EC:
	mvn r1, #0x29
	cmp r0, r1
	beq _021FF604
	mvn r1, #5
	cmp r0, r1
	bne _021FF618
_021FF604:
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF618:
	mvn r1, #0x22
	cmp r0, r1
	beq _021FF6A8
	mov r0, r6
	bl FUN_021FF3F0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF640:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _021FF6A8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_021FFC3C
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x34]
	mov r1, r0
	str r2, [sp, #4]
	ldr ip, [sp, #0x38]
	mov r3, r4
	mov r0, r6
	mov r2, r5
	str ip, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl FUN_021FC59C
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
_021FF6A8:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FF6BC
FUN_021FF6BC: ; 0x021FF6BC
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0x24]
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0xc]
	cmp r0, #7
	bne _021FF774
	ldr r0, [r1, #8]
	ldr r0, [r0, #0x10]
	bl FUN_021EF06C
	mov r6, r0
	mov r5, #0
	cmp r6, #0
	ldmleia sp!, {r4, r5, r6, lr}
	addle sp, sp, #0x10
	bxle lr
_021FF720:
	ldr r4, [sp, #0x10]
	mov r1, r5
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x10]
	bl FUN_021EEFFC
	ldr r0, [r0]
	cmp r4, r0
	bne _021FF75C
	ldr r0, [r4, #8]
	mov r1, r5
	ldr r0, [r0, #0x10]
	bl FUN_021EED84
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF75C:
	add r5, r5, #1
	cmp r5, r6
	blt _021FF720
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FF774:
	ldr r0, [r1, #8]
	add r1, sp, #0x10
	ldr r0, [r0, #0xc]
	bl FUN_021EF3F4
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_021FF790
FUN_021FF790: ; 0x021FF790
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r3
	mov r5, r2
	mov r6, r1
	mov r3, #0
	mov r1, r5
	mov r2, r4
	mov r7, r0
	str r3, [sp]
	bl FUN_021FFC3C
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #5
	ldmneia sp!, {r4, r5, r6, r7, pc}
	bl FUN_021FF9B4
	str r0, [sp]
	cmp r0, #0
	beq _021FF930
	mov r1, #0
	mov r2, #0xa0
	bl Call_FillMemWithValue
	ldr r0, [sp]
	str r5, [r0]
	ldr r0, [sp]
	strh r4, [r0, #4]
	ldr r0, [sp]
	str r7, [r0, #8]
	bl FUN_021F025C
	ldr r2, [sp]
	mov r1, #0
	str r0, [r2, #0x1c]
	ldr r2, [sp]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x88]
	ldr r0, [sp]
	strh r1, [r0, #0x64]
	ldr r0, [sp]
	strh r1, [r0, #0x66]
	ldr r0, [sp]
	ldr r1, [r7, #0x3c]
	add r0, r0, #0x44
	bl FUN_021FC46C
	cmp r0, #0
	beq _021FF930
	ldr r0, [sp]
	ldr r1, [r7, #0x38]
	add r0, r0, #0x50
	bl FUN_021FC46C
	cmp r0, #0
	beq _021FF930
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl FUN_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x5c]
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FF930
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl FUN_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x60]
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FF930
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl FUN_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x98]
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FF930
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl FUN_021EF0E4
	ldr r1, [sp]
	str r0, [r1, #0x9c]
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FF930
	ldr r0, [r7, #0xc]
	add r1, sp, #0
	bl FUN_021EF494
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_021FFC3C
	str r0, [r6]
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021FF930:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FF9A8
	ldr r0, [r0, #0x44]
	bl FUN_021DD82C
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl FUN_021DD82C
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FF964
	bl FUN_021EF074
_021FF964:
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FF978
	bl FUN_021EF074
_021FF978:
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FF98C
	bl FUN_021EF074
_021FF98C:
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FF9A0
	bl FUN_021EF074
_021FF9A0:
	ldr r0, [sp]
	bl FUN_021DD82C
_021FF9A8:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_021FF9B4
FUN_021FF9B4: ; 0x021FF9B4
	ldr ip, _021FF9C0 ; =FUN_021DD860
	mov r0, #0xa0
	bx ip
	.align 2, 0
_021FF9C0: .word FUN_021DD860

	arm_func_start FUN_021FF9C4
FUN_021FF9C4: ; 0x021FF9C4
	str r1, [r0, #0x20]
	bx lr

	arm_func_start FUN_021FF9CC
FUN_021FF9CC: ; 0x021FF9CC
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x14]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4]
	bl FUN_021EFD9C
	ldr r0, [r4, #0xc]
	bl FUN_021EF5B0
	ldr r0, [r4, #0x10]
	bl FUN_021EF074
	mov r0, r4
	bl FUN_021DD82C
	bl FUN_021F0248
	ldmia sp!, {r4, pc}

	arm_func_start FUN_021FFA10
FUN_021FFA10: ; 0x021FFA10
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	mov r6, r3
	mov r5, r0
	mov r7, r2
	bl FUN_021F024C
	cmp r6, #0
	moveq r6, #0x10000
	cmp r7, #0
	add r1, sp, #0x14
	add r2, sp, #8
	mov r0, r4
	moveq r7, #0x10000
	bl FUN_021FFD28
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x44
	bl FUN_021DD860
	movs r4, r0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x44
	bl Call_FillMemWithValue
	mvn r0, #0
	str r0, [r4]
	str r6, [r4, #0x3c]
	ldr r1, [sp, #0x30]
	str r7, [r4, #0x38]
	ldr r0, _021FFC30 ; =FUN_021FFC84
	str r1, [r4, #0x24]
	str r0, [sp]
	mov r0, #0
	ldr r3, _021FFC34 ; =FUN_021FFCB4
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x20
	mov r2, #2
	bl FUN_021EF62C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021FFAE0
	mov r0, r4
	bl FUN_021DD82C
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFAE0:
	mov r0, #4
	ldr r2, _021FFC38 ; =0x021FFC74
	mov r1, r0
	bl FUN_021EF0E4
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021FFB1C
	ldr r0, [r4, #0xc]
	bl FUN_021EF5B0
	mov r0, r4
	bl FUN_021DD82C
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFB1C:
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4]
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	bne _021FFB64
	ldr r0, [r4, #0xc]
	bl FUN_021EF5B0
	ldr r0, [r4, #0x10]
	bl FUN_021EF074
	mov r0, r4
	bl FUN_021DD82C
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFB64:
	add r1, sp, #0xc
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldrh r0, [sp, #8]
	ldr r3, [sp, #0x14]
	mov ip, #2
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strb ip, [sp, #0xd]
	str r3, [sp, #0x10]
	strh r0, [sp, #0xe]
	ldr r0, [r4]
	mov r2, #8
	bl FUN_021EFD28
	mvn r1, #0
	cmp r0, r1
	bne _021FFBE4
	ldr r0, [r4]
	bl FUN_021EFD9C
	ldr r0, [r4, #0xc]
	bl FUN_021EF5B0
	ldr r0, [r4, #0x10]
	bl FUN_021EF074
	mov r0, r4
	bl FUN_021DD82C
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FFBE4:
	mov r0, #8
	str r0, [sp, #0x18]
	ldr r0, [r4]
	add r1, sp, #0xc
	add r2, sp, #0x18
	bl FUN_021EFB5C
	ldr r1, [sp, #0x10]
	mov r0, #0
	str r1, [r4, #4]
	ldrh r1, [sp, #0xe]
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [r4, #8]
	str r4, [r5]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_021FFC30: .word FUN_021FFC84
_021FFC34: .word FUN_021FFCB4
_021FFC38: .word 0x021FFC74

	arm_func_start FUN_021FFC3C
FUN_021FFC3C: ; 0x021FFC3C
	stmdb sp!, {lr}
	sub sp, sp, #0xa4
	add r3, sp, #4
	str r1, [sp, #4]
	strh r2, [sp, #8]
	str r3, [sp]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl FUN_021EF358
	cmp r0, #0
	ldrne r0, [r0]
	moveq r0, #0
	add sp, sp, #0xa4
	ldmfd sp!, {pc}
	ldr ip, _021FFC80 ; =FUN_021FCE4C
	ldr r0, [r0]
	bx ip
	.align 2, 0
_021FFC80: .word FUN_021FCE4C

	arm_func_start FUN_021FFC84
FUN_021FFC84: ; 0x021FFC84
	ldr r3, [r0]
	ldr r2, [r1]
	ldr r0, [r3]
	ldr r1, [r2]
	cmp r0, r1
	subne r0, r0, r1
	ldreqh r1, [r3, #4]
	ldreqh r0, [r2, #4]
	subeq r0, r1, r0
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
	bx lr

	arm_func_start FUN_021FFCB4
FUN_021FFCB4: ; 0x021FFCB4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	ldr r2, [r2]
	mul r0, r2, r0
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_021FFCDC
FUN_021FFCDC: ; 0x021FFCDC
	stmdb sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r1
	cmp r2, #0
	ldreq r2, _021FFD24 ; =0x0220EFD4
	moveq r1, #0
	streq r2, [r0]
	streq r1, [r4]
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r2
	bl strlen
	add r0, r0, #1
	str r0, [r4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_021FFD24: .word 0x0220EFD4

	arm_func_start FUN_021FFD28
FUN_021FFD28: ; 0x021FFD28
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x104
	movs r8, r0
	mov r7, r1
	mov r6, r2
	beq _021FFD4C
	ldrsb r1, [r8]
	cmp r1, #0
	bne _021FFD58
_021FFD4C:
	mov r5, #0
	mov r4, r5
	b _021FFE84
_021FFD58:
	mov r1, #0x3a
	bl strchr
	movs r4, r0
	moveq r4, #0
	beq _021FFE40
	cmp r4, r8
	moveq r8, #0
	moveq r5, r8
	beq _021FFDB8
	sub sb, r4, r8
	cmp sb, #0x100
	blt _021FFD9C
	ldr r0, _021FFEA0 ; =0x0220EFD8
	ldr r1, _021FFEA4 ; =0x0220EFF8
	mov r2, #0
	mov r3, #0x81
	bl __msl_assertion_failed
_021FFD9C:
	add r0, sp, #0
	mov r1, r8
	mov r2, sb
	bl memcpy
	add r8, sp, #0
	mov r0, #0
	strb r0, [r8, sb]
_021FFDB8:
	ldrsb r0, [r4, #1]
	add r3, r4, #1
	cmp r0, #0
	beq _021FFE10
	ldr r1, _021FFEA8 ; =0x0210430C
	mov r2, #0
_021FFDD0:
	cmp r0, #0
	blt _021FFDE0
	cmp r0, #0x80
	blt _021FFDE8
_021FFDE0:
	mov r0, r2
	b _021FFDF4
_021FFDE8:
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	and r0, r0, #8
_021FFDF4:
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [r3, #1]!
	cmp r0, #0
	bne _021FFDD0
_021FFE10:
	add r0, r4, #1
	bl atol
	cmp r0, #0
	blt _021FFE2C
	ldr r1, _021FFEAC ; =0x0000FFFF
	cmp r0, r1
	ble _021FFE38
_021FFE2C:
	add sp, sp, #0x104
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FFE38:
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_021FFE40:
	cmp r8, #0
	beq _021FFE84
	mov r0, r8
	bl FUN_021EFB38
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _021FFE84
	mov r0, r8
	bl FUN_0209A6EC
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	ldr r5, [r0]
_021FFE84:
	cmp r7, #0
	strne r5, [r7]
	cmp r6, #0
	strneh r4, [r6]
	mov r0, #1
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_021FFEA0: .word 0x0220EFD8
_021FFEA4: .word 0x0220EFF8
_021FFEA8: .word 0x0210430C
_021FFEAC: .word 0x0000FFFF

	arm_func_start FUN_021FFEB0
FUN_021FFEB0: ; 0x021FFEB0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	movs r5, r2
	mov r4, r1
	bne _021FFEE0
	ldr r2, _021FFF64 ; =0x02211394
	ldr r3, _021FFF68 ; =0x02211398
	ldr ip, [r2]
	mov r1, #0x16
	eor ip, ip, #1
	mla r5, ip, r1, r3
	str ip, [r2]
_021FFEE0:
	cmp r0, #0
	beq _021FFF38
	str r0, [sp]
	cmp r4, #0
	beq _021FFF18
	add r0, sp, #0
	ldmia r0, {r0}
	bl FUN_0209A27C
	mov r2, r0
	ldr r1, _021FFF6C ; =0x0220F008
	mov r0, r5
	mov r3, r4
	bl sprintf
	b _021FFF58
_021FFF18:
	add r0, sp, #0
	ldmia r0, {r0}
	bl FUN_0209A27C
	mov r2, r0
	ldr r1, _021FFF70 ; =0x0220F010
	mov r0, r5
	bl sprintf
	b _021FFF58
_021FFF38:
	cmp r4, #0
	moveq r0, #0
	streqb r0, [r5]
	beq _021FFF58
	ldr r1, _021FFF74 ; =0x0220F014
	mov r0, r5
	mov r2, r4
	bl sprintf
_021FFF58:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_021FFF64: .word 0x02211394
_021FFF68: .word 0x02211398
_021FFF6C: .word 0x0220F008
_021FFF70: .word 0x0220F010
_021FFF74: .word 0x0220F014

	arm_func_start FUN_021FFF78
FUN_021FFF78: ; 0x021FFF78
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r6, r0
	mov r7, r1
	mov r5, r2
	bl FUN_02200D40
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrb r4, [r6, #7]
	cmp r4, #5
	beq _021FFFB0
	cmp r4, #7
	bne _0220004C
_021FFFB0:
	cmp r7, #0x14
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0
	mov r2, #0xa
_021FFFC4:
	ldrb r1, [r6], #1
	ldrb r0, [r6], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _021FFFC4
	ldr r3, [sp, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl FUN_02200ED4
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #5
	bne _02200038
	add r1, sp, #0
	mov r2, r5
	bl FUN_022002CC
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_02200038:
	add r1, sp, #0
	mov r2, r5
	bl FUN_022001E4
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_0220004C:
	cmp r7, #0x15
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0x14
	mov r2, #0xa
_02200060:
	ldrb r1, [r6], #1
	ldrb r0, [r6], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _02200060
	ldrb r0, [r6]
	strb r0, [r3]
	ldr r3, [sp, #0x1c]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl FUN_02200ED4
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0x14
	mov r2, r5
	bl FUN_022000D4
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_022000D4
FUN_022000D4: ; 0x022000D4
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r3, r1
	ldrb r1, [r3, #7]
	mov r4, r0
	cmp r1, #1
	beq _02200100
	cmp r1, #2
	beq _0220019C
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02200100:
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	addhi sp, sp, #8
	ldmhiia sp!, {r4, pc}
	add r0, r4, r0, lsl #2
	mov r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	mvn r0, #0
	cmp r1, r0
	beq _0220016C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
_0220016C:
	mov r0, #1
	str r0, [r4, #0x10]
	bl FUN_021F025C
	ldr r1, _022001E0 ; =0x00002710
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_0220019C:
	mov r0, #3
	strb r0, [r3, #7]
	ldrh r0, [r2, #2]
	mov ip, #0x15
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	str ip, [sp]
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov ip, r0, lsl #0x10
	ldr r1, [r2, #4]
	ldr r0, [r4]
	mov r2, ip, lsr #0x10
	bl FUN_02200CEC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_022001E0: .word 0x00002710

	arm_func_start FUN_022001E4
FUN_022001E4: ; 0x022001E4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r3, [r5, #0x10]
	mov r4, r2
	cmp r3, #2
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	ldr r3, [r4, #4]
	mov r2, #1
	str r3, [r5, #0x2c]
	ldrh r3, [r4, #2]
	mov ip, r3, asr #8
	mov r3, r3, lsl #8
	and ip, ip, #0xff
	and r3, r3, #0xff00
	orr r3, ip, r3
	strh r3, [r5, #0x30]
	strb r2, [r5, #0x32]
	ldrb r2, [r1, #0x12]
	cmp r2, #0
	bne _02200248
	bl FUN_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_02200248:
	ldr r2, [r5, #0x10]
	cmp r2, #2
	bne _022002AC
	ldrb r1, [r5, #0x33]
	cmp r1, #0
	bne _02200264
	bl FUN_022008D8
_02200264:
	mov r0, #3
	str r0, [r5, #0x10]
	bl FUN_021F025C
	ldr r1, _022002C8 ; =0x00001388
	mvn r2, #0
	add r0, r0, r1
	str r0, [r5, #0x28]
	ldr r1, [r5, #4]
	cmp r1, r2
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r3, [r5, #0x3c]
	ldr r5, [r5, #0x38]
	mov r2, r4
	mov r0, #0
	blx r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_022002AC:
	ldrb r1, [r1, #0x13]
	cmp r1, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	bl FUN_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022002C8: .word 0x00001388

	arm_func_start FUN_022002CC
FUN_022002CC: ; 0x022002CC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r1
	ldrb r1, [r5, #0x13]
	mov r4, r0
	cmp r1, #0
	bne _022002F0
	mov r1, r2
	bl FUN_0220039C
_022002F0:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, pc}
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _02200348
	mov r0, #3
	cmp r1, #1
	moveq r0, #1
	beq _02200324
	cmp r1, #2
	moveq r0, #2
_02200324:
	ldr r3, [r4, #0x3c]
	ldr ip, [r4, #0x38]
	mvn r1, #0
	mov r2, #0
	blx ip
	ldr r0, [r4, #8]
	bl FUN_022006B4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_02200348:
	ldr r0, [r5, #0xc]
	mov r1, #0
	str r0, [r4, #0x2c]
	ldrh r2, [r5, #0x10]
	mov r0, #2
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r4, #0x30]
	str r1, [r4, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	mov r0, r4
	bl FUN_022008D8
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_0220039C
FUN_0220039C: ; 0x0220039C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr r6, _02200464 ; =0x0220F018
	add r3, sp, #4
	ldrb ip, [r6]
	ldrb r2, [r6, #1]
	mov r5, #2
	mov r4, #6
	strb ip, [r3]
	strb r2, [r3, #1]
	ldrb lr, [r6, #2]
	ldrb ip, [r6, #3]
	mov r2, #0x15
	strb lr, [r3, #2]
	strb ip, [r3, #3]
	ldrb lr, [r6, #4]
	ldrb ip, [r6, #5]
	strb lr, [r3, #4]
	strb ip, [r3, #5]
	strb r5, [sp, #0xa]
	strb r4, [sp, #0xb]
	ldr r4, [r0, #0xc]
	strb r4, [sp, #0x11]
	ldr r5, [r0, #8]
	mov lr, r5, lsr #0x18
	mov ip, r5, lsr #8
	mov r4, r5, lsl #8
	mov r5, r5, lsl #0x18
	and lr, lr, #0xff
	and ip, ip, #0xff00
	and r4, r4, #0xff0000
	orr ip, lr, ip
	and r5, r5, #0xff000000
	orr r4, r4, ip
	orr r4, r5, r4
	str r4, [sp, #0xc]
	ldrh lr, [r1, #2]
	str r2, [sp]
	mov ip, lr, asr #8
	mov r2, lr, lsl #8
	and ip, ip, #0xff
	and r2, r2, #0xff00
	orr r2, ip, r2
	mov r2, r2, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r1, #4]
	mov r2, r2, lsr #0x10
	bl FUN_02200CEC
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200464: .word 0x0220F018

	arm_func_start FUN_02200468
FUN_02200468: ; 0x02200468
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r0, _022004B8 ; =0x022113D4
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	bl FUN_021EF06C
	subs r5, r0, #1
	addmi sp, sp, #4
	ldmmiia sp!, {r4, r5, pc}
	ldr r4, _022004B8 ; =0x022113D4
_02200498:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_021EEFFC
	bl FUN_022004BC
	subs r5, r5, #1
	bpl _02200498
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022004B8: .word 0x022113D4

	arm_func_start FUN_022004BC
FUN_022004BC: ; 0x022004BC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x20
	mov r1, #8
	mov sb, r0
	str r1, [sp, #0x10]
	ldr r1, [sb, #0x10]
	cmp r1, #4
	bne _022004E8
	bl FUN_02200DA4
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_022004E8:
	ldr r0, [sb]
	mvn sl, #0
	cmp r0, sl
	beq _02200564
	ldr r6, _022006B0 ; =0x022113D8
	add r8, sp, #8
	add r7, sp, #0x10
	mov r5, #0x200
	mov r4, #0
_0220050C:
	bl FUN_021EFF2C
	cmp r0, #0
	beq _02200564
	str r8, [sp]
	str r7, [sp, #4]
	ldr r0, [sb]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_021EFC40
	mov r1, r0
	cmp r1, sl
	beq _02200564
	mov r0, r6
	mov r2, r8
	bl FUN_021FFF78
	ldr r0, [sb, #0x10]
	cmp r0, #4
	beq _02200564
	ldr r0, [sb]
	cmp r0, sl
	bne _0220050C
_02200564:
	ldr r0, [sb, #0x10]
	cmp r0, #0
	beq _02200578
	cmp r0, #2
	bne _022005E4
_02200578:
	bl FUN_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _022005E4
	ldr r1, [sb, #0x20]
	ldr r0, [sb, #0x24]
	cmp r1, r0
	ble _022005BC
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	mov r0, #2
	mvn r1, #0
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl FUN_022006B4
	b _022005E4
_022005BC:
	add r0, r1, #1
	str r0, [sb, #0x20]
	ldr r0, [sb, #0x10]
	cmp r0, #0
	bne _022005DC
	mov r0, sb
	bl FUN_022009F8
	b _022005E4
_022005DC:
	mov r0, sb
	bl FUN_022008D8
_022005E4:
	ldr r0, [sb, #0x10]
	cmp r0, #3
	bne _02200664
	bl FUN_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _02200664
	ldr r1, [sb, #4]
	mvn r0, #0
	cmp r1, r0
	bne _0220065C
	mov r0, #2
	strb r0, [sp, #0x15]
	ldrh r1, [sb, #0x30]
	add r2, sp, #0x14
	mov r0, #0
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	and r3, r3, #0xff
	and r1, r1, #0xff00
	orr r1, r3, r1
	strh r1, [sp, #0x16]
	ldr r1, [sb, #0x2c]
	str r1, [sp, #0x18]
	ldr r1, [sb]
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	blx r4
	mvn r0, #0
	str r0, [sb]
_0220065C:
	ldr r0, [sb, #8]
	bl FUN_022006B4
_02200664:
	ldr r0, [sb, #0x10]
	cmp r0, #1
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl FUN_021F025C
	ldr r1, [sb, #0x28]
	cmp r0, r1
	addls sp, sp, #0x20
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	mov r0, #1
	mvn r1, #0
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl FUN_022006B4
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022006B0: .word 0x022113D8

	arm_func_start FUN_022006B4
FUN_022006B4: ; 0x022006B4
	stmdb sp!, {r4, lr}
	bl FUN_02200ED4
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _022006D8
	bl FUN_021EFD9C
_022006D8:
	mvn r0, #0
	str r0, [r4]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022006EC
FUN_022006EC: ; 0x022006EC
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, _022007B4 ; =0x02210E5C
	mov r8, r0
	ldr r0, [ip]
	mov r7, r1
	cmp r0, #1
	mov r6, r2
	mov r5, r3
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_022007B8
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_02200E0C
	movs r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r8, [r4, #4]
	str r6, [r4, #0xc]
	str r7, [r4, #8]
	ldr r1, [sp, #0x18]
	str r5, [r4, #0x34]
	mov r0, #2
	ldr r2, [sp, #0x1c]
	str r1, [r4, #0x38]
	mov r1, r0
	str r2, [r4, #0x3c]
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0x20]
	strb r0, [r4, #0x32]
	strb r0, [r4, #0x33]
	str r0, [r4, #0x2c]
	strh r0, [r4, #0x30]
	str r0, [r4, #0x24]
	ldr r1, [r4]
	mvn r0, #0
	cmp r1, r0
	bne _022007A4
	mov r0, r4
	bl FUN_02200DA4
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022007A4:
	mov r0, r4
	bl FUN_022009F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022007B4: .word 0x02210E5C

	arm_func_start FUN_022007B8
FUN_022007B8: ; 0x022007B8
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02200848 ; =0x022113D0
	ldr r0, [r0]
	cmp r0, #0
	bne _022007E8
	ldr r0, _0220084C ; =0x022113C8
	ldr r1, _02200850 ; =0x0220F020
	ldr r0, [r0]
	bl FUN_02200860
	ldr r1, _02200848 ; =0x022113D0
	str r0, [r1]
_022007E8:
	ldr r0, _02200854 ; =0x022113CC
	ldr r0, [r0]
	cmp r0, #0
	bne _02200810
	ldr r0, _02200858 ; =0x022113C4
	ldr r1, _0220085C ; =0x0220F03C
	ldr r0, [r0]
	bl FUN_02200860
	ldr r1, _02200854 ; =0x022113CC
	str r0, [r1]
_02200810:
	ldr r0, _02200848 ; =0x022113D0
	ldr r0, [r0]
	cmp r0, #0
	beq _02200830
	ldr r0, _02200854 ; =0x022113CC
	ldr r0, [r0]
	cmp r0, #0
	bne _0220083C
_02200830:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {pc}
_0220083C:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200848: .word 0x022113D0
_0220084C: .word 0x022113C8
_02200850: .word 0x0220F020
_02200854: .word 0x022113CC
_02200858: .word 0x022113C4
_0220085C: .word 0x0220F03C

	arm_func_start FUN_02200860
FUN_02200860: ; 0x02200860
	stmdb sp!, {lr}
	sub sp, sp, #0x84
	cmp r0, #0
	bne _0220088C
	ldr r2, _02200898 ; =0x0220F058
	str r1, [sp]
	ldr r3, _0220089C ; =0x02210EA0
	add r0, sp, #4
	mov r1, #0x80
	bl snprintf
	add r0, sp, #4
_0220088C:
	bl FUN_022008A0
	add sp, sp, #0x84
	ldmfd sp!, {pc}
	.align 2, 0
_02200898: .word 0x0220F058
_0220089C: .word 0x02210EA0

	arm_func_start FUN_022008A0
FUN_022008A0: ; 0x022008A0
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_021EFB38
	mvn r1, #0
	cmp r0, r1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl FUN_0209A6EC
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	ldrne r0, [r0]
	ldrne r0, [r0]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022008D8
FUN_022008D8: ; 0x022008D8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr lr, _022009F4 ; =0x0220F018
	add r5, sp, #4
	ldrb r4, [lr]
	ldrb r3, [lr, #1]
	mov r2, #2
	mov r1, #7
	strb r4, [r5]
	strb r3, [r5, #1]
	ldrb ip, [lr, #2]
	ldrb r3, [lr, #3]
	mov r4, r0
	strb ip, [r5, #2]
	strb r3, [r5, #3]
	ldrb r3, [lr, #4]
	ldrb r0, [lr, #5]
	strb r3, [r5, #4]
	strb r0, [r5, #5]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	ldr r3, [r4, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	add r3, sp, #4
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x30]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x14]
	ldrb r0, [r4, #0x32]
	mvn r1, #0
	strb r0, [sp, #0x16]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	strb r0, [sp, #0x17]
	ldr r0, [r4, #4]
	cmp r0, r1
	ldreq r0, [r4]
	mov r1, #0x14
	str r1, [sp]
	ldrh r2, [r4, #0x30]
	ldr r1, [r4, #0x2c]
	bl FUN_02200CEC
	bl FUN_021F025C
	add r0, r0, #0x2bc
	str r0, [r4, #0x28]
	mov r0, #0xc
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x33]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022009F4: .word 0x0220F018

	arm_func_start FUN_022009F8
FUN_022009F8: ; 0x022009F8
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x60
	ldr r7, _02200C30 ; =0x0220F018
	mov r6, r0
	ldrb r4, [r7]
	ldrb r3, [r7, #1]
	add r5, sp, #4
	mov r2, #2
	strb r4, [r5]
	strb r3, [r5, #1]
	ldrb r4, [r7, #2]
	ldrb r3, [r7, #3]
	mov r1, #0
	mvn r0, #0
	strb r4, [r5, #2]
	strb r3, [r5, #3]
	ldrb r4, [r7, #4]
	ldrb r3, [r7, #5]
	strb r4, [r5, #4]
	strb r3, [r5, #5]
	strb r2, [r5, #6]
	strb r1, [r5, #7]
	ldr r2, [r6, #0xc]
	strb r2, [r5, #0xd]
	ldr r7, [r6, #8]
	mov r3, r7, lsr #0x18
	mov r2, r7, lsr #8
	mov r4, r7, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	mov r7, r7, lsl #0x18
	orr r2, r3, r2
	and r4, r4, #0xff0000
	and r3, r7, #0xff000000
	orr r2, r4, r2
	orr r2, r3, r2
	str r2, [r5, #8]
	ldr r2, [r6, #4]
	cmp r2, r0
	movne r1, #1
	strb r1, [r5, #0xe]
	bl FUN_02200C78
	mov r7, r0
	bl FUN_02200C78
	mov r8, r0
	bl FUN_02200C78
	mov r4, r0
	bl FUN_02200C78
	mov r2, #0
	mov r1, r7, lsl #0x18
	and r7, r1, #0xff000000
	mov r1, r8, lsl #8
	mov r0, r0, lsr #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	orr r0, r3, r0
	orr r3, r7, r0
	mov r1, r3, lsr #0x18
	strb r1, [sp, #0x13]
	mov r1, r3, lsr #8
	mov r0, r3, lsr #0x10
	strb r1, [sp, #0x15]
	strb r0, [sp, #0x14]
	ldr r1, _02200C34 ; =0x02210EA0
	add r0, sp, #0x19
	strb r3, [sp, #0x16]
	strb r2, [sp, #0x17]
	strb r2, [sp, #0x18]
	bl strcpy
	ldr r0, _02200C34 ; =0x02210EA0
	bl strlen
	ldrb r1, [r5, #0xe]
	add r4, r0, #0x16
	cmp r1, #0
	beq _02200B60
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _02200B60
	mov r0, #0
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C38 ; =0x022113D0
	ldr r0, [r6, #4]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl FUN_02200CEC
_02200B60:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _02200B90
	mov r0, #1
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C38 ; =0x022113D0
	ldr r0, [r6]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl FUN_02200CEC
_02200B90:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	ldrne r8, [r6, #4]
	ldreq r8, [r6]
	cmp r0, #0
	ldrne r0, [r6, #4]
	ldreq r0, [r6]
	bl FUN_02200C44
	mov r7, r0
	mov r0, r8
	bl FUN_02200C44
	mov r1, r7, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #8
	strb r1, [sp, #0x18]
	strb r0, [sp, #0x17]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _02200C14
	mov r0, #2
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _02200C40 ; =0x022113CC
	ldr r0, [r6]
	ldr r1, [r1]
	ldr r2, _02200C3C ; =0x00006CFD
	mov r3, r5
	bl FUN_02200CEC
_02200C14:
	bl FUN_021F025C
	add r0, r0, #0x1f4
	str r0, [r6, #0x28]
	mov r0, #0x1e
	str r0, [r6, #0x24]
	add sp, sp, #0x60
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02200C30: .word 0x0220F018
_02200C34: .word 0x02210EA0
_02200C38: .word 0x022113D0
_02200C3C: .word 0x00006CFD
_02200C40: .word 0x022113CC

	arm_func_start FUN_02200C44
FUN_02200C44: ; 0x02200C44
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r3, #8
	add r1, sp, #0
	add r2, sp, #8
	str r3, [sp, #8]
	bl FUN_021EFB5C
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldrneh r0, [sp, #2]
	add sp, sp, #0xc
	ldmfd sp!, {pc}

	arm_func_start FUN_02200C78
FUN_02200C78: ; 0x02200C78
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, #0
	bl FUN_021EFE70
	movs r6, r0
	addeq sp, sp, #4
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r4, _02200CE8 ; =0x0100007F
	mov r7, r5
_02200CA0:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	beq _02200CDC
	ldr r1, [r0]
	cmp r1, r4
	beq _02200CD4
	mov r5, r1
	bl FUN_021EFDEC
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02200CD4:
	add r7, r7, #1
	b _02200CA0
_02200CDC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02200CE8: .word 0x0100007F

	arm_func_start FUN_02200CEC
FUN_02200CEC: ; 0x02200CEC
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	mov ip, r2, asr #8
	mov r2, r2, lsl #8
	str r1, [sp, #0xc]
	mov r1, r3
	and r3, ip, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov lr, #2
	strh r2, [sp, #0xa]
	add r3, sp, #8
	strb lr, [sp, #9]
	str r3, [sp]
	mov ip, #8
	ldr r2, [sp, #0x18]
	mov r3, #0
	str ip, [sp, #4]
	bl FUN_021EFBD4
	add sp, sp, #0x14
	ldmfd sp!, {pc}

	arm_func_start FUN_02200D40
FUN_02200D40: ; 0x02200D40
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _02200D68 ; =0x0220F018
	mov r2, #6
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200D68: .word 0x0220F018

	arm_func_start FUN_02200D6C
FUN_02200D6C: ; 0x02200D6C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02200DA0 ; =0x022113D4
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021EF074
	ldr r0, _02200DA0 ; =0x022113D4
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02200DA0: .word 0x022113D4

	arm_func_start FUN_02200DA4
FUN_02200DA4: ; 0x02200DA4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02200E08 ; =0x022113D4
	mov r6, r0
	ldr r0, [r1]
	mov r5, #0
	bl FUN_021EF06C
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r4, _02200E08 ; =0x022113D4
_02200DC8:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_021EEFFC
	cmp r6, r0
	bne _02200DF0
	ldr r0, _02200E08 ; =0x022113D4
	mov r1, r5
	ldr r0, [r0]
	bl FUN_021EEDE0
	ldmia sp!, {r4, r5, r6, pc}
_02200DF0:
	ldr r0, [r4]
	add r5, r5, #1
	bl FUN_021EF06C
	cmp r5, r0
	blt _02200DC8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200E08: .word 0x022113D4

	arm_func_start FUN_02200E0C
FUN_02200E0C: ; 0x02200E0C
	stmdb sp!, {lr}
	sub sp, sp, #0x44
	mov r0, #0
	add r2, sp, #0
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r0, _02200E9C ; =0x022113D4
	ldr r0, [r0]
	cmp r0, #0
	bne _02200E68
	ldr r2, _02200EA0 ; =FUN_02200EA4
	mov r0, #0x40
	mov r1, #4
	bl FUN_021EF0E4
	ldr r1, _02200E9C ; =0x022113D4
	str r0, [r1]
_02200E68:
	ldr r0, _02200E9C ; =0x022113D4
	add r1, sp, #0
	ldr r0, [r0]
	bl FUN_021EEFA8
	ldr r0, _02200E9C ; =0x022113D4
	ldr r0, [r0]
	bl FUN_021EF06C
	ldr r2, _02200E9C ; =0x022113D4
	sub r1, r0, #1
	ldr r0, [r2]
	bl FUN_021EEFFC
	add sp, sp, #0x44
	ldmfd sp!, {pc}
	.align 2, 0
_02200E9C: .word 0x022113D4
_02200EA0: .word FUN_02200EA4

	arm_func_start FUN_02200EA4
FUN_02200EA4: ; 0x02200EA4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _02200EC0
	bl FUN_021EFD9C
_02200EC0:
	mvn r0, #0
	str r0, [r4]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02200ED4
FUN_02200ED4: ; 0x02200ED4
	stmdb sp!, {r4, r5, r6, lr}
	ldr r1, _02200F38 ; =0x022113D4
	mov r6, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r5, #0
	bl FUN_021EF06C
	cmp r0, #0
	ble _02200F30
	ldr r4, _02200F38 ; =0x022113D4
_02200F04:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_021EEFFC
	ldr r1, [r0, #8]
	cmp r1, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	add r5, r5, #1
	bl FUN_021EF06C
	cmp r5, r0
	blt _02200F04
_02200F30:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02200F38: .word 0x022113D4

	arm_func_start FUN_02200F3C
FUN_02200F3C: ; 0x02200F3C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02201120 ; =0x0000082C
	sub sp, sp, ip
	mov sl, r0
	mov sb, r1
	mov r3, #0
	add r0, sp, #0x24
	add r2, sl, #0x84
	mov r1, #3
	str r3, [sp, #0x824]
	bl FUN_02201DCC
	ldr r4, _02201124 ; =0x022115D8
	mov r8, #0
	ldr r0, [r4]
	cmp r0, #0
	ble _02200FD0
	ldr fp, _02201128 ; =0x0220F174
	ldr r5, _0220112C ; =0x022115DC
	add r7, sp, #0x10
	add r6, sp, #0x24
_02200F8C:
	mov r0, r7
	mov r1, fp
	mov r2, r8
	bl sprintf
	mov r0, r6
	mov r1, r7
	bl FUN_022021C0
	add r0, r5, r8, lsl #2
	ldmia r0, {r0}
	bl FUN_0209A27C
	mov r1, r0
	mov r0, r6
	bl FUN_022021C0
	add r8, r8, #1
	ldr r0, [r4]
	cmp r8, r0
	blt _02200F8C
_02200FD0:
	ldr r1, _02201130 ; =0x0220F180
	add r0, sp, #0x24
	bl FUN_022021C0
	ldr r1, [sl, #0xc0]
	add r0, sp, #0x24
	bl FUN_02202220
	ldr r1, _02201134 ; =0x0220F18C
	add r0, sp, #0x24
	bl FUN_022021C0
	ldr r0, [sl, #0xc8]
	cmp r0, #0
	ldrne r1, _02201138 ; =0x0220F194
	add r0, sp, #0x24
	ldreq r1, _0220113C ; =0x0220F198
	bl FUN_022021C0
	cmp sb, #0
	beq _0220102C
	ldr r1, _02201140 ; =0x0220F19C
	add r0, sp, #0x24
	bl FUN_022021C0
	add r0, sp, #0x24
	mov r1, sb
	bl FUN_02202220
_0220102C:
	ldr r1, _02201144 ; =0x0220F1AC
	add r0, sp, #0x24
	bl FUN_022021C0
	add r0, sp, #0x24
	add r1, sl, #4
	bl FUN_022021C0
	ldr r0, [sl, #0xa8]
	cmp r0, #0
	beq _02201084
	ldr r1, _02201148 ; =0x0220F1B8
	add r0, sp, #0x24
	bl FUN_022021C0
	ldr r1, [sl, #0x104]
	add r0, sp, #0x24
	bl FUN_02202220
	ldr r1, _0220114C ; =0x0220F1C4
	add r0, sp, #0x24
	bl FUN_022021C0
	add r0, sl, #0x100
	ldrh r1, [r0, #8]
	add r0, sp, #0x24
	bl FUN_02202220
_02201084:
	cmp sb, #2
	beq _022010B4
	mov r2, #0xff
	str r2, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0x24
	mov r0, sl
	str r3, [sp, #0xc]
	bl FUN_022019B4
	b _022010D4
_022010B4:
	ldr r2, [sp, #0x824]
	rsb r0, r2, #0x800
	cmp r0, #1
	addge r1, r2, #1
	strge r1, [sp, #0x824]
	addge r0, sp, #0x24
	movge r1, #0
	strgeb r1, [r0, r2]
_022010D4:
	add r0, sl, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [sl]
	ldr r2, [sp, #0x824]
	add r1, sp, #0x24
	mov r3, #0
	bl FUN_021EFBD4
	bl FUN_021F025C
	str r0, [sl, #0xac]
	ldr r0, [sl, #0xac]
	cmp sb, #0
	str r0, [sl, #0xb0]
	movne r0, #0
	strne r0, [sl, #0xb4]
	ldr ip, _02201120 ; =0x0000082C
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02201120: .word 0x0000082C
_02201124: .word 0x022115D8
_02201128: .word 0x0220F174
_0220112C: .word 0x022115DC
_02201130: .word 0x0220F180
_02201134: .word 0x0220F18C
_02201138: .word 0x0220F194
_0220113C: .word 0x0220F198
_02201140: .word 0x0220F19C
_02201144: .word 0x0220F1AC
_02201148: .word 0x0220F1B8
_0220114C: .word 0x0220F1C4

	arm_func_start FUN_02201150
FUN_02201150: ; 0x02201150
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x810
	mov r4, r0
	mov r3, #0
	add r0, sp, #8
	add r2, r4, #0x84
	mov r1, #8
	str r3, [sp, #0x808]
	bl FUN_02201DCC
	add r0, r4, #0xcc
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, [sp, #0x808]
	add r1, sp, #8
	mov r3, #0
	bl FUN_021EFBD4
	bl FUN_021F025C
	str r0, [r4, #0xb0]
	add sp, sp, #0x810
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022011A8
FUN_022011A8: ; 0x022011A8
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	ldr ip, _02201504 ; =0x00000814
	sub sp, sp, ip
	movs r8, r0
	mov r0, #0
	str r0, [sp, #0x80c]
	ldreq r0, _02201508 ; =0x0220F060
	mov r7, r2
	ldreq r8, [r0]
	ldrsb r0, [r1]
	mov r6, r3
	cmp r0, #0x3b
	bne _0220120C
	ldr r3, [r8, #0xd4]
	cmp r3, #0
	ldreq ip, _02201504 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, r1
	mov r1, r7
	mov r2, r6
	blx r3
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220120C:
	cmp r0, #0x5c
	bne _0220124C
	add r1, sp, #0xc
	mov r0, r8
	bl FUN_022016A8
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl FUN_021EFBD4
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220124C:
	cmp r7, #7
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	and r0, r0, #0xff
	cmp r0, #0xfe
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r1, #1]
	cmp r0, #0xfd
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r8, #0xb8]
	add r5, r1, #3
	cmp r0, #0
	movgt r0, #0
	strgt r0, [r8, #0xb8]
	ldrsb sb, [r1, #2]
	add r4, r1, #7
	add r0, sp, #0xc
	mov r1, sb
	mov r2, r5
	sub r7, r7, #7
	bl FUN_02201DCC
	cmp sb, #8
	addls pc, pc, sb, lsl #2
	b _022014CC
_022012C0: ; jump table
	b _022012E4 ; case 0
	b _022012FC ; case 1
	b _02201338 ; case 2
	b _022014CC ; case 3
	b _02201370 ; case 4
	b _022014CC ; case 5
	b _022013F8 ; case 6
	b _022014CC ; case 7
	b _022014CC ; case 8
_022012E4:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r3, r7
	bl FUN_022018F0
	b _022014D8
_022012FC:
	cmp r7, #0xd
	blt _02201320
	ldr r0, [r8, #0xa8]
	cmp r0, #0
	beq _02201320
	add r1, r4, r7
	mov r0, r8
	sub r1, r1, #0xd
	bl FUN_02201C70
_02201320:
	add r1, sp, #0xc
	mov r0, r8
	mov r2, r4
	mov r3, r7
	bl FUN_02201D2C
	b _022014D8
_02201338:
	ldr r0, [sp, #0x80c]
	cmp r7, #0x20
	movgt r7, #0x20
	add r3, sp, #0xc
	mov r5, #5
	mov r1, r4
	mov r2, r7
	add r0, r3, r0
	strb r5, [sp, #0xc]
	bl memcpy
	ldr r0, [sp, #0x80c]
	add r0, r0, r7
	str r0, [sp, #0x80c]
	b _022014D8
_02201370:
	ldr r1, [r8, #0xb8]
	mvn r0, #0
	cmp r1, r0
	ldreq ip, _02201504 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #0
	str r0, [sp, #8]
_02201390:
	ldr r2, [sp, #8]
	add r0, r8, r2
	ldrsb r1, [r5, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r2, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02201390
	cmp r7, #2
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mvn r0, #0
	str r0, [r8, #0xb8]
	ldrsb r0, [r4]
	ldr r2, [r8, #0x10c]
	ldr r3, [r8, #0x9c]
	add r1, r4, #1
	blx r3
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022013F8:
	mov r0, #0
	str r0, [sp, #8]
_02201400:
	ldr r2, [sp, #8]
	add r0, r8, r2
	ldrsb r1, [r5, r2]
	ldrsb r0, [r0, #0x84]
	cmp r1, r0
	ldrne ip, _02201504 ; =0x00000814
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, r2, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _02201400
	cmp r7, #4
	ldrlt ip, _02201504 ; =0x00000814
	addlt sp, sp, ip
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r0, #7
	strb r0, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldr r2, [sp, #0x80c]
	add r5, sp, #0xc
	strb r1, [r5, r2]
	add r5, r5, r2
	strb r0, [r5, #1]
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	add r3, sp, #8
	mov r0, r8
	strb r2, [r5, #2]
	strb r1, [r5, #3]
	ldr r1, [sp, #0x80c]
	add r1, r1, #4
	str r1, [sp, #0x80c]
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #8]
	bl FUN_0220150C
	cmp r0, #0
	bne _022014D8
	mov r0, r8
	add r1, r4, #4
	sub r2, r7, #4
	bl FUN_0220157C
	b _022014D8
_022014CC:
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022014D8:
	str r6, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r8]
	ldr r2, [sp, #0x80c]
	add r1, sp, #0xc
	mov r3, #0
	bl FUN_021EFBD4
	ldr ip, _02201504 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02201504: .word 0x00000814
_02201508: .word 0x0220F060

	arm_func_start FUN_0220150C
FUN_0220150C: ; 0x0220150C
	stmdb sp!, {r4, lr}
	mov r3, #0
_02201514:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0xd8]
	cmp r1, r2
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	add r3, r3, #1
	cmp r3, #0xa
	blt _02201514
	ldr r2, [r0, #0x100]
	ldr r3, _02201574 ; =0x66666667
	add lr, r2, #1
	smull r2, r4, r3, lr
	mov r4, r4, asr #2
	mov r2, lr, lsr #0x1f
	ldr ip, _02201578 ; =0x0000000A
	add r4, r2, r4
	smull r2, r3, ip, r4
	sub r4, lr, r2
	str r4, [r0, #0x100]
	ldr r2, [r0, #0x100]
	add r0, r0, r2, lsl #2
	str r1, [r0, #0xd8]
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02201574: .word 0x66666667
_02201578: .word 0x0000000A

	arm_func_start FUN_0220157C
FUN_0220157C: ; 0x0220157C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr ip, _022016A4 ; =0x0220BCD8
	mov r3, r0
	ldrb r7, [ip]
	ldrb r6, [ip, #1]
	ldrb r5, [ip, #2]
	ldrb r4, [ip, #3]
	ldrb lr, [ip, #4]
	ldrb r0, [ip, #5]
	strb r5, [sp, #2]
	strb r4, [sp, #3]
	strb r7, [sp]
	strb r6, [sp, #1]
	strb lr, [sp, #4]
	strb r0, [sp, #5]
	cmp r2, #0xa
	add r4, sp, #0
	mov r5, #1
	blt _022015F8
	mov r6, #0
_022015D0:
	ldrb ip, [r4]
	ldrb r0, [r1, r6]
	cmp ip, r0
	movne r5, #0
	bne _022015FC
	add r6, r6, #1
	cmp r6, #6
	add r4, r4, #1
	blt _022015D0
	b _022015FC
_022015F8:
	mov r5, #0
_022015FC:
	cmp r5, #0
	beq _0220167C
	add r2, r1, #6
	ldrb r1, [r1, #6]
	ldrb r0, [r2, #1]
	add ip, sp, #8
	strb r1, [ip]
	strb r0, [ip, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [ip, #2]
	strb r0, [ip, #3]
	ldr r2, [r3, #0xa0]
	cmp r2, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr lr, [sp, #8]
	ldr r1, [r3, #0x10c]
	mov r3, lr, lsr #0x18
	mov r0, lr, lsr #8
	mov ip, lr, lsl #8
	and r3, r3, #0xff
	and r0, r0, #0xff00
	mov lr, lr, lsl #0x18
	orr r0, r3, r0
	and ip, ip, #0xff0000
	and r3, lr, #0xff000000
	orr r0, ip, r0
	orr r0, r3, r0
	blx r2
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
_0220167C:
	ldr ip, [r3, #0xa4]
	cmp ip, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x10c]
	blx ip
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022016A4: .word 0x0220BCD8

	arm_func_start FUN_022016A8
FUN_022016A8: ; 0x022016A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r2, #1
	mov r5, r0
	str r2, [r4, #0x800]
	mov r3, #0x5c
	mov r2, #0
	strb r3, [r4]
	bl FUN_02201714
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_02201714
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_02201714
	ldr r1, _02201710 ; =0x0220F1D0
	mov r0, r4
	bl FUN_022021C0
	ldr r0, [r4, #0x800]
	sub r0, r0, #1
	str r0, [r4, #0x800]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02201710: .word 0x0220F1D0

	arm_func_start FUN_02201714
FUN_02201714: ; 0x02201714
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x194
	mov r8, r2
	sub r2, r8, #1
	mov r3, #0
	mov sl, r0
	cmp r2, #1
	movhi r0, #1
	mov sb, r1
	str r3, [sp, #0x18c]
	strhi r0, [sp]
	bhi _02201758
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	str r0, [sp]
_02201758:
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #0x8c
	mov r0, r8
	blx r3
	ldr r1, [sp, #0x18c]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	addle sp, sp, #0x194
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, sp, #0x8c
	str r0, [sp, #8]
	mov r4, #0x5c
_02201790:
	ldrb r1, [r6]
	ldr r0, _022018E0 ; =0x0220F3A8
	ldr fp, [r0, r1, lsl #2]
	cmp fp, #0
	ldreq fp, _022018E4 ; =0x0220F1E4
	cmp r8, #0
	bne _02201804
	mov r1, fp
	mov r0, sb
	bl FUN_022021C0
	ldr r0, [sb, #0x800]
	mov r1, sb
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r5, [sb, #0x800]
	ldrb r0, [r6]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r5, r0
	bne _022017F4
	ldr r1, _022018E8 ; =0x0220F1EC
	mov r0, sb
	bl FUN_022021C0
_022017F4:
	ldr r0, [sb, #0x800]
	sub r0, r0, #1
	strb r4, [sb, r0]
	b _022018BC
_02201804:
	ldr r0, [sp]
	ldr r7, [sp, #8]
	cmp r0, #0
	ble _022018BC
_02201814:
	ldr r1, _022018EC ; =0x0220F1F0
	add r0, sp, #0xc
	mov r2, fp
	mov r3, r7
	bl sprintf
	mov r0, sb
	add r1, sp, #0xc
	bl FUN_022021C0
	ldr r0, [sb, #0x800]
	cmp r8, #1
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r5, [sb, #0x800]
	bne _02201868
	ldrb r0, [r6]
	mov r1, r7
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	blx ip
	b _02201888
_02201868:
	cmp r8, #2
	bne _02201888
	ldrb r0, [r6]
	mov r1, r7
	mov r2, sb
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	blx ip
_02201888:
	ldr r0, [sb, #0x800]
	cmp r5, r0
	bne _022018A0
	ldr r1, _022018E8 ; =0x0220F1EC
	mov r0, sb
	bl FUN_022021C0
_022018A0:
	ldr r0, [sb, #0x800]
	add r7, r7, #1
	sub r0, r0, #1
	strb r4, [sb, r0]
	ldr r0, [sp]
	cmp r7, r0
	blt _02201814
_022018BC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18c]
	add r0, r0, #1
	add r6, r6, #1
	str r0, [sp, #4]
	cmp r0, r1
	blt _02201790
	add sp, sp, #0x194
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022018E0: .word 0x0220F3A8
_022018E4: .word 0x0220F1E4
_022018E8: .word 0x0220F1EC
_022018EC: .word 0x0220F1F0

	arm_func_start FUN_022018F0
FUN_022018F0: ; 0x022018F0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, #0
	cmp r3, #3
	addlt sp, sp, #0x14
	mov lr, r4
	mov ip, r4
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r7, [r2], #1
	sub r3, r3, #1
	cmp r7, #0
	beq _02201930
	cmp r7, #0xff
	movne r4, r2
	addne r2, r2, r7
	subne r3, r3, r7
_02201930:
	cmp r3, #2
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r6, [r2], #1
	sub r3, r3, #1
	cmp r6, #0
	beq _0220195C
	cmp r6, #0xff
	movne lr, r2
	addne r2, r2, r6
	subne r3, r3, r6
_0220195C:
	cmp r3, #1
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	ldrb r5, [r2]
	sub r3, r3, #1
	cmp r5, #0
	beq _02201984
	cmp r5, #0xff
	addne ip, r2, #1
	subne r3, r3, r5
_02201984:
	cmp r3, #0
	addlt sp, sp, #0x14
	ldmltia sp!, {r4, r5, r6, r7, pc}
	str r6, [sp]
	str lr, [sp, #4]
	str r5, [sp, #8]
	mov r2, r7
	mov r3, r4
	str ip, [sp, #0xc]
	bl FUN_022019B4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_022019B4
FUN_022019B4: ; 0x022019B4
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	str r3, [sp]
	mov r3, r2
	mov r2, #0
	mov r5, r0
	mov r4, r1
	bl FUN_02201A14
	ldr ip, [sp, #0x14]
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r2, #1
	str ip, [sp]
	bl FUN_02201A14
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_02201A14
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02201A14
FUN_02201A14: ; 0x02201A14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x114
	movs fp, r3
	mov r3, #0
	ldr r7, [sp, #0x138]
	str r3, [sp, #0x10c]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	addeq sp, sp, #0x114
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r0, r8, #1
	cmp r0, #1
	bhi _02201AC0
	ldr r0, [sb, #0x800]
	rsb r0, r0, #0x800
	cmp r0, #2
	addlo sp, sp, #0x114
	ldmloia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x10c]
	ldr r2, [sl, #0x98]
	mov r0, r8
	blx r2
	str r0, [sp]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #8]
	add r0, sp, #8
	ldrb r1, [r0]
	ldr r2, [sb, #0x800]
	ldrb r0, [r0, #1]
	add r3, sb, r2
	strb r1, [sb, r2]
	strb r0, [r3, #1]
	ldr r0, [sb, #0x800]
	add r0, r0, #2
	str r0, [sb, #0x800]
	b _02201AC8
_02201AC0:
	mov r0, #1
	str r0, [sp]
_02201AC8:
	cmp fp, #0xff
	bne _02201B9C
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x94]
	add r1, sp, #0xc
	mov r0, r8
	blx r3
	ldr r0, [sp, #0x10c]
	mov r7, #0
	cmp r0, #0
	ble _02201B64
	ldr fp, _02201C64 ; =0x0220F1E4
	ldr r4, _02201C68 ; =0x0220F3A8
	add r5, sp, #0xc
_02201B00:
	ldrb r0, [r5]
	ldr r1, [r4, r0, lsl #2]
	mov r0, sb
	cmp r1, #0
	moveq r1, fp
	bl FUN_022021C0
	cmp r8, #0
	bne _02201B50
	ldrb r0, [r5]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	ldr r6, [sb, #0x800]
	blx r3
	ldr r0, [sb, #0x800]
	cmp r6, r0
	bne _02201B50
	ldr r1, _02201C6C ; =0x0220F1EC
	mov r0, sb
	bl FUN_022021C0
_02201B50:
	ldr r0, [sp, #0x10c]
	add r7, r7, #1
	cmp r7, r0
	add r5, r5, #1
	blt _02201B00
_02201B64:
	ldr r1, [sb, #0x800]
	rsb r0, r1, #0x800
	cmp r0, #1
	addlt sp, sp, #0x114
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, r1, #1
	str r0, [sb, #0x800]
	mov r0, #0
	strb r0, [sb, r1]
	ldr fp, [sp, #0x10c]
	cmp r8, #0
	add r7, sp, #0xc
	addeq sp, sp, #0x114
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02201B9C:
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	addle sp, sp, #0x114
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r6, [sp, #4]
_02201BB4:
	ldr r5, [sp, #4]
	cmp fp, #0
	ble _02201C4C
_02201BC0:
	cmp r8, #0
	ldr r4, [sb, #0x800]
	bne _02201BE4
	ldrb r0, [r7, r5]
	ldr r2, [sl, #0x10c]
	ldr r3, [sl, #0x88]
	mov r1, sb
	blx r3
	b _02201C28
_02201BE4:
	cmp r8, #1
	bne _02201C08
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x8c]
	mov r1, r6
	mov r2, sb
	blx ip
	b _02201C28
_02201C08:
	cmp r8, #2
	bne _02201C28
	ldrb r0, [r7, r5]
	ldr r3, [sl, #0x10c]
	ldr ip, [sl, #0x90]
	mov r1, r6
	mov r2, sb
	blx ip
_02201C28:
	ldr r0, [sb, #0x800]
	cmp r4, r0
	bne _02201C40
	ldr r1, _02201C6C ; =0x0220F1EC
	mov r0, sb
	bl FUN_022021C0
_02201C40:
	add r5, r5, #1
	cmp r5, fp
	blt _02201BC0
_02201C4C:
	ldr r0, [sp]
	add r6, r6, #1
	cmp r6, r0
	blt _02201BB4
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02201C64: .word 0x0220F1E4
_02201C68: .word 0x0220F3A8
_02201C6C: .word 0x0220F1EC

	arm_func_start FUN_02201C70
FUN_02201C70: ; 0x02201C70
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r0, r1
	ldr r1, _02201D28 ; =0x0220F1F8
	add r2, sp, #0
	add r3, sp, #4
	bl sscanf
	ldr r0, [sp]
	ldr lr, [sp, #4]
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	and r3, r3, #0xff0000
	and r2, ip, #0xff000000
	orr r1, r3, r1
	orrs r2, r2, r1
	mov r0, lr, lsl #0x10
	str r2, [sp]
	addeq sp, sp, #8
	mov r1, r0, lsr #0x10
	ldmeqia sp!, {r4, pc}
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x104]
	cmp r0, r2
	bne _02201D04
	add r0, r4, #0x100
	ldrh r0, [r0, #8]
	cmp r0, r1
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
_02201D04:
	str r2, [r4, #0x104]
	add r0, r4, #0x100
	strh r1, [r0, #8]
	ldr r0, [sp]
	ldr r2, [r4, #0x10c]
	ldr r3, [r4, #0xa8]
	blx r3
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	.align 2, 0
_02201D28: .word 0x0220F1F8

	arm_func_start FUN_02201D2C
FUN_02201D2C: ; 0x02201D2C
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x48
	mov r5, r3
	cmp r5, #1
	mov r6, r0
	mov r4, r1
	addlt sp, sp, #0x48
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r5, #0x41
	addgt sp, sp, #0x48
	ldmgtia sp!, {r4, r5, r6, pc}
	sub r0, r5, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0
	addne sp, sp, #0x48
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r2
	bl strcpy
	add r0, r6, #0x44
	bl strlen
	mov r1, r0
	add r2, sp, #0
	add r0, r6, #0x44
	sub r3, r5, #1
	bl FUN_02201E0C
	ldr r2, [r4, #0x800]
	sub r1, r5, #1
	add r0, sp, #0
	add r2, r4, r2
	bl FUN_02201F50
	ldr r0, [r4, #0x800]
	add r0, r4, r0
	bl strlen
	ldr r1, [r4, #0x800]
	add r0, r0, #1
	add r0, r1, r0
	str r0, [r4, #0x800]
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02201DCC
FUN_02201DCC: ; 0x02201DCC
	stmdb sp!, {lr}
	sub sp, sp, #4
	strb r1, [r0]
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	add lr, r0, #1
	mov r1, #5
	strb ip, [r0, #1]
	strb r3, [lr, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	str r1, [r0, #0x800]
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_02201E0C
FUN_02201E0C: ; 0x02201E0C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x104
	str r1, [sp]
	add r4, sp, #4
	mov sl, r0
	mov sb, r2
	mov r8, r3
	mov r1, #0
_02201E2C:
	add r0, r1, #1
	mov r0, r0, lsl #0x10
	strb r1, [r4], #1
	mov r1, r0, asr #0x10
	cmp r1, #0x100
	blt _02201E2C
	mov r7, #0
	add r5, sp, #4
	mov r6, r7
	mov r4, r7
	mov fp, r5
_02201E58:
	ldrb r3, [r5]
	ldrb r2, [sl, r7]
	ldr r1, [sp]
	add r0, r7, #1
	add r2, r3, r2
	add r2, r6, r2
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #24
	add r2, r3, r2, ror #24
	and r6, r2, #0xff
	bl _s32_div_f
	and r7, r1, #0xff
	mov r0, r5
	add r1, fp, r6
	bl FUN_0220206C
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, asr #0x10
	cmp r4, #0x100
	add r5, r5, #1
	blt _02201E58
	mov r6, #0
	cmp r8, #0
	mov r5, r6
	mov r7, r6
	addle sp, sp, #0x104
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, sp, #4
_02201EC8:
	ldrb r0, [sb, r7]
	add r0, r6, r0
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #24
	add r0, r1, r0, ror #24
	and r6, r0, #0xff
	ldrb r1, [r4, r6]
	add r0, r4, r6
	add r1, r1, r5
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r1, r2, r1, ror #24
	and r5, r1, #0xff
	add r1, r4, r5
	bl FUN_0220206C
	ldrb r2, [r4, r6]
	ldrb r1, [r4, r5]
	add r3, r7, #1
	ldrb r0, [sb, r7]
	add r1, r2, r1
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #24
	add r1, r2, r1, ror #24
	and r1, r1, #0xff
	ldrb r2, [r4, r1]
	mov r1, r3, lsl #0x10
	eor r0, r0, r2
	strb r0, [sb, r7]
	mov r7, r1, asr #0x10
	cmp r7, r8
	blt _02201EC8
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02201F50
FUN_02201F50: ; 0x02201F50
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sb, r1
	mov sl, r0
	mov r8, r2
	cmp sb, #0
	mov r7, #0
	ble _02202010
	mov r4, r7
	str r7, [sp]
	mov fp, r7
_02201F7C:
	mov r2, fp
	add r1, sp, #4
_02201F84:
	cmp r7, sb
	ldrltb r0, [sl], #1
	add r2, r2, #1
	add r7, r7, #1
	strltb r0, [r1]
	strgeb r4, [r1]
	cmp r2, #2
	add r1, r1, #1
	ble _02201F84
	ldrb r5, [sp, #4]
	ldrb r3, [sp, #5]
	ldrb r2, [sp, #6]
	and r1, r5, #3
	and r0, r3, #0xf
	mov r5, r5, asr #2
	mov r1, r1, lsl #4
	strb r5, [sp, #7]
	add r3, r1, r3, asr #4
	mov r0, r0, lsl #2
	add r1, r0, r2, asr #6
	and r0, r2, #0x3f
	ldr r5, [sp]
	add r6, sp, #7
	strb r3, [sp, #8]
	strb r1, [sp, #9]
	strb r0, [sp, #0xa]
_02201FEC:
	ldrb r0, [r6]
	bl FUN_02202020
	add r5, r5, #1
	cmp r5, #3
	strb r0, [r8], #1
	add r6, r6, #1
	ble _02201FEC
	cmp r7, sb
	blt _02201F7C
_02202010:
	mov r0, #0
	strb r0, [r8]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02202020
FUN_02202020: ; 0x02202020
	cmp r0, #0x1a
	addlo r0, r0, #0x41
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x34
	addlo r0, r0, #0x47
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x3e
	sublo r0, r0, #4
	andlo r0, r0, #0xff
	bxlo lr
	cmp r0, #0x3e
	moveq r0, #0x2b
	bxeq lr
	cmp r0, #0x3f
	moveq r0, #0x2f
	movne r0, #0
	bx lr

	arm_func_start FUN_0220206C
FUN_0220206C: ; 0x0220206C
	ldrb r3, [r0]
	ldrb r2, [r1]
	strb r2, [r0]
	strb r3, [r1]
	bx lr

	arm_func_start FUN_02202080
FUN_02202080: ; 0x02202080
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r4, r1, asr #8
	mov r1, r1, lsl #8
	mov r6, r2
	mov r5, #2
	and r2, r4, #0xff
	and r1, r1, #0xff00
	strb r5, [r6, #1]
	orr r1, r2, r1
	strh r1, [r6, #2]
	mov r4, #0
	movs r7, r0
	mov r5, r3
	streq r4, [r6, #4]
	beq _022020D0
	bl FUN_021EFB38
	str r0, [r6, #4]
_022020D0:
	ldr r1, [r6, #4]
	mvn r0, #0
	cmp r1, r0
	bne _0220211C
	ldr r1, _02202130 ; =0x0220F204
	mov r0, r7
	bl strcmp
	cmp r0, #0
	beq _0220211C
	mov r0, r7
	bl FUN_0209A6EC
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r6, #4]
_0220211C:
	cmp r5, #0
	strne r4, [r5]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02202130: .word 0x0220F204

	arm_func_start FUN_02202134
FUN_02202134: ; 0x02202134
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	bl FUN_021EFE70
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _022021B8 ; =0x022115D8
	mov r2, #0
	str r2, [r1]
	ldr ip, _022021BC ; =0x022115DC
_0220215C:
	ldr r3, [r1]
	ldr r2, [r0, #0xc]
	mov r5, r3, lsl #2
	ldr r4, [r2, r3, lsl #2]
	cmp r4, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldrb r3, [r4]
	ldrb r2, [r4, #1]
	add lr, ip, r5
	strb r3, [ip, r5]
	strb r2, [lr, #1]
	ldrb r3, [r4, #2]
	ldrb r2, [r4, #3]
	strb r3, [lr, #2]
	strb r2, [lr, #3]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	cmp r2, #5
	blt _0220215C
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022021B8: .word 0x022115D8
_022021BC: .word 0x022115DC

	arm_func_start FUN_022021C0
FUN_022021C0: ; 0x022021C0
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r4, r0
	mov r0, r6
	bl strlen
	ldr r3, [r4, #0x800]
	add r5, r0, #1
	rsb r0, r3, #0x800
	cmp r5, r0
	movgt r5, r0
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	add r0, r4, r3
	bl memcpy
	ldr r0, [r4, #0x800]
	mov r1, #0
	add r0, r0, r5
	str r0, [r4, #0x800]
	ldr r0, [r4, #0x800]
	sub r0, r0, #1
	strb r1, [r4, r0]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02202220
FUN_02202220: ; 0x02202220
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x18
	mov r2, r1
	mov r4, r0
	ldr r1, _02202250 ; =0x0220F214
	add r0, sp, #0
	bl sprintf
	add r1, sp, #0
	mov r0, r4
	bl FUN_022021C0
	add sp, sp, #0x18
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202250: .word 0x0220F214

	arm_func_start FUN_02202254
FUN_02202254: ; 0x02202254
	ldr r3, [r0, #0x100]
	cmp r3, #0xfe
	bxge lr
	cmp r1, #1
	bxlt lr
	cmp r1, #0xfe
	bxgt lr
	add r2, r3, #1
	str r2, [r0, #0x100]
	strb r1, [r0, r3]
	bx lr

	arm_func_start FUN_02202280
FUN_02202280: ; 0x02202280
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _02202300 ; =0x0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _022022A8
	mov r0, r4
	mov r1, #2
	bl FUN_02200F3C
_022022A8:
	ldr r0, [r4]
	mvn r1, #0
	cmp r0, r1
	beq _022022C8
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _022022C8
	bl FUN_021EFD9C
_022022C8:
	mvn r0, #0
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #0xac]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	beq _022022E8
	bl FUN_021F0248
_022022E8:
	ldr r0, _02202304 ; =0x0220F064
	cmp r4, r0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl FUN_021DD82C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202300: .word 0x0220F060
_02202304: .word 0x0220F064

	arm_func_start FUN_02202308
FUN_02202308: ; 0x02202308
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _0220235C ; =0x0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl FUN_021F025C
	ldr r2, [r4, #0xac]
	ldr r1, _02202360 ; =0x00002710
	sub r0, r0, r2
	cmp r0, r1
	movlo r0, #1
	strlo r0, [r4, #0xb4]
	ldmloia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_02200F3C
	mov r0, #0
	str r0, [r4, #0xb4]
	ldmia sp!, {r4, pc}
	.align 2, 0
_0220235C: .word 0x0220F060
_02202360: .word 0x00002710

	arm_func_start FUN_02202364
FUN_02202364: ; 0x02202364
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	bl FUN_021F025C
	ldr r2, [r5]
	mvn r1, #0
	cmp r2, r1
	mov r4, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r2, [r5, #0xb8]
	cmp r2, #0
	ble _022023F4
	ldr r1, [r5, #0xac]
	ldr r0, _0220247C ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _022023F4
	cmp r2, #4
	blt _022023D8
	mov r0, #0
	str r0, [r5, #0xb8]
	ldr r2, [r5, #0x10c]
	ldr r3, [r5, #0x9c]
	ldr r1, _02202480 ; =0x0220F218
	mov r0, #5
	blx r3
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
_022023D8:
	mov r0, r5
	mov r1, #3
	bl FUN_02200F3C
	ldr r0, [r5, #0xb8]
	add r0, r0, #1
	str r0, [r5, #0xb8]
	b _02202454
_022023F4:
	ldr r0, [r5, #0xb4]
	cmp r0, #0
	beq _02202424
	ldr r1, [r5, #0xac]
	ldr r0, _0220247C ; =0x00002710
	sub r1, r4, r1
	cmp r1, r0
	bls _02202424
	mov r0, r5
	mov r1, #1
	bl FUN_02200F3C
	b _02202454
_02202424:
	ldr r2, [r5, #0xac]
	ldr r0, _02202484 ; =0x0000EA60
	sub r1, r4, r2
	cmp r1, r0
	bhi _02202448
	cmp r2, #0
	beq _02202448
	cmp r4, r2
	bhs _02202454
_02202448:
	mov r0, r5
	mov r1, #0
	bl FUN_02200F3C
_02202454:
	ldr r1, [r5, #0xb0]
	ldr r0, _02202488 ; =0x00004E20
	sub r1, r4, r1
	cmp r1, r0
	addls sp, sp, #4
	ldmlsia sp!, {r4, r5, pc}
	mov r0, r5
	bl FUN_02201150
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220247C: .word 0x00002710
_02202480: .word 0x0220F218
_02202484: .word 0x0000EA60
_02202488: .word 0x00004E20

	arm_func_start FUN_0220248C
FUN_0220248C: ; 0x0220248C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r1, #8
	mov r4, r0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0xc4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [r4]
	bl FUN_021EFF2C
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r8, _02202530 ; =0x02211630
	add sl, sp, #8
	add sb, sp, #0x10
	mov r6, #0
	mov r7, #0xff
	mvn r5, #0
_022024DC:
	str sl, [sp]
	str sb, [sp, #4]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_021EFC40
	mov r2, r0
	cmp r2, r5
	beq _02202518
	mov r0, r4
	mov r1, r8
	mov r3, sl
	strb r6, [r8, r2]
	bl FUN_022011A8
_02202518:
	ldr r0, [r4]
	bl FUN_021EFF2C
	cmp r0, #0
	bne _022024DC
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02202530: .word 0x02211630

	arm_func_start FUN_02202534
FUN_02202534: ; 0x02202534
	stmdb sp!, {r4, lr}
	movs r4, r0
	ldreq r0, _02202564 ; =0x0220F060
	ldreq r4, [r0]
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	beq _02202558
	mov r0, r4
	bl FUN_02202364
_02202558:
	mov r0, r4
	bl FUN_0220248C
	ldmia sp!, {r4, pc}
	.align 2, 0
_02202564: .word 0x0220F060

	arm_func_start FUN_02202568
FUN_02202568: ; 0x02202568
	cmp r0, #0
	ldreq r0, _0220257C ; =0x0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa8]
	bx lr
	.align 2, 0
_0220257C: .word 0x0220F060

	arm_func_start FUN_02202580
FUN_02202580: ; 0x02202580
	cmp r0, #0
	ldreq r0, _02202594 ; =0x0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa4]
	bx lr
	.align 2, 0
_02202594: .word 0x0220F060

	arm_func_start FUN_02202598
FUN_02202598: ; 0x02202598
	cmp r0, #0
	ldreq r0, _022025AC ; =0x0220F060
	ldreq r0, [r0]
	str r1, [r0, #0xa0]
	bx lr
	.align 2, 0
_022025AC: .word 0x0220F060

	arm_func_start FUN_022025B0
FUN_022025B0: ; 0x022025B0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	movs r5, r0
	mov r8, r1
	mov r4, r2
	mov r7, r3
	ldreq r5, _02202760 ; =0x0220F064
	beq _022025E0
	mov r0, #0x110
	bl FUN_021DD860
	str r0, [r5]
	ldr r5, [r5]
_022025E0:
	bl FUN_021F025C
	bl srand
	mov r1, r7
	add r0, r5, #4
	bl strcpy
	ldr r1, [sp, #0x58]
	add r0, r5, #0x44
	bl strcpy
	str r4, [r5, #0xc0]
	mov r6, #0
	str r6, [r5, #0xac]
	str r6, [r5, #0xb0]
	str r8, [r5]
	mov r1, #1
	ldr r0, [sp, #0x7c]
	str r1, [r5, #0xb8]
	ldr r1, [sp, #0x64]
	str r0, [r5, #0x10c]
	ldr r0, [sp, #0x68]
	str r1, [r5, #0x88]
	ldr r1, [sp, #0x6c]
	str r0, [r5, #0x8c]
	ldr r0, [sp, #0x70]
	str r1, [r5, #0x90]
	ldr r1, [sp, #0x74]
	str r0, [r5, #0x94]
	ldr r0, [sp, #0x78]
	str r1, [r5, #0x98]
	str r0, [r5, #0x9c]
	str r6, [r5, #0xa0]
	str r6, [r5, #0xa4]
	ldr r0, [sp, #0x5c]
	str r6, [r5, #0xd4]
	str r0, [r5, #0xbc]
	ldr r0, [sp, #0x60]
	str r6, [r5, #0xc4]
	str r0, [r5, #0xc8]
	str r6, [r5, #0x104]
	add r0, r5, #0x100
	strh r6, [r0, #8]
	str r6, [r5, #0xa8]
	str r6, [r5, #0xb4]
	ldr r4, _02202764 ; =0x80808081
	ldr r8, _02202768 ; =0x000000FF
_02202690:
	bl rand
	smull r1, r2, r4, r0
	add r2, r0, r2
	add r3, r5, r6
	add r6, r6, #1
	mov r2, r2, asr #7
	mov r1, r0, lsr #0x1f
	add r2, r1, r2
	smull r1, r2, r8, r2
	sub r2, r0, r1
	strb r2, [r3, #0x84]
	cmp r6, #4
	blt _02202690
	mov r2, #0
	mvn r1, #0
_022026CC:
	add r0, r5, r2, lsl #2
	add r2, r2, #1
	str r1, [r0, #0xd8]
	cmp r2, #0xa
	blt _022026CC
	mov r1, #0
	ldr r0, _0220276C ; =0x022115D8
	str r1, [r5, #0x100]
	ldr r0, [r0]
	cmp r0, #0
	bne _022026FC
	bl FUN_02202134
_022026FC:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _02202748
	ldr r0, _02202770 ; =0x022115F0
	ldrsb r4, [r0]
	cmp r4, #0
	bne _02202728
	ldr r1, _02202774 ; =0x0220F250
	add r0, sp, #0
	mov r2, r7
	bl sprintf
_02202728:
	cmp r4, #0
	ldrne r0, _02202770 ; =0x022115F0
	ldr r1, _02202778 ; =0x00006CFC
	addeq r0, sp, #0
	add r2, r5, #0xcc
	mov r3, #0
	bl FUN_02202080
	b _0220274C
_02202748:
	mov r0, #1
_0220274C:
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02202760: .word 0x0220F064
_02202764: .word 0x80808081
_02202768: .word 0x000000FF
_0220276C: .word 0x022115D8
_02202770: .word 0x022115F0
_02202774: .word 0x0220F250
_02202778: .word 0x00006CFC

	arm_func_start FUN_0220277C
FUN_0220277C: ; 0x0220277C
	cmp r0, #0x32
	bxlt lr
	cmp r0, #0xfe
	bxgt lr
	ldr r2, _02202798 ; =0x0220F3A8
	str r1, [r2, r0, lsl #2]
	bx lr
	.align 2, 0
_02202798: .word 0x0220F3A8

	arm_func_start FUN_0220279C
FUN_0220279C: ; 0x0220279C
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r2
	cmp r5, #0
	mov r7, r0
	mov r6, r1
	mov r4, #0
	addle sp, sp, #4
	ldmleia sp!, {r4, r5, r6, r7, pc}
_022027C0:
	ldrb r1, [r6, r4]
	mov r0, r7
	bl FUN_022027E4
	strb r0, [r6, r4]
	add r4, r4, #1
	cmp r4, r5
	blt _022027C0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_022027E4
FUN_022027E4: ; 0x022027E4
	stmdb sp!, {r4, lr}
	ldrb r4, [r0, #0x100]
	add r2, r4, #1
	strb r2, [r0, #0x100]
	ldrb r3, [r0, #0x101]
	ldrb r2, [r0, r4]
	add r2, r3, r2
	strb r2, [r0, #0x101]
	ldrb r3, [r0, #0x104]
	ldrb r2, [r0, #0x101]
	ldrb r4, [r0, r3]
	ldrb r2, [r0, r2]
	strb r2, [r0, r3]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x101]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r3, [r0, #0x100]
	ldrb r2, [r0, #0x103]
	ldrb r3, [r0, r3]
	strb r3, [r0, r2]
	ldrb r2, [r0, #0x100]
	strb r4, [r0, r2]
	ldrb r3, [r0, #0x102]
	ldrb r2, [r0, r4]
	add r2, r3, r2
	strb r2, [r0, #0x102]
	ldrb r3, [r0, #0x103]
	ldrb r2, [r0, #0x104]
	ldrb ip, [r0, #0x101]
	ldrb r4, [r0, #0x102]
	ldrb lr, [r0, #0x100]
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	ldrb ip, [r0, ip]
	ldrb r4, [r0, r4]
	add r2, r3, r2
	ldrb r3, [r0, lr]
	add r2, ip, r2
	and r2, r2, #0xff
	add r3, r4, r3
	ldrb r2, [r0, r2]
	and r3, r3, #0xff
	ldrb r3, [r0, r3]
	ldrb r2, [r0, r2]
	eor r3, r1, r3
	eor r2, r3, r2
	strb r2, [r0, #0x103]
	strb r1, [r0, #0x104]
	ldrb r0, [r0, #0x103]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022028B0
FUN_022028B0: ; 0x022028B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov r7, r2
	mov sb, r0
	mov r8, r1
	cmp r7, #1
	bhs _022028D8
	bl FUN_02202978
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022028D8:
	mov r0, #0
_022028DC:
	strb r0, [sb, r0]
	add r0, r0, #1
	cmp r0, #0x100
	blt _022028DC
	mov r0, #0
	str r0, [sp, #0xc]
	strb r0, [sp, #8]
	mov r6, #0xff
	add r5, sp, #8
	add r4, sp, #0xc
_02202904:
	str r5, [sp]
	mov r0, sb
	mov r1, r6
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl FUN_022029C0
	ldrb r2, [sb, r6]
	ldrb r1, [sb, r0]
	strb r1, [sb, r6]
	strb r2, [sb, r0]
	subs r6, r6, #1
	bpl _02202904
	ldrb r1, [sb, #1]
	mov r0, #0
	strb r1, [sb, #0x100]
	ldrb r1, [sb, #3]
	strb r1, [sb, #0x101]
	ldrb r1, [sb, #5]
	strb r1, [sb, #0x102]
	ldrb r1, [sb, #7]
	strb r1, [sb, #0x103]
	ldrb r1, [sp, #8]
	ldrb r1, [sb, r1]
	strb r1, [sb, #0x104]
	strb r0, [sp, #8]
	str r0, [sp, #0xc]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_02202978
FUN_02202978: ; 0x02202978
	mov r1, #1
	strb r1, [r0, #0x100]
	mov r1, #3
	strb r1, [r0, #0x101]
	mov r1, #5
	strb r1, [r0, #0x102]
	mov r1, #7
	strb r1, [r0, #0x103]
	mov r1, #0xb
	strb r1, [r0, #0x104]
	mov r2, #0
	mov r1, #0xff
_022029A8:
	strb r1, [r0, r2]
	add r2, r2, #1
	cmp r2, #0x100
	sub r1, r1, #1
	blt _022029A8
	bx lr

	arm_func_start FUN_022029C0
FUN_022029C0: ; 0x022029C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	ldr r8, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	movs sl, r1
	mov fp, r0
	str r2, [sp]
	mov sb, r3
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #1
	mov r6, #0
	mov r5, #1
	bls _02202A0C
_022029FC:
	mov r0, r5, lsl #1
	add r5, r0, #1
	cmp r5, sl
	blo _022029FC
_02202A0C:
	mov r4, #0
_02202A10:
	ldr r2, [r7]
	add r6, r6, #1
	add r0, r2, #1
	str r0, [r7]
	ldrb r1, [r8]
	ldr r0, [sp]
	ldrb r0, [r0, r2]
	ldrb r1, [fp, r1]
	add r0, r1, r0
	strb r0, [r8]
	ldr r0, [r7]
	cmp r0, sb
	strhs r4, [r7]
	ldrhsb r0, [r8]
	addhs r0, r0, sb
	strhsb r0, [r8]
	ldrb r0, [r8]
	cmp r6, #0xb
	and r0, r5, r0
	bls _02202A6C
	mov r1, sl
	bl _u32_div_f
	mov r0, r1
_02202A6C:
	cmp r0, sl
	bhi _02202A10
	and r0, r0, #0xff
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02202A80
FUN_02202A80: ; 0x02202A80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl FUN_022032AC
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x14
	bl FUN_022032AC
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02202AB8
FUN_02202AB8: ; 0x02202AB8
	ldr r3, [r0, #0x40]
	cmp r3, #0x14
	addlt r2, r3, #1
	strlt r2, [r0, #0x40]
	addlt r0, r0, r3
	strltb r1, [r0, #0x2c]
	bx lr

	arm_func_start FUN_02202AD4
FUN_02202AD4: ; 0x02202AD4
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	bl FUN_02202C14
	mov r0, r4
	bl FUN_02202B84
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ble _02202B0C
	mov r0, r4
	bl FUN_02202B34
_02202B0C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r3, [r4, #0x48]
	ldr ip, [r4, #0x44]
	mov r0, r4
	mov r1, #2
	mov r2, #0
	blx ip
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02202B34
FUN_02202B34: ; 0x02202B34
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	add r4, r5, #0x14
	b _02202B5C
_02202B48:
	mov r0, r4
	bl FUN_02203318
	mov r1, r0
	mov r0, r5
	bl FUN_022030C0
_02202B5C:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	addge sp, sp, #4
	ldmgeia sp!, {r4, r5, pc}
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bgt _02202B48
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02202B84
FUN_02202B84: ; 0x02202B84
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl FUN_021F025C
	ldr r3, [r6, #8]
	mov r5, r0
	cmp r3, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _02202C10 ; =0x000009C4
	add r7, r6, #8
	mov r8, #1
_02202BAC:
	ldr r0, [r3, #0x1c]
	add r0, r0, r4
	cmp r5, r0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r2, [r3, #0x15]
	mov r0, r6
	mov r1, r8
	orr r2, r2, #0x10
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	str r4, [r2, #0x1c]
	ldr r3, [r6, #8]
	ldrb r2, [r3, #0x15]
	and r2, r2, #0xd3
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x48]
	ldr ip, [r6, #0x44]
	blx ip
	mov r0, r7
	bl FUN_02203318
	ldr r3, [r6, #8]
	cmp r3, #0
	bne _02202BAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02202C10: .word 0x000009C4

	arm_func_start FUN_02202C14
FUN_02202C14: ; 0x02202C14
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02202DB0 ; =0x00000814
	sub sp, sp, ip
	movs sb, r1
	mov r1, #8
	mov sl, r0
	str r1, [sp, #0x10]
	ldrne r8, [sl, #0x24]
	ldreq r8, [sl, #0x20]
	mov r0, r8
	bl FUN_021EFF2C
	cmp r0, #0
	ldreq ip, _02202DB0 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r5, sp, #0x14
	add fp, sp, #8
	mov r4, #0
_02202C5C:
	ldr r2, _02202DB4 ; =0x000007FF
	str fp, [sp]
	add r6, sp, #0x10
	mov r0, r8
	mov r1, r5
	mov r3, r4
	str r6, [sp, #4]
	bl FUN_021EFC40
	mov r7, r0
	mvn r0, #0
	cmp r7, r0
	ldreq ip, _02202DB0 ; =0x00000814
	addeq sp, sp, ip
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r4, [r5, r7]
	ldr r6, [sl, #8]
	cmp r6, #0
	beq _02202D94
_02202CA4:
	cmp sb, #0
	beq _02202CC8
	ldrb r0, [r6, #0x15]
	ands r0, r0, #8
	beq _02202CC8
	ldr r1, [r6, #0x10]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _02202D24
_02202CC8:
	ldr r0, [sp, #0xc]
	ldr r3, [r6]
	cmp r3, r0
	bne _02202CF0
	ldrh r2, [r6, #4]
	ldrh r1, [sp, #0xa]
	cmp r2, r1
	beq _02202D24
	cmp sb, #0
	bne _02202D24
_02202CF0:
	ldr r1, [sl, #0x28]
	cmp r3, r1
	bne _02202D88
	ldrb r1, [r6, #0x15]
	ands r1, r1, #2
	beq _02202D88
	ldr r1, [r6, #8]
	cmp r1, r0
	bne _02202D88
	ldrh r1, [r6, #0xc]
	ldrh r0, [sp, #0xa]
	cmp r1, r0
	bne _02202D88
_02202D24:
	cmp sb, #0
	beq _02202D4C
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl FUN_02202DB8
	cmp r0, #0
	beq _02202D88
	b _02202D94
_02202D4C:
	ldr r0, [sl]
	cmp r0, #1
	bne _02202D70
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl FUN_02202E68
	b _02202D94
_02202D70:
	mov r0, sl
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl FUN_02202DC0
	b _02202D94
_02202D88:
	ldr r6, [r6, #0x20]
	cmp r6, #0
	bne _02202CA4
_02202D94:
	mov r0, r8
	bl FUN_021EFF2C
	cmp r0, #0
	bne _02202C5C
	ldr ip, _02202DB0 ; =0x00000814
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02202DB0: .word 0x00000814
_02202DB4: .word 0x000007FF

	arm_func_start FUN_02202DB8
FUN_02202DB8: ; 0x02202DB8
	mov r0, #1
	bx lr

	arm_func_start FUN_02202DC0
FUN_02202DC0: ; 0x02202DC0
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r7, r2
	mov r5, r0
	ldr r1, _02202E64 ; =0x0220F7A0
	mov r0, r7
	bl strstr
	cmp r0, #0
	movne r6, #1
	moveq r6, #0
	mov r0, r4
	mov r1, r7
	bl FUN_02203738
	cmp r6, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x14]
	ands r1, r0, #4
	orrne r0, r0, #0x41
	strneb r0, [r4, #0x14]
	orreq r0, r0, #0x42
	streqb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	and r0, r0, #0xf3
	strb r0, [r4, #0x14]
	bl FUN_021F025C
	ldr r2, [r4, #0x1c]
	mov r1, r4
	sub r0, r0, r2
	str r0, [r4, #0x1c]
	add r0, r5, #8
	bl FUN_022032AC
	ldr r3, [r5, #0x48]
	ldr ip, [r5, #0x44]
	mov r0, r5
	mov r2, r4
	mov r1, #0
	blx ip
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02202E64: .word 0x0220F7A0

	arm_func_start FUN_02202E68
FUN_02202E68: ; 0x02202E68
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	ldrsb r2, [r8]
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [sb, #0x14]
	add r8, r8, #5
	sub r7, r7, #5
	ands r0, r0, #4
	beq _02202F04
	ldr r0, [sl, #0x40]
	mov r6, #0
	cmp r0, #0
	ble _02202EF4
	ldr r4, _02202F64 ; =0x0220F3A8
_02202EB0:
	mov r0, r8
	mov r1, r7
	bl FUN_02206378
	movs r5, r0
	bmi _02202EF4
	add r0, sl, r6
	ldrb r1, [r0, #0x2c]
	mov r0, sb
	mov r2, r8
	ldr r1, [r4, r1, lsl #2]
	bl FUN_02203A80
	ldr r0, [sl, #0x40]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r5
	sub r7, r7, r5
	blt _02202EB0
_02202EF4:
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x41
	strb r0, [sb, #0x14]
	b _02202F20
_02202F04:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl FUN_02203554
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x43
	strb r0, [sb, #0x14]
_02202F20:
	ldrb r0, [sb, #0x14]
	and r0, r0, #0xf3
	strb r0, [sb, #0x14]
	bl FUN_021F025C
	ldr r2, [sb, #0x1c]
	mov r1, sb
	sub r0, r0, r2
	str r0, [sb, #0x1c]
	add r0, sl, #8
	bl FUN_022032AC
	ldr r3, [sl, #0x48]
	ldr r4, [sl, #0x44]
	mov r0, sl
	mov r2, sb
	mov r1, #0
	blx r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02202F64: .word 0x0220F3A8

	arm_func_start FUN_02202F68
FUN_02202F68: ; 0x02202F68
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrb ip, [r1, #0x14]
	add lr, r1, #0x14
	cmp r3, #0
	and ip, ip, #0xc3
	strb ip, [r1, #0x14]
	ldreqb r3, [lr]
	orreq r3, r3, #4
	streqb r3, [lr]
	beq _02202FB4
	cmp r3, #1
	ldreqb r3, [lr]
	orreq r3, r3, #8
	streqb r3, [lr]
	beq _02202FB4
	cmp r3, #2
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
_02202FB4:
	ldr ip, [r0, #0x10]
	ldr r3, [r0, #4]
	cmp ip, r3
	bge _02202FD0
	bl FUN_022030C0
	add sp, sp, #4
	ldmfd sp!, {pc}
_02202FD0:
	cmp r2, #0
	beq _02202FE8
	add r0, r0, #0x14
	bl FUN_02203350
	add sp, sp, #4
	ldmfd sp!, {pc}
_02202FE8:
	add r0, r0, #0x14
	bl FUN_02203378
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_02202FF8
FUN_02202FF8: ; 0x02202FF8
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	bl FUN_021EFD9C
	mvn r1, #0
	add r0, r4, #0x14
	str r1, [r4, #0x20]
	bl FUN_02203294
	add r0, r4, #8
	bl FUN_02203294
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203024
FUN_02203024: ; 0x02203024
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x14
	bl FUN_02203294
	add r0, r4, #8
	bl FUN_02203294
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203040
FUN_02203040: ; 0x02203040
	str r1, [r0, #0x28]
	bx lr

	arm_func_start FUN_02203048
FUN_02203048: ; 0x02203048
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	bne _02203070
	ldr r0, _022030BC ; =0x02210E5C
	ldr r0, [r0]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_02203070:
	bl FUN_021F024C
	str r4, [r6]
	mov r0, #2
	str r5, [r6, #4]
	mov r2, #0
	ldr r3, [sp, #0x10]
	str r2, [r6, #0x40]
	ldr r1, [sp, #0x14]
	str r3, [r6, #0x44]
	str r1, [r6, #0x48]
	mov r1, r0
	str r2, [r6, #0x28]
	bl FUN_021EFDB8
	str r0, [r6, #0x20]
	add r0, r6, #0x14
	bl FUN_02203294
	add r0, r6, #8
	bl FUN_02203294
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022030BC: .word 0x02210E5C

	arm_func_start FUN_022030C0
FUN_022030C0: ; 0x022030C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x114
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl FUN_02203378
	bl FUN_021F025C
	str r0, [r4, #0x1c]
	mov r0, #2
	strb r0, [sp, #9]
	ldrb r1, [r4, #0x14]
	ands r0, r1, #0x20
	addne sp, sp, #0x114
	ldmneia sp!, {r4, r5, pc}
	ldr r0, [r5]
	cmp r0, #1
	bne _022031C8
	mov r2, #0xfe
	mov r1, #0xfd
	mov r0, #0
	strb r2, [sp, #0x10]
	strb r1, [sp, #0x11]
	strb r0, [sp, #0x12]
	add r3, r4, #0x1c
	ldrb r2, [r4, #0x1c]
	ldrb r1, [r3, #1]
	add ip, sp, #0x13
	strb r2, [ip]
	strb r1, [ip, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [ip, #2]
	strb r1, [ip, #3]
	ldrb r1, [r4, #0x14]
	ands r1, r1, #4
	beq _022031B0
	ldr r1, [r5, #0x40]
	strb r1, [sp, #0x17]
	ldr r2, [r5, #0x40]
	cmp r2, #0
	ble _02203188
	add r1, sp, #0x10
_02203168:
	add r2, r5, r0
	ldrb r3, [r2, #0x2c]
	add r2, r0, #8
	add r0, r0, #1
	strb r3, [r1, r2]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	blt _02203168
_02203188:
	add r0, r2, #8
	add r1, sp, #0x10
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r0, r0, #9
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r2, r0, #0xa
	b _0220322C
_022031B0:
	mov r0, #0xff
	strb r0, [sp, #0x17]
	strb r0, [sp, #0x18]
	strb r0, [sp, #0x19]
	mov r2, #0xa
	b _0220322C
_022031C8:
	ands r0, r1, #4
	beq _02203204
	ldr r3, _0220328C ; =0x0220F7A8
	add ip, sp, #0x10
	mov r2, #6
_022031DC:
	ldrb r1, [r3], #1
	ldrb r0, [r3], #1
	subs r2, r2, #1
	strb r1, [ip], #1
	strb r0, [ip], #1
	bne _022031DC
	ldrb r0, [r3]
	mov r2, #0xd
	strb r0, [ip]
	b _0220322C
_02203204:
	ldr r3, _02203290 ; =0x0220F7B8
	add ip, sp, #0x10
	mov r2, #4
_02203210:
	ldrb r1, [r3], #1
	ldrb r0, [r3], #1
	subs r2, r2, #1
	strb r1, [ip], #1
	strb r0, [ip], #1
	bne _02203210
	mov r2, #8
_0220322C:
	ldr r1, [r4]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	bne _02203258
	ldrb r0, [r4, #0x15]
	ands r0, r0, #2
	ldrne r0, [r4, #8]
	strne r0, [sp, #0xc]
	ldrneh r0, [r4, #0xc]
	strneh r0, [sp, #0xa]
	bne _02203264
_02203258:
	str r1, [sp, #0xc]
	ldrh r0, [r4, #4]
	strh r0, [sp, #0xa]
_02203264:
	add r1, sp, #8
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x10
	mov r3, #0
	bl FUN_021EFBD4
	add sp, sp, #0x114
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_0220328C: .word 0x0220F7A8
_02203290: .word 0x0220F7B8

	arm_func_start FUN_02203294
FUN_02203294: ; 0x02203294
	mov r2, #0
	str r2, [r0, #4]
	ldr r1, [r0, #4]
	str r1, [r0]
	str r2, [r0, #8]
	bx lr

	arm_func_start FUN_022032AC
FUN_022032AC: ; 0x022032AC
	ldr r3, [r0]
	mov r2, #0
	cmp r3, #0
	beq _02203310
_022032BC:
	cmp r3, r1
	bne _02203300
	cmp r2, #0
	ldrne r1, [r3, #0x20]
	strne r1, [r2, #0x20]
	ldr r1, [r0]
	cmp r1, r3
	ldreq r1, [r3, #0x20]
	streq r1, [r0]
	ldr r1, [r0, #4]
	cmp r1, r3
	streq r2, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	bx lr
_02203300:
	mov r2, r3
	ldr r3, [r3, #0x20]
	cmp r3, #0
	bne _022032BC
_02203310:
	mov r0, #0
	bx lr

	arm_func_start FUN_02203318
FUN_02203318: ; 0x02203318
	ldr r2, [r0]
	cmp r2, #0
	beq _02203348
	ldr r1, [r2, #0x20]
	str r1, [r0]
	ldr r1, [r0]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
_02203348:
	mov r0, r2
	bx lr

	arm_func_start FUN_02203350
FUN_02203350: ; 0x02203350
	ldr r2, [r0]
	str r2, [r1, #0x20]
	str r1, [r0]
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr

	arm_func_start FUN_02203378
FUN_02203378: ; 0x02203378
	ldr r2, [r0, #4]
	cmp r2, #0
	strne r1, [r2, #0x20]
	str r1, [r0, #4]
	mov r2, #0
	str r2, [r1, #0x20]
	ldr r2, [r0]
	cmp r2, #0
	streq r1, [r0]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr

	arm_func_start FUN_022033AC
FUN_022033AC: ; 0x022033AC
	ldr r1, _022033C4 ; =0x02211738
	ldr r1, [r1]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	.align 2, 0
_022033C4: .word 0x02211738

	arm_func_start FUN_022033C8
FUN_022033C8: ; 0x022033C8
	ldrb r0, [r0, #0x14]
	bx lr

	arm_func_start FUN_022033D0
FUN_022033D0: ; 0x022033D0
	strb r1, [r0, #0x14]
	bx lr

	arm_func_start FUN_022033D8
FUN_022033D8: ; 0x022033D8
	str r1, [r0, #0x10]
	bx lr

	arm_func_start FUN_022033E0
FUN_022033E0: ; 0x022033E0
	str r1, [r0, #8]
	strh r2, [r0, #0xc]
	bx lr

	arm_func_start FUN_022033EC
FUN_022033EC: ; 0x022033EC
	strb r1, [r0, #0x15]
	bx lr

	arm_func_start FUN_022033F4
FUN_022033F4: ; 0x022033F4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r0, #0x24
	mov r6, r1
	mov r5, r2
	bl FUN_021DD860
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02203498 ; =FUN_022034AC
	ldr r2, _0220349C ; =FUN_022034D0
	str r0, [sp]
	mov r0, #8
	ldr r3, _022034A0 ; =FUN_022034C0
	mov r1, r0
	str r2, [sp, #4]
	mov r2, #4
	bl FUN_021EF62C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02203464
	mov r0, r4
	bl FUN_021DD82C
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02203464:
	mov r1, #0
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x10]
	str r6, [r4]
	strh r5, [r4, #4]
	str r1, [r4, #8]
	mov r0, r4
	strh r1, [r4, #0xc]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203498: .word FUN_022034AC
_0220349C: .word FUN_022034D0
_022034A0: .word FUN_022034C0

	arm_func_start FUN_022034A4
FUN_022034A4: ; 0x022034A4
	ldr r0, [r0, #0x1c]
	bx lr

	arm_func_start FUN_022034AC
FUN_022034AC: ; 0x022034AC
	ldr ip, _022034BC ; =0x020E9B38
	ldr r0, [r0]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_022034BC: .word 0x020E9B38

	arm_func_start FUN_022034C0
FUN_022034C0: ; 0x022034C0
	ldr ip, _022034CC ; =FUN_022034F4
	ldr r0, [r0]
	bx ip
	.align 2, 0
_022034CC: .word FUN_022034F4

	arm_func_start FUN_022034D0
FUN_022034D0: ; 0x022034D0
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4]
	mov r0, #0
	bl FUN_022063A8
	ldr r1, [r4, #4]
	mov r0, #0
	bl FUN_022063A8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022034F4
FUN_022034F4: ; 0x022034F4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _02203538
	ldr r3, _0220354C ; =0x0210420C
	ldr r2, _02203550 ; =0x9CCF9319
_02203514:
	cmp lr, #0
	blt _02203528
	cmp lr, #0x80
	bge _02203528
	ldrb lr, [r3, lr]
_02203528:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _02203514
_02203538:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_0220354C: .word 0x0210420C
_02203550: .word 0x9CCF9319

	arm_func_start FUN_02203554
FUN_02203554: ; 0x02203554
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x9c
	mov sl, r1
	ldrsb r1, [sl]
	mov fp, r0
	mov sb, r2
	cmp r1, #0
	beq _022035D4
_02203574:
	mov r0, sl
	mov r1, sb
	bl FUN_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, sl
	sub sb, sb, r0
	add sl, sl, r0
	mov r0, sl
	mov r1, sb
	bl FUN_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, sl
	mov r1, r4
	add sl, sl, r0
	sub sb, sb, r0
	mov r0, fp
	bl FUN_02203A80
	ldrsb r0, [sl]
	cmp r0, #0
	bne _02203574
_022035D4:
	mov r0, #0
	add sl, sl, #1
	sub sb, sb, #1
	str r0, [sp, #4]
	str r0, [sp, #0x10]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
_022035F0:
	cmp sb, #2
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sl]
	ldrb r1, [sl, #1]
	add r0, sp, #0x14
	add sl, sl, #2
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrh r2, [sp, #0x14]
	str sl, [sp]
	ldr r8, [sp, #8]
	mov r0, r2, asr #8
	and r1, r0, #0xff
	mov r0, r2, lsl #8
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x14]
	ldrsb r0, [sl]
	sub sb, sb, #2
	cmp r0, #0
	beq _02203680
_02203648:
	mov r0, sl
	mov r1, sb
	bl FUN_02206378
	cmp r0, #0
	addlt sp, sp, #0x9c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0x64
	addgt sp, sp, #0x9c
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [sl, r0]!
	sub sb, sb, r0
	add r8, r8, #1
	cmp r1, #0
	bne _02203648
_02203680:
	ldrh r0, [sp, #0x14]
	ldr r7, [sp, #0xc]
	add sl, sl, #1
	cmp r0, #0
	sub sb, sb, #1
	ble _02203718
_02203698:
	ldr r5, [sp]
	cmp r8, #0
	ldr r6, [sp, #0x10]
	ble _02203708
_022036A8:
	mov r0, sl
	mov r1, sb
	bl FUN_02206378
	movs r4, r0
	addmi sp, sp, #0x9c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02203734 ; =0x0220F7D4
	add r0, sp, #0x16
	mov r2, r5
	mov r3, r7
	bl sprintf
	mov r0, fp
	add r1, sp, #0x16
	mov r2, sl
	bl FUN_02203A80
	mov r0, r5
	add sl, sl, r4
	sub sb, sb, r4
	bl strlen
	add r0, r0, #1
	add r6, r6, #1
	add r5, r5, r0
	cmp r6, r8
	blt _022036A8
_02203708:
	ldrh r0, [sp, #0x14]
	add r7, r7, #1
	cmp r7, r0
	blt _02203698
_02203718:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _022035F0
	add sp, sp, #0x9c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02203734: .word 0x0220F7D4

	arm_func_start FUN_02203738
FUN_02203738: ; 0x02203738
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	add r0, r1, #1
	mov r1, #0x5c
	bl FUN_022037BC
	movs r8, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r4, _022037B8 ; =0x0220F7DC
	mov r6, #0
	mov r5, #0x5c
_02203768:
	mov r0, r6
	mov r1, r5
	bl FUN_022037BC
	movs r7, r0
	mov r0, r8
	moveq r7, r4
	bl FUN_02203828
	cmp r0, #0
	beq _0220379C
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl FUN_02203A80
_0220379C:
	mov r0, r6
	mov r1, r5
	bl FUN_022037BC
	movs r8, r0
	bne _02203768
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022037B8: .word 0x0220F7DC

	arm_func_start FUN_022037BC
FUN_022037BC: ; 0x022037BC
	cmp r0, #0
	ldrne r2, _02203824 ; =0x02211730
	strne r0, [r2]
	ldr r2, _02203824 ; =0x02211730
	ldr r0, [r2]
	b _022037E0
_022037D4:
	ldr r3, [r2]
	add r3, r3, #1
	str r3, [r2]
_022037E0:
	ldr ip, [r2]
	ldrsb r3, [ip]
	cmp r3, #0
	beq _022037F8
	cmp r3, r1
	bne _022037D4
_022037F8:
	cmp ip, r0
	moveq r0, #0
	cmp r3, #0
	bxeq lr
	ldr r1, _02203824 ; =0x02211730
	mov r2, #0
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	strb r2, [ip]
	bx lr
	.align 2, 0
_02203824: .word 0x02211730

	arm_func_start FUN_02203828
FUN_02203828: ; 0x02203828
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _02203884 ; =0x0220BCE0
	add r4, sp, #0
	ldr r2, [r1]
	ldr r1, [r1, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	mov r5, #0
_02203850:
	ldr r1, [r4, r5, lsl #2]
	mov r0, r6
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #2
	blo _02203850
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203884: .word 0x0220BCE0

	arm_func_start FUN_02203888
FUN_02203888: ; 0x02203888
	ldr r0, [r0, #0x20]
	bx lr

	arm_func_start FUN_02203890
FUN_02203890: ; 0x02203890
	str r1, [r0, #0x20]
	bx lr

	arm_func_start FUN_02203898
FUN_02203898: ; 0x02203898
	ldrh r0, [r0, #0xc]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr

	arm_func_start FUN_022038BC
FUN_022038BC: ; 0x022038BC
	ldr r0, [r0, #8]
	bx lr

	arm_func_start FUN_022038C4
FUN_022038C4: ; 0x022038C4
	ldrb r0, [r0, #0x15]
	and r0, r0, #2
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr

	arm_func_start FUN_022038DC
FUN_022038DC: ; 0x022038DC
	ldrh r0, [r0, #4]
	bx lr

	arm_func_start FUN_022038E4
FUN_022038E4: ; 0x022038E4
	ldrh r0, [r0, #4]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr

	arm_func_start FUN_02203908
FUN_02203908: ; 0x02203908
	ldr r0, [r0]
	bx lr

	arm_func_start FUN_02203910
FUN_02203910: ; 0x02203910
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r2, #0
	mov r4, r3
	bl FUN_022039E0
	cmp r0, #0
	beq _0220393C
	bl atod
	mov r5, r0
	mov r4, r1
_0220393C:
	mov r0, r5
	mov r1, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_0220394C
FUN_0220394C: ; 0x0220394C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, _022039D8 ; =0x0220F7E0
	mov r0, r5
	mov r4, r2
	bl strcmp
	cmp r0, #0
	bne _0220397C
	mov r0, r6
	bl FUN_022034A4
	ldmia sp!, {r4, r5, r6, pc}
_0220397C:
	mov r0, r6
	mov r1, r5
	mov r2, #0
	bl FUN_022039E0
	cmp r0, #0
	beq _022039C8
	ldrb r2, [r0]
	cmp r2, #0
	blt _022039A8
	cmp r2, #0x80
	blt _022039B0
_022039A8:
	mov r1, #0
	b _022039C0
_022039B0:
	ldr r1, _022039DC ; =0x0210430C
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #8
_022039C0:
	cmp r1, #0
	bne _022039D0
_022039C8:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_022039D0:
	bl atol
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_022039D8: .word 0x0220F7E0
_022039DC: .word 0x0210430C

	arm_func_start FUN_022039E0
FUN_022039E0: ; 0x022039E0
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _02203A0C
	ldr r0, _02203A40 ; =0x0220F7E8
	ldr r1, _02203A44 ; =0x0220F7F0
	mov r2, #0
	mov r3, #0x97
	bl __msl_assertion_failed
_02203A0C:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [sp]
	ldr r0, [r6, #0x18]
	add r1, sp, #0
	bl FUN_021EF358
	cmp r0, #0
	ldrne r4, [r0, #4]
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02203A40: .word 0x0220F7E8
_02203A44: .word 0x0220F7F0

	arm_func_start FUN_02203A48
FUN_02203A48: ; 0x02203A48
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	ldr r1, _02203A7C ; =0x0220F7FC
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl FUN_02203A80
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02203A7C: .word 0x0220F7FC

	arm_func_start FUN_02203A80
FUN_02203A80: ; 0x02203A80
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r2
	mov r0, #0
	bl FUN_02206428
	str r0, [sp]
	mov r1, r4
	mov r0, #0
	bl FUN_02206428
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	bl FUN_021EF494
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02203AC0
FUN_02203AC0: ; 0x02203AC0
	stmdb sp!, {r4, lr}
	ldr r4, [r0]
	ldr r0, [r4, #0x18]
	bl FUN_021EF5B0
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x18]
	bl FUN_021DD82C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203AE4
FUN_02203AE4: ; 0x02203AE4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02203B30 ; =0x02211734
	ldr r0, [r0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {pc}
	bl FUN_021EF540
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {pc}
	ldr r0, _02203B30 ; =0x02211734
	ldr r0, [r0]
	bl FUN_021EF5B0
	ldr r0, _02203B30 ; =0x02211734
	mov r1, #0
	str r1, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02203B30: .word 0x02211734

	arm_func_start FUN_02203B34
FUN_02203B34: ; 0x02203B34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _02203B88 ; =0x02211734
	ldr r0, [r0]
	cmp r0, #0
	bne _02203B78
	ldr r0, _02203B8C ; =FUN_02203BA8
	ldr ip, _02203B90 ; =FUN_02203B98
	str r0, [sp]
	ldr r3, _02203B94 ; =FUN_02203BBC
	mov r0, #8
	mov r1, #0x64
	mov r2, #2
	str ip, [sp, #4]
	bl FUN_021EF62C
	ldr r1, _02203B88 ; =0x02211734
	str r0, [r1]
_02203B78:
	ldr r0, _02203B88 ; =0x02211734
	ldr r0, [r0]
	add sp, sp, #0xc
	ldmfd sp!, {pc}
	.align 2, 0
_02203B88: .word 0x02211734
_02203B8C: .word FUN_02203BA8
_02203B90: .word FUN_02203B98
_02203B94: .word FUN_02203BBC

	arm_func_start FUN_02203B98
FUN_02203B98: ; 0x02203B98
	ldr ip, _02203BA4 ; =FUN_021DD82C
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02203BA4: .word FUN_021DD82C

	arm_func_start FUN_02203BA8
FUN_02203BA8: ; 0x02203BA8
	ldr ip, _02203BB8 ; =0x020E9B38
	ldr r0, [r0]
	ldr r1, [r1]
	bx ip
	.align 2, 0
_02203BB8: .word 0x020E9B38

	arm_func_start FUN_02203BBC
FUN_02203BBC: ; 0x02203BBC
	ldr ip, _02203BC8 ; =FUN_022034F4
	ldr r0, [r0]
	bx ip
	.align 2, 0
_02203BC8: .word FUN_022034F4

	arm_func_start FUN_02203BCC
FUN_02203BCC: ; 0x02203BCC
	ldr r0, [r0, #0x4ec]
	bx lr

	arm_func_start FUN_02203BD4
FUN_02203BD4: ; 0x02203BD4
	ldr ip, _02203BE0 ; =FUN_02206740
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203BE0: .word FUN_02206740

	arm_func_start FUN_02203BE4
FUN_02203BE4: ; 0x02203BE4
	ldr ip, _02203BF0 ; =0x0220658C
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203BF0: .word 0x0220658C

	arm_func_start FUN_02203BF4
FUN_02203BF4: ; 0x02203BF4
	ldr ip, _02203C00 ; =FUN_02206570
	add r0, r0, #0x4c
	bx ip
	.align 2, 0
_02203C00: .word FUN_02206570

	arm_func_start FUN_02203C04
FUN_02203C04: ; 0x02203C04
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02203C1C
	add r0, r4, #0x4c
	bl FUN_022064BC
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203C1C
FUN_02203C1C: ; 0x02203C1C
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl FUN_02205994
	mov r0, r4
	bl FUN_02203024
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203C38
FUN_02203C38: ; 0x02203C38
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02202AD4
	add r0, r4, #0x4c
	bl FUN_022041FC
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203C50
FUN_02203C50: ; 0x02203C50
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl FUN_022066A4
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x4c
	bl FUN_0220659C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203C7C
FUN_02203C7C: ; 0x02203C7C
	stmdb sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl FUN_021EFB38
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	mov r1, r0
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl FUN_02204380
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02203CC4
FUN_02203CC4: ; 0x02203CC4
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r2
	mov r0, r1
	mov r4, r3
	bl FUN_021EFB38
	mov r3, r6, asr #8
	mov r2, r6, lsl #8
	ldr ip, [sp, #0x18]
	mov r1, r0
	str ip, [sp]
	and r3, r3, #0xff
	and r0, r2, #0xff00
	orr r0, r3, r0
	mov r2, r0, lsl #0x10
	mov r3, r4
	add r0, r5, #0x4c
	mov r2, r2, lsr #0x10
	bl FUN_02204438
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02203D1C
FUN_02203D1C: ; 0x02203D1C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr lr, [sp, #0x18]
	ldr ip, [sp, #0x1c]
	str lr, [sp]
	str ip, [sp, #4]
	mov lr, #0x80
	ldr ip, [sp, #0x20]
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	bl FUN_02203D50
	add sp, sp, #0x14
	ldmfd sp!, {pc}

	arm_func_start FUN_02203D50
FUN_02203D50: ; 0x02203D50
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10c
	ldr r8, [sp, #0x130]
	mov sl, r0
	str r1, [sp, #4]
	add r4, sp, #8
	mov sb, r3
	mov r1, #0x40
	mov r0, #0
_02203D74:
	strb r0, [r4], #1
	strb r0, [r4], #1
	strb r0, [r4], #1
	strb r0, [r4], #1
	subs r1, r1, #1
	bne _02203D74
	mov r7, #0
	str r2, [sl, #0x620]
	mov r6, r7
	str r7, [sl, #0x40]
	cmp r8, #0
	ble _02203DFC
	ldr fp, _02203E78 ; =0x0220F3A8
_02203DA8:
	ldrb r0, [sb, r6]
	add r4, sb, r6
	ldr r5, [fp, r0, lsl #2]
	mov r0, r5
	bl strlen
	add r0, r7, r0
	add r0, r0, #1
	cmp r0, #0x100
	bge _02203DFC
	add r0, sp, #8
	ldr r1, _02203E7C ; =0x0220F800
	mov r2, r5
	add r0, r0, r7
	bl sprintf
	add r7, r7, r0
	ldrb r1, [r4]
	mov r0, sl
	bl FUN_02202AB8
	add r6, r6, #1
	cmp r6, r8
	blt _02203DA8
_02203DFC:
	ldr r4, [sp, #0x13c]
	ldr r2, [sp, #0x134]
	ldr r3, [sp, #0x138]
	add r1, sp, #8
	add r0, sl, #0x4c
	str r4, [sp]
	bl FUN_02205AB4
	cmp r0, #0
	addne sp, sp, #0x10c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #4]
	cmp r1, #0
	addne sp, sp, #0x10c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0xa
	b _02203E4C
_02203E3C:
	mov r0, r4
	bl FUN_021F0250
	mov r0, sl
	bl FUN_02203C38
_02203E4C:
	ldr r1, [sl, #0x4c]
	cmp r1, #3
	beq _02203E3C
	ldr r1, [sl, #0x10]
	cmp r1, #0
	addle sp, sp, #0x10c
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0
	beq _02203E3C
	add sp, sp, #0x10c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02203E78: .word 0x0220F3A8
_02203E7C: .word 0x0220F800

	arm_func_start FUN_02203E80
FUN_02203E80: ; 0x02203E80
	stmdb sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x4c
	bl FUN_0220595C
	mov r0, r4
	bl FUN_02202FF8
	mov r0, r4
	bl FUN_021DD82C
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02203EA4
FUN_02203EA4: ; 0x02203EA4
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x30]
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmp r4, #0
	bne _02203EE0
	ldr r0, _02203F68 ; =0x02210E5C
	ldr r0, [r0]
	cmp r0, #1
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_02203EE0:
	ldr r0, _02203F6C ; =0x00000638
	bl FUN_021DD860
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x630]
	str r0, [r4, #0x634]
	mov r0, #0
	str r0, [r4, #0x624]
	ldr r1, [sp, #0x30]
	str r5, [sp]
	ldr r0, _02203F70 ; =FUN_02204028
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x4c
	str r4, [sp, #0xc]
	bl FUN_02206248
	ldr r0, _02203F74 ; =FUN_02203F78
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r4
	str r4, [sp, #4]
	bl FUN_02203048
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02203F68: .word 0x02210E5C
_02203F6C: .word 0x00000638
_02203F70: .word FUN_02204028
_02203F74: .word FUN_02203F78

	arm_func_start FUN_02203F78
FUN_02203F78: ; 0x02203F78
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _02203FBC
	cmp r1, #1
	beq _02203FA4
	cmp r1, #2
	beq _02203FD4
	b _02203FE8
_02203FA4:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #2
	blx ip
	b _02203FE8
_02203FBC:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #1
	blx ip
	b _02203FE8
_02203FD4:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	blx ip
_02203FE8:
	cmp r5, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r5]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02204028
FUN_02204028: ; 0x02204028
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _022041C8
_02204044: ; jump table
	b _02204060 ; case 0
	b _022040E8 ; case 1
	b _02204124 ; case 2
	b _02204158 ; case 3
	b _022041C8 ; case 4
	b _022041A0 ; case 5
	b _022041BC ; case 6
_02204060:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #0
	blx ip
	ldrb r1, [r5, #0x14]
	ands r0, r1, #3
	beq _02204088
	ands r0, r1, #0x40
	bne _022041C8
_02204088:
	ands r0, r1, #0x2c
	bne _022041C8
	ldr r0, [r4, #0x624]
	cmp r0, #0
	bne _022041C8
	ldrb r0, [r5, #0x15]
	ands r0, r0, #1
	beq _022040D0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _022040C0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	bne _022040C8
_022040C0:
	mov r3, #1
	b _022040D4
_022040C8:
	mov r3, #0
	b _022040D4
_022040D0:
	mov r3, #2
_022040D4:
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl FUN_02202F68
	b _022041C8
_022040E8:
	ldrb r0, [r5, #0x14]
	ands r0, r0, #0x43
	bne _0220410C
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #2
	blx ip
	b _022041C8
_0220410C:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #1
	blx ip
	b _022041C8
_02204124:
	ldrb r0, [r5, #0x14]
	ands r0, r0, #0x2c
	beq _0220413C
	mov r0, r4
	mov r1, r5
	bl FUN_02202A80
_0220413C:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r2, r5
	mov r1, #3
	blx ip
	b _022041C8
_02204158:
	ldr r1, [r4, #0x620]
	cmp r1, #0
	beq _02204168
	bl FUN_02205994
_02204168:
	ldr r0, [r6, #4]
	bl FUN_021EF06C
	cmp r0, #0
	beq _02204184
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022041C8
_02204184:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx ip
	b _022041C8
_022041A0:
	ldr r3, [r4, #0x634]
	ldr ip, [r4, #0x630]
	mov r0, r4
	mov r1, #5
	mov r2, #0
	blx ip
	b _022041C8
_022041BC:
	ldr r1, [r4, #0x4ec]
	mov r0, r4
	bl FUN_02203040
_022041C8:
	cmp r5, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r5]
	ldr r0, [r4, #0x628]
	cmp r1, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r4, #0x600
	ldrh r1, [r5, #4]
	ldrh r0, [r0, #0x2c]
	cmp r1, r0
	moveq r0, #0
	streq r0, [r4, #0x628]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_022041FC
FUN_022041FC: ; 0x022041FC
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02206514
	ldr r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02204240
_02204218: ; jump table
	b _02204234 ; case 0
	b _02204240 ; case 1
	b _02204228 ; case 2
	b _02204228 ; case 3
_02204228:
	mov r0, r4
	bl FUN_02204560
	ldmia sp!, {r4, pc}
_02204234:
	mov r0, r4
	bl FUN_02204248
	ldmia sp!, {r4, pc}
_02204240:
	mov r0, #0
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02204248
FUN_02204248: ; 0x02204248
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr ip, _02204374 ; =0x000005F4
	sub sp, sp, ip
	mov r1, #8
	mov sl, r0
	str r1, [sp, #0x10]
	ldr r0, [sl, #0x4b0]
	bl FUN_021EFF2C
	cmp r0, #0
	beq _0220431C
	add sb, sp, #8
	add r8, sp, #0x10
	add fp, sp, #0x14
	mov r5, #0x11
	mov r7, #0
	mvn r4, #0
_02204288:
	str sb, [sp]
	str r8, [sp, #4]
	ldr r0, [sl, #0x4b0]
	ldr r2, _02204378 ; =0x000005DB
	mov r1, fp
	mov r3, r7
	bl FUN_021EFC40
	mvn r1, #0
	cmp r0, r1
	beq _0220430C
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	bl FUN_02206628
	cmp r0, r4
	bne _0220430C
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sl
	bl FUN_022033F4
	mov r6, r0
	bl FUN_022033AC
	cmp r0, #0
	ldrne ip, _02204374 ; =0x000005F4
	movne r0, #5
	addne sp, sp, ip
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_022033EC
	mov r0, sl
	mov r1, r6
	bl FUN_02206704
_0220430C:
	ldr r0, [sl, #0x4b0]
	bl FUN_021EFF2C
	cmp r0, #0
	bne _02204288
_0220431C:
	bl FUN_021F025C
	ldr r1, [sl, #0x4b4]
	sub r0, r0, r1
	cmp r0, #0x7d0
	bls _02204364
	ldr r0, [sl, #0x4b0]
	bl FUN_021EFD9C
	mvn r0, #0
	str r0, [sl, #0x4b0]
	mov r0, #1
	str r0, [sl]
	ldr r0, _0220437C ; =0x02211738
	ldr r3, [sl, #0x494]
	ldr r2, [r0]
	ldr r4, [sl, #0x488]
	mov r0, sl
	mov r1, #3
	blx r4
_02204364:
	mov r0, #0
	ldr ip, _02204374 ; =0x000005F4
	add sp, sp, ip
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02204374: .word 0x000005F4
_02204378: .word 0x000005DB
_0220437C: .word 0x02211738

	arm_func_start FUN_02204380
FUN_02204380: ; 0x02204380
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	ldr r3, [sp, #0x3c]
	mov r7, #0xfd
	mov sb, r3, lsr #0x18
	mov r8, r3, lsr #8
	mov sl, r3, lsl #8
	and sb, sb, #0xff
	and r8, r8, #0xff00
	mov r6, #0xfc
	mov r5, #0x1e
	mov r4, #0x66
	mov lr, #0x6a
	mov ip, #0xb2
	strb r7, [sp, #4]
	mov r3, r3, lsl #0x18
	orr r8, sb, r8
	and sl, sl, #0xff0000
	and sb, r3, #0xff000000
	orr r3, sl, r8
	orr r3, sb, r3
	str r3, [sp, #0x3c]
	add r8, sp, #0x3c
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb r4, [sp, #7]
	strb lr, [sp, #8]
	strb ip, [sp, #9]
	ldrb r5, [r8]
	ldrb r4, [r8, #1]
	add r7, sp, #0xa
	add r3, sp, #4
	strb r5, [r7]
	strb r4, [r7, #1]
	ldrb r6, [r8, #2]
	ldrb r5, [r8, #3]
	mov r4, #0xa
	strb r6, [r7, #2]
	strb r5, [r7, #3]
	str r4, [sp]
	bl FUN_02204438
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_02204438
FUN_02204438: ; 0x02204438
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r5, r0
	ldr r1, [r5]
	mov r4, r3
	cmp r1, #1
	bne _0220446C
	mov r1, #0
	mov r2, r1
	mov r3, #2
	str r1, [sp]
	bl FUN_02205AB4
_0220446C:
	ldr r0, [r5]
	cmp r0, #1
	addeq sp, sp, #0x18
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x38]
	add r1, sp, #4
	add r0, r0, #9
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strh r0, [sp, #4]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r1, sp, #6
	mov r0, #2
	strb r3, [r1]
	strb r2, [r1, #1]
	add lr, sp, #0x2c
	strb r0, [sp, #8]
	ldrb r3, [lr]
	ldrb r0, [lr, #1]
	add r6, sp, #9
	add r2, sp, #0x30
	strb r3, [r6]
	strb r0, [r6, #1]
	ldrb ip, [lr, #2]
	ldrb r3, [lr, #3]
	add lr, sp, #0xd
	mov r0, r5
	strb ip, [r6, #2]
	strb r3, [r6, #3]
	ldrb ip, [r2]
	ldrb r3, [r2, #1]
	mov r2, #9
	strb ip, [lr]
	strb r3, [lr, #1]
	bl FUN_02205D28
	cmp r0, #0
	addne sp, sp, #0x18
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r5, #0x4b0]
	ldr r2, [sp, #0x38]
	mov r1, r4
	mov r3, #0
	bl FUN_021EFC24
	cmp r0, #0
	movlt r0, #3
	movge r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_02204560
FUN_02204560: ; 0x02204560
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x4b0]
	bl FUN_021EFF2C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, [r6, #0x80]
	ldr r1, [r6, #0x7c]
	ldr r0, [r6, #0x4b0]
	add r1, r1, r4
	rsb r2, r4, #0x1000
	mov r3, #0
	bl FUN_021EFC78
	add r1, r0, #1
	cmp r1, #1
	bhi _022045B4
	mov r0, r6
	bl FUN_02206184
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_022045B4:
	ldr r1, [r6, #0x80]
	mov r5, #0
	add r0, r1, r0
	str r0, [r6, #0x80]
	ldr r0, [r6]
	cmp r0, #2
	beq _022045DC
	ldr r0, [r6, #0x5c8]
	cmp r0, #0
	ble _022045F8
_022045DC:
	ldr r1, [r6, #0x7c]
	ldr r2, [r6, #0x80]
	ldr r0, _02204648 ; =0x000004BC
	add r1, r1, r4
	add r0, r6, r0
	sub r2, r2, r4
	bl FUN_0220279C
_022045F8:
	ldr r0, [r6]
	cmp r0, #3
	bne _02204610
	mov r0, r6
	bl FUN_02204DF0
	mov r5, r0
_02204610:
	cmp r5, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6]
	cmp r0, #2
	bne _02204640
	ldr r0, [r6, #0x80]
	cmp r0, #0
	ble _02204640
	mov r0, r6
	bl FUN_0220464C
	ldmia sp!, {r4, r5, r6, pc}
_02204640:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02204648: .word 0x000004BC

	arm_func_start FUN_0220464C
FUN_0220464C: ; 0x0220464C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #0x80]
	mov r8, #0
	cmp r0, #3
	blt _02204800
	ldr sl, _0220481C ; =0x0220F818
	ldr fp, _02204820 ; =0x0220F830
	add r7, sp, #0
	mov r6, r8
	mov r4, r8
	add r5, sb, #0x80
_02204680:
	ldr r0, [sb, #0x7c]
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrh r0, [sp]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp]
	ldrh r2, [sp]
	cmp r2, #0x1000
	movhi r8, #4
	bhi _02204800
	ldr r0, [sb, #0x80]
	cmp r0, r2
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x7c]
	ldrsb r0, [r1, #2]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02204798
_022046E8: ; jump table
	b _02204798 ; case 0
	b _02204704 ; case 1
	b _0220471C ; case 2
	b _02204734 ; case 3
	b _02204754 ; case 4
	b _0220476C ; case 5
	b _02204784 ; case 6
_02204704:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl FUN_02204D10
	mov r8, r0
	b _02204798
_0220471C:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl FUN_02204828
	mov r8, r0
	b _02204798
_02204734:
	ldr r0, [sb, #0x4b0]
	mov r3, r6
	bl FUN_021EFC24
	cmp r0, #0
	bgt _02204798
	add sp, sp, #4
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02204754:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl FUN_02204920
	mov r8, r0
	b _02204798
_0220476C:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl FUN_022049B0
	mov r8, r0
	b _02204798
_02204784:
	mov r0, sb
	add r1, r1, #3
	sub r2, r2, #3
	bl FUN_02204B40
	mov r8, r0
_02204798:
	ldrh r0, [sp]
	ldr r1, [r5]
	sub r0, r1, r0
	str r0, [r5]
	ldr r0, [sb, #0x80]
	cmp r0, #0
	bge _022047C8
	ldr r3, _02204824 ; =0x000005B4
	mov r0, sl
	mov r1, fp
	mov r2, r4
	bl __msl_assertion_failed
_022047C8:
	ldr r2, [sb, #0x80]
	cmp r2, #0
	beq _022047EC
	ldr r0, [sb, #0x7c]
	cmp r0, #0
	beq _022047EC
	ldrh r1, [sp]
	add r1, r0, r1
	bl memmove
_022047EC:
	cmp r8, #0
	bne _02204800
	ldr r0, [sb, #0x80]
	cmp r0, #3
	bge _02204680
_02204800:
	cmp r8, #0
	beq _02204810
	mov r0, sb
	bl FUN_02206184
_02204810:
	mov r0, r8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_0220481C: .word 0x0220F818
_02204820: .word 0x0220F830
_02204824: .word 0x000005B4

	arm_func_start FUN_02204828
FUN_02204828: ; 0x02204828
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r6, r2
	cmp r6, #5
	mov r8, r0
	mov r7, r1
	addlt sp, sp, #0x10
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #4
	add r3, sp, #8
	str r4, [sp]
	bl FUN_02205650
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl FUN_02206628
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	bne _022048A8
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r8
	bl FUN_022033F4
	mov r5, r0
	bl FUN_022033AC
	cmp r0, #0
	beq _022048B8
	add sp, sp, #0x10
	mov r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022048A8:
	mov r0, r8
	mov r1, r4
	bl FUN_02206570
	mov r5, r0
_022048B8:
	mov ip, #0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r6
	str ip, [sp]
	bl FUN_02205378
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r0, #0
	cmp r4, r0
	bne _022048FC
	mov r0, r8
	mov r1, r5
	bl FUN_02206704
_022048FC:
	ldr r3, [r8, #0x494]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r2, r5
	mov r1, #1
	blx r4
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_02204920
FUN_02204920: ; 0x02204920
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	cmp r2, #6
	mov r4, r0
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r4, r5, pc}
	ldrb ip, [r1]
	ldrb r2, [r1, #1]
	add r5, sp, #4
	add r3, r1, #4
	strb ip, [r5]
	strb r2, [r5, #1]
	ldrb lr, [r1, #2]
	ldrb r2, [r1, #3]
	add ip, sp, #0
	strb lr, [r5, #2]
	strb r2, [r5, #3]
	ldrb r2, [r1, #4]
	ldrb r1, [r3, #1]
	strb r2, [ip]
	strb r1, [ip, #1]
	ldrh r2, [sp]
	ldr r1, [sp, #4]
	bl FUN_02206628
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	mov r0, r4
	bl FUN_0220659C
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_022049B0
FUN_022049B0: ; 0x022049B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x54
	mov r8, r2
	cmp r8, #0xb
	mov sl, r0
	mov sb, r1
	addlt sp, sp, #0x54
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r3, [sb]
	ldrb r2, [sb, #1]
	add r5, sp, #0x10
	add r1, sb, #4
	strb r3, [r5]
	strb r2, [r5, #1]
	ldrb r4, [sb, #2]
	ldrb r2, [sb, #3]
	add r3, sp, #8
	strb r4, [r5, #2]
	strb r2, [r5, #3]
	ldrb r2, [sb, #4]
	ldrb r1, [r1, #1]
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrh r2, [sp, #8]
	ldr r1, [sp, #0x10]
	bl FUN_02206628
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	bl FUN_02206570
	add r3, sb, #6
	ldrb r2, [sb, #6]
	ldrb r1, [r3, #1]
	add r4, sp, #0xc
	mov fp, r0
	strb r2, [r4]
	strb r1, [r4, #1]
	ldrb r1, [r3, #2]
	ldrb r0, [r3, #3]
	sub r8, r8, #0xb
	mov r6, #0
	strb r1, [r4, #2]
	strb r0, [r4, #3]
	ldr r0, [sp, #0xc]
	add r5, sp, #0x14
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	mov r0, r0, lsl #0x18
	orr r1, r2, r1
	and r3, r3, #0xff0000
	and r2, r0, #0xff000000
	orr r0, r3, r1
	orr r0, r2, r0
	str r0, [sp, #0xc]
	ldrb r7, [sb, #0xa]
	add sb, sb, #0xb
	mvn r4, #0
	b _02204AEC
_02204AB8:
	cmp r8, #1
	blt _02204AFC
	mov r0, sb
	mov r1, r8
	bl FUN_02206378
	cmp r0, r4
	addeq sp, sp, #0x54
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [r5, r6, lsl #2]
	add sb, sb, r0
	sub r8, r8, r0
	add r6, r6, #1
_02204AEC:
	cmp r6, r7
	bge _02204AFC
	cmp r6, #0x10
	blt _02204AB8
_02204AFC:
	ldr r4, [sl, #0x48c]
	cmp r4, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r1, sp, #0x14
	str r1, [sp]
	ldr r2, [sl, #0x494]
	mov r0, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, fp
	mov r3, r6
	blx r4
	mov r0, #0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02204B40
FUN_02204B40: ; 0x02204B40
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r7, r2
	cmp r7, #2
	mov sb, r0
	mov r8, r1
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r8, #1]
	sub r7, r7, #2
	mov r6, #0
	str r0, [sp, #0x10]
	ldrb r0, [r8]
	add r8, r8, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _02204CD0
	add r5, sp, #0x18
	add r4, sp, #0x1c
_02204B94:
	mov r0, r8
	mov r1, r7
	mov fp, r8
	bl FUN_02206378
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r2, r7, r0
	cmp r2, #0xb
	add lr, r8, r0
	addlt sp, sp, #0x24
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [lr]
	ldrb r0, [lr, #1]
	sub r7, r2, #0xa
	add r3, lr, #6
	strb r1, [r5]
	strb r0, [r5, #1]
	ldrb r2, [lr, #2]
	ldrb r1, [lr, #3]
	add r0, lr, #4
	add r8, lr, #0xa
	strb r2, [r5, #2]
	strb r1, [r5, #3]
	ldrb sl, [r0, #1]
	ldrb ip, [lr, #4]
	add r2, sp, #0x14
	mov r0, r8
	strb ip, [r2]
	strb sl, [r2, #1]
	ldrb sl, [lr, #6]
	ldrb r2, [r3, #1]
	mov r1, r7
	strb sl, [r4]
	strb r2, [r4, #1]
	ldrb sl, [r3, #2]
	ldrb r2, [r3, #3]
	strb sl, [r4, #2]
	strb r2, [r4, #3]
	ldr ip, [sp, #0x1c]
	mov r3, ip, lsl #0x18
	mov r2, ip, lsr #0x18
	and sl, r3, #0xff000000
	mov r3, ip, lsl #8
	mov ip, ip, lsr #8
	and r2, r2, #0xff
	and ip, ip, #0xff00
	and r3, r3, #0xff0000
	orr r2, r2, ip
	orr r2, r3, r2
	orr r2, sl, r2
	str r2, [sp, #0x1c]
	bl FUN_02206378
	mov sl, r0
	mvn r0, #0
	cmp sl, r0
	addeq sp, sp, #0x24
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x1c]
	mov r0, sb
	str r1, [sp]
	str r8, [sp, #4]
	ldr r2, [sb, #0x494]
	mov r1, fp
	str r2, [sp, #8]
	ldrh r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr fp, [sb, #0x490]
	blx fp
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, sl
	sub r7, r7, sl
	blt _02204B94
_02204CD0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02204D04
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sb, #0x494]
	mov r0, sb
	str r2, [sp, #8]
	ldr r4, [sb, #0x490]
	mov r2, r1
	mov r3, r1
	blx r4
_02204D04:
	mov r0, #0
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02204D10
FUN_02204D10: ; 0x02204D10
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r3, [sl, #8]
	mov sb, r1
	mov r8, r2
	cmp r3, #0
	sub r8, r8, #1
	ldrb r6, [sb], #1
	beq _02204D3C
	bl FUN_022059F8
_02204D3C:
	mov r1, r6
	mov r0, #8
	mov r2, #0
	bl FUN_021EF0E4
	str r0, [sl, #8]
	ldr r0, [sl, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r6, #0
	mov r7, #0
	ble _02204DE4
	add fp, sp, #0
	mvn r4, #0
_02204D78:
	cmp r8, #2
	addlt sp, sp, #0xc
	movlt r0, #4
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sb, #1
	sub r1, r8, #1
	bl FUN_02206378
	mov r5, r0
	cmp r5, r4
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r2, [sb]
	mov r0, sl
	add r1, sb, #1
	str r2, [sp, #4]
	bl FUN_02206428
	str r0, [sp]
	ldr r0, [sl, #8]
	mov r1, fp
	bl FUN_021EEFA8
	add r0, r5, #1
	add r7, r7, #1
	cmp r7, r6
	add sb, sb, r0
	sub r8, r8, r0
	blt _02204D78
_02204DE4:
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02204DF0
FUN_02204DF0: ; 0x02204DF0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r1, [r8, #0x5c8]
	ldr r7, [r8, #0x7c]
	ldr r6, [r8, #0x80]
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _022051D0
_02204E14: ; jump table
	b _02204E28 ; case 0
	b _02204E88 ; case 1
	b _02204F98 ; case 2
	b _0220508C ; case 3
	b _02205140 ; case 4
_02204E28:
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	eor r1, r1, #0xec
	add r3, r1, #2
	cmp r6, r3
	blt _022051D0
	sub r1, r3, #1
	ldrb r1, [r7, r1]
	eor r2, r1, #0xea
	add r4, r3, r2
	cmp r6, r4
	blt _022051D0
	add r1, r7, r3
	bl FUN_022058B0
	ldr r0, _02205224 ; =0x000004BC
	add r7, r7, r4
	sub r6, r6, r4
	mov r3, #1
	mov r1, r7
	mov r2, r6
	add r0, r8, r0
	str r3, [r8, #0x5c8]
	bl FUN_0220279C
_02204E88:
	cmp r6, #6
	blt _022051D0
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	add r5, r8, #0x4a0
	ldr r2, _02205228 ; =0x02211738
	strb r1, [r8, #0x4a0]
	strb r0, [r5, #1]
	ldrb r4, [r7, #2]
	ldrb r3, [r7, #3]
	mov r0, r8
	mov r1, #6
	strb r4, [r5, #2]
	strb r3, [r5, #3]
	ldr r2, [r2]
	ldr r3, [r8, #0x494]
	ldr r4, [r8, #0x488]
	blx r4
	add r1, r7, #4
	ldr r0, _0220522C ; =0x000004A8
	ldrb r2, [r7, #4]
	ldrb r1, [r1, #1]
	add r3, r8, r0
	add r0, r8, #0x400
	strb r2, [r8, #0x4a8]
	strb r1, [r3, #1]
	ldrh r1, [r0, #0xa8]
	ldr r0, _02205230 ; =0x0000FFFF
	cmp r1, r0
	bne _02204F4C
	add r0, r7, #6
	sub r1, r6, #6
	bl FUN_02206378
	mvn r1, #0
	cmp r0, r1
	beq _022051D0
	mov r0, r8
	add r1, r7, #6
	bl FUN_02205240
	ldr r0, _02205228 ; =0x02211738
	ldr r3, [r8, #0x494]
	ldr r2, [r0]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r1, #5
	blx r4
	ldr r0, [r8, #0x7c]
	cmp r0, #0
	beq _022051D0
_02204F4C:
	ldr r0, [r8, #0x5c4]
	add r7, r7, #6
	sub r6, r6, #6
	ands r0, r0, #2
	bne _02204F74
	add r0, r8, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, _02205230 ; =0x0000FFFF
	cmp r1, r0
	bne _02204F88
_02204F74:
	mov r0, #5
	str r0, [r8, #0x5c8]
	mov r0, #2
	str r0, [r8]
	b _022051D0
_02204F88:
	mov r0, #2
	str r0, [r8, #0x5c8]
	mvn r0, #0
	str r0, [r8, #0x484]
_02204F98:
	ldr r1, [r8, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _02204FE8
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	mov r0, #8
	mov r2, #0
	str r1, [r8, #0x484]
	ldr r1, [r8, #0x484]
	bl FUN_021EF0E4
	str r0, [r8, #8]
	ldr r0, [r8, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, #1
	sub r6, r6, #1
_02204FE8:
	ldr r0, [r8, #8]
	bl FUN_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	ble _02205068
	add r5, sp, #0
	mvn r4, #0
_02205004:
	cmp r6, #2
	blt _02205068
	add r0, r7, #1
	sub r1, r6, #1
	bl FUN_02206378
	mov sb, r0
	cmp sb, r4
	beq _02205068
	ldrb r2, [r7]
	mov r0, r8
	add r1, r7, #1
	str r2, [sp, #4]
	bl FUN_02206428
	str r0, [sp]
	ldr r0, [r8, #8]
	mov r1, r5
	bl FUN_021EEFA8
	add r1, sb, #1
	ldr r0, [r8, #8]
	add r7, r7, r1
	sub r6, r6, r1
	bl FUN_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	bgt _02205004
_02205068:
	ldr r0, [r8, #8]
	bl FUN_021EF06C
	ldr r1, [r8, #0x484]
	cmp r1, r0
	bgt _022051D0
	mov r0, #3
	str r0, [r8, #0x5c8]
	mvn r0, #0
	str r0, [r8, #0x484]
_0220508C:
	ldr r1, [r8, #0x484]
	mvn r0, #0
	cmp r1, r0
	bne _022050BC
	cmp r6, #1
	blt _022051D0
	ldrb r1, [r7]
	mov r0, #0
	add r7, r7, #1
	str r1, [r8, #0x484]
	str r0, [r8, #0x480]
	sub r6, r6, #1
_022050BC:
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	cmp r1, r0
	ble _02205128
	add r4, r8, #0x480
	mvn sb, #0
_022050D4:
	mov r0, r7
	mov r1, r6
	bl FUN_02206378
	mov r5, r0
	cmp r5, sb
	beq _02205128
	mov r0, r8
	mov r1, r7
	bl FUN_02206428
	ldr r1, [r4]
	ldr r2, [r8, #0x480]
	add r1, r1, #1
	str r1, [r4]
	add r1, r8, r2, lsl #2
	str r0, [r1, #0x84]
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	add r7, r7, r5
	cmp r1, r0
	sub r6, r6, r5
	bgt _022050D4
_02205128:
	ldr r1, [r8, #0x484]
	ldr r0, [r8, #0x480]
	cmp r1, r0
	bgt _022051D0
	mov r0, #4
	str r0, [r8, #0x5c8]
_02205140:
	cmp r6, #5
	blt _022051D0
	mov sb, #0
	mvn r4, #0
	mvn r5, #1
_02205154:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_02205248
	cmp r0, r5
	addeq sp, sp, #0xc
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r0, r4
	bne _022051B4
	mov r0, #5
	str r0, [r8, #0x5c8]
	mov r0, #2
	str r0, [r8]
	ldr r0, _02205228 ; =0x02211738
	ldr r3, [r8, #0x494]
	ldr r2, [r0]
	ldr r4, [r8, #0x488]
	mov r0, r8
	mov r1, #3
	sub r6, r6, #5
	add r7, r7, #5
	blx r4
	b _022051D0
_022051B4:
	ldr r1, [r8, #0x7c]
	add r7, r7, r0
	cmp r1, #0
	sub r6, r6, r0
	moveq r0, sb
	cmp r0, #0
	bne _02205154
_022051D0:
	cmp r6, #0
	bge _022051EC
	ldr r0, _02205234 ; =0x0220F840
	ldr r1, _02205238 ; =0x0220F830
	ldr r3, _0220523C ; =0x000004AF
	mov r2, #0
	bl __msl_assertion_failed
_022051EC:
	ldr r0, [r8, #0x7c]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0
	beq _02205214
	mov r1, r7
	mov r2, r6
	bl memmove
_02205214:
	str r6, [r8, #0x80]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02205224: .word 0x000004BC
_02205228: .word 0x02211738
_0220522C: .word 0x000004A8
_02205230: .word 0x0000FFFF
_02205234: .word 0x0220F840
_02205238: .word 0x0220F830
_0220523C: .word 0x000004AF

	arm_func_start FUN_02205240
FUN_02205240: ; 0x02205240
	str r1, [r0, #0x4ac]
	bx lr

	arm_func_start FUN_02205248
FUN_02205248: ; 0x02205248
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r2
	cmp r4, #1
	mov r6, r0
	mov r5, r1
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r7, [r5]
	mov r0, r7
	bl FUN_02205884
	mov r8, r0
	cmp r4, r8
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	ands r0, r7, #0x40
	beq _022052B4
	mov r0, r6
	add r1, r5, r8
	sub r2, r4, r8
	bl FUN_022056DC
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_022052B4:
	ands r0, r7, #0x80
	beq _022052D8
	add r0, r5, r8
	sub r1, r4, r8
	bl FUN_022057EC
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_022052D8:
	ldr r1, _02205374 ; =0x0220F84C
	add r0, r5, #1
	mov r2, #4
	bl memcmp
	cmp r0, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, sp, #4
	add r3, sp, #8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r7, [sp]
	bl FUN_02205650
	ldrh r2, [sp, #4]
	ldr r1, [sp, #8]
	mov r0, r6
	bl FUN_022033F4
	mov r7, r0
	bl FUN_022033AC
	cmp r0, #0
	addne sp, sp, #0x10
	mvnne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov ip, #1
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl FUN_02205378
	mov r4, r0
	mov r0, r6
	mov r1, r7
	bl FUN_02206704
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02205374: .word 0x0220F84C

	arm_func_start FUN_02205378
FUN_02205378: ; 0x02205378
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov r8, r2
	ldrb r2, [r8]
	mov sb, r1
	mov sl, r0
	mov r7, r3
	str r2, [sp, #4]
	mov r0, sb
	mov r1, r2
	str r7, [sp]
	ldr r6, [sp, #0x38]
	bl FUN_022033EC
	ldr r0, [sp, #4]
	add r8, r8, #5
	ands r0, r0, #0x10
	sub r7, r7, #5
	ldr r0, [sp, #4]
	addne r8, r8, #2
	subne r7, r7, #2
	ands r0, r0, #2
	moveq r0, #0
	streq r0, [sp, #0xc]
	beq _02205404
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #0xc
	sub r7, r7, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldrb r1, [r8, #2]
	ldrb r0, [r8, #3]
	add r8, r8, #4
	strb r1, [r2, #2]
	strb r0, [r2, #3]
_02205404:
	ldr r0, [sp, #4]
	ands r0, r0, #0x20
	addeq r0, sl, #0x400
	ldreqh r0, [r0, #0xa8]
	streqh r0, [sp, #0xa]
	beq _02205438
	ldrb r1, [r8]
	ldrb r0, [r8, #1]
	add r2, sp, #0xa
	add r8, r8, #2
	strb r1, [r2]
	strb r0, [r2, #1]
	sub r7, r7, #2
_02205438:
	ldrh r2, [sp, #0xa]
	ldr r1, [sp, #0xc]
	mov r0, sb
	bl FUN_022033E0
	ldr r0, [sp, #4]
	ands r0, r0, #8
	beq _0220548C
	ldrb r2, [r8]
	ldrb r1, [r8, #1]
	add r3, sp, #0xc
	mov r0, sb
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r8, #2]
	ldrb r1, [r8, #3]
	add r8, r8, #4
	sub r7, r7, #4
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldr r1, [sp, #0xc]
	bl FUN_022033D8
_0220548C:
	ldr r0, [sp, #4]
	ands r0, r0, #0x40
	beq _022055C4
	ldr r0, [sl, #8]
	bl FUN_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022055AC
	mov fp, #0xff
_022054B4:
	ldr r0, [sl, #8]
	mov r1, r4
	bl FUN_021EEFFC
	mov r1, r0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0220554C
	cmp r0, #1
	beq _022054E4
	cmp r0, #2
	beq _02205500
	b _022055A0
_022054E4:
	ldrb r2, [r8]
	ldr r1, [r1]
	mov r0, sb
	bl FUN_02203A48
	add r8, r8, #1
	sub r7, r7, #1
	b _022055A0
_02205500:
	ldrb ip, [r8]
	ldrb r3, [r8, #1]
	add r2, sp, #8
	mov r0, sb
	strb ip, [r2]
	strb r3, [r2, #1]
	ldrh r3, [sp, #8]
	ldr r1, [r1]
	mov r2, r3, asr #8
	mov r3, r3, lsl #8
	and r2, r2, #0xff
	and r3, r3, #0xff00
	orr r2, r2, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_02203A48
	add r8, r8, #2
	sub r7, r7, #2
	b _022055A0
_0220554C:
	cmp r6, #0
	ldrneb r0, [r8], #1
	subne r7, r7, #1
	moveq r0, fp
	cmp r0, #0xff
	bne _0220558C
	ldr r1, [r1]
	mov r0, sb
	mov r2, r8
	bl FUN_02203A80
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
	b _022055A0
_0220558C:
	add r0, sl, r0, lsl #2
	ldr r1, [r1]
	ldr r2, [r0, #0x84]
	mov r0, sb
	bl FUN_02203A80
_022055A0:
	add r4, r4, #1
	cmp r4, r5
	blt _022054B4
_022055AC:
	mov r0, sb
	bl FUN_022033C8
	orr r1, r0, #1
	mov r0, sb
	and r1, r1, #0xff
	bl FUN_022033D0
_022055C4:
	ldr r0, [sp, #4]
	ands r0, r0, #0x80
	beq _02205640
	b _02205610
_022055D4:
	mov r0, r8
	mov r4, r8
	bl strlen
	add r3, r0, #1
	add r8, r8, r3
	mov r0, sb
	mov r1, r4
	mov r2, r8
	sub r7, r7, r3
	bl FUN_02203A80
	mov r0, r8
	bl strlen
	add r0, r0, #1
	add r8, r8, r0
	sub r7, r7, r0
_02205610:
	ldrsb r0, [r8]
	cmp r0, #0
	beq _02205624
	cmp r7, #0
	bgt _022055D4
_02205624:
	mov r0, sb
	sub r7, r7, #1
	bl FUN_022033C8
	orr r1, r0, #2
	mov r0, sb
	and r1, r1, #0xff
	bl FUN_022033D0
_02205640:
	ldr r0, [sp]
	sub r0, r0, r7
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02205650
FUN_02205650: ; 0x02205650
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	cmp r2, #5
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	add r5, r1, #1
	ldrb ip, [r1]
	ldrb r4, [r1, #1]
	ldrb lr, [r5, #1]
	ands ip, ip, #0x10
	strb r4, [r3]
	strb lr, [r3, #1]
	ldrb lr, [r5, #2]
	ldrb ip, [r5, #3]
	strb lr, [r3, #2]
	strb ip, [r3, #3]
	beq _022056C4
	sub r0, r2, #5
	cmp r0, #2
	addlt sp, sp, #4
	ldmltia sp!, {r4, r5, pc}
	add r0, r1, #5
	ldrb r1, [r1, #5]
	ldr r2, [sp, #0x10]
	ldrb r0, [r0, #1]
	add sp, sp, #4
	strb r1, [r2]
	strb r0, [r2, #1]
	ldmia sp!, {r4, r5, pc}
_022056C4:
	add r0, r0, #0x400
	ldrh r1, [r0, #0xa8]
	ldr r0, [sp, #0x10]
	strh r1, [r0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_022056DC
FUN_022056DC: ; 0x022056DC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #8]
	mov r7, r1
	mov r6, r2
	bl FUN_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022057D4
	mvn sb, #0
_0220570C:
	ldr r0, [r8, #8]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02205750
	cmp r0, #1
	beq _02205738
	cmp r0, #2
	beq _02205744
	b _02205798
_02205738:
	add r7, r7, #1
	sub r6, r6, #1
	b _022057B8
_02205744:
	add r7, r7, #2
	sub r6, r6, #2
	b _022057B8
_02205750:
	cmp r6, #1
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrb r0, [r7], #1
	sub r6, r6, #1
	cmp r0, #0xff
	bne _022057B8
	mov r0, r7
	mov r1, r6
	bl FUN_02206378
	cmp r0, sb
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r7, r7, r0
	sub r6, r6, r0
	b _022057B8
_02205798:
	ldr r0, _022057E0 ; =0x0220F854
	ldr r1, _022057E4 ; =0x0220F830
	ldr r3, _022057E8 ; =0x00000317
	mov r2, #0
	bl __msl_assertion_failed
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_022057B8:
	cmp r6, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r4, r4, #1
	cmp r4, r5
	blt _0220570C
_022057D4:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_022057E0: .word 0x0220F854
_022057E4: .word 0x0220F830
_022057E8: .word 0x00000317

	arm_func_start FUN_022057EC
FUN_022057EC: ; 0x022057EC
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	b _02205848
_02205800:
	mov r0, r5
	mov r1, r4
	bl FUN_02206378
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	sub r4, r4, r0
	add r5, r5, r0
	mov r0, r5
	mov r1, r4
	bl FUN_02206378
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r5, r5, r0
	sub r4, r4, r0
_02205848:
	cmp r4, #0
	ble _0220585C
	ldrsb r0, [r5]
	cmp r0, #0
	bne _02205800
_0220585C:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldrsb r0, [r5]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02205884
FUN_02205884: ; 0x02205884
	mov r2, #5
	ands r1, r0, #2
	addne r2, r2, #4
	ands r1, r0, #8
	addne r2, r2, #4
	ands r1, r0, #0x10
	addne r2, r2, #2
	ands r0, r0, #0x20
	addne r2, r2, #2
	mov r0, r2
	bx lr

	arm_func_start FUN_022058B0
FUN_022058B0: ; 0x022058B0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	mov r7, r2
	add r0, sb, #0x54
	mov r8, r1
	bl strlen
	mov r5, r0
	cmp r7, #0
	add r4, sb, #0x54
	mov r6, #0
	ble _0220593C
_022058E0:
	mov r0, r6
	mov r1, r5
	bl _s32_div_f
	ldrsb r1, [r4, r1]
	mov r2, r6, lsr #0x1f
	rsb r0, r2, r6, lsl #29
	mul r3, r6, r1
	mov r1, r3, lsr #0x1f
	add r2, r2, r0, ror #29
	rsb r0, r1, r3, lsl #29
	add r2, sb, r2
	add r3, r1, r0, ror #29
	ldrsb r0, [r8, r6]
	ldrsb r1, [r2, #0x74]
	add r2, sb, r3
	add r6, r6, #1
	eor r0, r1, r0
	ldrsb r1, [r2, #0x74]
	mov r0, r0, lsl #0x18
	cmp r6, r7
	eor r0, r1, r0, asr #24
	strb r0, [r2, #0x74]
	blt _022058E0
_0220593C:
	ldr r0, _02205958 ; =0x000004BC
	add r1, sb, #0x74
	add r0, sb, r0
	mov r2, #8
	bl FUN_022028B0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	.align 2, 0
_02205958: .word 0x000004BC

	arm_func_start FUN_0220595C
FUN_0220595C: ; 0x0220595C
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_02205994
	mov r0, r4
	bl FUN_022064BC
	mov r0, r4
	bl FUN_02203AE4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02205988
	bl FUN_021EF074
_02205988:
	mov r0, #0
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02205994
FUN_02205994: ; 0x02205994
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022059AC
	bl FUN_021DD82C
_022059AC:
	mov r0, #0
	str r0, [r4, #0x7c]
	str r0, [r4, #0x80]
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	beq _022059CC
	bl FUN_021EFD9C
_022059CC:
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x4b0]
	mov r1, #1
	str r1, [r4]
	bl FUN_022059F8
	mvn r1, #0
	mov r0, r4
	str r1, [r4, #0x484]
	bl FUN_02205A68
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022059F8
FUN_022059F8: ; 0x022059F8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, pc}
	mov r4, #0
	bl FUN_021EF06C
	cmp r0, #0
	ble _02205A50
_02205A24:
	ldr r0, [r5, #8]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r1, [r0]
	mov r0, r5
	bl FUN_022063A8
	ldr r0, [r5, #8]
	add r4, r4, #1
	bl FUN_021EF06C
	cmp r4, r0
	blt _02205A24
_02205A50:
	ldr r0, [r5, #8]
	bl FUN_021EF074
	mov r0, #0
	str r0, [r5, #8]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02205A68
FUN_02205A68: ; 0x02205A68
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #0x480]
	mov r4, #0
	cmp r0, #0
	ble _02205AA4
_02205A84:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x84]
	mov r0, r5
	bl FUN_022063A8
	ldr r0, [r5, #0x480]
	add r4, r4, #1
	cmp r4, r0
	blt _02205A84
_02205AA4:
	mov r0, #0
	str r0, [r5, #0x480]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02205AB4
FUN_02205AB4: ; 0x02205AB4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x30c
	mov r5, r0
	ldr r0, [r5]
	mov r7, r1
	mov r6, r2
	mov r4, r3
	cmp r0, #1
	beq _02205AEC
	ldr r0, _02205D18 ; =0x0220F858
	ldr r1, _02205D1C ; =0x0220F830
	ldr r3, _02205D20 ; =0x0000020A
	mov r2, #0
	bl __msl_assertion_failed
_02205AEC:
	cmp r7, #0
	ldreq r7, _02205D24 ; =0x0220F878
	cmp r6, #0
	ldreq r6, _02205D24 ; =0x0220F878
	mov r0, r7
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r6
	bl strlen
	cmp r0, #0x100
	addhi sp, sp, #0x30c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_02205FF0
	cmp r0, #0
	addne sp, sp, #0x30c
	ldmneia sp!, {r4, r5, r6, r7, pc}
	mov r0, r5
	str r4, [r5, #0x5c4]
	bl FUN_02205DCC
	add r3, sp, #0xe
	mov ip, #2
	add r0, sp, #8
	add r2, sp, #4
	mov r1, #0
	str ip, [sp, #4]
	str r3, [sp, #8]
	bl FUN_02205F74
	add r0, sp, #8
	add r2, sp, #4
	mov r1, #1
	bl FUN_02205F74
	add r0, sp, #8
	mov r1, #3
	add r2, sp, #4
	bl FUN_02205F74
	ldr r1, [r5, #0x4b8]
	add r0, sp, #8
	add r2, sp, #4
	bl FUN_02205F18
	add r0, sp, #8
	add r1, r5, #0xc
	add r2, sp, #4
	bl FUN_02205F98
	add r0, sp, #8
	add r1, r5, #0x30
	add r2, sp, #4
	bl FUN_02205F98
	add r0, sp, #8
	add r1, r5, #0x74
	mov r2, #8
	add r3, sp, #4
	bl FUN_02205EE4
	mov r1, r6
	add r0, sp, #8
	add r2, sp, #4
	bl FUN_02205F98
	mov r1, r7
	add r0, sp, #8
	add r2, sp, #4
	bl FUN_02205F98
	mov r1, r4, lsl #0x18
	and ip, r1, #0xff000000
	mov r1, r4, lsl #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r2, r1, #0xff
	mov r1, r4, lsr #8
	and r1, r1, #0xff00
	orr r1, r2, r1
	orr r1, r3, r1
	add r0, sp, #8
	orr r1, ip, r1
	add r2, sp, #4
	bl FUN_02205F18
	ldr r0, [r5, #0x5c4]
	ands r0, r0, #8
	beq _02205C44
	ldr r1, [r5, #0x4a4]
	add r0, sp, #8
	add r2, sp, #4
	bl FUN_02205F18
_02205C44:
	ldr r0, [r5, #0x5c4]
	ands r0, r0, #0x80
	beq _02205C60
	ldr r1, [sp, #0x320]
	add r0, sp, #8
	add r2, sp, #4
	bl FUN_02205F18
_02205C60:
	ldr r0, [sp, #4]
	add r1, sp, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	strh r0, [sp]
	ldrb r2, [r1]
	ldrb r0, [r1, #1]
	add r1, sp, #0xc
	mov r3, #0
	strb r2, [r1]
	strb r0, [r1, #1]
	ldr r0, [r5, #0x4b0]
	ldr r2, [sp, #4]
	bl FUN_021EFC24
	cmp r0, #0
	bgt _02205CC8
	mov r0, r5
	bl FUN_02205994
	add sp, sp, #0x30c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_02205CC8:
	mov r0, #3
	str r0, [r5]
	mov r0, #0
	str r0, [r5, #0x5c8]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bne _02205D0C
	mov r0, #0x1000
	bl FUN_021DD860
	str r0, [r5, #0x7c]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	addeq sp, sp, #0x30c
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r5, #0x80]
_02205D0C:
	mov r0, #0
	add sp, sp, #0x30c
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02205D18: .word 0x0220F858
_02205D1C: .word 0x0220F830
_02205D20: .word 0x0000020A
_02205D24: .word 0x0220F878

	arm_func_start FUN_02205D28
FUN_02205D28: ; 0x02205D28
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r6, #1
	mov r5, #0
	mov r4, #2
_02205D48:
	ldr r0, [sl, #0x4b0]
	mov r1, sb
	mov r2, r8
	mov r3, r5
	sub r6, r6, #1
	bl FUN_021EFC24
	mov r7, r0
	cmp r7, #0
	bgt _02205DB8
	cmp r6, #0
	blt _02205DB8
	mov r0, sl
	bl FUN_02205994
	mov r0, sl
	mov r1, r5
	mov r2, r5
	mov r3, r4
	str r5, [sp]
	bl FUN_02205AB4
	movs fp, r0
	beq _02205DB0
	mov r0, sl
	bl FUN_02206184
	add sp, sp, #4
	mov r0, fp
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02205DB0:
	cmp r6, #0
	bge _02205D48
_02205DB8:
	cmp r7, #0
	movle r0, #3
	movgt r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02205DCC
FUN_02205DCC: ; 0x02205DCC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sl, r0
	bl rand
	ldr r1, _02205EDC ; =0x2C0B02C1
	mov r8, #0
	smull r3, r4, r1, r0
	mov r2, r0, lsr #0x1f
	mov r4, r4, asr #4
	ldr r1, _02205EE0 ; =0x0000005D
	add r4, r2, r4
	smull r2, r3, r1, r4
	sub r4, r0, r2
	add r0, r4, #0x21
	mov sb, #1
	strb r0, [sl, #0x74]
	mov r5, r8
	mov r6, sb
	mov fp, r8
	mov r4, sb
_02205E1C:
	sub r0, sb, #1
	add r0, sl, r0
	ldrsb r2, [r0, #0x74]
	ldrsb r3, [sl, #0x74]
	add r7, sl, sb
	cmp r2, r3
	eor r2, sb, r2
	movlt r0, r6
	and r2, r2, #1
	movge r0, r5
	cmp r3, #0x4f
	movlt r1, r4
	and r3, r3, #1
	eor r2, r8, r2
	movge r1, fp
	eor r2, r3, r2
	eor r1, r2, r1
	eor r8, r1, r0
	bl rand
	ldr r2, _02205EDC ; =0x2C0B02C1
	cmp r8, #0
	smull r3, r1, r2, r0
	mov r1, r1, asr #4
	mov r2, r0, lsr #0x1f
	add r1, r2, r1
	ldr r2, _02205EE0 ; =0x0000005D
	smull r1, r3, r2, r1
	sub r1, r0, r1
	add r0, r1, #0x21
	strb r0, [r7, #0x74]
	beq _02205EA4
	ldrsb r0, [r7, #0x74]
	ands r0, r0, #1
	beq _02205EBC
_02205EA4:
	cmp r8, #0
	bne _02205EC8
	ldrsb r0, [r7, #0x74]
	and r0, r0, #1
	cmp r0, #1
	bne _02205EC8
_02205EBC:
	ldrsb r0, [r7, #0x74]
	add r0, r0, #1
	strb r0, [r7, #0x74]
_02205EC8:
	add sb, sb, #1
	cmp sb, #8
	blt _02205E1C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02205EDC: .word 0x2C0B02C1
_02205EE0: .word 0x0000005D

	arm_func_start FUN_02205EE4
FUN_02205EE4: ; 0x02205EE4
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6]
	mov r4, r3
	mov r5, r2
	bl memcpy
	ldr r0, [r4]
	add r0, r0, r5
	str r0, [r4]
	ldr r0, [r6]
	add r0, r0, r5
	str r0, [r6]
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02205F18
FUN_02205F18: ; 0x02205F18
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #4
	add ip, sp, #0xc
	ldrb r3, [ip]
	ldrb r1, [ip, #1]
	ldr lr, [r0]
	strb r3, [lr]
	strb r1, [lr, #1]
	ldrb r3, [ip, #2]
	ldrb r1, [ip, #3]
	strb r3, [lr, #2]
	strb r1, [lr, #3]
	ldr r1, [r2]
	add r1, r1, #4
	str r1, [r2]
	ldr r1, [r0]
	add r1, r1, #4
	str r1, [r0]
	add sp, sp, #4
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_02205F74
FUN_02205F74: ; 0x02205F74
	ldr r3, [r0]
	strb r1, [r3]
	ldr r1, [r2]
	add r1, r1, #1
	str r1, [r2]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr

	arm_func_start FUN_02205F98
FUN_02205F98: ; 0x02205F98
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r1
	ldreq r7, _02205FEC ; =0x0220F878
	mov r4, r0
	mov r0, r7
	mov r6, r2
	bl strlen
	add r5, r0, #1
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl memcpy
	ldr r0, [r6]
	add r0, r0, r5
	str r0, [r6]
	ldr r0, [r4]
	add r0, r0, r5
	str r0, [r4]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02205FEC: .word 0x0220F878

	arm_func_start FUN_02205FF0
FUN_02205FF0: ; 0x02205FF0
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x88
	mov r4, r0
	add r0, r4, #0xc
	mov r1, #0x14
	bl FUN_02206124
	ldr r1, _02206118 ; =0x0221173C
	mov r3, r0
	ldr r1, [r1]
	cmp r1, #0
	beq _02206028
	add r0, sp, #8
	bl strcpy
	b _02206038
_02206028:
	ldr r1, _0220611C ; =0x0220F87C
	add r0, sp, #8
	add r2, r4, #0xc
	bl sprintf
_02206038:
	ldr r1, _02206120 ; =0x0000EE70
	mov r2, #2
	add r0, sp, #8
	strb r2, [sp, #1]
	strh r1, [sp, #2]
	bl FUN_021EFB38
	mvn r1, #0
	str r0, [sp, #4]
	cmp r0, r1
	bne _022060A4
	add r0, sp, #8
	bl FUN_0209A6EC
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	add r3, sp, #4
	ldr r2, [r0]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	strb r1, [r3]
	strb r0, [r3, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r3, #2]
	strb r0, [r3, #3]
_022060A4:
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	bne _022060E0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EFDB8
	str r0, [r4, #0x4b0]
	ldr r0, [r4, #0x4b0]
	mvn r1, #0
	cmp r0, r1
	addeq sp, sp, #0x88
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
_022060E0:
	add r1, sp, #0
	mov r2, #8
	bl FUN_021EFCE4
	cmp r0, #0
	addeq sp, sp, #0x88
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x4b0]
	bl FUN_021EFD9C
	mvn r0, #0
	str r0, [r4, #0x4b0]
	mov r0, #3
	add sp, sp, #0x88
	ldmia sp!, {r4, pc}
	.align 2, 0
_02206118: .word 0x0221173C
_0220611C: .word 0x0220F87C
_02206120: .word 0x0000EE70

	arm_func_start FUN_02206124
FUN_02206124: ; 0x02206124
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _02206168
	ldr r3, _0220617C ; =0x0210420C
	ldr r2, _02206180 ; =0x9CCF9319
_02206144:
	cmp lr, #0
	blt _02206158
	cmp lr, #0x80
	bge _02206158
	ldrb lr, [r3, lr]
_02206158:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _02206144
_02206168:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_0220617C: .word 0x0210420C
_02206180: .word 0x9CCF9319

	arm_func_start FUN_02206184
FUN_02206184: ; 0x02206184
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r5, [r4, #0x80]
	cmp r5, #0
	ble _02206214
	ldr r0, _02206240 ; =0x0220F804
	ldr r6, [r0]
	mov r0, r6
	bl strlen
	cmp r5, r0
	bls _02206214
	ldr r0, _02206240 ; =0x0220F804
	ldr r7, [r4, #0x7c]
	ldr r5, [r0]
	mov r0, r5
	bl strlen
	mov r2, r0
	mov r0, r7
	mov r1, r5
	bl strncmp
	cmp r0, #0
	bne _02206214
	mov r0, r6
	bl strlen
	mov r1, r0
	mov r0, r4
	add r1, r7, r1
	bl FUN_02205240
	ldr r0, _02206244 ; =0x02211738
	ldr r3, [r4, #0x494]
	ldr r2, [r0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #5
	blx ip
_02206214:
	ldr r0, _02206244 ; =0x02211738
	ldr r3, [r4, #0x494]
	ldr r2, [r0]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #4
	blx ip
	mov r0, r4
	bl FUN_02205994
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206240: .word 0x0220F804
_02206244: .word 0x02211738

	arm_func_start FUN_02206248
FUN_02206248: ; 0x02206248
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _02206278
	ldr r0, _02206360 ; =0x0220F898
	ldr r1, _02206364 ; =0x0220F830
	mov r2, #0
	mov r3, #0x11c
	bl __msl_assertion_failed
_02206278:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _02206298
	ldr r0, _02206368 ; =0x02210E5C
	ldr r0, [r0]
	cmp r0, #1
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
_02206298:
	mov r1, #1
	mov r0, r7
	str r1, [r7]
	bl FUN_02206494
	mov r0, r7
	bl FUN_02203B34
	mov r1, r6
	add r0, r7, #0xc
	bl strcpy
	mov r1, r5
	add r0, r7, #0x30
	bl strcpy
	mov r1, r4
	add r0, r7, #0x54
	bl strcpy
	ldr r0, [sp, #0x20]
	mov r2, #0
	str r0, [r7, #0x488]
	cmp r0, #0
	str r2, [r7, #0x48c]
	bne _022062FC
	ldr r0, _0220636C ; =0x0220F8A8
	ldr r1, _02206364 ; =0x0220F830
	ldr r3, _02206370 ; =0x00000132
	bl __msl_assertion_failed
_022062FC:
	ldr r0, [sp, #0x24]
	ldr r1, _02206374 ; =0x0220F878
	str r0, [r7, #0x494]
	str r1, [r7, #0x498]
	mov r3, #0
	str r3, [r7, #0x4a0]
	mvn r0, #0
	str r0, [r7, #0x4b0]
	str r3, [r7, #0x7c]
	str r3, [r7, #0x80]
	str r3, [r7, #8]
	str r0, [r7, #0x484]
	str r3, [r7, #0x480]
	ldr r2, [sp, #0x18]
	str r3, [r7, #0x4a4]
	mov r0, r7
	str r2, [r7, #0x4b8]
	bl FUN_02205240
	mov r0, #0
	str r0, [r7, #0x5cc]
	bl FUN_021F025C
	bl srand
	bl FUN_021F024C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206360: .word 0x0220F898
_02206364: .word 0x0220F830
_02206368: .word 0x02210E5C
_0220636C: .word 0x0220F8A8
_02206370: .word 0x00000132
_02206374: .word 0x0220F878

	arm_func_start FUN_02206378
FUN_02206378: ; 0x02206378
	cmp r1, #0
	mov r3, #0
	ble _022063A0
_02206384:
	ldrsb r2, [r0, r3]
	cmp r2, #0
	addeq r0, r3, #1
	bxeq lr
	add r3, r3, #1
	cmp r3, r1
	blt _02206384
_022063A0:
	mvn r0, #0
	bx lr

	arm_func_start FUN_022063A8
FUN_022063A8: ; 0x022063A8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	str r1, [sp]
	bl FUN_02203B34
	add r1, sp, #0
	bl FUN_021EF358
	movs r4, r0
	bne _022063E0
	ldr r0, _02206420 ; =0x0220F8BC
	ldr r1, _02206424 ; =0x0220F830
	mov r2, #0
	mov r3, #0xf4
	bl __msl_assertion_failed
_022063E0:
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	mov r0, r5
	bl FUN_02203B34
	add r1, sp, #0
	bl FUN_021EF3F4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206420: .word 0x0220F8BC
_02206424: .word 0x0220F830

	arm_func_start FUN_02206428
FUN_02206428: ; 0x02206428
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r5, r0
	str r4, [sp]
	bl FUN_02203B34
	add r1, sp, #0
	bl FUN_021EF358
	cmp r0, #0
	ldrne r1, [r0, #4]
	addne sp, sp, #0xc
	addne r1, r1, #1
	strne r1, [r0, #4]
	ldrne r0, [r0]
	ldmneia sp!, {r4, r5, pc}
	mov r0, r4
	bl FUN_021F0208
	str r0, [sp]
	mov r1, #1
	mov r0, r5
	str r1, [sp, #4]
	bl FUN_02203B34
	add r1, sp, #0
	bl FUN_021EF494
	ldr r0, [sp]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02206494
FUN_02206494: ; 0x02206494
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x64
	mov r2, #0
	bl FUN_021EF0E4
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x5d0]
	ldmia sp!, {r4, pc}

	arm_func_start FUN_022064BC
FUN_022064BC: ; 0x022064BC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	bl FUN_021EF06C
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	ble _02206500
_022064DC:
	ldr r0, [r6, #4]
	mov r1, r5
	bl FUN_021EEFFC
	ldr r1, [r0]
	mov r0, r6
	bl FUN_022065E8
	add r5, r5, #1
	cmp r5, r4
	blt _022064DC
_02206500:
	ldr r0, [r6, #4]
	bl FUN_021EEB28
	mov r0, r6
	bl FUN_02206514
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02206514
FUN_02206514: ; 0x02206514
	stmdb sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	ldr r0, [r6, #0x5d0]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	str r0, [sp]
	cmp r0, #0
	beq _02206560
	add r4, sp, #0
_02206540:
	ldr r0, [sp]
	bl FUN_02203888
	mov r5, r0
	mov r0, r4
	bl FUN_02203AC0
	str r5, [sp]
	cmp r5, #0
	bne _02206540
_02206560:
	mov r0, #0
	str r0, [r6, #0x5d0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02206570
FUN_02206570: ; 0x02206570
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, [r0, #4]
	bl FUN_021EEFFC
	ldr r0, [r0]
	add sp, sp, #4
	ldmfd sp!, {pc}
	ldr ip, _02206598 ; =FUN_021EF06C
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_02206598: .word FUN_021EF06C

	arm_func_start FUN_0220659C
FUN_0220659C: ; 0x0220659C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	bl FUN_021EEFFC
	ldr r4, [r0]
	ldr r3, [r6, #0x494]
	ldr ip, [r6, #0x488]
	mov r0, r6
	mov r2, r4
	mov r1, #2
	blx ip
	ldr r0, [r6, #4]
	mov r1, r5
	bl FUN_021EED84
	mov r0, r6
	mov r1, r4
	bl FUN_022065E8
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_022065E8
FUN_022065E8: ; 0x022065E8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0x5d0]
	cmp r1, #0
	bne _02206614
	mov r0, r4
	mov r1, #0
	bl FUN_02203890
	b _0220661C
_02206614:
	mov r0, r4
	bl FUN_02203890
_0220661C:
	str r4, [r5, #0x5d0]
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}

	arm_func_start FUN_02206628
FUN_02206628: ; 0x02206628
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	mov r7, r2
	bl FUN_021EF06C
	mov r6, r0
	cmp r6, #0
	mov r4, #0
	ble _02206698
_02206654:
	ldr r0, [sb, #4]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r5, [r0]
	mov r0, r5
	bl FUN_02203908
	cmp r8, r0
	bne _0220668C
	mov r0, r5
	bl FUN_022038DC
	cmp r7, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_0220668C:
	add r4, r4, #1
	cmp r4, r6
	blt _02206654
_02206698:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_022066A4
FUN_022066A4: ; 0x022066A4
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	bl FUN_021EF06C
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022066F8
_022066CC:
	ldr r0, [r7, #4]
	mov r1, r4
	bl FUN_021EEFFC
	ldr r0, [r0]
	cmp r6, r0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r4, r4, #1
	cmp r4, r5
	blt _022066CC
_022066F8:
	mvn r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}

	arm_func_start FUN_02206704
FUN_02206704: ; 0x02206704
	stmdb sp!, {r0, r1, r2, r3}
	stmdb sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	bl FUN_021EEFA8
	ldr r2, [sp, #0xc]
	ldr r3, [r4, #0x494]
	ldr ip, [r4, #0x488]
	mov r0, r4
	mov r1, #0
	blx ip
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr

	arm_func_start FUN_02206740
FUN_02206740: ; 0x02206740
	cmp r3, #3
	addls pc, pc, r3, lsl #2
	b _0220677C
_0220674C: ; jump table
	b _0220675C ; case 0
	b _02206764 ; case 1
	b _0220676C ; case 2
	b _02206774 ; case 3
_0220675C:
	ldr r3, _022067A0 ; =FUN_02206978
	b _02206780
_02206764:
	ldr r3, _022067A4 ; =FUN_02206898
	b _02206780
_0220676C:
	ldr r3, _022067A8 ; =FUN_02206828
	b _02206780
_02206774:
	ldr r3, _022067AC ; =FUN_022067B8
	b _02206780
_0220677C:
	ldr r3, _022067AC ; =FUN_022067B8
_02206780:
	str r2, [r0, #0x498]
	str r1, [r0, #0x49c]
	ldr r2, _022067B0 ; =0x02211740
	ldr ip, _022067B4 ; =FUN_021EED08
	str r0, [r2]
	mov r1, r3
	ldr r0, [r0, #4]
	bx ip
	.align 2, 0
_022067A0: .word FUN_02206978
_022067A4: .word FUN_02206898
_022067A8: .word FUN_02206828
_022067AC: .word FUN_022067B8
_022067B0: .word 0x02211740
_022067B4: .word FUN_021EED08

	arm_func_start FUN_022067B8
FUN_022067B8: ; 0x022067B8
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02206820 ; =0x02211740
	mov r5, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ldr r1, [r1, #0x498]
	ldr r2, _02206824 ; =0x0220F878
	bl FUN_022039E0
	ldr r1, _02206820 ; =0x02211740
	mov r4, r0
	ldr r1, [r1]
	ldr r0, [r5]
	ldr r1, [r1, #0x498]
	ldr r2, _02206824 ; =0x0220F878
	bl FUN_022039E0
	mov r1, r0
	mov r0, r4
	bl strnicmp
	ldr r1, _02206820 ; =0x02211740
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206820: .word 0x02211740
_02206824: .word 0x0220F878

	arm_func_start FUN_02206828
FUN_02206828: ; 0x02206828
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _02206890 ; =0x02211740
	mov r5, r1
	ldr r1, [r2]
	ldr r0, [r0]
	ldr r1, [r1, #0x498]
	ldr r2, _02206894 ; =0x0220F878
	bl FUN_022039E0
	ldr r1, _02206890 ; =0x02211740
	mov r4, r0
	ldr r1, [r1]
	ldr r0, [r5]
	ldr r1, [r1, #0x498]
	ldr r2, _02206894 ; =0x0220F878
	bl FUN_022039E0
	mov r1, r0
	mov r0, r4
	bl strcmp
	ldr r1, _02206890 ; =0x02211740
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02206890: .word 0x02211740
_02206894: .word 0x0220F878

	arm_func_start FUN_02206898
FUN_02206898: ; 0x02206898
	stmdb sp!, {r4, r5, r6, lr}
	ldr r3, _02206974 ; =0x02211740
	mov r2, #0
	ldr r3, [r3]
	ldr r5, [r1]
	ldr r0, [r0]
	ldr r1, [r3, #0x498]
	mov r3, r2
	bl FUN_02203910
	ldr r3, _02206974 ; =0x02211740
	mov r2, #0
	mov r4, r0
	ldr r0, [r3]
	mov r6, r1
	ldr r1, [r0, #0x498]
	mov r0, r5
	mov r3, r2
	bl FUN_02203910
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dsub
	ldr r2, _02206974 ; =0x02211740
	mov r4, r0
	ldr r0, [r2]
	mov r5, r1
	ldr r0, [r0, #0x49c]
	cmp r0, #0
	bne _0220692C
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r5
	bl _dsub
	mov r4, r0
	mov r5, r1
_0220692C:
	mov r0, r4
	mov r1, r5
	bl _d2f
	mov r1, #0
	bl _fgr
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r5
	bl _d2f
	mov r1, #0
	bl _fls
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02206974: .word 0x02211740

	arm_func_start FUN_02206978
FUN_02206978: ; 0x02206978
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r2, _022069D8 ; =0x02211740
	ldr r0, [r0]
	ldr r2, [r2]
	ldr r5, [r1]
	ldr r1, [r2, #0x498]
	mov r2, #0
	bl FUN_0220394C
	ldr r1, _022069D8 ; =0x02211740
	mov r4, r0
	ldr r1, [r1]
	mov r0, r5
	ldr r1, [r1, #0x498]
	mov r2, #0
	bl FUN_0220394C
	ldr r1, _022069D8 ; =0x02211740
	sub r0, r4, r0
	ldr r1, [r1]
	ldr r1, [r1, #0x49c]
	cmp r1, #0
	rsbeq r0, r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_022069D8: .word 0x02211740

	arm_func_start FUN_022069DC
FUN_022069DC: ; 0x022069DC
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02208364
	bl FUN_02206B14
	mov r1, r6
	mov r0, #0
	bl FUN_02206A4C
	cmp r0, #0
	beq _02206A3C
	mov r1, r5
	mov r0, #1
	bl FUN_02206A4C
	cmp r0, #0
	beq _02206A3C
	mov r1, r4
	mov r0, #2
	bl FUN_02206A4C
	cmp r0, #0
	beq _02206A3C
	bl FUN_02208350
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02206A3C:
	bl FUN_02206B14
	bl FUN_02208350
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}

	arm_func_start FUN_02206A4C
FUN_02206A4C: ; 0x02206A4C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r4, r0
	cmp r1, #0
	beq _02206B00
	mov r0, r6
	bl FUN_022083D4
	cmp r0, #0xa
	ldrgt r0, _02206B08 ; =0x02211760
	movgt r1, #7
	strgt r1, [r0]
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_022083D4
	mov r5, r0
	cmp r5, #0xa
	ldrgt r0, _02206B08 ; =0x02211760
	movgt r1, #7
	strgt r1, [r0]
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	bl FUN_02206DA4
	ldr r1, _02206B0C ; =0x02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	ldr r1, _02206B10 ; =0x02211778
	str r0, [r1, r4, lsl #2]
	ldr r0, [r1, r4, lsl #2]
	cmp r0, #0
	ldreq r0, _02206B08 ; =0x02211760
	moveq r1, #1
	streq r1, [r0]
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	mov r2, r5
	bl FUN_02206C98
	ldr r1, _02206B10 ; =0x02211778
	mov r2, #0
	ldr r1, [r1, r4, lsl #2]
	strb r2, [r1, r0]
_02206B00:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02206B08: .word 0x02211760
_02206B0C: .word 0x02211750
_02206B10: .word 0x02211778

	arm_func_start FUN_02206B14
FUN_02206B14: ; 0x02206B14
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r7, #0
	ldr r4, _02206B58 ; =0x02211764
	ldr r6, _02206B5C ; =0x02211778
	mov r5, r7
_02206B2C:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _02206B44
	ldr r1, [r4]
	blx r1
	str r5, [r6, r7, lsl #2]
_02206B44:
	add r7, r7, #1
	cmp r7, #3
	blt _02206B2C
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02206B58: .word 0x02211764
_02206B5C: .word 0x02211778

	arm_func_start FUN_02206B60
FUN_02206B60: ; 0x02206B60
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	mov r8, r2
	add r0, sp, #4
	mov r2, #4
	mov r5, #0
	mov sb, r1
	bl FUN_02206E28
	mov r7, r5
	mov r6, r0
	mov r4, r7
	str r7, [sp]
	mov fp, #4
	b _02206C74
_02206B9C:
	ldrb r0, [sp, #4]
	strb r4, [sp, #8]
	strb r4, [sp, #9]
	strb r4, [sp, #0xa]
	bl FUN_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrb r0, [sp, #5]
	mov r1, r7, lsl #2
	strb r1, [sp, #8]
	bl FUN_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrsb r2, [sp, #8]
	ldrb r0, [sp, #6]
	mov r1, r7, lsl #4
	strb r1, [sp, #9]
	orr r1, r2, r7, asr #4
	strb r1, [sp, #8]
	bl FUN_02206DD0
	movs r7, r0
	bmi _02206C20
	ldrsb r2, [sp, #9]
	ldrb r0, [sp, #7]
	mov r1, r7, lsl #6
	strb r1, [sp, #0xa]
	orr r1, r2, r7, asr #2
	strb r1, [sp, #9]
	bl FUN_02206DD0
	movs r7, r0
	ldrplsb r0, [sp, #0xa]
	orrpl r0, r0, r7
	strplb r0, [sp, #0xa]
_02206C20:
	sub r1, r6, #1
	ldr r3, [sp]
	cmp r1, #0
	ble _02206C48
	add r2, sp, #8
_02206C34:
	ldrsb r0, [r2], #1
	add r3, r3, #1
	cmp r3, r1
	strb r0, [sl], #1
	blt _02206C34
_02206C48:
	sub r0, r6, #1
	sub r8, r8, #4
	cmp r8, #0
	add sb, sb, r6
	add r5, r5, r0
	ble _02206C84
	add r0, sp, #4
	mov r1, sb
	mov r2, fp
	bl FUN_02206E28
	mov r6, r0
_02206C74:
	cmp r6, #0
	ble _02206C84
	cmp r7, #0
	bge _02206B9C
_02206C84:
	mov r1, #0
	mov r0, r5
	strb r1, [sl]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}

	arm_func_start FUN_02206C98
FUN_02206C98: ; 0x02206C98
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r8, r2
	mov sb, r1
	mov sl, r0
	cmp r8, #3
	movgt r2, #3
	add r0, sp, #0
	mov r1, sb
	mov r7, #0
	bl FUN_02206E28
	cmp r0, #0
	ble _02206D8C
	ldr r5, _02206DA0 ; =0x0220BCE8
	mov r6, #0
	mov r4, #0x2a
	mov fp, #3
_02206CDC:
	ldrb r3, [sp]
	cmp r8, #3
	strltb r6, [sp, #2]
	mov r1, r3, asr #2
	cmp r8, #2
	strltb r6, [sp, #1]
	and r1, r1, #0xff
	ldrb ip, [sp, #1]
	mov r3, r3, lsl #4
	ldrb r2, [sp, #2]
	ldrsb r1, [r5, r1]
	orr r3, r3, ip, asr #4
	cmp r0, #1
	strb r1, [sl]
	and r1, r3, #0x3f
	and r1, r1, #0xff
	mov r3, ip, lsl #2
	orr r3, r3, r2, asr #6
	ldrsb r1, [r5, r1]
	and r2, r2, #0x3f
	and r3, r3, #0x3f
	strb r1, [sl, #1]
	and r1, r3, #0xff
	ldrgtsb r1, [r5, r1]
	and r2, r2, #0xff
	add sb, sb, r0
	movle r1, r4
	strb r1, [sl, #2]
	cmp r0, #2
	ldrgtsb r2, [r5, r2]
	add r7, r7, #4
	movle r2, r4
	strb r2, [sl, #3]
	add sl, sl, #4
	subs r8, r8, r0
	beq _02206D8C
	cmp r8, #3
	movgt r2, fp
	movle r2, r8
	add r0, sp, #0
	mov r1, sb
	bl FUN_02206E28
	cmp r0, #0
	bgt _02206CDC
_02206D8C:
	mov r1, #0
	mov r0, r7
	strb r1, [sl]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02206DA0: .word 0x0220BCE8

	arm_func_start FUN_02206DA4
FUN_02206DA4: ; 0x02206DA4
	ldr r1, _02206DBC ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
	.align 2, 0
_02206DBC: .word 0x55555556

	arm_func_start FUN_02206DC0
FUN_02206DC0: ; 0x02206DC0
	mov r1, r0, asr #2
	mov r0, #3
	mul r0, r1, r0
	bx lr

	arm_func_start FUN_02206DD0
FUN_02206DD0: ; 0x02206DD0
	cmp r0, #0x41
	blo _02206DE4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_02206DE4:
	cmp r0, #0x61
	blo _02206DF8
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_02206DF8:
	cmp r0, #0x30
	blo _02206E0C
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_02206E0C:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr

	arm_func_start FUN_02206E28
FUN_02206E28: ; 0x02206E28
	stmdb sp!, {r4, lr}
	mov lr, #0
	mov r4, lr
	cmp r2, #0
	ble _02206E64
	mov r3, lr
_02206E40:
	ldrsb ip, [r1]
	add r4, r4, #1
	cmp ip, #0
	strneb ip, [r0], #1
	addne lr, lr, #1
	addne r1, r1, #1
	streqb r3, [r0], #1
	cmp r4, r2
	blt _02206E40
_02206E64:
	mov r0, lr
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02206E6C
FUN_02206E6C: ; 0x02206E6C
	ldr r1, _02206E8C ; =0x02211744
	ldr r2, _02206E90 ; =0x02211758
	str r0, [r1]
	mov r1, #0
	ldr ip, _02206E94 ; =FUN_02208570
	ldr r0, _02206E98 ; =FUN_02206E9C
	str r1, [r2]
	bx ip
	.align 2, 0
_02206E8C: .word 0x02211744
_02206E90: .word 0x02211758
_02206E94: .word FUN_02208570
_02206E98: .word FUN_02206E9C

	arm_func_start FUN_02206E9C
FUN_02206E9C: ; 0x02206E9C
	stmdb sp!, {lr}
	sub sp, sp, #4
	bl FUN_02206B14
	bl FUN_02208378
	bl FUN_0220831C
	ldr r0, _02206EEC ; =0x0221174C
	ldr r1, _02206EF0 ; =0x02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _02206EF4 ; =0x02211754
	ldr r1, _02206EF0 ; =0x02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _02206EF8 ; =0x02211744
	ldr r0, [r0]
	blx r0
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02206EEC: .word 0x0221174C
_02206EF0: .word 0x02211764
_02206EF4: .word 0x02211754
_02206EF8: .word 0x02211744

	arm_func_start FUN_02206EFC
FUN_02206EFC: ; 0x02206EFC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r7, r0
	ldr sb, _022070D0 ; =0x02211750
	ldr ip, [sp, #0x30]
	ldr r0, _022070D4 ; =0x0221175C
	mov r6, r1
	str ip, [r0]
	ldr r5, _022070D8 ; =0x02211764
	str r7, [sb]
	str r6, [r5]
	ldr r4, _022070DC ; =0x02211760
	mov r1, #0
	ldr r8, _022070E0 ; =0x02211778
	ldr lr, _022070E4 ; =0x02211748
	ldr sl, _022070E8 ; =0x0221174C
	ldr fp, _022070EC ; =0x02211754
	str r1, [r4]
	ldr ip, _022070F0 ; =0x02211768
	mvn sb, #0
	ldr r0, _022070F4 ; =0x02211784
	mov r5, r2
	mov r4, r3
	str r1, [r8]
	str r1, [r8, #4]
	str r1, [r8, #8]
	str r1, [lr]
	str sb, [ip]
	str r1, [sl]
	str r1, [fp]
	bl FUN_02208228
	ldr r0, _022070F8 ; =0x022117CC
	bl FUN_02207194
	mov r0, r5
	bl FUN_0220710C
	mov r1, fp
	cmp r0, #0
	str r0, [r1]
	beq _02207080
	mov r0, r4
	bl FUN_0220710C
	mov r1, sl
	cmp r0, #0
	str r0, [r1]
	beq _02207080
	ldr r1, [sp, #0x28]
	ldr r0, _022070FC ; =0x0221176C
	mov r2, #4
	bl FUN_02206C98
	ldr r1, _022070FC ; =0x0221176C
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, _02207100 ; =0x022117B0
	mov r2, #0x10
	bl FUN_02206C98
	ldr r1, _02207100 ; =0x022117B0
	mov r2, #0
	strb r2, [r1, r0]
	bl FUN_02208320
	cmp r0, #0
	beq _02207040
	bl FUN_0220837C
	cmp r0, #0
	beq _02207040
	mov r0, r7
	mov r1, r6
	mov r2, #0xa
	bl FUN_022085B8
	cmp r0, #0
	beq _0220703C
	ldr r0, _02207104 ; =0x02211798
	bl FUN_0220724C
	ldr r2, _022070E4 ; =0x02211748
	ldr r1, _02207108 ; =0x02211758
	str r0, [r2]
	mov r0, #1
	str r0, [r1]
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220703C:
	bl FUN_02208378
_02207040:
	ldr r0, _022070E8 ; =0x0221174C
	ldr r1, _022070D8 ; =0x02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _022070EC ; =0x02211754
	ldr r1, _022070D8 ; =0x02211764
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	ldr r0, _022070DC ; =0x02211760
	mov r1, #8
	str r1, [r0]
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02207080:
	ldr r0, _022070E8 ; =0x0221174C
	ldr r0, [r0]
	cmp r0, #0
	beq _0220709C
	ldr r1, _022070D8 ; =0x02211764
	ldr r1, [r1]
	blx r1
_0220709C:
	ldr r0, _022070EC ; =0x02211754
	ldr r0, [r0]
	cmp r0, #0
	beq _022070B8
	ldr r1, _022070D8 ; =0x02211764
	ldr r1, [r1]
	blx r1
_022070B8:
	ldr r0, _022070DC ; =0x02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_022070D0: .word 0x02211750
_022070D4: .word 0x0221175C
_022070D8: .word 0x02211764
_022070DC: .word 0x02211760
_022070E0: .word 0x02211778
_022070E4: .word 0x02211748
_022070E8: .word 0x0221174C
_022070EC: .word 0x02211754
_022070F0: .word 0x02211768
_022070F4: .word 0x02211784
_022070F8: .word 0x022117CC
_022070FC: .word 0x0221176C
_02207100: .word 0x022117B0
_02207104: .word 0x02211798
_02207108: .word 0x02211758

	arm_func_start FUN_0220710C
FUN_0220710C: ; 0x0220710C
	stmdb sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_022083D4
	ldr r1, _02207154 ; =0x02211750
	mov r4, r0
	ldr r2, [r1]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _0220714C
	mov r1, r6
	mov r2, r4
	bl FUN_0220839C
	mov r0, #0
	strb r0, [r5, r4]
_0220714C:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	.align 2, 0
_02207154: .word 0x02211750

	arm_func_start FUN_02207158
FUN_02207158: ; 0x02207158
	stmdb sp!, {r4, lr}
	bl FUN_022082D4
	cmp r0, #0
	bne _02207184
	bl FUN_02208364
	ldr r0, _02207190 ; =0x02211768
	ldr r4, [r0]
	bl FUN_02208350
	mov r0, r4
	bl FUN_02209218
	ldmia sp!, {r4, pc}
_02207184:
	bl FUN_022082A0
	mov r0, #0
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207190: .word 0x02211768

	arm_func_start FUN_02207194
FUN_02207194: ; 0x02207194
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r2, _022071BC ; =0x0220F9B0
	mov ip, #2
	mov r1, #0x21
	mov r3, #1
	str ip, [sp]
	bl OS_SNPrintf
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_022071BC: .word 0x0220F9B0

	arm_func_start FUN_022071C0
FUN_022071C0: ; 0x022071C0
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, #0x14
	bl FUN_022083B4
	add r0, sp, #0
	bl FUN_02095EC8
	ldr r1, [sp]
	ldr r2, [sp, #4]
	mov r0, #0
	cmp r2, r0
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0x14
	mov r3, #0xd
	bl FUN_0220844C
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmltia sp!, {r4, r5, pc}
	add r1, sp, #0x14
	mov r0, r4
	mov r2, #0xd
	bl FUN_02206C98
	ldr r1, _02207248 ; =0x027FFE0C
	mov r0, r5
	mov r2, #4
	bl FUN_02206C98
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02207248: .word 0x027FFE0C

	arm_func_start FUN_0220724C
FUN_0220724C: ; 0x0220724C
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _02207324 ; =0x0220BD2C
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_02207264:
	ldrb r1, [ip], #1
	ldrb r0, [ip], #1
	subs r2, r2, #1
	strb r1, [r3], #1
	strb r0, [r3], #1
	bne _02207264
	ldrb r1, [ip]
	ldr r0, _02207328 ; =0x022117F0
	strb r1, [r3]
	bl FUN_021DD9DC
	cmp r0, #0
	beq _02207318
	ldr r0, _02207328 ; =0x022117F0
	ldr r1, [r0]
	cmp r1, #0x63
	bgt _022072B8
	cmp r1, #0xa
	blt _022072B8
	add r0, sp, #0
	bl FUN_02208558
	b _022072CC
_022072B8:
	cmp r1, #0
	addgt r0, r1, #0x30
	movgt r1, #0x30
	strgtb r1, [sp]
	strgtb r0, [sp, #1]
_022072CC:
	ldr r0, _02207328 ; =0x022117F0
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _022072FC
	cmp r1, #0xa
	bge _022072FC
	add r3, r1, #0x30
	ldr r1, _0220732C ; =0x022117F8
	add r0, sp, #4
	mov r2, #9
	strb r3, [sp, #3]
	bl FUN_0220839C
_022072FC:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl FUN_02206C98
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02207318:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207324: .word 0x0220BD2C
_02207328: .word 0x022117F0
_0220732C: .word 0x022117F8

	arm_func_start FUN_02207330
FUN_02207330: ; 0x02207330
	ldr ip, _02207338 ; =FUN_0220B55C
	bx ip
	.align 2, 0
_02207338: .word FUN_0220B55C

	arm_func_start FUN_0220733C
FUN_0220733C: ; 0x0220733C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r3, [r8, #0xac]
	mov r7, r1
	cmp r2, r3
	ldrlo r0, _022074D8 ; =0x02211760
	movlo r1, #7
	strlo r1, [r0]
	addlo sp, sp, #0x10
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_022083D4
	mov r5, r0
	cmp r5, #0x20
	ldrgt r0, _022074D8 ; =0x02211760
	movgt r1, #7
	strgt r1, [r0]
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	movle r6, #0
	ble _022073A4
	bl FUN_02206DA4
	mov r6, r0
_022073A4:
	ldr r1, _022074DC ; =0x02211750
	add r0, r6, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r4, r0
	ldreq r0, _022074D8 ; =0x02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr ip, [r8, #0xac]
	ldr r2, _022074E0 ; =0x0220BD54
	add r0, sp, #4
	add r1, sp, #8
	mov r3, r7
	str ip, [sp]
	bl FUN_0220788C
	cmp r0, #0
	bne _02207414
	ldr r1, _022074E4 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207414:
	cmp r6, #0
	ble _0220744C
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_02206C98
	mov r1, #0
	strb r1, [r4, r0]
	ldr r0, [sp, #8]
	ldr r1, _022074E8 ; =0x0220F9CC
	mov r2, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _022074A4
_0220744C:
	ldr r0, [sp, #4]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
	ldr r1, [r8, #0xac]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_0220781C
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _022074E4 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022074A4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_02207BB4
	ldr r1, _022074E4 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r0, _022074D8 ; =0x02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_022074D8: .word 0x02211760
_022074DC: .word 0x02211750
_022074E0: .word 0x0220BD54
_022074E4: .word 0x02211764
_022074E8: .word 0x0220F9CC

	arm_func_start FUN_022074EC
FUN_022074EC: ; 0x022074EC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r7, r2
	mov r4, r1
	ldr r1, _02207790 ; =0x02211750
	mov r6, r7, lsl #8
	cmp r6, #0x80
	ldr r2, [r1]
	movlt r6, #0x80
	mov r8, r0
	mov r0, r6
	mov r1, #4
	blx r2
	movs r5, r0
	ldreq r0, _02207794 ; =0x02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r0, sp, #0xc
	mov r1, r4
	bl FUN_02208558
	mov sb, r0
	bl FUN_02206DA4
	ldr r1, _02207790 ; =0x02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r4, r0
	bne _02207594
	ldr r1, _02207798 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207794 ; =0x02211760
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207594:
	add r1, sp, #0xc
	mov r2, sb
	bl FUN_02206C98
	mov r1, #0
	strb r1, [r4, r0]
	add r0, sp, #0xc
	mov r1, r7
	bl FUN_02208558
	mov sb, r0
	bl FUN_02206DA4
	ldr r1, _02207790 ; =0x02211750
	add r0, r0, #1
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs sl, r0
	bne _02207610
	ldr r1, _02207798 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207794 ; =0x02211760
	mov r1, #1
	str r1, [r0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207610:
	add r1, sp, #0xc
	mov r2, sb
	bl FUN_02206C98
	mov r1, #0
	strb r1, [sl, r0]
	ldr r2, _0220779C ; =0x0220BD3C
	add r0, sp, #4
	add r1, sp, #8
	mov r3, r5
	str r6, [sp]
	bl FUN_0220788C
	cmp r0, #0
	bne _02207680
	ldr r1, _02207798 ; =0x02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02207680:
	ldr r0, [sp, #8]
	ldr r1, _022077A0 ; =0x0220F9D8
	mov r2, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _0220773C
	ldr r0, [sp, #8]
	ldr r1, _022077A4 ; =0x0220F9E0
	mov r2, sl
	bl FUN_022086F0
	cmp r0, #0
	beq _0220773C
	ldr r0, [sp, #4]
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r8, [r0, #0x10]
	ldr r0, [sp, #4]
	str r4, [r0, #0x1c]
	ldr r0, [sp, #4]
	str sl, [r0, #0x20]
	ldr r0, [sp, #4]
	str r7, [r0, #0x14]
	ldr r0, [sp, #4]
	str r5, [r0, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_0220781C
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _02207798 ; =0x02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0220773C:
	ldr r1, _02207798 ; =0x02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldr r1, _02207798 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_02207BB4
	ldr r0, _02207794 ; =0x02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_02207790: .word 0x02211750
_02207794: .word 0x02211760
_02207798: .word 0x02211764
_0220779C: .word 0x0220BD3C
_022077A0: .word 0x0220F9D8
_022077A4: .word 0x0220F9E0

	arm_func_start FUN_022077A8
FUN_022077A8: ; 0x022077A8
	stmdb sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _02207814 ; =0x0220BD48
	mov r4, r0
	mov ip, #0x80
	ldr r3, _02207818 ; =0x02211850
	add r0, sp, #4
	add r1, sp, #8
	str ip, [sp]
	bl FUN_0220788C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	str r4, [r0, #0x10]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl FUN_0220781C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207814: .word 0x0220BD48
_02207818: .word 0x02211850

	arm_func_start FUN_0220781C
FUN_0220781C: ; 0x0220781C
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	bl FUN_02208364
	mov r0, r4
	bl FUN_022092A0
	str r0, [r5]
	ldr r1, [r5]
	ldr r0, _02207884 ; =0x02211768
	str r1, [r0]
	bl FUN_02208350
	ldr r0, [r5]
	cmp r0, #0
	addge sp, sp, #4
	movge r0, #1
	ldmgeia sp!, {r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_02207BB4
	ldr r0, _02207888 ; =0x02211760
	mov r1, #3
	str r1, [r0]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02207884: .word 0x02211768
_02207888: .word 0x02211760

	arm_func_start FUN_0220788C
FUN_0220788C: ; 0x0220788C
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	ldr r0, _02207B40 ; =0x0221182C
	ldr r1, _02207B44 ; =0x02211838
	mov r6, r2
	mov r4, r3
	bl FUN_022071C0
	cmp r0, #0
	ldreq r0, _02207B48 ; =0x02211760
	moveq r1, #8
	streq r1, [r0]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _02207B4C ; =0x02211750
	mov r0, #0x24
	ldr r2, [r1]
	mov r1, #4
	blx r2
	movs r5, r0
	ldreq r0, _02207B48 ; =0x02211760
	moveq r1, #1
	streq r1, [r0]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02207B50 ; =0x0221175C
	mov r1, #0
	ldr r0, [r0]
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	bl FUN_022082D4
	cmp r0, #0
	bne _02207944
	ldr r1, _02207B54 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207B48 ; =0x02211760
	mov r1, #2
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207944:
	ldr r1, _02207B58 ; =FUN_02207BE0
	ldr r0, _02207B5C ; =0x02211754
	str r1, [sp]
	str r5, [sp, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	mov r2, r4
	mov r1, #1
	bl FUN_02209438
	movs r4, r0
	bne _0220799C
	bl FUN_022082A0
	ldr r1, _02207B54 ; =0x02211764
	mov r0, r5
	ldr r1, [r1]
	blx r1
	ldr r0, _02207B48 ; =0x02211760
	mov r1, #3
	str r1, [r0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0220799C:
	ldr r1, _02207B60 ; =0x0220F9C8
	str r5, [r8]
	mov r2, #1
	str r4, [r7]
	bl FUN_022086D4
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B64 ; =0x0220F9E4
	ldr r2, _02207B68 ; =0x022117CC
	mov r0, r4
	bl FUN_02208764
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B6C ; =0x0220F9F0
	ldr r2, _02207B70 ; =0x0221176C
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B74 ; =0x0220F9F8
	ldr r2, _02207B40 ; =0x0221182C
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B78 ; =0x0220FA04
	ldr r2, _02207B7C ; =0x022117B0
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r0, _02207B80 ; =0x0221174C
	ldr r1, _02207B84 ; =0x0220FA0C
	ldr r2, [r0]
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B88 ; =0x0220FA14
	ldr r2, _02207B44 ; =0x02211838
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B8C ; =0x0220FA1C
	ldr r2, _02207B90 ; =0x02211784
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r1, _02207B94 ; =0x0220FA24
	mov r0, r4
	mov r2, r6
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
	ldr r0, _02207B98 ; =0x02211778
	ldr r2, [r0]
	cmp r2, #0
	beq _02207AA0
	ldr r1, _02207B9C ; =0x0220FA2C
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AA0:
	ldr r0, _02207B98 ; =0x02211778
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02207AC4
	ldr r1, _02207BA0 ; =0x0220FA34
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AC4:
	ldr r0, _02207B98 ; =0x02211778
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02207AE8
	ldr r1, _02207BA4 ; =0x0220FA3C
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
_02207AE8:
	ldr r0, _02207BA8 ; =0x02211748
	ldr r0, [r0]
	cmp r0, #0
	beq _02207B10
	ldr r1, _02207BAC ; =0x0220FA44
	ldr r2, _02207BB0 ; =0x02211798
	mov r0, r4
	bl FUN_022086F0
	cmp r0, #0
	beq _02207B1C
_02207B10:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207B1C:
	mov r0, r5
	mov r1, r4
	bl FUN_02207BB4
	ldr r0, _02207B48 ; =0x02211760
	mov r1, #1
	str r1, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	.align 2, 0
_02207B40: .word 0x0221182C
_02207B44: .word 0x02211838
_02207B48: .word 0x02211760
_02207B4C: .word 0x02211750
_02207B50: .word 0x0221175C
_02207B54: .word 0x02211764
_02207B58: .word FUN_02207BE0
_02207B5C: .word 0x02211754
_02207B60: .word 0x0220F9C8
_02207B64: .word 0x0220F9E4
_02207B68: .word 0x022117CC
_02207B6C: .word 0x0220F9F0
_02207B70: .word 0x0221176C
_02207B74: .word 0x0220F9F8
_02207B78: .word 0x0220FA04
_02207B7C: .word 0x022117B0
_02207B80: .word 0x0221174C
_02207B84: .word 0x0220FA0C
_02207B88: .word 0x0220FA14
_02207B8C: .word 0x0220FA1C
_02207B90: .word 0x02211784
_02207B94: .word 0x0220FA24
_02207B98: .word 0x02211778
_02207B9C: .word 0x0220FA2C
_02207BA0: .word 0x0220FA34
_02207BA4: .word 0x0220FA3C
_02207BA8: .word 0x02211748
_02207BAC: .word 0x0220FA44
_02207BB0: .word 0x02211798

	arm_func_start FUN_02207BB4
FUN_02207BB4: ; 0x02207BB4
	stmdb sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_02209410
	bl FUN_022082A0
	ldr r1, _02207BDC ; =0x02211764
	mov r0, r4
	ldr r1, [r1]
	blx r1
	ldmia sp!, {r4, pc}
	.align 2, 0
_02207BDC: .word 0x02211764

	arm_func_start FUN_02207BE0
FUN_02207BE0: ; 0x02207BE0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r2
	str r1, [sp]
	ldr r1, [sl, #8]
	cmp r0, #0
	str r1, [sp, #4]
	ldr r1, [sl, #0xc]
	ldr fp, [sl, #4]
	str r1, [sp, #8]
	mvn r1, #0
	str r1, [sp, #0xc]
	beq _02207C28
	cmp r0, #6
	beq _02207E10
	cmp r0, #8
	beq _02207E08
	b _02207E18
_02207C28:
	ldr r1, _02207F04 ; =0x0220FA4C
	ldr r0, [sp]
	add r2, sp, #0x10
	bl FUN_02209A98
	cmp r0, #3
	movne r4, #3
	bne _02207E1C
	ldr r0, [sp, #0x10]
	mov r1, #3
	bl FUN_02208564
	ldr r1, _02207F08 ; =0x0000012E
	cmp r0, r1
	bne _02207D80
	ldr r0, [sp]
	add r1, sp, #0x14
	mov sb, #0
	bl FUN_02209A68
	movs r8, r0
	movmi r4, #3
	bmi _02207E1C
	cmp r8, #0
	mov r7, sb
	ble _02207D6C
	mov r4, r7
	mov r6, #8
	mov r5, #1
_02207C90:
	ldr r1, [sp, #0x14]
	mov r3, r7
	add r2, r1, r7
	b _02207CA8
_02207CA0:
	add r2, r2, #1
	add r7, r7, #1
_02207CA8:
	ldrsb r0, [r2]
	cmp r0, #0x3d
	beq _02207CBC
	cmp r7, r8
	blt _02207CA0
_02207CBC:
	sub r0, r7, r3
	cmp r0, #8
	add r7, r7, #1
	bne _02207CE8
	add r0, r1, r3
	ldr r1, _02207F0C ; =0x0220FA5C
	mov r2, r6
	bl FUN_022083C8
	cmp r0, #0
	moveq sb, r5
	movne sb, r4
_02207CE8:
	ldr r3, [sp, #0x14]
	mov r1, r7
	add r2, r3, r7
	b _02207D00
_02207CF8:
	add r2, r2, #1
	add r7, r7, #1
_02207D00:
	ldrsb r0, [r2]
	cmp r0, #0x26
	beq _02207D24
	cmp r0, #0xd
	beq _02207D24
	cmp r0, #0
	beq _02207D24
	cmp r7, r8
	blt _02207CF8
_02207D24:
	cmp sb, #0
	sub r2, r7, r1
	add r7, r7, #1
	beq _02207D64
	cmp r2, #4
	bne _02207D6C
	add r0, sp, #0x18
	add r1, r3, r1
	bl FUN_02206B60
	mov r1, r0
	add r0, sp, #0x18
	mov r2, #0
	strb r2, [r0, r1]
	bl FUN_02208564
	str r0, [sp, #0xc]
	b _02207D6C
_02207D64:
	cmp r7, r8
	blt _02207C90
_02207D6C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movlt r4, #3
	movge r4, #5
	b _02207E1C
_02207D80:
	cmp r0, #0
	ble _02207D90
	cmp r0, #0xc8
	beq _02207D98
_02207D90:
	mov r4, #3
	b _02207E1C
_02207D98:
	cmp fp, #1
	beq _02207DB4
	cmp fp, #2
	beq _02207DD0
	cmp fp, #3
	beq _02207DEC
	b _02207E1C
_02207DB4:
	ldr r0, [sp]
	mov r1, sl
	bl FUN_02207F1C
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207DD0:
	ldr r0, [sp]
	mov r1, sl
	bl FUN_02207F9C
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207DEC:
	ldr r0, [sp]
	mov r1, sl
	bl FUN_02207F70
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02207E1C
_02207E08:
	mov r4, #6
	b _02207E1C
_02207E10:
	mov r4, #4
	b _02207E1C
_02207E18:
	mov r4, #3
_02207E1C:
	cmp fp, #1
	beq _02207E8C
	cmp fp, #2
	beq _02207E38
	cmp fp, #3
	beq _02207E7C
	b _02207E8C
_02207E38:
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _02207E50
	ldr r1, _02207F10 ; =0x02211764
	ldr r1, [r1]
	blx r1
_02207E50:
	ldr r0, [sl, #0x1c]
	cmp r0, #0
	beq _02207E68
	ldr r1, _02207F10 ; =0x02211764
	ldr r1, [r1]
	blx r1
_02207E68:
	ldr r1, _02207F10 ; =0x02211764
	ldr r0, [sl, #0x18]
	ldr r1, [r1]
	blx r1
	b _02207E8C
_02207E7C:
	ldr r1, _02207F10 ; =0x02211764
	ldr r0, [sl, #0x10]
	ldr r1, [r1]
	blx r1
_02207E8C:
	bl FUN_02208364
	ldr r0, _02207F14 ; =0x02211768
	mvn r1, #0
	str r1, [r0]
	bl FUN_02208350
	ldr r0, [sp]
	bl FUN_02209CC4
	ldr r1, _02207F10 ; =0x02211764
	mov r0, sl
	ldr r1, [r1]
	blx r1
	bl FUN_022082A0
	cmp r4, #0
	ldrne r0, _02207F18 ; =0x02211760
	strne r4, [r0]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02207EE8
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #4]
	mov r0, fp
	mov r1, r4
	blx r3
_02207EE8:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl FUN_0220828C
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02207F04: .word 0x0220FA4C
_02207F08: .word 0x0000012E
_02207F0C: .word 0x0220FA5C
_02207F10: .word 0x02211764
_02207F14: .word 0x02211768
_02207F18: .word 0x02211760

	arm_func_start FUN_02207F1C
FUN_02207F1C: ; 0x02207F1C
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #0
	bl FUN_02209A68
	movs r1, r0
	bmi _02207F64
	ldr r0, [sp]
	bl FUN_02208564
	ldr r1, [r4, #0x10]
	add sp, sp, #8
	str r0, [r1]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r4, pc}
_02207F64:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02207F70
FUN_02207F70: ; 0x02207F70
	stmdb sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #0
	bl FUN_02209A68
	ldr r1, [r4, #0x14]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}

	arm_func_start FUN_02207F9C
FUN_02207F9C: ; 0x02207F9C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r2, [r1, #0x14]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
	str r2, [sp, #4]
	bl FUN_022083B4
	ldr r1, _02208224 ; =0x0220FA68
	add r2, sp, #0x1c
	mov r0, r4
	bl FUN_02209A98
	cmp r0, #0
	ble _02208008
	ldr r1, [sp, #0x1c]
	ldrsb r0, [r1]
	cmp r0, #0x30
	bne _02208008
	ldrsb r0, [r1, #1]
	cmp r0, #0
	addeq sp, sp, #0x24
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02208008:
	add r1, sp, #0x18
	mov r0, r4
	bl FUN_02209A68
	mov sb, r0
	cmp sb, #0
	ble _02208218
	ldr r0, [sp]
	mov r8, #0
	ldr r0, [r0, #0x14]
	str r8, [sp, #8]
	cmp r0, #0
	ble _02208218
	str r8, [sp, #0xc]
	mov fp, r8
	str r8, [sp, #0x14]
	str r8, [sp, #0x10]
	mov sl, #1
_0220804C:
	cmp r8, sb
	movge r0, #1
	strge r0, [sp, #4]
	bge _02208218
	ldr r0, [sp]
	ldr r7, [sp, #0x10]
	ldr r2, [r0, #0x10]
	mov r0, r7
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	mov r6, r8
	mov r1, r7
	add r5, r2, r0
	cmp r8, sb
	bge _022081F0
_02208088:
	ldr r0, [sp, #0x18]
	ldrsb r2, [r0, r8]
	cmp r2, #0xd
	moveq r1, sl
	beq _022081E4
	cmp r1, #0
	beq _022080F0
	cmp r2, #0xa
	bne _022081E0
	cmp r7, #5
	bne _022080D8
	sub r1, r8, #1
	sub r1, r1, r6
	cmp r1, #8
	bgt _02208218
	add r0, r0, r6
	bl FUN_02208564
	cmp r0, #0
	blt _02208218
	str r0, [r5, #0xac]
_022080D8:
	cmp r7, #5
	ldrlt r0, [sp, #0x14]
	strge sl, [sp, #4]
	add r8, r8, #1
	strlt r0, [sp, #4]
	b _022081F0
_022080F0:
	cmp r2, #9
	bne _022081E0
	cmp r7, #5
	addls pc, pc, r7, lsl #2
	b _022081D8
_02208104: ; jump table
	b _0220811C ; case 0
	b _02208138 ; case 1
	b _02208164 ; case 2
	b _02208180 ; case 3
	b _0220819C ; case 4
	b _022081B8 ; case 5
_0220811C:
	sub r2, r8, r6
	cmp r2, #0x20
	bhs _02208218
	add r1, r0, r6
	mov r0, r5
	bl FUN_0220839C
	b _022081D8
_02208138:
	sub r4, r8, r6
	mov r0, r4
	bl FUN_02206DC0
	cmp r0, #0x64
	bhs _02208218
	mov r2, r4
	add r0, r5, #0x22
	ldr r1, [sp, #0x18]
	add r1, r1, r6
	bl FUN_02206B60
	b _022081D8
_02208164:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x88
	bl FUN_0220839C
	b _022081D8
_02208180:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x93
	bl FUN_0220839C
	b _022081D8
_0220819C:
	sub r2, r8, r6
	cmp r2, #0xa
	bhs _02208218
	add r1, r0, r6
	add r0, r5, #0x9e
	bl FUN_0220839C
	b _022081D8
_022081B8:
	sub r1, r8, r6
	cmp r1, #8
	bgt _02208218
	add r0, r0, r6
	bl FUN_02208564
	cmp r0, #0
	blt _02208218
	str r0, [r5, #0xac]
_022081D8:
	add r7, r7, #1
	add r6, r8, #1
_022081E0:
	mov r1, fp
_022081E4:
	add r8, r8, #1
	cmp r8, sb
	blt _02208088
_022081F0:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	ldr r0, [sp, #0xc]
	add r0, r0, #0xb0
	str r0, [sp, #0xc]
	blt _0220804C
_02208218:
	ldr r0, [sp, #4]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208224: .word 0x0220FA68

	arm_func_start FUN_02208228
FUN_02208228: ; 0x02208228
	stmdb sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0
	bl OS_GetMacAddress
	mov r8, #0
	add r7, sp, #0
	mov r6, r8
	add r5, sp, #6
	mov r4, #2
_02208250:
	ldrb r1, [r7]
	mov r2, r4
	add r0, r5, r6
	bl FUN_022083E0
	add r8, r8, #1
	cmp r8, #6
	add r7, r7, #1
	add r6, r6, #2
	blt _02208250
	add r1, sp, #6
	mov r0, sb
	mov r2, #0xc
	bl FUN_02206C98
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}

	arm_func_start FUN_0220828C
FUN_0220828C: ; 0x0220828C
	ldr ip, _0220829C ; =0x020CBDC4
	mov r1, #0
	mov r2, r1
	bx ip
	.align 2, 0
_0220829C: .word 0x020CBDC4

	arm_func_start FUN_022082A0
FUN_022082A0: ; 0x022082A0
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _022082CC ; =0x022118D4
	bl OS_LockMutex
	ldr r1, _022082D0 ; =0x022118D0
	mov r2, #0
	ldr r0, _022082CC ; =0x022118D4
	str r2, [r1]
	bl OS_UnlockMutex
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_022082CC: .word 0x022118D4
_022082D0: .word 0x022118D0

	arm_func_start FUN_022082D4
FUN_022082D4: ; 0x022082D4
	stmdb sp!, {r4, lr}
	ldr r0, _02208314 ; =0x022118D4
	bl OS_LockMutex
	ldr r0, _02208318 ; =0x022118D0
	ldr r0, [r0]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	ldrne r0, _02208318 ; =0x022118D0
	movne r1, #1
	strne r1, [r0]
	ldr r0, _02208314 ; =0x022118D4
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_02208314: .word 0x022118D4
_02208318: .word 0x022118D0

	arm_func_start FUN_0220831C
FUN_0220831C: ; 0x0220831C
	bx lr

	arm_func_start FUN_02208320
FUN_02208320: ; 0x02208320
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208348 ; =0x022118D4
	bl OS_InitMutex
	ldr r0, _0220834C ; =0x022118D0
	mov r1, #0
	str r1, [r0]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208348: .word 0x022118D4
_0220834C: .word 0x022118D0

	arm_func_start FUN_02208350
FUN_02208350: ; 0x02208350
	ldr ip, _0220835C ; =0x020CBFA0
	ldr r0, _02208360 ; =0x022118EC
	bx ip
	.align 2, 0
_0220835C: .word 0x020CBFA0
_02208360: .word 0x022118EC

	arm_func_start FUN_02208364
FUN_02208364: ; 0x02208364
	ldr ip, _02208370 ; =0x020CC010
	ldr r0, _02208374 ; =0x022118EC
	bx ip
	.align 2, 0
_02208370: .word 0x020CC010
_02208374: .word 0x022118EC

	arm_func_start FUN_02208378
FUN_02208378: ; 0x02208378
	bx lr

	arm_func_start FUN_0220837C
FUN_0220837C: ; 0x0220837C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208398 ; =0x022118EC
	bl OS_InitMutex
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208398: .word 0x022118EC

	arm_func_start FUN_0220839C
FUN_0220839C: ; 0x0220839C
	ldr ip, _022083B0 ; =0x020CE3E0
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	.align 2, 0
_022083B0: .word 0x020CE3E0

	arm_func_start FUN_022083B4
FUN_022083B4: ; 0x022083B4
	ldr ip, _022083C4 ; =0x020CE34C
	mov r2, r1
	mov r1, #0
	bx ip
	.align 2, 0
_022083C4: .word 0x020CE34C

	arm_func_start FUN_022083C8
FUN_022083C8: ; 0x022083C8
	ldr ip, _022083D0 ; =0x020DE03C
	bx ip
	.align 2, 0
_022083D0: .word 0x020DE03C

	arm_func_start FUN_022083D4
FUN_022083D4: ; 0x022083D4
	ldr ip, _022083DC ; =0x020DE0BC
	bx ip
	.align 2, 0
_022083DC: .word 0x020DE0BC

	arm_func_start FUN_022083E0
FUN_022083E0: ; 0x022083E0
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r2, #8
	addgt sp, sp, #4
	mov ip, #0
	mvngt r0, #0
	ldmgtia sp!, {pc}
	cmp r2, #1
	mov lr, #1
	blt _02208440
_02208408:
	sub r3, r2, lr
	mov r3, r3, lsl #2
	mov r3, r1,lsr  r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	strlob r3, [r0, ip]
	addlo ip, ip, #1
	addhs r3, r3, #0x57
	strhsb r3, [r0, ip]
	add lr, lr, #1
	addhs ip, ip, #1
	cmp lr, r2
	ble _02208408
_02208440:
	mov r0, ip
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_0220844C
FUN_0220844C: ; 0x0220844C
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, _02208554 ; =0x0220BD64
	mov r6, #0
	ldr r5, [r4]
	mov r7, #0xa
	umull r4, sl, r5, r7
	mla sl, r5, r6, sl
	ldr r5, _02208554 ; =0x0220BD64
	mov sb, r1
	ldr r5, [r5, #4]
	mov r8, r2
	mla sl, r5, r7, sl
	cmp r8, sl
	mov sl, r0
	cmpeq sb, r4
	str r3, [sp]
	addhs sp, sp, #0xc
	mvnhs r0, #0
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, r6
	mov r0, r6
	mov fp, #0x30
	mov r1, #1
	str r1, [sp, #4]
_022084B0:
	ldr r1, _02208554 ; =0x0220BD64
	add r1, r1, r7, lsl #3
	ldr r4, [r1, #4]
	ldr r1, _02208554 ; =0x0220BD64
	cmp r8, r4
	ldr r5, [r1, r7, lsl #3]
	cmpeq sb, r5
	blo _02208510
	mov r0, sb
	mov r1, r8
	mov r2, r5
	mov r3, r4
	bl _ll_udiv
	umull r2, r1, r0, r5
	mla r1, r0, r4, r1
	add r0, r0, #0x30
	strb r0, [sl, r6]
	mov r0, #0
	mla r1, r0, r5, r1
	subs sb, sb, r2
	ldr r0, [sp, #4]
	sbc r8, r8, r1
	add r6, r6, #1
	b _02208530
_02208510:
	cmp r0, #0
	bne _02208528
	ldr r1, [sp]
	rsb r2, r7, #0x11
	cmp r2, r1
	bgt _02208530
_02208528:
	strb fp, [sl, r6]
	add r6, r6, #1
_02208530:
	add r7, r7, #1
	cmp r7, #0x10
	blt _022084B0
	mov r0, #0x30
	adds r0, sb, r0
	strb r0, [sl, r6]
	add r0, r6, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208554: .word 0x0220BD64

	arm_func_start FUN_02208558
FUN_02208558: ; 0x02208558
	ldr ip, _02208560 ; =FUN_0220B788
	bx ip
	.align 2, 0
_02208560: .word FUN_0220B788

	arm_func_start FUN_02208564
FUN_02208564: ; 0x02208564
	ldr ip, _0220856C ; =FUN_0220B844
	bx ip
	.align 2, 0
_0220856C: .word FUN_0220B844

	arm_func_start FUN_02208570
FUN_02208570: ; 0x02208570
	stmdb sp!, {r4, lr}
	mov r4, r0
	bl FUN_022091BC
	bl FUN_02208C24
	ldr r0, _022085AC ; =0x0221191C
	ldr r1, _022085B0 ; =0x02211904
	ldr r0, [r0]
	ldr r1, [r1]
	blx r1
	bl FUN_02208CF4
	ldr r0, _022085B4 ; =0x02211920
	mov r1, #0
	str r1, [r0]
	blx r4
	ldmia sp!, {r4, pc}
	.align 2, 0
_022085AC: .word 0x0221191C
_022085B0: .word 0x02211904
_022085B4: .word 0x02211920

	arm_func_start FUN_022085B8
FUN_022085B8: ; 0x022085B8
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	ldr r3, _022086B0 ; =0x02211908
	mov r7, #0
	ldr r6, _022086B4 ; =0x02211924
	ldr r5, _022086B8 ; =0x02211904
	ldr lr, _022086BC ; =0x02211910
	ldr ip, _022086C0 ; =0x02211914
	str r7, [r3]
	ldr r4, _022086C4 ; =0x0221190C
	ldr r3, _022086C8 ; =0x02211918
	str r7, [r4]
	mov r4, r2
	str r0, [r6]
	str r1, [r5]
	str r7, [lr]
	str r7, [ip]
	str r7, [r3]
	bl FUN_02208CF8
	cmp r0, #0
	ldreq r0, _022086B0 ; =0x02211908
	moveq r1, #9
	streq r1, [r0]
	addeq sp, sp, #4
	moveq r0, r7
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	ldr r2, [r1]
	mov r0, #0x2000
	mov r1, #8
	blx r2
	movs r1, r0
	ldr r0, _022086CC ; =0x0221191C
	str r1, [r0]
	bne _02208660
	ldr r0, _022086B0 ; =0x02211908
	mov r1, #1
	str r1, [r0]
	bl FUN_02208CF4
	add sp, sp, #4
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, pc}
_02208660:
	mov r0, r4
	bl FUN_02208C54
	cmp r0, #0
	ldrne r1, _022086D0 ; =0x02211920
	movne r0, #1
	strne r0, [r1]
	addne sp, sp, #4
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _022086CC ; =0x0221191C
	mov r1, r5
	ldr r2, [r1]
	ldr r0, [r0]
	ldr r1, _022086B0 ; =0x02211908
	mov r3, #9
	str r3, [r1]
	blx r2
	bl FUN_02208CF4
	mov r0, r7
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_022086B0: .word 0x02211908
_022086B4: .word 0x02211924
_022086B8: .word 0x02211904
_022086BC: .word 0x02211910
_022086C0: .word 0x02211914
_022086C4: .word 0x0221190C
_022086C8: .word 0x02211918
_022086CC: .word 0x0221191C
_022086D0: .word 0x02211920

	arm_func_start FUN_022086D4
FUN_022086D4: ; 0x022086D4
	ldr r3, [r0]
	cmp r3, #0
	movne r0, #0
	streq r1, [r0, #0x1c]
	streq r2, [r0, #0x18]
	moveq r0, #1
	bx lr

	arm_func_start FUN_022086F0
FUN_022086F0: ; 0x022086F0
	stmdb sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, #0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_02209FBC
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl FUN_02208794
	cmp r0, #0
	beq _0220875C
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x38
	mov r3, #0x18
	bl FUN_022088CC
	movs r5, r0
	ldrne r0, [r8, #0x38]
	ldrne r0, [r0]
	strne r4, [r0, #0x10]
_0220875C:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}

	arm_func_start FUN_02208764
FUN_02208764: ; 0x02208764
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r3, [r0]
	cmp r3, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {pc}
	add r0, r0, #0x34
	mov r3, #0x18
	bl FUN_022088CC
	add sp, sp, #4
	ldmfd sp!, {pc}

	arm_func_start FUN_02208794
FUN_02208794: ; 0x02208794
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	str r0, [sp]
	mov sb, r2
	mov sl, r1
	ldr r2, [sp]
	mov r0, sl
	mov r1, sb
	add r2, r2, #0x46
	mov r3, #0x12
	bl FUN_0220B604
	cmp r0, #0
	addlt sp, sp, #4
	movlt r0, #1
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r7, _02208850 ; =0x0220BDF7
	mov fp, #0x13
	ldr r0, [sp]
	add r5, r0, #0x46
	mov r4, #0x12
_022087E4:
	ldr r0, [sp]
	add r6, r0, fp
	ldrsb r8, [r6, #0x44]
_022087F0:
	and r0, r8, #0xff
	bl FUN_02208854
	mov r8, r0
	strb r8, [r6, #0x44]
	ldrsb r0, [r7]
	cmp r8, r0
	beq _02208834
	mov r0, sl
	mov r1, sb
	mov r2, r5
	mov r3, r4
	bl FUN_0220B604
	cmp r0, #0
	bge _022087F0
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02208834:
	sub fp, fp, #1
	cmp fp, #2
	sub r7, r7, #1
	bge _022087E4
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	.align 2, 0
_02208850: .word 0x0220BDF7

	arm_func_start FUN_02208854
FUN_02208854: ; 0x02208854
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _0220887C
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _0220887C
	cmp r0, #0x3a
	moveq r0, #0x41
_0220887C:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr

	arm_func_start FUN_02208888
FUN_02208888: ; 0x02208888
	ldr r3, [r0]
	cmp r3, #0
	beq _022088C4
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _022088C4
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
_022088C4:
	mov r0, r3
	bx lr

	arm_func_start FUN_022088CC
FUN_022088CC: ; 0x022088CC
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, [sb]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp sl, #0
	mov r5, #0
	beq _02208948
	ldr r1, [sl, #8]
	mov r0, r8
	mov r4, sl
	bl FUN_0220B704
	cmp r0, #0
	beq _02208944
	ldr r4, [sl, #4]
	ldr r0, [sb]
	cmp r4, r0
	beq _02208948
_02208918:
	ldr r1, [r4, #8]
	mov r0, r8
	bl FUN_0220B704
	cmp r0, #0
	moveq r5, #1
	beq _02208948
	ldr r4, [r4, #4]
	ldr r0, [sb]
	cmp r4, r0
	bne _02208918
	b _02208948
_02208944:
	mov r5, #1
_02208948:
	cmp r5, #0
	strne r7, [r4, #0xc]
	bne _022089D0
	ldr r1, _022089D8 ; =0x02211924
	mov r0, r6
	ldr r2, [r1]
	mov r1, #4
	blx r2
	cmp r0, #0
	ldreq r0, _022089DC ; =0x02211908
	moveq r1, #1
	streq r1, [r0]
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	str r8, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sb]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [sb]
	beq _022089D0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [sb]
	str r1, [r0, #4]
	ldr r1, [sb]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [sb]
	str r0, [r1]
_022089D0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	.align 2, 0
_022089D8: .word 0x02211924
_022089DC: .word 0x02211908

	arm_func_start FUN_022089E0
FUN_022089E0: ; 0x022089E0
	ldr ip, _022089EC ; =FUN_02208888
	ldr r0, _022089F0 ; =0x02211910
	bx ip
	.align 2, 0
_022089EC: .word FUN_02208888
_022089F0: .word 0x02211910

	arm_func_start FUN_022089F4
FUN_022089F4: ; 0x022089F4
	stmdb sp!, {r4, lr}
	ldr r4, _02208A20 ; =0x02211910
	ldr r0, [r4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_02208A08:
	ldr r0, [r0, #8]
	bl FUN_02208A24
	ldr r0, [r4]
	cmp r0, #0
	bne _02208A08
	ldmia sp!, {r4, pc}
	.align 2, 0
_02208A20: .word 0x02211910

	arm_func_start FUN_02208A24
FUN_02208A24: ; 0x02208A24
	stmdb sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, #0
	bl FUN_02208AD0
	movs r4, r0
	beq _02208ABC
	ldr r0, _02208AC8 ; =0x02211910
	ldr r2, [r0]
	ldr r1, [r2]
	cmp r2, r1
	beq _02208A7C
	ldr r2, [r4, #4]
	ldr r1, [r4]
	str r2, [r1, #4]
	ldr r2, [r4]
	ldr r1, [r4, #4]
	str r2, [r1]
	ldr r1, [r0]
	cmp r1, r4
	ldreq r1, [r4, #4]
	streq r1, [r0]
	b _02208A84
_02208A7C:
	mov r1, r5
	str r1, [r0]
_02208A84:
	ldr r0, [r4, #0xc]
	ldr r7, [r0, #0x3c]
	ldr r6, [r0, #0x30]
	ldr r5, [r0, #0x2c]
	bl FUN_02209338
	ldr r1, _02208ACC ; =0x02211904
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r1, r6
	mov r2, r5
	mov r0, #8
	blx r7
	mov r5, #1
_02208ABC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, pc}
	.align 2, 0
_02208AC8: .word 0x02211910
_02208ACC: .word 0x02211904

	arm_func_start FUN_02208AD0
FUN_02208AD0: ; 0x02208AD0
	ldr r1, _02208B24 ; =0x02211910
	mov ip, #0
	ldr r3, [r1]
	cmp r3, #0
	beq _02208B1C
	ldr r1, [r3, #8]
	cmp r1, r0
	moveq ip, r3
	beq _02208B1C
	ldr r2, [r3, #4]
	cmp r2, r3
	beq _02208B1C
_02208B00:
	ldr r1, [r2, #8]
	cmp r1, r0
	moveq ip, r2
	beq _02208B1C
	ldr r2, [r2, #4]
	cmp r2, r3
	bne _02208B00
_02208B1C:
	mov r0, ip
	bx lr
	.align 2, 0
_02208B24: .word 0x02211910

	arm_func_start FUN_02208B28
FUN_02208B28: ; 0x02208B28
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #4
	ldr r1, _02208BD8 ; =0x02211924
	mov r4, r0
	ldr r2, [r1]
	mov r0, #0x14
	mov r1, #4
	mvn r5, #0
	blx r2
	cmp r0, #0
	beq _02208BCC
	ldr r1, _02208BDC ; =0x02211910
	ldr r2, [r1]
	cmp r2, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r1]
	beq _02208B94
	ldr r2, [r2]
	str r2, [r0]
	ldr r2, [r1]
	str r2, [r0, #4]
	ldr r2, [r1]
	ldr r2, [r2]
	str r0, [r2, #4]
	ldr r1, [r1]
	str r0, [r1]
_02208B94:
	ldr r1, _02208BE0 ; =0x0221190C
	mvn r2, #0
	ldr ip, [r1]
	ldr r3, [r1]
	add r3, r3, #1
	str r3, [r1]
	str ip, [r0, #8]
	str r4, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r2, [r1]
	ldr r5, [r0, #8]
	cmp r2, #0
	movlt r0, #0
	strlt r0, [r1]
_02208BCC:
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, pc}
	.align 2, 0
_02208BD8: .word 0x02211924
_02208BDC: .word 0x02211910
_02208BE0: .word 0x0221190C

	arm_func_start FUN_02208BE4
FUN_02208BE4: ; 0x02208BE4
	ldr ip, _02208BF8 ; =0x020CBDC4
	mov r1, #0
	ldr r0, _02208BFC ; =0x02211944
	mov r2, r1
	bx ip
	.align 2, 0
_02208BF8: .word 0x020CBDC4
_02208BFC: .word 0x02211944

	arm_func_start FUN_02208C00
FUN_02208C00: ; 0x02208C00
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208C20 ; =0x02211944
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208C20: .word 0x02211944

	arm_func_start FUN_02208C24
FUN_02208C24: ; 0x02208C24
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r0, _02208C4C ; =0x02211918
	mov r1, #1
	str r1, [r0]
	bl FUN_02208BE4
	ldr r0, _02208C50 ; =0x02211964
	bl OS_JoinThread
	add sp, sp, #4
	ldmfd sp!, {pc}
	.align 2, 0
_02208C4C: .word 0x02211918
_02208C50: .word 0x02211964

	arm_func_start FUN_02208C54
FUN_02208C54: ; 0x02208C54
	stmdb sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	mov r4, r1
	bl OS_IsThreadAvailable
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _02208CBC ; =0x02211944
	ldr r1, _02208CC0 ; =0x02211928
	mov r2, #1
	bl OS_InitMessageQueue
	mov r0, #0x2000
	str r0, [sp]
	ldr r0, _02208CC4 ; =0x02211964
	ldr r1, _02208CC8 ; =FUN_0220A044
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	ldr r0, _02208CC4 ; =0x02211964
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	.align 2, 0

