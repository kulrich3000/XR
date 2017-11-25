INSTANCE Info_Mod_Ruediger_Hi (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Hi_Condition;
	information	= Info_Mod_Ruediger_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego siedzisz tutaj samodzielnie?";
};

FUNC INT Info_Mod_Ruediger_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruediger_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Hi_15_00"); //Dlaczego siedzisz tutaj samodzielnie?
	AI_Output(self, hero, "Info_Mod_Ruediger_Hi_09_01"); //Czekam na przyjscie kogos, kto jest zainteresowany dobra gra.
};

INSTANCE Info_Mod_Ruediger_WasFuerSpiel (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_WasFuerSpiel_Condition;
	information	= Info_Mod_Ruediger_WasFuerSpiel_Info;
	permanent	= 0;
	important	= 0;
	description	= "I jaka to jest gra?";
};

FUNC INT Info_Mod_Ruediger_WasFuerSpiel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_WasFuerSpiel_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_WasFuerSpiel_15_00"); //I jaka to jest gra?
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_01"); //Nie ma stalej nazwy. Nazywam to gra wyscigowa. Ale niektórzy, zwlaszcza ci, którzy zbytnio pili, równiez lubia nazywac to Schagby.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_02"); //Kazdy z dwóch graczy ma na boisku mnóstwo potworów.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_03"); //Potwory stoja naprzeciwko siebie, a celem jest przemieszczenie wlasnego kamienia za rzedem przeciwnika.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_04"); //A co z gra?
};

INSTANCE Info_Mod_Ruediger_HabKeineFiguren (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_HabKeineFiguren_Condition;
	information	= Info_Mod_Ruediger_HabKeineFiguren_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zatrzymaj sie - nie mam zadnych warcaby!";
};

FUNC INT Info_Mod_Ruediger_HabKeineFiguren_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_WasFuerSpiel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_HabKeineFiguren_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_HabKeineFiguren_15_00"); //Zatrzymaj sie - nie mam zadnych warcaby!
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_01"); //Mozna to zmienic.

	B_ShowGivenThings	("Uzyskac poczatkujacy zestaw");

	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_02"); //Jest to konstelacja poczatkujacego, piec standardowych sztuk.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_03"); //Ogólem jest dziesiec cyfr, z których gracz moze wybrac piec nowych cyfr dla kazdej gry.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_04"); //Jednak sam nie mam nawet wszystkich róznych utworów.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_05"); //Mozesz je otrzymac tylko wtedy, gdy pokonasz tych mistrzów, którzy sami je wymyslili.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_06"); //Ale pierwsze piec cyfr to juz pierwsze piec.

	Log_CreateTopic	(TOPIC_MOD_SCHAGBY, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHAGBY, "Schagby to taktyczne umiejscowienie potworów. Otrzymalem piec utworów, ale w sumie jest ich dziesiec, które moge wygrac od mistrzów gry.");

	PlayerHas_Troll = 1;
	PlayerHas_Schaf = 1;
	PlayerHas_Bloodfly = 1;
	PlayerHas_Snapper = 1;
	PlayerHas_Meatbug = 1;
};

INSTANCE Info_Mod_Ruediger_Regeln (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Regeln_Condition;
	information	= Info_Mod_Ruediger_Regeln_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jakie sa zasady gry?";
};

FUNC INT Info_Mod_Ruediger_Regeln_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Regeln_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Regeln_15_00"); //Jakie sa zasady gry?
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_01"); //Pozycjonowanie figur odbywa sie naprzemiennie.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_02"); //Losowo wybrany pierwszy gracz wybiera kawalek i umieszcza go gdzies na linii ataku, a nastepnie drugi gracz kontynuuje swój pierwszy kawalek i tak dalej, dopóki obie gry nie umiesci wszystkich swoich kawalków.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_03"); //Nastepnie rozpoczyna sie gra. Wszystkie elementy musza byc przesuwane w kazdym kroku.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_04"); //Kazdy kamien ma inne mozliwosci; Pokaze Ci to podczas gry.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_05"); //Gdy gracz przesunie wszystkie kawalki, bedzie to zalezalo od jego przeciwnika.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_06"); //Jesli podczas gry jeden kawalek uderzy w drugie pole celowe, wygrywa atakujacy kamien, a jeden kawalek zostaje usuniety z gry.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_07"); //Gracz, który jako pierwszy udaje sie przeniesc jednego z jego potworów w ciemny rzad za linia ataku przeciwnika wygrywa.

	B_LogEntry	(TOPIC_MOD_SCHAGBY, "Rozgrywka: Pozycjonowanie figur odbywa sie na przemian. Losowo wybrany pierwszy gracz wybiera kawalek i umieszcza go gdzies na linii ataku, a nastepnie drugi gracz kontynuuje swój pierwszy kawalek i tak dalej, dopóki obie gry nie umiesci wszystkich swoich kawalków. Nastepnie rozpoczyna sie gra. Wszystkie elementy musza byc przesuwane w kazdym kroku. Kazdy kamien ma inne mozliwosci. Gdy gracz przesunie wszystkie kawalki, bedzie to zalezalo od jego przeciwnika. Jesli podczas gry jeden kawalek uderzy w drugie pole celowe, wygrywa atakujacy kamien, a jeden kawalek zostaje usuniety z gry. Gracz, który jako pierwszy udaje sie przeniesc jednego z jego potworów w ciemny rzad za linia ataku przeciwnika wygrywa.");
};

INSTANCE Info_Mod_Ruediger_Preis (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Preis_Condition;
	information	= Info_Mod_Ruediger_Preis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Po jakiej cenie jest odtwarzana?";
};

FUNC INT Info_Mod_Ruediger_Preis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Preis_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Preis_15_00"); //Po jakiej cenie jest odtwarzana?
	AI_Output(self, hero, "Info_Mod_Ruediger_Preis_09_01"); //Cena jest negocjowalna. Poniewaz jestes swiezym czlowiekiem, nie powinnismy grac za duzo zlota.
	AI_Output(self, hero, "Info_Mod_Ruediger_Preis_09_02"); //Jesli uda ci sie wygrac przeciwko mnie raz, dalbym ci postac, która jest moja wlasna kreacja.
};

INSTANCE Info_Mod_Ruediger_Meister (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Meister_Condition;
	information	= Info_Mod_Ruediger_Meister_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gdzie moge znalezc mistrzów?";
};

FUNC INT Info_Mod_Ruediger_Meister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Meister_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Meister_15_00"); //Gdzie moge znalezc mistrzów?
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_01"); //Przed toba jest jedna prawa. Zaprojektowalem straznik kamienny. Oczywiscie nie moge byc z niego dumny.
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_02"); //Nie moge powiedziec wam dokladnie, gdzie sa inni mistrzowie. Jednak najlepsza szansa na ich znalezienie sa karczmy.
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_03"); //Tak samo jak dookola mozna znalezc jeszcze kilka innych.
};

FUNC VOID B_MG_Start_Ruediger()
{
	MG_CurrentOpp = MG_GEGNER_RUEDIGER;

	FF_Apply(B_MG_GameLoop);
};

INSTANCE Info_Mod_Ruediger_Spielstart01 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart01_Condition;
	information	= Info_Mod_Ruediger_Spielstart01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Grajmy w gre.";
};

FUNC INT Info_Mod_Ruediger_Spielstart01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Regeln))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Preis))
	&& (MG_Ruediger_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_15_00"); //Grajmy w gre.
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_09_01"); //Wyraznie. Stawka to dziesiec zlotych monet. Zwyciezca dostaje wszystko.

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);

	Info_AddChoice	(Info_Mod_Ruediger_Spielstart01, "Jestem teraz troche zgorzknialy....", Info_Mod_Ruediger_Spielstart01_B);
	Info_AddChoice	(Info_Mod_Ruediger_Spielstart01, "Skorzystam z mozliwosci.", Info_Mod_Ruediger_Spielstart01_A);
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_B()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_B_15_00"); //Jestem teraz troche zgorzknialy....
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_B_09_01"); //Nie ma problemu, siedze tu jeszcze dluzej.

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_A()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_A_15_00"); //Skorzystam z mozliwosci.
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_A_09_01"); //Niech wygra ten z lepsza taktyka!

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende01 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende01_Condition;
	information	= Info_Mod_Ruediger_Spielende01_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende01_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende01_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_00"); //Krótka porazka. Ale przy odrobinie praktyki moze to byc cos innego.

		B_GiveInvItems	(hero, self, ItMi_Gold, 10);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_01"); //Damn to! Ja tez jestem tak glupi!

		B_GiveInvItems	(self, hero, ItMi_Gold, 10);

		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_02"); //To bylo przewaznie szczescie, ale musze dotrzymac obietnicy i dac ci kamienny zeton wartownika.

		B_ShowGivenThings	("Utrzymanie pozycji oslony przed kamieniem");

		PlayerHas_Stoneguardian = 1;

		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_03"); //Wydaje mi sie pan równorzednym przeciwnikiem.
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_04"); //Czy jestes na kolejna runde zakladów podwójnych?

		B_GivePlayerXP	(100);

		MG_Ruediger_Runde = 1;
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_36);
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Spielstart02 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart02_Condition;
	information	= Info_Mod_Ruediger_Spielstart02_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zagrajmy kolejna gre z podwójnym stosem.";
};

FUNC INT Info_Mod_Ruediger_Spielstart02_Condition()
{
	if (MG_Ruediger_Runde >= 1)
	&& (MG_Ruediger_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart02_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart02_15_00"); //Zagrajmy kolejna gre z podwójnym stosem.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende02 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende02_Condition;
	information	= Info_Mod_Ruediger_Spielende02_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende02_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde >= 1)
	&& (MG_Ruediger_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende02_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_00"); //Wiedzialem, ze Twoja pierwsza wygrana byla niezasluzona!

		if (MG_Ruediger_Runde == 1)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 20);
		}
		else if (MG_Ruediger_Runde == 2)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 40);
		}
		else if (MG_Ruediger_Runde == 3)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 80);
		}
		else if (MG_Ruediger_Runde == 4)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 160);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_01"); //Nie ma czegos takiego! Jeszcze raz jestem zaskoczony!

		if (MG_Ruediger_Runde == 1)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 20);
		}
		else if (MG_Ruediger_Runde == 2)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 40);
		}
		else if (MG_Ruediger_Runde == 3)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 80);
		}
		else if (MG_Ruediger_Runde == 4)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 160);
		};

		if (MG_Ruediger_Runde < 4)
		{
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_02"); //Nauka jest szybka. Ale smialoby sie, gdybym nie mógl dotrzymac kroku.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_03"); //Wystarczy! Wystarczy wystarczy!
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_04"); //To juz nie jest przyjemnoscia. Od teraz nie bede z Toba grac zlota.
		};

		B_GivePlayerXP	(50);

		MG_Ruediger_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Spielstart03 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart03_Condition;
	information	= Info_Mod_Ruediger_Spielstart03_Info;
	permanent	= 1;
	important	= 0;
	description	= "Zagrajmy kolejna gre.";
};

FUNC INT Info_Mod_Ruediger_Spielstart03_Condition()
{
	if (MG_Ruediger_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart03_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart03_15_00"); //Zagrajmy kolejna gre.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende03 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende03_Condition;
	information	= Info_Mod_Ruediger_Spielende03_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende03_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende03_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_00"); //Wiedzialem, ze Twoja pierwsza wygrana byla niezasluzona!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_01"); //Nie ma czegos takiego! Jeszcze raz jestem zaskoczony!
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_02"); //Nauka jest szybka. Ale smialoby sie, gdybym nie mógl dotrzymac kroku.

		MG_Ruediger_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Pickpocket (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Pickpocket_Condition;
	information	= Info_Mod_Ruediger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ruediger_Pickpocket_Condition()
{
	C_Beklauen	(86, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

	Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_BACK, Info_Mod_Ruediger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ruediger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ruediger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ruediger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ruediger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ruediger_EXIT (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_EXIT_Condition;
	information	= Info_Mod_Ruediger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ruediger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruediger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
