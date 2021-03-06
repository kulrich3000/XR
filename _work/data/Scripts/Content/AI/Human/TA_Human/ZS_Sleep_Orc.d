// *************************************
// NSC steht mit verschränkten Armen rum
// *************************************

func void ZS_Sleep_Orc()
{	
	Perception_Set_Normal();
	Perception_Set_Monster_Rtn();
	
	B_UseHat (self);
	
	B_ResetAll (self);
	
	if (self.aivar[AIV_Schwierigkeitsgrad] < Mod_Schwierigkeit)
	|| (self.aivar[AIV_Schwierigkeitsgrad] > Mod_Schwierigkeit)
	{
		B_SetSchwierigkeit();
	};

	AI_SetWalkmode 	(self, NPC_WALK);
	if (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)==FALSE)  //damit die Monster beim Inserten nicht immer erst zum WP rennen, sondern nur, wenn sie der Heimat zu fern sind
	{
		AI_GotoWP (self, self.WP);
	};	
	
	self.aivar[AIV_TAPOSITION] = NOTINPOS;
};

func int ZS_Sleep_Orc_loop()
{
	if (Npc_IsOnFP (self, "SLEEP"))
	{	
		AI_AlignToFP (self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		};
	}	
	else if (Wld_IsFPAvailable(self,"SLEEP"))
	{
		AI_GotoFP 		(self, "SLEEP");
		AI_StandUp 		(self);
		AI_AlignToFP 	(self);
		self.aivar[AIV_TAPOSITION] = NOTINPOS_WALK;
	}
	else
	{
		AI_AlignToWP (self);
		if (self.aivar[AIV_TAPOSITION] == NOTINPOS_WALK)
  		{
  			self.aivar[AIV_TAPOSITION] = NOTINPOS;
  		}; 
	};

	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
	{
		self.aivar[AIV_TAPOSITION] = ISINPOS;

		AI_PlayAni	(self, "T_STAND_2_GUARDSLEEP");
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Sleep_Orc_end()
{
	AI_PlayAni	(self, "T_GUARDSLEEP_2_STAND");
};