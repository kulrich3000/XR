INSTANCE Info_Mod_EchseSchwarz_03_Sumpfhaizahn (C_INFO)
{
	npc		= Mod_12018_DRA_Echse_AW;
	nr		= 1;
	condition	= Info_Mod_EchseSchwarz_03_Sumpfhaizahn_Condition;
	information	= Info_Mod_EchseSchwarz_03_Sumpfhaizahn_Info;
	permanent	= 0;
	important	= 0;
	description	= "(nadajac wlosy bagienne)";
};

FUNC INT Info_Mod_EchseSchwarz_03_Sumpfhaizahn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Albi_Kap4Stab))
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_EchseSchwarz_03_Sumpfhaizahn_Info()
{
	B_GiveInvItems	(hero, self, ItAt_SharkTeeth, 1);

	Mod_ECHSI_SumpfhaiZaehne += 1;

	if (Mod_ECHSI_SumpfhaiZaehne == 5)
	{
		B_LogEntry	(TOPIC_MOD_ECHSEN_SCHLACHT, "Kazda jaszczurka czarna ma teraz bagienny zab rekina.");
	};
};

INSTANCE Info_Mod_EchseSchwarz_03_EXIT (C_INFO)
{
	npc		= Mod_12018_DRA_Echse_AW;
	nr		= 1;
	condition	= Info_Mod_EchseSchwarz_03_EXIT_Condition;
	information	= Info_Mod_EchseSchwarz_03_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_EchseSchwarz_03_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_EchseSchwarz_03_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
