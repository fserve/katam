	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080B3D40
sub_080B3D40: @ 0x080B3D40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B3DAC
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B3D8C
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #0x40
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	ldr r1, _080B3D7C @ =0xFFFFFE00
	adds r2, r0, #0
	cmp r3, r1
	bge _080B3D80
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r2]
	b _080B3DFC
	.align 2, 0
_080B3D7C: .4byte 0xFFFFFE00
_080B3D80:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r3, r0
	ble _080B3DFC
	strh r0, [r2]
	b _080B3DFC
_080B3D8C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080B3DF0
	ldr r1, _080B3DA8 @ =0xFFFFFE00
	b _080B3DF6
	.align 2, 0
_080B3DA8: .4byte 0xFFFFFE00
_080B3DAC:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080B3DD8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080B3DD4 @ =0xFFFFFEE0
	adds r2, r1, #0
	cmp r0, r3
	blt _080B3DF0
	movs r1, #0x90
	lsls r1, r1, #1
	cmp r0, r1
	ble _080B3DFC
	b _080B3DFA
	.align 2, 0
_080B3DD4: .4byte 0xFFFFFEE0
_080B3DD8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080B3DF4
_080B3DF0:
	strh r3, [r2]
	b _080B3DFC
_080B3DF4:
	ldr r1, _080B3E10 @ =0xFFFFFEE0
_080B3DF6:
	cmp r0, r1
	bge _080B3DFC
_080B3DFA:
	strh r1, [r2]
_080B3DFC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3E14
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080B3E1C
	b _080B3E6C
	.align 2, 0
_080B3E10: .4byte 0xFFFFFEE0
_080B3E14:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080B3E6C
_080B3E1C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B3E6C
	ldr r2, _080B3E5C @ =sub_080B3D40
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080B3E60 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3E64 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _080B3E68 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	strh r0, [r4, #4]
	b _080B3EBA
	.align 2, 0
_080B3E5C: .4byte sub_080B3D40
_080B3E60: .4byte gRngVal
_080B3E64: .4byte 0x00196225
_080B3E68: .4byte 0x3C6EF35F
_080B3E6C:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r3, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r2, r3, r0
	adds r5, r1, #0
	cmp r2, #0
	blt _080B3E8C
	ldr r0, _080B3E88 @ =0x00003BFF
	cmp r2, r0
	ble _080B3E94
	b _080B3EBA
	.align 2, 0
_080B3E88: .4byte 0x00003BFF
_080B3E8C:
	subs r1, r0, r3
	ldr r0, _080B3EA8 @ =0x00003BFF
	cmp r1, r0
	bgt _080B3EBA
_080B3E94:
	ldr r0, [r5]
	ldr r0, [r0, #0x44]
	ldr r1, [r4, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B3EAC
	ldr r0, _080B3EA8 @ =0x00003BFF
	cmp r2, r0
	ble _080B3EB4
	b _080B3EBA
	.align 2, 0
_080B3EA8: .4byte 0x00003BFF
_080B3EAC:
	subs r1, r1, r0
	ldr r0, _080B3EC0 @ =0x00003BFF
	cmp r1, r0
	bgt _080B3EBA
_080B3EB4:
	adds r0, r4, #0
	bl sub_080B3CD8
_080B3EBA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3EC0: .4byte 0x00003BFF

	thumb_func_start sub_080B3EC4
sub_080B3EC4: @ 0x080B3EC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080B3EDC
	adds r0, r4, #0
	bl sub_080B3F64
	b _080B3EFC
_080B3EDC:
	ldr r2, _080B3F04 @ =sub_080B3C44
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r5]
	ldrb r1, [r0, #0x11]
	adds r1, #1
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080B3EFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F04: .4byte sub_080B3C44

	thumb_func_start sub_080B3F08
sub_080B3F08: @ 0x080B3F08
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080B3F32
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080B3F32:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	beq _080B3F5E
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080B3F5E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080B3CD8
_080B3F5E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080B3F64
sub_080B3F64: @ 0x080B3F64
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3F9C @ =sub_080B3D40
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	ldr r2, _080B3FA0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3FA4 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _080B3FA8 @ =0x3C6EF35F
	adds r1, r1, r0
	str r1, [r2]
	lsrs r1, r1, #0x10
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3F9C: .4byte sub_080B3D40
_080B3FA0: .4byte gRngVal
_080B3FA4: .4byte 0x00196225
_080B3FA8: .4byte 0x3C6EF35F
