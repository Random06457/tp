/* 800F2454 000EF394  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F2458 000EF398  7C 08 02 A6 */ mflr r0
/* 800F245C 000EF39C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F2460 000EF3A0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F2464 000EF3A4  7C 7F 1B 78 */ mr r31, r3
/* 800F2468 000EF3A8  38 80 00 48 */ li r4, 0x48
/* 800F246C 000EF3AC  4B FD 09 39 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 800F2470 000EF3B0  2C 03 00 00 */ cmpwi r3, 0
/* 800F2474 000EF3B4  40 82 00 0C */ bne lbl_800F2480
/* 800F2478 000EF3B8  38 60 00 00 */ li r3, 0
/* 800F247C 000EF3BC  48 00 00 38 */ b lbl_800F24B4
lbl_800F2480:
/* 800F2480 000EF3C0  7F E3 FB 78 */ mr r3, r31
/* 800F2484 000EF3C4  4B FF B5 A1 */ bl daAlink_c_NS_setSyncRidePos
/* 800F2488 000EF3C8  7F E3 FB 78 */ mr r3, r31
/* 800F248C 000EF3CC  4B FF C9 0D */ bl daAlink_c_NS_setBaseRideAnime
/* 800F2490 000EF3D0  7F E3 FB 78 */ mr r3, r31
/* 800F2494 000EF3D4  38 80 00 01 */ li r4, 1
/* 800F2498 000EF3D8  4B FE DF 39 */ bl daAlink_c_NS_initBoomerangUpperAnimeSpeed
/* 800F249C 000EF3DC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800F24A0 000EF3E0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800F24A4 000EF3E4  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800F24A8 000EF3E8  64 00 00 08 */ oris r0, r0, 8
/* 800F24AC 000EF3EC  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800F24B0 000EF3F0  38 60 00 01 */ li r3, 1
lbl_800F24B4:
/* 800F24B4 000EF3F4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F24B8 000EF3F8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F24BC 000EF3FC  7C 08 03 A6 */ mtlr r0
/* 800F24C0 000EF400  38 21 00 10 */ addi r1, r1, 0x10
/* 800F24C4 000EF404  4E 80 00 20 */ blr