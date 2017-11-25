INSTANCE Info_Mod_Akahasch_MT_Hi (C_INFO)
{
	npc		= Mod_7760_NOV_Akahasch_MT;
	nr		= 1;
	condition	= Info_Mod_Akahasch_MT_Hi_Condition;
	information	= Info_Mod_Akahasch_MT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie byles nowicjuszem w klasztorze Innos?";
};

FUNC INT Info_Mod_Akahasch_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_MT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_MT_Hi_15_00"); //Czy nie byles nowicjuszem w klasztorze Innos?
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_01"); //Nie przypominaj mi o tym. Po historii z miastem zycie w klasztorze stalo sie zywym pieklem.
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_02"); //Ktos musial mnie ratyfikowac. Podejrzewam, ze to Ulf....
	AI_Output(self, hero, "Info_Mod_Akahasch_MT_Hi_24_03"); //W kazdym razie teraz czuje sie tysiac razy lepiej. Jako byli innowatorzy ognia przywitali mnie tutaj z otwartymi ramionami.
};

INSTANCE Info_Mod_Akahasch_MT_EXIT (C_INFO)
{
	npc		= Mod_7760_NOV_Akahasch_MT;
	nr		= 1;
	condition	= Info_Mod_Akahasch_MT_EXIT_Condition;
	information	= Info_Mod_Akahasch_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akahasch_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
