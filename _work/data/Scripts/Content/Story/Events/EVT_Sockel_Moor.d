FUNC VOID EVT_SOCKEL_MOOR_S1()
{
	Npc_RemoveInvItems	(hero, ItMi_Focus_Moor, 1);

	B_GivePlayerXP	(1000);

	B_LogEntry	(TOPIC_MOD_BOTSCHEK_SEUCHENDOLCH, "To sie dzieje. Ustawiono ostrosc i bariera ponownie chroni srodowisko.");

	Mod_Botschek_Wasserleichen = 14;
};
