INSTANCE Info_Mod_AlligatorJack_DI_KommMit (C_INFO)
{
	npc		= Mod_1542_PIR_AlligatorJack_DI;
	nr		= 1;
	condition	= Info_Mod_AlligatorJack_DI_KommMit_Condition;
	information	= Info_Mod_AlligatorJack_DI_KommMit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Przyjedz ze mna.";
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
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_KommMit_15_00"); //Przyjedz ze mna.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_KommMit_12_01"); //Mam nadzieje, ze uda sie tu cos polowac. W porzadku, idzmy.

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
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_01_12_00"); //Hm.... Tutaj nie moge pójsc dalej. Ale powinno byc to mozliwe.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Odkrylismy podziemny korytarz.");
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
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_12_00"); //Trzymac przez sekunde. Mysle, ze cos tu jest......
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_Stollen_02_15_01"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_12_02"); //Moze to byc tunel zablokowany.
	AI_Output(hero, self, "Info_Mod_AlligatorJack_DI_Stollen_02_15_03"); //Wlasciwie. Jak sie tam dostac?
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Stollen_02_12_04"); //Nie wiem o tym. Powiemy kapitanowi. Idz dalej.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Jest odkryta sciana, która powinna byc otwierana.");
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
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Vorsicht_12_00"); //Wydaje sie, ze nie ma nic innego, jak tylko to, dokad mozemy sie udac.
	AI_Output(self, hero, "Info_Mod_AlligatorJack_DI_Vorsicht_12_01"); //Powinnismy jednak przyjrzec sie blizej namiotowi na górze.

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
