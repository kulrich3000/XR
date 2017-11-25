INSTANCE Info_Mod_Schneider_Hi (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Hi_Condition;
	information	= Info_Mod_Schneider_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Schneider_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Schneider_Hi_31_00"); //Przepraszam, jestem teraz bardzo zajety.
	AI_Output(self, hero, "Info_Mod_Schneider_Hi_31_01"); //Czy powinienem wykonac naciecie stawu biodrowego? Co oznacza dyktowanie mody? Ciecie talii, prawda?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Schneider_Gritta (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Gritta_Condition;
	information	= Info_Mod_Schneider_Gritta_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobry dzien.";
};

FUNC INT Info_Mod_Schneider_Gritta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Gritta_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_00"); //Dobry dzien. Widze nozyczki na twojej tarczy. Jestes krawcem?
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_01"); //To wystarczy. Nazywam sie Versage. Najlepszy krawiec w kraju.
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_02"); //To dobrze. Szukam sukienki dla wyrafinowanej pani.
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_03"); //Widze. Cos ekstrawaganckiego. Hm. Mam tu odpowiedni projekt.
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_04"); //Ale sukienka nie jest skonczona, bo obawiam sie, ze nasze kobiety tutaj w Khoracie jej nie potrzebuja.
	AI_Output(hero, self, "Info_Mod_Schneider_Gritta_15_05"); //I az do momentu, kiedy....
	AI_Output(self, hero, "Info_Mod_Schneider_Gritta_31_06"); //Wróc jutro. Nastepnie nalezy to zrobic.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Krawiec zrobi sukienke dla Gritty. Jutro powinno byc gotowe.");

	B_StartOtherRoutine	(Mod_7281_OUT_Felicita_REL, "SCHNEIDER");

	Mod_ASS_Schneider_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Schneider_Aufgabe (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Aufgabe_Condition;
	information	= Info_Mod_Schneider_Aufgabe_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy sukienka jest gotowa?";
};

FUNC INT Info_Mod_Schneider_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Gritta))
	&& (Wld_GetDay() > Mod_ASS_Schneider_Day)
	&& (Mod_ASS_Schneider == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_00"); //Czy sukienka jest gotowa?

	if (Wld_GetDay()-1 == Mod_ASS_Schneider_Day)
	&& (Wld_IsTime(00,00,11,59))
	{
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_01"); //Nie do konca. Pracuje na nim pól nocy.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_02"); //Nadal jest jeszcze kilka szwów do wykonania. I trzeba go równiez prasowac.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_03"); //Wracaj do domu w poludnie.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_04"); //Dobre. Do zobaczenia pózniej.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_05"); //Oczywiscie. Wspaniala sukienka. Haute couture jest tym, co oni nazywaja. Ciezko zaplacic.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_06"); //Co to znaczy?
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_07"); //Najlepsza tkanina z welny owczej. Podwójne szwy. Elegancka drabinka....
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_08"); //Ile?
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_09"); //Dwa razy barwione. Mozliwosc prania w temperaturze do 60 stopni Celsjusza. Wyhaftowal mój znak. 500 zlota.
		AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_15_10"); //Czy nie masz zamiaru? Dostaje do tego cale stado owiec.
		AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_31_11"); //Nie zrobiloby to na pani wiele wrazenia.

		Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, DIALOG_BACK, Info_Mod_Schneider_Aufgabe_BACK);

		if (Npc_HasItems(hero, ItMi_Gold) >= 500)
		{
			Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "Moze tak. Oto Twoje 500.", Info_Mod_Schneider_Aufgabe_D);
		};
		if (Npc_HasItems(hero, ItMi_Gold) >= 400)
		{
			Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "Moglabym dac ci 400 zlota.", Info_Mod_Schneider_Aufgabe_C);
		};
		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "Mam przy sobie tylko 300 osób.", Info_Mod_Schneider_Aufgabe_B);
		Info_AddChoice	(Info_Mod_Schneider_Aufgabe, "Mam przy sobie tylko 200 osób.", Info_Mod_Schneider_Aufgabe_A);
	};	
};

FUNC VOID Info_Mod_Schneider_Aufgabe_BACK()
{
	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

FUNC VOID Info_Mod_Schneider_Aufgabe_D()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_D_15_00"); //Moze tak. Oto Twoje 500.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_D_31_01"); //Dziekuje bardzo. Nie bedziesz tego zalowal.

	B_GiveInvItems	(self, hero, ItAr_GrittasKleid, 1);

	Mod_ASS_Schneider = 1;

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Nie bylo latwo dostac te sukienke. Mam nadzieje, ze Shakir to docenia. Powrót do Gritta' s.");
};

FUNC VOID Info_Mod_Schneider_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_C_15_00"); //Moglabym dac ci 400 zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 400);

	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_C_31_01"); //Ungern. Ale trzeba mi jednak polecic.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_C_15_02"); //Zamierzam to zrobic.

	B_GiveInvItems	(self, hero, ItAr_GrittasKleid, 1);

	Mod_ASS_Schneider = 1;

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Nie bylo latwo dostac te sukienke. Mam nadzieje, ze Shakir to docenia. Powrót do Gritta' s.");
};

FUNC VOID Info_Mod_Schneider_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_00"); //Mam przy sobie tylko 300 osób.
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_01"); //300 zloto na to cenne cos? Nad martwym cialem! O ile nie.....
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_02"); //Tak?
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_03"); //Dajesz mi troche pomocy.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_04"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_05"); //Cóz, mysle o przytulnym wieczorze na dwa lata. Ty i ja sami....
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_06"); //Z Adanosem! Jestes gejem!
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_B_31_07"); //Co wiec? Wszyscy projektanci mody, podobnie jak ja, sa gejami. W przeciwnym razie nie bylibysmy kim jestesmy.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_B_15_08"); //Z podziekowaniami odrzucam. Zobacze jeszcze cos innego.

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

FUNC VOID Info_Mod_Schneider_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_A_15_00"); //Mam przy sobie tylko 200 osób.
	AI_Output(self, hero, "Info_Mod_Schneider_Aufgabe_A_31_01"); //Wtedy nie mozemy robic interesów. Zapomnij o tym.
	AI_Output(hero, self, "Info_Mod_Schneider_Aufgabe_A_15_02"); //Zbyt zle. Bede musial pomyslec o czyms innym.

	Info_ClearChoices	(Info_Mod_Schneider_Aufgabe);
};

INSTANCE Info_Mod_Schneider_Kissen (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Kissen_Condition;
	information	= Info_Mod_Schneider_Kissen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Schneider_Kissen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morpheus_Kissen02))
	&& (Npc_HasItems(hero, ItMi_Federbeutel) == 1)
	&& (Npc_HasItems(hero, ItMi_Heu) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Kissen_Info()
{
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_00"); //Przyjedz blizej, przyjaciela ekskluzywnej odziezy. Czy moje stworzenie bylo przyjemne?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_01"); //I jak. Mysle, ze pani w ogóle nie zdejmie sukni.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_02"); //W przeciwnym razie nie nalezalo sie tego spodziewac. Czym bedzie dzisiaj?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_03"); //Tylko troche. Czy mozesz zrobic mi torbe z lnu?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_04"); //To jest ponizej mojego poziomu, ale dla Ciebie jako dobrego klienta.... Jak duzy ma byc?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_05"); //Tak duze, ze te pióra i siano zmieszcza sie w sobie.

	Npc_RemoveInvItems	(hero, ItMi_Federbeutel, 1);
	Npc_RemoveInvItems	(hero, ItMi_Heu, 1);

	B_ShowGivenThings	("Pióra pasazerskie i dodatek siana");

	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_06"); //Po co ci to jest potrzebne?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_07"); //Dla starego wojownika. Kiedy zasypia, chce go polozyc pod glowa.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_08"); //Bardzo innowacyjny, ten pomysl. Moze to byc duzy sprzedawca. Gdzie byly te pióra?
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen_15_09"); //Od rzeznika. Rzezbi Scavenger z hodowli Erharda.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen_31_10"); //Ciekawe. Bardzo dobrze. Mam kilka rzeczy. Pozostawic farsz i wrócic w dwie godziny.

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "W Versage mam nadzieje w ciagu dwóch godzin.");

	Npc_SetRefuseTalk(self, 300);
};

INSTANCE Info_Mod_Schneider_Kissen02 (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Kissen02_Condition;
	information	= Info_Mod_Schneider_Kissen02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Czy jestes gotowy?";
};

FUNC INT Info_Mod_Schneider_Kissen02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Kissen))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Schneider_Kissen02_Info()
{
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_00"); //Witaj! Czy jestes gotowy?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_01"); //Ale tak, tak, tak. Spójrz. W moim ulubionym kolorze.

	B_GiveInvItems	(self, hero, ItMi_Kissen, 1);

	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_02"); //Lila! Cóz, nie bedzie to mialo znaczenia dla wojownika.
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_03"); //Niezwykle miekkie i pachnace. Nie ma lepszego sposobu, aby cos takiego zrobic.
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_04"); //Musze zaczac dzialac. Ile otrzymasz?
	AI_Output(self, hero, "Info_Mod_Schneider_Kissen02_31_05"); //Dla ciebie, za darmo, jesli otrzymam prawa do twojego pomyslu.
	AI_Output(hero, self, "Info_Mod_Schneider_Kissen02_15_06"); //Moja lewa strona równiez. Oto teraz!

	B_LogEntry	(TOPIC_MOD_ASS_KISSEN, "Dostalem poduszke. Do Malik....");
};

INSTANCE Info_Mod_Schneider_Pickpocket (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_Pickpocket_Condition;
	information	= Info_Mod_Schneider_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Schneider_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Seide, 2);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

	Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_BACK, Info_Mod_Schneider_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Schneider_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Schneider_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Schneider_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Schneider_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Schneider_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Schneider_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Schneider_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Schneider_EXIT (C_INFO)
{
	npc		= Mod_7535_OUT_Schneider_REL;
	nr		= 1;
	condition	= Info_Mod_Schneider_EXIT_Condition;
	information	= Info_Mod_Schneider_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Schneider_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Schneider_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
