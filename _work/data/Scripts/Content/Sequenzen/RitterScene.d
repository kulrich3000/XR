var int Mod_RitterScene_Counter;

FUNC VOID RitterScene()
{
	if (Mod_RitterScene_Counter == 0)
	{
		Npc_ClearAIQueue	(Mod_569_RIT_Cedric_NW);
		Npc_ClearAIQueue	(Mod_501_RIT_Gerold_NW);
		Npc_ClearAIQueue	(Mod_1244_RIT_Ritter_NW);

		AI_StandUp	(Mod_569_RIT_Cedric_NW);
		AI_StandUp	(Mod_501_RIT_Gerold_NW);
		AI_StandUp	(Mod_1244_RIT_Ritter_NW);

		B_StartOtherRoutine	(Mod_569_RIT_Cedric_NW, "PRUEGEL");
		B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "PRUEGEL");
		B_StartOtherRoutine	(Mod_1244_RIT_Ritter_NW, "PRUEGEL");

		AI_GotoWP	(hero, "WP_RITTERSCENE_HERO");

		Wld_SendTrigger	("EVT_RATHAUS_RITTERSCENE");

		CutsceneAn = TRUE;
	};

	if (Mod_RitterScene_Counter == 2)
	{
		AI_TurnToNpc	(Mod_569_RIT_Cedric_NW, hero);
		AI_TurnToNpc	(Mod_501_RIT_Gerold_NW, hero);
		AI_TurnToNpc	(Mod_1244_RIT_Ritter_NW, hero);

		AI_ReadyMeleeWeapon	(Mod_569_RIT_Cedric_NW);
	};

	if (Mod_RitterScene_Counter == 4)
	{
		AI_GotoNpc	(Mod_569_RIT_Cedric_NW, hero);
	};

	if (Mod_RitterScene_Counter == 6)
	{
		AI_TurnToNpc	(Mod_569_RIT_Cedric_NW, hero);

		AI_PlayAni	(Mod_569_RIT_Cedric_NW, "T_1HATTACKMOVE");
	};

	if (Mod_RitterScene_Counter == 7)
	{
		AI_PlayAni	(hero, "T_STAND_2_WOUNDED");
	};

	if (Mod_RitterScene_Counter == 8)
	{
		AI_StandUp	(Mod_569_RIT_Cedric_NW);
		Npc_ClearAIQueue	(Mod_569_RIT_Cedric_NW);
	};

	if (Mod_RitterScene_Counter == 9)
	{
		AI_RemoveWeapon	(Mod_569_RIT_Cedric_NW);
	};

	if (Mod_RitterScene_Counter == 10)
	{
		AI_Output(Mod_569_RIT_Cedric_NW, NULL, "Info_Mod_RitterScene_12_00"); //Zburzmy sie, nie chcemy tu kryminalistów!
	};

	if (Mod_RitterScene_Counter == 16)
	{
		AI_Output(Mod_501_RIT_Gerold_NW, NULL, "Info_Mod_RitterScene_12_01"); //Wystarczy tylko uderzyc w prawdziwe dobro!
	};

	if (Mod_RitterScene_Counter == 22)
	{
		AI_Output(Mod_1244_RIT_Ritter_NW, NULL, "Info_Mod_RitterScene_12_02"); //Taki maly robak!
	};

	if (Mod_RitterScene_Counter == 24)
	{
		B_StartOtherRoutine	(Mod_579_RIT_Girion_NW, "PRUEGEL");
	};

	if (Mod_RitterScene_Counter == 26)
	{
		AI_TurnToNpc	(Mod_579_RIT_Girion_NW, Mod_569_RIT_Cedric_NW);

		AI_Output(Mod_579_RIT_Girion_NW, NULL, "Info_Mod_RitterScene_08_03"); //Hej, zostaw go samemu! Jesli nie pracujesz z pelna wydajnoscia, mozesz otrzymac dodatkowe lekcje.
	};

	if (Mod_RitterScene_Counter == 32)
	{
		AI_TurnToNpc	(Mod_569_RIT_Cedric_NW, Mod_579_RIT_Girion_NW);

		AI_Output(Mod_569_RIT_Cedric_NW, NULL, "Info_Mod_RitterScene_12_04"); //To taka kolonia!
	};

	if (Mod_RitterScene_Counter == 38)
	{
		AI_Output(Mod_579_RIT_Girion_NW, NULL, "Info_Mod_RitterScene_08_05"); //I obywatel miasta. Nie bedzie to nie wszystko, co zablakane.
	};

	if (Mod_RitterScene_Counter == 44)
	{
		AI_Output(Mod_579_RIT_Girion_NW, NULL, "Info_Mod_RitterScene_08_06"); //Wiec po co sie stoicie? Wejdz!
	};

	if (Mod_RitterScene_Counter == 50)
	{
		B_StartOtherRoutine	(Mod_569_RIT_Cedric_NW, "START");
		B_StartOtherRoutine	(Mod_501_RIT_Gerold_NW, "START");
		B_StartOtherRoutine	(Mod_1244_RIT_Ritter_NW, "START");
	};

	if (Mod_RitterScene_Counter == 51)
	{
		AI_TurnToNpc	(Mod_579_RIT_Girion_NW, hero);

		AI_PlayAni	(Mod_579_RIT_Girion_NW, "T_PLUNDER");
	};

	if (Mod_RitterScene_Counter == 55)
	{
		AI_Output(Mod_579_RIT_Girion_NW, NULL, "Info_Mod_RitterScene_08_07"); //Beda mieli swój niebieski cud. Prosze mi wybaczyc, ze wczesniej nie moglem interweniowac.

		AI_PlayAni	(hero, "T_WOUNDED_2_STAND");
	};

	if (Mod_RitterScene_Counter == 61)
	{
		AI_TurnToNpc	(hero, Mod_579_RIT_Girion_NW);

		AI_Output(hero, NULL, "Info_Mod_RitterScene_15_08"); //Wszystkie sluszne, wszystkie sluszne.
	};

	if (Mod_RitterScene_Counter == 67)
	{
		B_StartOtherRoutine	(Mod_579_RIT_Girion_NW, "START");

		Wld_SendUnTrigger	("EVT_RATHAUS_RITTERSCENE");

		Mod_RitterScene = 2;

		CutsceneAn = FALSE;
	};

	Mod_RitterScene_Counter += 1;
};
