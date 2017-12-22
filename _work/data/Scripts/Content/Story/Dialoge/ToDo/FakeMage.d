INSTANCE Info_Mod_FakeMage_Hi (C_INFO)
{
	npc		= Mod_1768_KDF_Magier_PAT;
	nr		= 1;
	condition	= Info_Mod_FakeMage_Hi_Condition;
	information	= Info_Mod_FakeMage_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_FakeMage_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (Npc_HasItems(hero, ItPo_Mana_02) > 0)
	&& (Npc_GetDistToNpc(self, hero) < 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FakeMage_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_FakeMage_Hi_13_00"); //Czy jestes tutaj po to, aby sluzyc eliksirem?
	AI_Output(hero, self, "Info_Mod_FakeMage_Hi_15_01"); //Tak, dlaczego?
	AI_Output(self, hero, "Info_Mod_FakeMage_Hi_13_02"); //Czy masz dla mnie taka?
	AI_Output(hero, self, "Info_Mod_FakeMage_Hi_15_03"); //Tutaj znajduje sie eliksir z mana.

	B_GiveInvItems	(hero, self, ItPo_Mana_02, 1);

	AI_Output(self, hero, "Info_Mod_FakeMage_Hi_13_04"); //Dzieki.
};

INSTANCE Info_Mod_FakeMage_EXIT (C_INFO)
{
	npc		= Mod_1768_KDF_Magier_PAT;
	nr		= 1;
	condition	= Info_Mod_FakeMage_EXIT_Condition;
	information	= Info_Mod_FakeMage_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FakeMage_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FakeMage_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
