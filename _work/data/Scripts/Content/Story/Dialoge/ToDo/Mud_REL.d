INSTANCE Info_Mod_Mud_REL_Hi (C_INFO)
{
	npc		= Mod_7697_STT_Mud_REL;
	nr		= 1;
	condition	= Info_Mod_Mud_REL_Hi_Condition;
	information	= Info_Mod_Mud_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mud_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_00"); //Ahh, powitanie. To ty, mój drogi przyjaciel.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_01"); //Chcialbym zabrac cie na spacer.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_02"); //Ale teraz musze zadbac o ladne owce.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_03"); //Mud?
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_04"); //Tak, teraz jestem pasterzem. Z Onar nie chcieli mnie juz wiecej.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_05"); //Opieka Pepe' a nad owcami.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_06"); //Ale.... A co z starym obozem?
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_07"); //Byli tam tak zlo zielonych chlopaków.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_08"); //Byli nawet bardziej zdenerwowani niz inni w obozie, krzyczeli caly czas i próbowali mnie bic.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_09"); //Wtedy ucieklem.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_10"); //Wszystko jest jasne. Pózniej zycze Wam wiele zabawy podczas ogladania welnianej kolumny.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_11"); //Hihi, jestes dziwaczny.... pokretlo welny..... Musze o tym pamietac.

	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung == 0)
	{
		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "Oczywiscie bloto bylo szczesliwsze niz myslalem. Obecnie hoduje on owce w Khorata.");
	};
};

INSTANCE Info_Mod_Mud_REL_EXIT (C_INFO)
{
	npc		= Mod_7697_STT_Mud_REL;
	nr		= 1;
	condition	= Info_Mod_Mud_REL_EXIT_Condition;
	information	= Info_Mod_Mud_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mud_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
