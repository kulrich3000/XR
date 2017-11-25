var int Mod_OTTeleportScene_Counter;

FUNC VOID OTTeleportScene()
{
	if (Mod_OTTeleportScene_Counter == 0)
	{
		AI_StandUP	(hero);

		CutsceneAn = TRUE;

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_00"); //Wspaniale, nie moge sie teleportowac jako nieumarly.
	};

	if (Mod_OTTeleportScene_Counter == 6)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_01"); //Musze najpierw znalezc droge powrotu do zycia.
	};

	if (Mod_OTTeleportScene_Counter == 12)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_02"); //Ale jak? Wzialem juz wszystko, co swiatynia ma do zaoferowania, zanim spotkalem sypialnia.
	};

	if (Mod_OTTeleportScene_Counter == 18)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_03"); //(omyslilem sie) Hmm, moze trzesienia ziemi zaprowadza mnie w miejsca, których nie udalo mi sie znalezc wczesniej....?
	};

	if (Mod_OTTeleportScene_Counter == 24)
	{
		TooLessMana = 2;

		B_LogEntry	(TOPIC_MOD_ANFANG, "Wspaniale, nie moge sie teleportowac jako nieumarly. Musze najpierw znalezc droge powrotu do zycia. Ale jak? Wzialem juz wszystko, co swiatynia ma do zaoferowania, zanim spotkalem sypialnia. (omyslilem sie) Hmm, moze trzesienia ziemi zaprowadza mnie w miejsca, których nie udalo mi sie znalezc wczesniej....?");

		CutsceneAn = FALSE;
	};

	Mod_OTTeleportScene_Counter += 1;
};
