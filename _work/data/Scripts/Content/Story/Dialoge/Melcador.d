INSTANCE Info_Mod_Melcador_Hi (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Hi_Condition;
	information	= Info_Mod_Melcador_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wygladasz troche poirytowany.";
};

FUNC INT Info_Mod_Melcador_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melcador_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_00"); //Wygladasz troche poirytowany.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_01"); //Nie mówisz! Jesli mialoby sie powierzyc ci tyle tragicznych zadan, ile ja jestem, to przeciagnalbys twarz w ten sposób.
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_02"); //Jaka jest twoja praca?
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_03"); //Ole powierzyl mi wspaniale zadanie zapewnienia, aby wszyscy tu w obozie wypelniali swoje zadania.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_04"); //A poniewaz nie widzicie tutaj nic, co by sie tu nie dzialo, oprócz Heidreka i Jerry' ego, to znaczy, ze nie wykonalem swojej pracy.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_05"); //To wlasnie dlatego Ole jest zawsze w moich uszach, ze nie wykonuje swojej pracy i dlatego dal mi wszelkiego rodzaju gówno, co musze zrobic.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_06"); //Moge ci powiedziec, ze wkrótce bede glupi.
	AI_Output(hero, self, "Info_Mod_Melcador_Hi_15_07"); //Moze moge wam pomóc w waszych zadaniach.
	AI_Output(self, hero, "Info_Mod_Melcador_Hi_06_08"); //Móglbym oczywiscie skorzystac z niewielkiej pomocy, ale najpierw powinienes byl porozmawiac z Ole, nie dlatego, ze wyglada na to, ze unikam pracy.
};

INSTANCE Info_Mod_Melcador_Buddler (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler_Condition;
	information	= Info_Mod_Melcador_Buddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam Ci pomóc z Ole.";
};

FUNC INT Info_Mod_Melcador_Buddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler_15_00"); //Mam Ci pomóc z Ole. Co wiec robisz?
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler_06_01"); //Zadbam o nowe koparki. Jesli chcesz, mozesz przyjechac ze mna do starego obozu, gdzie znajdziemy nowych ludzi.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler_15_02"); //Wtedy pójdziesz dalej, a ja pójde za Toba.

	Log_CreateTopic	(TOPIC_MOD_KG_BUDDLER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_BUDDLER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Móglbym odprowadzic Melcadora do starego obozu, aby zwabic Buddlera.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOOC");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Melcador_Buddler2 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler2_Condition;
	information	= Info_Mod_Melcador_Buddler2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melcador_Buddler2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler))
	&& (Npc_GetDistToWP(self, "OCR_OUTSIDE_HUT_2") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler2_Info()
{
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler2_06_00"); //Cóz, jestem gonna mam czat z Ianem, moze on wie, kogo mozemy uzyc.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler2_06_01"); //Powinienes w miedzyczasie zapytac o obóz, mozesz miec szczescie i znalezc kogos.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Podczas gdy Melcador rozmawia z Ianem, chce, abym rozejrzal sie po obozie. Moze znajde kopaczke do naszej sprawy.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TALKWITH");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "TALKWITH");
};

INSTANCE Info_Mod_Melcador_Buddler3 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler3_Condition;
	information	= Info_Mod_Melcador_Buddler3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem kopaczke!";
};

FUNC INT Info_Mod_Melcador_Buddler3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler3_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_00"); //Znalazlem kopaczke!
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_01"); //Bardzo ladnie, przejdzmy teraz.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_02"); //Ale nadal potrzebuje swojej starej ksiazki Buddlera, aby zapoznac sie z ta sprawa.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_03"); //Byloby to zbyt wiele zabawy. A gdzie tak jest?
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_04"); //Szkielet zabral go od niego.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler3_06_05"); //To jest coraz lepsze i lepsze. Dobrze, przedstawie Ci propozycje, idz dalej, a ja pójde za Toba.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler3_15_06"); //Cóz, podazaj za mna.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Melcador podazy za mna do obozu.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOCOSTA");
	B_StartOtherRoutine	(Mod_1902_STT_Ian_MT, "START");

	Wld_InsertNpc	(Skeleton_Costa, "SPAWN_TALL_PATH_BANDITOS2_03");
};

INSTANCE Info_Mod_Melcador_Buddler4 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler4_Condition;
	information	= Info_Mod_Melcador_Buddler4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Melcador_Buddler4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler3))
	&& (Npc_HasItems(hero, ItKe_Costa) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler4_Info()
{
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler4_06_00"); //Wspaniala, nie ma tam ksiazki.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler4_06_01"); //Prawdopodobnie ten zwariowany szkielet zabral ksiazke do jakiejs podziemnej swiatyni, gdzie wolno nam walczyc przez hordy wojowników szkieletowych.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler4_15_02"); //Nie robie takiego zamieszania. Klucz przeznaczony jest dla jednej z nich.
};

INSTANCE Info_Mod_Melcador_Buddler5 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler5_Condition;
	information	= Info_Mod_Melcador_Buddler5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widzisz?";
};

FUNC INT Info_Mod_Melcador_Buddler5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler4))
	&& (Npc_HasItems(hero, ItWr_Buddlerbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler5_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler5_15_00"); //Widzisz? Szkielet po prostu umiescic w klatce piersiowej, a nie swiatyni goddamn.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler5_06_01"); //Wszystkie sluszne, wszystkie sluszne. Wez jego ksiazke do Buddlera teraz, wróce do obozu.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Mam przyniesc Coste swoja ksiazke. Melcador juz wrócil do obozu.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Melcador_Buddler6 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler6_Condition;
	information	= Info_Mod_Melcador_Buddler6_Info;
	permanent	= 0;
	important	= 0;
	description	= "Koparka czeka teraz na koparke.";
};

FUNC INT Info_Mod_Melcador_Buddler6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler6_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler6_15_00"); //Koparka czeka teraz na koparke.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_01"); //Dobre, ale potrzebujemy jeszcze jednego.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_02"); //Slysze, ze na wyspie ma byc wieksze miasto w dolinie zwanej Relendel.
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler6_06_03"); //Byc moze znajdziesz u nas kogos innego.
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler6_15_04"); //Dobrze, rozejrze sie dookola.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Teraz musze udac sie do Relendel i szukac tam drugiego kopacza....");
};

INSTANCE Info_Mod_Melcador_Buddler7 (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Buddler7_Condition;
	information	= Info_Mod_Melcador_Buddler7_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kolejny kopacz czeka teraz poza koparka!";
};

FUNC INT Info_Mod_Melcador_Buddler7_Condition()
{
	if (Mod_KG_Sterling == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Buddler7_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Buddler7_15_00"); //Kolejny kopacz czeka teraz poza koparka!
	AI_Output(self, hero, "Info_Mod_Melcador_Buddler7_06_01"); //Bardzo dobrze, jestes naprawde przydatny. Oto troche zlota.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KG_VORBEREITUNGEN, "Pomagalem Melcadorowi zdobyc Buddlera dla kopalni.");
	B_SetTopicStatus	(TOPIC_MOD_KG_BUDDLER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Melcador_Trent (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Trent_Condition;
	information	= Info_Mod_Melcador_Trent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hymir wyslal mnie na emeryture.";
};

FUNC INT Info_Mod_Melcador_Trent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_Trent))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Trent_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Trent_15_00"); //Hymir wyslal mnie na emeryture.
	AI_Output(self, hero, "Info_Mod_Melcador_Trent_06_01"); //Jestes tak szczesliwy! Oto rzeczy, które powinienem ci przekazac.

	CreateInvItems	(hero, ItMw_KGErzwaffe, 1);

	CreateInvItems	(hero, ItFo_Beer, 6);

	B_ShowGivenThings	("Bron królewska i 6 piwa otrzymana");

	AI_Output(self, hero, "Info_Mod_Melcador_Trent_06_02"); //Najpierw napój.

	B_UseItem	(self, ItFo_Beer);
	B_UseItem	(hero, ItFo_Beer);
};

INSTANCE Info_Mod_Melcador_Lehrer (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Lehrer_Condition;
	information	= Info_Mod_Melcador_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czyz nie walczysz z bronia jednoreczna?";
};

FUNC INT Info_Mod_Melcador_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Hi))
	&& (KG_Dabei == 1)
	&& (hero.Hitchance[NPC_TALENT_1H] < 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_Lehrer_15_00"); //Czyz nie walczysz z bronia jednoreczna? Jak to wyglada, czy jestes na tyle dobry, ze czegos mnie nauczyles?
	AI_Output(self, hero, "Info_Mod_Melcador_Lehrer_06_01"); //Móglbym wam cos nauczyc, ale nikogo nie ucze podstaw. Nie przychodzcie do mnie, dopóki nie zdobedziecie doswiadczenia.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KG, "Melcador moze nauczyc mnie jak walczyc z mezczyznami jednej reki.");
};

INSTANCE Info_Mod_Melcador_LernenMelcador (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_LernenMelcador_Condition;
	information	= Info_Mod_Melcador_LernenMelcador_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy zdobylem wystarczajace doswiadczenie?";
};

FUNC INT Info_Mod_Melcador_LernenMelcador_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Lehrer))
	&& (hero.hitchance[NPC_TALENT_1H] >= 50)
	&& (hero.hitchance[NPC_TALENT_1H] < 80)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_Info()
{
	AI_Output(hero, self, "Info_Mod_Melcador_LernenMelcador_15_00"); //Czy zdobylem wystarczajace doswiadczenie?
	AI_Output(self, hero, "Info_Mod_Melcador_LernenMelcador_06_01"); //Tak, ale nie zapominaj: Jesli chcesz zostac mistrzem w walce jednostronnej, musisz zainwestowac duzo doswiadczenia.

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);
	
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Z powrotem.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_BACK()
{
	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_1H, 5, 80);

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);

	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Z powrotem.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

FUNC VOID Info_Mod_Melcador_LernenMelcador_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_1H, 1, 80);

	Info_ClearChoices	(Info_Mod_Melcador_LernenMelcador);

	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, "Z powrotem.", Info_Mod_Melcador_LernenMelcador_BACK);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H5, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Melcador_LernenMelcador_5);
	Info_AddChoice	(Info_Mod_Melcador_LernenMelcador, B_BuildLearnString(PRINT_Learn1H1, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Melcador_LernenMelcador_1);
};

INSTANCE Info_Mod_Melcador_Pickpocket (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_Pickpocket_Condition;
	information	= Info_Mod_Melcador_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Melcador_Pickpocket_Condition()
{
	C_Beklauen	(93, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

	Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_BACK, Info_Mod_Melcador_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Melcador_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Melcador_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Melcador_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Melcador_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Melcador_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Melcador_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Melcador_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Melcador_EXIT (C_INFO)
{
	npc		= Mod_1024_KGD_Melcador_MT;
	nr		= 1;
	condition	= Info_Mod_Melcador_EXIT_Condition;
	information	= Info_Mod_Melcador_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Melcador_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Melcador_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
