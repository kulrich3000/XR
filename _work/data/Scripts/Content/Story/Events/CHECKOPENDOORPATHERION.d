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
			AI_PrintScreen	("The door doesn't open", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);

			B_LogEntry	(TOPIC_MOD_FM_HEXENQUEEN, "I can't open the door. I should let Aaron know.");

			CHECKOPENDOORPATHERION_OPENED = TRUE;
		}
		else if (CHECKOPENDOORPATHERION_OPENED == TRUE)
		{
			AI_PrintScreen	("That's not possible", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		}
		else
		{
			AI_PrintScreen	("I haven't gotten that far yet.", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
		};

		return 0;
	};
};
