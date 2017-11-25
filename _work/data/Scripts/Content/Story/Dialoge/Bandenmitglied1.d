INSTANCE Info_Mod_Bandenmitglied1_Hi (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_Hi_Condition;
	information	= Info_Mod_Bandenmitglied1_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bandenmitglied1_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bandenchef_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandenmitglied1_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Hi_06_01"); //Jaki jest Twój biznes?
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_02"); //Gdzie jest twój szef?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Hi_06_03"); //Nie sadze, ze to ci sie nie podoba.
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Hi_15_04"); //Wtedy bede musial ja pokonac.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Bandenmitglied1_Umgehauen (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_Umgehauen_Condition;
	information	= Info_Mod_Bandenmitglied1_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co teraz?";
};

FUNC INT Info_Mod_Bandenmitglied1_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandenmitglied1_Hi))
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandenmitglied1_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Umgehauen_15_00"); //Co teraz?
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Umgehauen_06_01"); //Powiem ci wszystko, ale pozwole mi odejsc.
	AI_Output(self, hero, "Info_Mod_Bandenmitglied1_Umgehauen_06_02"); //Mój szef poszedl do czerwonej latarni. Spotkasz go jednak tylko w nocy.
	AI_Output(hero, self, "Info_Mod_Bandenmitglied1_Umgehauen_15_03"); //Zobacz, dokad idziesz.

	B_LogEntry	(TOPIC_MOD_RAMIREZ_BANDE, "Pewien czlonek gangu powiedzial mi, ze przywódca gangu mozna znalezc noca przy czerwonej latarni.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bandenmitglied1_EXIT (C_INFO)
{
	npc		= Mod_1892_NONE_Bandenmitglied1_NW;
	nr		= 1;
	condition	= Info_Mod_Bandenmitglied1_EXIT_Condition;
	information	= Info_Mod_Bandenmitglied1_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bandenmitglied1_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandenmitglied1_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
