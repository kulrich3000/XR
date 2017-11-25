FUNC VOID HSBRUNNEN_S0 ()
{
	if (Mod_SL_Schwaechen == 1)
	&& (Mod_SL_PartBrunnen == 0)
	{
		Mod_SL_PartBrunnen = 1;

		Npc_RemoveInvItems	(hero, ItFo_Water, 1);

		B_LogEntry	(TOPIC_MOD_SL_BRUNNEN, "I filled the well with water.");
	}
	else
	{
		AI_PrintScreen	("I can't!", -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);
	};
};
