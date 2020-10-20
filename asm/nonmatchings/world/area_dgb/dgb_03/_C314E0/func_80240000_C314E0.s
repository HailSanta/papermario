.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_C314E0
/* C314E0 80240000 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C314E4 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* C314E8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* C314EC 8024000C AFBF0014 */  sw        $ra, 0x14($sp)
/* C314F0 80240010 8E02000C */  lw        $v0, 0xc($s0)
/* C314F4 80240014 0C0B1EAF */  jal       get_variable
/* C314F8 80240018 8C450000 */   lw       $a1, ($v0)
/* C314FC 8024001C 0040302D */  daddu     $a2, $v0, $zero
/* C31500 80240020 3C058016 */  lui       $a1, 0x8016
/* C31504 80240024 84A5A550 */  lh        $a1, -0x5ab0($a1)
/* C31508 80240028 3C048011 */  lui       $a0, %hi(gPlayerStatus)
/* C3150C 8024002C 2484EFC8 */  addiu     $a0, $a0, %lo(gPlayerStatus)
/* C31510 80240030 10A60004 */  beq       $a1, $a2, .L80240044
/* C31514 80240034 24020014 */   addiu    $v0, $zero, 0x14
/* C31518 80240038 808300B4 */  lb        $v1, 0xb4($a0)
/* C3151C 8024003C 10620006 */  beq       $v1, $v0, .L80240058
/* C31520 80240040 00000000 */   nop      
.L80240044:
/* C31524 80240044 8C820014 */  lw        $v0, 0x14($a0)
/* C31528 80240048 3C03FFFF */  lui       $v1, 0xffff
/* C3152C 8024004C 00431024 */  and       $v0, $v0, $v1
/* C31530 80240050 10400005 */  beqz      $v0, .L80240068
/* C31534 80240054 00000000 */   nop      
.L80240058:
/* C31538 80240058 0C039769 */  jal       set_action_state
/* C3153C 8024005C 0000202D */   daddu    $a0, $zero, $zero
/* C31540 80240060 0809002A */  j         .L802400A8
/* C31544 80240064 AE000084 */   sw       $zero, 0x84($s0)
.L80240068:
/* C31548 80240068 54A6000F */  bnel      $a1, $a2, .L802400A8
/* C3154C 8024006C AE000084 */   sw       $zero, 0x84($s0)
/* C31550 80240070 808300B4 */  lb        $v1, 0xb4($a0)
/* C31554 80240074 24020014 */  addiu     $v0, $zero, 0x14
/* C31558 80240078 10620005 */  beq       $v1, $v0, .L80240090
/* C3155C 8024007C 24020001 */   addiu    $v0, $zero, 1
/* C31560 80240080 10620003 */  beq       $v1, $v0, .L80240090
/* C31564 80240084 24020002 */   addiu    $v0, $zero, 2
/* C31568 80240088 54620008 */  bnel      $v1, $v0, .L802400AC
/* C3156C 8024008C AE000084 */   sw       $zero, 0x84($s0)
.L80240090:
/* C31570 80240090 8C820004 */  lw        $v0, 4($a0)
/* C31574 80240094 30420001 */  andi      $v0, $v0, 1
/* C31578 80240098 54400003 */  bnel      $v0, $zero, .L802400A8
/* C3157C 8024009C AE000084 */   sw       $zero, 0x84($s0)
/* C31580 802400A0 24020001 */  addiu     $v0, $zero, 1
/* C31584 802400A4 AE020084 */  sw        $v0, 0x84($s0)
.L802400A8:
/* C31588 802400A8 24020002 */  addiu     $v0, $zero, 2
.L802400AC:
/* C3158C 802400AC 8FBF0014 */  lw        $ra, 0x14($sp)
/* C31590 802400B0 8FB00010 */  lw        $s0, 0x10($sp)
/* C31594 802400B4 03E00008 */  jr        $ra
/* C31598 802400B8 27BD0018 */   addiu    $sp, $sp, 0x18
