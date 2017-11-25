INSTANCE Info_Mod_Cord_NW_Hi (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Hi_Condition;
	information	= Info_Mod_Cord_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Cord_NW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_01"); //Co Pan tutaj robi? Ty masz szczescie, ze nie pracujemy juz dla magów wody.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_02"); //Byli bardzo zdenerwowani po tym, jak spusciles magiczna energie z ich haldy rudy.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Hi_14_03"); //Ale wydaje sie, ze udalo Ci sie zniszczyc magiczna bariere.
};

INSTANCE Info_Mod_Cord_NW_Irdorath (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath_Condition;
	information	= Info_Mod_Cord_NW_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce zabrac statek Paladina na wyspe.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_00"); //Chce zabrac statek Paladina na wyspe, aby zmierzyc sie z mrocznymi stworzeniami i ocalic wyspe.
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_01"); //To bedzie niebezpieczne przedsiewziecie, a ja potrzebuje poteznych ludzi....
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_02"); //Co mówisz?
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_03"); //Brzmi to jak okazja do zamachu miecza na prawdziwych przeciwników, a nie tylko przebicia dziur w powietrzu.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath_14_04"); //Bede od razu w drodze do portu.
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath_15_05"); //Uh, na pewno zobacze cie tam, kiedy sie zacznie.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Wiec Fighter Cord nie odmówi mi towarzyszyc na wyspie.");

	B_GivePlayerXP	(100);

	Mod_CordDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cord_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath3_Condition;
	information	= Info_Mod_Cord_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_CordDabei == 1)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath3_14_01"); //Zbyt zle. Wróce wtedy. Wiesz, gdzie mnie znalezc, jesli kiedykolwiek zostanie jakies miejsce.

	Mod_CordDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Cord_NW_Irdorath4 (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Irdorath4_Condition;
	information	= Info_Mod_Cord_NW_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "Moge dac ci przejazdzke.";
};

FUNC INT Info_Mod_Cord_NW_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_CordDabei == 0)
	&& (Mod_CedricDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Irdorath4_15_00"); //Moge dac ci przejazdzke. Na statku znajduje sie pomieszczenie.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Irdorath4_14_01"); //Bardzo dobrze, wróce do portu.

	Mod_CordDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Cord_NW_Unheil (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Unheil_Condition;
	information	= Info_Mod_Cord_NW_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy ostatnio na podwórku dzialo sie cos dziwnego - oprócz potworów na podwórkach?";
};

FUNC INT Info_Mod_Cord_NW_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Unheil_15_00"); //Czy ostatnio na podwórku dzialo sie cos dziwnego - oprócz potworów na podwórkach?
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_01"); //Tak, to wszystko jest snxed. Kazda noc kiedy robi sie ciemno, nagle odczuwam tyle zmeczenia, ze musze zamknac oczy.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_02"); //Po krótkim czasie budze sie znowu i moge bez trudu kontynuowac trening.
	AI_Output(self, hero, "Info_Mod_Cord_NW_Unheil_14_03"); //Nie wiem, co moze byc tego powodem.
};

INSTANCE Info_Mod_Cord_NW_WoWassermagier (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_WoWassermagier_Condition;
	information	= Info_Mod_Cord_NW_WoWassermagier_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z magowie wody?";
};

FUNC INT Info_Mod_Cord_NW_WoWassermagier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_WoWassermagier_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_WoWassermagier_15_00"); //A co z magowie wody?
	AI_Output(self, hero, "Info_Mod_Cord_NW_WoWassermagier_14_01"); //Po upadku zapory poszli do miasta. Ale potem dotarli do miejsca wykopalisk.
};

INSTANCE Info_Mod_Cord_NW_NahkampfJG (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_NahkampfJG_Condition;
	information	= Info_Mod_Cord_NW_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rangerzy wciaz potrzebuja bojowników do walki wrecz.";
};

FUNC INT Info_Mod_Cord_NW_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_00"); //Rangerzy wciaz potrzebuja bojowników do walki wrecz.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_01"); //Oni niewiele wiedza o mieczu. A w Minental niedzwiedz jest luzny.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_02"); //W naszym obozie takze w Puszczy Ciemnej.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_03"); //Co dokladnie sie dzieje?
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_04"); //Pewien czarny mag jest oczywiscie wymierzony w lesników.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_05"); //Nikt nie wie dlaczego. Stracilismy juz pieciu mezczyzn.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_06"); //To zle. Ale jak sam pan wie, tutaj w Khorinis jest tez jakis dostep.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_07"); //Wszedzie widac ciemne figury.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_08"); //Hmm..... Móglbym wam pozyczyc mezczyzne. Za 500 zlota.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_09"); //500 zlota? Zlota nie pomyslalo sie tak naprawde. Bedziesz musial sam zaplacic mezczyznie.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_10"); //Ale mam pomysl. Co moge zrobic, zebys mial mysliwego w zamian za mnie? Czy jest ktos, kto z Toba poluje?
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_11"); //Wlasciwie nie. Nasze jedzenie pochodzi z Onar. Ale masz racje. Dodatkowa bryla miesa nie bylaby bledna. Ladunek.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_12"); //Kto....?
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_13"); //Przed wejsciem znajduje sie wartownik rezerwowy. Siedzi glównie po lewej stronie trawy.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_14"); //Nazywa sie Hock. On powinien pójsc z toba.
	AI_Output(hero, self, "Info_Mod_Cord_NW_NahkampfJG_15_15"); //Wszystko jasne. Do zobaczenia wkrótce.
	AI_Output(self, hero, "Info_Mod_Cord_NW_NahkampfJG_14_16"); //Adanos z wami.
};

INSTANCE Info_Mod_Cord_NW_Lehrer (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Lehrer_Condition;
	information	= Info_Mod_Cord_NW_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Cord_NW_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Hi))
	&& ((Mod_Gilde == 4)
	|| (Mod_Gilde == 5)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Cord_NW_Lehrer_14_00"); //Potrafie nauczyc Cie obslugiwac ludzi jedna i dwie rece.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_SOELDNER_ONAR, "Kord moze nauczyc mnie obslugiwac ludzi jedna i dwie rece.");
};

INSTANCE Info_Mod_Cord_NW_Lernen (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_Lernen_Condition;
	information	= Info_Mod_Cord_NW_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Cord_NW_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_Lehrer))
	&& ((Mod_Gilde == 5)
	|| (Mod_Gilde == 4)
	|| (Mod_Gilde == 19))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Cord_NW_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
};

FUNC VOID Info_Mod_Cord_NW_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);
};

FUNC VOID Info_Mod_Cord_NW_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Cord_NW_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Cord_NW_Lernen);

		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, DIALOG_BACK, Info_Mod_Cord_NW_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Cord_NW_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Cord_NW_Lernen_2H_1);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Cord_NW_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Cord_NW_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Cord_NW_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Cord_Pickpocket (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_Pickpocket_Condition;
	information	= Info_Mod_Cord_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Cord_Pickpocket_Condition()
{
	C_Beklauen	(125, ItMi_Gold, 65);
};

FUNC VOID Info_Mod_Cord_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

	Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_BACK, Info_Mod_Cord_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cord_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cord_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
};

FUNC VOID Info_Mod_Cord_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cord_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cord_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cord_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cord_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cord_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cord_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cord_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cord_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cord_NW_EXIT (C_INFO)
{
	npc		= Mod_528_SLD_Cord_NW;
	nr		= 1;
	condition	= Info_Mod_Cord_NW_EXIT_Condition;
	information	= Info_Mod_Cord_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cord_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cord_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
