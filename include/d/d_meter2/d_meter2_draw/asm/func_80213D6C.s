/* 80213D6C 00210CAC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80213D70 00210CB0  7C 08 02 A6 */ mflr r0
/* 80213D74 00210CB4  90 01 00 14 */ stw r0, 0x14(r1)
/* 80213D78 00210CB8  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80213D7C 00210CBC  93 C1 00 08 */ stw r30, 8(r1)
/* 80213D80 00210CC0  7C 7E 1B 78 */ mr r30, r3
/* 80213D84 00210CC4  7C 9F 23 78 */ mr r31, r4
/* 80213D88 00210CC8  80 63 00 80 */ lwz r3, 0x80(r3)
/* 80213D8C 00210CCC  3C 80 6B 61 */ lis r4, 0x6B613030@ha
/* 80213D90 00210CD0  38 C4 30 30 */ addi r6, r4, 0x6B613030@l
/* 80213D94 00210CD4  38 A0 70 69 */ li r5, 0x7069
/* 80213D98 00210CD8  81 83 00 00 */ lwz r12, 0(r3)
/* 80213D9C 00210CDC  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213DA0 00210CE0  7D 89 03 A6 */ mtctr r12
/* 80213DA4 00210CE4  4E 80 04 21 */ bctrl
/* 80213DA8 00210CE8  7F E4 FB 78 */ mr r4, r31
/* 80213DAC 00210CEC  81 83 00 00 */ lwz r12, 0(r3)
/* 80213DB0 00210CF0  81 8C 00 64 */ lwz r12, 0x64(r12)
/* 80213DB4 00210CF4  7D 89 03 A6 */ mtctr r12
/* 80213DB8 00210CF8  4E 80 04 21 */ bctrl
/* 80213DBC 00210CFC  80 7E 00 80 */ lwz r3, 0x80(r30)
/* 80213DC0 00210D00  3C 80 79 61 */ lis r4, 0x79613030@ha
/* 80213DC4 00210D04  38 C4 30 30 */ addi r6, r4, 0x79613030@l
/* 80213DC8 00210D08  38 A0 6D 6F */ li r5, 0x6d6f
/* 80213DCC 00210D0C  81 83 00 00 */ lwz r12, 0(r3)
/* 80213DD0 00210D10  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213DD4 00210D14  7D 89 03 A6 */ mtctr r12
/* 80213DD8 00210D18  4E 80 04 21 */ bctrl
/* 80213DDC 00210D1C  7F E4 FB 78 */ mr r4, r31
/* 80213DE0 00210D20  81 83 00 00 */ lwz r12, 0(r3)
/* 80213DE4 00210D24  81 8C 00 64 */ lwz r12, 0x64(r12)
/* 80213DE8 00210D28  7D 89 03 A6 */ mtctr r12
/* 80213DEC 00210D2C  4E 80 04 21 */ bctrl
/* 80213DF0 00210D30  80 7E 00 80 */ lwz r3, 0x80(r30)
/* 80213DF4 00210D34  3C 80 79 61 */ lis r4, 0x79616273@ha
/* 80213DF8 00210D38  38 C4 62 73 */ addi r6, r4, 0x79616273@l
/* 80213DFC 00210D3C  38 A0 6D 6F */ li r5, 0x6d6f
/* 80213E00 00210D40  81 83 00 00 */ lwz r12, 0(r3)
/* 80213E04 00210D44  81 8C 00 3C */ lwz r12, 0x3c(r12)
/* 80213E08 00210D48  7D 89 03 A6 */ mtctr r12
/* 80213E0C 00210D4C  4E 80 04 21 */ bctrl
/* 80213E10 00210D50  7F E4 FB 78 */ mr r4, r31
/* 80213E14 00210D54  81 83 00 00 */ lwz r12, 0(r3)
/* 80213E18 00210D58  81 8C 00 64 */ lwz r12, 0x64(r12)
/* 80213E1C 00210D5C  7D 89 03 A6 */ mtctr r12
/* 80213E20 00210D60  4E 80 04 21 */ bctrl
/* 80213E24 00210D64  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80213E28 00210D68  83 C1 00 08 */ lwz r30, 8(r1)
/* 80213E2C 00210D6C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80213E30 00210D70  7C 08 03 A6 */ mtlr r0
/* 80213E34 00210D74  38 21 00 10 */ addi r1, r1, 0x10
/* 80213E38 00210D78  4E 80 00 20 */ blr
