/* 80225AA0 002229E0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80225AA4 002229E4  7C 08 02 A6 */ mflr r0
/* 80225AA8 002229E8  90 01 00 14 */ stw r0, 0x14(r1)
/* 80225AAC 002229EC  4B FF 98 C5 */ bl dMeter2_c_NS__draw
/* 80225AB0 002229F0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80225AB4 002229F4  7C 08 03 A6 */ mtlr r0
/* 80225AB8 002229F8  38 21 00 10 */ addi r1, r1, 0x10
/* 80225ABC 002229FC  4E 80 00 20 */ blr