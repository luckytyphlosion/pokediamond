	.include "asm/macros.inc"
    .include "global.inc"

	.extern UNK_02105D74
	.extern UNK_02105D88
	.extern UNK_02105DA8
	.extern UNK_021C5A04
	.extern UNK_02105D98

	.text

	thumb_func_start FUN_02033B68
FUN_02033B68: ; 0x02033B68
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r2, #0x0
	mov r2, #0x7
	add r6, r3, #0x0
	ldr r1, [sp, #0x10]
	mov r0, #0x1
	lsl r2, r2, #0x6
	add r3, r4, #0x0
	bl FUN_02033D3C
	ldr r1, [sp, #0x10]
	mov r0, #0x1
	add r2, r4, #0x0
	bl FUN_02033D9C
	add r0, r4, #0x0
	mov r1, #0x20
	bl FUN_020169D8
	add r4, r0, #0x0
	ldr r0, _02033BC4 ; =FUN_02033BC8
	add r1, r4, #0x0
	mov r2, #0x5
	bl FUN_0200CA98
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	strh r6, [r4, #0xe]
	mov r1, #0x0
	str r1, [r4, #0x0]
	mov r0, #0x3
	str r0, [r4, #0x4]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x10]
	str r1, [r4, #0x8]
	strb r0, [r4, #0x10]
	strb r1, [r4, #0x12]
	mov r0, #0x7
	strb r1, [r4, #0x11]
	lsl r0, r0, #0x18
	str r0, [r4, #0x1c]
	add r0, r4, #0x0
	pop {r4-r6, pc}
	nop
_02033BC4: .word FUN_02033BC8

	thumb_func_start FUN_02033BC8
FUN_02033BC8: ; 0x02033BC8
	push {r3-r7, lr}
	add r5, r1, #0x0
	ldrb r0, [r5, #0x11]
	cmp r0, #0x1
	beq _02033BD8
	cmp r0, #0x2
	beq _02033BEE
	b _02033C04
_02033BD8:
	ldr r0, _02033CB0 ; =0x04000304
	ldrh r1, [r0, #0x0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #0x1
	bne _02033BEA
	mov r6, #0x1
	b _02033C06
_02033BEA:
	mov r6, #0x2
	b _02033C06
_02033BEE:
	ldr r0, _02033CB0 ; =0x04000304
	ldrh r1, [r0, #0x0]
	lsr r0, r0, #0xb
	and r0, r1
	asr r0, r0, #0xf
	cmp r0, #0x1
	bne _02033C00
	mov r6, #0x2
	b _02033C06
_02033C00:
	mov r6, #0x1
	b _02033C06
_02033C04:
	mov r6, #0x1
_02033C06:
	ldr r4, [r5, #0x4]
	cmp r6, #0x1
	bne _02033C1E
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	ldr r0, _02033CB4 ; =0x00300010
	add r7, r1, #0x0
	and r7, r0
	bl GX_GetBankForOBJ
	b _02033C2C
_02033C1E:
	ldr r0, _02033CB8 ; =0x04001000
	ldr r1, [r0, #0x0]
	ldr r0, _02033CB4 ; =0x00300010
	add r7, r1, #0x0
	and r7, r0
	bl GX_GetBankForSubOBJ
_02033C2C:
	cmp r7, #0x10
	beq _02033C38
	ldr r1, _02033CBC ; =0x00200010
	cmp r7, r1
	beq _02033C54
	b _02033C6C
_02033C38:
	cmp r0, #0x40
	beq _02033C40
	cmp r0, #0x20
	bne _02033C4A
_02033C40:
	mov r0, #0x1f
	lsl r1, r4, #0x2
	lsl r0, r0, #0x4
	add r1, r1, r0
	b _02033C74
_02033C4A:
	mov r0, #0x3f
	lsl r1, r4, #0x2
	lsl r0, r0, #0x4
	add r1, r1, r0
	b _02033C74
_02033C54:
	cmp r0, #0x30
	beq _02033C5C
	cmp r0, #0x50
	bne _02033C64
_02033C5C:
	mov r0, #0x9f
	lsl r0, r0, #0x2
	add r1, r4, r0
	b _02033C74
_02033C64:
	mov r0, #0xff
	lsl r0, r0, #0x2
	add r1, r4, r0
	b _02033C74
_02033C6C:
	mov r0, #0xfe
	lsl r1, r4, #0x1
	lsl r0, r0, #0x2
	add r1, r1, r0
_02033C74:
	cmp r6, #0x1
	bne _02033C7E
	mov r2, #0x7
	lsl r2, r2, #0x18
	b _02033C80
_02033C7E:
	ldr r2, _02033CC0 ; =0x07000400
_02033C80:
	ldrh r3, [r5, #0xe]
	ldrh r0, [r5, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x18
	mov r3, #0x1
	lsl r0, r0, #0x17
	lsl r3, r3, #0x1e
	lsr r0, r0, #0x7
	orr r3, r4
	orr r0, r3
	str r0, [r2, #0x0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #0x4]
	ldr r1, [r5, #0x1c]
	cmp r2, r1
	beq _02033CAE
	ldr r0, _02033CC4 ; =0x40000200
	str r0, [r1, #0x0]
	mov r0, #0x0
	strh r0, [r1, #0x4]
	str r2, [r5, #0x1c]
_02033CAE:
	pop {r3-r7, pc}
	.balign 4
_02033CB0: .word 0x04000304
_02033CB4: .word 0x00300010
_02033CB8: .word 0x04001000
_02033CBC: .word 0x00200010
_02033CC0: .word 0x07000400
_02033CC4: .word 0x40000200

	thumb_func_start FUN_02033CC8
FUN_02033CC8: ; 0x02033CC8
	cmp r1, #0x4
	bge _02033CD2
	str r1, [r0, #0x4]
	mov r1, #0x0
	str r1, [r0, #0x8]
_02033CD2:
	bx lr

	thumb_func_start FUN_02033CD4
FUN_02033CD4: ; 0x02033CD4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x18]
	bl FUN_0200CAB4
	mov r0, #0x7
	ldr r2, _02033D00 ; =0x40000200
	lsl r0, r0, #0x18
	str r2, [r0, #0x0]
	mov r1, #0x0
	strh r1, [r0, #0x4]
	ldrb r0, [r4, #0x12]
	cmp r0, #0x0
	beq _02033CF6
	ldr r0, _02033D04 ; =0x07000400
	str r2, [r0, #0x0]
	strh r1, [r0, #0x4]
_02033CF6:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	nop
_02033D00: .word 0x40000200
_02033D04: .word 0x07000400

	thumb_func_start FUN_02033D08
FUN_02033D08: ; 0x02033D08
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r2, #0x7
	ldrb r1, [r5, #0x10]
	mov r0, #0x2
	lsl r2, r2, #0x6
	add r3, r6, #0x0
	bl FUN_02033D3C
	ldrb r1, [r5, #0x10]
	mov r0, #0x2
	add r2, r6, #0x0
	bl FUN_02033D9C
	cmp r4, #0x0
	beq _02033D30
	mov r0, #0x1
	b _02033D32
_02033D30:
	mov r0, #0x2
_02033D32:
	strb r0, [r5, #0x11]
	mov r0, #0x1
	strb r0, [r5, #0x12]
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02033D3C
FUN_02033D3C: ; 0x02033D3C
	push {r3-r5, lr}
	sub sp, #0x8
	mov r1, #0x96
	add r5, r0, #0x0
	add r0, r3, #0x0
	lsl r1, r1, #0x2
	add r4, r2, #0x0
	bl FUN_020169D8
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02033D92
	ldr r0, _02033D98 ; =UNK_02105D88
	add r1, sp, #0x4
	bl FUN_020161F8
	mov r1, #0x96
	ldr r0, [sp, #0x4]
	lsl r1, r1, #0x2
	bl DC_FlushRange
	ldr r0, [sp, #0x4]
	add r1, sp, #0x0
	bl FUN_020B0138
	cmp r5, #0x1
	bne _02033D80
	ldr r0, [sp, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GX_LoadOBJPltt
	b _02033D8C
_02033D80:
	ldr r0, [sp, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl GXS_LoadOBJPltt
_02033D8C:
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
_02033D92:
	add sp, #0x8
	pop {r3-r5, pc}
	nop
_02033D98: .word UNK_02105D88

	thumb_func_start FUN_02033D9C
FUN_02033D9C: ; 0x02033D9C
	push {r3-r5, lr}
	sub sp, #0x8
	add r4, r1, #0x0
	mov r1, #0x96
	add r5, r0, #0x0
	add r0, r2, #0x0
	lsl r1, r1, #0x2
	bl FUN_020169D8
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02033E58
	cmp r4, #0x0
	add r1, sp, #0x4
	beq _02033DC2
	ldr r0, _02033E5C ; =UNK_02105D98
	bl FUN_020161F8
	b _02033DC8
_02033DC2:
	ldr r0, _02033E60 ; =UNK_02105DA8
	bl FUN_020161F8
_02033DC8:
	mov r1, #0x96
	ldr r0, [sp, #0x4]
	lsl r1, r1, #0x2
	bl DC_FlushRange
	ldr r0, [sp, #0x4]
	add r1, sp, #0x0
	bl FUN_020B0088
	cmp r5, #0x1
	bne _02033DF0
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	ldr r0, _02033E64 ; =0x00300010
	add r4, r1, #0x0
	and r4, r0
	bl GX_GetBankForOBJ
	b _02033E00
_02033DF0:
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	ldr r0, _02033E64 ; =0x00300010
	add r4, r1, #0x0
	and r4, r0
	bl GX_GetBankForOBJ
_02033E00:
	cmp r4, #0x10
	beq _02033E0C
	ldr r1, _02033E68 ; =0x00200010
	cmp r4, r1
	beq _02033E20
	b _02033E30
_02033E0C:
	cmp r0, #0x40
	beq _02033E14
	cmp r0, #0x20
	bne _02033E1A
_02033E14:
	mov r1, #0x3e
	lsl r1, r1, #0x8
	b _02033E34
_02033E1A:
	mov r1, #0x7e
	lsl r1, r1, #0x8
	b _02033E34
_02033E20:
	cmp r0, #0x30
	beq _02033E28
	cmp r0, #0x50
	bne _02033E2C
_02033E28:
	ldr r1, _02033E6C ; =0x00013E00
	b _02033E34
_02033E2C:
	ldr r1, _02033E70 ; =0x0001FE00
	b _02033E34
_02033E30:
	mov r1, #0xfe
	lsl r1, r1, #0x8
_02033E34:
	cmp r5, #0x1
	bne _02033E46
	ldr r0, [sp, #0x0]
	mov r2, #0x2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #0x8
	bl GX_LoadOBJ
	b _02033E52
_02033E46:
	ldr r0, [sp, #0x0]
	mov r2, #0x2
	ldr r0, [r0, #0x14]
	lsl r2, r2, #0x8
	bl GXS_LoadOBJ
_02033E52:
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
_02033E58:
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4
_02033E5C: .word UNK_02105D98
_02033E60: .word UNK_02105DA8
_02033E64: .word 0x00300010
_02033E68: .word 0x00200010
_02033E6C: .word 0x00013E00
_02033E70: .word 0x0001FE00

	thumb_func_start FUN_02033E74
FUN_02033E74: ; 0x02033E74
	push {r4, lr}
	mov r4, #0x0
	bl FUN_02033590
	cmp r0, #0x0
	beq _02033E82
	mov r4, #0x1
_02033E82:
	mov r0, #0xf0
	mov r1, #0x0
	add r2, r4, #0x0
	bl FUN_02033E90
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02033E90
FUN_02033E90: ; 0x02033E90
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r4, r2, #0x0
	bl FUN_0202E4DC
	cmp r0, #0x0
	beq _02033EC4
	ldr r0, _02033EC8 ; =UNK_021C5A04
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02033EAE
	bl FUN_02033ED0
_02033EAE:
	ldr r0, _02033ECC ; =UNK_02105D74
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r0, #0x0
	mov r1, #0x5b
	add r2, r5, #0x0
	add r3, r6, #0x0
	bl FUN_02033B68
	ldr r1, _02033EC8 ; =UNK_021C5A04
	str r0, [r1, #0x0]
_02033EC4:
	add sp, #0x8
	pop {r4-r6, pc}
	.balign 4
_02033EC8: .word UNK_021C5A04
_02033ECC: .word UNK_02105D74

	thumb_func_start FUN_02033ED0
FUN_02033ED0: ; 0x02033ED0
	push {r3, lr}
	ldr r0, _02033EE8 ; =UNK_021C5A04
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02033EE4
	bl FUN_02033CD4
	ldr r0, _02033EE8 ; =UNK_021C5A04
	mov r1, #0x0
	str r1, [r0, #0x0]
_02033EE4:
	pop {r3, pc}
	nop
_02033EE8: .word UNK_021C5A04

	thumb_func_start FUN_02033EEC
FUN_02033EEC: ; 0x02033EEC
	push {r3, lr}
	add r1, r0, #0x0
	ldr r0, _02033F00 ; =UNK_021C5A04
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02033EFC
	bl FUN_02033CC8
_02033EFC:
	pop {r3, pc}
	nop
_02033F00: .word UNK_021C5A04

	thumb_func_start FUN_02033F04
FUN_02033F04: ; 0x02033F04
	push {r3, lr}
	add r3, r0, #0x0
	ldr r0, _02033F1C ; =UNK_021C5A04
	add r2, r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02033F18
	add r1, r3, #0x0
	bl FUN_02033D08
_02033F18:
	pop {r3, pc}
	nop
_02033F1C: .word UNK_021C5A04

	thumb_func_start FUN_02033F20
FUN_02033F20: ; 0x02033F20
	push {r3, lr}
	bl FUN_02030F40
	cmp r0, #0x0
	beq _02033F40
	bl FUN_02030F20
	cmp r0, #0x1
	bgt _02033F3A
	bl FUN_02033590
	cmp r0, #0x0
	beq _02033F4C
_02033F3A:
	bl FUN_02033E74
	pop {r3, pc}
_02033F40:
	bl FUN_02033590
	cmp r0, #0x0
	beq _02033F4C
	bl FUN_02033E74
_02033F4C:
	pop {r3, pc}
	.balign 4
