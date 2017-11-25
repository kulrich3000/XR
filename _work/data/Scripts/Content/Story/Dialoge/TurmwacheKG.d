INSTANCE Info_Mod_TurmwacheKG_Trollholz (C_INFO)
{
	npc		= Mod_1023_KGD_Turmwache_MT;
	nr		= 1;
	condition	= Info_Mod_TurmwacheKG_Trollholz_Condition;
	information	= Info_Mod_TurmwacheKG_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you happen to have any boar fur left?";
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
	AI_Output(hero, self, "Info_Mod_TurmwacheKG_Trollholz_15_00"); //Do you happen to have any boar fur left?
	AI_Output(self, hero, "Info_Mod_TurmwacheKG_Trollholz_03_01"); //Yeah, it's pretty frayed, though.
	AI_Output(self, hero, "Info_Mod_TurmwacheKG_Trollholz_03_02"); //Here you can have it, keeping wolf skins better warm anyway.

	B_GiveInvItems	(self, hero, ItAt_Addon_KeilerFur, 1);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "I got the boar fur. Off to Cathran's.");
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
