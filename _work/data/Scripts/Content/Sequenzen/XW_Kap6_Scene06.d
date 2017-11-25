var int Mod_XW_Kap6_Scene06_Counter;

FUNC VOID XW_Kap6_Scene06()
{
	if (Mod_XW_Kap6_Scene06_Counter == 0)
	{
		DoForAll(B_RemoveDeadBodies);

		AI_Teleport	(hero, "ARENA_01");
		AI_Teleport	(Xeres_02, "ARENA_03");
	};

	if (Mod_XW_Kap6_Scene06_Counter == 1)
	{
		Wld_SendTrigger	("KAP6SCENE01A");

		CutsceneAn = TRUE;
	};

	if (Mod_XW_Kap6_Scene06_Counter == 3)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene06_14_00"); //Twoi przyjaciele w szeregach wykonuja kr�tka prace moich zdegenerowanych doradc�w.
	};

	if (Mod_XW_Kap6_Scene06_Counter == 9)
	{
		AI_Output(Xeres_02, NULL, "Info_Mod_Hero_XW_Kap6_Scene06_14_01"); //Nadszedl czas, ze przestalem pozwalac im na ucieczke z tego powodu.
	};

	if (Mod_XW_Kap6_Scene06_Counter == 15)
	{
		Wld_PlayEffect("FX_EarthQuake", Xeres_02, Xeres_02, 0, 0, 0, FALSE);
		Wld_PlayEffect("spellFX_INCOVATION_RED", Xeres_02, Xeres_02, 0, 0, 0, FALSE);
		AI_PlayAni (Xeres_02, "T_PRACTICEMAGIC5");
	};

	if (Mod_XW_Kap6_Scene06_Counter == 21)
	{
		Wld_SendUnTrigger	("KAP6SCENE01A");
		Wld_SendTrigger	("KAP6SCENE6");
	};

	if (Mod_XW_Kap6_Scene06_Counter == 22)
	{
		Wld_PlayEffect("spellFX_DEATHWAVE_EXPLOSION",  Mod_7766_KDF_Milten_XW, Mod_7766_KDF_Milten_XW, 0, 0, 0, FALSE );
		
		Mod_7766_KDF_Milten_XW.attribute[ATR_HITPOINTS] = 0;

		AI_PlayAni	(Mod_7766_KDF_Milten_XW, "T_DEAD");
	};

	if (Mod_XW_Kap6_Scene06_Counter == 25)
	{
		Mod_XW_Kap6 = 9;

		Wld_SendUnTrigger	("KAP6SCENE6");

		Mod_Xeres_Kampfphase = 2;

		B_Attack	(Xeres_02, hero, AR_NONE, 0);

		CutsceneAn = FALSE;
	};

	Mod_XW_Kap6_Scene06_Counter += 1;
};
