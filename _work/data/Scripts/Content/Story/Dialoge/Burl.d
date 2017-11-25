INSTANCE Info_Mod_Burl_Rattenquest (C_INFO)
{
	npc		= Mod_7408_OUT_Burl_EIS;
	nr		= 1;
	condition	= Info_Mod_Burl_Rattenquest_Condition;
	information	= Info_Mod_Burl_Rattenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes burla?";
};

FUNC INT Info_Mod_Burl_Rattenquest_Condition()
{
	if (Mod_RattenQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Burl_Rattenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_00"); //Czy jestes burla?
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_01"); //Ach, czlowiek, glowa moja od wczorajszej nocy, czy nie pozwolilbys mi spac?
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_02"); //Nie, nie mam tyle czasu.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_03"); //Dobrze, jak moge Ci pomóc?
	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_04"); //Karczmarz powiedzial ci, ze wiesz gdzie znalezc szczury.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_05"); //Tak, wiem, gdzie ostatnio jest ich wiele. Mam juz bóle gardla, dlaczego sa w tak zimnym miejscu.
	AI_Output(self, hero, "Info_Mod_Burl_Rattenquest_08_06"); //Duza czesc na zachód od niej, na górze nad kopalnia, tam je widzialem. Oto mapa.

	B_GiveInvItems	(self, hero, ItWr_Map_Eisgebiet_Richard, 1);

	AI_Output(hero, self, "Info_Mod_Burl_Rattenquest_15_07"); //Dzieki.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Burl powiedzial mi gdzie znalezc szczury. Na zachodzie na górze nad kopalnia powinienem rozejrzec sie dookola. Dal mi równiez mape miejsca, w którym zaznaczono miejsce.");

	Mod_RattenQuest = 6;

	// Frau und Richard und Ratten spawnen

	Wld_InsertNpc	(Mod_7410_OUT_Frau_EIS, "EIS_173");

	Wld_InsertNpc	(Mod_7409_OUT_Richard_EIS, "EIS_174");

	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_12");

	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");
	Wld_InsertNpc	(Giant_EisRat, "EIS_EINSAMEBUDE_6");

	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
	Wld_InsertNpc	(Giant_EisRat, "GOBLINBANDIT_09");
};

INSTANCE Info_Mod_Burl_EXIT (C_INFO)
{
	npc		= Mod_7408_OUT_Burl_EIS;
	nr		= 1;
	condition	= Info_Mod_Burl_EXIT_Condition;
	information	= Info_Mod_Burl_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Burl_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Burl_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
