INSTANCE Info_Mod_SNOV_11_Leader (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Leader_Condition;
	information	= Info_Mod_SNOV_11_Leader_Info;
	permanent	= 1;
	important	= 0;
	description	= "Kto jest tu odpowiedzialny?";
};

FUNC INT Info_Mod_SNOV_11_Leader_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Leader_Info()
{
	B_Say	(hero, self, "$AMBISNOV01");

	AI_Output(self, hero, "Info_Mod_SNOV_11_Leader_11_00"); //Tak naprawde nie wiem. Zapytaj kogos innego.
};

INSTANCE Info_Mod_SNOV_11_Beliarkloster (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Beliarkloster_Condition;
	information	= Info_Mod_SNOV_11_Beliarkloster_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jakie sa interesujace miejsca?";
};

FUNC INT Info_Mod_SNOV_11_Beliarkloster_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Beliarkloster_Info()
{
	B_Say	(hero, self, "$AMBISNOV03");

	if (Mod_BibEntdeckt)
	{
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_00"); //Znalazles biblioteke, prawda? Prawdopodobnie wiecie tu o swojej drodze lepiej niz ja.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_01"); //Kosciól na srodku placu. Jesli nie chcesz byc podejrzany, powinienes sie tam regularnie pojawiac.
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_02"); //Za nia kryje sie biblioteka, ukryta gdzies w labiryncie, której nikt od lat nie widzial, bo nikt nie moze jej znalezc przez labirynt.
	};
};

INSTANCE Info_Mod_SNOV_11_Interessantes (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Interessantes_Condition;
	information	= Info_Mod_SNOV_11_Interessantes_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy cos ciekawego zdarzylo sie ostatnio?";
};

FUNC INT Info_Mod_SNOV_11_Interessantes_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Interessantes_Info()
{
	B_Say	(hero, self, "$AMBISNOV04");

	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_00"); //Wszyscy ci ludzie ze starego magazynu nie byli tu od dawna.
	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_01"); //Byli bardzo dziwni, kiedy Xardas przywiózl ich do domu, nie znali swojego imienia i tak dalej.
	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_02"); //Prawdopodobnie umyl im mózg.
};

INSTANCE Info_Mod_SNOV_11_Pickpocket (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Pickpocket_Condition;
	information	= Info_Mod_SNOV_11_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_SNOV_11_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);

	Info_AddChoice	(Info_Mod_SNOV_11_Pickpocket, DIALOG_BACK, Info_Mod_SNOV_11_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SNOV_11_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SNOV_11_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);
};

INSTANCE Info_Mod_SNOV_11_EXIT (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_EXIT_Condition;
	information	= Info_Mod_SNOV_11_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SNOV_11_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SNOV_11 (var c_NPC slf)
{
	Info_Mod_SNOV_11_Leader.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Beliarkloster.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Interessantes.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Pickpocket.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_EXIT.npc	= Hlp_GetInstanceID(slf);
};
