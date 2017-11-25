INSTANCE Info_Mod_Francis_DI_Stollen (C_INFO)
{
	npc		= Mod_1546_PIR_Francis_DI;
	nr		= 1;
	condition	= Info_Mod_Francis_DI_Stollen_Condition;
	information	= Info_Mod_Francis_DI_Stollen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Francis_DI_Stollen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_StollenFrei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_DI_Stollen_Info()
{
	AI_Output(self, hero, "Info_Mod_Francis_DI_Stollen_13_00"); //Finally somebody's coming. I'm getting creepy around here.
	AI_Output(hero, self, "Info_Mod_Francis_DI_Stollen_15_01"); //I'll take over, wait here.
};

INSTANCE Info_Mod_Francis_DI_Amulett (C_INFO)
{
	npc		= Mod_1546_PIR_Francis_DI;
	nr		= 1;
	condition	= Info_Mod_Francis_DI_Amulett_Condition;
	information	= Info_Mod_Francis_DI_Amulett_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Francis_DI_Amulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_DI_Stollen))
	&& (Npc_HasItems(hero, ItAm_Pirateninsel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_DI_Amulett_Info()
{
	AI_Output(self, hero, "Info_Mod_Francis_DI_Amulett_13_00"); //There you are again. And the treasure?
	AI_Output(hero, self, "Info_Mod_Francis_DI_Amulett_15_01"); //A few little things and an amulet.
	AI_Output(self, hero, "Info_Mod_Francis_DI_Amulett_13_02"); //What? Nothing else? Holy goblins!
	AI_Output(hero, self, "Info_Mod_Francis_DI_Amulett_15_03"); //Come on. Come on. We're going back.

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Only a few little things and an amulet were in the gallery....");
};

INSTANCE Info_Mod_Francis_DI_EXIT (C_INFO)
{
	npc		= Mod_1546_PIR_Francis_DI;
	nr		= 1;
	condition	= Info_Mod_Francis_DI_EXIT_Condition;
	information	= Info_Mod_Francis_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Francis_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
