FUNC VOID FokusEinsetzen()
{
	FokiEingesetzt = FokiEingesetzt + 1;

	if (FokiEingesetzt	==	1)
	{
		Wld_PlayEffect("FX_EarthQuake",  hero, hero, 0, 0, 0, FALSE );

		Wld_InsertNpc	(Mod_678_DMB_Xardas_AW,		"ADW_ENTRANCE");

		B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Uzywalem ich wszystkich pieciu. Ostatnie miejsce zajelo trzesienie ziemi. W pewnym czasie powinienem udac sie do Magicyst�w Wody.");

		B_GivePlayerXP	(300);

		B_SetTopicStatus	(TOPIC_MOD_FOKUSSUCHE, LOG_SUCCESS);

		//B_Kapitelwechsel (3, ADDONWORLD_ZEN);
	};
};
