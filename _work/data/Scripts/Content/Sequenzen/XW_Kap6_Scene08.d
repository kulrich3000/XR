var int Mod_XW_Kap6_Scene08_Counter;

FUNC VOID XW_Kap6_Scene08()
{
	if (Mod_XW_Kap6_Scene08_Counter == 0)
	{
		DoForAll(B_RemoveDeadBodies);

		AI_Teleport	(Xeres_02, "ARENA_18");
		AI_Teleport	(Mod_7763_RDW_Diego_XW, Mod_7763_RDW_Diego_XW.wp);
	};

	if (Mod_XW_Kap6_Scene08_Counter == 1)
	{
		Wld_SendTrigger	("KAP6SCENE8");

		CutsceneAn = TRUE;

		AI_TurnToNpc	(Xeres_02, Mod_7763_RDW_Diego_XW);
	};

	if (Mod_XW_Kap6_Scene08_Counter == 3)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_14_00"); //Mój odwazny rycerz!
	};

	if (Mod_XW_Kap6_Scene08_Counter == 9)
	{
		AI_TurnToNpc	(Mod_7763_RDW_Diego_XW, Xeres_02);
		AI_TurnToNpc	(hero, Xeres_02);
	};

	if (Mod_XW_Kap6_Scene08_Counter == 11)
	{
		AI_Output(Mod_7763_RDW_Diego_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_11_01"); //Wiec jestes brzydkim freakiem, po który tu przyjechalismy.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 17)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_14_02"); //Z tego powodu umrzesz niehonorowo, tak.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 23)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_14_03"); //Nie ma tu nic do wygrania.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 29)
	{
		AI_Output(Mod_7763_RDW_Diego_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_11_04"); //Nie jestem tutaj, aby wygrac.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 35)
	{
		Wld_PlayEffect("FX_EarthQuake", Xeres_02, Xeres_02, 0, 0, 0, FALSE);
		Wld_PlayEffect("spellFX_INCOVATION_RED", Xeres_02, Xeres_02, 0, 0, 0, FALSE);
		AI_PlayAni (Xeres_02, "T_PRACTICEMAGIC5");
	};

	if (Mod_XW_Kap6_Scene08_Counter == 37)
	{
		Mod_7763_RDW_Diego_XW.attribute[ATR_HITPOINTS] = 0;
		AI_PlayAni	(Mod_7763_RDW_Diego_XW, "T_EXPLOSION");
	};

	if (Mod_XW_Kap6_Scene08_Counter == 39)
	{
		AI_TurnToNpc	(Xeres_02, hero);
	};

	if (Mod_XW_Kap6_Scene08_Counter == 40)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_14_05"); //Mam nadzieje, ze zobaczyliscie, jak beznadziejna jest wasza misja.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 46)
	{
		Wld_SendUnTrigger	("KAP6SCENE8");
		Wld_SendTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene08_Counter == 47)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_15_06"); //Mówisz, wiec mozesz zlapac oddech.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 53)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_15_07"); //Twoja wladza nie moze byc az tak wielka.
	};

	if (Mod_XW_Kap6_Scene08_Counter == 59)
	{
		Wld_SendUnTrigger	("KAP6SCENE3");
		Wld_SendTrigger	("KAP6SCENE8");

		Wld_SendUnTrigger	("GIFTTEPPICH");
	};

	if (Mod_XW_Kap6_Scene08_Counter == 60)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene08_14_08"); //Nie widziales jeszcze wszystkiego!
	};

	if (Mod_XW_Kap6_Scene08_Counter == 66)
	{
		AI_Teleport	(Xeres_02, "TOT");
		B_StartOtherRoutine	(Xeres_02, "TOT");

		Wld_InsertNpc	(DemonLord_Xeres, "ARENA_01");
	};

	if (Mod_XW_Kap6_Scene08_Counter == 67)
	{
		Mod_XW_Kap6 = 12;

		Wld_SendUnTrigger	("KAP6SCENE8");

		CutsceneAn = FALSE;
	};

	Mod_XW_Kap6_Scene08_Counter += 1;
};
