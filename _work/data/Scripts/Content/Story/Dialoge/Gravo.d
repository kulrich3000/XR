INSTANCE Info_Mod_Gravo_Hi (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Hi_Condition;
	information	= Info_Mod_Gravo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I szukasz....";
};

FUNC INT Info_Mod_Gravo_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gravo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_15_00"); //I szukasz....
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_25_01"); //Nie moge ci to powiedziec. To znaczy, ze kocham, ale wtedy pewnie próbowalbys mnie wyprowadzic z tego miejsca.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_25_02"); //Czy to juz bylo zbyt wiele do powiedzenia?
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_15_03"); //W ogóle nie.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);

	Info_AddChoice	(Info_Mod_Gravo_Hi, "Zycze powodzenia.", Info_Mod_Gravo_Hi_D);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "Nie mozesz juz dluzej nie kopac?", Info_Mod_Gravo_Hi_C);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "Ty ponownie na polowaniu na skarb?", Info_Mod_Gravo_Hi_B);
	Info_AddChoice	(Info_Mod_Gravo_Hi, "Musiales cos stracic.", Info_Mod_Gravo_Hi_A);
};

FUNC VOID Info_Mod_Gravo_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_D_15_00"); //Zycze powodzenia.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);
};

FUNC VOID Info_Mod_Gravo_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_C_15_00"); //Nie mozesz juz dluzej nie kopac?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_C_25_01"); //(crazy) Przede wszystkim chcialbym rozbic zarówke pikserem tylko niektórym facetom.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_C_25_02"); //Ah.... Nie mówisz, czy to nie?
};

FUNC VOID Info_Mod_Gravo_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_00"); //Ty ponownie na polowaniu na skarb?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_01"); //Szukaj! Czy Kyle równiez powiedzial ci o tym?
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_02"); //Pewne.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_03"); //Obiecal mi, ze bedzie to nasza tajemnica.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_04"); //Cóz, jesli wiesz o tym, to juz teraz jestes za skarbem Garaz i Pacho.
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_B_15_05"); //Um.... tak.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_06"); //Bylibysmy jak konkurenci.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_07"); //Hmm..... Czy nie powinienem cie teraz zabic?
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_B_25_08"); //Nie, czekac, zawsze mówic po raz pierwszy, mówili. Nie chcesz, abym zapomnial o moim dobrym wyksztalceniu.

	Info_ClearChoices	(Info_Mod_Gravo_Hi);

	Mod_Gravo_Schatz = 1;

	Log_CreateTopic	(TOPIC_MOD_GRAVO_SCHATZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GRAVO_SCHATZ, "Szalony Gravo nieustannie w starego obozie w miejscu obok stawu, by podniesc skarb dwóch bylych bujaków. Przypuszcza sie, ze Kyle's mial go do tego doprowadzic. Poniewaz Gravo nie robi miejsca na wlasna reke, bede musial znalezc inny sposób, aby go tam wyprowadzic.");
};

FUNC VOID Info_Mod_Gravo_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Hi_A_15_00"); //Musiales cos stracic.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_A_25_01"); //Tak! Dokladnie! Czuje to caly czas! Musialem cos stracic.
	AI_Output(self, hero, "Info_Mod_Gravo_Hi_A_25_02"); //Po prostu nie moge sie zorientowac, co to bylo....
};

INSTANCE Info_Mod_Gravo_WasFuerSchatz (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_WasFuerSchatz_Condition;
	information	= Info_Mod_Gravo_WasFuerSchatz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co bylo tym skarbem?";
};

FUNC INT Info_Mod_Gravo_WasFuerSchatz_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_WasFuerSchatz_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_WasFuerSchatz_15_00"); //Co bylo tym skarbem?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_01"); //Wiec Kyle nie powiedziala ci tego, czy ona?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_02"); //Ze Garaz i Pacho podobno zakopali tu cale swoje bogactwo, zanim odwrócili sie plecami do Minentala, by zalozyc zespól?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_03"); //Wtedy z pewnoscia nie jestem gonna powiedziec ci!
	AI_Output(hero, self, "Info_Mod_Gravo_WasFuerSchatz_15_04"); //Czy zespól?
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_05"); //To zawsze bylo jej wielkim marzeniem, mówili.
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_06"); //Mieli juz swoja nazwe sceniczna, kombinacje nazwisk. Gazpacho lub cos innego.
	AI_Output(self, hero, "Info_Mod_Gravo_WasFuerSchatz_25_07"); //Kiedy Snaf o tym uslyszal, nie mógl sie wsiasc. Nie pytaj mnie dlaczego.
};

INSTANCE Info_Mod_Gravo_IchHacken (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_IchHacken_Condition;
	information	= Info_Mod_Gravo_IchHacken_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy pozwolisz mi siekac przez chwile?";
};

FUNC INT Info_Mod_Gravo_IchHacken_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_IchHacken_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_IchHacken_15_00"); //Czy pozwolisz mi siekac przez chwile?
	AI_Output(self, hero, "Info_Mod_Gravo_IchHacken_25_01"); //Nic tam nie ma! To jest moje terytorium.
	AI_Output(self, hero, "Info_Mod_Gravo_IchHacken_25_02"); //Jak tylko tylko podniose skarb i bede siegnac po wszystkie góry i pozwole mi posypac rum w ustach z poludniowego piekna, mozesz spróbowac go ponownie!
};

INSTANCE Info_Mod_Gravo_Schatz (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Schatz_Condition;
	information	= Info_Mod_Gravo_Schatz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie ma skarbu.";
};

FUNC INT Info_Mod_Gravo_Schatz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kyle_SchatzImSchlammsee))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Schatz_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_00"); //Nie ma skarbu.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_01"); //Zle spróbuj. Nie mozesz mnie tu tak latwo wyprowadzic.
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_02"); //Tak naprawde nie ma skarbu.
	AI_Output(hero, self, "Info_Mod_Gravo_Schatz_15_03"); //Kyle klamal, zebys caly czas nie chodzil po jego kabinie.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_04"); //(niewyznaczony) Naprawde? I pomyslalem, ze jego pissowy garnek w drzwiach to tylko przypadek.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_05"); //W Rage' uwielbiam wziac jego mokry gówno i dac mu go....
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_06"); //(odtworzony). do kanalizacji smieci.
	AI_Output(self, hero, "Info_Mod_Gravo_Schatz_25_07"); //W kazdym razie znajde swój skarb gdzie indziej. Musi byc gdzies.

	B_GivePlayerXP	(100);

	B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_SUCCESS);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Gravo_Lagermusik (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Lagermusik_Condition;
	information	= Info_Mod_Gravo_Lagermusik_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gravo_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Lagermusik_Info()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_00"); //No cóz, no cóz, ktos nie skorzystal z mojej nieobecnosci, czy?
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_01"); //Myslales, ze tak latwo mnie potrzasnac?
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_02"); //Kyle byl z wami tylko balaganem, ahahahahahahahaha.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_03"); //Mialem cie znalezc dla tej zdrady - hej, co tam znalazles?
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_04"); //Czekaj minute - to stare instrumenty Garaz i Pacho! Ze nie mogli zabrac! Tak wiec to jej skarb!

	AI_PlayAni	(self, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_05"); //W koncu moge zalozyc wlasna grupe! Daj chlopakom odrobine muzyki, by je rozgrzac.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_06"); //Um, pomagasz mi znalezc czlonków, nie jestes? Poniewaz wiekszosc z nich nie rozmawia ze mna.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_25_07"); //Moze mozesz przekonac niektórych Buddlerów. I tak i tak nie maja nic do zrobienia.

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);

	Info_AddChoice	(Info_Mod_Gravo_Lagermusik, "Jestem pewien, ze mozesz sobie z tym poradzic samodzielnie.", Info_Mod_Gravo_Lagermusik_B);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik, "Moge zapytac.", Info_Mod_Gravo_Lagermusik_A);
};

FUNC VOID Info_Mod_Gravo_Lagermusik_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik_B_15_00"); //Jestem pewien, ze mozesz sobie z tym poradzic samodzielnie.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik_B_25_01"); //Tak, na pewno. Nie potrzebuje twojej pomocy.

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);
};

FUNC VOID Info_Mod_Gravo_Lagermusik_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik_A_15_00"); //Moge zapytac.

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik);

	Mod_Gravo_Schatz = 3;

	Log_CreateTopic	(TOPIC_MOD_GRAVO_MUSIK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GRAVO_MUSIK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GRAVO_MUSIK, "Byl skarb Garaz i Pacho - kilka starych instrumentów muzycznych. Gravo natychmiast wpadl na pomysl stworzenia wlasnej grupy obozowej. Mam zapytac wsród buddystów, czy ktokolwiek jest zainteresowany zostaniem czlonkiem tej spolecznosci.");
};

INSTANCE Info_Mod_Gravo_Lagermusik2 (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Lagermusik2_Condition;
	information	= Info_Mod_Gravo_Lagermusik2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gravo_Lagermusik2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Graham_Lagermusik))
	&& (Npc_KnowsInfo(hero, Info_Mod_Mud_Lagermusik))
	&& (Npc_KnowsInfo(hero, Info_Mod_Guy_Lagermusik))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_00"); //Sieh an, mit deiner Hilfe haben wir es wirklich geschafft!

	if (Npc_KnowsInfo(hero, Info_Mod_Seraphia_Lagermusik))
	{
		AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_01"); //Wir haben schon unsere Aufgaben besprochen, Graham wird die Gitarre spielen, Mud die Trommel, Guy die Rassel, Seraphia tanzen, und ich werde singen.

		B_GivePlayerXP	(100);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_02"); //Wir haben schon unsere Aufgaben besprochen, Graham wird die Gitarre spielen, Mud die Trommel,  Guy die Rassel, und ich werde singen.

		B_GivePlayerXP	(50);
	};

	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_25_03"); // Jetzt brauchen wir nur noch einen guten Namen. Uns fällt da nichts ein...

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik2);

	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "Lubie 'Incredibly Rich Potato Soup'.", Info_Mod_Gravo_Lagermusik2_C);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "Co sadzisz o 'Hellfungi'?", Info_Mod_Gravo_Lagermusik2_B);
	Info_AddChoice	(Info_Mod_Gravo_Lagermusik2, "A co z Trzema Gami?", Info_Mod_Gravo_Lagermusik2_A);
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_D()
{
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_00"); //Nie obchodze sie z nim. Nazwa i tak nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_01"); //Jednego dnia cwiczymy próby, a jutro o godzinie 19 wieczorem po raz pierwszy wystepujemy na scenie.
	AI_Output(self, hero, "Info_Mod_Gravo_Lagermusik2_D_25_02"); //Do tego czasu musze wymyslic teksty....

	Info_ClearChoices	(Info_Mod_Gravo_Lagermusik2);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_GRAVO_MUSIK, LOG_SUCCESS);

	Mod_Gravo_Schatz = 4;

	Mod_Gravo_Auftritt_Tag = Wld_GetDay();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_C()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_C_15_00"); //Mir würde "Niezwykle bogata zupa ziemniaczana" gut gefallen.

	Info_Mod_Gravo_Lagermusik2_D();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_B()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_B_15_00"); //Was haltet ihr von "Grzyby piekla"?

	Info_Mod_Gravo_Lagermusik2_D();
};

FUNC VOID Info_Mod_Gravo_Lagermusik2_A()
{
	AI_Output(hero, self, "Info_Mod_Gravo_Lagermusik2_A_15_00"); //Wie wär's mit "Trzy G' s"?

	Info_Mod_Gravo_Lagermusik2_D();
};

INSTANCE Info_Mod_Gravo_KGBuddler (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_KGBuddler_Condition;
	information	= Info_Mod_Gravo_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz pracowac jako Buddler?";
};

FUNC INT Info_Mod_Gravo_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gravo_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Gravo_KGBuddler_15_00"); //Chcesz pracowac jako Buddler?
	AI_Output(self, hero, "Info_Mod_Gravo_KGBuddler_25_01"); //Uniknalem go juz wtedy, gdy bariera byla jeszcze tam, z pewnoscia nie zaczne teraz......
};

INSTANCE Info_Mod_Gravo_Pickpocket (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_Pickpocket_Condition;
	information	= Info_Mod_Gravo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Gravo_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

	Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_BACK, Info_Mod_Gravo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gravo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gravo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gravo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gravo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gravo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gravo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gravo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gravo_EXIT (C_INFO)
{
	npc		= Mod_1430_BUD_Gravo_MT;
	nr		= 1;
	condition	= Info_Mod_Gravo_EXIT_Condition;
	information	= Info_Mod_Gravo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gravo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gravo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
