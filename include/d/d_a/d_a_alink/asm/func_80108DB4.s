/* 80108DB4 00105CF4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80108DB8 00105CF8  7C 08 02 A6 */ mflr r0
/* 80108DBC 00105CFC  90 01 00 24 */ stw r0, 0x24(r1)
/* 80108DC0 00105D00  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80108DC4 00105D04  7C 7F 1B 78 */ mr r31, r3
/* 80108DC8 00105D08  4B FF F9 BD */ bl daAlink_c_NS_checkLv7BossRoom
/* 80108DCC 00105D0C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80108DD0 00105D10  41 82 00 14 */ beq lbl_80108DE4
/* 80108DD4 00105D14  3C 60 80 39 */ lis r3, lbl_8038E9C0@ha
/* 80108DD8 00105D18  38 63 E9 C0 */ addi r3, r3, lbl_8038E9C0@l
/* 80108DDC 00105D1C  C0 23 00 60 */ lfs f1, 0x60(r3)
/* 80108DE0 00105D20  48 00 00 10 */ b lbl_80108DF0
lbl_80108DE4:
/* 80108DE4 00105D24  3C 60 80 39 */ lis r3, lbl_8038E9C0@ha
/* 80108DE8 00105D28  38 63 E9 C0 */ addi r3, r3, lbl_8038E9C0@l
/* 80108DEC 00105D2C  C0 23 00 48 */ lfs f1, 0x48(r3)
lbl_80108DF0:
/* 80108DF0 00105D30  7F E3 FB 78 */ mr r3, r31
/* 80108DF4 00105D34  38 81 00 08 */ addi r4, r1, 8
/* 80108DF8 00105D38  4B FB 67 09 */ bl daAlink_c_NS_checkSightLine
/* 80108DFC 00105D3C  80 9F 28 50 */ lwz r4, 0x2850(r31)
/* 80108E00 00105D40  28 04 00 00 */ cmplwi r4, 0
/* 80108E04 00105D44  41 82 00 20 */ beq lbl_80108E24
/* 80108E08 00105D48  C0 04 05 38 */ lfs f0, 0x538(r4)
/* 80108E0C 00105D4C  D0 1F 20 6C */ stfs f0, 0x206c(r31)
/* 80108E10 00105D50  C0 04 05 3C */ lfs f0, 0x53c(r4)
/* 80108E14 00105D54  D0 1F 20 70 */ stfs f0, 0x2070(r31)
/* 80108E18 00105D58  C0 04 05 40 */ lfs f0, 0x540(r4)
/* 80108E1C 00105D5C  D0 1F 20 74 */ stfs f0, 0x2074(r31)
/* 80108E20 00105D60  48 00 00 1C */ b lbl_80108E3C
lbl_80108E24:
/* 80108E24 00105D64  C0 01 00 08 */ lfs f0, 8(r1)
/* 80108E28 00105D68  D0 1F 20 6C */ stfs f0, 0x206c(r31)
/* 80108E2C 00105D6C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 80108E30 00105D70  D0 1F 20 70 */ stfs f0, 0x2070(r31)
/* 80108E34 00105D74  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 80108E38 00105D78  D0 1F 20 74 */ stfs f0, 0x2074(r31)
lbl_80108E3C:
/* 80108E3C 00105D7C  A8 1F 30 1A */ lha r0, 0x301a(r31)
/* 80108E40 00105D80  2C 00 00 01 */ cmpwi r0, 1
/* 80108E44 00105D84  40 82 00 7C */ bne lbl_80108EC0
/* 80108E48 00105D88  38 00 00 01 */ li r0, 1
/* 80108E4C 00105D8C  98 1F 20 68 */ stb r0, 0x2068(r31)
/* 80108E50 00105D90  2C 03 00 00 */ cmpwi r3, 0
/* 80108E54 00105D94  41 82 00 28 */ beq lbl_80108E7C
/* 80108E58 00105D98  C0 3F 34 94 */ lfs f1, 0x3494(r31)
/* 80108E5C 00105D9C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80108E60 00105DA0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80108E64 00105DA4  40 80 00 18 */ bge lbl_80108E7C
/* 80108E68 00105DA8  7F E3 FB 78 */ mr r3, r31
/* 80108E6C 00105DAC  38 9F 1B CC */ addi r4, r31, 0x1bcc
/* 80108E70 00105DB0  4B FF F9 41 */ bl daAlink_c_NS_checkHookshotStickBG
/* 80108E74 00105DB4  2C 03 00 00 */ cmpwi r3, 0
/* 80108E78 00105DB8  40 82 00 10 */ bne lbl_80108E88
lbl_80108E7C:
/* 80108E7C 00105DBC  80 1F 28 50 */ lwz r0, 0x2850(r31)
/* 80108E80 00105DC0  28 00 00 00 */ cmplwi r0, 0
/* 80108E84 00105DC4  41 82 00 30 */ beq lbl_80108EB4
lbl_80108E88:
/* 80108E88 00105DC8  38 7F 20 64 */ addi r3, r31, 0x2064
/* 80108E8C 00105DCC  48 01 D8 85 */ bl daAlink_sight_c_NS_onLockFlg
/* 80108E90 00105DD0  80 7F 28 50 */ lwz r3, 0x2850(r31)
/* 80108E94 00105DD4  28 03 00 00 */ cmplwi r3, 0
/* 80108E98 00105DD8  41 82 00 30 */ beq lbl_80108EC8
/* 80108E9C 00105DDC  A8 03 00 08 */ lha r0, 8(r3)
/* 80108EA0 00105DE0  2C 00 00 F7 */ cmpwi r0, 0xf7
/* 80108EA4 00105DE4  40 82 00 24 */ bne lbl_80108EC8
/* 80108EA8 00105DE8  38 00 00 01 */ li r0, 1
/* 80108EAC 00105DEC  98 03 07 D9 */ stb r0, 0x7d9(r3)
/* 80108EB0 00105DF0  48 00 00 18 */ b lbl_80108EC8
lbl_80108EB4:
/* 80108EB4 00105DF4  38 00 00 00 */ li r0, 0
/* 80108EB8 00105DF8  98 1F 20 B0 */ stb r0, 0x20b0(r31)
/* 80108EBC 00105DFC  48 00 00 0C */ b lbl_80108EC8
lbl_80108EC0:
/* 80108EC0 00105E00  38 00 00 00 */ li r0, 0
/* 80108EC4 00105E04  98 1F 20 68 */ stb r0, 0x2068(r31)
lbl_80108EC8:
/* 80108EC8 00105E08  38 7F 28 4C */ addi r3, r31, 0x284c
/* 80108ECC 00105E0C  48 05 5E 31 */ bl daPy_actorKeep_c_NS_clearData
/* 80108ED0 00105E10  C0 02 92 BC */ lfs f0, lbl_80452CBC-_SDA2_BASE_(r2)
/* 80108ED4 00105E14  D0 1F 34 94 */ stfs f0, 0x3494(r31)
/* 80108ED8 00105E18  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80108EDC 00105E1C  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80108EE0 00105E20  7C 08 03 A6 */ mtlr r0
/* 80108EE4 00105E24  38 21 00 20 */ addi r1, r1, 0x20
/* 80108EE8 00105E28  4E 80 00 20 */ blr
