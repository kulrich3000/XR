INSTANCE Info_Mod_Friedel_Hi (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Hi_Condition;
	information	= Info_Mod_Friedel_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Friedel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Friedel_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Friedel_Hi_01_00"); //Jestem Friedel, ucze mlodych mezczyzn jak walczyc.

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Friedel_Hi_15_01"); //Czy mozesz mnie czegos nauczyc?
		AI_Output(self, hero, "Info_Mod_Friedel_Hi_01_02"); //Tak dlugo, jak dlugo jestescie niedoswiadczeni, bede w stanie pokazac wam jedna lub dwie sztuczki.

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORATA, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORATA, "Friedel moze pokazac mi, jak radzic sobie z ludzmi jednej reki i pomóc mi wzmocnic sie.");
	};
};

INSTANCE Info_Mod_Friedel_Wettstreit (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Wettstreit_Condition;
	information	= Info_Mod_Friedel_Wettstreit_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem tutaj na polowanie na szczury.";
};

FUNC INT Info_Mod_Friedel_Wettstreit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Friedel_Hi))
	&& (Mod_REL_Wettstreit == 1)
	&& (Mod_REL_Wettstreit_Tag < Wld_GetDay())
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Wettstreit_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_15_00"); //Jestem tutaj na polowanie na szczury.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_01"); //Nicei! To daloby nam trzeci uczestnik.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_02"); //Pozostale dwie osoby beda moimi praktykantami, którzy zdaja ostatnie egzaminy z polowania na szczury.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_03"); //Czy mozemy zatem wystartowac?
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_15_04"); //Chcialbym poznac zasady.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_05"); //Mozna to zaaranzowac!
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_06"); //Nad jeziorem zawsze sa szczury.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_07"); //Uczestnicy zaczynaja w tym samym czasie i musza zabic wszystkie szczury wokól jeziora.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_08"); //Kto odnosi najwieksze sukcesy, ten wygrywa i otrzymuje nagrode pieniezna.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_01_09"); //Kiedy bedziesz gotowy, mozemy zaczac.

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);

	Info_AddChoice	(Info_Mod_Friedel_Wettstreit, "Bede z powrotem.", Info_Mod_Friedel_Wettstreit_B);
	Info_AddChoice	(Info_Mod_Friedel_Wettstreit, "Jestem gotowy.", Info_Mod_Friedel_Wettstreit_A);
};

FUNC VOID Info_Mod_Friedel_Wettstreit_B()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_B_15_00"); //Bede z powrotem.

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);
};

FUNC VOID Info_Mod_Friedel_Wettstreit_A()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Wettstreit_A_15_00"); //Jestem gotowy.
	AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit_A_01_01"); //Nie trac wiec czasu!

	Mod_REL_Wettstreit = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_WETTSTREIT, "Musze zabic jak najwiecej szczurów na brzegu jeziora.");

	Info_ClearChoices	(Info_Mod_Friedel_Wettstreit);

	AI_StopProcessInfos	(self);

	Mod_REL_Wettstreit_Tyrus = 0;
	Mod_REL_Wettstreit_Davon = 0;
	Mod_REL_Wettstreit_Hero = 0;

	B_StartOtherRoutine	(Mod_7519_OUT_Tyrus_REL, "RATTENJAGD");
	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "RATTENJAGD");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_381");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_380");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_378");

	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
	Wld_InsertNpc	(Giant_Rat_Friedel, "REL_CITY_376");
};

INSTANCE Info_Mod_Friedel_Wettstreit2 (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Wettstreit2_Condition;
	information	= Info_Mod_Friedel_Wettstreit2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Friedel_Wettstreit2_Condition()
{
	if (Mod_REL_Wettstreit == 2)
	&& ((Mod_REL_Wettstreit_Hero > 0)
	|| (Mod_REL_Wettstreit_Davon > 0)
	|| (Mod_REL_Wettstreit_Tyrus > 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Wettstreit2_Info()
{
	if (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Tyrus)
	&& (Mod_REL_Wettstreit_Hero > Mod_REL_Wettstreit_Davon)
	{
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_01_00"); //Z calym szacunkiem, nawet gdybym mial z wami trudny czas.
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_01_01"); //Zostaniesz za to wynagrodzony.

		B_GivePlayerXP	(50);

		B_GiveInvItems	(self, hero, ItMi_Gold, 100);

		Mod_REL_Wettstreit = 3;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_01_02"); //Dzis nie wystarczylo.

		if (Mod_REL_Wettstreit_Verloren == 0)
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Wettstreit2_01_03"); //Ale poniewaz w tym roku mamy tak wiele szczurów, jutro bedziemy mogli rywalizowac. Moze to sprawi, ze odniesiesz wiekszy sukces.

			Mod_REL_Wettstreit_Tag = Wld_GetDay();

			Mod_REL_Wettstreit = 1;

			Mod_REL_Wettstreit_Verloren = 1;
		}
		else
		{
			B_SetTopicStatus	(TOPIC_MOD_KHORATA_WETTSTREIT, LOG_FAILED);

			Mod_REL_Wettstreit = 4;
		};
	};

	B_StartOtherRoutine	(Mod_7519_OUT_Tyrus_REL, "START");
	B_StartOtherRoutine	(Mod_7518_OUT_Davon_REL, "START");
};

INSTANCE Info_Mod_Friedel_Buerger (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Buerger_Condition;
	information	= Info_Mod_Friedel_Buerger_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Friedel_Buerger_Condition()
{
	if (Mod_REL_Buerger == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Buerger_Info()
{
	AI_Output(self, hero, "Info_Mod_Friedel_Buerger_01_00"); //Nowy w naszych szeregach. Oto kapital poczatkowy.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	if (Mod_Verhandlungsgeschick > 0)
	{
		AI_Output(hero, self, "Info_Mod_Friedel_Buerger_15_01"); //To niewiele.

		if (self.aivar[AIV_Verhandlung] == TRUE)
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Buerger_01_02"); //Ma pani racje. Ale trzeba to zrobic!

			B_GiveInvItems	(self, hero, ItMi_Gold, 200);

			B_RaiseHandelsgeschick (3);
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Friedel_Buerger_01_03"); //To nie wystarczy do konca zycia! Idz do pracy!
		};
	};
};

INSTANCE Info_Mod_Friedel_Unruhen (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Unruhen_Condition;
	information	= Info_Mod_Friedel_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Bijmy górników. Przyjedz ze mna.";
};                       

FUNC INT Info_Mod_Friedel_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Unruhen4))
	&& (Mod_REL_LukasS == 0)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Unruhen_15_00"); //Bijmy górników. Przyjedz ze mna.
	AI_Output(self, hero, "Info_Mod_Friedel_Unruhen_01_01"); //Wszystko w porzadku, nawet jesli nie ma racji.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOMINE");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Friedel_Freudenspender (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Freudenspender_Condition;
	information	= Info_Mod_Friedel_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Chcesz dac przyjemnosc?";
};                       

FUNC INT Info_Mod_Friedel_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Friedel_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Freudenspender_15_00"); //Chcesz dac przyjemnosc?
	AI_Output(self, hero, "Info_Mod_Friedel_Freudenspender_01_01"); //Czy kochasz mnie? Nie, nie chce!
};

INSTANCE Info_Mod_Friedel_Lernen (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Lernen_Condition;
	information	= Info_Mod_Friedel_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Friedel_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Friedel_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Friedel_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Friedel_Lernen_15_00"); //Chce sie uczyc.
	AI_Output(self, hero, "Info_Mod_Friedel_Lernen_01_01"); //Czego chcesz sie nauczyc?

	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(walka jednoreczna)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(wytrzymalosc)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(walka jednoreczna)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(wytrzymalosc)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Lernen);

		Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
	};
};

FUNC VOID Info_Mod_Friedel_Lernen_Einhand_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Lernen);

		Info_AddChoice		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Einhand_BACK);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H))		,Info_Mod_Friedel_Lernen_Einhand_5);
		Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1))		,Info_Mod_Friedel_Lernen_Einhand_1);
	};
};	

FUNC VOID Info_Mod_Friedel_Lernen_Staerke()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice	(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(walka jednoreczna)", Info_Mod_Friedel_Lernen_Einhand);
	Info_AddChoice	(Info_Mod_Friedel_Lernen, "(wytrzymalosc)", Info_Mod_Friedel_Lernen_Staerke);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_STRENGTH, 5, 200);
	
	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

FUNC VOID Info_Mod_Friedel_Lernen_Staerke_1()
{
	B_TeachAttributePoints	(self, hero, ATR_STRENGTH, 1, 200);

	Info_ClearChoices	(Info_Mod_Friedel_Lernen);

	Info_AddChoice 		(Info_Mod_Friedel_Lernen, DIALOG_BACK, Info_Mod_Friedel_Lernen_Staerke_BACK);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR5	, B_GetLearnCostAttribute_New(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_5);
	Info_AddChoice		(Info_Mod_Friedel_Lernen, B_BuildLearnString_New(PRINT_LearnSTR1	, B_GetLearnCostAttribute(hero, ATR_STRENGTH), ATR_STRENGTH)	,Info_Mod_Friedel_Lernen_Staerke_1);
};

INSTANCE Info_Mod_Friedel_Pickpocket (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_Pickpocket_Condition;
	information	= Info_Mod_Friedel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Friedel_Pickpocket_Condition()
{
	C_Beklauen	(83, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

	Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_BACK, Info_Mod_Friedel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Friedel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Friedel_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Friedel_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Friedel_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Friedel_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Friedel_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Friedel_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Friedel_EXIT (C_INFO)
{
	npc		= Mod_7517_OUT_Friedel_REL;
	nr		= 1;
	condition	= Info_Mod_Friedel_EXIT_Condition;
	information	= Info_Mod_Friedel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Friedel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Friedel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
