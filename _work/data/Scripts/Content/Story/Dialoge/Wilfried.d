INSTANCE Info_Mod_Wilfried_Hi (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hi_Condition;
	information	= Info_Mod_Wilfried_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hi_08_00"); //To rozpaczliwe! Caly dzien patrze!
};

INSTANCE Info_Mod_Wilfried_WhatHappened (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_WhatHappened_Condition;
	information	= Info_Mod_Wilfried_WhatHappened_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czego szukasz?";
};

FUNC INT Info_Mod_Wilfried_WhatHappened_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_WhatHappened_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_WhatHappened_15_00"); //Czego szukasz?
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_01"); //Mój portfel! Jestem pewien, ze wczoraj mialem go ze mna.....
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_02"); //Tak, w koncu zaplacilem za piwo, zanim wrócilem do domu z pubu.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_03"); //Ale to.... Musialem go zgubic, bo inaczej nie potrafie tego wytlumaczyc.
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_04"); //Poszukiwalem calego domu - nic!
	AI_Output(self, hero, "Info_Mod_Wilfried_WhatHappened_08_05"); //W drodze powrotnej, w drodze do domu musial wypadnac z mojej kieszeni.... Wiecej
};

INSTANCE Info_Mod_Wilfried_Hilfe (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hilfe_Condition;
	information	= Info_Mod_Wilfried_Hilfe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge pomóc Ci ja znalezc?";
};

FUNC INT Info_Mod_Wilfried_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_WhatHappened))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hilfe_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_00"); //Czy moge pomóc Ci ja znalezc?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_01"); //Dobry czyn kazdego dnia, huh? Oczywiscie docenilabym, gdybys mógl mi dac reke. Wiesz, ze...... kosci w starszym wieku. (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Wilfried_Hilfe_15_02"); //Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_03"); //Cóz, juz odwrócilem dom do góry nogami, nie ma tu torby. Zstawie Ci wszystko, co zostawilem. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_04"); //Ale nie bylem dzis na zewnatrz. Znasz pub?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hilfe_08_05"); //Najlepiej jest szukac drogi po obu stronach, nigdy nie wiesz, gdzie mógl ladowac.... Mam nadzieje, ze nikt jeszcze go nie znalazl.
};

INSTANCE Info_Mod_Wilfried_Ok (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Ok_Condition;
	information	= Info_Mod_Wilfried_Ok_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zobaczmy, co mozemy znalezc.";
};

FUNC INT Info_Mod_Wilfried_Ok_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_No))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Ok_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_00"); //Zobaczmy, co mozemy znalezc.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_01"); //Milosc Panstwa. (Konspiracyjne) Oh, zanim zapomne: Nie musisz mówic wszystkim o moim dylemacie, czy wystarczy, ze oboje o tym wiemy, prawda?
	AI_Output(hero, self, "Info_Mod_Wilfried_Ok_15_02"); //Co dla mnie jest nagroda?
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_03"); //Jako nagrode, moglem zaoferowac Ci dziesiata czesc zlota, które znajdziesz w tej torbie.
	AI_Output(self, hero, "Info_Mod_Wilfried_Ok_08_04"); //Jestem nagrodzony za szczerosc, dowiesz sie.

	Log_CreateTopic	(TOPIC_MOD_WILFRIED_GOLD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Stary Wilfried poprosil mnie, abym szukal jego zagubionej torebki w drodze z domu do pubu. Nagroda jest dziesiata czesc sumy pozostawionej w torebce. Jednym z warunków jest jednak to, ze nikogo nie mówie o incydencie.");

	Wld_InsertItem	(ItSe_WilfriedsBeutel, "FP_ITEM_WILFRIED");
};

INSTANCE Info_Mod_Wilfried_No (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_No_Condition;
	information	= Info_Mod_Wilfried_No_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mozesz dac brudna prace innym.";
};

FUNC INT Info_Mod_Wilfried_No_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Hilfe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_OK))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_No_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_No_15_00"); //Mozesz dac brudna prace innym.
	AI_Output(self, hero, "Info_Mod_Wilfried_No_08_01"); //Hej, nie zmusilem cie do niczego. Ale przynajmniej zostaw mnie sam na sam z twoim zlym nastrojem!
};

INSTANCE Info_Mod_Wilfried_HabBeutel (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_HabBeutel_Condition;
	information	= Info_Mod_Wilfried_HabBeutel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_HabBeutel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_Ok))
	&& (Npc_HasItems(hero, ItSe_WilfriedsBeutel) == 1)
	&& (Mod_HatBeutelWilfried == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_00"); //Jestes tam znowu! Czy Twoje wyszukiwanie okazalo sie skuteczne?
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_15_01"); //Jak go zabrac. Znalazlem torebke, ale...... przekonaj sie sam.

	B_GiveInvItems	(hero, self, ItSe_WilfriedsBeutel, 1);
	Npc_RemoveInvItems(self, ItSe_WilfriedsBeutel, 1);

	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_08_02"); //Nie! Nie mozesz byc powazny...... ukradles!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "To prawda..... Wzialem pieniadze do siebie (....). )", Info_Mod_Wilfried_HabBeutel_Ja);
	Info_AddChoice	(Info_Mod_Wilfried_HabBeutel, "Dlaczego wiec wróce do Ciebie?", Info_Mod_Wilfried_HabBeutel_Nein);
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Ja()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Ja_15_00"); //To prawda..... Wzialem pieniadze, a ty juz ich nie zobaczysz!
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Ja_08_01"); //Czekaj, syn suki!

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 0);

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_FAILED);

	CurrentNQ += 1;
};

FUNC VOID Info_Mod_Wilfried_HabBeutel_Nein()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_00"); //Dlaczego wiec wróce do Ciebie?
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_01"); //Tak, byc moze masz racje. Sa ludzie, którym ufam, ze zrobie o wiele wiecej.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_02"); //Thilo, ten krwawy blizni....
	AI_Output(hero, self, "Info_Mod_Wilfried_HabBeutel_Nein_15_03"); //Móglbym zglosic ten incydent strazom miejskim....
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_04"); //Nie! Uh, wolalbym, gdybys nie powiedzial straznikowi miasta.
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_05"); //Ona jest juz wystarczajaco zajeta, nie musisz jej martwic sie o takie drobiazgi. (smiertelnie niepewne zycie)
	AI_Output(self, hero, "Info_Mod_Wilfried_HabBeutel_Nein_08_06"); //Badz dobrym chlopcem i chowaj go przed soba.... niz sekret.

	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Rozmowa z Wilfriedem wywolala wiecej pytan niz odpowiedziano. Wyglada na to, ze cos u mnie ukrywa. A kto jest zlodziejem Thilo? Moze zna odpowiedzi....");

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Wilfried_HabBeutel);

	Mod_WilfriedsQuest = 1;
};

INSTANCE Info_Mod_Wilfried_Belohnung (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Belohnung_Condition;
	information	= Info_Mod_Wilfried_Belohnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "A co z nagroda?";
};

FUNC INT Info_Mod_Wilfried_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (Mod_WilfriedsQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Belohnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_00"); //A co z nagroda?
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_01"); //Nie sadze, ze to mój przyjaciel. Jedna dziesiata zlota z worka nie jest w tym przypadku zlotem.
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_02"); //Przykro mi z tego powodu. Gdybym byl bogatym czlowiekiem, móglbym wam zaoferowac wiecej.
	AI_Output(hero, self, "Info_Mod_Wilfried_Belohnung_15_03"); //Daj mi swoje zloto, bo w przeciwnym razie bede go bil!
	AI_Output(self, hero, "Info_Mod_Wilfried_Belohnung_08_04"); //Malo tego byka! Czy nie masz nic lepszego do zrobienia?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Thilo (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Thilo_Condition;
	information	= Info_Mod_Wilfried_Thilo_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Thilo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_WilfriedsQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Thilo_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_08_00"); //Czego jeszcze chcesz ode mnie?

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "Thilo jest zlodziejem, wyznal mi!", Info_Mod_Wilfried_Thilo_Dieb);
	Info_AddChoice	(Info_Mod_Wilfried_Thilo, "Jaka jest cala historia kradziezy?", Info_Mod_Wilfried_Thilo_Wahrheit);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Dieb()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_00"); //Thilo jest zlodziejem, wyznal mi!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_01"); //Powiedzialem ci, zebys milczal o tym zdarzeniu!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Dieb_15_02"); //Ale....
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_03"); //Nie interesuje Cie to wcale. Wyjsc stad!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Dieb_08_04"); //Wyjdzcie!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wilfried_Thilo_Wahrheit()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_00"); //Jaka jest cala historia za kradzieza twojej torebki?
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_01"); //Powiedzialem Ci wszystko, co wiem!
	AI_Output(hero, self, "Info_Mod_Wilfried_Thilo_Wahrheit_15_02"); //Nie sadze.
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_03"); //Nie interesuje Cie to wcale. Wyjsc stad!
	AI_Output(self, hero, "Info_Mod_Wilfried_Thilo_Wahrheit_08_04"); //Wyjdzcie!

	Info_ClearChoices	(Info_Mod_Wilfried_Thilo);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wilfried_Hoehle (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Hoehle_Condition;
	information	= Info_Mod_Wilfried_Hoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilfried_Hoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_WilfriedWeg))
	&& (Mod_WilfriedsQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_00"); //Dlaczego przychodzisz do mnie?
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_15_01"); //Mam pytania.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_08_02"); //Idz dalej, nie mam nic do ukrycia.

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Szukaja Cie w miescie.", Info_Mod_Wilfried_Hoehle_Stadt);
	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Dlaczego biegliscie do tej jaskini?", Info_Mod_Wilfried_Hoehle_Weg);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Stadt()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Stadt_15_00"); //Szukaja Cie w miescie. Niektórzy ludzie maja jeszcze cos do omówienia z wami.
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Stadt_08_01"); //Czy nie sadzisz, ze tutaj jest cudownie cicho?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Cichy?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Weg()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Weg_15_00"); //Dlaczego biegliscie do tej jaskini?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Weg_08_01"); //Czesto odwiedzam swoja jaskinie, aby wyjsc z miasta. Czy nie sadzisz, ze tutaj jest cudownie cicho?

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	Info_AddChoice	(Info_Mod_Wilfried_Hoehle, "Cichy?", Info_Mod_Wilfried_Hoehle_Ruhe);
};

FUNC VOID Info_Mod_Wilfried_Hoehle_Ruhe()
{
	AI_Output(hero, self, "Info_Mod_Wilfried_Hoehle_Ruhe_15_00"); //Cichy?
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_01"); //Nikogo nie slysze.... nikt mnie nie slyszy.... (Pauza / syczenie nagle) I nikt nie uslyszy cie, kiedy bedziesz zawodzic o milosierdzie!
	AI_Output(self, hero, "Info_Mod_Wilfried_Hoehle_Ruhe_08_02"); //Nie jestes gonna wziac moje zloto!

	Info_ClearChoices	(Info_Mod_Wilfried_Hoehle);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_Wilfried_Pickpocket (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_Pickpocket_Condition;
	information	= Info_Mod_Wilfried_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Wilfried_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_BACK, Info_Mod_Wilfried_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wilfried_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wilfried_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wilfried_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wilfried_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wilfried_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wilfried_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wilfried_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wilfried_EXIT (C_INFO)
{
	npc		= Mod_544_NONE_Wilfried_NW;
	nr		= 1;
	condition	= Info_Mod_Wilfried_EXIT_Condition;
	information	= Info_Mod_Wilfried_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wilfried_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilfried_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
