/* 80057174 000540B4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80057178 000540B8  7C 08 02 A6 */ mflr r0
/* 8005717C 000540BC  90 01 00 14 */ stw r0, 0x14(r1)
/* 80057180 000540C0  38 60 00 01 */ li r3, 1
/* 80057184 000540C4  4B FF FF AD */ bl dKyw_drawSunlenz
/* 80057188 000540C8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8005718C 000540CC  7C 08 03 A6 */ mtlr r0
/* 80057190 000540D0  38 21 00 10 */ addi r1, r1, 0x10
/* 80057194 000540D4  4E 80 00 20 */ blr
