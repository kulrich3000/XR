INSTANCE Info_Mod_Meldor_Hi (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Hi_Condition;
	information	= Info_Mod_Meldor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Meldor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meldor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Meldor_Hi_07_01"); //Jestem Meldor. Pomagam Lehmar w jego transakcjach finansowych.
};

INSTANCE Info_Mod_Meldor_Hilfe (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Hilfe_Condition;
	information	= Info_Mod_Meldor_Hilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meldor_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Wld_GetDay() > 1)
	&& (hero.guild != GIL_PAL)
	&& (Mod_Gilde > 0)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Hilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_00"); //Hej, przyjdz tutaj.
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_02"); //rozpaczliwie potrzebuje waszej pomocy!
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_15_03"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_04"); //Nie mam czasu, aby powiedziec ci wszystko. Beda tu w kazdej chwili. Pomozesz mi?

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	Info_AddChoice	(Info_Mod_Meldor_Hilfe, "Jak moge Ci pomóc?", Info_Mod_Meldor_Hilfe_Ja);
	Info_AddChoice	(Info_Mod_Meldor_Hilfe, "Nie, rób rzeczy samodzielnie!", Info_Mod_Meldor_Hilfe_Nein);
};

FUNC VOID Info_Mod_Meldor_Hilfe_Ja()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_00"); //Jak moge Ci pomóc?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_01"); //Mam paczke chwastów, ukrywam ja teraz!

	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_02"); //Dlaczego powinienem go ukrywac?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_03"); //Spieszyc sie, milicja moze przyjsc na minute.
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_04"); //Jakis pies zdobyl ja na mnie, wiec idz.
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_05"); //Gdzie powinienem ukryc opakowanie?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_06"); //W dzielnicy portowej znajduje sie magazyn, ukrywajacy go w klatce piersiowej.
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_07"); //Teraz wyjdzcie z tego miejsca, zanim przyjedzie tutaj milicja!

	Log_CreateTopic	(TOPIC_MOD_MELDOR_PAKET, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MELDOR_PAKET, "Meldor dal mi paczke chwastów bagiennych. Chce, abym ukryl go w magazynie przeladunkowym, bo wyglada na to, ze ktos czernil go z milicja.");

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "MILIZ");
	B_StartOtherRoutine(Mod_543_MIL_Picasso_NW, "MILIZ");
};

FUNC VOID Info_Mod_Meldor_Hilfe_Nein()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Nein_15_00"); //Nie, rób rzeczy samodzielnie!
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Nein_07_01"); //Cokolwiek mówisz, ale po prostu przegapiles wielka szanse.

	CreateInvItems	(self, ItMi_HerbPaket, 1);

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "MILIZ");
	B_StartOtherRoutine(Mod_543_MIL_Picasso_NW, "MILIZ");
};

INSTANCE Info_Mod_Meldor_PaketSicher (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_PaketSicher_Condition;
	information	= Info_Mod_Meldor_PaketSicher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ukrylem wasza paczke.";
};

FUNC INT Info_Mod_Meldor_PaketSicher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
	&& (Mob_HasItems("CHEST_ANDRE_WAREHOUSE_PACKET", ItMi_HerbPaket) == 1)
	&& (Mod_MeldorVerpfiffen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_PaketSicher_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_00"); //Ukrylem wasza paczke.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_01"); //Czy powiesz mi teraz, o co w tym wszystkim chodzi?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_02"); //Wszystko w porzadku.... Milicja przesladowala mnie ostatnio. Sadza, ze ja jestem za tym wszystkim, co jest na bagnie.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_03"); //Trzymasz sie ze mna.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_04"); //Tak, ale wie o tym niewielu ludzi, a na pewno nie milicja.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_05"); //O jakim psem mówiles wczesniej?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_06"); //Jak juz powiedzialem, bardzo niewiele osób w barakach zdaje sobie z tego sprawe, a w barakach nie ma nikogo, kto znalby zbyt wiele.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_07"); //Zanim zapomne, zapisales mój tylek. Milicja przyszla do mojego domu i przeszukala mnie podmokla.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_08"); //Caly czas staja sie coraz smielsze. Tak czy inaczej, jestes przyzwoitym facetem i nadal mozesz byc czyms!
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_09"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_10"); //Jesli chcecie, moge przedstawic Was swojemu szefowi. Móglbys napisac dla ciebie dobre slowo.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_11"); //No cóz, gdzie jest twój szef?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_12"); //Lepiej pójsc samotnie, ja jestem zbyt rzucajacy sie w oczy. Idz do spiacego worka na pieniadze, w poblizu baraków.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_13"); //Powiedz Hannie, ze pochodzisz z Urzedu Marszalkowskiego.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_14"); //Wlasciwie to zrobie.

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_Göttergefallen(3, 1);

	Log_CreateTopic	(TOPIC_MOD_MELDOR_HANNA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MELDOR_HANNA, "Meldor chce mi powiedziec dobre slowo z szefem. Porozmawiam z Hanna w portfelu sypialnym.");
};

INSTANCE Info_Mod_Meldor_Mortis (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Mortis_Condition;
	information	= Info_Mod_Meldor_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze próbujesz zawrzec umowe.";
};

FUNC INT Info_Mod_Meldor_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_NewsMilizDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_00"); //Slysze, ze próbujesz zawrzec umowe.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_01"); //Jak to znasz?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_02"); //Mortis, kuznia koszar, wiedzial o tym.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_03"); //Co? To byl on?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_04"); //Tak, tak to wyglada.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_05"); //Chcialbym, zeby poszedl do wiezienia za rdeste bagnista.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_06"); //Czy nie mozesz to zrobic dla mnie?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_07"); //Gdzie moge dostac pakiet bagienny ziól?
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_08"); //Nie mam juz teraz nic, spróbuje gdzies znalezc.
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_11"); //Zrobie wszystko, co w mojej mocy.

	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_MELDOR, "Ostrzeglem Meldora. Chce, abym dal mi hipoteze paczke ziolowa. Lepiej wlozyc go do klatki piersiowej w kuzni milicji.");
};

INSTANCE Info_Mod_Meldor_WacholderDieb (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_WacholderDieb_Condition;
	information	= Info_Mod_Meldor_WacholderDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej!";
};

FUNC INT Info_Mod_Meldor_WacholderDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Coragon_WhatHappened))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_WacholderDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_00"); //Hej!
	AI_Output(self, hero, "Info_Mod_Meldor_WacholderDieb_07_01"); //Czego chcesz, dzieciak?
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_02"); //Czy wiesz cos o kradziezy Coragon?
	AI_Output(self, hero, "Info_Mod_Meldor_WacholderDieb_07_03"); //Skad? Jesli szukasz dowodów, skontaktuj sie z zawodnikami Coragon. Mam przez to na mysli Cardifa i wlasciciela bezplatnego stoiska piwnego.
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_04"); //Dziekuje za napiwek!

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Meldor dal mi rade zapytac Kardifa i gospodarza bezplatnego stoiska piwnego, poniewaz sa zawodnikami Coragon.");
};

INSTANCE Info_Mod_Meldor_Aabid (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Aabid_Condition;
	information	= Info_Mod_Meldor_Aabid_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem z Aabid.";
};

FUNC INT Info_Mod_Meldor_Aabid_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Aabid_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_00"); //Jestem z Aabid.
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_01"); //(Zdziwiony) Kto?
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_02"); //Aabid, mezczyzna, który zamówil wam bagno. Zastanawia sie, gdzie jest jego porzadek.
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_03"); //Ach, ten facet. Zapomnialem o nim wszystkich.
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_04"); //To wlasnie pomyslalem. Czy moze mi Pan przekazac pakiet, abym mógl go do niego przywiezc?
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_05"); //Oczywiscie, ale tylko za cene 150 zlotych monet.
};

INSTANCE Info_Mod_Meldor_AabidPaket (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_AabidPaket_Condition;
	information	= Info_Mod_Meldor_AabidPaket_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto monety.";
};

FUNC INT Info_Mod_Meldor_AabidPaket_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Aabid))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_AabidPaket_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_AabidPaket_15_00"); //Oto monety.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Meldor_AabidPaket_07_01"); //Wszystko w porzadku, oto Twój pakiet.

	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	B_LogEntry	(TOPIC_MOD_ASS_AABID_PAKET, "Odwiedzilem Meldor i odebralem pakiet Aabida za 150 zlotych monet.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Meldor_Skinner (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Skinner_Condition;
	information	= Info_Mod_Meldor_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Interesuja Cie nowicjusze zieleni?";
};

FUNC INT Info_Mod_Meldor_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Skinner_15_00"); //Interesuja Cie nowicjusze zieleni?
	AI_Output(self, hero, "Info_Mod_Meldor_Skinner_07_01"); //Oczywiscie zabiore wszystko, co dostales.
	AI_Output(hero, self, "Info_Mod_Meldor_Skinner_15_02"); //Wez to tutaj.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	AI_Output(self, hero, "Info_Mod_Meldor_Skinner_07_03"); //Oto Twoje zloto.

	B_GiveInvItems	(self, hero, ItMi_Gold, Npc_HasItems(self, ItMi_Addon_Joint_01)*20);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Pozbylem sie wiec wszystkich zielonych nowicjuszy w miescie.");
};

INSTANCE Info_Mod_Meldor_Flugblaetter (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Flugblaetter_Condition;
	information	= Info_Mod_Meldor_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Meldor_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	AI_Output(self, hero, "Info_Mod_Meldor_Flugblaetter_07_01"); //Co mnie obchodzi? Czy jego broszury mozna zakleic gdziekolwiek indziej?
};

INSTANCE Info_Mod_Meldor_LobartAlwinScene (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_LobartAlwinScene_Condition;
	information	= Info_Mod_Meldor_LobartAlwinScene_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meldor_LobartAlwinScene_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alwin_LobartScene))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_LobartAlwinScene_Info()
{
	AI_Output(self, hero, "Info_Mod_Meldor_LobartAlwinScene_07_00"); //Nalezy pic mniej.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Meldor_Pickpocket (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Pickpocket_Condition;
	information	= Info_Mod_Meldor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Meldor_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Joint, 3);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

	Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_BACK, Info_Mod_Meldor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Meldor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Meldor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Meldor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Meldor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Meldor_EXIT (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_EXIT_Condition;
	information	= Info_Mod_Meldor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Meldor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meldor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
