INSTANCE Info_Mod_Zahit_Kill (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Kill_Condition;
	information	= Info_Mod_Zahit_Kill_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Kill_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Amir_AtVersteck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Kill_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Kill_07_00"); //Nie powinienes tu przyjezdzac!
	
	AI_StopProcessInfos(self);
	
	B_Attack(self, hero, AR_KILL, 0);
};

INSTANCE Info_Mod_Zahit_Amir (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Amir_Condition;
	information	= Info_Mod_Zahit_Amir_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Amir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_AtVersteck))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Amir_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_00"); //Co Pan tutaj robi? Czy Amir przywiózl cie tutaj?
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_01"); //Tak, zrobil.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_02"); //Co sobie wyobraza?
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_03"); //To, ze jest w miescie, nie oznacza, ze moze lekcewazyc nasze zasady i wciagac nieznajomych.
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_04"); //Pozostan luzny. Pomagalem Amirowi z problemem i zaproponowalem mu przylaczenie sie do zabójców.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_05"); //Aha, pomógles Amirowi. Wiec mój przyjaciel, co musiales zrobic? Zabijac pluskwy miesne?
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_06"); //Zabilem denerwujacego mieszkanca miasta za zamach na Amir podczas próby zabicia i odebralem mu kubek krwi.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_07"); //Masz takie talenty jako slabszy? To przemawia za panem, musze to powiedziec.
	AI_Output(hero, self, "Info_Mod_Zahit_Amir_15_08"); //Co teraz moge sie przylaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_09"); //Nie spiesz sie, mój przyjaciel. Przekonales Amir, ale aby zostac zabójca w ogóle, musisz zrobic wiele rzeczy.
	AI_Output(self, hero, "Info_Mod_Zahit_Amir_07_10"); //Mój chlopiec ma przed soba dluga droge.
};

INSTANCE Info_Mod_Zahit_Aufnahme (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Aufnahme_Condition;
	information	= Info_Mod_Zahit_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak moge dolaczyc do Ciebie?";
};

FUNC INT Info_Mod_Zahit_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_00"); //Jak moge dolaczyc do Ciebie?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_01"); //Cóz, aby zostac zabójca, potrzeba bardzo waznej rzeczy.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_02"); //Co to jest?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_03"); //Zaufanie.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_04"); //Uh-huh. Co dalej?
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_05"); //Zeby zostac czlonkiem obozu, najpierw trzeba zdobyc zaufanie nizszych zabójców, tzw. oszustów.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_06"); //Twoja okolica jest za tymi drzwiami.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_07"); //Za nia znajduje sie dzielnica wojowników, a nastepnie magik i Wysoka Rada.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_08"); //Aby móc w ogóle wejsc do ostatnich dwóch kwartalów, musisz byc oszustem.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_09"); //Jesli naprawde przyjmiesz te sciezke, która bedzie bardzo trudna, wtedy bedziesz mial mozliwosc dolaczenia do magów lub wojowników.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_10"); //Ale najpierw trzeba bedzie przejsc trudne testy.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_11"); //To brzmi bardzo motywujace.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_12"); //(mocna) Ciesz sie, ze masz szanse dolaczyc do nas w ogóle.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_13"); //Jak dotad nieliczni goscie z zewnatrz otrzymali ten zaszczyt, wiec zamknijcie niegrzeczne usta.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_14"); //Jesli spotkasz takich magów lub wojowników, naucza cie manier.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_15"); //Bede o tym pamietac.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_16"); //Dobre. Mozesz wiec teraz wprowadzic pierwszy kwartal.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_17"); //Porozmawiaj z ludzmi i wykonaj ich zadania do zaakceptowania.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_18"); //Kiedy przekonasz wszystkich, bedziesz mial okazje porozmawiac z magikami i wojownikami.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_19"); //Liderem jest szef korony korony szakir. Porozmawiaj z nim, aby uzyskac wiecej informacji.
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_20"); //Dziekuje.
	AI_Output(self, hero, "Info_Mod_Zahit_Aufnahme_07_21"); //I nie spraw nam nic trudnego w zrozumieniu siebie nawzajem!
	AI_Output(hero, self, "Info_Mod_Zahit_Aufnahme_15_22"); //Tak wlasnie mamy, nie martw sie.

	Log_CreateTopic	(TOPIC_MOD_ASS_VERTRAUEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERTRAUEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Rozmawialem z wartownikiem Zahitem, który wraz z kolega pilnowal wejscia do kryjówki zabójców. Powiedzial, ze aby zostac czlonkiem obozu, tak zwanym oszustem, musze zdobyc zaufanie tych samych zabójców. Jedynym sposobem na to jest powrót do bycia chlopcem, który popelnil blad. Zeby dowiedziec sie wiecej, musze porozmawiac z przywódca oszustów, Shakirem, w obozie. Nie moge sie doczekac, zeby zobaczyc.");
};

INSTANCE Info_Mod_Zahit_Assassinengold (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Assassinengold_Condition;
	information	= Info_Mod_Zahit_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Zahit_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Zahit_Assassinengold_07_00"); //Tutaj jestes nareszcie. Kazdy czeka na ciebie. Idz na to.
	AI_Output(hero, self, "Info_Mod_Zahit_Assassinengold_15_01"); //Troche szacunku dla maga, chlopaka!
	AI_Output(self, hero, "Info_Mod_Zahit_Assassinengold_07_02"); //Przepraszam za to. Nie tak dawno temu nic nie bylo.
	AI_Output(hero, self, "Info_Mod_Zahit_Assassinengold_15_03"); //Do kazdego z nich. Zejdz z drogi.
};

INSTANCE Info_Mod_Zahit_PosWechsel (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_PosWechsel_Condition;
	information	= Info_Mod_Zahit_PosWechsel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Zahit_PosWechsel_Condition()
{
	if (Mod_ASS_PosWechsel == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_PosWechsel_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_00"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Zahit_PosWechsel_07_01"); //Zastapil Amir obserwatorem.
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_02"); //A co jest tak wazne?
	AI_Output(self, hero, "Info_Mod_Zahit_PosWechsel_07_03"); //Musisz natychmiast udac sie do Mustafy. Sprawy wazne.
	AI_Output(hero, self, "Info_Mod_Zahit_PosWechsel_15_04"); //Nie moge sie doczekac, zeby zobaczyc.
};

INSTANCE Info_Mod_Zahit_Gefunden (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Gefunden_Condition;
	information	= Info_Mod_Zahit_Gefunden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak do tej pory nie zostales jeszcze odkryty?";
};

FUNC INT Info_Mod_Zahit_Gefunden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Gefunden_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_00"); //Jak do tej pory nie zostales jeszcze odkryty?
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_07_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_02"); //Nie sadze, aby nikt wczesniej nie zglebial tej jaskini.
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_07_03"); //Do tej pory zdarzalo sie to rzadko, a ci, którzy tu przyjechali, nie mogli nikomu powiedziec.
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_04"); //Wiec zabiles ja?
	AI_Output(self, hero, "Info_Mod_Zahit_Gefunden_07_05"); //Tak, nie chcemy tutaj przenosic paladynów i milicji.
	AI_Output(hero, self, "Info_Mod_Zahit_Gefunden_15_06"); //To z pewnoscia nie byloby dobre.
};

INSTANCE Info_Mod_Zahit_Hergekommen (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Hergekommen_Condition;
	information	= Info_Mod_Zahit_Hergekommen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak sie tu dostales?";
};

FUNC INT Info_Mod_Zahit_Hergekommen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Amir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zahit_Hergekommen_Info()
{
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_00"); //Jak sie tu dostales?
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_01"); //Jak wszyscy wiemy, na kontynencie panuje calkowity chaos.
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_02"); //Tak, równiez o tym slyszalem.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_03"); //Nie moglismy juz wytrzymac. Dlatego nasi madrzy przywódcy postanowili uciec od tego szalenstwa.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_04"); //Za pomoca poteznego zaklecia teleportu, nasi magowie zdolali nas wszystkich telepolizowac na Khorinis.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_05"); //Poszukiwalismy kryjówki i znalezlismy tutaj te jaskinie niewykorzystana.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_06"); //Postanowilismy zostac tutaj i od tego czasu jest to nasz obóz.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_07"); //Chcemy jednak w niedalekiej przyszlosci starac sie poszerzyc nasze wplywy.
	AI_Output(hero, self, "Info_Mod_Zahit_Hergekommen_15_08"); //Wszystko brzmi bardzo przygodowo. Ciekawe, jak przyszedles tutaj. Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_Zahit_Hergekommen_07_09"); //Nie wspominajmy o tym.
};

INSTANCE Info_Mod_Zahit_Pickpocket (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_Pickpocket_Condition;
	information	= Info_Mod_Zahit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Zahit_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

	Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_BACK, Info_Mod_Zahit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Zahit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Zahit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Zahit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Zahit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Zahit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Zahit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Zahit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Zahit_EXIT (C_INFO)
{
	npc		= Mod_7100_ASS_Zahit_NW;
	nr		= 1;
	condition	= Info_Mod_Zahit_EXIT_Condition;
	information	= Info_Mod_Zahit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Zahit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zahit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
