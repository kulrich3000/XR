INSTANCE Info_Mod_AlligatorJack_DI_KommMit (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_KommMit_Condition;
	information	= Info_Mod_AlligatorJack_DI_KommMit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Come with me.";
};

FUNC INT Info_Mod_AlligatorJack_DI_KommMit_Condition()
{
	if (Mod_DI_InselErkunden == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_DI_KommMit_Info()
{
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_KommMit_15_00"); //Come with me.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_KommMit_03_01"); //I hope you can hunt something here. All right, let's go.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "SKELETT");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_AlligatorJack_DI_Stollen_01 (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_Stollen_01_Condition;
	information	= Info_Mod_AlligatorJack_DI_Stollen_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_DI_Stollen_01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_DI_KommMit))
	&& (Npc_GetDistToWP(hero, "WP_DI_HOEHLE_01_TUNNEL_4") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_DI_Stollen_01_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_01_03_00"); //Hm... I can't go any further here. But it should be possible to put that away.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "We discovered a buried passageway.");
};

INSTANCE Info_Mod_AlligatorJack_DI_Stollen_02 (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_Stollen_02_Condition;
	information	= Info_Mod_AlligatorJack_DI_Stollen_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_DI_Stollen_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_DI_KommMit))
	&& (Npc_GetDistToWP(hero, "WP_DI_HOEHLE_02_TUNNEL_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_DI_Stollen_02_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_03_00"); //Hold on a second. I think there's something here....
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_Stollen_02_15_01"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_03_02"); //This could be a blocked tunnel.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_Stollen_02_15_03"); //Actually. How do you get in there?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_03_04"); //I don't know about that. We'll tell the captain. Go on.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "There is a wall discovered that should be openable.");
};

INSTANCE Info_Mod_AlligatorJack_DI_Vorsicht (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_Vorsicht_Condition;
	information	= Info_Mod_AlligatorJack_DI_Vorsicht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AlligatorJack_DI_Vorsicht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_DI_Stollen_01))
	&& (Npc_KnowsInfo(hero, Info_Mod_AlligatorJack_DI_Stollen_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_AlligatorJack_DI_Vorsicht_Info()
{
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Vorsicht_03_00"); //There seems to be nothing else down here where we can go.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Vorsicht_03_01"); //But we should have a closer look at the tent upstairs.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_AlligatorJack_DI_EXIT (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_EXIT_Condition;
	information	= Info_Mod_AlligatorJack_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_AlligatorJack_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AlligatorJack_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
