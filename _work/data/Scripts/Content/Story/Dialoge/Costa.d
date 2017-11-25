INSTANCE Info_Mod_Costa_Hi (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Hi_Condition;
	information	= Info_Mod_Costa_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Costa_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Costa_Hi_Info()
{
	B_Say	(hero, self, "$WHoAREYOU");

	AI_Output(self, hero, "Info_Mod_Costa_Hi_34_00"); //Costa, Buddler. Latwo ja dostrzec.
};

INSTANCE Info_Mod_Costa_Buddler (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Buddler_Condition;
	information	= Info_Mod_Costa_Buddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz ponownie pracowac jako Buddler?";
};

FUNC INT Info_Mod_Costa_Buddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Buddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_00"); //Chcesz ponownie pracowac jako Buddler?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_01"); //Niestety, nie ma juz zbyt wiele do zrobienia. Od czasu upadku bariery nie poszukiwalem zlomu rudy.
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_02"); //I niestety zagubilem swoja ksiazke Buddlera w walce z szkieletem. Wszystko po to, by przywrócic mi ksztalt.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_03"); //Dlaczego Buddler ma balagan z szkieletem?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_04"); //Cóz, trzeba cos zrobic. Próbowal znalezc artefakty po upadku bariery. Nie bylo bardzo dobrze, chyba.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_05"); //Wtedy szkielet jest lepszym poszukiwaczem przedmiotów niz ty. Gdzie ma byc ten szkielet?
	AI_Output(self, hero, "Info_Mod_Costa_Buddler_34_06"); //Przypuszczam, ze jest jeszcze w moim malym obozie w drodze do Nowego Obozu nad rzeka.
	AI_Output(hero, self, "Info_Mod_Costa_Buddler_15_07"); //Jestem gonna dostaje Twoja ksiazke jakos, zapakujesz siedmiopunktowa torbe.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Costa bylby sklonny wykopac sie w naszej kopalni, ale juz nie jest calkowicie w tej sprawie. Mam go dostac jego ksiazka Buddlera, która przegral w walce z szkieletem. Szkielet znajduje sie teraz w obozie nad rzeka do Nowego Obozu. Lepiej zabrac Melcadora ze soba.");
};

INSTANCE Info_Mod_Costa_Buddler2 (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Buddler2_Condition;
	information	= Info_Mod_Costa_Buddler2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto ksiazka.";
};

FUNC INT Info_Mod_Costa_Buddler2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler5))
	&& (Npc_HasItems(hero, ItWr_Buddlerbuch) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Buddler2_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Buddler2_15_00"); //Oto ksiazka.

	B_GiveInvItems	(hero, self, ItWr_Buddlerbuch, 1);

	AI_Output(self, hero, "Info_Mod_Costa_Buddler2_34_01"); //Dzieki temu moge sie znów dopasowac. Gdzie mam kopac?
	AI_Output(hero, self, "Info_Mod_Costa_Buddler2_15_02"); //Idz do opuszczonej kopalni i poczekaj na nia.
	AI_Output(self, hero, "Info_Mod_Costa_Buddler2_34_03"); //Bede w drodze od razu.

	B_LogEntry	(TOPIC_MOD_KG_BUDDLER, "Costa jest teraz w drodze do kopalni.");

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MINE");
};

INSTANCE Info_Mod_Costa_SchonImmerHier (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_SchonImmerHier_Condition;
	information	= Info_Mod_Costa_SchonImmerHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy byles zawsze w Starym Obozie?";
};

FUNC INT Info_Mod_Costa_SchonImmerHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_SchonImmerHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_SchonImmerHier_15_00"); //Czy byles zawsze w Starym Obozie?
	AI_Output(self, hero, "Info_Mod_Costa_SchonImmerHier_34_01"); //Tak czy owak, to za dlugo. Widzialem pana wiele miesiecy temu.
	AI_Output(self, hero, "Info_Mod_Costa_SchonImmerHier_34_02"); //Ale nigdy nie rozmawialismy ani nic.
};

INSTANCE Info_Mod_Costa_NichtZufrieden (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_NichtZufrieden_Condition;
	information	= Info_Mod_Costa_NichtZufrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nie wygladasz bardzo szczesliwie.";
};

FUNC INT Info_Mod_Costa_NichtZufrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_SchonImmerHier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_15_00"); //Nie wygladasz bardzo szczesliwie.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_01"); //Tak, tam. Mialem szanse uciec z obozu, ale tesknilem za nim.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_02"); //Inni spotkali sie w srodku nocy i wyjechali, podczas gdy spalem spokojnie.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_03"); //Co gorsza, oddalem Jesse' owi swoje najcenniejsze rzeczy, poniewaz chcial ich wydobyc niezaleznie od nas.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_04"); //Nie obchodze sie z ruda, ale potrzebuje oparcia pasa. Bez niego nie móglbym bez niego wykonac pracy w kopalniach.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_34_05"); //Poza tym wszystkie moje spodnie slizgaja sie teraz.

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);

	Info_AddChoice	(Info_Mod_Costa_NichtZufrieden, "Zycze powodzenia w poszukiwaniu.", Info_Mod_Costa_NichtZufrieden_B);
	Info_AddChoice	(Info_Mod_Costa_NichtZufrieden, "Postaram sie znalezc twój pas.", Info_Mod_Costa_NichtZufrieden_A);
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_B()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_B_15_00"); //Zycze powodzenia w poszukiwaniu.

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);
};

FUNC VOID Info_Mod_Costa_NichtZufrieden_A()
{
	AI_Output(hero, self, "Info_Mod_Costa_NichtZufrieden_A_15_00"); //Postaram sie znalezc twój pas.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_01"); //Latwiej powiedziec niz zrobic, boje sie. Nie wiedzielismy, dokad sie zwrócic po ucieczce.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_02"); //Dlatego nie mam pojecia, gdzie moze byc teraz Jesse.
	AI_Output(self, hero, "Info_Mod_Costa_NichtZufrieden_A_34_03"); //Ale jesli kiedykolwiek natkniesz sie na niego, powiedz mu, aby wyjal mi pas.

	Mod_Costa_Guertel = 1;

	Mod_Costa_Guertel_Tag = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Costa_NichtZufrieden);

	Log_CreateTopic	(TOPIC_MOD_COSTA_GUERTEL, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_COSTA_GUERTEL, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_COSTA_GUERTEL, "Costa opuscil Jesse jego dobytek zanim próbowali uciec z obozu. Tylko Costa nie robil tego. Z jego wlasnosci najwazniejszy jest dla niego pas. Kiedy spotykam Jesse' a, mam przywiezc Coste z powrotem do pasa.");
};

INSTANCE Info_Mod_Costa_Jesse (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Jesse_Condition;
	information	= Info_Mod_Costa_Jesse_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Jesse.";
};

FUNC INT Info_Mod_Costa_Jesse_Condition()
{
	if (Mod_Costa_Guertel == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Jesse_Costa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Jesse_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Jesse_15_00"); //Znalazlem Jesse.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_01"); //Ha! A co? Czy wyciagnal mój pas?
	AI_Output(hero, self, "Info_Mod_Costa_Jesse_15_02"); //Nie ten jeden. Przyjezdza osobiscie, aby wyprowadzic cie z tego miejsca. Chce, abyscie zjawili sie Panstwo w punkcie spotkan o pólnocy.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_03"); //Jesse to prawdziwa palec! Mam tylko nadzieje, ze straznicy nas nie zlapia....
	AI_Output(self, hero, "Info_Mod_Costa_Jesse_34_04"); //Dziekuje bardzo za przeslanie. Byc moze kiedys spotkamy sie jeszcze raz.

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_COSTA_GUERTEL, LOG_SUCCESS);

	Mod_Costa_Guertel_Tag = Wld_GetDay();

	B_StartOtherRoutine	(self, "TREFFEN");
	B_StartOtherRoutine	(Mod_1506_BUD_Jesse_MT, "TREFFEN");
};

INSTANCE Info_Mod_Costa_Jesse2 (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Jesse2_Condition;
	information	= Info_Mod_Costa_Jesse2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zrobiles to zrobiles.";
};

FUNC INT Info_Mod_Costa_Jesse2_Condition()
{
	if (Mod_Costa_Guertel_Tag < Wld_GetDay())
	&& (Npc_KnowsInfo(hero, Info_Mod_Costa_Jesse))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Jesse2_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_00"); //Zrobiles to zrobiles.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_01"); //Zrobilem to. Jesse oddal mi z powrotem wszystkie moje stare rzeczy.
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_02"); //Ale poniewaz miales prawie najwieksza czesc mojej ucieczki, chce ci oddac pas.

	B_GiveInvItems	(self, hero, ItBe_Addon_STR_10, 1);

	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_03"); //Wiec co ty gonna robi o przesuwaniu majtek?
	AI_Output(self, hero, "Info_Mod_Costa_Jesse2_34_04"); //Dostalem nowe! Juz nie slizgaj sie!
	AI_Output(hero, self, "Info_Mod_Costa_Jesse2_15_05"); //Nalezy wiec uwazac.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Costa_Lagermusik (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Lagermusik_Condition;
	information	= Info_Mod_Costa_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcesz dolaczyc do grupy muzycznej Gravo?";
};

FUNC INT Info_Mod_Costa_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_Lagermusik_15_00"); //Chcesz dolaczyc do grupy muzycznej Gravo?
	AI_Output(self, hero, "Info_Mod_Costa_Lagermusik_34_01"); //Moja babcia moze chcialaby uslyszec, co ta muzyka nazywa. Potrzebuje twardych rzeczy, czlowieka. Nie jestem czescia jego muzyki dudkowej. Nie ma szans.
};

INSTANCE Info_Mod_Costa_WarumNichtWeg (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_WarumNichtWeg_Condition;
	information	= Info_Mod_Costa_WarumNichtWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego i tak nie próbujesz uciec z obozu?";
};

FUNC INT Info_Mod_Costa_WarumNichtWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Costa_NichtZufrieden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Costa_WarumNichtWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Costa_WarumNichtWeg_15_00"); //Dlaczego i tak nie próbujesz uciec z obozu?
	AI_Output(self, hero, "Info_Mod_Costa_WarumNichtWeg_34_01"); //Och, po prostu nie mam knagi na tego rodzaju rzeczy.
	AI_Output(self, hero, "Info_Mod_Costa_WarumNichtWeg_34_02"); //Gdyby ktos mial to zorganizowane, wszystko w porzadku, ale nie odwazylbym sie samotnie.
};

INSTANCE Info_Mod_Costa_Pickpocket (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_Pickpocket_Condition;
	information	= Info_Mod_Costa_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Costa_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Costa_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

	Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_BACK, Info_Mod_Costa_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Costa_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Costa_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
};

FUNC VOID Info_Mod_Costa_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Costa_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Costa_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Costa_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Costa_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Costa_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Costa_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Costa_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Costa_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Costa_EXIT (C_INFO)
{
	npc		= Mod_1442_BUD_Costa_MT;
	nr		= 1;
	condition	= Info_Mod_Costa_EXIT_Condition;
	information	= Info_Mod_Costa_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Costa_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Costa_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
