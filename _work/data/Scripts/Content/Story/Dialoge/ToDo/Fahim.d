INSTANCE Info_Mod_Fahim_Hi (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Hi_Condition;
	information	= Info_Mod_Fahim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Fahim_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fahim_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Fahim_Hi_10_01"); //Jestem Fahim.
};

INSTANCE Info_Mod_Fahim_Belagerung (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Belagerung_Condition;
	information	= Info_Mod_Fahim_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz dla mnie cos do zrobienia?";
};

FUNC INT Info_Mod_Fahim_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_00"); //Masz dla mnie cos do zrobienia?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_01"); //Tak, rzeczywiscie!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_02"); //Co mozna zrobic?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_03"); //Podczas ataku zostala wylaczona magiczna moc sanktuarium beliarskiego. Nie mozemy stad uciec stad. Musimy naprawic swiatynie.
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_04"); //Jak mam to zrobic?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_05"); //Kapliczka Beliarchów wziela swoja moc z kamienia rudy czarnej. Ten jest zniszczony. Potrzebujemy nowego kamienia!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_06"); //Skad pochodzi taki kamien?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_07"); //Taki kamien ma byc na tylach starej biblioteki. Spróbuj szczescia tam!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_08"); //Wtedy bede szukal!

	Wld_InsertItem	(ItMi_Beliarstein_Unloaded, "FP_ITEM_GREATPEASANT_STPLATE_05");

	Log_CreateTopic	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Fahim powiedzial nam, ze kamien z rudy czarnej z beliarskiej swiatyni zostal zniszczony. Musze znalezc nowy, abysmy mogli reaktywowac swiatynie.");
};

INSTANCE Info_Mod_Fahim_HabStein (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_HabStein_Condition;
	information	= Info_Mod_Fahim_HabStein_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem kamien.";
};

FUNC INT Info_Mod_Fahim_HabStein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Belagerung))
	&& (Npc_HasItems(hero, ItMi_Beliarstein_Unloaded) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_HabStein_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_00"); //Znalazlem kamien.

	B_GiveInvItems	(hero, self, ItMi_Beliarstein_Unloaded, 1);

	AI_Output(self, hero, "Info_Mod_Fahim_HabStein_10_01"); //Jest w tym cos zlego. Kamien nie ma juz zadnej magicznej energii!
	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_02"); //Juz to zauwazylem. Co mozemy zrobic?
	AI_Output(self, hero, "Info_Mod_Fahim_HabStein_10_03"); //Kamien wykonany jest z rudy czarnej. Zapytaj Eduarda, czy potrafi naprawic kamien.

	B_GiveInvItems	(self, hero, ItMi_Beliarstein_Unloaded, 1);

	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_04"); //Bede wiec jechal!

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Znaleziony kamien nie posiadal magicznej energii. Teraz mam go zabrac do Eduarda, majac nadzieje, ze potrafi go naprawic.");
};

INSTANCE Info_Mod_Fahim_SteinRepariert (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_SteinRepariert_Condition;
	information	= Info_Mod_Fahim_SteinRepariert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kamien znów dziala swietnie!";
};

FUNC INT Info_Mod_Fahim_SteinRepariert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_SteinFertig))
	&& (Npc_HasItems(hero, ItMi_Beliarstein) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_SteinRepariert_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_00"); //Kamien znów dziala swietnie!
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_01"); //To wspaniale!
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_02"); //Co jeszcze pozostaje do zrobienia?
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_03"); //Teraz wystarczy tylko polaczyc kamien z beliarska swiatynia. Umocuj swoja magiczna moc przed Sanktuarium Beliars i poswiec jej czesc.
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_04"); //Teraz kamien automatycznie wstawi sie do swiatyni i przywróci ja do ruchu.
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_05"); //Jesli to wszystko.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Ide do sanktuarium, naprawie tam swoja magiczna moc i poswiece jej czesc. Reszta z nich idzie sama.");
};

INSTANCE Info_Mod_Fahim_SchreinRepariert (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_SchreinRepariert_Condition;
	information	= Info_Mod_Fahim_SchreinRepariert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kapliczka jest stala!";
};

FUNC INT Info_Mod_Fahim_SchreinRepariert_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayIdol_SteinEinfuegen))
	&& (Npc_HasItems(hero, ItMi_Beliarstein) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_SchreinRepariert_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_SchreinRepariert_15_00"); //Kapliczka jest stala!
	AI_Output(self, hero, "Info_Mod_Fahim_SchreinRepariert_10_01"); //(propleased) Cudowny! Wez to zloto jako nagrode! Zglosze sie do Raven!
	
	CreateInvItems	(self, ItMi_Gold, 1000);
	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(700);

	B_LogEntry_More	(TOPIC_MOD_BEL_BELIARSCHREIN, TOPIC_MOD_BEL_BELAGERUNG, "Sanktuarium jest stale, Fahim zostaje poinformowany i otrzymalem moja nagrode.", "Pomagalem Fahimowi w reaktywacji bialoruskiego sanktuarium.");

	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Fahim_Lehrer (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Lehrer_Condition;
	information	= Info_Mod_Fahim_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Fahim_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Fahim_Lehrer_10_00"); //Potrafie nauczyc Cie, jak obchodzic sie z reka.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Fahim moze nauczyc mnie jak walczyc z mezczyznami jednej reki.");
};

INSTANCE Info_Mod_Fahim_Lernen (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Lernen_Condition;
	information	= Info_Mod_Fahim_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Fahim_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Lehrer))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Fahim_Lernen);

	Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
};

FUNC VOID Info_Mod_Fahim_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Fahim_Lernen);
};

FUNC VOID Info_Mod_Fahim_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Lernen);

		Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Fahim_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Lernen);

		Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Fahim_Pickpocket (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Pickpocket_Condition;
	information	= Info_Mod_Fahim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fahim_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

	Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_BACK, Info_Mod_Fahim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fahim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fahim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fahim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fahim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fahim_EXIT (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_EXIT_Condition;
	information	= Info_Mod_Fahim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fahim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fahim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
