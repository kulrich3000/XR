INSTANCE Info_Mod_Ork_Hi (C_INFO)
{
	npc		= Mod_10042_Orc_Ork_REL;
	nr		= 1;
	condition	= Info_Mod_Ork_Hi_Condition;
	information	= Info_Mod_Ork_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ork_Hi_Condition()
{
	if (Npc_IsDead(Mod_7703_OUT_Froppi_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ork_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_00"); //Teraz on juz nie zyje. Co mam teraz zrobic?
	AI_Output(hero, self, "Info_Mod_Ork_Hi_15_01"); //Jestes wolny! Mozesz robic wszystko, co chcesz.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_02"); //Ach, tak? A co robisz, gdy jestes wolny?
	AI_Output(hero, self, "Info_Mod_Ork_Hi_15_03"); //Wszystko.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_04"); //Dzwieki niezwykle skomplikowane.
	AI_Output(self, hero, "Info_Mod_Ork_Hi_18_05"); //Wolalbym raczej poczekac, zeby zobaczyc, czy ojciec przeciez nie wstanie, to mozemy dalej szukac.
};

INSTANCE Info_Mod_Ork_EXIT (C_INFO)
{
	npc		= Mod_10042_Orc_Ork_REL;
	nr		= 1;
	condition	= Info_Mod_Ork_EXIT_Condition;
	information	= Info_Mod_Ork_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ork_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ork_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
