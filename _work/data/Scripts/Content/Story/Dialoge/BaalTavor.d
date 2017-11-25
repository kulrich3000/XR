INSTANCE Info_Mod_Tavor_Hi (C_INFO)
{
	npc		= Mod_7265_GUR_BaalTavor_OGY;
	nr		= 1;
	condition	= Info_Mod_Tavor_Hi_Condition;
	information	= Info_Mod_Tavor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tavor_Hi_Condition()
{
	if (Mod_NL_UOS >= 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tavor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tavor_Hi_12_00"); //Dziekuje za ocalenie mnie.
	AI_Output(self, hero, "Info_Mod_Tavor_Hi_12_01"); //Jestesmy oslabieni i pozostaniemy tu na jakis czas, az dojdziecie do wyjscia i upewnimy sie, ze bezpiecznie dotrzemy do wolnego swiata.
};

INSTANCE Info_Mod_Tavor_EXIT (C_INFO)
{
	npc		= Mod_7265_GUR_BaalTavor_OGY;
	nr		= 1;
	condition	= Info_Mod_Tavor_EXIT_Condition;
	information	= Info_Mod_Tavor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tavor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tavor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
