FUNC INT CHECKOPENDOORPATHERION ()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Door))
	{
		return 1;
	}
	else
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Aaron_Hexen))
		&& (CHECKOPENDOORPATHERION_OPENED == FALSE)
		{
			AI_PrintScreen	("Drzwi nie otwieraja sie", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			B_LogEntry	(TOPIC_MOD_FM_HEXENQUEEN, "Nie moge otworzyc drzwi. Powinienem powiedziec Aaronowi.");

			CHECKOPENDOORPATHERION_OPENED = TRUE;
		}
		else if (CHECKOPENDOORPATHERION_OPENED == TRUE)
		{
			AI_PrintScreen	("To nie jest mozliwe", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		}
		else
		{
			AI_PrintScreen	("Jeszcze tego nie zrobilem.", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};

		return 0;
	};
};
