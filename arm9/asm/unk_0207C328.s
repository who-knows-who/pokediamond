    .include "asm/macros.inc"
    .include "global.inc"

	.extern UNK_020FA70C
	.extern UNK_020FA774
	.extern UNK_020FA73C
	.extern UNK_020FA77C
	.extern UNK_020FA720
	.extern UNK_020FA75C
	.extern UNK_020FA6F8
	.extern UNK_020FA76C
	.extern UNK_020FA764
	.extern UNK_020FA784

	.text

	thumb_func_start FUN_0207C328
FUN_0207C328: ; 0x0207C328
	push {r3-r7, lr}
	sub sp, #0x50
	add r4, r0, #0x0
	mov r0, #0x10
	mov r1, #0x1
	bl FUN_0201E6E4
	mov r0, #0x10
	mov r1, #0x1
	bl FUN_0201E74C
	mov r0, #0x20
	mov r1, #0x13
	bl FUN_0201C24C
	mov r0, #0x13
	bl FUN_0200BB14
	mov r1, #0x1
	lsl r1, r1, #0xa
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl FUN_0200BB34
	ldr r7, _0207C3C4 ; =0x00000404
	add r2, sp, #0x30
	ldr r3, _0207C3C8 ; =UNK_020FA73C
	str r0, [r4, r7]
	ldmia r3!, {r0-r1}
	add r6, r2, #0x0
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	ldr r5, _0207C3CC ; =UNK_020FA70C
	stmia r2!, {r0-r1}
	add r3, sp, #0x1c
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	str r0, [r3, #0x0]
	sub r0, r7, #0x4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl FUN_0200BB6C
	sub r1, r7, #0x4
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	mov r2, #0x4d
	bl FUN_0200BBF0
	ldr r5, _0207C3D0 ; =UNK_020FA720
	add r3, sp, #0x0
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	sub r1, r7, #0x4
	str r0, [r3, #0x0]
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	bl FUN_0200BD20
	add sp, #0x50
	pop {r3-r7, pc}
	.balign 4
_0207C3C4: .word 0x00000404
_0207C3C8: .word UNK_020FA73C
_0207C3CC: .word UNK_020FA70C
_0207C3D0: .word UNK_020FA720

	thumb_func_start FUN_0207C3D4
FUN_0207C3D4: ; 0x0207C3D4
	push {r4, lr}
	mov r1, #0x1
	add r4, r0, #0x0
	lsl r1, r1, #0xa
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	bl FUN_0200BCE0
	mov r0, #0x1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl FUN_0200BD04
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0207C3F4
FUN_0207C3F4: ; 0x0207C3F4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0207C438 ; =0x0000045C
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	mov r0, #0x46
	lsl r0, r0, #0x4
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	ldr r0, _0207C43C ; =0x000004AC
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	ldr r0, _0207C440 ; =0x00000518
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	ldr r0, _0207C444 ; =0x0000051C
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	pop {r4, pc}
	.balign 4
_0207C438: .word 0x0000045C
_0207C43C: .word 0x000004AC
_0207C440: .word 0x00000518
_0207C444: .word 0x0000051C

	thumb_func_start FUN_0207C448
FUN_0207C448: ; 0x0207C448
	push {r3-r7, lr}
	ldr r6, _0207C550 ; =UNK_020FA784
	ldr r7, _0207C554 ; =0x00000408
	add r5, r0, #0x0
	mov r4, #0x0
_0207C452:
	mov r0, #0x1
	ldr r1, _0207C558 ; =0x00000404
	lsl r0, r0, #0xa
	mov r2, #0x28
	mul r2, r4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, r2
	bl FUN_0200BE38
	lsl r1, r4, #0x2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4d
	blo _0207C452
	add r0, r5, #0x0
	bl FUN_0207C7EC
	ldr r0, _0207C55C ; =0x0000042C
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x43
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C560 ; =0x000004AC
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x4b
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C564 ; =0x000004B4
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C568 ; =0x000004B8
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C56C ; =0x000004BC
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x13
	lsl r0, r0, #0x6
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C570 ; =0x000004C4
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C574 ; =0x000004C8
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C578 ; =0x000004CC
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x4d
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C57C ; =0x000004D4
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C580 ; =0x000004D8
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C584 ; =0x00000524
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C588 ; =0x00000528
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C58C ; =0x0000052C
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x53
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C590 ; =0x00000534
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207C594 ; =0x00000538
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	pop {r3-r7, pc}
	.balign 4
_0207C550: .word UNK_020FA784
_0207C554: .word 0x00000408
_0207C558: .word 0x00000404
_0207C55C: .word 0x0000042C
_0207C560: .word 0x000004AC
_0207C564: .word 0x000004B4
_0207C568: .word 0x000004B8
_0207C56C: .word 0x000004BC
_0207C570: .word 0x000004C4
_0207C574: .word 0x000004C8
_0207C578: .word 0x000004CC
_0207C57C: .word 0x000004D4
_0207C580: .word 0x000004D8
_0207C584: .word 0x00000524
_0207C588: .word 0x00000528
_0207C58C: .word 0x0000052C
_0207C590: .word 0x00000534
_0207C594: .word 0x00000538

	thumb_func_start FUN_0207C598
FUN_0207C598: ; 0x0207C598
	push {r4-r6, lr}
	mov r5, #0x0
	add r6, r0, #0x0
	add r4, r5, #0x0
_0207C5A0:
	add r0, r6, #0x0
	add r1, r4, #0x0
	bl FUN_0207B070
	cmp r0, #0x0
	beq _0207C5B2
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0207C5B2:
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x8
	blo _0207C5A0
	sub r0, r5, #0x1
	lsl r1, r0, #0x4
	add r1, #0x18
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #0x1
	mov r0, #0xbc
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0207C5D4
FUN_0207C5D4: ; 0x0207C5D4
	push {r3-r7, lr}
	sub sp, #0x10
	add r7, r0, #0x0
	bl FUN_0207C598
	str r0, [sp, #0x4]
	ldr r0, _0207C69C ; =0x00000408
	mov r5, #0x0
	add r4, r7, r0
	ldr r0, [sp, #0x4]
	str r5, [sp, #0x8]
	str r0, [sp, #0x0]
	add r0, #0x18
	str r0, [sp, #0x0]
_0207C5F0:
	add r0, r7, #0x0
	add r1, r5, #0x0
	bl FUN_0207B070
	cmp r0, #0x0
	bne _0207C608
	lsl r0, r5, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x0
	bl FUN_020200A0
	b _0207C68E
_0207C608:
	lsl r6, r5, #0x2
	ldr r0, [r4, r6]
	bl FUN_020201DC
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _0207C6A0 ; =0x0000068C
	ldrsb r0, [r7, r0]
	cmp r0, r5
	bne _0207C62A
	cmp r1, #0x8
	bhs _0207C636
	ldr r0, [r4, r6]
	add r1, #0x8
	bl FUN_02020130
	b _0207C636
_0207C62A:
	cmp r1, #0x8
	blo _0207C636
	ldr r0, [r4, r6]
	sub r1, #0x8
	bl FUN_02020130
_0207C636:
	add r1, sp, #0xc
	ldr r0, [r4, r6]
	add r1, #0x2
	add r2, sp, #0xc
	bl FUN_0200C75C
	ldr r0, _0207C6A0 ; =0x0000068C
	ldrsb r0, [r7, r0]
	cmp r0, r5
	blt _0207C652
	ldr r0, [sp, #0x8]
	lsl r1, r0, #0x4
	ldr r0, [sp, #0x4]
	b _0207C65A
_0207C652:
	ldr r0, [sp, #0x8]
	sub r0, r0, #0x1
	lsl r1, r0, #0x4
	ldr r0, [sp, #0x0]
_0207C65A:
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	add r0, sp, #0xc
	strh r1, [r0, #0x2]
	lsl r0, r5, #0x2
	add r1, r7, r0
	ldr r0, _0207C69C ; =0x00000408
	add r2, sp, #0xc
	ldr r0, [r1, r0]
	mov r1, #0x2
	ldrsh r1, [r2, r1]
	add r3, r2, #0x0
	mov r2, #0x0
	ldrsh r2, [r3, r2]
	bl FUN_0200C6E4
	ldr r0, [r4, r6]
	mov r1, #0x1
	bl FUN_020200A0
	ldr r0, [sp, #0x8]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x8]
_0207C68E:
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x8
	blo _0207C5F0
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4
_0207C69C: .word 0x00000408
_0207C6A0: .word 0x0000068C

	thumb_func_start FUN_0207C6A4
FUN_0207C6A4: ; 0x0207C6A4
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl FUN_0207B09C
	cmp r0, #0x1
	bhi _0207C6B8
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0207C6F0
_0207C6B8:
	add r0, r5, #0x0
	bl FUN_0207C598
	add r4, r0, #0x0
	ldr r0, _0207C6EC ; =0x0000045C
	add r1, r4, #0x0
	sub r1, #0xc
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl FUN_0200C6E4
	mov r1, #0x5d
	mov r0, #0x46
	lsl r1, r1, #0x2
	lsl r0, r0, #0x4
	sub r1, r1, r4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0x18
	bl FUN_0200C6E4
	pop {r3-r5, pc}
	nop
_0207C6EC: .word 0x0000045C

	thumb_func_start FUN_0207C6F0
FUN_0207C6F0: ; 0x0207C6F0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_0207B09C
	cmp r0, #0x1
	bhi _0207C700
	mov r4, #0x0
_0207C700:
	ldr r0, _0207C718 ; =0x0000045C
	add r1, r4, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
	mov r0, #0x46
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	add r1, r4, #0x0
	bl FUN_020200A0
	pop {r3-r5, pc}
	.balign 4
_0207C718: .word 0x0000045C

	thumb_func_start FUN_0207C71C
FUN_0207C71C: ; 0x0207C71C
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	ldr r0, _0207C774 ; =0x00000263
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1a
	bne _0207C730
	mov r3, #0x15
	b _0207C732
_0207C730:
	add r3, #0x14
_0207C732:
	mov r0, #0x0
	mov r1, #0x1
	str r0, [sp, #0x0]
	lsl r1, r1, #0xa
	str r0, [sp, #0x4]
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	mov r2, #0x27
	bl FUN_0200C9D8
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x6
	mov r1, #0x1
	ldr r3, _0207C774 ; =0x00000263
	str r0, [sp, #0x4]
	ldrb r3, [r4, r3]
	lsl r1, r1, #0xa
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	lsl r3, r3, #0x18
	ldr r1, [r4, r1]
	lsr r4, r3, #0x1a
	ldr r3, _0207C778 ; =UNK_020FA6F8
	mov r2, #0x27
	ldrb r3, [r3, r4]
	add r3, #0x25
	bl FUN_0200CA0C
	add sp, #0x8
	pop {r4, pc}
	nop
_0207C774: .word 0x00000263
_0207C778: .word UNK_020FA6F8

	thumb_func_start FUN_0207C77C
FUN_0207C77C: ; 0x0207C77C
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0x2a
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x4
	lsr r0, r0, #0x4
	cmp r0, #0x7
	bne _0207C7A4
	ldr r0, _0207C7E4 ; =0x00000458
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207C7E8 ; =0x00000538
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r4, pc}
_0207C7A4:
	cmp r0, #0x0
	ldr r0, _0207C7E8 ; =0x00000538
	beq _0207C7D0
	ldr r0, [r4, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207C7E4 ; =0x00000458
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	mov r1, #0x2a
	lsl r1, r1, #0x4
	ldr r0, _0207C7E4 ; =0x00000458
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	lsl r1, r1, #0x4
	lsr r1, r1, #0x4
	bl FUN_02020130
	pop {r4, pc}
_0207C7D0:
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_020200A0
	ldr r0, _0207C7E4 ; =0x00000458
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r4, pc}
	.balign 4
_0207C7E4: .word 0x00000458
_0207C7E8: .word 0x00000538

	thumb_func_start FUN_0207C7EC
FUN_0207C7EC: ; 0x0207C7EC
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl FUN_0207CA44
	mov r6, #0xa1
	mov r4, #0x0
	mov r7, #0x3
	lsl r6, r6, #0x2
_0207C7FC:
	lsl r0, r4, #0x1
	add r0, r5, r0
	ldrh r0, [r0, r6]
	cmp r0, #0x0
	beq _0207C826
	add r1, r7, #0x0
	bl FUN_0206AB18
	add r3, r0, #0x0
	add r1, r4, #0x0
	add r1, #0xd
	add r2, r4, #0x5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl FUN_0207CA6C
_0207C826:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4
	blo _0207C7FC
	add r0, r5, #0x0
	bl FUN_0207CFEC
	pop {r3-r7, pc}

	thumb_func_start FUN_0207C838
FUN_0207C838: ; 0x0207C838
	push {r3-r7, lr}
	ldr r6, _0207CA2C ; =0x00000408
	add r5, r0, #0x0
	mov r4, #0xb
	mov r7, #0x0
_0207C842:
	lsl r0, r4, #0x2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0x0
	bl FUN_0200C63C
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x13
	bls _0207C842
	ldr r0, _0207CA30 ; =0x0000068C
	ldrsb r0, [r5, r0]
	cmp r0, #0x0
	beq _0207C86C
	cmp r0, #0x3
	beq _0207C8B4
	cmp r0, #0x5
	bne _0207C86A
	b _0207C96E
_0207C86A:
	pop {r3-r7, pc}
_0207C86C:
	ldr r0, _0207CA34 ; =0x00000434
	mov r1, #0x1
	ldr r0, [r5, r0]
	bl FUN_0200C63C
	mov r0, #0x26
	lsl r0, r0, #0x4
	ldrb r1, [r5, r0]
	add r0, r0, #0x1
	ldrb r0, [r5, r0]
	cmp r1, r0
	ldr r0, _0207CA34 ; =0x00000434
	bne _0207C892
	ldr r0, [r5, r0]
	mov r1, #0xd8
	mov r2, #0x50
	bl FUN_0200C6E4
	pop {r3-r7, pc}
_0207C892:
	ldr r0, [r5, r0]
	mov r1, #0xc7
	mov r2, #0x50
	bl FUN_0200C6E4
	ldr r0, _0207CA38 ; =0x00000438
	mov r1, #0x1
	ldr r0, [r5, r0]
	bl FUN_0200C63C
	ldr r0, _0207CA38 ; =0x00000438
	mov r1, #0xe9
	ldr r0, [r5, r0]
	mov r2, #0x50
	bl FUN_0200C6E4
	pop {r3-r7, pc}
_0207C8B4:
	mov r7, #0xa1
	mov r4, #0x0
	lsl r7, r7, #0x2
_0207C8BA:
	lsl r0, r4, #0x1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0x0
	beq _0207C904
	mov r1, #0x3
	bl FUN_0206AB18
	add r3, r0, #0x0
	add r1, r4, #0x0
	add r1, #0xd
	add r2, r4, #0x5
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl FUN_0207CA6C
	lsl r0, r4, #0x2
	add r6, r5, r0
	ldr r0, _0207CA3C ; =0x0000043C
	mov r1, #0x1
	ldr r0, [r6, r0]
	bl FUN_0200C63C
	ldr r0, _0207CA3C ; =0x0000043C
	lsl r2, r4, #0x5
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl FUN_0200C6E4
_0207C904:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4
	blo _0207C8BA
	mov r0, #0x93
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0207C946
	mov r1, #0x3
	bl FUN_0206AB18
	add r3, r0, #0x0
	lsl r3, r3, #0x18
	add r0, r5, #0x0
	mov r1, #0x11
	mov r2, #0x9
	lsr r3, r3, #0x18
	bl FUN_0207CA6C
	ldr r0, _0207CA40 ; =0x0000044C
	mov r1, #0x1
	ldr r0, [r5, r0]
	bl FUN_0200C63C
	ldr r0, _0207CA40 ; =0x0000044C
	mov r1, #0x97
	ldr r0, [r5, r0]
	mov r2, #0xaa
	bl FUN_0200C6E4
_0207C946:
	ldr r0, _0207CA34 ; =0x00000434
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl FUN_0200C6E4
	ldr r0, _0207CA38 ; =0x00000438
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl FUN_0200C6E4
	mov r0, #0x45
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x6c
	mov r2, #0x48
	bl FUN_0200C6E4
	pop {r3-r7, pc}
_0207C96E:
	mov r7, #0xa1
	mov r4, #0x0
	lsl r7, r7, #0x2
_0207C974:
	lsl r0, r4, #0x1
	add r0, r5, r0
	ldrh r0, [r0, r7]
	cmp r0, #0x0
	beq _0207C9C0
	mov r1, #0xb
	bl FUN_0206AB18
	add r3, r0, #0x0
	add r1, r4, #0x0
	add r1, #0xd
	add r2, r4, #0x5
	add r3, #0x12
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl FUN_0207CA6C
	lsl r0, r4, #0x2
	add r6, r5, r0
	ldr r0, _0207CA3C ; =0x0000043C
	mov r1, #0x1
	ldr r0, [r6, r0]
	bl FUN_0200C63C
	ldr r0, _0207CA3C ; =0x0000043C
	lsl r2, r4, #0x5
	add r2, #0x2a
	lsl r2, r2, #0x10
	ldr r0, [r6, r0]
	mov r1, #0x97
	asr r2, r2, #0x10
	bl FUN_0200C6E4
_0207C9C0:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4
	blo _0207C974
	mov r0, #0x93
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0207CA04
	mov r1, #0xb
	bl FUN_0206AB18
	add r3, r0, #0x0
	add r3, #0x12
	lsl r3, r3, #0x18
	add r0, r5, #0x0
	mov r1, #0x11
	mov r2, #0x9
	lsr r3, r3, #0x18
	bl FUN_0207CA6C
	ldr r0, _0207CA40 ; =0x0000044C
	mov r1, #0x1
	ldr r0, [r5, r0]
	bl FUN_0200C63C
	ldr r0, _0207CA40 ; =0x0000044C
	mov r1, #0x97
	ldr r0, [r5, r0]
	mov r2, #0xaa
	bl FUN_0200C6E4
_0207CA04:
	ldr r0, _0207CA34 ; =0x00000434
	mov r1, #0x3f
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl FUN_0200C6E4
	ldr r0, _0207CA38 ; =0x00000438
	mov r1, #0x61
	ldr r0, [r5, r0]
	mov r2, #0x34
	bl FUN_0200C6E4
	mov r0, #0x45
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x6c
	mov r2, #0x48
	bl FUN_0200C6E4
	pop {r3-r7, pc}
	.balign 4
_0207CA2C: .word 0x00000408
_0207CA30: .word 0x0000068C
_0207CA34: .word 0x00000434
_0207CA38: .word 0x00000438
_0207CA3C: .word 0x0000043C
_0207CA40: .word 0x0000044C

	thumb_func_start FUN_0207CA44
FUN_0207CA44: ; 0x0207CA44
	push {r4, lr}
	mov r3, #0x26
	add r4, r0, #0x0
	lsl r3, r3, #0x4
	ldrb r3, [r4, r3]
	mov r1, #0xb
	mov r2, #0x3
	bl FUN_0207CA6C
	ldr r3, _0207CA68 ; =0x00000261
	add r0, r4, #0x0
	ldrb r3, [r4, r3]
	mov r1, #0xc
	mov r2, #0x4
	bl FUN_0207CA6C
	pop {r4, pc}
	nop
_0207CA68: .word 0x00000261

	thumb_func_start FUN_0207CA6C
FUN_0207CA6C: ; 0x0207CA6C
	push {r4-r7, lr}
	sub sp, #0xc
	add r7, r3, #0x0
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl FUN_0206E12C
	str r0, [sp, #0x8]
	add r0, r7, #0x0
	bl FUN_0206E0F0
	add r3, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x0]
	ldr r1, _0207CAB4 ; =0x00000404
	str r6, [sp, #0x4]
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x8]
	bl FUN_0200C9D8
	add r0, r7, #0x0
	bl FUN_0206E114
	add r2, r0, #0x0
	lsl r0, r4, #0x2
	add r1, r5, r0
	ldr r0, _0207CAB8 ; =0x00000408
	ldr r0, [r1, r0]
	add r1, r2, #0x3
	bl FUN_0200C664
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0207CAB4: .word 0x00000404
_0207CAB8: .word 0x00000408

	thumb_func_start FUN_0207CABC
FUN_0207CABC: ; 0x0207CABC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, r1, #0x0
	ldrb r0, [r0, #0x0]
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	lsl r0, r0, #0x5
	add r0, #0x2a
	lsl r0, r0, #0x10
	add r4, r3, #0x0
	asr r7, r0, #0x10
	mov r6, #0x0
_0207CAD6:
	ldr r0, _0207CB04 ; =0x0000043C
	ldr r1, [sp, #0x4]
	ldr r0, [r5, r0]
	add r2, r4, #0x0
	bl FUN_0200C75C
	mov r0, #0x0
	ldrsh r0, [r4, r0]
	cmp r7, r0
	bne _0207CAF2
	ldr r0, [sp, #0x0]
	add sp, #0x8
	strb r6, [r0, #0x0]
	pop {r3-r7, pc}
_0207CAF2:
	add r0, r6, #0x1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	add r5, r5, #0x4
	cmp r6, #0x4
	blt _0207CAD6
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_0207CB04: .word 0x0000043C

	thumb_func_start FUN_0207CB08
FUN_0207CB08: ; 0x0207CB08
	push {r0-r3}
	push {r4, lr}
	sub sp, #0x8
	add r2, sp, #0x4
	add r1, sp, #0x14
	add r2, #0x2
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_0207CABC
	add r2, sp, #0x0
	add r0, r4, #0x0
	add r1, sp, #0x18
	add r2, #0x2
	add r3, sp, #0x0
	bl FUN_0207CABC
	add r0, sp, #0x10
	ldrb r0, [r0, #0x4]
	add r3, sp, #0x0
	mov r2, #0x0
	add r0, #0xd
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldr r0, _0207CB6C ; =0x00000408
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #0x2
	ldrsh r1, [r3, r1]
	bl FUN_0200C6E4
	add r0, sp, #0x10
	ldrb r0, [r0, #0x8]
	add r3, sp, #0x0
	mov r2, #0x4
	add r0, #0xd
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldr r0, _0207CB6C ; =0x00000408
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #0x6
	ldrsh r1, [r3, r1]
	bl FUN_0200C6E4
	add sp, #0x8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4
_0207CB6C: .word 0x00000408

	thumb_func_start FUN_0207CB70
FUN_0207CB70: ; 0x0207CB70
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x1
	bl FUN_0206AB18
	add r4, r0, #0x0
	bl FUN_0206E2A8
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0206E278
	mov r1, #0x1
	add r3, r0, #0x0
	str r1, [sp, #0x0]
	mov r0, #0xa
	str r0, [sp, #0x4]
	lsl r0, r1, #0xa
	ldr r1, _0207CBBC ; =0x00000404
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0x0
	bl FUN_0200C9D8
	add r0, r4, #0x0
	bl FUN_0206E290
	add r1, r0, #0x0
	mov r0, #0x45
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	add r1, r1, #0x3
	bl FUN_0200C664
	add sp, #0x8
	pop {r4-r6, pc}
	.balign 4
_0207CBBC: .word 0x00000404

	thumb_func_start FUN_0207CBC0
FUN_0207CBC0: ; 0x0207CBC0
	ldr r2, _0207CBDC ; =0x0000068D
	add r3, r0, #0x0
	ldrb r2, [r3, r2]
	ldr r0, _0207CBE0 ; =0x0000042C
	mov r1, #0xc2
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x5
	ldr r0, [r3, r0]
	add r2, #0x30
	lsl r2, r2, #0x10
	ldr r3, _0207CBE4 ; =FUN_0200C6E4
	asr r2, r2, #0x10
	bx r3
	.balign 4
_0207CBDC: .word 0x0000068D
_0207CBE0: .word 0x0000042C
_0207CBE4: .word FUN_0200C6E4

	thumb_func_start FUN_0207CBE8
FUN_0207CBE8: ; 0x0207CBE8
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	ldr r0, _0207CC20 ; =0x0000042C
	add r1, sp, #0x0
	ldr r0, [r4, r0]
	add r1, #0x2
	add r2, sp, #0x0
	bl FUN_0200C75C
	mov r0, #0x43
	lsl r0, r0, #0x4
	add r3, sp, #0x0
	mov r1, #0x2
	mov r2, #0x0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	bl FUN_0200C6E4
	mov r0, #0x43
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_020200A0
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4
_0207CC20: .word 0x0000042C

	thumb_func_start FUN_0207CC24
FUN_0207CC24: ; 0x0207CC24
	push {r3-r7, lr}
	mov r2, #0x69
	lsl r2, r2, #0x4
	mov r1, #0x0
	strb r1, [r0, r2]
	add r3, r2, #0x3
	strb r1, [r0, r3]
	add r3, r2, #0x2
	strb r1, [r0, r3]
	ldr r3, _0207CC80 ; =0x0000029A
	ldrb r3, [r0, r3]
	cmp r3, #0x0
	bne _0207CC44
	add r2, r2, #0x1
	strb r1, [r0, r2]
	b _0207CC5A
_0207CC44:
	cmp r3, #0xff
	bne _0207CC50
	mov r3, #0xc
	add r1, r2, #0x1
	strb r3, [r0, r1]
	b _0207CC5A
_0207CC50:
	mov r1, #0xc
	mul r1, r3
	asr r3, r1, #0x8
	add r1, r2, #0x1
	strb r3, [r0, r1]
_0207CC5A:
	ldr r7, _0207CC84 ; =0x00000408
	add r5, r0, #0x0
	mov r4, #0x1d
	add r5, #0x74
	add r6, r7, #0x0
_0207CC64:
	ldr r0, [r5, r7]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, [r5, r6]
	mov r1, #0x0
	bl FUN_02020208
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x28
	bls _0207CC64
	pop {r3-r7, pc}
	nop
_0207CC80: .word 0x0000029A
_0207CC84: .word 0x00000408

	thumb_func_start FUN_0207CC88
FUN_0207CC88: ; 0x0207CC88
	push {r3-r7, lr}
	add r4, r0, #0x0
	ldr r0, _0207CE38 ; =0x0000068C
	ldrsb r1, [r4, r0]
	cmp r1, #0x4
	bne _0207CC9C
	add r1, r0, #0x5
	ldrb r1, [r4, r1]
	cmp r1, #0x0
	bne _0207CC9E
_0207CC9C:
	b _0207CE34
_0207CC9E:
	add r2, r0, #0x4
	ldrb r2, [r4, r2]
	cmp r2, #0x4
	bhi _0207CCCC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207CCB2: ; jump table (using 16-bit offset)
	.short _0207CCBC - _0207CCB2 - 2; case 0
	.short _0207CCE0 - _0207CCB2 - 2; case 1
	.short _0207CD50 - _0207CCB2 - 2; case 2
	.short _0207CD70 - _0207CCB2 - 2; case 3
	.short _0207CDCA - _0207CCB2 - 2; case 4
_0207CCBC:
	add r1, r0, #0x7
	ldrb r1, [r4, r1]
	add r2, r1, #0x1
	add r1, r0, #0x7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x8
	beq _0207CCCE
_0207CCCC:
	b _0207CDE8
_0207CCCE:
	mov r2, #0x1
	add r1, r0, #0x4
	strb r2, [r4, r1]
	add r1, r0, #0x7
	mov r2, #0x0
	strb r2, [r4, r1]
	add r0, r0, #0x6
	strb r2, [r4, r0]
	b _0207CDE8
_0207CCE0:
	add r1, r0, #0x7
	ldrb r1, [r4, r1]
	cmp r1, #0x0
	bne _0207CD3E
	add r0, r0, #0x6
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldr r0, _0207CE3C ; =0x00000408
	ldr r0, [r1, r0]
	mov r1, #0x1
	bl FUN_020200A0
	ldr r0, _0207CE40 ; =0x00000692
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldr r0, _0207CE3C ; =0x00000408
	ldr r0, [r1, r0]
	mov r1, #0x0
	bl FUN_02020208
	ldr r0, _0207CE40 ; =0x00000692
	ldrb r0, [r4, r0]
	add r0, #0x1d
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldr r0, _0207CE3C ; =0x00000408
	ldr r0, [r1, r0]
	mov r1, #0x0
	bl FUN_02020130
	ldr r0, _0207CE40 ; =0x00000692
	ldrb r1, [r4, r0]
	add r1, r1, #0x1
	strb r1, [r4, r0]
	sub r1, r0, #0x1
	ldrb r2, [r4, r0]
	ldrb r1, [r4, r1]
	cmp r2, r1
	bne _0207CD3E
	mov r1, #0x2
	sub r0, r0, #0x2
	strb r1, [r4, r0]
	b _0207CDE8
_0207CD3E:
	ldr r0, _0207CE44 ; =0x00000693
	mov r1, #0xa
	ldrb r0, [r4, r0]
	add r0, r0, #0x1
	bl _s32_div_f
	ldr r0, _0207CE44 ; =0x00000693
	strb r1, [r4, r0]
	b _0207CDE8
_0207CD50:
	add r1, #0x1c
	lsl r0, r1, #0x2
	add r1, r4, r0
	ldr r0, _0207CE3C ; =0x00000408
	ldr r0, [r1, r0]
	bl FUN_02020128
	cmp r0, #0x0
	bne _0207CDE8
	ldr r0, _0207CE44 ; =0x00000693
	mov r1, #0x0
	strb r1, [r4, r0]
	mov r1, #0x3
	sub r0, r0, #0x3
	strb r1, [r4, r0]
	b _0207CDE8
_0207CD70:
	add r1, r0, #0x7
	ldrb r1, [r4, r1]
	add r2, r1, #0x1
	add r1, r0, #0x7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0207CDE8
	add r0, r0, #0x5
	ldrb r0, [r4, r0]
	mov r6, #0x1d
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0207CDBC
	add r5, r4, #0x0
	ldr r7, _0207CE48 ; =0x00000691
	add r5, #0x74
_0207CD92:
	ldr r0, _0207CE3C ; =0x00000408
	mov r1, #0x1
	ldr r0, [r5, r0]
	bl FUN_020200A0
	ldr r0, _0207CE3C ; =0x00000408
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_02020208
	ldr r0, _0207CE3C ; =0x00000408
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_02020130
	ldrb r0, [r4, r7]
	add r6, r6, #0x1
	add r5, r5, #0x4
	add r0, #0x1d
	cmp r6, r0
	blo _0207CD92
_0207CDBC:
	ldr r0, _0207CE44 ; =0x00000693
	mov r1, #0x0
	strb r1, [r4, r0]
	mov r1, #0x4
	sub r0, r0, #0x3
	strb r1, [r4, r0]
	b _0207CDE8
_0207CDCA:
	add r1, r0, #0x7
	ldrb r1, [r4, r1]
	add r2, r1, #0x1
	add r1, r0, #0x7
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x20
	bne _0207CDE8
	mov r2, #0x0
	add r1, r0, #0x4
	strb r2, [r4, r1]
	add r1, r0, #0x7
	strb r2, [r4, r1]
	add r0, r0, #0x6
	strb r2, [r4, r0]
_0207CDE8:
	ldr r0, _0207CE48 ; =0x00000691
	mov r6, #0x1d
	ldrb r0, [r4, r0]
	add r0, #0x1d
	cmp r0, #0x1d
	bls _0207CE34
	add r5, r4, #0x0
	ldr r7, _0207CE3C ; =0x00000408
	add r5, #0x74
_0207CDFA:
	ldr r0, [r5, r7]
	bl FUN_02020128
	cmp r0, #0x0
	beq _0207CE26
	ldr r0, _0207CE3C ; =0x00000408
	mov r1, #0x1
	ldr r0, [r5, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	ldr r0, _0207CE3C ; =0x00000408
	ldr r0, [r5, r0]
	bl FUN_0202022C
	cmp r0, #0x6
	bne _0207CE26
	ldr r0, _0207CE3C ; =0x00000408
	mov r1, #0x0
	ldr r0, [r5, r0]
	bl FUN_020200A0
_0207CE26:
	ldr r0, _0207CE48 ; =0x00000691
	add r6, r6, #0x1
	ldrb r0, [r4, r0]
	add r5, r5, #0x4
	add r0, #0x1d
	cmp r6, r0
	blo _0207CDFA
_0207CE34:
	pop {r3-r7, pc}
	nop
_0207CE38: .word 0x0000068C
_0207CE3C: .word 0x00000408
_0207CE40: .word 0x00000692
_0207CE44: .word 0x00000693
_0207CE48: .word 0x00000691

	thumb_func_start FUN_0207CE4C
FUN_0207CE4C: ; 0x0207CE4C
	push {r3-r7, lr}
	add r6, r0, #0x0
	mov r4, #0x0
	add r5, r6, #0x0
	mov r7, #0x1
_0207CE56:
	mov r0, #0xa7
	lsl r0, r0, #0x2
	ldrh r1, [r6, r0]
	add r0, r7, #0x0
	lsl r0, r4
	tst r0, r1
	ldr r0, _0207CED4 ; =0x00000464
	beq _0207CE70
	ldr r0, [r5, r0]
	add r1, r7, #0x0
	bl FUN_02020130
	b _0207CE78
_0207CE70:
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_02020130
_0207CE78:
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x6
	blo _0207CE56
	mov r0, #0x2a
	lsl r0, r0, #0x4
	ldr r0, [r6, r0]
	lsl r1, r0, #0x2
	lsr r1, r1, #0x1f
	cmp r1, #0x1
	bne _0207CEA0
	lsl r0, r0, #0x3
	lsr r0, r0, #0x1f
	bne _0207CEA0
	ldr r0, _0207CED8 ; =0x000004DC
	mov r1, #0x1
	ldr r0, [r6, r0]
	bl FUN_0200C63C
	b _0207CEAA
_0207CEA0:
	ldr r0, _0207CED8 ; =0x000004DC
	mov r1, #0x0
	ldr r0, [r6, r0]
	bl FUN_0200C63C
_0207CEAA:
	mov r0, #0x2a
	lsl r0, r0, #0x4
	ldr r0, [r6, r0]
	lsr r0, r0, #0x1e
	cmp r0, #0x2
	bne _0207CEC4
	mov r0, #0x4e
	lsl r0, r0, #0x4
	ldr r0, [r6, r0]
	mov r1, #0x1
	bl FUN_0200C63C
	pop {r3-r7, pc}
_0207CEC4:
	mov r0, #0x4e
	lsl r0, r0, #0x4
	ldr r0, [r6, r0]
	mov r1, #0x0
	bl FUN_0200C63C
	pop {r3-r7, pc}
	nop
_0207CED4: .word 0x00000464
_0207CED8: .word 0x000004DC

	thumb_func_start FUN_0207CEDC
FUN_0207CEDC: ; 0x0207CEDC
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	ldr r0, _0207CF50 ; =0x000004AC
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207CF50 ; =0x000004AC
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_02020208
	ldr r0, _0207CF50 ; =0x000004AC
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_02020130
	add r1, sp, #0x0
	add r0, r4, #0x0
	add r1, #0x2
	add r2, sp, #0x0
	bl FUN_0207FC04
	ldr r0, _0207CF54 ; =0x0000068F
	add r3, sp, #0x0
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	ldr r0, _0207CF50 ; =0x000004AC
	bne _0207CF32
	mov r2, #0x0
	ldrsh r2, [r3, r2]
	mov r1, #0x2
	ldrsh r1, [r3, r1]
	add r2, #0xc0
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	asr r2, r2, #0x10
	bl FUN_0200C6E4
	add sp, #0x4
	pop {r3-r4, pc}
_0207CF32:
	mov r1, #0x2
	mov r2, #0x0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, r0]
	sub r1, r1, #0x4
	add r2, #0xc0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C6E4
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4
_0207CF50: .word 0x000004AC
_0207CF54: .word 0x0000068F

	thumb_func_start FUN_0207CF58
FUN_0207CF58: ; 0x0207CF58
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0207CF74 ; =0x000004AC
	ldr r0, [r4, r0]
	bl FUN_0202022C
	cmp r0, #0x2
	bne _0207CF72
	ldr r0, _0207CF74 ; =0x000004AC
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
_0207CF72:
	pop {r4, pc}
	.balign 4
_0207CF74: .word 0x000004AC

	thumb_func_start FUN_0207CF78
FUN_0207CF78: ; 0x0207CF78
	push {r3-r7, lr}
	ldr r7, _0207CFA8 ; =0x0000068E
	add r5, r0, #0x0
	mov r4, #0x0
	mov r6, #0x1
_0207CF82:
	add r0, r6, #0x0
	ldrb r1, [r5, r7]
	lsl r0, r4
	tst r0, r1
	beq _0207CF9C
	lsl r0, r4, #0x2
	add r1, r5, r0
	mov r0, #0x4b
	lsl r0, r0, #0x4
	ldr r0, [r1, r0]
	add r1, r6, #0x0
	bl FUN_020200A0
_0207CF9C:
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x5
	blo _0207CF82
	pop {r3-r7, pc}
	.balign 4
_0207CFA8: .word 0x0000068E

	thumb_func_start FUN_0207CFAC
FUN_0207CFAC: ; 0x0207CFAC
	push {r4, lr}
	add r4, r0, #0x0
	cmp r1, #0x0
	bne _0207CFC0
	ldr r0, _0207CFE8 ; =0x000004C4
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r4, pc}
_0207CFC0:
	add r0, r1, #0x0
	bl FUN_0201AB14
	add r1, r0, #0x0
	ldr r0, _0207CFE8 ; =0x000004C4
	lsl r1, r1, #0x3
	sub r1, #0xa
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	asr r1, r1, #0x10
	mov r2, #0x8
	bl FUN_0200C6E4
	ldr r0, _0207CFE8 ; =0x000004C4
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r4, pc}
	nop
_0207CFE8: .word 0x000004C4

	thumb_func_start FUN_0207CFEC
FUN_0207CFEC: ; 0x0207CFEC
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	bl FUN_0207B628
	mov r1, #0x93
	lsl r1, r1, #0x2
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x11]
	cmp r1, #0x2
	bne _0207D008
	bl FUN_0206B688
	b _0207D00C
_0207D008:
	bl FUN_0206B6C8
_0207D00C:
	add r3, r0, #0x0
	mov r0, #0x0
	mov r1, #0x1
	str r0, [sp, #0x0]
	mov r0, #0xb
	lsl r1, r1, #0xa
	str r0, [sp, #0x4]
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl FUN_0200C9D8
	mov r2, #0x97
	lsl r2, r2, #0x2
	add r1, r2, #0x0
	ldrh r0, [r4, r2]
	add r2, #0x44
	add r1, #0x42
	ldr r2, [r4, r2]
	ldrh r1, [r4, r1]
	lsl r2, r2, #0x3
	lsr r2, r2, #0x1f
	bl FUN_0206B7BC
	add r1, r0, #0x0
	ldr r0, _0207D068 ; =0x00000454
	add r1, r1, #0x7
	ldr r0, [r4, r0]
	bl FUN_0200C664
	mov r0, #0x97
	lsl r0, r0, #0x2
	ldrh r0, [r4, r0]
	mov r1, #0x1c
	bl FUN_02068678
	add r2, r0, #0x0
	ldr r0, _0207D068 ; =0x00000454
	mov r1, #0x1
	ldr r0, [r4, r0]
	eor r1, r2
	bl FUN_02020100
	add sp, #0x8
	pop {r4, pc}
	.balign 4
_0207D068: .word 0x00000454

	thumb_func_start FUN_0207D06C
FUN_0207D06C: ; 0x0207D06C
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	bl FUN_0206B888
	add r3, r0, #0x0
	mov r0, #0x0
	mov r1, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x5
	lsl r1, r1, #0xa
	str r0, [sp, #0x4]
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r1, [r4, r1]
	mov r2, #0x13
	bl FUN_0200CA0C
	ldr r0, _0207D0C0 ; =0x0000068C
	ldrsb r0, [r4, r0]
	cmp r0, #0x3
	ldr r0, _0207D0C4 ; =0x00000454
	bne _0207D0A6
	ldr r0, [r4, r0]
	mov r1, #0x18
	mov r2, #0x30
	bl FUN_0200C6E4
	b _0207D0B0
_0207D0A6:
	ldr r0, [r4, r0]
	mov r1, #0x20
	mov r2, #0x44
	bl FUN_0200C6E4
_0207D0B0:
	ldr r0, _0207D0C4 ; =0x00000454
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_0200C63C
	add sp, #0x8
	pop {r4, pc}
	nop
_0207D0C0: .word 0x0000068C
_0207D0C4: .word 0x00000454

	thumb_func_start FUN_0207D0C8
FUN_0207D0C8: ; 0x0207D0C8
	push {r4, lr}
	add r4, r2, #0x0
	cmp r4, r1
	ble _0207D0EE
	add r0, #0x2c
	sub r1, r4, r1
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #0x2
	bl _u32_div_f
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}
_0207D0EE:
	add r0, #0x2c
	sub r1, r1, r4
	mul r1, r0
	lsl r0, r1, #0x10
	mov r1, #0x4b
	lsl r1, r1, #0x2
	bl _u32_div_f
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r0, r4, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	pop {r4, pc}

	thumb_func_start FUN_0207D10C
FUN_0207D10C: ; 0x0207D10C
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, _0207D20C ; =0x00000295
	mov r1, #0x58
	ldrb r0, [r4, r0]
	add r2, r1, #0x0
	bl FUN_0207D0C8
	add r5, r0, #0x0
	ldr r0, _0207D20C ; =0x00000295
	mov r1, #0x31
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl FUN_0207D0C8
	add r2, r0, #0x0
	ldr r0, _0207D210 ; =0x000004C8
	add r1, r5, #0x0
	ldr r0, [r4, r0]
	bl FUN_0200C6E4
	ldr r0, _0207D214 ; =0x00000296
	mov r1, #0x6e
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl FUN_0207D0C8
	add r5, r0, #0x0
	ldr r0, _0207D214 ; =0x00000296
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl FUN_0207D0C8
	add r2, r0, #0x0
	ldr r0, _0207D218 ; =0x000004CC
	add r1, r5, #0x0
	ldr r0, [r4, r0]
	bl FUN_0200C6E4
	ldr r0, _0207D21C ; =0x00000297
	mov r1, #0x67
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl FUN_0207D0C8
	add r5, r0, #0x0
	ldr r0, _0207D21C ; =0x00000297
	mov r1, #0x5c
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl FUN_0207D0C8
	add r2, r0, #0x0
	mov r0, #0x4d
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	add r1, r5, #0x0
	bl FUN_0200C6E4
	mov r0, #0xa6
	lsl r0, r0, #0x2
	ldrb r0, [r4, r0]
	mov r1, #0x48
	mov r2, #0x57
	bl FUN_0207D0C8
	add r5, r0, #0x0
	mov r0, #0xa6
	lsl r0, r0, #0x2
	ldrb r0, [r4, r0]
	mov r1, #0x5c
	mov r2, #0x49
	bl FUN_0207D0C8
	add r2, r0, #0x0
	ldr r0, _0207D220 ; =0x000004D4
	add r1, r5, #0x0
	ldr r0, [r4, r0]
	bl FUN_0200C6E4
	ldr r0, _0207D224 ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x57
	bl FUN_0207D0C8
	add r5, r0, #0x0
	ldr r0, _0207D224 ; =0x00000299
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl FUN_0207D0C8
	add r2, r0, #0x0
	ldr r0, _0207D228 ; =0x000004D8
	add r1, r5, #0x0
	ldr r0, [r4, r0]
	bl FUN_0200C6E4
	ldr r0, _0207D210 ; =0x000004C8
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207D218 ; =0x000004CC
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	mov r0, #0x4d
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_020200A0
	ldr r0, _0207D220 ; =0x000004D4
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207D228 ; =0x000004D8
	mov r1, #0x1
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r3-r5, pc}
	nop
_0207D20C: .word 0x00000295
_0207D210: .word 0x000004C8
_0207D214: .word 0x00000296
_0207D218: .word 0x000004CC
_0207D21C: .word 0x00000297
_0207D220: .word 0x000004D4
_0207D224: .word 0x00000299
_0207D228: .word 0x000004D8

	thumb_func_start FUN_0207D22C
FUN_0207D22C: ; 0x0207D22C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0207D268 ; =0x000004C8
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207D26C ; =0x000004CC
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	mov r0, #0x4d
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r0, _0207D270 ; =0x000004D4
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	ldr r0, _0207D274 ; =0x000004D8
	mov r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_020200A0
	pop {r4, pc}
	nop
_0207D268: .word 0x000004C8
_0207D26C: .word 0x000004CC
_0207D270: .word 0x000004D4
_0207D274: .word 0x000004D8

	thumb_func_start FUN_0207D278
FUN_0207D278: ; 0x0207D278
	push {r4-r6, lr}
	sub sp, #0x8
	add r6, r1, #0x0
	add r5, r0, #0x0
	add r0, r6, #0x0
	mov r1, #0x1
	add r4, r2, #0x0
	bl FUN_0207FC5C
	add r3, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	mov r1, #0x1
	add r0, #0x1a
	lsl r1, r1, #0xa
	str r0, [sp, #0x4]
	ldr r0, [r5, r1]
	add r1, r1, #0x4
	ldr r1, [r5, r1]
	mov r2, #0x27
	bl FUN_0200C9D8
	add r0, r6, #0x0
	mov r1, #0x2
	bl FUN_0207FC5C
	add r4, #0x37
	add r2, r0, #0x0
	lsl r0, r4, #0x2
	add r1, r5, r0
	ldr r0, _0207D2C4 ; =0x00000408
	ldr r0, [r1, r0]
	add r1, r2, #0x7
	bl FUN_0200C664
	add sp, #0x8
	pop {r4-r6, pc}
	.balign 4
_0207D2C4: .word 0x00000408

	thumb_func_start FUN_0207D2C8
FUN_0207D2C8: ; 0x0207D2C8
	push {r3-r7, lr}
	sub sp, #0x8
	ldr r6, _0207D354 ; =0x00000408
	add r5, r0, #0x0
	mov r4, #0x37
	mov r7, #0x0
_0207D2D4:
	lsl r0, r4, #0x2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0x0
	bl FUN_020200A0
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x46
	bls _0207D2D4
	ldr r0, _0207D358 ; =0x0000068C
	ldrsb r0, [r5, r0]
	cmp r0, #0x6
	bne _0207D350
	mov r0, #0x0
	mov r1, #0x1
	str r0, [sp, #0x0]
	mov r0, #0x5
	lsl r1, r1, #0xa
	str r0, [sp, #0x4]
	ldr r0, [r5, r1]
	add r1, r1, #0x4
	ldr r1, [r5, r1]
	mov r2, #0x27
	mov r3, #0x88
	bl FUN_0200CA0C
	ldr r7, _0207D35C ; =0x000004E4
	ldr r6, _0207D360 ; =0x00000699
	mov r4, #0x0
_0207D312:
	ldrb r0, [r5, r6]
	cmp r4, r0
	bge _0207D33A
	lsl r0, r4, #0x2
	add r0, r5, r0
	ldr r0, [r0, r7]
	mov r1, #0x1
	bl FUN_020200A0
	lsl r1, r4, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	bl FUN_0207C1E8
	lsl r2, r4, #0x18
	add r1, r0, #0x0
	add r0, r5, #0x0
	lsr r2, r2, #0x18
	bl FUN_0207D278
_0207D33A:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0207D312
	mov r0, #0x52
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_02020130
_0207D350:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_0207D354: .word 0x00000408
_0207D358: .word 0x0000068C
_0207D35C: .word 0x000004E4
_0207D360: .word 0x00000699

	thumb_func_start FUN_0207D364
FUN_0207D364: ; 0x0207D364
	push {r3-r7, lr}
	ldr r7, _0207D3BC ; =0x00000698
	add r5, r0, #0x0
	mov r4, #0x0
	add r6, r7, #0x1
_0207D36E:
	ldrb r0, [r5, r7]
	lsl r0, r0, #0x2
	add r1, r4, r0
	ldrb r0, [r5, r6]
	cmp r1, r0
	bge _0207D3A0
	lsl r0, r4, #0x2
	add r1, r5, r0
	ldr r0, _0207D3C0 ; =0x000004E4
	ldr r0, [r1, r0]
	mov r1, #0x1
	bl FUN_020200A0
	lsl r1, r4, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	bl FUN_0207C1E8
	lsl r2, r4, #0x18
	add r1, r0, #0x0
	add r0, r5, #0x0
	lsr r2, r2, #0x18
	bl FUN_0207D278
	b _0207D3AE
_0207D3A0:
	lsl r0, r4, #0x2
	add r1, r5, r0
	ldr r0, _0207D3C0 ; =0x000004E4
	ldr r0, [r1, r0]
	mov r1, #0x0
	bl FUN_020200A0
_0207D3AE:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x8
	blo _0207D36E
	pop {r3-r7, pc}
	nop
_0207D3BC: .word 0x00000698
_0207D3C0: .word 0x000004E4

	thumb_func_start FUN_0207D3C4
FUN_0207D3C4: ; 0x0207D3C4
	ldr r1, _0207D3E8 ; =0x00000697
	ldrb r2, [r0, r1]
	ldr r1, _0207D3EC ; =0x00000514
	ldr r0, [r0, r1]
	lsl r1, r2, #0x1e
	lsr r3, r2, #0x2
	mov r2, #0x28
	mul r2, r3
	lsr r1, r1, #0x19
	add r1, #0x84
	add r2, #0x38
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r3, _0207D3F0 ; =FUN_0200C6E4
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bx r3
	nop
_0207D3E8: .word 0x00000697
_0207D3EC: .word 0x00000514
_0207D3F0: .word FUN_0200C6E4

	thumb_func_start FUN_0207D3F4
FUN_0207D3F4: ; 0x0207D3F4
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0x52
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_02020128
	cmp r0, #0x1
	bne _0207D414
	mov r0, #0x52
	lsl r0, r0, #0x4
	mov r1, #0x1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
_0207D414:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0207D418
FUN_0207D418: ; 0x0207D418
	push {r3-r7, lr}
	add r5, r0, #0x0
	cmp r1, #0x0
	bne _0207D43E
	mov r4, #0x0
	ldr r6, _0207D4C0 ; =0x00000524
	add r7, r4, #0x0
_0207D426:
	lsl r0, r4, #0x2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0x0
	bl FUN_020200A0
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x5
	blo _0207D426
	pop {r3-r7, pc}
_0207D43E:
	ldr r0, _0207D4C4 ; =0x00000295
	ldrb r1, [r5, r0]
	add r0, r0, #0x1
	ldrb r0, [r5, r0]
	add r4, r1, #0x0
	cmp r1, r0
	bge _0207D44E
	add r4, r0, #0x0
_0207D44E:
	ldr r0, _0207D4C8 ; =0x00000297
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0207D458
	add r4, r0, #0x0
_0207D458:
	mov r0, #0xa6
	lsl r0, r0, #0x2
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0207D464
	add r4, r0, #0x0
_0207D464:
	ldr r0, _0207D4CC ; =0x00000299
	ldrb r0, [r5, r0]
	cmp r4, r0
	bge _0207D46E
	add r4, r0, #0x0
_0207D46E:
	ldr r0, _0207D4C0 ; =0x00000524
	ldr r3, _0207D4D0 ; =UNK_020FA75C
	ldr r0, [r5, r0]
	add r2, r4, #0x0
	bl FUN_0207D4F4
	ldr r1, _0207D4D4 ; =0x00000296
	ldr r0, _0207D4D8 ; =0x00000528
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0207D4DC ; =UNK_020FA764
	add r2, r4, #0x0
	bl FUN_0207D4F4
	ldr r1, _0207D4C8 ; =0x00000297
	ldr r0, _0207D4E0 ; =0x0000052C
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0207D4E4 ; =UNK_020FA76C
	add r2, r4, #0x0
	bl FUN_0207D4F4
	mov r1, #0x53
	lsl r1, r1, #0x4
	ldr r0, [r5, r1]
	lsr r1, r1, #0x1
	ldrb r1, [r5, r1]
	ldr r3, _0207D4E8 ; =UNK_020FA774
	add r2, r4, #0x0
	bl FUN_0207D4F4
	ldr r1, _0207D4CC ; =0x00000299
	ldr r0, _0207D4EC ; =0x00000534
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r3, _0207D4F0 ; =UNK_020FA77C
	add r2, r4, #0x0
	bl FUN_0207D4F4
	pop {r3-r7, pc}
	nop
_0207D4C0: .word 0x00000524
_0207D4C4: .word 0x00000295
_0207D4C8: .word 0x00000297
_0207D4CC: .word 0x00000299
_0207D4D0: .word UNK_020FA75C
_0207D4D4: .word 0x00000296
_0207D4D8: .word 0x00000528
_0207D4DC: .word UNK_020FA764
_0207D4E0: .word 0x0000052C
_0207D4E4: .word UNK_020FA76C
_0207D4E8: .word UNK_020FA774
_0207D4EC: .word 0x00000534
_0207D4F0: .word UNK_020FA77C

	thumb_func_start FUN_0207D4F4
FUN_0207D4F4: ; 0x0207D4F4
	push {r4-r6, lr}
	add r5, r1, #0x0
	add r6, r0, #0x0
	add r4, r3, #0x0
	cmp r5, #0x0
	beq _0207D504
	cmp r5, r2
	beq _0207D50E
_0207D504:
	add r0, r6, #0x0
	mov r1, #0x0
	bl FUN_020200A0
	pop {r4-r6, pc}
_0207D50E:
	mov r1, #0x1
	bl FUN_020200A0
	mov r0, #0x0
	ldrsh r1, [r4, r0]
	mov r0, #0x4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	blt _0207D534
	sub r1, r1, r0
	lsl r2, r1, #0x8
	asr r1, r2, #0x7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #0x8
	mul r1, r5
	lsr r1, r1, #0x8
	add r1, r0, r1
	b _0207D546
_0207D534:
	sub r1, r0, r1
	lsl r2, r1, #0x8
	asr r1, r2, #0x7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #0x8
	mul r1, r5
	lsr r1, r1, #0x8
	sub r1, r0, r1
_0207D546:
	mov r0, #0x2
	ldrsh r2, [r4, r0]
	mov r0, #0x6
	ldrsh r0, [r4, r0]
	cmp r2, r0
	blt _0207D566
	sub r2, r2, r0
	lsl r3, r2, #0x8
	asr r2, r3, #0x7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #0x8
	mul r2, r5
	lsr r2, r2, #0x8
	add r2, r0, r2
	b _0207D578
_0207D566:
	sub r2, r0, r2
	lsl r3, r2, #0x8
	asr r2, r3, #0x7
	lsr r2, r2, #0x18
	add r2, r3, r2
	asr r2, r2, #0x8
	mul r2, r5
	lsr r2, r2, #0x8
	sub r2, r0, r2
_0207D578:
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r6, #0x0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C6E4
	add r0, r6, #0x0
	mov r1, #0x0
	bl FUN_02020208
	add r0, r6, #0x0
	mov r1, #0x0
	bl FUN_02020130
	pop {r4-r6, pc}

	thumb_func_start FUN_0207D598
FUN_0207D598: ; 0x0207D598
	push {r3-r7, lr}
	mov r7, #0x1
	ldr r6, _0207D5B8 ; =0x00000524
	add r5, r0, #0x0
	mov r4, #0x0
	lsl r7, r7, #0xc
_0207D5A4:
	ldr r0, [r5, r6]
	add r1, r7, #0x0
	bl FUN_020201E4
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x5
	blo _0207D5A4
	pop {r3-r7, pc}
	nop
_0207D5B8: .word 0x00000524
