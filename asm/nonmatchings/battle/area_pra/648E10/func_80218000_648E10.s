.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_648E10
/* 648E10 80218000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 648E14 80218004 AFB10014 */  sw        $s1, 0x14($sp)
/* 648E18 80218008 0080882D */  daddu     $s1, $a0, $zero
/* 648E1C 8021800C AFBF0020 */  sw        $ra, 0x20($sp)
/* 648E20 80218010 AFB3001C */  sw        $s3, 0x1c($sp)
/* 648E24 80218014 AFB20018 */  sw        $s2, 0x18($sp)
/* 648E28 80218018 AFB00010 */  sw        $s0, 0x10($sp)
/* 648E2C 8021801C 8E30000C */  lw        $s0, 0xc($s1)
/* 648E30 80218020 8E050000 */  lw        $a1, ($s0)
/* 648E34 80218024 0C0B1EAF */  jal       get_variable
/* 648E38 80218028 26100004 */   addiu    $s0, $s0, 4
/* 648E3C 8021802C 8E050000 */  lw        $a1, ($s0)
/* 648E40 80218030 26100004 */  addiu     $s0, $s0, 4
/* 648E44 80218034 0220202D */  daddu     $a0, $s1, $zero
/* 648E48 80218038 0C0B1EAF */  jal       get_variable
/* 648E4C 8021803C 0040982D */   daddu    $s3, $v0, $zero
/* 648E50 80218040 8E050000 */  lw        $a1, ($s0)
/* 648E54 80218044 26100004 */  addiu     $s0, $s0, 4
/* 648E58 80218048 0220202D */  daddu     $a0, $s1, $zero
/* 648E5C 8021804C 0C0B1EAF */  jal       get_variable
/* 648E60 80218050 0040902D */   daddu    $s2, $v0, $zero
/* 648E64 80218054 0220202D */  daddu     $a0, $s1, $zero
/* 648E68 80218058 8E050000 */  lw        $a1, ($s0)
/* 648E6C 8021805C 0C0B1EAF */  jal       get_variable
/* 648E70 80218060 0040802D */   daddu    $s0, $v0, $zero
/* 648E74 80218064 8E240148 */  lw        $a0, 0x148($s1)
/* 648E78 80218068 0C09A75B */  jal       get_actor
/* 648E7C 8021806C 0040882D */   daddu    $s1, $v0, $zero
/* 648E80 80218070 0040182D */  daddu     $v1, $v0, $zero
/* 648E84 80218074 8C620008 */  lw        $v0, 8($v1)
/* 648E88 80218078 90420024 */  lbu       $v0, 0x24($v0)
/* 648E8C 8021807C 8C640008 */  lw        $a0, 8($v1)
/* 648E90 80218080 02629823 */  subu      $s3, $s3, $v0
/* 648E94 80218084 A0730194 */  sb        $s3, 0x194($v1)
/* 648E98 80218088 90820025 */  lbu       $v0, 0x25($a0)
/* 648E9C 8021808C 02429023 */  subu      $s2, $s2, $v0
/* 648EA0 80218090 A0720195 */  sb        $s2, 0x195($v1)
/* 648EA4 80218094 90820026 */  lbu       $v0, 0x26($a0)
/* 648EA8 80218098 02028023 */  subu      $s0, $s0, $v0
/* 648EAC 8021809C A0700196 */  sb        $s0, 0x196($v1)
/* 648EB0 802180A0 90840027 */  lbu       $a0, 0x27($a0)
/* 648EB4 802180A4 02248823 */  subu      $s1, $s1, $a0
/* 648EB8 802180A8 A0710197 */  sb        $s1, 0x197($v1)
/* 648EBC 802180AC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 648EC0 802180B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 648EC4 802180B4 8FB20018 */  lw        $s2, 0x18($sp)
/* 648EC8 802180B8 8FB10014 */  lw        $s1, 0x14($sp)
/* 648ECC 802180BC 8FB00010 */  lw        $s0, 0x10($sp)
/* 648ED0 802180C0 24020002 */  addiu     $v0, $zero, 2
/* 648ED4 802180C4 03E00008 */  jr        $ra
/* 648ED8 802180C8 27BD0028 */   addiu    $sp, $sp, 0x28
