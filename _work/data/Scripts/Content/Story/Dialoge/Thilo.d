INSTANCE Info_Mod_Thilo_Hi (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Hi_Condition;
	information	= Info_Mod_Thilo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Thilo_Hi_Condition()
{
	if (Mod_WilfriedsQuest == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Thilo_Hi_01_01"); //Zostawcie mnie samemu, nic nie chce z wami porozmawiac.
};

INSTANCE Info_Mod_Thilo_Wilfried (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Wilfried_Condition;
	information	= Info_Mod_Thilo_Wilfried_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Wilfried_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wilfried_HabBeutel))
	&& (Mod_WilfriedsQuest == 1)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Wilfried_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_01_00"); //Zostawcie mnie samemu, nic nie chce z wami porozmawiac.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_15_01"); //Jestes zlodziejem woreczka Wilfrieda!
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_01_02"); //Kto to mówi?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Powiedzial mi Wilfried.", Info_Mod_Thilo_Wilfried_Wilfried);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Nazwa nie ma znaczenia.", Info_Mod_Thilo_Wilfried_Egal);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Egal()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Egal_15_00"); //Nazwa nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Egal_01_01"); //Lubie to? Nie wiem, ze dopuscilem sie kradziezy. A moze uwazasz, ze masz dowody?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Powiedzial mi Wilfried.", Info_Mod_Thilo_Wilfried_Wilfried);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Wilfried()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Wilfried_15_00"); //Powiedzial mi Wilfried.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Wilfried_01_01"); //Ten nieszczesliwy bastard! Juz tego nie bede ukrywal! Ty!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Nie!", Info_Mod_Thilo_Wilfried_Nein);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Tak?", Info_Mod_Thilo_Wilfried_Ja);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Nein()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Nein_15_00"); //Nie!
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Nein_01_01"); //Nie sluchasz mnie? Wystarczy wrócic do Wilfrieda, nie da sie mi niczego udowodnic!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "ENDE", Info_Mod_Thilo_Wilfried_EXIT);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Powiedz mi o tym.", Info_Mod_Thilo_Wilfried_Tell);
};

FUNC VOID Info_Mod_Thilo_Wilfried_EXIT()
{
	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	B_SetTopicStatus	(TOPIC_MOD_WILFRIED_GOLD, LOG_FAILED);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Ja()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Ja_15_00"); //Tak?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Ja_01_01"); //Jako pierwsi poznasz prawde! Cala historia!

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Powiedz mi o tym.", Info_Mod_Thilo_Wilfried_Tell);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Tell()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_00"); //Powiedz mi o tym.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_01"); //Jak wiadomo Wilfried sprzedaje rzadka i cenna bizuterie. W swoje urodziny chcialem dac mojej ukochanej ukochanej drogiego amuleta, wiec poszedlem do niego i dalem mu rade.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_02"); //Pokazal mi rysunki amuletów, których nie mial z nim, ale które podobno wiedzial gdzie mógl je uzyskac, a ja wybralem jedna z nich.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_03"); //Musialam zaplacic za zloto na miejscu i tydzien pózniej musialam odebrac amulet.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_04"); //Gdy przybylem po wyznaczonym czasie, Wilfried nagle udal, ze w ogóle nie zlozylem zamówienia i usiadl przed drzwiami.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_05"); //Czy nie zapisales/as swojej zgody?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_06"); //To jest sedno sprawy! Nie pomyslalem nawet o tym, bo przeciez wiekszosc ludzi mozna bylo zaufac - pomyslalem. Nie mialem wiec nic przeciwko Wilfriedowi, zadnego dowodu, nic. Nie moglem go obwiniac.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_07"); //Ale wciaz chciales, aby zloto wrócilo z powrotem....
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_08"); //Tak, to prawda. Wiem, ze nie bylo to calkowicie poprawne,
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Tell_15_09"); //(ironiczne) To troche niedopowiedziane....
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Tell_01_10"); //... ale nie widzialem innego sposobu na odzyskanie zlota. Zrekompensowalem tylko niesprawiedliwosc.

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Gwizdam ci gwizdek.....", Info_Mod_Thilo_Wilfried_Verpfeifen);
	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Co wiec teraz robimy?", Info_Mod_Thilo_Wilfried_WasJetzt);
};

FUNC VOID Info_Mod_Thilo_Wilfried_Verpfeifen()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_Verpfeifen_15_00"); //Gwizdam ci gwizdek.....
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_Verpfeifen_01_01"); //Co? Nie widzisz niesprawiedliwosci?

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);

	Info_AddChoice	(Info_Mod_Thilo_Wilfried, "Co wiec teraz robimy?", Info_Mod_Thilo_Wilfried_WasJetzt);
};

FUNC VOID Info_Mod_Thilo_Wilfried_WasJetzt()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_WasJetzt_15_00"); //Co wiec teraz robimy?
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_01"); //Jestem pewien, ze nie jestem jedyna ofiara Wilfrieda. Musimy polozyc temu kres, ale mozna to zrobic tylko przy wiekszym wsparciu.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_02"); //Sugeruje, abys zapytal, czy cos podobnego stalo sie z kims innym.
	AI_Output(self, hero, "Info_Mod_Thilo_Wilfried_WasJetzt_01_03"); //Moze w ten sposób mozemy zdobyc dowody, a przynajmniej naszych sojuszników.
	AI_Output(hero, self, "Info_Mod_Thilo_Wilfried_WasJetzt_15_04"); //To juz wszystko.

	B_LogEntry	(TOPIC_MOD_WILFRIED_GOLD, "Thilo jest zlodziejem, ale on oskarza Wilfrieda o kradziez zlota. Teraz zobacze, czy w jego poblizu jest jeszcze wiecej ofiar Wilfrieda, aby oskarzenie bylo warte zachodu.");

	Mod_WilfriedsQuest = 2;

	Info_ClearChoices	(Info_Mod_Thilo_Wilfried);
};

INSTANCE Info_Mod_Thilo_Partner (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Partner_Condition;
	information	= Info_Mod_Thilo_Partner_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Partner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Wilfried))
	&& ((Mod_WilfriedsQuest == 3)
	|| (Mod_WilfriedsQuest == 4)
	|| (Mod_WilfriedsQuest == 5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Partner_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_00"); //Masz jakies wiadomosci?
	AI_Output(hero, self, "Info_Mod_Thilo_Partner_15_01"); //Znalazlem sojuszników.
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_02"); //(propleased) Dobry! To powinno nam pomóc znalezc Wilfrieda. Chcesz go odwiedzic?
	AI_Output(hero, self, "Info_Mod_Thilo_Partner_15_03"); //Drobny, drobny.
	AI_Output(self, hero, "Info_Mod_Thilo_Partner_01_04"); //Kiedy skonczysz, daj mi znac, jak to sie stalo.
};

INSTANCE Info_Mod_Thilo_WilfriedWeg (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_WilfriedWeg_Condition;
	information	= Info_Mod_Thilo_WilfriedWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Odszedl Wilfried.";
};

FUNC INT Info_Mod_Thilo_WilfriedWeg_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_Partner))
	&& ((Mod_WilfriedsQuest == 4)
	|| (Mod_WilfriedsQuest == 5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_WilfriedWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Thilo_WilfriedWeg_15_00"); //Odszedl Wilfried.
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedWeg_01_01"); //(wstrzasy) Nie! (pauza, myslenie) musi miec wiatr naszych wysilków.
	AI_Output(hero, self, "Info_Mod_Thilo_WilfriedWeg_15_02"); //Co mozemy teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedWeg_01_03"); //Moze gdzies prowadzi jego miejsce zamieszkania. Dlaczego nie rozejrzec sie po domu Wilfrieda, a ja zapytam.

	Mob_CreateItems	("WILFRIEDSTRUHE", WilfriedsTagebuchseite, 1);
};

INSTANCE Info_Mod_Thilo_Tagebuchseite (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Tagebuchseite_Condition;
	information	= Info_Mod_Thilo_Tagebuchseite_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_Tagebuchseite_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thilo_WilfriedWeg))
	&& (Mod_WilfriedsQuest == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_Tagebuchseite_Info()
{
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_00"); //Znalazlem informacyjna strone dziennika.
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_01"); //Co mówi?
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_02"); //Wilfried odkryl jaskinie poza miastem.
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_03"); //No cóz, to powiedzialbym, ze mozesz ja znalezc. Nie moge wyjsc juz teraz.... wazne powolanie....
	AI_Output(hero, self, "Info_Mod_Thilo_Tagebuchseite_15_04"); //Boisz sie?
	AI_Output(self, hero, "Info_Mod_Thilo_Tagebuchseite_01_05"); //Nie powiem tak, nie wyrazalbym tego szacunku. Bedziesz mial racje. Do zobaczenia dookola.
};

INSTANCE Info_Mod_Thilo_WilfriedTot (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_WilfriedTot_Condition;
	information	= Info_Mod_Thilo_WilfriedTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Thilo_WilfriedTot_Condition()
{
	if (Mod_WilfriedsQuest == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Thilo_WilfriedTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedTot_01_00"); //Slyszalem, jak karal pan Wilfrieda. Drastyczna miara, ale nie powinna byc twoja szkoda.
	AI_Output(self, hero, "Info_Mod_Thilo_WilfriedTot_01_01"); //Dziekuje za pomoc. Do zobaczenia dookola.

	CreateInvItems	(self, ItMi_Gold, 50);
	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Thilo_Pickpocket (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_Pickpocket_Condition;
	information	= Info_Mod_Thilo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Thilo_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

	Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_BACK, Info_Mod_Thilo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Thilo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Thilo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Thilo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Thilo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Thilo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Thilo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Thilo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Thilo_EXIT (C_INFO)
{
	npc		= Mod_1938_Thilo_NONE_NW;
	nr		= 1;
	condition	= Info_Mod_Thilo_EXIT_Condition;
	information	= Info_Mod_Thilo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Thilo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Thilo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
