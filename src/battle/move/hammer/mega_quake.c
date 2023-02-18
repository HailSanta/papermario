#include "common.h"
#include "effects.h"

#define NAMESPACE battle_move_mega_quake

#include "battle/common/move/HammerSupport.inc.c"

API_CALLABLE(func_802A10A4_756824) {
    if (isInitialCall) {
        script->functionTemp[0] = 0;
    }

    if (script->functionTemp[0] != 0) {
        if (script->functionTemp[0] != 1) {
            return ApiStatus_BLOCK;
        }
    } else {
        script->functionTemp[1] = 30;
        script->functionTemp[0] = 1;
    }

    set_screen_overlay_center(1, 0, 0, 0);
    set_screen_overlay_center(1, 1, SCREEN_WIDTH, SCREEN_HEIGHT);
    set_screen_overlay_params_back(12, 160.0f);

    if (script->functionTemp[1] != 0) {
        script->functionTemp[1]--;
        return ApiStatus_BLOCK;
    } else {
        set_screen_overlay_center(1, 0, 0, 0);
        set_screen_overlay_center(1, 1, SCREEN_WIDTH, SCREEN_HEIGHT);
        set_screen_overlay_params_back(12, 0.0f);
        return ApiStatus_DONE2;
    }
}

extern EvtScript N(EVS_802A3238);

EvtScript N(EVS_UseMove) = {
    EVT_CALL(ShowActionHud, TRUE)
    EVT_CALL(GetMenuSelection, LVar0, LVar1, LVar2)
    EVT_SWITCH(LVar1)
        EVT_CASE_EQ(0)
            EVT_SET(LVarD, 80)
            EVT_SET(LVarE, 3)
            EVT_SET(LVarF, 6)
            EVT_EXEC_WAIT(N(EVS_802A3238))
        EVT_CASE_EQ(1)
            EVT_SET(LVarD, 80)
            EVT_SET(LVarE, 3)
            EVT_SET(LVarF, 6)
            EVT_EXEC_WAIT(N(EVS_802A3238))
        EVT_CASE_EQ(2)
            EVT_SET(LVarD, 80)
            EVT_SET(LVarE, 3)
            EVT_SET(LVarF, 6)
            EVT_EXEC_WAIT(N(EVS_802A3238))
    EVT_END_SWITCH
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_802A3238) = {
    EVT_CALL(GetMenuSelection, LVar0, LVar1, LVar2)
    EVT_SWITCH(LVar1)
        EVT_CASE_EQ(0)
            EVT_EXEC_WAIT(N(EVS_Hammer_UseBasicQuake))
        EVT_CASE_EQ(1)
            EVT_EXEC_WAIT(N(EVS_Hammer_UseSuperQuake))
        EVT_CASE_EQ(2)
            EVT_EXEC_WAIT(N(EVS_Hammer_UseUltraQuake))
    EVT_END_SWITCH
    EVT_THREAD
        EVT_WAIT(8)
        EVT_CALL(GetActorPos, ACTOR_PLAYER, LVar0, LVar1, LVar2)
        EVT_ADD(LVar0, 24)
        EVT_ADD(LVar1, 10)
        EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 1, LVar0, LVar1, LVar2, 60, 8, 0, 30, 0, 0, 0, 0, 0)
        EVT_WAIT(2)
        EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 1, LVar0, LVar1, LVar2, 60, 8, 33, 30, 0, 0, 0, 0, 0)
        EVT_WAIT(2)
        EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 1, LVar0, LVar1, LVar2, 60, 8, 66, 30, 0, 0, 0, 0, 0)
    EVT_END_THREAD
    EVT_CALL(DidActionSucceed, LVar0)
    EVT_SWITCH(LVar0)
        EVT_CASE_GT(FALSE)
            EVT_CALL(StartRumble, 11)
            EVT_THREAD
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 2, EVT_FLOAT(0.3))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 5, EVT_FLOAT(1.5))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 10, EVT_FLOAT(3.0))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 5, EVT_FLOAT(1.5))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 3, EVT_FLOAT(1.05))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 4, EVT_FLOAT(0.6))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 6, EVT_FLOAT(0.15))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 4, EVT_FLOAT(0.07519531))
            EVT_END_THREAD
            EVT_THREAD
                EVT_CALL(GetActorPos, ACTOR_PLAYER, LVar0, LVar1, LVar2)
                EVT_ADD(LVar0, 24)
                EVT_ADD(LVar1, 10)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 0, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 24, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 48, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 72, 30, 0, 0, 0, 0, 0)
            EVT_END_THREAD
            EVT_THREAD
                EVT_WAIT(10)
                EVT_PLAY_EFFECT(EFFECT_SHOCKWAVE, 1, LVar0, LVar1, LVar2, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            EVT_END_THREAD
        EVT_CASE_DEFAULT
            EVT_CALL(StartRumble, 11)
            EVT_THREAD
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 2, EVT_FLOAT(0.24))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 5, EVT_FLOAT(1.2))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 10, EVT_FLOAT(2.4))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 5, EVT_FLOAT(1.2))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 3, EVT_FLOAT(0.84))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 4, EVT_FLOAT(0.48))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 6, EVT_FLOAT(0.12))
                EVT_CALL(ShakeCam, CAM_BATTLE, 0, 4, EVT_FLOAT(0.06))
            EVT_END_THREAD
            EVT_THREAD
                EVT_CALL(GetActorPos, ACTOR_PLAYER, LVar0, LVar1, LVar2)
                EVT_ADD(LVar0, 24)
                EVT_ADD(LVar1, 10)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 0, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 24, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 48, 30, 0, 0, 0, 0, 0)
                EVT_WAIT(5)
                EVT_PLAY_EFFECT(EFFECT_SMOKE_IMPACT, 0, LVar0, LVar1, LVar2, 72, 8, 72, 30, 0, 0, 0, 0, 0)
            EVT_END_THREAD
            EVT_THREAD
                EVT_WAIT(10)
                EVT_PLAY_EFFECT(EFFECT_SHOCKWAVE, 1, LVar0, LVar1, LVar2, 0, 0, 0, 0, 0, 0, 0, 0, 0)
            EVT_END_THREAD
    EVT_END_SWITCH
    EVT_CALL(DidActionSucceed, LVar0)
    EVT_IF_GT(LVar0, FALSE)
        EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_46)
        EVT_CALL(MoveBattleCamOver, 5)
        EVT_WAIT(15)
        EVT_SETF(LVar6, EVT_FLOAT(0.0))
        EVT_LOOP(10)
            EVT_SET(LVar4, LVar3)
            EVT_SET(LVar5, LVar2)
            EVT_ADDF(LVar6, EVT_FLOAT(36.0))
            EVT_CALL(AddVectorPolar, LVar4, LVar5, EVT_FLOAT(300.0), LVar6)
            EVT_SET(LVarA, LVarF)
            EVT_PLAY_EFFECT(EFFECT_LIGHTNING_BOLT, 0, LVar3, 1, LVar2, LVar4, 1, LVar5, EVT_FLOAT(4.0), 30, 0, 0, 0, 0)
            EVT_SET(LVarF, LVarA)
        EVT_END_LOOP
        EVT_WAIT(10)
    EVT_ELSE
        EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_46)
        EVT_CALL(MoveBattleCamOver, 50)
    EVT_END_IF
    EVT_CALL(GetMenuSelection, LVar0, LVar1, LVar2)
    EVT_SWITCH(LVar1)
        EVT_CASE_EQ(0)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_211B)
        EVT_CASE_EQ(1)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_211C)
        EVT_CASE_EQ(2)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_211D)
    EVT_END_SWITCH
    EVT_WAIT(10)
    EVT_CALL(GetMenuSelection, LVar0, LVar1, LVar2)
    EVT_SWITCH(LVar1)
        EVT_CASE_EQ(0)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_2118)
        EVT_CASE_EQ(1)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_2119)
        EVT_CASE_EQ(2)
            EVT_CALL(PlaySoundAtActor, ACTOR_PLAYER, SOUND_211A)
    EVT_END_SWITCH
    EVT_SET(LVar9, 0)
    EVT_CALL(InitTargetIterator)
    EVT_LABEL(10)
    EVT_CALL(SetGoalToTarget, ACTOR_PLAYER)
    EVT_CALL(PlayerTestEnemy, LVar0, DAMAGE_TYPE_QUAKE_HAMMER, 29, 0, 0, 16)
    EVT_IF_EQ(LVar0, HIT_RESULT_MISS)
        EVT_GOTO(11)
    EVT_END_IF
    EVT_CALL(DidActionSucceed, LVar0)
    EVT_SWITCH(LVar0)
        EVT_CASE_GT(FALSE)
            EVT_CALL(PlayerDamageEnemy, LVar0, DAMAGE_TYPE_QUAKE | DAMAGE_TYPE_QUAKE_HAMMER | DAMAGE_TYPE_IGNORE_DEFENSE | DAMAGE_TYPE_NO_CONTACT | DAMAGE_TYPE_NO_OTHER_DAMAGE_POPUPS, 25, 0, LVarF, 112)
        EVT_CASE_DEFAULT
            EVT_CALL(PlayerDamageEnemy, LVar0, DAMAGE_TYPE_QUAKE | DAMAGE_TYPE_QUAKE_HAMMER | DAMAGE_TYPE_IGNORE_DEFENSE | DAMAGE_TYPE_NO_CONTACT | DAMAGE_TYPE_NO_OTHER_DAMAGE_POPUPS, 25, 0, LVarE, 48)
    EVT_END_SWITCH
    EVT_LABEL(11)
    EVT_CALL(ChooseNextTarget, ITER_NEXT, LVar1)
    EVT_ADD(LVar9, 1)
    EVT_CALL(GetTargetListLength, LVar1)
    EVT_IF_LT(LVar9, LVar1)
        EVT_GOTO(10)
    EVT_END_IF
    EVT_THREAD
        EVT_WAIT(10)
        EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_Mario_10002)
    EVT_END_THREAD
    EVT_WAIT(10)
    EVT_EXEC_WAIT(N(EVS_Hammer_ReturnHome_B))
    EVT_CALL(UseBattleCamPreset, BTL_CAM_PRESET_C)
    EVT_RETURN
    EVT_END
};

