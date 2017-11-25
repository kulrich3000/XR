var int Mod_JudithRuprechtScene_Counter;

FUNC VOID JudithRuprechtScene()
{
	if (Mod_JudithRuprechtScene_Counter == 0)
	{
		Npc_ClearAIQueue	(Mod_7418_OUT_Ruprecht_REL);

		AI_StandUp	(Mod_7418_OUT_Ruprecht_REL);

		AI_Teleport	(Mod_7418_OUT_Ruprecht_REL, "PARK_3");
		B_StartOtherRoutine	(Mod_7418_OUT_Ruprecht_REL, "JUDITH");

		AI_GotoWP	(hero, "REL_CITY_210");

		Wld_SendTrigger	("EVT_CAM_JUDITH_RUPRECHT");

		CutsceneAn = TRUE;
	};

	if (Mod_JudithRuprechtScene_Counter == 2)
	{
		AI_TurnToNpc	(Mod_7418_OUT_Ruprecht_REL, Mod_7680_OUT_Judith_REL);
		AI_TurnToNpc	(Mod_7680_OUT_Judith_REL, Mod_7418_OUT_Ruprecht_REL);
	};

	if (Mod_JudithRuprechtScene_Counter == 4)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_00"); //Tam jestem. Przykro mi, ze tak pózno sie to skonczylo, wstalem.
	};

	if (Mod_JudithRuprechtScene_Counter == 10)
	{
		AI_Output(Mod_7680_OUT_Judith_REL, NULL, "Info_Mod_JudithRuprechtScene_16_01"); //Ruprecht? Czy? Nie jestes?
	};

	if (Mod_JudithRuprechtScene_Counter == 16)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_02"); //Nie, mialem kolejny maly spór z Leonhardem.
	};

	if (Mod_JudithRuprechtScene_Counter == 22)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_03"); //Ale dlaczego jestes tak zszokowany?
	};

	if (Mod_JudithRuprechtScene_Counter == 28)
	{
		AI_Output(Mod_7680_OUT_Judith_REL, NULL, "Info_Mod_JudithRuprechtScene_16_04"); //Wtedy kto wlasnie....?
	};

	if (Mod_JudithRuprechtScene_Counter == 34)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_05"); //Co? Siedziales na falszywym?
	};

	if (Mod_JudithRuprechtScene_Counter == 40)
	{
		AI_Output(Mod_7680_OUT_Judith_REL, NULL, "Info_Mod_JudithRuprechtScene_16_06"); //Jest tak ciemno!
	};

	if (Mod_JudithRuprechtScene_Counter == 46)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_07"); //No cóz, to juz dzis miales przyjemnosc. Prawdopodobnie wlasnie wkraczam.
	};

	if (Mod_JudithRuprechtScene_Counter == 52)
	{
		AI_Output(Mod_7680_OUT_Judith_REL, NULL, "Info_Mod_JudithRuprechtScene_16_08"); //(rozpad) Prosze!
	};

	if (Mod_JudithRuprechtScene_Counter == 58)
	{
		AI_Output(Mod_7418_OUT_Ruprecht_REL, NULL, "Info_Mod_JudithRuprechtScene_13_09"); //Pozegnanie! Nie musze sie z tym zniesc!
	};

	if (Mod_JudithRuprechtScene_Counter == 64)
	{
		B_StartOtherRoutine	(Mod_7418_OUT_Ruprecht_REL, "START");
		B_StartOtherRoutine	(Mod_7680_OUT_Judith_REL, "START");

		Wld_SendUnTrigger	("EVT_CAM_JUDITH_RUPRECHT");

		Mod_JudithNacht = 3;

		CutsceneAn = FALSE;
	};

	Mod_JudithRuprechtScene_Counter += 1;
};
