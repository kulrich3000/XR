INSTANCE Info_Mod_Ole_Aufgabe (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Aufgabe_Condition;
	information	= Info_Mod_Ole_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cathran mysli, ze moge zarobic troche zlota.";
};

FUNC INT Info_Mod_Ole_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Hi))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Aufgabe_15_00"); //Cathran mysli, ze moge zarobic troche zlota.
	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_01"); //Oh, to wlasnie ma na mysli. Wszystko w porzadku, ale nie moge ci na to wiele dac.
	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_02"); //Musisz udac sie do Pana Andre dla mnie i dac mu ten list.

	B_GiveInvItems	(self, hero, ItWr_OleForAndre, 1);

	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_03"); //Oto 50 zlotych monet.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_04"); //Kiedy dasz mi odpowiedz, bedziemy mówic o wiekszej ilosci zlota.

	Log_CreateTopic	(TOPIC_MOD_KG_OLEBRIEF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_OLEBRIEF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_OLEBRIEF, "Ole dal mi list do Pana Andre' a. Wielki....");
};

INSTANCE Info_Mod_Ole_WarBeiAndre (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_WarBeiAndre_Condition;
	information	= Info_Mod_Ole_WarBeiAndre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostarczylem list do Pana Andre' a.";
};

FUNC INT Info_Mod_Ole_WarBeiAndre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Ole))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_WarBeiAndre_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_00"); //Dostarczylem list do Pana Andre' a.
	AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_01"); //Cóz, co ci powiedzial?
	AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_02"); //Powiedzial, ze nie da ci nowych ludzi, dopóki nie wydobedziesz ponownie rudy, a na znak tego trzeba przywiezc mu 50 kawalków rudy.
	AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_03"); //Nie mamy juz nawet dwóch klódek rudy w obozie i jak mam oczyscic kopalnie bez wiekszej ilosci ludzi i rudy kopalni?

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (hero.guild != GIL_MIL)
	&& (Gardist_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_04"); //Ah.... Mam to teraz. Jak dla nas pracujesz?
		AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_05"); //Jesli mam prawo do wynagrodzenia, to jestem.
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_06"); //Nie martwcie sie, gdy kopalnia bedzie juz gotowa i bedziecie plywali w zlocie.
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_07"); //Pancerz ten mozna uznac za przedplate.

		B_GiveInvItems	(self, hero, ItAr_KG_01, 1);

		KG_Dabei = 1;

		Mod_AnzahlNebengilden += 1;
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_66);

		Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Ole wzial mnie do straznika królewskiego.");
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_08"); //Cóz, chyba bedziemy musieli po prostu znalezc kogos, a nie najemnika.
	}
	else if (Gardist_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_09"); //Cóz, chyba bedziemy musieli znalezc kogos, kto nie bedzie w starym obozie.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_10"); //Cóz, chyba bedziemy musieli znalezc kogos, kto nie jest tak zajety jak ty.
	};

	B_SetTopicStatus	(TOPIC_MOD_KG_OLEBRIEF, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Ole_Vorbereitungen (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Vorbereitungen_Condition;
	information	= Info_Mod_Ole_Vorbereitungen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co mam dla ciebie zrobic?";
};

FUNC INT Info_Mod_Ole_Vorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_WarBeiAndre))
	&& (KG_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Vorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Vorbereitungen_15_00"); //Co mam dla ciebie zrobic?
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_01"); //Musimy naprawic kopalnie.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_02"); //Poprosilem o to Bramrada, Granmara i Melcadora, ale to nie idzie dalej.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_03"); //Chce, aby pomagal pan im w wykonywaniu ich pracy.

	Log_CreateTopic	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_VORBEREITUNGEN, "Kopalnia wymaga naprawy. Bramradowi, Granmarowi i Melcadorowi zleca sie to zadanie, ale najwyrazniej nie posuwaja sie one do przodu. Ole chce, abym sie tym zajela.");
};

INSTANCE Info_Mod_Ole_Vorbereitungen2 (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Vorbereitungen2_Condition;
	information	= Info_Mod_Ole_Vorbereitungen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Pomagalem kazdemu z nich.";
};

FUNC INT Info_Mod_Ole_Vorbereitungen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Vorbereitungen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Vorbereitungen2_15_00"); //Pomagalem kazdemu z nich.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_01"); //Teraz mozemy wreszcie rozpoczac badania kopalni.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_02"); //Wykonal pan bardzo dobra prace. Od teraz otrzymujesz zamówienia bezposrednio od firmy Hymir.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_03"); //Oh, jeszcze jedno: zarobiles te zbroje.

	CreateInvItems	(hero, SSLD_ARMOR, 1);

	B_ShowGivenThings	(ConcatStrings(SSLD_ARMOR.name, " uzyskiwany"));

	B_SetTopicStatus	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Ole_ErzAnteil (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_ErzAnteil_Condition;
	information	= Info_Mod_Ole_ErzAnteil_Info;
	permanent	= 1;
	important	= 0;
	description	= "Jestem tu po to, by zebrac moja czesc rudy.";
};

FUNC INT Info_Mod_Ole_ErzAnteil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_MineFertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_ErzAnteil_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_ErzAnteil_15_00"); //Jestem tu po to, by zebrac moja czesc rudy.

	if (Wld_GetDay()-6 > Mod_KG_OleErz)
	{
		AI_Output(self, hero, "Info_Mod_Ole_ErzAnteil_02_01"); //Oto Twój udzial.

		B_GiveInvItems	(self, hero, ItMi_Nugget, 10+r_max(5));

		Mod_KG_OleErz = Wld_GetDay();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ole_ErzAnteil_02_02"); //Swoja rude dostales juz w tym tygodniu.
	};
};

INSTANCE Info_Mod_Ole_InGilde (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_InGilde_Condition;
	information	= Info_Mod_Ole_InGilde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak dostales sie do Gwardii Królewskiej?";
};

FUNC INT Info_Mod_Ole_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_InGilde_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_InGilde_15_00"); //Jak dostales sie do Gwardii Królewskiej?
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_01"); //Dobre pytanie. Dzis prawdopodobnie podjalbym dzis inna decyzje niz wczesniej, ale musicie zyc zgodnie z waszymi decyzjami.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_02"); //Kiedys bylem milicja miejska w Khorinis, az król postanowil rozpoczac wielkie polowanie na rude w Minental. Wiec zostalem przydzielony do strazy królewskiej i pozwolono mi czuwac nad powaznymi przestepcami tutaj w Minentalu.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_03"); //Na szczescie, kiedy bariera zostala utworzona, bylem na bladzie w Khorinis. Podobnie jak wszyscy, którzy byli w tym czasie w Minetalu, zostali zabici przez wiezniów.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_04"); //Z kilkoma straznikami królewskimi, którzy przezyli, król nie mógl oczywiscie wygrac, ale potrzebowal zródla rudy, które nie zalezalo od uczuc wiezniów i dlatego zalozylismy ten obóz w jego imieniu.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_05"); //Ale to nie zrobilo wiele dobrego. Widzisz, jak to wszystko jest tutaj.
	AI_Output(hero, self, "Info_Mod_Ole_InGilde_15_06"); //Dlaczego król nigdy nie wspiera cie dodatkowymi oddzialami?
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_07"); //No cóz, to prawdopodobnie z powodu wojny w Myrtanie i on prawdopodobnie nawet nie wie, ze juz zyjemy.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_08"); //Prawdopodobnie juz dawno temu pisal.
};

INSTANCE Info_Mod_Ole_Pickpocket (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Pickpocket_Condition;
	information	= Info_Mod_Ole_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ole_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Ole_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

	Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_BACK, Info_Mod_Ole_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ole_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ole_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
};

FUNC VOID Info_Mod_Ole_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ole_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ole_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ole_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ole_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ole_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ole_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ole_EXIT (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_EXIT_Condition;
	information	= Info_Mod_Ole_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ole_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ole_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
