// **********************
// NSC benutzt Herd
// **********************

FUNC VOID ZS_Cook_Stove ()
{
	Perception_Set_Normal();
	
	B_UseHat (self);
	
	B_ResetAll (self);
	
	if (self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit)
	{
		B_SetSchwierigkeit();
	};

	AI_SetWalkmode 	(self, NPC_WALK);		
	
	if (Hlp_StrCmp (Npc_GetNearestWP(self), self.wp) == FALSE)
    {
		AI_GotoWP	(self, self.wp);
	};
	if (Npc_HasItems (self,ItMi_Pan) == 0)
	{
		CreateInvItem (self,ItMi_Pan);				
	};
};

FUNC int ZS_Cook_Stove_Loop ()
{
	// ------ Braten ------
	if (!C_BodyStateContains(self, BS_MOBINTERACT_INTERRUPT))
	&& (Wld_IsMobAvailable(self,"STOVE"))
	{
		AI_UseMob (self, "STOVE", 1);
	};
		
	return LOOP_CONTINUE;
};

FUNC VOID ZS_Cook_Stove_End ()
{
	AI_UseMob (self, "STOVE", -1);
	//if (Npc_HasItems (self,ItFoMutton)>=1)
	//{
		//Npc_RemoveInvItems	(self,ItFoMutton ,1 );
	//};	
};





