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

		AI_Output (self, self, "Info_Mod_Monty_Preach_31_00"); //W srodku nocy wskakiwalem przez orklager.
	};
	if (satz == 1) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_01"); //Przerzucilem gardla strazników orków tak, aby plynieli we krwi!

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

		AI_Output (self, self, "Info_Mod_Monty_Preach_31_02"); //Potem zjechalem do jaskini jak grób.
	};
	if (satz == 3) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_03"); //Bylo ciemno na boisku i bylo tam zatloczone, tetnilo demonami i gorzej.
	};
	if (satz == 4) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_04"); //W koncu pomyslalem, ze jestem tam przez tygodnie, poszerzylem jaskinie, a posrodku, brzydki i ogromny, spiewak.
	};
	if (satz == 5) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_05"); //A teraz - ja przeciwko niemu, 20 metrów i 14 nóg przy dwóch.
	};
	if (satz == 6) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_06"); //Walczyc do smierci.
	};
	if (satz == 7) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_07"); //Nie sadze, by bylo inaczej. Ale nie poddaje sie!
	};
	if (satz == 8) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_08"); //Jedna noga po upadku, zielony kwas rozpryskuje sie i spala oczy, az prawie nic nie widze.
	};
	if (satz == 9) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_09"); //Caknelam i uzadlam, a w pewnym momencie przestalam sie mieszac. Zwyciezylem!
	};
	if (satz == 10) 	
	{	
		AI_Output (self, self, "Info_Mod_Monty_Preach_31_10"); //Oto wszystko, co mu pozostalo!

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
