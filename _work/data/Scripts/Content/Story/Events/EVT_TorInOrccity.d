FUNC VOID TORINORCCITY()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_AtHoshPak))
	&& (Mod_TorInStadt == 0)
	{
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_01");
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_02");

		Mod_TorInStadt = 1;		

		B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "What's this? Why is the gate closed? Well, I'll take care of it when I get Hosh Pak's focus.");
	};

	if (Mod_TorInStadt == 1)
	&& (Npc_IsDead(Mod_10005_Orc_HoshPak_OC))
	{
		Mod_TorInStadt = 2;

		Wld_SendTrigger	("EVT_OCC_RITUALTOR_01");
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_02");

		B_InitMonsterAttitudes();

		B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Looks like Hosh Pak closed the gate. Anyway, now that he's dead, it's open again.");
	};
};
