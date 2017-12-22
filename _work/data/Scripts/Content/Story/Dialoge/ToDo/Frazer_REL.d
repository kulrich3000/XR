INSTANCE Info_Mod_Frazer_REL_Hi (C_INFO)
{
	npc		= Mod_7619_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_REL_Hi_Condition;
	information	= Info_Mod_Frazer_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Frazer_REL_Hi_Condition()
{
	if (Mod_REL_LukasS == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_00"); //Uratowales mnie. Brrr, nie moze sobie wyobrazic, co chcieli mnie odciac!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_01"); //Zawsze uwazasz, ze jestes dobrym przelozonym i czasami patrzysz z dystansu, kiedy robia cos nieprzyzwoitego dla dwóch - i to jest podziekowanie!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_02"); //Cóz, prawie mi przykro z powodu Normana, on musial byc zaangazowany. Ale niech reszta pozostanie z Beliarem, tak!
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_03"); //Przynajmniej teraz nie bedzie juz wiecej problemów z nimi.
	AI_Output(self, hero, "Info_Mod_Frazer_REL_Hi_13_04"); //A wiec po co tu stoimy? Naprawde musze sie rozbic.

	B_GivePlayerXP	(300);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "INCITY2");

	B_StartOtherRoutine	(Mod_7517_OUT_Friedel_REL, "START");
	Mod_7517_OUT_Friedel_REL.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "START");
	Mod_7518_OUT_Davon_REL.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_7391_OUT_Henker_REL, "START");
	Mod_7391_OUT_Henker_REL.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Frazer_REL_EXIT (C_INFO)
{
	npc		= Mod_7619_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_REL_EXIT_Condition;
	information	= Info_Mod_Frazer_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Frazer_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frazer_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
