.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024081C_99878C
/* 99878C 8024081C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 998790 80240820 AFBF0010 */  sw        $ra, 0x10($sp)
/* 998794 80240824 0C00EAD2 */  jal       get_npc_safe
/* 998798 80240828 8C84014C */   lw       $a0, 0x14c($a0)
/* 99879C 8024082C 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 9987A0 80240830 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 9987A4 80240834 C44C0038 */  lwc1      $f12, 0x38($v0)
/* 9987A8 80240838 C44E0040 */  lwc1      $f14, 0x40($v0)
/* 9987AC 8024083C 8C660028 */  lw        $a2, 0x28($v1)
/* 9987B0 80240840 0C00A7B5 */  jal       dist2D
/* 9987B4 80240844 8C670030 */   lw       $a3, 0x30($v1)
/* 9987B8 80240848 3C014248 */  lui       $at, 0x4248
/* 9987BC 8024084C 44811000 */  mtc1      $at, $f2
/* 9987C0 80240850 00000000 */  nop       
/* 9987C4 80240854 4602003C */  c.lt.s    $f0, $f2
/* 9987C8 80240858 00000000 */  nop       
/* 9987CC 8024085C 45010002 */  bc1t      .L80240868
/* 9987D0 80240860 24020002 */   addiu    $v0, $zero, 2
/* 9987D4 80240864 0000102D */  daddu     $v0, $zero, $zero
.L80240868:
/* 9987D8 80240868 8FBF0010 */  lw        $ra, 0x10($sp)
/* 9987DC 8024086C 03E00008 */  jr        $ra
/* 9987E0 80240870 27BD0018 */   addiu    $sp, $sp, 0x18
