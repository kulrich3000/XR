var int Mod_SumpfbeerenTraum_Counter;

FUNC VOID SumpfbeerenTraum()
{
	if (Mod_SumpfbeerenTraum_Counter == 0)
	{
		Wld_InsertNpc	(Mod_7652_OUT_Fremder_REL,	"REL_MOOR_171");

		AI_PlayAni	(hero, "T_STAND_2_VICTIM_SLE");

		CutsceneAn = TRUE;
	};

	if (Mod_SumpfbeerenTraum_Counter == 2)
	{
		Wld_SendTrigger	("EVT_MOOR_SUMPFBEERENTRAUM");
	};

	if (Mod_SumpfbeerenTraum_Counter == 4)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_00"); //Trapped deep inside the cursed one. For liberation, redemption, I have waited for aeons.
	};

	if (Mod_SumpfbeerenTraum_Counter == 10)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_01"); //Clashing metal, however, brings death.
	};

	if (Mod_SumpfbeerenTraum_Counter == 16)
	{
		AI_Output(Mod_7652_OUT_Fremder_REL, NULL, "Info_Mod_Fremder_SumpfbeerenTraum_13_02"); //Salvation brings what has been snatched from the breast of the moor... erases from the demonic body of my prison.
	};

	if (Mod_SumpfbeerenTraum_Counter == 22)
	{
		Wld_SendUnTrigger	("EVT_MOOR_SUMPFBEERENTRAUM");

		Mod_SumpfbeerenTraum = 2;

		B_GivePlayerXP	(200);

		CutsceneAn = FALSE;

		Log_CreateTopic	(TOPIC_MOD_MOOR, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_MOOR, "Trapped deep inside the cursed one. For liberation, redemption, I have waited for aeons. Clashing metal, however, brings death. Salvation brings what was snatched from the breast of the moor... erases from the demonic body of my prison.");

		AI_PlayAni	(hero, "T_VICTIM_SLE_2_STAND");
	};

	Mod_SumpfbeerenTraum_Counter += 1;
};
