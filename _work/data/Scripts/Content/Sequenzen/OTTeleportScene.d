var int Mod_OTTeleportScene_Counter;

FUNC VOID OTTeleportScene()
{
	if (Mod_OTTeleportScene_Counter == 0)
	{
		AI_StandUP	(hero);

		CutsceneAn = TRUE;

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_00"); //Great, I can't teleport myself as an undead.
	};

	if (Mod_OTTeleportScene_Counter == 6)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_01"); //I have to find a way back to life first.
	};

	if (Mod_OTTeleportScene_Counter == 12)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_02"); //But how? I already took everything the temple has to offer before I met the sleeper.
	};

	if (Mod_OTTeleportScene_Counter == 18)
	{
		AI_StandUP	(hero);

		AI_Output(hero, NULL, "Info_Mod_OTTeleportScene_15_03"); //(thought) Hmm, maybe the earthquakes will take me to places I haven't been able to find before...?
	};

	if (Mod_OTTeleportScene_Counter == 24)
	{
		TooLessMana = 2;

		B_LogEntry	(TOPIC_MOD_ANFANG, "Great, I can't teleport myself as an undead. I have to find a way back to life first. But how? I already took everything the temple has to offer before I met the sleeper. (thought) Hmm, maybe the earthquakes will take me to places I haven't been able to find before...?");

		CutsceneAn = FALSE;
	};

	Mod_OTTeleportScene_Counter += 1;
};
