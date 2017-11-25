FUNC INT CANUSEGRUENERZ()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kais_Blutkelch))
	{
		if (Npc_HasItems(hero, ItMw_Stahlhacke) == 1)
		{
			return TRUE;
		}
		else if (Npc_HasItems(hero, ItMw_2h_Axe_L_01) == 1)
		{
			B_Say_Overlay	(hero, NULL, "$HACKESCHLECHT");

			if (Mod_ASS_Blutkelch3 == 1)
			{
				Mod_ASS_Blutkelch3 = 2;

				Log_CreateTopic	(TOPIC_MOD_ASS_STAHLHACKE, LOG_MISSION);
				B_SetTopicStatus	(TOPIC_MOD_ASS_STAHLHACKE, LOG_RUNNING);
				B_LogEntry	(TOPIC_MOD_ASS_STAHLHACKE, "Found a new ore. Leg hard. My hoe doesn't. I need to talk to a blacksmith.");
			};

			return FALSE;
		}
		else
		{
			B_Say_Overlay	(hero, NULL, "$NOHACKE");

			return FALSE;
		};
	}
	else
	{
		PrintScreen	("I can't start now!", -1, -1, FONT_SCREEN, 2);

		//AI_UseMob	(hero, "ORE", -1);

		return FALSE;
	};
};
