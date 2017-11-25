INSTANCE Info_Mod_Bodo_Hi (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;	
	nr		= 1;
	condition	= Info_Mod_Bodo_Hi_Condition;
	information	= Info_Mod_Bodo_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest Twój zawód?";
};

FUNC INT Info_Mod_Bodo_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Hi_15_00"); //Jaki jest Twój zawód?
	AI_Output(self, hero, "Info_Mod_Bodo_Hi_36_01"); //To i to. Robie dorywcza prace, kurierskie uslugi i takie rzeczy.
	AI_Output(hero, self, "Info_Mod_Bodo_Hi_15_02"); //Czy mozesz na tym zyc?
	AI_Output(self, hero, "Info_Mod_Bodo_Hi_36_03"); //To naprawde nie jest dobrze platne, ale moge sobie z tym poradzic.
};

INSTANCE Info_Mod_Bodo_Krautlieferung (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Krautlieferung_Condition;
	information	= Info_Mod_Bodo_Krautlieferung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce, zebys cos przyniósl Myxirowi.";
};

FUNC INT Info_Mod_Bodo_Krautlieferung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_Haendler))
	&& (Mod_MyxirsKraeuter == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Krautlieferung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_00"); //Chce, zebys cos przyniósl Myxirowi.
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_01"); //Prosil o to, prawda? Wolalabym przywiezc go z roslinami, ale moja misja tutaj nie pozwolila mu....[...].
	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_02"); //Tak, wszystko w porzadku. Nikt nie zabije cie za to.
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_03"); //Cóz, jestem z ulga!
	AI_Output(self, hero, "Info_Mod_Bodo_Krautlieferung_36_04"); //Tutaj je masz. Dajmy Myxirowi moje najlepsze zyczenia!

	B_GiveInvItems	(self, hero, MyxirsGiftpflanze, 20);

	AI_Output(hero, self, "Info_Mod_Bodo_Krautlieferung_15_05"); //Jestem pewien, ze bedzie szczesliwy.

	B_LogEntry	(TOPIC_MOD_GIFTPFLANZEN, "Bodo dal mi rosliny na Myxir.");
};

INSTANCE Info_Mod_Bodo_WiePruefung (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_WiePruefung_Condition;
	information	= Info_Mod_Bodo_WiePruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, bracie.";
};

FUNC INT Info_Mod_Bodo_WiePruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andokai_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_WiePruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_00"); //Witaj, bracie.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_01"); //Brat? Nawet cie nie znam.
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_02"); //Mozesz przerwac gre. Jestem z Andokai.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_03"); //Aah. Witamy, witamy. Moja okladka jako zlodziej dnia jest dobra, czyz nie?
	AI_Output(hero, self, "Info_Mod_Bodo_WiePruefung_15_04"); //Ubrania mieszczan moga byc czyms zbyt dobrym.
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_05"); //To prawda. Ale to tylko moja próznosc. (smiertelnicy)
	AI_Output(self, hero, "Info_Mod_Bodo_WiePruefung_36_06"); //Co moge dla Ciebie zrobic?

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Bodo mówi, ze to, co pomoglo mu w jego badaniu, pochodzilo z Myxiru.");
};

INSTANCE Info_Mod_Bodo_WieKloster (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_WieKloster_Condition;
	information	= Info_Mod_Bodo_WieKloster_Info;
	permanent	= 0;
	important	= 0;
	description	= "Musze cos ukrasc z klasztoru Strazaków.";
};

FUNC INT Info_Mod_Bodo_WieKloster_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andokai_Hammer))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_WieKloster_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_00"); //Musze cos ukrasc z klasztoru Strazaków.
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_01"); //Andokai powiedzial, ze moglabys mi udzielic jakichs rad.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_02"); //Co trzeba krasc?
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_03"); //Swiety mlotek.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_04"); //Cóz za szczescie dla ciebie! Jest kawalek ciasta.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_05"); //Mlot znajduje sie na dole piwnicy w oddzielnym pomieszczeniu i jest sterowany przez jedna oslone.
	AI_Output(hero, self, "Info_Mod_Bodo_WieKloster_15_06"); //Ale nie moge jeszcze sprzeciwic sie straznikowi.
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_07"); //Czy slyszalem kiedys o spiacych zakleciach?
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_08"); //Czarodzieje zaklecie nakladasz na straznika, wyjmujesz mloteczek i wyruszasz z klasztoru!
	AI_Output(self, hero, "Info_Mod_Bodo_WieKloster_36_09"); //I to wszystko bez koniecznosci szkodzenia straznikowi.

	B_LogEntry	(TOPIC_MOD_DAEMONENBESCHWOERER, "Bodo radzi mi spac, gdybym nie mógl fizycznie pomóc straznikowi mlotka.");
};

INSTANCE Info_Mod_Bodo_Novize (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Novize_Condition;
	information	= Info_Mod_Bodo_Novize_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes Czarna Nowicjuszem?";
};

FUNC INT Info_Mod_Bodo_Novize_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bodo_WiePruefung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Novize_Info()
{
	AI_Output(hero, self, "Info_Mod_Bodo_Novize_15_00"); //Czy jestes Czarna Nowicjuszem?
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_01"); //Ostatnio tak. I nie moge narzekac na brak zatrudnienia.
	AI_Output(hero, self, "Info_Mod_Bodo_Novize_15_02"); //Jak dlugo trwalo to, aby zostac nowicjuszem?
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_03"); //Minelo troche czasu. Musialem przez jakis czas pomagac w twierdzy we wszystkich zakatkach i koncze az Andokai zauwazyl mnie.
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_04"); //Po tym, jak oszukiwalem magików ognia na ksiazke, byl bardzo kochany. Wtedy o wiele trudniej bylo mi przekonac Xardasa.
	AI_Output(self, hero, "Info_Mod_Bodo_Novize_36_05"); //Chlopak, mówie ci, to uparty stary bastard. Uzyskanie jego glosu równiez zajelo mi kilka tygodni.
};

INSTANCE Info_Mod_Bodo_Flugblatt (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Flugblatt_Condition;
	information	= Info_Mod_Bodo_Flugblatt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_Bodo_Flugblatt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 10)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bodo_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bodo_Flugblatt_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Bodo_Flugblatt_36_01"); //Dziekuje, dziekuje. Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Bodo_Flugblatt_36_02"); //Ah tak. Moze zatrzymam sie przy Matteo' s.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Bodo_Pickpocket (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_Pickpocket_Condition;
	information	= Info_Mod_Bodo_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bodo_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

	Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_BACK, Info_Mod_Bodo_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bodo_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bodo_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bodo_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bodo_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bodo_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bodo_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bodo_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bodo_EXIT (C_INFO)
{
	npc		= Mod_516_SNOV_Bodo_NW;
	nr		= 1;
	condition	= Info_Mod_Bodo_EXIT_Condition;
	information	= Info_Mod_Bodo_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bodo_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bodo_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
