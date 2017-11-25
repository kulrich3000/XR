var int Mod_XW_Kap6_Scene03_Counter;

FUNC VOID XW_Kap6_Scene03()
{
	if (Mod_XW_Kap6_Scene03_Counter == 0)
	{
		DoForAll(B_RemoveDeadBodies);

		AI_Teleport	(hero, "ARENA_01");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 1)
	{
		Wld_SendTrigger	("KAP6SCENE01A");

		CutsceneAn = TRUE;
	};

	if (Mod_XW_Kap6_Scene03_Counter == 3)
	{
		AI_Output(Mod_7763_RDW_Diego_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_11_00"); //To nie moze trwac wiecznie!
	};

	if (Mod_XW_Kap6_Scene03_Counter == 9)
	{
		Wld_SendUnTrigger	("KAP6SCENE01A");
		Wld_SendTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 10)
	{
		B_StartOtherRoutine	(Monster_11075_Daemonenfuerst_XW, "ANSPRACHE");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 13)
	{
		AI_Output(Monster_11075_Daemonenfuerst_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_20_01"); //Nie jestes na dzisiejszym planie. Co robisz na arenie?

		AI_TurnToNpc	(hero, Monster_11075_Daemonenfuerst_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 19)
	{
		Wld_SendTrigger	("KAP6SCENE01A");
		Wld_SendUnTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 20)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_15_02"); //Chcemy miec glowe Xeres' a.
	};

	if (Mod_XW_Kap6_Scene03_Counter == 26)
	{
		Wld_SendUnTrigger	("KAP6SCENE01A");
		Wld_SendTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 27)
	{
		AI_Output(Monster_11075_Daemonenfuerst_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_20_03"); //Zartujesz zartem. P�zniej z przyjemnoscia zjedze tw�j buntowniczy jezyk.
	};

	if (Mod_XW_Kap6_Scene03_Counter == 33)
	{
		AI_Output(Monster_11075_Daemonenfuerst_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_20_04"); //Ale badzcie jednak pewni, ze Xeres zostal juz poinformowany o tym zdarzeniu i jest na dobrej drodze, aby polozyc kres robakom.

		AI_TurnToNpc	(Mod_7763_RDW_Diego_XW, Monster_11075_Daemonenfuerst_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 36)
	{
		AI_ReadyRangedWeapon(Mod_7763_RDW_Diego_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 39)
	{
		Wld_SendTrigger	("KAP6SCENE01A");
		Wld_SendUnTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 40)
	{
		AI_AimAt	(Mod_7763_RDW_Diego_XW, Monster_11075_Daemonenfuerst_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 42)
	{
		AI_ShootAt	(Mod_7763_RDW_Diego_XW, Monster_11075_Daemonenfuerst_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 43)
	{
		Wld_SendUnTrigger	("KAP6SCENE01A");
		Wld_SendTrigger	("KAP6SCENE3");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 45)
	{
		Monster_11075_Daemonenfuerst_XW.attribute[ATR_HITPOINTS] = 0;

		AI_PlayAni	(Monster_11075_Daemonenfuerst_XW, "T_DEAD");
		
		AI_RemoveWeapon(Mod_7763_RDW_Diego_XW);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 47)
	{
		Wld_SendTrigger	("KAP6SCENE01A");
		Wld_SendUnTrigger	("KAP6SCENE3");

		AI_TurnToNpc	(Mod_7763_RDW_Diego_XW, hero);
	};

	if (Mod_XW_Kap6_Scene03_Counter == 48)
	{
		AI_Output(Mod_7763_RDW_Diego_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_11_05"); //To wszystko, co chcielismy wiedziec, czyz nie?
	};

	if (Mod_XW_Kap6_Scene03_Counter == 54)
	{
		AI_Output(Mod_7765_SLD_Gorn_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_12_06"); //Na stoiskach chcialbym odrobine powietrza.
	};

	if (Mod_XW_Kap6_Scene03_Counter == 60)
	{
		AI_Output(Mod_7764_PSINOV_Lester_XW, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_13_07"); //P�jde z Toba.
	};

	if (Mod_XW_Kap6_Scene03_Counter == 66)
	{
		AI_Output(hero, NULL, "Info_Mod_Hero_XW_Kap6_Scene03_15_08"); //Tak, zadbaj o widz�w. Czekam tutaj na Xeres.
	};

	if (Mod_XW_Kap6_Scene03_Counter == 69)
	{
		B_StartOtherRoutine	(Mod_7763_RDW_Diego_XW, "TRIBUENE");
		B_StartOtherRoutine	(Mod_7764_PSINOV_Lester_XW, "TRIBUENE");
		B_StartOtherRoutine	(Mod_7765_SLD_Gorn_XW, "TRIBUENE");
		B_StartOtherRoutine	(Mod_7766_KDF_Milten_XW, "TRIBUENE");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 72)
	{
		Wld_SendTrigger	("KAP6SCENE01B");
		Wld_SendUnTrigger	("KAP6SCENE01A");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 80)
	{
		Wld_InsertNpc	(Xeres_02, "ARENA_05");
	};

	if (Mod_XW_Kap6_Scene03_Counter == 82)
	{
		Wld_PlayEffect("spellFX_SummonGolem",  Xeres_02, Xeres_02, 0, 0, 0, FALSE );
	};

	if (Mod_XW_Kap6_Scene03_Counter == 85)
	{
		Mod_XW_Kap6 = 6;

		Wld_SendUnTrigger	("KAP6SCENE01B");

		CutsceneAn = FALSE;
	};

	Mod_XW_Kap6_Scene03_Counter += 1;
};
