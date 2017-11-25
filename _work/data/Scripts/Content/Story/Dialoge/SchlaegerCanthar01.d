INSTANCE Info_Mod_SchlaegerCanthar01_HiVorher (C_INFO)
{
	npc		= Mod_7495_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar01_HiVorher_Condition;
	information	= Info_Mod_SchlaegerCanthar01_HiVorher_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_SchlaegerCanthar01_HiVorher_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Canthar_AtLager2))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchlaegerCanthar01_HiVorher_Info()
{
	AI_Output(self, hero, "Info_Mod_SchlaegerCanthar01_HiVorher_11_00"); //Wyciagnij z tego fuge!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_SchlaegerCanthar01_Hi (C_INFO)
{
	npc		= Mod_7495_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar01_Hi_Condition;
	information	= Info_Mod_SchlaegerCanthar01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to robisz?";
};

FUNC INT Info_Mod_SchlaegerCanthar01_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Canthar_AtLager2))
	&& (Mod_CantharSelbstmord == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchlaegerCanthar01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchlaegerCanthar01_Hi_15_00"); //Jak to robisz?
	AI_Output(self, hero, "Info_Mod_SchlaegerCanthar01_Hi_11_01"); //Moze byc gorzej. Czasami ciezki dzien pracy i czasami czysty odpoczynek.....
};

INSTANCE Info_Mod_SchlaegerCanthar01_EXIT (C_INFO)
{
	npc		= Mod_7495_NONE_Schlaeger_NW;
	nr		= 1;
	condition	= Info_Mod_SchlaegerCanthar01_EXIT_Condition;
	information	= Info_Mod_SchlaegerCanthar01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchlaegerCanthar01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchlaegerCanthar01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
