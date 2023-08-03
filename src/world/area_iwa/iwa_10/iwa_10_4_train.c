#include "iwa_10.h"

#include "common/CosInterpMinMax.inc.c"

EvtScript N(EVS_SpawnSmoke) = {
    EVT_CALL(PlaySoundAtModel, MODEL_07, SOUND_PAIR_1A, SOUND_SPACE_MODE_0)
    EVT_SETF(LVar0, MV_TrainMoveDist)
    EVT_IF_EQ(MF_TrainReverseDir, FALSE)
        EVT_ADDF(LVar0, -310)
    EVT_ELSE
        EVT_ADDF(LVar0, -450)
    EVT_END_IF
    EVT_SETF(LVar1, 140)
    EVT_SETF(LVar2, 0)
    EVT_SETF(LVar3, EVT_FLOAT(1.0))
    EVT_SETF(LVar4, EVT_FLOAT(3.0))
    EVT_ADD(LVarB, CLONED_MODEL(0))
    EVT_CALL(EnableModel, LVarB, TRUE)
    EVT_LOOP(20)
        EVT_CALL(TranslateModel, LVarB, LVar0, LVar1, LVar2)
        EVT_CALL(ScaleModel, LVarB, LVar3, LVar3, 1)
        EVT_ADDF(LVar1, LVar4)
        EVT_ADDF(LVar3, EVT_FLOAT(0.046))
        EVT_MULF(LVar4, EVT_FLOAT(0.906))
        EVT_WAIT(1)
    EVT_END_LOOP
    EVT_CALL(EnableModel, LVarB, FALSE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_OpenCrossingGates) = {
    EVT_CALL(MakeLerp, 0, 105, 30, EASING_COS_IN_OUT)
    EVT_LABEL(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(RotateGroup, MODEL_fumi1, LVar0, 0, 1, 0)
        EVT_CALL(RotateGroup, MODEL_fumi2, LVar0, 0, 1, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 1)
            EVT_GOTO(0)
        EVT_END_IF
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt1, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt2, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_CloseCrossingGates) = {
    EVT_CALL(MakeLerp, 105, 0, 30, EASING_COS_IN_OUT)
    EVT_LABEL(0)
        EVT_CALL(UpdateLerp)
        EVT_CALL(RotateGroup, MODEL_fumi1, LVar0, 0, 1, 0)
        EVT_CALL(RotateGroup, MODEL_fumi2, LVar0, 0, 1, 0)
        EVT_WAIT(1)
        EVT_IF_EQ(LVar1, 1)
            EVT_GOTO(0)
        EVT_END_IF
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt1, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt2, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_AnimateTrain) = {
    EVT_LABEL(0)
        EVT_SET(LVar0, MV_TrainMoveDist)
        EVT_CALL(TranslateModel, MODEL_08, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_07, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_10, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_11, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_12, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_13, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_09, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_01, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_02, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_03, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_04, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_05, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_06, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_ura, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_omote, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_ura2, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_omote2, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_14, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_15, LVar0, 0, 0)
        EVT_CALL(TranslateModel, MODEL_16, LVar0, 0, 0)
        EVT_IF_EQ(MF_TrainReverseDir, TRUE)
            EVT_SET(LVar0, 180)
            EVT_CALL(TranslateModel, MODEL_08, -69, -50, 0)
            EVT_CALL(TranslateModel, MODEL_07, -69, -50, 0)
            EVT_CALL(TranslateModel, MODEL_10, 75, 25, 2)
            EVT_CALL(TranslateModel, MODEL_11, 30, 30, 2)
            EVT_CALL(TranslateModel, MODEL_12, -10, 30, 2)
            EVT_CALL(TranslateModel, MODEL_13, -50, 30, 2)
            EVT_CALL(TranslateModel, MODEL_09, -1, -58, 0)
            EVT_CALL(TranslateModel, MODEL_ura, 82, -19, -35)
            EVT_CALL(TranslateModel, MODEL_omote, 82, -19, -35)
            EVT_CALL(TranslateModel, MODEL_ura2, 82, -19, 35)
            EVT_CALL(TranslateModel, MODEL_omote2, 82, -19, 35)
            EVT_CALL(TranslateModel, MODEL_14, -21, 30, 0)
            EVT_CALL(TranslateModel, MODEL_15, -25, 30, 0)
            EVT_CALL(TranslateModel, MODEL_16, -63, 15, 0)
            EVT_CALL(RotateModel, MODEL_08, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_07, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_10, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_11, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_12, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_13, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_09, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_01, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_02, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_03, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_04, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_05, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_06, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_ura, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_omote, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_ura2, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_omote2, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_14, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_15, LVar0, 0, 1, 0)
            EVT_CALL(RotateModel, MODEL_16, LVar0, 0, 1, 0)
            EVT_CALL(TranslateModel, MODEL_08, 69, 50, 0)
            EVT_CALL(TranslateModel, MODEL_07, 69, 50, 0)
            EVT_CALL(TranslateModel, MODEL_10, -75, -25, -2)
            EVT_CALL(TranslateModel, MODEL_11, -30, -30, -2)
            EVT_CALL(TranslateModel, MODEL_12, 10, -30, -2)
            EVT_CALL(TranslateModel, MODEL_13, 50, -30, -2)
            EVT_CALL(TranslateModel, MODEL_09, 1, 58, 0)
            EVT_CALL(TranslateModel, MODEL_ura, -82, 19, 35)
            EVT_CALL(TranslateModel, MODEL_omote, -82, 19, 35)
            EVT_CALL(TranslateModel, MODEL_ura2, -82, 19, -35)
            EVT_CALL(TranslateModel, MODEL_omote2, -82, 19, -35)
            EVT_CALL(TranslateModel, MODEL_14, 21, -30, 0)
            EVT_CALL(TranslateModel, MODEL_15, 25, -30, 0)
            EVT_CALL(TranslateModel, MODEL_16, 63, -15, 0)
        EVT_END_IF
        EVT_IF_EQ(MF_TrainReverseDir, FALSE)
            EVT_SET(LVar2, MV_TrainMoveDist)
        EVT_ELSE
            EVT_SET(LVar2, 1000)
            EVT_SUB(LVar2, MV_TrainMoveDist)
        EVT_END_IF
        EVT_SETF(LVar0, LVar2)
        EVT_MULF(LVar0, EVT_FLOAT(-2.40625))
        EVT_CALL(RotateModel, MODEL_11, LVar0, 0, 0, 1)
        EVT_CALL(RotateModel, MODEL_12, LVar0, 0, 0, 1)
        EVT_CALL(RotateModel, MODEL_13, LVar0, 0, 0, 1)
        EVT_MULF(LVar0, EVT_FLOAT(0.6))
        EVT_CALL(RotateModel, MODEL_10, LVar0, 0, 0, 1)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar0, 0, -20, 75, 0, 0)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar1, -10, 10, 75, 0, -90)
        EVT_CALL(TranslateModel, MODEL_14, LVar0, LVar1, 0)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar0, 0, -20, 75, 0, 0)
        EVT_ADD(LVar0, 5)
        EVT_CALL(TranslateModel, MODEL_16, LVar0, -14, 0)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar0, 0, -20, 75, 0, 0)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar1, -10, 10, 75, 0, -90)
        EVT_CALL(TranslateModel, MODEL_15, LVar0, LVar1, 0)
        EVT_CALL(N(CosInterpMinMax), LVar2, LVar0, -40, 40, 75, 0, 90)
        EVT_CALL(RotateModel, MODEL_15, LVar0, 0, 0, 1)
        EVT_CALL(N(CosInterpMinMax), LVarC, LVar0, -30, 30, 10, 0, 0)
        EVT_CALL(RotateModel, MODEL_09, LVar0, 0, 0, 1)
        EVT_IF_NE(MV_TrainMoveSpeed, 0)
            EVT_IF_EQ(LVarD, 0)
                EVT_THREAD
                    EVT_WAIT(18)
                    EVT_EXEC(N(EVS_SpawnSmoke))
                EVT_END_THREAD
            EVT_END_IF
        EVT_END_IF
        EVT_IF_LE(LVarD, 20)
            EVT_CALL(N(CosInterpMinMax), LVarD, LVar0, EVT_FLOAT(0.703), EVT_FLOAT(1.0), 10, 0, 180)
            EVT_CALL(N(CosInterpMinMax), LVarD, LVar2, EVT_FLOAT(0.0), EVT_FLOAT(0.296), 10, 0, 180)
            EVT_SETF(LVar1, EVT_FLOAT(0.296))
            EVT_SUBF(LVar1, LVar2)
            EVT_ADDF(LVar1, EVT_FLOAT(1.0))
            EVT_CALL(ScaleModel, MODEL_07, LVar1, LVar0, LVar1)
            EVT_CALL(ScaleModel, MODEL_08, LVar1, LVar0, LVar1)
        EVT_ELSE
            EVT_SETF(LVar0, EVT_FLOAT(1.0))
            EVT_SETF(LVar2, EVT_FLOAT(0.296))
            EVT_SETF(LVar1, EVT_FLOAT(0.296))
            EVT_SUBF(LVar1, LVar2)
            EVT_ADDF(LVar1, EVT_FLOAT(1.0))
            EVT_CALL(ScaleModel, MODEL_07, LVar1, LVar0, LVar1)
            EVT_CALL(ScaleModel, MODEL_08, LVar1, LVar0, LVar1)
        EVT_END_IF
        EVT_IF_EQ(MF_TrainArriveDoorOpen, TRUE)
            EVT_CALL(PlaySoundAt, SOUND_20A5, SOUND_SPACE_MODE_0, -435, 84, 37)
            EVT_SET(LVar8, 10)
            EVT_SET(LFlag1, TRUE)
            EVT_SET(MF_TrainArriveDoorOpen, FALSE)
        EVT_END_IF
        EVT_IF_EQ(MF_TrainArrivePlayerDisembark, TRUE)
            EVT_SET(LVar8, -10)
            EVT_SET(LFlag1, TRUE)
            EVT_SET(MF_TrainArrivePlayerDisembark, FALSE)
        EVT_END_IF
        EVT_IF_EQ(MF_TrainDepartDoorOpen, TRUE)
            EVT_CALL(PlaySoundAt, SOUND_20A5, SOUND_SPACE_MODE_0, -413, 84, 38)
            EVT_SET(LVar8, 10)
            EVT_SET(LFlag2, TRUE)
            EVT_SET(MF_TrainDepartDoorOpen, FALSE)
        EVT_END_IF
        EVT_IF_EQ(MF_TrainDepartPlayerBoard, TRUE)
            EVT_SET(LVar8, -10)
            EVT_SET(LFlag2, TRUE)
            EVT_SET(MF_TrainDepartPlayerBoard, FALSE)
        EVT_END_IF
        EVT_IF_EQ(LFlag1, TRUE)
            EVT_ADD(LVar9, LVar8)
            EVT_IF_GE(LVar9, 90)
                EVT_SET(LVar9, 90)
                EVT_SET(LFlag1, FALSE)
            EVT_END_IF
            EVT_IF_LE(LVar9, 0)
                EVT_SET(LVar9, 0)
                EVT_SET(LFlag1, FALSE)
                EVT_CALL(PlaySoundAt, SOUND_20A6, SOUND_SPACE_MODE_0, -435, 84, 37)
            EVT_END_IF
        EVT_END_IF
        EVT_IF_EQ(LFlag2, TRUE)
            EVT_ADD(LVarA, LVar8)
            EVT_IF_GE(LVarA, 90)
                EVT_SET(LVarA, 90)
                EVT_SET(LFlag2, FALSE)
            EVT_END_IF
            EVT_IF_LE(LVarA, 0)
                EVT_SET(LVarA, 0)
                EVT_SET(LFlag2, FALSE)
                EVT_CALL(PlaySoundAt, SOUND_20A6, SOUND_SPACE_MODE_0, -413, 84, 38)
            EVT_END_IF
        EVT_END_IF
        EVT_CALL(RotateModel, MODEL_omote, LVar9, 0, -1, 0)
        EVT_CALL(RotateModel, MODEL_ura, LVar9, 0, -1, 0)
        EVT_CALL(RotateModel, MODEL_omote2, LVarA, 0, 1, 0)
        EVT_CALL(RotateModel, MODEL_ura2, LVarA, 0, 1, 0)
        EVT_IF_EQ(MF_TrainMoving, TRUE)
            EVT_IF_EQ(MF_TrainReverseDir, FALSE)
                EVT_SET(LVar0, MV_TrainMoveDist)
                EVT_ADD(LVar0, -425)
                EVT_ADD(LVar1, 75)
                EVT_ADD(LVar2, 20)
                EVT_CALL(SetPlayerPos, LVar0, LVar1, LVar2)
            EVT_ELSE
                EVT_SET(LVar0, MV_TrainMoveDist)
                EVT_ADD(LVar0, -335)
                EVT_ADD(LVar1, 75)
                EVT_ADD(LVar2, 20)
                EVT_CALL(SetPlayerPos, LVar0, LVar1, LVar2)
            EVT_END_IF
        EVT_END_IF
        EVT_ADD(MV_TrainMoveDist, MV_TrainMoveSpeed)
        EVT_SET(LVar0, MV_TrainMoveDist)
        EVT_DIV(LVar0, 75)
        EVT_IF_NE(LVar0, LVarE)
            EVT_SET(LVarE, LVar0)
            EVT_SET(LVarD, -1)
            EVT_ADD(LVarB, 1)
            EVT_IF_EQ(LVarB, 10)
                EVT_SET(LVarB, 0)
            EVT_END_IF
        EVT_END_IF
        EVT_ADDF(LVarD, 1)
        EVT_IF_GT(LVarD, 1000)
            EVT_SET(LVarD, 1000)
        EVT_END_IF
        EVT_ADDF(LVarC, 1)
        EVT_IF_GT(LVarC, 1000)
            EVT_SET(LVarC, 0)
        EVT_END_IF
        EVT_WAIT(1)
        EVT_GOTO(0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_UpdatePassengerPos) = {
    EVT_CALL(SetNpcFlagBits, NPC_PARTNER, NPC_FLAG_GRAVITY, FALSE)
    EVT_LABEL(0)
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_SET(LVar0, MV_TrainMoveDist)
        EVT_IF_EQ(MF_TrainReverseDir, FALSE)
            EVT_ADD(LVar0, -425)
        EVT_ELSE
            EVT_ADD(LVar0, -335)
        EVT_END_IF
        EVT_SET(LVar3, LVar0)
        EVT_SET(LVar4, LVar1)
        EVT_SET(LVar5, LVar2)
        EVT_IF_EQ(MF_TrainReverseDir, FALSE)
            EVT_ADD(LVar3, -57)
        EVT_ELSE
            EVT_ADD(LVar3, 57)
        EVT_END_IF
        EVT_ADD(LVar4, -31)
        EVT_ADD(LVar5, 0)
        EVT_CALL(SetNpcPos, NPC_PARTNER, LVar3, LVar4, LVar5)
        EVT_IF_EQ(MF_TrainReverseDir, FALSE)
            EVT_ADD(LVar0, 0)
        EVT_ELSE
            EVT_ADD(LVar0, 0)
        EVT_END_IF
        EVT_ADD(LVar1, -6)
        EVT_ADD(LVar2, -40)
        EVT_CALL(SetNpcPos, NPC_TrainToad_02, LVar0, LVar1, LVar2)
        EVT_WAIT(1)
        EVT_GOTO(0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_FollowTrainCamera) = {
    EVT_LABEL(0)
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_IF_EQ(MF_TrainReverseDir, FALSE)
            EVT_IF_LT(LVar0, -1100)
                EVT_SET(LVar0, -1100)
            EVT_END_IF
            EVT_ADD(LVar0, 40)
            EVT_SET(LVar1, 30)
            EVT_ADD(LVar2, 40)
        EVT_ELSE
            EVT_IF_LT(LVar0, -1100)
                EVT_SET(LVar0, -1100)
            EVT_END_IF
            EVT_ADD(LVar0, -40)
            EVT_SET(LVar1, 30)
            EVT_ADD(LVar2, 40)
        EVT_END_IF
        EVT_CALL(SetCamTarget, CAM_DEFAULT, LVar0, LVar1, LVar2)
        EVT_WAIT(1)
        EVT_GOTO(0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_ArriveFromToadTown) = {
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(DisablePlayerPhysics, TRUE)
    EVT_CALL(DisablePartnerAI, 0)
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_IDLE)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_CALL(InterpPlayerYaw, 90, 0)
    EVT_CALL(InterpNpcYaw, NPC_PARTNER, 90, 0)
    EVT_CALL(EnableNpcShadow, NPC_PARTNER, FALSE)
    EVT_CALL(HidePlayerShadow, TRUE)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_deilitk, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o284, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o273, COLLIDER_FLAGS_UPPER_MASK)
    EVT_EXEC_GET_TID(N(EVS_FollowTrainCamera), LVar9)
    EVT_EXEC_GET_TID(N(EVS_UpdatePassengerPos), LVarE)
    EVT_SET(MF_TrainMoving, TRUE)
    EVT_SET(MV_TrainMoveDist, -1200)
    EVT_SET(MV_TrainMoveSpeed, 0)
    EVT_SET(MF_TrainReverseDir, FALSE)
    EVT_WAIT(60)
    EVT_EXEC(N(EVS_CloseCrossingGates))
    EVT_SET(MV_TrainMoveDist, -1200)
    EVT_SET(MV_TrainMoveSpeed, -10)
    EVT_SET(MF_TrainReverseDir, FALSE)
    EVT_LABEL(0)
        EVT_SETF(MV_TrainMoveSpeed, 0)
        EVT_SUBF(MV_TrainMoveSpeed, MV_TrainMoveDist)
        EVT_ADDF(MV_TrainMoveSpeed, EVT_FLOAT(10.0))
        EVT_DIVF(MV_TrainMoveSpeed, EVT_FLOAT(10.0))
        EVT_IF_GT(MV_TrainMoveSpeed, 10)
            EVT_SET(MV_TrainMoveSpeed, 10)
        EVT_END_IF
        EVT_IF_GE(MV_TrainMoveDist, 0)
            EVT_GOTO(1)
        EVT_END_IF
        EVT_WAIT(1)
        EVT_GOTO(0)
    EVT_LABEL(1)
    EVT_SET(MV_TrainMoveDist, 0)
    EVT_SET(MV_TrainMoveSpeed, 0)
    EVT_CALL(PlaySound, SOUND_1FD)
    EVT_KILL_THREAD(LVarE)
    EVT_SET(MF_TrainMoving, FALSE)
    EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
    EVT_SET(LVar0, -425)
    EVT_SET(LVar1, 45)
    EVT_SET(LVar2, 20)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_JUMP)
    EVT_CALL(PlayerJump, LVar0, LVar1, LVar2, 15)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_CALL(SetNpcFlagBits, NPC_PARTNER, NPC_FLAG_IGNORE_WORLD_COLLISION | NPC_FLAG_IGNORE_PLAYER_COLLISION, TRUE)
    EVT_CALL(SetNpcSpeed, NPC_PARTNER, EVT_FLOAT(3.0))
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_WALK)
    EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
    EVT_SET(LVar0, -440)
    EVT_SET(LVar1, 45)
    EVT_SET(LVar2, 20)
    EVT_CALL(NpcMoveTo, NPC_PARTNER, LVar0, LVar2, 0)
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_IDLE)
    EVT_KILL_THREAD(LVar9)
    EVT_CALL(EnableNpcShadow, NPC_PARTNER, TRUE)
    EVT_CALL(HidePlayerShadow, FALSE)
    EVT_SET(MF_TrainArriveDoorOpen, TRUE)
    EVT_WAIT(20)
    EVT_CALL(UseSettingsFrom, CAM_DEFAULT, -420, 20, 97)
    EVT_CALL(SetPanTarget, CAM_DEFAULT, -420, 20, 97)
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 1)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_deilitk, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
    EVT_CALL(SetPlayerActionState, ACTION_STATE_JUMP)
    EVT_CALL(PlayerJump, -420, 20, 97, 15)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_CALL(SetNpcJumpscale, NPC_PARTNER, EVT_FLOAT(1.0))
    EVT_CALL(NpcJump0, NPC_PARTNER, -412, 20, 76, 15)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_deilitk, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(WaitForCam, CAM_DEFAULT, EVT_FLOAT(1.0))
    EVT_CALL(DisablePlayerPhysics, FALSE)
    EVT_CALL(EnablePartnerAI)
    EVT_EXEC(N(EVS_OpenCrossingGates))
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_deilitk, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_o284, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_o273, COLLIDER_FLAGS_UPPER_MASK)
    EVT_SET(MF_TrainArrivePlayerDisembark, TRUE)
    EVT_WAIT(20)
    EVT_CALL(SpeakToPlayer, NPC_TrainToad_01, ANIM_TrainToad_White_Talk, ANIM_TrainToad_White_Idle, 0, MSG_CH2_0000)
    EVT_CALL(SetNpcFlagBits, NPC_PARTNER, NPC_FLAG_IGNORE_WORLD_COLLISION, FALSE)
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 0)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_DepartForToadTown) = {
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(DisablePlayerPhysics, TRUE)
    EVT_CALL(DisablePartnerAI, 0)
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_IDLE)
    EVT_SET(MV_TrainMoveDist, -90)
    EVT_SET(MV_TrainMoveSpeed, 0)
    EVT_SET(MF_TrainReverseDir, TRUE)
    EVT_SET(MF_TrainDepartDoorOpen, TRUE)
    EVT_WAIT(20)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_deilitk, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o284, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o273, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(SetPlayerSpeed, EVT_FLOAT(3.0))
    EVT_CALL(PlayerMoveTo, -425, 70, 0)
    EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
    EVT_SET(LVar0, -425)
    EVT_SET(LVar1, 45)
    EVT_SET(LVar2, 20)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_JUMP)
    EVT_CALL(PlayerJump, LVar0, LVar1, LVar2, 15)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_CALL(SetNpcFlagBits, NPC_PARTNER, NPC_FLAG_GRAVITY, FALSE)
    EVT_CALL(SetNpcFlagBits, NPC_PARTNER, NPC_FLAG_IGNORE_WORLD_COLLISION, TRUE)
    EVT_CALL(SetNpcSpeed, NPC_PARTNER, EVT_FLOAT(3.0))
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_WALK)
    EVT_CALL(NpcMoveTo, NPC_PARTNER, -425, 70, 0)
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_IDLE)
    EVT_CALL(SetNpcJumpscale, NPC_PARTNER, EVT_FLOAT(1.0))
    EVT_SET(LVar0, -425)
    EVT_SET(LVar1, 45)
    EVT_SET(LVar2, 20)
    EVT_CALL(NpcJump0, NPC_PARTNER, LVar0, LVar1, LVar2, 10)
    EVT_SET(MF_TrainDepartPlayerBoard, TRUE)
    EVT_WAIT(20)
    EVT_CALL(GetNpcPos, NPC_PARTNER, LVar0, LVar1, LVar2)
    EVT_ADD(LVar2, -50)
    EVT_CALL(SetNpcPos, NPC_PARTNER, LVar0, LVar1, LVar2)
    EVT_CALL(EnableNpcShadow, NPC_PARTNER, FALSE)
    EVT_CALL(HidePlayerShadow, TRUE)
    EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
    EVT_SET(LVar0, -425)
    EVT_SET(LVar1, 75)
    EVT_SET(LVar2, 20)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_JUMP)
    EVT_CALL(PlayerJump, LVar0, LVar1, LVar2, 15)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_CALL(InterpPlayerYaw, 270, 0)
    EVT_SET(MF_TrainMoving, TRUE)
    EVT_CALL(SetNpcSpeed, NPC_PARTNER, EVT_FLOAT(3.0))
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_WALK)
    EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
    EVT_ADD(LVar0, 57)
    EVT_ADD(LVar1, -31)
    EVT_ADD(LVar2, 0)
    EVT_CALL(NpcMoveTo, NPC_PARTNER, LVar0, LVar2, 0)
    EVT_CALL(SetNpcAnimation, NPC_PARTNER, PARTNER_ANIM_IDLE)
    EVT_CALL(InterpNpcYaw, NPC_PARTNER, 270, 0)
    EVT_EXEC(N(EVS_UpdatePassengerPos))
    EVT_EXEC(N(EVS_CloseCrossingGates))
    EVT_CALL(UseSettingsFrom, CAM_DEFAULT, -1000, 0, 0)
    EVT_CALL(SetCamDistance, CAM_DEFAULT, EVT_FLOAT(245.0))
    EVT_CALL(SetCamPosA, CAM_DEFAULT, EVT_FLOAT(-538.5), EVT_FLOAT(-60.0))
    EVT_CALL(SetCamPitch, CAM_DEFAULT, EVT_FLOAT(0.0), EVT_FLOAT(-10.0))
    EVT_CALL(SetCamSpeed, CAM_DEFAULT, EVT_FLOAT(2.0))
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 1)
    EVT_WAIT(1)
    EVT_SUB(LVar0, 150)
    EVT_CALL(SetPanTarget, CAM_DEFAULT, LVar0, LVar1, LVar2)
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 1)
    EVT_CALL(WaitForCam, CAM_DEFAULT, EVT_FLOAT(1.0))
    EVT_CALL(SpeakToPlayer, NPC_TrainToad_02, ANIM_TrainToad_Talk, ANIM_TrainToad_Still, 5, MSG_CH2_0003)
    EVT_CALL(PlaySound, SOUND_82)
    EVT_THREAD
        EVT_LOOP(1000)
            EVT_SUBF(MV_TrainMoveSpeed, EVT_FLOAT(0.031))
            EVT_IF_LT(MV_TrainMoveSpeed, -10)
                EVT_SETF(MV_TrainMoveSpeed, EVT_FLOAT(-10.0))
            EVT_END_IF
            EVT_WAIT(1)
        EVT_END_LOOP
    EVT_END_THREAD
    EVT_WAIT(90)
    EVT_CALL(PanToTarget, CAM_DEFAULT, 0, 0)
    EVT_EXEC_GET_TID(N(EVS_FollowTrainCamera), LVar9)
    EVT_WAIT(130)
    EVT_WAIT(100)
    EVT_CALL(GotoMap, EVT_PTR("iwa_11"), iwa_11_ENTRY_1)
    EVT_WAIT(100)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_InitializeTrainScene) = {
    EVT_CALL(EnableModel, MODEL_km, FALSE)
    EVT_CALL(SetModelFlags, MODEL_km, MODEL_FLAG_USE_CAMERA_UNK_MATRIX, TRUE)
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(0))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(1))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(2))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(3))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(4))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(5))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(6))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(7))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(8))
    EVT_CALL(CloneModel, MODEL_km, CLONED_MODEL(9))
    EVT_SET(MF_TrainReverseDir, TRUE)
    EVT_SET(MV_TrainMoveDist, -90)
    EVT_EXEC(N(EVS_AnimateTrain))
    EVT_WAIT(1)
    EVT_CALL(RotateGroup, MODEL_fumi1, 105, 0, 1, 0)
    EVT_CALL(RotateGroup, MODEL_fumi2, 105, 0, 1, 0)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt1, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_tt2, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt3, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_CLEAR_BITS, COLLIDER_tt4, COLLIDER_FLAGS_UPPER_MASK)
    EVT_RETURN
    EVT_END
};
