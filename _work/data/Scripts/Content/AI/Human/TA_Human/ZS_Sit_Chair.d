// *****************
// NSC benutzt Chair
// *****************

FUNC VOID ZS_Sit_Chair ()
{
	Perception_Set_Normal();
	
	B_UseHat (self);

	B_ResetAll (self);
	
	if (self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit)
	{
		B_SetSchwierigkeit();
	};

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Mod_1871_TPL_GorKaranto_MT)) {
		Npc_PerceiveAll (self);
	
		if (Wld_DetectItem (self, ITEM_KAT_NF)) {
			if (Hlp_IsValidItem (item) && Npc_GetDistToItem(self, item) < 750) {
				if (Npc_GetDistToItem (self, item) > 500) {
					AI_GotoItem (self, item);
				};

				AI_TakeItem (self, item);
			};
		};
	};

	if (!C_BodyStateContains(self, BS_SIT))
	{
		AI_SetWalkmode 	(self, NPC_WALK);		
	
		if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    	{
			AI_GotoWP	(self, self.wp);
		};
	};	
};

FUNC int ZS_Sit_Chair_Loop ()
{	
	if (!C_BodyStateContains(self, BS_SIT))
	&& (Wld_IsMobAvailable(self,"CHAIR"))
	{
		AI_UseMob (self, "CHAIR", 1);
	};
	
	// ------ Random-Anis im Sitzen ------
	if (C_BodyStateContains(self, BS_SIT))
	&& (Npc_GetStateTime(self) > 5)
	{
		var int random;	random = Hlp_Random(10);
		
		if (random <= 0)	{	AI_PlayAniBS (self, "R_CHAIR_RANDOM_1",BS_SIT);		};
		if (random <= 1)	{	AI_PlayAniBS (self, "R_CHAIR_RANDOM_2",BS_SIT);		};
		if (random <= 2)	{	AI_PlayAniBS (self, "R_CHAIR_RANDOM_3",BS_SIT);		};
		if (random <= 3)	{	AI_PlayAniBS (self, "R_CHAIR_RANDOM_4",BS_SIT);		};
		
		Npc_SetStateTime(self, 0);
	};
		
	return LOOP_CONTINUE;
};

FUNC VOID ZS_Sit_Chair_End ()
{
	AI_UseMob (self, "CHAIR", -1);
};

