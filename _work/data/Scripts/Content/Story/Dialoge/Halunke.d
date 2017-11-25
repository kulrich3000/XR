INSTANCE Info_Mod_Halunke_Hi (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Hi_Condition;
	information	= Info_Mod_Halunke_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Halunke_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Halunke_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_00"); //Well, look who's here. Someone who's probably on his way to the Water Magicians.
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_01"); //And someone heading to the Water Magicians is probably one of their messengers.
	AI_Output(self, hero, "Info_Mod_Halunke_Hi_06_02"); //And their messengers must have some gold coins to loosen them up.

	Wld_InsertNpc	(Mod_7215_OUT_Halunke_NW, "NW_TROLLAREA_RUINS_01");
	Wld_InsertNpc	(Mod_7216_OUT_Halunke_NW, "NW_TROLLAREA_RUINS_01");
};

INSTANCE Info_Mod_Halunke_Gold (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Gold_Condition;
	information	= Info_Mod_Halunke_Gold_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's 500 gold coins. I don't want any trouble.";
};

FUNC INT Info_Mod_Halunke_Gold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Hi))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Halunke_Angriff))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_Gold_Info()
{
	AI_Output(hero, self, "Info_Mod_Halunke_Gold_15_00"); //Here's 500 gold coins. I don't want any trouble.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Halunke_Gold_06_01"); //500 gold coins? Where there's so much to get, there must be more.
};

INSTANCE Info_Mod_Halunke_Angriff (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_Angriff_Condition;
	information	= Info_Mod_Halunke_Angriff_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm not giving you scoundrels anything.";
};

FUNC INT Info_Mod_Halunke_Angriff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Halunke_Gold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_Angriff_Info()
{
	AI_Output(hero, self, "Info_Mod_Halunke_Angriff_15_00"); //I'm not giving you scoundrels anything.
	AI_Output(self, hero, "Info_Mod_Halunke_Angriff_06_01"); //Suit yourself.
};

INSTANCE Info_Mod_Halunke_EXIT (C_INFO)
{
	npc		= Mod_7214_OUT_Halunke_NW;
	nr		= 1;
	condition	= Info_Mod_Halunke_EXIT_Condition;
	information	= Info_Mod_Halunke_EXIT_Info;
	permanent	= 0;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Halunke_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Halunke_Angriff))
	|| (Npc_KnowsInfo(hero, Info_Mod_Halunke_Gold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Halunke_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_7215_OUT_Halunke_NW, hero, AR_Kill, 0);
	B_Attack	(Mod_7216_OUT_Halunke_NW, hero, AR_Kill, 0);
};
