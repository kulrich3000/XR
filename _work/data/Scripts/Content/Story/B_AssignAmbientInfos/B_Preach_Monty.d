// ***************
// B_Preach_Monty
// ***************

func void B_Preach_Monty(var int satz)
{
	if (satz == 0) 	
	{	
		// Hier Applaus-Ende

		if (!Npc_IsInState(Mod_1049_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1049_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1059_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1059_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1055_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1055_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1065_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1065_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1073_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1073_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1072_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1072_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1044_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1044_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};

		AI_Output (self, self, "Info_Mod_Monty_Preach_31_00"); //In the middle of the night, I crept through the orklager.
	};
	if (satz == 1) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_01"); //I slit the orc guards' throats so that they swam in their blood!

		// Hier kommt dann das applaudierende Publikum drunter (T_STAND_2_CLAPHANDS oder so)

		if (!Npc_IsInState(Mod_1049_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1049_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1059_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1059_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1055_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1055_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1065_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1065_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1073_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1073_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1072_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1072_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1044_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1044_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
	};
	if (satz == 2) 	
	{
		// Hier Applaus-Ende

		if (!Npc_IsInState(Mod_1049_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1049_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1059_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1059_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1055_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1055_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1065_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1065_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1073_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1073_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1072_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1072_VLK_Buergerin_NW, "T_CLAPHANDS_2_STAND");
		};
		if (!Npc_IsInState(Mod_1044_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1044_VLK_Buerger_NW, "T_CLAPHANDS_2_STAND");
		};

		AI_Output (self, self, "Info_Mod_Monty_Preach_31_02"); //Then I descended into the cave like a grave.
	};
	if (satz == 3) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_03"); //It was pitch-dark and crowded there, and it was teeming with demons and worse.
	};
	if (satz == 4) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_04"); //Finally, I thought I was down there for weeks, widened the cave, and in the middle of it, ugly and huge, the sleeper squats.
	};
	if (satz == 5) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_05"); //And now - me against him, 20 meters and 14 legs against two.
	};
	if (satz == 6) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_06"); //Fight to the death.
	};
	if (satz == 7) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_07"); //No way, I think. But I'm not giving up!
	};
	if (satz == 8) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_08"); //One leg after the other falls, green acid splashes out and burns my eyes until I hardly see anything.
	};
	if (satz == 9) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_09"); //I hack and sting, and at some point - no more stirring. I have won!
	};
	if (satz == 10) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_10"); //And here's everything that's left of him!

		// Hier kommt dann das applaudierende Publikum drunter (T_STAND_2_CLAPHANDS oder so)

		if (!Npc_IsInState(Mod_1049_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1049_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1059_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1059_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1055_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1055_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1065_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1065_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1073_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1073_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1072_VLK_Buergerin_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1072_VLK_Buergerin_NW, "T_STAND_2_CLAPHANDS");
		};
		if (!Npc_IsInState(Mod_1044_VLK_Buerger_NW, ZS_Talk)) {
			AI_PlayAni	(Mod_1044_VLK_Buerger_NW, "T_STAND_2_CLAPHANDS");
		};
	};
};
