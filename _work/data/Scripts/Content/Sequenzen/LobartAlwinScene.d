var int Mod_LobartAlwinScene_Counter;

FUNC VOID LobartAlwinScene()
{
	if (Mod_LobartAlwinScene_Counter == 0)
	{
		AI_TurnToNpc	(Mod_910_BAU_Lobart_NW, Mod_560_NONE_Alwin_NW);
		AI_TurnToNpc	(Mod_597_NONE_Meldor_NW, Mod_560_NONE_Alwin_NW);
		AI_TurnToNpc	(Mod_593_NONE_Lucy_NW, Mod_560_NONE_Alwin_NW);
		AI_TurnToNpc	(Mod_1041_VLK_Buergerin_NW, Mod_560_NONE_Alwin_NW);
		AI_TurnToNpc	(Mod_1039_VLK_Buergerin_NW, Mod_560_NONE_Alwin_NW);

		AI_GotoWP	(hero, "NW_CITY_PATH_HABOUR_07");

		Wld_SendTrigger	("EVT_LOBARTALWIN_SCENE");

		CutsceneAn = TRUE;
	};

	if (Mod_LobartAlwinScene_Counter == 2)
	{
		AI_TurnToNpc	(hero, Mod_910_BAU_Lobart_NW);

		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_00"); //What's going on here?
	};

	if (Mod_LobartAlwinScene_Counter == 7)
	{
		AI_Output(Mod_910_BAU_Lobart_NW, NULL, "Info_Mod_LobartAlwinScene_26_01"); //The guy slaughtered my sheep! What does he think of?!
	};

	if (Mod_LobartAlwinScene_Counter == 12)
	{
		AI_TurnToNpc	(Mod_597_NONE_Meldor_NW, Mod_910_BAU_Lobart_NW);

		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_02"); //It's all right, man. Can you say anything else?
	};

	if (Mod_LobartAlwinScene_Counter == 17)
	{
		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_03"); //Can somebody give me an answer?
	};

	if (Mod_LobartAlwinScene_Counter == 22)
	{
		AI_Output(Mod_910_BAU_Lobart_NW, NULL, "Info_Mod_LobartAlwinScene_26_04"); //I beat him down! Oh, Innos! Is he still alive?
	};

	if (Mod_LobartAlwinScene_Counter == 27)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_05"); //He's still very happy. He won't feel worse than after a piss upset.
	};

	if (Mod_LobartAlwinScene_Counter == 32)
	{
		AI_TurnToNpc	(Mod_597_NONE_Meldor_NW, hero);
		AI_TurnToNpc	(hero, Mod_597_NONE_Meldor_NW);

		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_06"); //(to the hero) Lobart went a little crazy when he saw someone attacking his sheep.
	};

	if (Mod_LobartAlwinScene_Counter == 37)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_07"); //He went straight to town and to Alwin, and he was unlucky to have just slaughtered fresh sheep.
	};

	if (Mod_LobartAlwinScene_Counter == 42)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_08"); //And then Lobart has already got to him, he ran away, yo, and we can still see how far he has come.
	};

	if (Mod_LobartAlwinScene_Counter == 47)
	{
		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_09"); //Was it Lobart's sheep that killed Alwin?
	};

	if (Mod_LobartAlwinScene_Counter == 52)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_10"); //I don't know about that. I haven't thought about it that far.
	};

	if (Mod_LobartAlwinScene_Counter == 57)
	{
		Mod_LobartAlwin = 2;

		CutsceneAn = FALSE;
	};

	Mod_LobartAlwinScene_Counter += 1;
};
