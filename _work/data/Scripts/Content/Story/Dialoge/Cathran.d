INSTANCE Info_Mod_Cathran_Hi (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Hi_Condition;
	information	= Info_Mod_Cathran_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cathran_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_00"); //Zanim pójdziesz dalej do Minental, powinienes zatrzymac sie przy naszym obozie.
	AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_01"); //Ktos taki jak ty moze z nas zarobic zloty medal lub dwoje.

	if (Mod_Gilde > 0)
	{
		AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_02"); //Porozmawiaj z Ole, teraz jest odpowiedzialny za administracje obozowa.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Cathran_Hi_06_03"); //Porozmawiaj z Ole, jak tylko wybierzesz jeden z najwiekszych gildii, moze on bedzie mial dla ciebie cos do zrobienia.
	};
};

INSTANCE Info_Mod_Cathran_InGilde (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_InGilde_Condition;
	information	= Info_Mod_Cathran_InGilde_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Hi))
	&& (KG_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_InGilde_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_InGilde_06_00"); //Ach, widze, ze zdecydowales sie dolaczyc do nas.
	AI_Output(self, hero, "Info_Mod_Cathran_InGilde_06_01"); //Prosze mi wierzyc, podjeliscie wlasciwa decyzje. Wkrótce bedziemy wszyscy plywali w rudie, wiec mam ja w moczu.
	AI_Output(hero, self, "Info_Mod_Cathran_InGilde_15_02"); //Jesli tak powiesz. Mam tylko nadzieje, ze wszyscy mozemy równiez plywac.
};

INSTANCE Info_Mod_Cathran_Trollholz (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Trollholz_Condition;
	information	= Info_Mod_Cathran_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze macie jakies kawalki rudy i nie wiecie gdzie je umiescic.";
};

FUNC INT Info_Mod_Cathran_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz_15_00"); //Slysze, ze macie jakies kawalki rudy i nie wiecie gdzie je umiescic.
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_01"); //Przypuszczam, ze chcialbys....
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_02"); //Poniewaz dzis mam dobry dzien, daje ci dwa, jesli zrobisz mi troche laski.
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz_15_03"); //I co to jest?
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_04"); //Pobierz mnie futro z dzika. Czasami jest tu bardzo wietrznie i preferuje ciepla powloke od dwóch zimnych kawalków rudy.
	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz_06_05"); //Jesli nie masz go sam, zapytaj strazników na wiezach, prawdopodobnie maja troche wlasnych.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Zeby Kathran dal mu dwie porcelany rudy, powinienem najpierw dostac od niego skóre knurowa. Sadzi, ze straznicy wiezy moga miec jedna rzecz....");
};

INSTANCE Info_Mod_Cathran_Trollholz2 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Trollholz2_Condition;
	information	= Info_Mod_Cathran_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje futro z dzika.";
};

FUNC INT Info_Mod_Cathran_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Trollholz))
	&& ((Npc_HasItems(hero, ItAt_Addon_KeilerFur) >= 1)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) >= 1)
	|| (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Feuer) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Trollholz2_15_00"); //Oto Twoje futro z dzika.

	if (Npc_HasItems(hero, ItAt_Addon_KeilerFur) >= 1)
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur, 1);
	}
	else if (Npc_HasItems(hero, ItAt_Addon_KeilerFur_Rein) >= 1)
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur_Rein, 1);
	}
	else
	{
		B_GiveInvItems	(hero, self, ItAt_Addon_KeilerFur_Feuer, 1);
	};

	AI_Output(self, hero, "Info_Mod_Cathran_Trollholz2_06_01"); //Dziekuje, oto twoje dwa kawalki rudy.

	B_GiveInvItems	(self, hero, ItMi_Nugget, 2);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Daloby mi to dwie bryly rudy Kathranu. Powinnam ja od razu zabrac do Heidarka.....");
};

INSTANCE Info_Mod_Cathran_Asylanten (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Asylanten_Condition;
	information	= Info_Mod_Cathran_Asylanten_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skad pochodzi straznik królewski?";
};

FUNC INT Info_Mod_Cathran_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_00"); //Skad pochodzi straznik królewski?
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_01"); //Natychmiast po upadku zapory wyslano nas tu przez króla, by obserwowac przejscie dohorinis.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_02"); //Ale to wlasnie uczynil po drugiej stronie Lord Hagen.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_03"); //Król nie ufa juz Panu Hagenowi.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_04"); //Obawia sie, ze Hagen moze byc zbyt slaby, aby powstrzymac skazanych.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_05"); //Czesto podkreslal, ze chce zapobiegac rozlewowi krwi.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_06"); //Co wiesz o grupach w Minental?
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_07"); //Agresywny potencjal emanuje z dawnego i nowego obozu.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_08"); //Te dwa obozy sa pod szczególna obserwacja.
	AI_Output(hero, self, "Info_Mod_Cathran_Asylanten_15_09"); //Dziekujemy za informacje.
	AI_Output(self, hero, "Info_Mod_Cathran_Asylanten_06_10"); //Milego dnia, jesli on daje cos takiego.

	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Król wyslal swoich strazników potajemnie do Minentalnej przepustki, aby monitorowac go niezaleznie od Lorda Hagena. Szczególnie stary i nowy obóz jest uwazany za niebezpieczny.");
};

INSTANCE Info_Mod_Cathran_Treue (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Treue_Condition;
	information	= Info_Mod_Cathran_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Treue_Condition()
{
	if (Mod_Kap4_KGOrks == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Treue_06_00"); //Trzeba je wszystkie ubic, te wszystkie zielone dranie.
	AI_Output(self, hero, "Info_Mod_Cathran_Treue_06_01"); //Niech wróca.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Cathran_Siegelring (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring_Condition;
	information	= Info_Mod_Cathran_Siegelring_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Siegelring_Condition()
{
	if (Mod_Herold_Siegelring == 3)
	&& (!Npc_IsDead(Mod_7749_OUT_Raeuber_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring_06_00"); //Przytrzymaj go. Królowy dostojnik nie chce sie niepokoic.
	AI_Output(hero, self, "Info_Mod_Cathran_Siegelring_15_01"); //Dyrygent króla?
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring_06_02"); //.... nosi ubrania dostojnika i posiada dekret królewski z pieczecia.
};

INSTANCE Info_Mod_Cathran_Siegelring2 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring2_Condition;
	information	= Info_Mod_Cathran_Siegelring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "O czym piszemy w tym pismie?";
};

FUNC INT Info_Mod_Cathran_Siegelring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Siegelring))
	&& (Npc_HasItems(hero, ItWr_LandstreicherSiegelring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Cathran_Siegelring2_15_00"); //O czym piszemy w tym pismie?

	B_GiveInvItems	(hero, self, ItWr_LandstreicherSiegelring, 1);

	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_01"); //Co?

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_02"); //Ale.... ze..... Teraz widze wiele rzeczy. Zastanawialem sie dlaczego.
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_03"); //To..... ten tlusty pije potlusty scoundrel napoje i rzuca sie na nasz koszt brzuch pelen....... swoim falszywym dekretem.
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring2_06_04"); //Pozbede sie go.

	AI_StopProcessInfos	(self);

	Mod_7749_OUT_Raeuber_MT.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_7749_OUT_Raeuber_MT, GIL_STRF);

	B_Attack	(self, Mod_7749_OUT_Raeuber_MT, AR_Kill, 0);
};

INSTANCE Info_Mod_Cathran_Siegelring3 (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Siegelring3_Condition;
	information	= Info_Mod_Cathran_Siegelring3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cathran_Siegelring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Siegelring2))
	&& (Npc_IsDead(Mod_7749_OUT_Raeuber_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cathran_Siegelring3_Info()
{
	AI_Output(self, hero, "Info_Mod_Cathran_Siegelring3_06_00"); //No cóz, to wlasnie dostaje syn suki. Dziekuje za otwarcie moich oczu. Tutaj, wez to za nagrode.

	CreateInvItems	(hero, ItMi_Gold, 100);
	CreateInvItems	(hero, ItMi_Nugget, 5);

	B_ShowGivenThings	("100 zlota i 5 sztuk konserwowanej rudy");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Cathran_Pickpocket (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_Pickpocket_Condition;
	information	= Info_Mod_Cathran_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Cathran_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

	Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_BACK, Info_Mod_Cathran_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cathran_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cathran_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cathran_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cathran_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cathran_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cathran_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cathran_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cathran_EXIT (C_INFO)
{
	npc		= Mod_1025_KGD_Cathran_MT;
	nr		= 1;
	condition	= Info_Mod_Cathran_EXIT_Condition;
	information	= Info_Mod_Cathran_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cathran_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cathran_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
