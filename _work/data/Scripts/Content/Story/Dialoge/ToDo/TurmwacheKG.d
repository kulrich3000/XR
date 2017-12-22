INSTANCE Info_Mod_TurmwacheKG_Trollholz (C_INFO)
{
	npc		= Mod_1023_KGD_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_TurmwacheKG_Trollholz_Condition;
	information	= Info_Mod_TurmwacheKG_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy zdarzylo ci sie miec pozostawiona futro z dzika?";
};

FUNC INT Info_Mod_TurmwacheKG_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Trollholz))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cathran_Trollholz2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_TurmwacheKG_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_TurmwacheKG_Trollholz_15_00"); //Czy zdarzylo ci sie miec pozostawiona futro z dzika?
	AI_Output(self, hero, "Info_Mod_TurmwacheKG_Trollholz_03_01"); //Ale tak, to jest ladnie pachnace.
	AI_Output(self, hero, "Info_Mod_TurmwacheKG_Trollholz_03_02"); //Tutaj mozna go miec, tak czy owak lepiej ogrzewac skóre wilka.

	B_GiveInvItems	(self, hero, ItAt_Addon_KeilerFur, 1);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Dostalem futro z dzika. Polecamy do Kathranu.");
};

INSTANCE Info_Mod_TurmwacheKG_EXIT (C_INFO)
{
	npc		= Mod_1023_KGD_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_TurmwacheKG_EXIT_Condition;
	information	= Info_Mod_TurmwacheKG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_TurmwacheKG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_TurmwacheKG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
