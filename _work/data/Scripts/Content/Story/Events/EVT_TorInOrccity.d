FUNC VOID TORINORCCITY()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_AtHoshPak))
	&& (Mod_TorInStadt == 0)
	{
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_01");
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_02");

		Mod_TorInStadt = 1;		

		B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Co to jest? Dlaczego brama jest zamknieta? Cóz, zajme sie tym, kiedy zajme sie Hosh Pak.");
	};

	if (Mod_TorInStadt == 1)
	&& (Npc_IsDead(Mod_10005_Orc_HoshPak_OC))
	{
		Mod_TorInStadt = 2;

		Wld_SendTrigger	("EVT_OCC_RITUALTOR_01");
		Wld_SendTrigger	("EVT_OCC_RITUALTOR_02");

		B_InitMonsterAttitudes();

		B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Takie jak Hosh Pak zamyka brame. Tak czy owak, teraz, gdy juz umarl, znów jest otwarte.");
	};
};
