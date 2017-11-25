INSTANCE Info_Mod_Raritaetenhaendler_Hi (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Hi_Condition;
	information	= Info_Mod_Raritaetenhaendler_Hi_Info;
	permanent	= 0;
	important	= 1;
	trade		= 1;
};

FUNC INT Info_Mod_Raritaetenhaendler_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_00"); //Witaj znajomego. Krok blizej!
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_01"); //Przyjacielu? Czy znamy sie nawzajem?
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_02"); //Jeszcze nie. Nazywam sie Finder. Zajmuje sie rzadkoscia.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_03"); //Rzadkosci. To rzadkie rzeczy.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Hi_04_04"); //Dokladnie. Rzadkie, dziwne, a nawet wyjatkowe rzeczy.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Hi_15_05"); //Przyjrzyjmy sie.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widze tu zlamana rune.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Hi))
	&& (Mod_JG_Finder == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_00"); //Widze tu zlamana rune. To mnie interesuje.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_04_01"); //Bylbym szczesliwy. Mozesz go miec za 500 sztuk.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_02"); //Czy nie masz zamiaru? 500 zlota za te bryle rudy?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune_15_03"); //W najlepszym przypadku dla dekoracji. Podam Ci 100.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune_04_04"); //Czy nie masz zamiaru? Jest to absolutna rzadkosc. Nie mniej niz 400.
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune01 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune01_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune01_Info;
	permanent	= 0;
	important	= 0;
	description	= "A zatem wszystko w porzadku. Tu 400 monet. Czyste zdzieranie jest takie.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 400)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune01_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune01_15_00"); //A zatem wszystko w porzadku. Tu 400 monet. Czyste zdzieranie jest takie.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune01_04_01"); //Jest to popyt i podaz. Tutaj. Dobrze sie bawic.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapil pól teleportune u sprzedawcy rzadkosci. Teraz potrzebuje reszty posladków z powrotem. Nie powinien byc zbyt twardy.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Zrobilismy to! Mam obie czesci. Moze rune mozna naprawic. Zapytaj eksperta. Zastanawiam sie, czy jest tutaj magik. Zapytajmy. Moze Daniel, on zajmuje sie magia.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune02 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune02_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rarytas absolutny? Spójrz, co tu dostalem.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 250)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_BrokenRune01) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune02_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_00"); //Rarytas absolutny? Spójrz, co tu dostalem.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_04_01"); //Oh. Pól runy.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_02"); //Dokladnie. Oni sa tam gdzies.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune02_04_03"); //A zatem wszystko w porzadku. Zejde do 250.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune02_15_04"); //Bo to Ty. 250 zlota tutaj.

	B_GiveInvItems	(hero, self, ItMi_Gold, 250);

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapil pól teleportune u sprzedawcy rzadkosci. Teraz potrzebuje reszty posladków z powrotem. Nie powinien byc zbyt twardy.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Zrobilismy to! Mam obie czesci. Moze rune mozna naprawic. Zapytaj eksperta. Zastanawiam sie, czy jest tutaj magik. Zapytajmy. Moze Daniel, on zajmuje sie magia.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune03 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune03_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tylko 200 w torbie. To wszystko, co moge zrobic.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune03_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_00"); //Mam tylko 200 w torbie. To wszystko, co moge zrobic.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_04_01"); //Wtedy nie mozemy robic interesów. Przepraszam za to.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune03_15_02"); //Moglem dodac kolejna akwamaryne. Najwyzszej jakosci.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	Npc_RemoveInvItems	(hero, ItMi_Aquamarine, 1);

	B_ShowGivenThings	("200 Zloto i Akwamaryna z dodatkiem");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune03_04_03"); //Ladunek. Tutaj runa.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapil pól teleportune u sprzedawcy rzadkosci. Teraz potrzebuje reszty posladków z powrotem. Nie powinien byc zbyt twardy.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Zrobilismy to! Mam obie czesci. Moze rune mozna naprawic. Zapytaj eksperta. Zastanawiam sie, czy jest tutaj magik. Zapytajmy. Moze Daniel, on zajmuje sie magia.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_Rune04 (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Rune04_Condition;
	information	= Info_Mod_Raritaetenhaendler_Rune04_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapotrzebowanie! Co oznacza popyt? Nikt nigdy nie zabiera cie tak czy inaczej.";
};

FUNC INT Info_Mod_Raritaetenhaendler_Rune04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raritaetenhaendler_Rune))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (Npc_HasItems(self, ItMi_BrokenRune03) == 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 3)
	&& (Npc_HasItems(hero, ItFo_FishSoup) >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Rune04_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_00"); //Zapotrzebowanie! Co oznacza popyt? Nikt nigdy nie zabiera cie tak czy inaczej.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_01"); //Tak myslisz. Prawie wszyscy pytaja mnie co sie dzieje z runem.
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_02"); //I oczywiscie mówisz:"Nie wiem". Tutaj. 200 zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_03"); //Moje ostatnie slowo. 250. Ja równiez musze zyc. I zona i siedmioro dzieci....
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_Rune04_15_04"); //Mam tylko 200. Daje wam trzy bochenki chleba i trzy talerze zupy. Dla rodziny....

	Npc_RemoveInvItems	(hero, ItFo_Bread, 3);
	Npc_RemoveInvItems	(hero, ItFo_FishSoup, 3);

	B_ShowGivenThings	("3 bochenki chleba i 3 talerze zupy");

	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_Rune04_04_05"); //Jestes przestepca. Tutaj. runa.

	B_GiveInvItems	(self, hero, ItMi_BrokenRune02, 1);

	Npc_RemoveInvItems	(self, ItMi_BrokenRune03, 1);
	
	if (Npc_HasItems(Mod_7540_OUT_Penner_REL, ItMi_BrokenRune01) == 1)
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Swapil pól teleportune u sprzedawcy rzadkosci. Teraz potrzebuje reszty posladków z powrotem. Nie powinien byc zbyt twardy.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_JG_PENNER, "Zrobilismy to! Mam obie czesci. Moze rune mozna naprawic. Zapytaj eksperta. Zastanawiam sie, czy jest tutaj magik. Zapytajmy. Moze Daniel, on zajmuje sie magia.");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_BrokenRune (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_BrokenRune_Condition;
	information	= Info_Mod_Raritaetenhaendler_BrokenRune_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj ponownie.";
};

FUNC INT Info_Mod_Raritaetenhaendler_BrokenRune_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune2))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Daniel_BrokenRune3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_BrokenRune_Info()
{
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_00"); //Witaj ponownie.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_01"); //Co? Ponownie? Czego chcesz?
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_02"); //Jestem z Daniela. Sprzedal ci postac adanosowa.
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_03"); //To moze byc prawda. Mila praca. Wykonany w calosci w akwamarynie.

	B_GiveInvItems	(self, hero, ItMi_AdanosStatue, 1);

	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_04"); //To wlasnie chce kupic. Wiesz, jako dekoracja....
	AI_Output(self, hero, "Info_Mod_Raritaetenhaendler_BrokenRune_04_05"); //Oczywiscie. 500 zlota....
	AI_Output(hero, self, "Info_Mod_Raritaetenhaendler_BrokenRune_15_06"); //Jeszcze raz. Wartosc ta wynosi maksymalnie 200 sztuk.

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	B_LogEntry	(TOPIC_MOD_JG_RUNENZAUBER, "Mam teraz postac Adanos. Gota wraca do maga.");
};

INSTANCE Info_Mod_Raritaetenhaendler_Pickpocket (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_Pickpocket_Condition;
	information	= Info_Mod_Raritaetenhaendler_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Raritaetenhaendler_Pickpocket_Condition()
{
	C_Beklauen	(107, ItMi_Runeblank, 1);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_BACK, Info_Mod_Raritaetenhaendler_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raritaetenhaendler_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raritaetenhaendler_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raritaetenhaendler_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raritaetenhaendler_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raritaetenhaendler_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raritaetenhaendler_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raritaetenhaendler_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raritaetenhaendler_EXIT (C_INFO)
{
	npc		= Mod_7542_OUT_Raritaetenhaendler_REL;
	nr		= 1;
	condition	= Info_Mod_Raritaetenhaendler_EXIT_Condition;
	information	= Info_Mod_Raritaetenhaendler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raritaetenhaendler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raritaetenhaendler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
