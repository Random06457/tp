.include "macros.inc"

.section .text, "ax" # 8035be38


.global GXSetMisc
GXSetMisc:
/* 8035BE38 00358D78  2C 03 00 02 */	cmpwi r3, 2
/* 8035BE3C 00358D7C  41 82 00 60 */	beq lbl_8035BE9C
/* 8035BE40 00358D80  40 80 00 14 */	bge lbl_8035BE54
/* 8035BE44 00358D84  2C 03 00 00 */	cmpwi r3, 0
/* 8035BE48 00358D88  4D 82 00 20 */	beqlr 
/* 8035BE4C 00358D8C  40 80 00 14 */	bge lbl_8035BE60
/* 8035BE50 00358D90  4E 80 00 20 */	blr 
lbl_8035BE54:
/* 8035BE54 00358D94  2C 03 00 04 */	cmpwi r3, 4
/* 8035BE58 00358D98  4C 80 00 20 */	bgelr 
/* 8035BE5C 00358D9C  48 00 00 58 */	b lbl_8035BEB4
lbl_8035BE60:
/* 8035BE60 00358DA0  80 A2 CB 80 */	lwz r5, lbl_80456580-_SDA2_BASE_(r2)
/* 8035BE64 00358DA4  38 00 00 01 */	li r0, 1
/* 8035BE68 00358DA8  B0 85 00 04 */	sth r4, 4(r5)
/* 8035BE6C 00358DAC  A0 65 00 04 */	lhz r3, 4(r5)
/* 8035BE70 00358DB0  7C 63 00 34 */	cntlzw r3, r3
/* 8035BE74 00358DB4  54 63 DC 3E */	rlwinm r3, r3, 0x1b, 0x10, 0x1f
/* 8035BE78 00358DB8  B0 65 00 00 */	sth r3, 0(r5)
/* 8035BE7C 00358DBC  B0 05 00 02 */	sth r0, 2(r5)
/* 8035BE80 00358DC0  A0 05 00 04 */	lhz r0, 4(r5)
/* 8035BE84 00358DC4  28 00 00 00 */	cmplwi r0, 0
/* 8035BE88 00358DC8  4D 82 00 20 */	beqlr 
/* 8035BE8C 00358DCC  80 05 05 AC */	lwz r0, 0x5ac(r5)
/* 8035BE90 00358DD0  60 00 00 08 */	ori r0, r0, 8
/* 8035BE94 00358DD4  90 05 05 AC */	stw r0, 0x5ac(r5)
/* 8035BE98 00358DD8  4E 80 00 20 */	blr 
lbl_8035BE9C:
/* 8035BE9C 00358DDC  7C 84 00 D0 */	neg r4, r4
/* 8035BEA0 00358DE0  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035BEA4 00358DE4  30 04 FF FF */	addic r0, r4, -1
/* 8035BEA8 00358DE8  7C 00 21 10 */	subfe r0, r0, r4
/* 8035BEAC 00358DEC  98 03 05 A9 */	stb r0, 0x5a9(r3)
/* 8035BEB0 00358DF0  4E 80 00 20 */	blr 
lbl_8035BEB4:
/* 8035BEB4 00358DF4  7C 84 00 D0 */	neg r4, r4
/* 8035BEB8 00358DF8  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035BEBC 00358DFC  30 04 FF FF */	addic r0, r4, -1
/* 8035BEC0 00358E00  7C 00 21 10 */	subfe r0, r0, r4
/* 8035BEC4 00358E04  98 03 05 AA */	stb r0, 0x5aa(r3)
/* 8035BEC8 00358E08  4E 80 00 20 */	blr 

.global GXFlush
GXFlush:
/* 8035BECC 00358E0C  7C 08 02 A6 */	mflr r0
/* 8035BED0 00358E10  90 01 00 04 */	stw r0, 4(r1)
/* 8035BED4 00358E14  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035BED8 00358E18  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035BEDC 00358E1C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8035BEE0 00358E20  28 00 00 00 */	cmplwi r0, 0
/* 8035BEE4 00358E24  41 82 00 08 */	beq lbl_8035BEEC
/* 8035BEE8 00358E28  48 00 07 FD */	bl __GXSetDirtyState
lbl_8035BEEC:
/* 8035BEEC 00358E2C  38 00 00 00 */	li r0, 0
/* 8035BEF0 00358E30  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8035BEF4 00358E34  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8035BEF8 00358E38  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BEFC 00358E3C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF00 00358E40  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF04 00358E44  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF08 00358E48  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF0C 00358E4C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF10 00358E50  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BF14 00358E54  4B FD DD E5 */	bl PPCSync
/* 8035BF18 00358E58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035BF1C 00358E5C  38 21 00 08 */	addi r1, r1, 8
/* 8035BF20 00358E60  7C 08 03 A6 */	mtlr r0
/* 8035BF24 00358E64  4E 80 00 20 */	blr 

.global __GXAbort
__GXAbort:
/* 8035BF28 00358E68  7C 08 02 A6 */	mflr r0
/* 8035BF2C 00358E6C  90 01 00 04 */	stw r0, 4(r1)
/* 8035BF30 00358E70  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035BF34 00358E74  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8035BF38 00358E78  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035BF3C 00358E7C  88 03 05 AA */	lbz r0, 0x5aa(r3)
/* 8035BF40 00358E80  28 00 00 00 */	cmplwi r0, 0
/* 8035BF44 00358E84  41 82 00 B0 */	beq lbl_8035BFF4
/* 8035BF48 00358E88  4B FF EF 69 */	bl GXGetGPFifo
/* 8035BF4C 00358E8C  28 03 00 00 */	cmplwi r3, 0
/* 8035BF50 00358E90  41 82 00 A4 */	beq lbl_8035BFF4
/* 8035BF54 00358E94  80 6D 93 AC */	lwz r3, lbl_8045192C-_SDA_BASE_(r13)
/* 8035BF58 00358E98  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035BF5C 00358E9C  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035BF60 00358EA0  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035BF64:
/* 8035BF64 00358EA4  7C 80 23 78 */	mr r0, r4
/* 8035BF68 00358EA8  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035BF6C 00358EAC  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035BF70 00358EB0  7C 04 00 40 */	cmplw r4, r0
/* 8035BF74 00358EB4  40 82 FF F0 */	bne lbl_8035BF64
/* 8035BF78 00358EB8  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035BF7C 00358EBC  7C 1B 1B 78 */	or r27, r0, r3
lbl_8035BF80:
/* 8035BF80 00358EC0  4B FE 67 7D */	bl OSGetTime
/* 8035BF84 00358EC4  38 00 00 00 */	li r0, 0
/* 8035BF88 00358EC8  3B E4 00 00 */	addi r31, r4, 0
/* 8035BF8C 00358ECC  3B C3 00 00 */	addi r30, r3, 0
/* 8035BF90 00358ED0  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035BF94 00358ED4  3B A0 00 08 */	li r29, 8
lbl_8035BF98:
/* 8035BF98 00358ED8  4B FE 67 65 */	bl OSGetTime
/* 8035BF9C 00358EDC  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035BFA0 00358EE0  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035BFA4 00358EE4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035BFA8 00358EE8  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035BFAC 00358EEC  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035BFB0 00358EF0  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035BFB4 00358EF4  7C 63 00 D1 */	neg. r3, r3
/* 8035BFB8 00358EF8  41 82 FF E0 */	beq lbl_8035BF98
/* 8035BFBC 00358EFC  80 6D 93 AC */	lwz r3, lbl_8045192C-_SDA_BASE_(r13)
/* 8035BFC0 00358F00  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035BFC4 00358F04  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035BFC8 00358F08  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035BFCC:
/* 8035BFCC 00358F0C  7C 80 23 78 */	mr r0, r4
/* 8035BFD0 00358F10  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035BFD4 00358F14  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035BFD8 00358F18  7C 04 00 40 */	cmplw r4, r0
/* 8035BFDC 00358F1C  40 82 FF F0 */	bne lbl_8035BFCC
/* 8035BFE0 00358F20  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035BFE4 00358F24  7C 00 1B 78 */	or r0, r0, r3
/* 8035BFE8 00358F28  7C 00 D8 40 */	cmplw r0, r27
/* 8035BFEC 00358F2C  7C 1B 03 78 */	mr r27, r0
/* 8035BFF0 00358F30  40 82 FF 90 */	bne lbl_8035BF80
lbl_8035BFF4:
/* 8035BFF4 00358F34  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8035BFF8 00358F38  38 00 00 01 */	li r0, 1
/* 8035BFFC 00358F3C  3B 63 30 00 */	addi r27, r3, 0xCC003000@l
/* 8035C000 00358F40  94 1B 00 18 */	stwu r0, 0x18(r27)
/* 8035C004 00358F44  4B FE 66 F9 */	bl OSGetTime
/* 8035C008 00358F48  38 00 00 00 */	li r0, 0
/* 8035C00C 00358F4C  3B E4 00 00 */	addi r31, r4, 0
/* 8035C010 00358F50  3B C3 00 00 */	addi r30, r3, 0
/* 8035C014 00358F54  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035C018 00358F58  3B A0 00 32 */	li r29, 0x32
lbl_8035C01C:
/* 8035C01C 00358F5C  4B FE 66 E1 */	bl OSGetTime
/* 8035C020 00358F60  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035C024 00358F64  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035C028 00358F68  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C02C 00358F6C  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035C030 00358F70  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035C034 00358F74  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035C038 00358F78  7C 63 00 D1 */	neg. r3, r3
/* 8035C03C 00358F7C  41 82 FF E0 */	beq lbl_8035C01C
/* 8035C040 00358F80  3B C0 00 00 */	li r30, 0
/* 8035C044 00358F84  93 DB 00 00 */	stw r30, 0(r27)
/* 8035C048 00358F88  4B FE 66 B5 */	bl OSGetTime
/* 8035C04C 00358F8C  3B 84 00 00 */	addi r28, r4, 0
/* 8035C050 00358F90  3B A3 00 00 */	addi r29, r3, 0
/* 8035C054 00358F94  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 8035C058 00358F98  3B C0 00 05 */	li r30, 5
lbl_8035C05C:
/* 8035C05C 00358F9C  4B FE 66 A1 */	bl OSGetTime
/* 8035C060 00358FA0  7C 9C 20 10 */	subfc r4, r28, r4
/* 8035C064 00358FA4  7C 1D 19 10 */	subfe r0, r29, r3
/* 8035C068 00358FA8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C06C 00358FAC  7C 04 F0 10 */	subfc r0, r4, r30
/* 8035C070 00358FB0  7C 63 F9 10 */	subfe r3, r3, r31
/* 8035C074 00358FB4  7C 7F F9 10 */	subfe r3, r31, r31
/* 8035C078 00358FB8  7C 63 00 D1 */	neg. r3, r3
/* 8035C07C 00358FBC  41 82 FF E0 */	beq lbl_8035C05C
/* 8035C080 00358FC0  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8035C084 00358FC4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035C088 00358FC8  38 21 00 28 */	addi r1, r1, 0x28
/* 8035C08C 00358FCC  7C 08 03 A6 */	mtlr r0
/* 8035C090 00358FD0  4E 80 00 20 */	blr 

.global GXAbortFrame
GXAbortFrame:
/* 8035C094 00358FD4  7C 08 02 A6 */	mflr r0
/* 8035C098 00358FD8  90 01 00 04 */	stw r0, 4(r1)
/* 8035C09C 00358FDC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035C0A0 00358FE0  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 8035C0A4 00358FE4  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035C0A8 00358FE8  88 03 05 AA */	lbz r0, 0x5aa(r3)
/* 8035C0AC 00358FEC  28 00 00 00 */	cmplwi r0, 0
/* 8035C0B0 00358FF0  41 82 00 B0 */	beq lbl_8035C160
/* 8035C0B4 00358FF4  4B FF ED FD */	bl GXGetGPFifo
/* 8035C0B8 00358FF8  28 03 00 00 */	cmplwi r3, 0
/* 8035C0BC 00358FFC  41 82 00 A4 */	beq lbl_8035C160
/* 8035C0C0 00359000  80 6D 93 AC */	lwz r3, lbl_8045192C-_SDA_BASE_(r13)
/* 8035C0C4 00359004  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035C0C8 00359008  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035C0CC 0035900C  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035C0D0:
/* 8035C0D0 00359010  7C 80 23 78 */	mr r0, r4
/* 8035C0D4 00359014  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035C0D8 00359018  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035C0DC 0035901C  7C 04 00 40 */	cmplw r4, r0
/* 8035C0E0 00359020  40 82 FF F0 */	bne lbl_8035C0D0
/* 8035C0E4 00359024  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035C0E8 00359028  7C 1B 1B 78 */	or r27, r0, r3
lbl_8035C0EC:
/* 8035C0EC 0035902C  4B FE 66 11 */	bl OSGetTime
/* 8035C0F0 00359030  38 00 00 00 */	li r0, 0
/* 8035C0F4 00359034  3B E4 00 00 */	addi r31, r4, 0
/* 8035C0F8 00359038  3B C3 00 00 */	addi r30, r3, 0
/* 8035C0FC 0035903C  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035C100 00359040  3B A0 00 08 */	li r29, 8
lbl_8035C104:
/* 8035C104 00359044  4B FE 65 F9 */	bl OSGetTime
/* 8035C108 00359048  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035C10C 0035904C  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035C110 00359050  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C114 00359054  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035C118 00359058  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035C11C 0035905C  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035C120 00359060  7C 63 00 D1 */	neg. r3, r3
/* 8035C124 00359064  41 82 FF E0 */	beq lbl_8035C104
/* 8035C128 00359068  80 6D 93 AC */	lwz r3, lbl_8045192C-_SDA_BASE_(r13)
/* 8035C12C 0035906C  38 C3 00 4E */	addi r6, r3, 0x4e
/* 8035C130 00359070  A0 83 00 4E */	lhz r4, 0x4e(r3)
/* 8035C134 00359074  38 A3 00 50 */	addi r5, r3, 0x50
lbl_8035C138:
/* 8035C138 00359078  7C 80 23 78 */	mr r0, r4
/* 8035C13C 0035907C  A0 86 00 00 */	lhz r4, 0(r6)
/* 8035C140 00359080  A0 65 00 00 */	lhz r3, 0(r5)
/* 8035C144 00359084  7C 04 00 40 */	cmplw r4, r0
/* 8035C148 00359088  40 82 FF F0 */	bne lbl_8035C138
/* 8035C14C 0035908C  54 80 80 1E */	slwi r0, r4, 0x10
/* 8035C150 00359090  7C 00 1B 78 */	or r0, r0, r3
/* 8035C154 00359094  7C 00 D8 40 */	cmplw r0, r27
/* 8035C158 00359098  7C 1B 03 78 */	mr r27, r0
/* 8035C15C 0035909C  40 82 FF 90 */	bne lbl_8035C0EC
lbl_8035C160:
/* 8035C160 003590A0  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8035C164 003590A4  38 00 00 01 */	li r0, 1
/* 8035C168 003590A8  3B 63 30 00 */	addi r27, r3, 0xCC003000@l
/* 8035C16C 003590AC  94 1B 00 18 */	stwu r0, 0x18(r27)
/* 8035C170 003590B0  4B FE 65 8D */	bl OSGetTime
/* 8035C174 003590B4  38 00 00 00 */	li r0, 0
/* 8035C178 003590B8  3B E4 00 00 */	addi r31, r4, 0
/* 8035C17C 003590BC  3B C3 00 00 */	addi r30, r3, 0
/* 8035C180 003590C0  6C 1C 80 00 */	xoris r28, r0, 0x8000
/* 8035C184 003590C4  3B A0 00 32 */	li r29, 0x32
lbl_8035C188:
/* 8035C188 003590C8  4B FE 65 75 */	bl OSGetTime
/* 8035C18C 003590CC  7C 9F 20 10 */	subfc r4, r31, r4
/* 8035C190 003590D0  7C 1E 19 10 */	subfe r0, r30, r3
/* 8035C194 003590D4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C198 003590D8  7C 04 E8 10 */	subfc r0, r4, r29
/* 8035C19C 003590DC  7C 63 E1 10 */	subfe r3, r3, r28
/* 8035C1A0 003590E0  7C 7C E1 10 */	subfe r3, r28, r28
/* 8035C1A4 003590E4  7C 63 00 D1 */	neg. r3, r3
/* 8035C1A8 003590E8  41 82 FF E0 */	beq lbl_8035C188
/* 8035C1AC 003590EC  3B C0 00 00 */	li r30, 0
/* 8035C1B0 003590F0  93 DB 00 00 */	stw r30, 0(r27)
/* 8035C1B4 003590F4  4B FE 65 49 */	bl OSGetTime
/* 8035C1B8 003590F8  3B 84 00 00 */	addi r28, r4, 0
/* 8035C1BC 003590FC  3B A3 00 00 */	addi r29, r3, 0
/* 8035C1C0 00359100  6F DF 80 00 */	xoris r31, r30, 0x8000
/* 8035C1C4 00359104  3B C0 00 05 */	li r30, 5
lbl_8035C1C8:
/* 8035C1C8 00359108  4B FE 65 35 */	bl OSGetTime
/* 8035C1CC 0035910C  7C 9C 20 10 */	subfc r4, r28, r4
/* 8035C1D0 00359110  7C 1D 19 10 */	subfe r0, r29, r3
/* 8035C1D4 00359114  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8035C1D8 00359118  7C 04 F0 10 */	subfc r0, r4, r30
/* 8035C1DC 0035911C  7C 63 F9 10 */	subfe r3, r3, r31
/* 8035C1E0 00359120  7C 7F F9 10 */	subfe r3, r31, r31
/* 8035C1E4 00359124  7C 63 00 D1 */	neg. r3, r3
/* 8035C1E8 00359128  41 82 FF E0 */	beq lbl_8035C1C8
/* 8035C1EC 0035912C  4B FF EC C5 */	bl GXGetGPFifo
/* 8035C1F0 00359130  28 03 00 00 */	cmplwi r3, 0
/* 8035C1F4 00359134  41 82 00 54 */	beq lbl_8035C248
/* 8035C1F8 00359138  4B FF EB 5D */	bl __GXCleanGPFifo
/* 8035C1FC 0035913C  4B FF D2 D1 */	bl __GXInitRevisionBits
/* 8035C200 00359140  80 62 CB 80 */	lwz r3, lbl_80456580-_SDA2_BASE_(r2)
/* 8035C204 00359144  38 00 00 00 */	li r0, 0
/* 8035C208 00359148  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 8035C20C 0035914C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 8035C210 00359150  28 00 00 00 */	cmplwi r0, 0
/* 8035C214 00359154  41 82 00 08 */	beq lbl_8035C21C
/* 8035C218 00359158  48 00 04 CD */	bl __GXSetDirtyState
lbl_8035C21C:
/* 8035C21C 0035915C  38 00 00 00 */	li r0, 0
/* 8035C220 00359160  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8035C224 00359164  90 03 80 00 */	stw r0, 0xCC008000@l(r3)
/* 8035C228 00359168  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C22C 0035916C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C230 00359170  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C234 00359174  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C238 00359178  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C23C 0035917C  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C240 00359180  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035C244 00359184  4B FD DA B5 */	bl PPCSync
lbl_8035C248:
/* 8035C248 00359188  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 8035C24C 0035918C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035C250 00359190  38 21 00 28 */	addi r1, r1, 0x28
/* 8035C254 00359194  7C 08 03 A6 */	mtlr r0
/* 8035C258 00359198  4E 80 00 20 */	blr 

.global GXSetDrawDone
GXSetDrawDone:
/* 8035C25C 0035919C  7C 08 02 A6 */	mflr r0
/* 8035C260 003591A0  90 01 00 04 */	stw r0, 4(r1)
/* 8035C264 003591A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C268 003591A8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C26C 003591AC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C270 003591B0  4B FE 14 85 */	bl __RAS_OSDisableInterrupts_begin 
/* 8035C274 003591B4  38 00 00 61 */	li r0, 0x61
/* 8035C278 003591B8  80 82 CB 80 */	lwz r4, lbl_80456580-_SDA2_BASE_(r2)
/* 8035C27C 003591BC  3C C0 CC 01 */	lis r6, 0xCC008000@ha
/* 8035C280 003591C0  3C A0 45 00 */	lis r5, 0x45000002@ha
/* 8035C284 003591C4  98 06 80 00 */	stb r0, 0xCC008000@l(r6)
/* 8035C288 003591C8  38 05 00 02 */	addi r0, r5, 0x45000002@l
/* 8035C28C 003591CC  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8035C290 003591D0  7C 7E 1B 78 */	mr r30, r3
/* 8035C294 003591D4  80 04 05 AC */	lwz r0, 0x5ac(r4)
/* 8035C298 003591D8  28 00 00 00 */	cmplwi r0, 0
/* 8035C29C 003591DC  41 82 00 08 */	beq lbl_8035C2A4
/* 8035C2A0 003591E0  48 00 04 45 */	bl __GXSetDirtyState
lbl_8035C2A4:
/* 8035C2A4 003591E4  3B E0 00 00 */	li r31, 0
/* 8035C2A8 003591E8  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 8035C2AC 003591EC  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 8035C2B0 003591F0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2B4 003591F4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2B8 003591F8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2BC 003591FC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C0 00359200  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C4 00359204  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C8 00359208  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2CC 0035920C  4B FD DA 2D */	bl PPCSync
/* 8035C2D0 00359210  9B ED 93 F0 */	stb r31, lbl_80451970-_SDA_BASE_(r13)
/* 8035C2D4 00359214  7F C3 F3 78 */	mr r3, r30
/* 8035C2D8 00359218  4B FE 14 45 */	bl OSRestoreInterrupts
/* 8035C2DC 0035921C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C2E0 00359220  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C2E4 00359224  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C2E8 00359228  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C2EC 0035922C  7C 08 03 A6 */	mtlr r0
/* 8035C2F0 00359230  4E 80 00 20 */	blr 

.global GXDrawDone
GXDrawDone:
/* 8035C2F4 00359234  7C 08 02 A6 */	mflr r0
/* 8035C2F8 00359238  90 01 00 04 */	stw r0, 4(r1)
/* 8035C2FC 0035923C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C300 00359240  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C304 00359244  4B FE 13 F1 */	bl __RAS_OSDisableInterrupts_begin 
/* 8035C308 00359248  38 00 00 61 */	li r0, 0x61
/* 8035C30C 0035924C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8035C310 00359250  3C 80 45 00 */	lis r4, 0x45000002@ha
/* 8035C314 00359254  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8035C318 00359258  38 04 00 02 */	addi r0, r4, 0x45000002@l
/* 8035C31C 0035925C  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8035C320 00359260  7C 7F 1B 78 */	mr r31, r3
/* 8035C324 00359264  4B FF FB A9 */	bl GXFlush
/* 8035C328 00359268  38 00 00 00 */	li r0, 0
/* 8035C32C 0035926C  98 0D 93 F0 */	stb r0, lbl_80451970-_SDA_BASE_(r13)
/* 8035C330 00359270  7F E3 FB 78 */	mr r3, r31
/* 8035C334 00359274  4B FE 13 E9 */	bl OSRestoreInterrupts
/* 8035C338 00359278  4B FE 13 BD */	bl __RAS_OSDisableInterrupts_begin 
/* 8035C33C 0035927C  7C 7F 1B 78 */	mr r31, r3
/* 8035C340 00359280  48 00 00 0C */	b lbl_8035C34C
lbl_8035C344:
/* 8035C344 00359284  38 6D 93 F4 */	addi r3, r13, lbl_80451974-_SDA_BASE_
/* 8035C348 00359288  4B FE 58 65 */	bl OSSleepThread
lbl_8035C34C:
/* 8035C34C 0035928C  88 0D 93 F0 */	lbz r0, lbl_80451970-_SDA_BASE_(r13)
/* 8035C350 00359290  28 00 00 00 */	cmplwi r0, 0
/* 8035C354 00359294  41 82 FF F0 */	beq lbl_8035C344
/* 8035C358 00359298  7F E3 FB 78 */	mr r3, r31
/* 8035C35C 0035929C  4B FE 13 C1 */	bl OSRestoreInterrupts
/* 8035C360 003592A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C364 003592A4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C368 003592A8  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C36C 003592AC  7C 08 03 A6 */	mtlr r0
/* 8035C370 003592B0  4E 80 00 20 */	blr 

.global GXPixModeSync
GXPixModeSync:
/* 8035C374 003592B4  38 00 00 61 */	li r0, 0x61
/* 8035C378 003592B8  80 82 CB 80 */	lwz r4, lbl_80456580-_SDA2_BASE_(r2)
/* 8035C37C 003592BC  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 8035C380 003592C0  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 8035C384 003592C4  38 00 00 00 */	li r0, 0
/* 8035C388 003592C8  80 64 01 DC */	lwz r3, 0x1dc(r4)
/* 8035C38C 003592CC  90 65 80 00 */	stw r3, -0x8000(r5)
/* 8035C390 003592D0  B0 04 00 02 */	sth r0, 2(r4)
/* 8035C394 003592D4  4E 80 00 20 */	blr 

.global GXPokeAlphaMode
GXPokeAlphaMode:
/* 8035C398 003592D8  80 AD 93 A8 */	lwz r5, lbl_80451928-_SDA_BASE_(r13)
/* 8035C39C 003592DC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035C3A0 003592E0  50 60 40 2E */	rlwimi r0, r3, 8, 0, 0x17
/* 8035C3A4 003592E4  B0 05 00 06 */	sth r0, 6(r5)
/* 8035C3A8 003592E8  4E 80 00 20 */	blr 

.global GXPokeAlphaRead
GXPokeAlphaRead:
/* 8035C3AC 003592EC  38 A0 00 00 */	li r5, 0
/* 8035C3B0 003592F0  80 8D 93 A8 */	lwz r4, lbl_80451928-_SDA_BASE_(r13)
/* 8035C3B4 003592F4  50 65 07 BE */	rlwimi r5, r3, 0, 0x1e, 0x1f
/* 8035C3B8 003592F8  38 00 00 01 */	li r0, 1
/* 8035C3BC 003592FC  38 65 00 00 */	addi r3, r5, 0
/* 8035C3C0 00359300  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 8035C3C4 00359304  B0 64 00 08 */	sth r3, 8(r4)
/* 8035C3C8 00359308  4E 80 00 20 */	blr 

.global GXPokeAlphaUpdate
GXPokeAlphaUpdate:
/* 8035C3CC 0035930C  80 8D 93 A8 */	lwz r4, lbl_80451928-_SDA_BASE_(r13)
/* 8035C3D0 00359310  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C3D4 00359314  A0 64 00 02 */	lhz r3, 2(r4)
/* 8035C3D8 00359318  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8035C3DC 0035931C  B0 64 00 02 */	sth r3, 2(r4)
/* 8035C3E0 00359320  4E 80 00 20 */	blr 

.global GXPokeBlendMode
GXPokeBlendMode:
/* 8035C3E4 00359324  80 ED 93 A8 */	lwz r7, lbl_80451928-_SDA_BASE_(r13)
/* 8035C3E8 00359328  2C 03 00 01 */	cmpwi r3, 1
/* 8035C3EC 0035932C  39 20 00 01 */	li r9, 1
/* 8035C3F0 00359330  A1 47 00 02 */	lhz r10, 2(r7)
/* 8035C3F4 00359334  41 82 00 10 */	beq lbl_8035C404
/* 8035C3F8 00359338  2C 03 00 03 */	cmpwi r3, 3
/* 8035C3FC 0035933C  41 82 00 08 */	beq lbl_8035C404
/* 8035C400 00359340  39 20 00 00 */	li r9, 0
lbl_8035C404:
/* 8035C404 00359344  20 03 00 03 */	subfic r0, r3, 3
/* 8035C408 00359348  80 ED 93 A8 */	lwz r7, lbl_80451928-_SDA_BASE_(r13)
/* 8035C40C 0035934C  7C 08 00 34 */	cntlzw r8, r0
/* 8035C410 00359350  20 03 00 02 */	subfic r0, r3, 2
/* 8035C414 00359354  51 2A 07 FE */	rlwimi r10, r9, 0, 0x1f, 0x1f
/* 8035C418 00359358  55 03 D9 7E */	srwi r3, r8, 5
/* 8035C41C 0035935C  39 0A 00 00 */	addi r8, r10, 0
/* 8035C420 00359360  7C 00 00 34 */	cntlzw r0, r0
/* 8035C424 00359364  50 68 5D 28 */	rlwimi r8, r3, 0xb, 0x14, 0x14
/* 8035C428 00359368  50 08 E7 BC */	rlwimi r8, r0, 0x1c, 0x1e, 0x1e
/* 8035C42C 0035936C  50 C8 64 26 */	rlwimi r8, r6, 0xc, 0x10, 0x13
/* 8035C430 00359370  50 88 45 6E */	rlwimi r8, r4, 8, 0x15, 0x17
/* 8035C434 00359374  38 00 00 41 */	li r0, 0x41
/* 8035C438 00359378  50 A8 2E 34 */	rlwimi r8, r5, 5, 0x18, 0x1a
/* 8035C43C 0035937C  50 08 C0 0E */	rlwimi r8, r0, 0x18, 0, 7
/* 8035C440 00359380  B1 07 00 02 */	sth r8, 2(r7)
/* 8035C444 00359384  4E 80 00 20 */	blr 

.global GXPokeColorUpdate
GXPokeColorUpdate:
/* 8035C448 00359388  80 8D 93 A8 */	lwz r4, lbl_80451928-_SDA_BASE_(r13)
/* 8035C44C 0035938C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C450 00359390  A0 64 00 02 */	lhz r3, 2(r4)
/* 8035C454 00359394  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 8035C458 00359398  B0 64 00 02 */	sth r3, 2(r4)
/* 8035C45C 0035939C  4E 80 00 20 */	blr 

.global GXPokeDstAlpha
GXPokeDstAlpha:
/* 8035C460 003593A0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035C464 003593A4  80 8D 93 A8 */	lwz r4, lbl_80451928-_SDA_BASE_(r13)
/* 8035C468 003593A8  38 A0 00 00 */	li r5, 0
/* 8035C46C 003593AC  50 05 06 3E */	rlwimi r5, r0, 0, 0x18, 0x1f
/* 8035C470 003593B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C474 003593B4  38 65 00 00 */	addi r3, r5, 0
/* 8035C478 003593B8  50 03 45 EE */	rlwimi r3, r0, 8, 0x17, 0x17
/* 8035C47C 003593BC  B0 64 00 04 */	sth r3, 4(r4)
/* 8035C480 003593C0  4E 80 00 20 */	blr 

.global GXPokeDither
GXPokeDither:
/* 8035C484 003593C4  80 8D 93 A8 */	lwz r4, lbl_80451928-_SDA_BASE_(r13)
/* 8035C488 003593C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C48C 003593CC  A0 64 00 02 */	lhz r3, 2(r4)
/* 8035C490 003593D0  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 8035C494 003593D4  B0 64 00 02 */	sth r3, 2(r4)
/* 8035C498 003593D8  4E 80 00 20 */	blr 

.global GXPokeZMode
GXPokeZMode:
/* 8035C49C 003593DC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C4A0 003593E0  80 6D 93 A8 */	lwz r3, lbl_80451928-_SDA_BASE_(r13)
/* 8035C4A4 003593E4  38 C0 00 00 */	li r6, 0
/* 8035C4A8 003593E8  50 06 07 FE */	rlwimi r6, r0, 0, 0x1f, 0x1f
/* 8035C4AC 003593EC  50 86 0F 3C */	rlwimi r6, r4, 1, 0x1c, 0x1e
/* 8035C4B0 003593F0  50 A6 26 F6 */	rlwimi r6, r5, 4, 0x1b, 0x1b
/* 8035C4B4 003593F4  B0 C3 00 00 */	sth r6, 0(r3)
/* 8035C4B8 003593F8  4E 80 00 20 */	blr 

.global GXPeekZ
GXPeekZ:
/* 8035C4BC 003593FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8035C4C0 00359400  3C 60 C8 00 */	lis r3, 0xc800
/* 8035C4C4 00359404  50 03 15 3A */	rlwimi r3, r0, 2, 0x14, 0x1d
/* 8035C4C8 00359408  38 00 00 01 */	li r0, 1
/* 8035C4CC 0035940C  50 83 62 A6 */	rlwimi r3, r4, 0xc, 0xa, 0x13
/* 8035C4D0 00359410  50 03 B2 12 */	rlwimi r3, r0, 0x16, 8, 9
/* 8035C4D4 00359414  80 03 00 00 */	lwz r0, 0(r3)
/* 8035C4D8 00359418  90 05 00 00 */	stw r0, 0(r5)
/* 8035C4DC 0035941C  4E 80 00 20 */	blr 

.global GXSetDrawSyncCallback
GXSetDrawSyncCallback:
/* 8035C4E0 00359420  7C 08 02 A6 */	mflr r0
/* 8035C4E4 00359424  90 01 00 04 */	stw r0, 4(r1)
/* 8035C4E8 00359428  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C4EC 0035942C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C4F0 00359430  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C4F4 00359434  7C 7E 1B 78 */	mr r30, r3
/* 8035C4F8 00359438  83 ED 93 E8 */	lwz r31, lbl_80451968-_SDA_BASE_(r13)
/* 8035C4FC 0035943C  4B FE 11 F9 */	bl __RAS_OSDisableInterrupts_begin 
/* 8035C500 00359440  93 CD 93 E8 */	stw r30, lbl_80451968-_SDA_BASE_(r13)
/* 8035C504 00359444  4B FE 12 19 */	bl OSRestoreInterrupts
/* 8035C508 00359448  7F E3 FB 78 */	mr r3, r31
/* 8035C50C 0035944C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C510 00359450  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C514 00359454  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C518 00359458  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C51C 0035945C  7C 08 03 A6 */	mtlr r0
/* 8035C520 00359460  4E 80 00 20 */	blr 
.global GXTokenInterruptHandler
GXTokenInterruptHandler:
/* 8035C524 00359464  7C 08 02 A6 */	mflr r0
/* 8035C528 00359468  90 01 00 04 */	stw r0, 4(r1)
/* 8035C52C 0035946C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8035C530 00359470  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8035C534 00359474  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8035C538 00359478  7C 9E 23 78 */	mr r30, r4
/* 8035C53C 0035947C  80 0D 93 E8 */	lwz r0, lbl_80451968-_SDA_BASE_(r13)
/* 8035C540 00359480  80 6D 93 A8 */	lwz r3, lbl_80451928-_SDA_BASE_(r13)
/* 8035C544 00359484  28 00 00 00 */	cmplwi r0, 0
/* 8035C548 00359488  A3 E3 00 0E */	lhz r31, 0xe(r3)
/* 8035C54C 0035948C  41 82 00 34 */	beq lbl_8035C580
/* 8035C550 00359490  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C554 00359494  4B FD FA AD */	bl OSClearContext
/* 8035C558 00359498  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C55C 0035949C  4B FD F8 DD */	bl OSSetCurrentContext
/* 8035C560 003594A0  81 8D 93 E8 */	lwz r12, lbl_80451968-_SDA_BASE_(r13)
/* 8035C564 003594A4  38 7F 00 00 */	addi r3, r31, 0
/* 8035C568 003594A8  7D 88 03 A6 */	mtlr r12
/* 8035C56C 003594AC  4E 80 00 21 */	blrl 
/* 8035C570 003594B0  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C574 003594B4  4B FD FA 8D */	bl OSClearContext
/* 8035C578 003594B8  7F C3 F3 78 */	mr r3, r30
/* 8035C57C 003594BC  4B FD F8 BD */	bl OSSetCurrentContext
lbl_8035C580:
/* 8035C580 003594C0  80 6D 93 A8 */	lwz r3, lbl_80451928-_SDA_BASE_(r13)
/* 8035C584 003594C4  38 00 00 01 */	li r0, 1
/* 8035C588 003594C8  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8035C58C 003594CC  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8035C590 003594D0  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8035C594 003594D4  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8035C598 003594D8  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035C59C 003594DC  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8035C5A0 003594E0  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8035C5A4 003594E4  7C 08 03 A6 */	mtlr r0
/* 8035C5A8 003594E8  4E 80 00 20 */	blr 

.global GXSetDrawDoneCallback
GXSetDrawDoneCallback:
/* 8035C5AC 003594EC  7C 08 02 A6 */	mflr r0
/* 8035C5B0 003594F0  90 01 00 04 */	stw r0, 4(r1)
/* 8035C5B4 003594F4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C5B8 003594F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C5BC 003594FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C5C0 00359500  7C 7E 1B 78 */	mr r30, r3
/* 8035C5C4 00359504  83 ED 93 EC */	lwz r31, lbl_8045196C-_SDA_BASE_(r13)
/* 8035C5C8 00359508  4B FE 11 2D */	bl __RAS_OSDisableInterrupts_begin 
/* 8035C5CC 0035950C  93 CD 93 EC */	stw r30, lbl_8045196C-_SDA_BASE_(r13)
/* 8035C5D0 00359510  4B FE 11 4D */	bl OSRestoreInterrupts
/* 8035C5D4 00359514  7F E3 FB 78 */	mr r3, r31
/* 8035C5D8 00359518  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C5DC 0035951C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C5E0 00359520  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C5E4 00359524  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C5E8 00359528  7C 08 03 A6 */	mtlr r0
/* 8035C5EC 0035952C  4E 80 00 20 */	blr 
.global GXFinishInterruptHandler
GXFinishInterruptHandler:
/* 8035C5F0 00359530  7C 08 02 A6 */	mflr r0
/* 8035C5F4 00359534  38 60 00 01 */	li r3, 1
/* 8035C5F8 00359538  90 01 00 04 */	stw r0, 4(r1)
/* 8035C5FC 0035953C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8035C600 00359540  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8035C604 00359544  3B E4 00 00 */	addi r31, r4, 0
/* 8035C608 00359548  80 AD 93 A8 */	lwz r5, lbl_80451928-_SDA_BASE_(r13)
/* 8035C60C 0035954C  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 8035C610 00359550  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8035C614 00359554  B0 05 00 0A */	sth r0, 0xa(r5)
/* 8035C618 00359558  80 0D 93 EC */	lwz r0, lbl_8045196C-_SDA_BASE_(r13)
/* 8035C61C 0035955C  98 6D 93 F0 */	stb r3, lbl_80451970-_SDA_BASE_(r13)
/* 8035C620 00359560  28 00 00 00 */	cmplwi r0, 0
/* 8035C624 00359564  41 82 00 30 */	beq lbl_8035C654
/* 8035C628 00359568  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C62C 0035956C  4B FD F9 D5 */	bl OSClearContext
/* 8035C630 00359570  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C634 00359574  4B FD F8 05 */	bl OSSetCurrentContext
/* 8035C638 00359578  81 8D 93 EC */	lwz r12, lbl_8045196C-_SDA_BASE_(r13)
/* 8035C63C 0035957C  7D 88 03 A6 */	mtlr r12
/* 8035C640 00359580  4E 80 00 21 */	blrl 
/* 8035C644 00359584  38 61 00 10 */	addi r3, r1, 0x10
/* 8035C648 00359588  4B FD F9 B9 */	bl OSClearContext
/* 8035C64C 0035958C  7F E3 FB 78 */	mr r3, r31
/* 8035C650 00359590  4B FD F7 E9 */	bl OSSetCurrentContext
lbl_8035C654:
/* 8035C654 00359594  38 6D 93 F4 */	addi r3, r13, lbl_80451974-_SDA_BASE_
/* 8035C658 00359598  4B FE 56 41 */	bl OSWakeupThread
/* 8035C65C 0035959C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8035C660 003595A0  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8035C664 003595A4  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8035C668 003595A8  7C 08 03 A6 */	mtlr r0
/* 8035C66C 003595AC  4E 80 00 20 */	blr 

.global __GXPEInit
__GXPEInit:
/* 8035C670 003595B0  7C 08 02 A6 */	mflr r0
.global GXTokenInterruptHandler
/* 8035C674 003595B4  3C 60 80 36 */	lis r3, GXTokenInterruptHandler@ha
/* 8035C678 003595B8  90 01 00 04 */	stw r0, 4(r1)
.global GXTokenInterruptHandler
/* 8035C67C 003595BC  38 83 C5 24 */	addi r4, r3, GXTokenInterruptHandler@l
/* 8035C680 003595C0  38 60 00 12 */	li r3, 0x12
/* 8035C684 003595C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035C688 003595C8  4B FE 10 B9 */	bl __OSSetInterruptHandler
.global GXFinishInterruptHandler
/* 8035C68C 003595CC  3C 60 80 36 */	lis r3, GXFinishInterruptHandler@ha
.global GXFinishInterruptHandler
/* 8035C690 003595D0  38 83 C5 F0 */	addi r4, r3, GXFinishInterruptHandler@l
/* 8035C694 003595D4  38 60 00 13 */	li r3, 0x13
/* 8035C698 003595D8  4B FE 10 A9 */	bl __OSSetInterruptHandler
/* 8035C69C 003595DC  38 6D 93 F4 */	addi r3, r13, lbl_80451974-_SDA_BASE_
/* 8035C6A0 003595E0  4B FE 45 D5 */	bl OSInitThreadQueue
/* 8035C6A4 003595E4  38 60 20 00 */	li r3, 0x2000
/* 8035C6A8 003595E8  4B FE 14 9D */	bl __OSUnmaskInterrupts
/* 8035C6AC 003595EC  38 60 10 00 */	li r3, 0x1000
/* 8035C6B0 003595F0  4B FE 14 95 */	bl __OSUnmaskInterrupts
/* 8035C6B4 003595F4  80 6D 93 A8 */	lwz r3, lbl_80451928-_SDA_BASE_(r13)
/* 8035C6B8 003595F8  38 00 00 01 */	li r0, 1
/* 8035C6BC 003595FC  A0 83 00 0A */	lhz r4, 0xa(r3)
/* 8035C6C0 00359600  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8035C6C4 00359604  50 04 1F 38 */	rlwimi r4, r0, 3, 0x1c, 0x1c
/* 8035C6C8 00359608  50 04 07 FE */	rlwimi r4, r0, 0, 0x1f, 0x1f
/* 8035C6CC 0035960C  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 8035C6D0 00359610  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8035C6D4 00359614  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035C6D8 00359618  38 21 00 08 */	addi r1, r1, 8
/* 8035C6DC 0035961C  7C 08 03 A6 */	mtlr r0
/* 8035C6E0 00359620  4E 80 00 20 */	blr 

