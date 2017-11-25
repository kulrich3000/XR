var int Mod_FortunoSumpfmensch_Scene_Counter;

FUNC VOID FortunoSumpfmensch_Scene()
{
	if (Mod_FortunoSumpfmensch_Scene_Counter == 1)
	{
		Wld_SendTrigger	("EVT_CAMERA_FORTUNO_SUMPFMENSCH");

		CutsceneAn = TRUE;

		AI_GotoWP	(hero, "PSI_PLACE");

		AI_PlayAni	(hero, "T_STAND_2_SIT");
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 3)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_00"); //Na dlugo przed tym zanim pierwsi bracia naszej wspólnoty wkroczyli do tego bagna, aby pielegnowac ziemie odlogowana i martwa oraz aby stworzyc sobie nowy dom, czlowiek zyl w zaglebieniach blota.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 9)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_01"); //Na dlugo przed tym zanim pierwsi bracia naszej wspólnoty wkroczyli do tego bagna, aby pielegnowac ziemie odlogowana i martwa oraz aby stworzyc sobie nowy dom, czlowiek zyl w zaglebieniach blota.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 15)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_02"); //Nikt nie wie, dlaczego wyrzekl sie swiata. Niektórzy mówia, ze byl on podmiencem lub pólroslepym.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 21)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_03"); //Matka czlowieka i ojciec jednego z ciemnych stworzen zamieszkujacych ten obszar tak wiele razy w przeszlosci.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 27)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_04"); //Inni uwazaja, ze niegdys byl wladca, sprawiedliwy i szczery wobec ludzi i prawa, lojalny wobec swoich przyjaciól i wierny swojej zonie.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 33)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_05"); //Kiedy jednak zdezorientowane sciezki losu zmusily go do rozstrzelania prawnie swojej kochanki z powodu zlamania malzenstwa, nie mógl juz dluzej znosic lustrzanej twarzy.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 39)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_06"); //Kolysal oczy i wiatr wpedzil go w zgnile glebiny bagna.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 45)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_07"); //Inni twierdza jednak, ze istota ta nigdy nie byla czlowiekiem, a homunculusem, stworzeniem stworzonym z mrocznych sztuk alchemii, które nie potrafily przetrwac swego istnienia niesmiertelnie i uciekly od swoich twórców.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 51)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_08"); //Kto lub cokolwiek to jest istota, przez dziesieciolecia i wieki stala sie czescia bagna, jadla z rekinami bagiennymi i polowala na szczury bagienne.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 57)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_09"); //Kto lub cokolwiek to jest istota, przez dziesieciolecia i wieki stala sie czescia bagna, jadla z rekinami bagiennymi i polowala na szczury bagienne.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 63)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_10"); //Teraz jednak pokój sie skonczyl. Obudzil sie nie tylko spiacy, ale i ta nieprzyjemna istota, która czai sie w bagnie, czai sie, czai, nienawidzi, morderstwa, cierpi i chce podzielic sie z tym swiatem swoim bólem.
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 69)
	{
		AI_Output(Mod_951_PSINOV_Fortuno_MT, NULL, "Info_Mod_Hero_FortunoSumpfmensch_Scene_13_11"); //Z daleka mozna uslyszec jego szepty i kto je slyszy, dobrze idzie szybko i daleko, bo te dzwieki pochodza z smutnych ust placzacych ludzi bagnistych!
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 75)
	{
		// ToDo: Chor, der schreit, wie bei Balor
	};

	if (Mod_FortunoSumpfmensch_Scene_Counter == 81)
	{
		Mod_Fortuno_Sumpfmensch_Scene = 2;

		Wld_SendUnTrigger	("EVT_CAMERA_FORTUNO_SUMPFMENSCH");

		CutsceneAn = FALSE;

		AI_PlayAni	(hero, "T_SIT_2_STAND");

		B_StartOtherRoutine	(Mod_2008_PSINOV_Ghorim_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1339_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1337_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1336_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_1338_PSINOV_Novize_MT, "SUMPFMENSCH2");
		B_StartOtherRoutine	(Mod_951_PSINOV_Fortuno_MT, "SUMPFMENSCH2");
	};

	Mod_FortunoSumpfmensch_Scene_Counter += 1;
};
