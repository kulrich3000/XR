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

		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_00"); //Co sie tu dzieje?
	};

	if (Mod_LobartAlwinScene_Counter == 7)
	{
		AI_Output(Mod_910_BAU_Lobart_NW, NULL, "Info_Mod_LobartAlwinScene_26_01"); //Chlopak zabil moja owce! O czym on mysli!
	};

	if (Mod_LobartAlwinScene_Counter == 12)
	{
		AI_TurnToNpc	(Mod_597_NONE_Meldor_NW, Mod_910_BAU_Lobart_NW);

		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_02"); //Wszystko jest w porzadku, czlowiek. Czy mozesz powiedziec cos wiecej?
	};

	if (Mod_LobartAlwinScene_Counter == 17)
	{
		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_03"); //Czy ktos moze mi udzielic odpowiedzi?
	};

	if (Mod_LobartAlwinScene_Counter == 22)
	{
		AI_Output(Mod_910_BAU_Lobart_NW, NULL, "Info_Mod_LobartAlwinScene_26_04"); //Bilem go w dól! Och, Innos! Czy jeszcze zyje?
	};

	if (Mod_LobartAlwinScene_Counter == 27)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_05"); //Jest nadal bardzo szczesliwy. Nie bedzie czul sie gorzej niz po gorzalce.
	};

	if (Mod_LobartAlwinScene_Counter == 32)
	{
		AI_TurnToNpc	(Mod_597_NONE_Meldor_NW, hero);
		AI_TurnToNpc	(hero, Mod_597_NONE_Meldor_NW);

		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_06"); //(do bohatera) Lobart poszedl troche zwariowany, gdy zobaczyl kogos atakujacego jego owce.
	};

	if (Mod_LobartAlwinScene_Counter == 37)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_07"); //Poszedl prosto do miasta i do Alwin, a on byl szczesliwy, ze wlasnie zabil swieze owce.
	};

	if (Mod_LobartAlwinScene_Counter == 42)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_08"); //I wtedy Lobart juz do niego dotarl, uciekl, yo, a my wciaz widzimy, jak daleko on sie posunal.
	};

	if (Mod_LobartAlwinScene_Counter == 47)
	{
		AI_Output(hero, NULL, "Info_Mod_LobartAlwinScene_15_09"); //Czy to owce Lobarta zabily Alwin?
	};

	if (Mod_LobartAlwinScene_Counter == 52)
	{
		AI_Output(Mod_597_NONE_Meldor_NW, NULL, "Info_Mod_LobartAlwinScene_07_10"); //Nie wiem o tym. Nie pomyslalem o tym tak daleko.
	};

	if (Mod_LobartAlwinScene_Counter == 57)
	{
		Mod_LobartAlwin = 2;

		CutsceneAn = FALSE;
	};

	Mod_LobartAlwinScene_Counter += 1;
};
