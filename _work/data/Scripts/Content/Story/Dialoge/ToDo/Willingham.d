INSTANCE Info_Mod_Willingham_Hi (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Hi_Condition;
	information	= Info_Mod_Willingham_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_00"); //Ach! Nowa twarz i mocne cialo. Mów mojego przyjaciela, dlaczego przychodzisz do mnie?
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_01"); //Chce, abys sie przydal Tobie, dowódcy, abys poznal swój kraj i zobaczyl jak Ty sie radzisz.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_02"); //Dobrze! Zanim jednak cos o nas nie mówie, prosze Cie o laske.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_03"); //Wyslalem patrol na kruszaca sie wieze na zlobionej górze, aby odkryc przelecz i przeszukac las pod orki przed nim.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_04"); //W miedzyczasie jednak sa one jednak dwa dni spóznione i powinny byc tu obecne.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_05"); //Nie moge wyslac tam juz wiecej moich mezczyzn, ale wiesz jak to przejechac dluga droge.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_06"); //Sciezka bedzie mniej problem, niz to, co zatrzymalo waszych ludzi......
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_07"); //Zaplace Ci oczywiscie, a wtedy bedziesz mial moje zaufanie.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_08"); //Wychodzac z bramy miasta mozesz zobaczyc przed soba trudna góre. Do niego prowadzi przelecz, która wyplywa z góry po prawej stronie.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_09"); //Jesli znajde twoich ludzi, co powinienem im powiedziec?
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_10"); //Chce wiedziec, co musza oni zglosic. Potem przyprowadz ja do mnie bezpiecznie.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_11"); //Ach, a jesli widzisz Baro w drodze do malego obozu drwala, powiedz mu, aby skontaktowal sie ze mna.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_12"); //Teraz juz wkrótce wróccie z moimi mezczyznami.

	Log_CreateTopic	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_RAUESCHNEIDE, "Dla komendanta Willinghama bede opiekowal sie jego mezczyznami na kruszacej sie wiezy na górze na pólnocy i przywiezie ich bezpiecznie do wioski. Po drodze poinformuje równiez dziennikarza Baro, ze ma on dostarczyc raport dowódcy.");

	Wld_InsertNpc	(Mod_7730_OUT_Brendan_EIS, "NORTDGEBIET_93");
	Wld_InsertNpc	(Mod_7731_OUT_Wache_EIS, "NORTDGEBIET_88");
	Wld_InsertNpc	(Mod_7732_OUT_Wache_EIS, "NORTDGEBIET_88");

	B_KillNpc	(Mod_7731_OUT_Wache_EIS);
	B_KillNpc	(Mod_7732_OUT_Wache_EIS);

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Riesenwolf, "NORTDGEBIET_88");

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
};

INSTANCE Info_Mod_Willingham_RaueSchneide (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_RaueSchneide_Condition;
	information	= Info_Mod_Willingham_RaueSchneide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_RaueSchneide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Hi))
	&& (Mod_BaroAtWillingham == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_RaueSchneide_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_00"); //Kiedy orki atakuja przelecz, laczymy sie ze swiatem zewnetrznym tylko przez krag kamienny i maja nas w szczypcach.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_01"); //Ich liczebnosc moze byc na tyle duza, ze moga zaatakowac wioske.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_02"); //Musimy dowiedziec sie, ile z nich dostalo sie do naszej doliny na raz.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_03"); //Baro powiedzial, ze ma pomysl, jak mozemy sie o tym dowiedziec. Chcial z Toba porozmawiac o tym.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_04"); //Znajdziesz go w domu tuz obok burmistrza. Dlaczego nie zobaczysz go teraz i zwróc mi to, co wie?

	CurrentNQ += 1;

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_ORKRING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Dowódca Willingham chce wiedziec skad pochodza orki. Zobacze Baro, który bedzie mógl mi pomóc w informacji.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Willingham_UntoteOrks (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_UntoteOrks_Condition;
	information	= Info_Mod_Willingham_UntoteOrks_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_UntoteOrks))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_UntoteOrks_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_00"); //Czego wiec Baro chcial? Co wie o Orkach?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_01"); //Wydaje sie, ze to cos wiecej niz myslalismy. Poza tym juz nie do konca zyja.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_02"); //Czy mówisz mi, ze sa martwe orki?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_03"); //Tak wlasnie sa. Szaman orkowy znalazl potezny artefakt w swiatyni i zamienil prawie wszystkie orki w nieumarle.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_04"); //Musze znalezc jednego z przywódców Orku i zadac mu pytanie o lokalizacje szamana.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_05"); //Baro powiedzial, ze Melchior moze mi pomóc.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_06"); //Jezeli uda nam sie dotrzec do tego chlopca i powstrzymac tych nieumarlych, oddam Melchior do waszej dyspozycji.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_07"); //Na ostatnim posterunku poza przepustka znajduje sie jego obóz. Niech Marcus wskaze ci droge do niego i zajmie tam swoje miejsce.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_08"); //Poza tym, chce dac ci te eliksiry po drodze. Powodzenia.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 5);

	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Marcus poprowadzi mnie do Melchior i zajmie tam swoje miejsce.");
};

INSTANCE Info_Mod_Willingham_Pickpocket (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Pickpocket_Condition;
	information	= Info_Mod_Willingham_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Willingham_Pickpocket_Condition()
{
	C_Beklauen	(171, ItMi_Gold, 98);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_BACK, Info_Mod_Willingham_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Willingham_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Willingham_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Willingham_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Willingham_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Willingham_EXIT (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_EXIT_Condition;
	information	= Info_Mod_Willingham_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Willingham_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
