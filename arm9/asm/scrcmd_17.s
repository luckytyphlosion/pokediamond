    .include "asm/macros.inc"
    .include "global.inc"

	.extern UNK_020F4494

	.text

	thumb_func_start FUN_02044158
FUN_02044158: ; 0x02044158
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F54C
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start FUN_0204416C
FUN_0204416C: ; 0x0204416C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394B8
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	bl FUN_0205F55C
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02044198
FUN_02044198: ; 0x02044198
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020394B8
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020394F0
	add r5, r0, #0x0
	bl rand_LC
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0xf
	bhs _020441D6
	mov r0, #0x0
	b _02044218
_020441D6:
	cmp r0, #0x1e
	bhs _020441DE
	mov r0, #0x1
	b _02044218
_020441DE:
	cmp r0, #0x2d
	bhs _020441E6
	mov r0, #0x2
	b _02044218
_020441E6:
	cmp r0, #0x3c
	bhs _020441EE
	mov r0, #0x3
	b _02044218
_020441EE:
	cmp r0, #0x46
	bhs _020441F6
	mov r0, #0x4
	b _02044218
_020441F6:
	cmp r0, #0x50
	bhs _020441FE
	mov r0, #0x5
	b _02044218
_020441FE:
	cmp r0, #0x58
	bhs _02044206
	mov r0, #0x6
	b _02044218
_02044206:
	cmp r0, #0x5d
	bhs _0204420E
	mov r0, #0x7
	b _02044218
_0204420E:
	cmp r0, #0x62
	bhs _02044216
	mov r0, #0x8
	b _02044218
_02044216:
	mov r0, #0x9
_02044218:
	ldr r2, _020442B4 ; =0x0000011D
	cmp r5, r2
	bgt _02044244
	bge _02044290
	cmp r5, #0x27
	bgt _02044236
	cmp r5, #0x23
	blt _02044230
	beq _02044284
	cmp r5, #0x27
	beq _02044290
	b _0204429C
_02044230:
	cmp r5, #0x19
	beq _02044294
	b _0204429C
_02044236:
	cmp r5, #0x36
	bgt _0204423E
	beq _0204428C
	b _0204429C
_0204423E:
	cmp r5, #0xff
	beq _02044288
	b _0204429C
_02044244:
	add r1, r2, #0x0
	add r1, #0x8c
	cmp r5, r1
	bgt _0204426C
	add r1, r2, #0x0
	add r1, #0x8c
	cmp r5, r1
	bge _02044288
	add r1, r2, #0x0
	add r1, #0xf
	cmp r5, r1
	bgt _02044264
	add r2, #0xf
	cmp r5, r2
	beq _02044284
	b _0204429C
_02044264:
	add r2, #0x84
	cmp r5, r2
	beq _0204428C
	b _0204429C
_0204426C:
	add r1, r2, #0x0
	add r1, #0x8e
	cmp r5, r1
	bgt _0204427C
	add r2, #0x8e
	cmp r5, r2
	beq _02044298
	b _0204429C
_0204427C:
	add r2, #0x9b
	cmp r5, r2
	beq _02044298
	b _0204429C
_02044284:
	mov r2, #0x0
	b _0204429E
_02044288:
	mov r2, #0x1
	b _0204429E
_0204428C:
	mov r2, #0x2
	b _0204429E
_02044290:
	mov r2, #0x3
	b _0204429E
_02044294:
	mov r2, #0x4
	b _0204429E
_02044298:
	mov r2, #0x5
	b _0204429E
_0204429C:
	mov r2, #0x0
_0204429E:
	add r3, r2, #0x0
	mov r1, #0x14
	mul r3, r1
	ldr r2, _020442B8 ; =UNK_020F4494
	lsl r1, r0, #0x1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_020442B4: .word 0x0000011D
_020442B8: .word UNK_020F4494
