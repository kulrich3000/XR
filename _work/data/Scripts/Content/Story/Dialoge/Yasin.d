INSTANCE Info_Mod_Yasin_Hi (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Hi_Condition;
	information	= Info_Mod_Yasin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz racje?";
};

FUNC INT Info_Mod_Yasin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yasin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_00"); //Czy masz racje?
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_01"); //Wyjmij z niego pieklo.
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_02"); //Hej, wez to latwo. Chcialem tylko wiedziec, jak pan to robi.
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_03"); //Wspaniale, widac to. Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_04"); //Jestes tu jednym z oszustów?
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_05"); //Tak, nazywam sie Yasin. Ale byc moze nie bede na dlugo w tej spolecznosci.
};

INSTANCE Info_Mod_Yasin_Aufgabe (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Aufgabe_Condition;
	information	= Info_Mod_Yasin_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego bys to zrobil?";
};

FUNC INT Info_Mod_Yasin_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yasin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yasin_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_00"); //Dlaczego bys to zrobil?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_01"); //(gorzkie) jakis czas temu prowadzilem nieuczciwe interesy z niektórymi straznikami miejskimi.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_02"); //Jeden z tych chlopaków nie lubil moich rzeczy, a on mnie wszedzie czarowal.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_03"); //Musialem uciec z miasta.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_04"); //Jaka jest wielka oferta?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_05"); //Czy nie myslisz logicznie, czy jestes glupi?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_06"); //Gosci mnie scigal, a on zobaczyl, ze mnie tu wydostaje sie.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_07"); //On zna nasza kryjówke, a jesli bedziemy szczesliwi, to wkrótce tutaj bedzie milicja.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_08"); //Nasi liderzy sa pod tym wzgledem zachwyceni.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_09"); //To nie jest dobre.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_10"); //Tak, to nie jest dobre. Slyszales juz wszystko, wiec lekcja bajki sie skonczyla. Czy mozecie pójsc teraz?
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_11"); //Czy moge pomóc w rozwiazaniu problemu?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_12"); //Dlaczego wiec mielibyscie to zrobic?
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_13"); //Szukam glosów, które dolacza do Ciebie.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_14"); //Godna przyczyna. Hm....
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_15"); //Jezeli moga mi panstwo pomóc, z pewnoscia bede mógl oddac swój glos.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_16"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_17"); //Troszczcie sie o te elegancka straz miejska, jak przystalo na prawdziwego zabójce.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_18"); //Jesli go zabijesz, pozbedziem sie mojego problemu i masz jeszcze jeden glos.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_19"); //Która straz miejska jest dokladnie taka?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_20"); //Mika jest synem suki. Staje przed brama w dzien i noc.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_21"); //Glupia rzecza jest to, ze zawsze stoja u niego bracia.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_22"); //Trzeba go odciagnac i zabrac. Idealnym miejscem bylaby jaskinia z teleporterami.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_23"); //Dobrze, ten facet jest tak dobry, jak dobrze.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_24"); //Pospiesz sie, bo niedlugo wyjde z sadu.

	Log_CreateTopic	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_YASIN_MIKA, "Rozmawialem z cichym Yasinem. Powiedzial mi, ze milicjant Mika wie o kryjówce zabójców z powodu pomylki Yasina. Jesli Mika nie skonczy sie wkrótce, zabójcy zostana zaatakowani przez milicje. Móglbym zabic tego syna z suki dla Yasina, kiedy to juz noc. Z teleporterem mam go wabic do jaskini i potajemnie go zabic.");
};

INSTANCE Info_Mod_Yasin_MikaTot (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_MikaTot_Condition;
	information	= Info_Mod_Yasin_MikaTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie ma juz nic wiecej do powiedzenia temu Mice. Zabralem go.";
};

FUNC INT Info_Mod_Yasin_MikaTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yasin_Aufgabe))
	&& (Npc_IsDead(Mod_598_MIL_Mika_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yasin_MikaTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_MikaTot_15_00"); //Nie ma juz nic wiecej do powiedzenia temu Mice. Zabralem go.
	AI_Output(self, hero, "Info_Mod_Yasin_MikaTot_13_01"); //Czy jestes pewien?
	AI_Output(hero, self, "Info_Mod_Yasin_MikaTot_15_02"); //Nie uwierzysz mi?
	AI_Output(self, hero, "Info_Mod_Yasin_MikaTot_13_04"); //Tak, oczywiscie tak. Teraz jestem spokojny. Ktos taki jak Ty moze byc przydatny. Masz mój glos.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_SUCCESS);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Yasin_Pickpocket (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Pickpocket_Condition;
	information	= Info_Mod_Yasin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Yasin_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

	Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_BACK, Info_Mod_Yasin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Yasin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Yasin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Yasin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Yasin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Yasin_EXIT (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_EXIT_Condition;
	information	= Info_Mod_Yasin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Yasin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yasin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
