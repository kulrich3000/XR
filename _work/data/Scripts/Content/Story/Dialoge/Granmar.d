INSTANCE Info_Mod_Granmar_Hi (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Hi_Condition;
	information	= Info_Mod_Granmar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_Hi_Condition()
{
	if (Wld_IsTime(08,00,20,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_00"); //Co Pan tutaj robi?
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_01"); //Nie jestem jeszcze pewien. Co sie tu dzieje?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_02"); //Cóz, jesli chcesz pracowac dla nas, powinienes zobaczyc Ole.
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_03"); //W przeciwnym razie mozna by kupic cos od Bernda. Dolina Minental jest trudnym miejscem i jesli nie jestes przygotowany, nie powinienes wchodzic w nia zbyt gleboko.
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_04"); //Mm, dzieki za koncówke. Ale co to za ugrupowanie?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_05"); //Jestesmy straznikiem królewskim i podlegamy bezposrednio rozkazowi Rhobara.
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_06"); //Czy nalezy Pan/Pani do paladynek w Khorinis?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_07"); //Nie bezposrednio, choc miejmy nadzieje, ze dazymy do tych samych celów. Jestem pewien, ze Ole moze ci o tym opowiedziec.
};

INSTANCE Info_Mod_Granmar_Aufgabe (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Aufgabe_Condition;
	information	= Info_Mod_Granmar_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wyslij mi te moja rzecz!";
};

FUNC INT Info_Mod_Granmar_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_00"); //Wyslij mi te moja rzecz!
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_01"); //Bardzo ladnie, moglem skorzystac z pomocy!
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_02"); //Zadbam o dziwne kamienne potwory w kopalni, ale te stworzenia sa odporne na normalna bron.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_03"); //Jedyna wskazówka jest ksiazka, która kupilem u magów wody.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_04"); //Najwyrazniej te kamienne potwory mozna pokonac tylko przy pomocy klubów przykrytych ruda.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_05"); //Rozmawialem juz o tym z Heidrekiem i on uwaza, ze potrzebny jest pewien rodzaj drewna, które znajduje sie tylko w poblizu trollów.
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_06"); //A gdzie jest tu troll?
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_07"); //Z tego, co wiem, w poblizu obozu bandyckiego znajduje sie nawet kotlet trollowy.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_08"); //Stracilem jednak dobry miecz i Heidrek nie mógl zrobic nowego.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_09"); //Bez mojego miecza na pewno nie zblize sie do trollów.
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_10"); //Dobrze, bede szukal, ale chce odpowiedniej nagrody.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_11"); //Prosze mi wierzyc, jesli znajdziesz drewno, nie bedziesz tego zalowal.

	Log_CreateTopic	(TOPIC_MOD_KG_TROLLHOLZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_TROLLHOLZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Granmar mial zabic kamienne potwory w kopalni, ale potrzebowal klubu z ruda posadzka. Ale do tego potrzebny jest kawalek trollwood, który teraz moge dostac. Byc moze znajdziemy kawalek tego drewna w kotle trollowym na obozie bandytów....");

	Wld_InsertItem	(ItMi_Trollholz, "FP_ITEM_TROLLHOLZ");

	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
};

INSTANCE Info_Mod_Granmar_Trollholz (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Trollholz_Condition;
	information	= Info_Mod_Granmar_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem drewno.";
};

FUNC INT Info_Mod_Granmar_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Trollholz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Trollholz_15_00"); //Znalazlem drewno. Co teraz z tym robimy?
	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz_26_01"); //Bardzo dobrze, zabierz od razu Heidrek, on z niego wykona swój klub.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Mam zabrac trollwood do Heidreka, aby mógl z niego wyrzucic klub.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Granmar_Trollholz2 (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Trollholz2_Condition;
	information	= Info_Mod_Granmar_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kluby sa gotowe!";
};

FUNC INT Info_Mod_Granmar_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz3))
	&& (Npc_HasItems(hero, ItMW_GranmarKeule) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Trollholz2_15_00"); //Kluby sa gotowe!

	B_GiveInvItems	(hero, self, ItMw_GranmarKeule, 1);

	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz2_26_01"); //Doskonale, wtedy juz wkrótce bedziemy mogli polowac.
	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz2_26_02"); //Prosze pozwolic mi wiedziec, jak tylko Hymir sie zgodzi.

	B_LogEntry_More	(TOPIC_MOD_KG_VORBEREITUNGEN, TOPIC_MOD_KG_TROLLHOLZ, "Problemy Granmara sa rozwiazywane.", "Granmar jest teraz gotowy na burze w kopalni. Chce mu powiedziec, czy Hymir sie na to zgodzi.");
	B_SetTopicStatus	(TOPIC_mOD_KG_TROLLHOLZ, LOG_SUCCESS);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Granmar_PreLehrer (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_PreLehrer_Condition;
	information	= Info_Mod_Granmar_PreLehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak to wyglada? Czy mozesz mi pokazac jak byc lepszym wojownikiem?";
};

FUNC INT Info_Mod_Granmar_PreLehrer_Condition()
{
	if (KG_Dabei == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_PreLehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_PreLehrer_15_00"); //Jak to wyglada? Czy mozesz mi pokazac jak byc lepszym wojownikiem?
	AI_Output(self, hero, "Info_Mod_Granmar_PreLehrer_26_01"); //Moglabym ci cos nauczyc, ale dopóki nie mam dobrej broni, nie bede sie przejmowal.
	AI_Output(self, hero, "Info_Mod_Granmar_PreLehrer_26_02"); //Zapytaj mnie jeszcze raz, czy Heidrek ukonczyl mój nowy miecz.
};

INSTANCE Info_Mod_Granmar_Lehrer (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Lehrer_Condition;
	information	= Info_Mod_Granmar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy teraz mozesz mi pokazac, jak sie poprawic?";
};

FUNC INT Info_Mod_Granmar_Lehrer_Condition()
{
	if (KG_Dabei == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Lehrer_15_00"); //Czy teraz mozesz mi pokazac, jak sie poprawic?
	AI_Output(self, hero, "Info_Mod_Granmar_Lehrer_26_01"); //Tak, obietnica jest obietnica. Jesli chcesz, moge nauczyc Cie jak radzic sobie z facetem dwurecznym.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KG, "Granmar moze nauczyc mnie poslugiwania sie dwurecznymi ludzmi.");
};

INSTANCE Info_Mod_Granmar_Lernen (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Lernen_Condition;
	information	= Info_Mod_Granmar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Granmar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Granmar_Lernen);

	Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
};

FUNC VOID Info_Mod_Granmar_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Granmar_Lernen);
};

FUNC VOID Info_Mod_Granmar_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Lernen);

		Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
	};
};

FUNC VOID Info_Mod_Granmar_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Lernen);

		Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
	};
};

INSTANCE Info_Mod_Granmar_Pickpocket (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Pickpocket_Condition;
	information	= Info_Mod_Granmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Granmar_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_BACK, Info_Mod_Granmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Granmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Granmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Granmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Granmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Granmar_EXIT (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_EXIT_Condition;
	information	= Info_Mod_Granmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Granmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
