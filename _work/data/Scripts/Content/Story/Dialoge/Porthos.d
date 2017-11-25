INSTANCE Info_Mod_Porthos_Hi (C_INFO)
{
	npc		= Mod_7292_PAL_Porthos_NW;
	nr		= 1;
	condition	= Info_Mod_Porthos_Hi_Condition;
	information	= Info_Mod_Porthos_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Porthos_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aramis_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Porthos_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Porthos_Hi_03_00"); //Prawdopodobnie udal sie teraz do innej jaskini miedzy czarnym trollem a kamiennym kolem.
	AI_Output(self, hero, "Info_Mod_Porthos_Hi_03_01"); //Szybko, wykorzystajmy teleportowe zaklecia magów ognia.

	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "Trzy paladyny, które próbuja postawic nieumarly mag, opuscily teraz jaskinie miedzy kamiennym kolem a czarnym trollem.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LICH");
	B_StartOtherRoutine	(Mod_7290_PAL_Athos_NW, "LICH");
	B_StartOtherRoutine	(Mod_7291_PAL_Aramis_NW, "LICH");

	AI_Teleport	(self, "NW_TROLLAREA_TROLLROCKCAVE_02");
	AI_Teleport	(Mod_7290_PAL_Athos_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");
	AI_Teleport	(Mod_7291_PAL_Aramis_NW, "NW_TROLLAREA_TROLLROCKCAVE_02");

	Wld_SendTrigger	("LICHDUNGEON");
};
