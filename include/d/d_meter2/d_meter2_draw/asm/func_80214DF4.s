/* 80214DF4 00211D34  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80214DF8 00211D38  7C 08 02 A6 */ mflr r0
/* 80214DFC 00211D3C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80214E00 00211D40  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80214E04 00211D44  7C 7F 1B 78 */ mr r31, r3
/* 80214E08 00211D48  80 63 01 24 */ lwz r3, 0x124(r3)
/* 80214E0C 00211D4C  48 04 0A 1D */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80214E10 00211D50  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 80214E14 00211D54  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80214E18 00211D58  41 82 00 28 */ beq lbl_80214E40
/* 80214E1C 00211D5C  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80214E20 00211D60  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80214E24 00211D64  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80214E28 00211D68  C0 24 00 18 */ lfs f1, 0x18(r4)
/* 80214E2C 00211D6C  48 04 09 A5 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80214E30 00211D70  7F E3 FB 78 */ mr r3, r31
/* 80214E34 00211D74  80 9F 01 24 */ lwz r4, 0x124(r31)
/* 80214E38 00211D78  38 A0 00 05 */ li r5, 5
/* 80214E3C 00211D7C  48 00 5B 8D */ bl dMeter2Draw_c_NS_setAlphaAnimeMin
lbl_80214E40:
/* 80214E40 00211D80  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80214E44 00211D84  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80214E48 00211D88  7C 08 03 A6 */ mtlr r0
/* 80214E4C 00211D8C  38 21 00 10 */ addi r1, r1, 0x10
/* 80214E50 00211D90  4E 80 00 20 */ blr
