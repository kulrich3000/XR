FUNC VOID EVT_GDG_SoulStone_s1()
{
	SoulStoneEingesetzt = SoulStoneEingesetzt + 1;

	Npc_RemoveInvItems	(hero, ItAt_SoulStone, 1);

	if (SoulStoneEingesetzt	==	3)
	{
		Wld_PlayEffect("FX_EarthQuake",  hero, hero, 0, 0, 0, FALSE );

		B_LogEntry	(TOPIC_MOD_URIZIEL, "I put in all three soul stones. There was an earthquake when the last focus was set. I can now bring Xardas, Pyrokar and Saturas and the ritual can begin.");

		B_GivePlayerXP	(1000);

		Npc_RemoveInvItems	(hero, ItAt_SoulStone, 3);

		Wld_InsertNpc	(Demon_GDG, "WIL_LAGERER_25");
	};
};
