.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241834
/* D3BE04 80241834 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* D3BE08 80241838 3C058024 */  lui       $a1, 0x8024
/* D3BE0C 8024183C 24A517C8 */  addiu     $a1, $a1, 0x17c8
/* D3BE10 80241840 AFBF0010 */  sw        $ra, 0x10($sp)
/* D3BE14 80241844 0C048C8F */  jal       bind_dynamic_entity_7
/* D3BE18 80241848 0000202D */   daddu    $a0, $zero, $zero
/* D3BE1C 8024184C 8FBF0010 */  lw        $ra, 0x10($sp)
/* D3BE20 80241850 3C018025 */  lui       $at, 0x8025
/* D3BE24 80241854 AC221450 */  sw        $v0, 0x1450($at)
/* D3BE28 80241858 24020002 */  addiu     $v0, $zero, 2
/* D3BE2C 8024185C 03E00008 */  jr        $ra
/* D3BE30 80241860 27BD0018 */   addiu    $sp, $sp, 0x18
