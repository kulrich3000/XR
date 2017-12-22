INSTANCE Info_Mod_Berti_Hi (C_INFO)
{
	npc		= Mod_7590_OUT_Berti_REL;
	nr		= 1;
	condition	= Info_Mod_Berti_Hi_Condition;
	information	= Info_Mod_Berti_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak podoba Ci sie ta sztuka?";
};

FUNC INT Info_Mod_Berti_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berti_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Berti_Hi_15_00"); //Jak podoba Ci sie ta sztuka?
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_01"); //Czysto napisane, byc moze - ale pod wzgledem tresci jest to Kokolores.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_02"); //Dobra wola traktuje widzów jak maloletnich. Te razace moralne nauki!
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_03"); //Rozumie, ze wspólczesny teatr musi spelniac inne wymagania.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_04"); //Nie chce byc przedstawiany z zadna doktryna, chce sie zastanowic i przeanalizowac!
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_05"); //A teraz szczyci sie swoimi innowacjami, drobnymi zmianami w stosunku do tego, co mam na mysli.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_06"); //Jego czas uplywa, a ja przyjdzie.
};

INSTANCE Info_Mod_Berti_EXIT (C_INFO)
{
	npc		= Mod_7590_OUT_Berti_REL;
	nr		= 1;
	condition	= Info_Mod_Berti_EXIT_Condition;
	information	= Info_Mod_Berti_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Berti_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berti_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
