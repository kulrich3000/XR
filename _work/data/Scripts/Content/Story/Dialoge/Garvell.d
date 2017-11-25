INSTANCE Info_Mod_Garvell_Hi (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Hi_Condition;
	information	= Info_Mod_Garvell_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Garvell_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garvell_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Garvell_Hi_04_01"); //Jestem Garvell.
	AI_Output(hero, self, "Info_Mod_Garvell_Hi_15_02"); //A co tu robisz?
	AI_Output(self, hero, "Info_Mod_Garvell_Hi_04_03"); //Zbuduje okret, aby dostac sie na kontynent, gdy tylko skonczy sie wojna z orkami.
};

INSTANCE Info_Mod_Garvell_Irdorath (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Irdorath_Condition;
	information	= Info_Mod_Garvell_Irdorath_Info;
	permanent	= 0;
	important	= 0;
	description	= "Widze, ze znasz handel.";
};

FUNC INT Info_Mod_Garvell_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jack_Irdorath2))
	&& (Mod_JackHW == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Irdorath_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_15_00"); //Widze, ze znasz handel.
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_15_01"); //Co myslisz o rejsie statkiem Paladynu....?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_04_02"); //Co? Dlaczego bym to zrobil?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_04_03"); //Mam tu na wlasnym statku wiecej niz wystarczajaco duzo do zrobienia......

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	Info_AddChoice	(Info_Mod_Garvell_Irdorath, "Jestem pewien, ze mozna sie wiele nauczyc od statku Paladina.", Info_Mod_Garvell_Irdorath_B);
	Info_AddChoice	(Info_Mod_Garvell_Irdorath, "Khorinis jest w wielkim niebezpieczenstwie i jesli udamy sie na te wyspe (....). )", Info_Mod_Garvell_Irdorath_A);
};

FUNC VOID Info_Mod_Garvell_Irdorath_B()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_B_15_00"); //Jestem pewien, ze mozna sie wiele nauczyc od statku Paladina.
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_B_15_01"); //Bedzie to okazja....
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_02"); //O czym Pan mówi? Czy myslisz, ze moze nigdy wczesniej nie widzialem statku z wnetrza?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_03"); //Z taka oferta mozesz zaimponowac chlopcu..... tak naprawde.....
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_B_04_04"); //Teraz juz nie martw sie o prace.

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "No cóz, nie bedzie wspólpracowac z firma Garvell, konstruktorem lodzi.");
};

FUNC VOID Info_Mod_Garvell_Irdorath_A()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Irdorath_A_15_00"); //Khorinis jest w wielkim niebezpieczenstwie, a jesli udamy sie w podróz na te wyspe, mozemy zapobiec zagrozeniu katastrofa.
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_A_04_01"); //Co grozi katastrofa?
	AI_Output(self, hero, "Info_Mod_Garvell_Irdorath_A_04_02"); //Potem powinienem jeszcze bardziej spieszyc sie z budowa mojego statku, zeby przygotowac sie na czas......

	Info_ClearChoices	(Info_Mod_Garvell_Irdorath);

	B_LogEntry	(TOPIC_MOD_HQ_JACK, "No cóz, nie bedzie wspólpracowac z firma Garvell, konstruktorem lodzi.");
};

INSTANCE Info_Mod_Garvell_Paddel (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Paddel_Condition;
	information	= Info_Mod_Garvell_Paddel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sprzedajesz wiosla?";
};

FUNC INT Info_Mod_Garvell_Paddel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Farim_Paddel))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Paddel_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_00"); //Sprzedajesz wiosla?
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_01"); //To wystarczy. Najlepsza jakosc. Cedr z ladu. Bardzo duzy ekskluzywny arkusz. Szczególnie latwo to zrobic.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_02"); //Wszystkie sluszne, wszystkie sluszne. Daj mi dwie wiosla.
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_03"); //Tutaj. 200 zlota za sztuke.

	B_GiveInvItems	(self, hero, ItMi_Paddel, 2);

	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_04"); //Co? Moge je wykonac z zlotych talerzy. Z srebrna zyrandolka jako rekojescia. Tutaj 100.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_05"); //Czy nie masz zamiaru? Jest to towar najwyzszej jakosci. Ale nie chce sie spierac. 300 dla obu z nich.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_06"); //Farim mówi, ze za 100 zl....
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_07"); //To równiez odrzucono. Jestem pewien, ze wkrótce sie skonczy.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_08"); //To prawda. Oto kolejne 100 zlota. To wszystko, co dostalem.

	B_GiveInvItems	(hero, self, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_09"); //W przeciwnym razie mozna zupe lyzka z tymi rzeczami.
	AI_Output(self, hero, "Info_Mod_Garvell_Paddel_04_10"); //Zrujnowales mnie. Oto padliny. I nie wracaj.
	AI_Output(hero, self, "Info_Mod_Garvell_Paddel_15_11"); //Nie bój sie.

	B_LogEntry	(TOPIC_MOD_SKIP_PADDEL, "Mam dwie wiosla. Kosztowalam 200 sztuk zlota.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Garvell_Fenia (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia_Condition;
	information	= Info_Mod_Garvell_Fenia_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garvell_Fenia_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	&& (hero.attribute[ATR_MANA_MAX] >= 200)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia_Info()
{
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_04_00"); //Hej, Ty. Mozesz radzic sobie z magia, prawda?

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);

	Info_AddChoice	(Info_Mod_Garvell_Fenia, "Masz zly pomysl.", Info_Mod_Garvell_Fenia_B);
	Info_AddChoice	(Info_Mod_Garvell_Fenia, "Oczywiscie tak sie dzieje.", Info_Mod_Garvell_Fenia_A);
};

FUNC VOID Info_Mod_Garvell_Fenia_B()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_B_15_00"); //Masz zly pomysl.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_B_04_01"); //Wszystko w porzadku, mily dzien.

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

FUNC VOID Info_Mod_Garvell_Fenia_A()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_A_15_00"); //Oczywiscie tak sie dzieje.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_01"); //W takim przypadku mam dla pana mala prosbe.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_02"); //Mam te czesc telekinezy tutaj..... nabyte.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_03"); //Móglbys zabrac Fenie w niezachwiana chwile z jej (husteltowym) biustonoszem?
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_A_04_04"); //Nie zauwazy tez niczego.....

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);

	Info_AddChoice	(Info_Mod_Garvell_Fenia, "Um.... nie", Info_Mod_Garvell_Fenia_D);
	Info_AddChoice	(Info_Mod_Garvell_Fenia, "To zabawa!", Info_Mod_Garvell_Fenia_C);
};

FUNC VOID Info_Mod_Garvell_Fenia_D()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_D_15_00"); //Um.... nie
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_D_04_01"); //Ach, co wstyd. Wtedy bede musial znalezc kolejna ofiare.

	B_GivePlayerXP	(50);

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

FUNC VOID Info_Mod_Garvell_Fenia_C()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia_C_15_00"); //To zabawa!
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia_C_04_01"); //Oto Twoja historia. Powodzenia!

	B_GiveInvItems	(self, hero, ItSc_Telekinese, 1);

	Log_CreateTopic	(TOPIC_MOD_GARVELL_FENIA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GARVELL_FENIA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GARVELL_FENIA, "Ich soll Fenia, der Händlerin, im Auftrag von Garvell den Büstenhalter mit Hilfe eines Telekinese-Spruches stehlen. Wie infantil!");

	Mod_Garvell_Fenia = 1;

	Info_ClearChoices	(Info_Mod_Garvell_Fenia);
};

INSTANCE Info_Mod_Garvell_Fenia2 (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia2_Condition;
	information	= Info_Mod_Garvell_Fenia2_Info;
	permanent	= 0;
	important	= 0;
	description	= "A wiec o co to wszystko chodzilo!";
};

FUNC INT Info_Mod_Garvell_Fenia2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fenia_BH))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia2_Info()
{
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_00"); //A wiec o co to wszystko chodzilo!
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_01"); //(ogromna smierc) Wspaniale, cudownie!
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_02"); //Wiec po prostu sie ze mna modliles?
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_03"); //Tak wlasnie jest. Mówie ci, ze to wybuch. (smiertelnicy)
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia2_15_04"); //No cóz, mam czesc przemówienia. Zobaczmy co dostales.
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia2_04_05"); //Czy....?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Garvell_Fenia3 (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Fenia3_Condition;
	information	= Info_Mod_Garvell_Fenia3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garvell_Fenia3_Condition()
{
	if (Mod_Garvell_Fenia == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Fenia3_Info()
{
	AI_Output(self, hero, "Info_Mod_Garvell_Fenia3_04_00"); //Oddaj mi zloto!
	AI_Output(hero, self, "Info_Mod_Garvell_Fenia3_15_01"); //To jest oplata za moje obciazenie praca. Nie popelniam zadnego wykroczenia, ale musze teraz odejsc.

	B_SetTopicStatus	(TOPIC_MOD_GARVELL_FENIA, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Garvell_Flugblaetter (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Flugblaetter_Condition;
	information	= Info_Mod_Garvell_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Garvell_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garvell_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garvell_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Garvell_Flugblaetter_04_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Garvell_Flugblaetter_04_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Garvell_Pickpocket (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_Pickpocket_Condition;
	information	= Info_Mod_Garvell_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Garvell_Pickpocket_Condition()
{
	C_Beklauen	(38, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

	Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_BACK, Info_Mod_Garvell_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Garvell_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Garvell_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Garvell_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Garvell_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Garvell_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Garvell_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Garvell_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Garvell_EXIT (C_INFO)
{
	npc		= Mod_577_NONE_Garvell_NW;
	nr		= 1;
	condition	= Info_Mod_Garvell_EXIT_Condition;
	information	= Info_Mod_Garvell_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garvell_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Garvell_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
