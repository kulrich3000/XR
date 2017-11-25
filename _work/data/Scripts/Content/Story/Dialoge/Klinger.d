INSTANCE Info_Mod_Klinger_Lehrer (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_Lehrer_Condition;
	information	= Info_Mod_Klinger_Lehrer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Klinger_Lehrer_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Klinger_Lehrer_Info()
{
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_00"); //Podejdz prosto do góry, przyjaciel. Tutaj stoi Klinger, mistrz smiertelnego ostrza.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_01"); //Wscieklosc zdradzonego i uwiklanego. Bohater morderczej walki.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_02"); //Król wsród wojowników.
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_03"); //Dobrze oczyszczony, lew!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_04"); //Leo?
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_05"); //Zwierze znalezione na ladzie stalym. Mówi sie jak troll i jest równie niebezpieczny.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_06"); //Nigdy o nim nie slyszalem. Jestem z pólnocy.
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_07"); //Mój ojciec byl najstarszy w klanie, moja matka najpiekniejsza wsród kobiet i ja najodwazniejsza mlodosc pod sloncem.
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_08"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_09"); //Intryga! Nieslawny oszczerca podlego rywala!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_10"); //Obiecano mi panne na targach!
	AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_11"); //Pewnego dnia przyszli poplecznicy króla, zabrali mnie i wrzucili do zapory!
	AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_12"); //Przykro mi z tego powodu.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Klinger_Lehrer_15_13"); //Powiedz mi, czy mozesz mnie czegos nauczyc?
		AI_Output(self, hero, "Info_Mod_Klinger_Lehrer_06_14"); //Jakie pytanie! Jestem najlepszym bojownikiem na swiecie. Co to moze byc?

		Log_CreateTopic	(TOPIC_MOD_LEHRER_WALDIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_WALDIS, "Klinger moze nauczyc mnie obslugiwac ludzi jedna reka.");
	};
};

INSTANCE Info_Mod_Klinger_Lernen (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_Lernen_Condition;
	information	= Info_Mod_Klinger_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Klinger_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Klinger_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Klinger_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Klinger_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Klinger_Lernen);

	Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
	Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
	Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_BACK()
{
	Info_ClearChoices	(Info_Mod_Klinger_Lernen);
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1h, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Klinger_Lernen);

		Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
	};
};

FUNC VOID Info_Mod_Klinger_Lernen_Zweihand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1h, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Klinger_Lernen);

		Info_AddChoice		(Info_Mod_Klinger_Lernen, DIALOG_BACK, Info_Mod_Klinger_Lernen_Zweihand_BACK);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1h))		,Info_Mod_Klinger_Lernen_Zweihand_5);
		Info_AddChoice		(Info_Mod_Klinger_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1h, 1))		,Info_Mod_Klinger_Lernen_Zweihand_1);
	};
};

INSTANCE Info_Mod_Klinger_EXIT (C_INFO)
{
	npc		= Mod_7555_JG_Klinger_JL;
	nr		= 1;
	condition	= Info_Mod_Klinger_EXIT_Condition;
	information	= Info_Mod_Klinger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Klinger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Klinger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
