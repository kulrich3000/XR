INSTANCE Info_Mod_Malcom_NW_Hi (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Hi_Condition;
	information	= Info_Mod_Malcom_NW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malcom_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_00"); //Hej, czego chcesz?
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Hi_15_01"); //Wygladacie podejrzanie jak pirat.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_02"); //Ja r�wniez jestem jedna osoba, z moja jednonozna babcia! Ostre i niebezpieczne!
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Hi_15_03"); //Ale bez statku.....
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Hi_30_04"); //Zaprawde, tam! Kilka dni temu wywr�cilem sie w burzy. Teraz moja l�dz jest tam na plazy, przy ciotce!

	Log_CreateTopic	(TOPIC_MOD_MALCOM_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "Malcom kilka dni temu zostal uwieziony na plazy przed Khorinisem i stracil portfel. Jest on chroniony przez monitor.");
};

INSTANCE Info_Mod_Malcom_NW_WarumKhorinis (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_WarumKhorinis_Condition;
	information	= Info_Mod_Malcom_NW_WarumKhorinis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robisz w Khorinis?";
};

FUNC INT Info_Mod_Malcom_NW_WarumKhorinis_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_WarumKhorinis_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_WarumKhorinis_15_00"); //Co robisz w Khorinis?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_WarumKhorinis_30_01"); //Biznes - ale nic, co Cie interesuje.
};

INSTANCE Info_Mod_Malcom_NW_Boot (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Boot_Condition;
	information	= Info_Mod_Malcom_NW_Boot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie masz przygotowana l�dz?";
};

FUNC INT Info_Mod_Malcom_NW_Boot_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_Boot_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Boot_15_00"); //Dlaczego nie masz przygotowana l�dz?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Boot_30_01"); //Z moja pielegniarka jednokierunkowa, to nie jest zbawienie! Ale chcialbym miec sw�j portfel z powrotem, bo w przeciwnym razie nie musze sie juz pojawiac w obozie.
};

INSTANCE Info_Mod_Malcom_NW_BeutelProblem (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_BeutelProblem_Condition;
	information	= Info_Mod_Malcom_NW_BeutelProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest problem z Twoja torba?";
};

FUNC INT Info_Mod_Malcom_NW_BeutelProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Boot)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_BeutelProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_BeutelProblem_15_00"); //Jaki jest problem z Twoja torba?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_01"); //Kiedy zlowilem sie gdzies na l�dce, to prawdopodobnie zostal on umyty na plazy.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_02"); //Ale jest tu tlusty monitor i bez zelazka miedzy palcami nie bedzie prosil go, aby sie z niego wyrzucil.
	AI_Output(self, hero, "Info_Mod_Malcom_NW_BeutelProblem_30_03"); //Nie moge Ci niczego zaoferowac, bo nic nie mam, ale jesli przyni�sles mi torebke, zobacze, czy moge okazac swoja wdziecznosc p�zniej.

	Log_CreateTopic	(TOPIC_MOD_MALCOM_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "Malcom kilka dni temu zostal uwieziony na plazy przed Khorinisem i stracil portfel. Jest on chroniony przez monitor.");
};

INSTANCE Info_Mod_Malcom_NW_Piratenlager (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Piratenlager_Condition;
	information	= Info_Mod_Malcom_NW_Piratenlager_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz nawet ob�z dla pirat�w?";
};

FUNC INT Info_Mod_Malcom_NW_Piratenlager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_Boot)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_Piratenlager_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Piratenlager_15_00"); //Masz nawet ob�z dla pirat�w?
	AI_Output(self, hero, "Info_Mod_Malcom_NW_Piratenlager_30_01"); //Chcesz sie przylaczyc lub dlaczego jestes tak ciekawy? Ale ja ci nic nie m�wie. Jesli chcesz przylaczyc sie do pirat�w, wczesniej czy p�zniej znajdziesz ich samotnie.
};

INSTANCE Info_Mod_Malcom_NW_Beutel (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_Beutel_Condition;
	information	= Info_Mod_Malcom_NW_Beutel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zal�z torebke.";
};

FUNC INT Info_Mod_Malcom_NW_Beutel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malcom_NW_BeutelProblem))
	&& (Npc_HasItems(hero, ItMi_Malcom_Beutel) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malcom_NW_Beutel_Info()
{
	AI_Output(hero, self, "Info_Mod_Malcom_NW_Beutel_15_00"); //Zal�z torebke.
	
	B_GiveInvItems	(hero, self, ItMi_Malcom_Beutel, 1);

	AI_Output(self, hero, "Info_Mod_Malcom_NW_Beutel_30_01"); //Dzieki temu bardzo duzo, teraz musze tylko znalezc droge powrotna do obozu. Mam nadzieje, ze jeden z moich koleg�w wkr�tce sie tu zatrzyma.

	B_LogEntry	(TOPIC_MOD_MALCOM_GOLD, "Przynioslam Malcomowi jego zloto.");
	B_SetTopicStatus	(TOPIC_MOD_MALCOM_GOLD, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_G�ttergefallen(2, 1);
};

INSTANCE Info_Mod_Malcom_NW_EXIT (C_INFO)
{
	npc		= Mod_963_PIR_Malcom_NW;
	nr		= 1;
	condition	= Info_Mod_Malcom_NW_EXIT_Condition;
	information	= Info_Mod_Malcom_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malcom_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malcom_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
