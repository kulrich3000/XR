INSTANCE Info_Mod_Boltan_Hi (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Hi_Condition;
	information	= Info_Mod_Boltan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co tu stac na strazy?";
};

FUNC INT Info_Mod_Boltan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Boltan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_00"); //Co tu stac na strazy?
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_01"); //Najczesciej mój obiad.
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_02"); //Brzmi jak zrelaksowana praca.
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_03"); //Jest to tu najbardziej popularna praca. Jesli nie chcesz treningu.
	AI_Output(hero, self, "Info_Mod_Boltan_Hi_15_04"); //Jestes szczesliwym facetem.
	AI_Output(self, hero, "Info_Mod_Boltan_Hi_30_05"); //Tak, czlowiek. Szczesliwa kanalia.
};

INSTANCE Info_Mod_Boltan_ZellenBelegt (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_ZellenBelegt_Condition;
	information	= Info_Mod_Boltan_ZellenBelegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak czesto zajete sa komórki?";
};

FUNC INT Info_Mod_Boltan_ZellenBelegt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hi)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_ZellenBelegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_ZellenBelegt_15_00"); //Jak czesto zajete sa komórki?
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_01"); //Co jakis czas ktos przychodzi na kilka dni. Matteo byl tam Matteo, gówno dla swoich klientów, Valentino byl tam, pobil pijanego Coragona.
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_02"); //Ale od dawna nie bylo nic powaznego. Moze to sie teraz zmieni.
	AI_Output(hero, self, "Info_Mod_Boltan_ZellenBelegt_15_03"); //Dlaczego cos mialoby sie zmienic?
	AI_Output(self, hero, "Info_Mod_Boltan_ZellenBelegt_30_04"); //Nie wiem, ze wszyscy przestepcy sa z Mentala. Latwo je zablokowac.
};

INSTANCE Info_Mod_Boltan_WasGeht (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_WasGeht_Condition;
	information	= Info_Mod_Boltan_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robisz caly czas?";
};

FUNC INT Info_Mod_Boltan_WasGeht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_Hi)) {
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_00"); //Co robisz caly czas?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_01"); //No cóz, wymyslalem historie.
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_02"); //Opowiesci?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_03"); //Tak, czlowiek, opowiesci. Gdybym byl bohaterem, to co bym widzial. Rycerz Boltan w walce z ogniem smoka, Rycerz Boltan niszczy Beliar.....
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_04"); //I to zapiszesz?
	AI_Output(self, hero, "Info_Mod_Boltan_WasGeht_30_05"); //Nah, nie potrafie pisac.
	AI_Output(hero, self, "Info_Mod_Boltan_WasGeht_15_06"); //Moze to lepiej.....
};

INSTANCE Info_Mod_Boltan_Daemonisch (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Daemonisch_Condition;
	information	= Info_Mod_Boltan_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tengron_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_Daemonisch_30_00"); //Hej, nie wolno mówic do wieznia....
	AI_Output(hero, self, "Info_Mod_Boltan_Daemonisch_15_01"); //Co? Ale....
	AI_Output(self, hero, "Info_Mod_Boltan_Daemonisch_30_02"); //Ulozenie niektórych paladyn. No cóz, to konczy rozmowe.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Piekny pelzanie, co mówi Tengron. Znaleziono paladynów i strazników, którzy stracili zycie w dolinie i nagle ujrzal sie otoczony dziesiatkami czarnych cieni rozrzuconych pod jego paladynowym swiatlem. Niestety, dekret niektórych paladynów uniemozliwil mi uczenie sie czegos wiecej.....");

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Boltan_Hilfe (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Hilfe_Condition;
	information	= Info_Mod_Boltan_Hilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Meldor))
	&& (Wld_GetDay() > Mod_Andre_WaitForKnast)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_Hilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_Hilfe_30_00"); //Wiec jestes gonna mnie ulzyc? Uwazaj, te dranie sa podstepne.
	AI_Output(hero, self, "Info_Mod_Boltan_Hilfe_15_01"); //Bede o tym pamietac.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "PAUSE");
};

INSTANCE Info_Mod_Boltan_TomKraut (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_TomKraut_Condition;
	information	= Info_Mod_Boltan_TomKraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Boltan_TomKraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Krautquest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_TomKraut_Info()
{
	AI_Output(self, hero, "Info_Mod_Boltan_TomKraut_30_00"); //(przerwania) Hej, Ty. Pan Andre kazal nam na razie nie mówic do wieznia.
	AI_Output(hero, self, "Info_Mod_Boltan_TomKraut_15_01"); //Ale....
	AI_Output(self, hero, "Info_Mod_Boltan_TomKraut_30_02"); //Nie, ale.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Ziolo jest prawdopodobnie w skrzynce dowodowej za Andre. Jednak kradziez nie zrobi nic dobrego. Bramistrzowie przy Bramie Wschodniej, w tym Mika, moga swiadczyc o tym, jak odebrali go od niego. Tomek wspomnial jeszcze inne ziolo, które powinno wygladac bardzo podobnie do rdestnicy, zanim Boltan zabronil nam kontynuowac rozmowe......");
};

INSTANCE Info_Mod_Boltan_HaradLehrling (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling_Condition;
	information	= Info_Mod_Boltan_HaradLehrling_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jeden z wiezniów zmarl!";
};

FUNC INT Info_Mod_Boltan_HaradLehrling_Condition()
{
	if (Mod_HaradLehrling_Kap4 == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling_15_00"); //Jeden z wiezniów zmarl!
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_01"); //Tak, to prawda. Dobrze obserwowane.
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling_15_02"); //Nie chcesz go wyprowadzic?
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_03"); //Tak dlugo, jak dlugo nie zmruknie lub nie bedziemy potrzebowali przestrzeni, moze zostac w celi.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling_30_04"); //Dopóki nie musze go dotykac.
};

INSTANCE Info_Mod_Boltan_HaradLehrling2 (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling2_Condition;
	information	= Info_Mod_Boltan_HaradLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak Harad umarl?";
};

FUNC INT Info_Mod_Boltan_HaradLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Boltan_HaradLehrling))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling2_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling2_15_00"); //Jak Harad umarl?
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_01"); //Mial sztylet z nim. On juz zlamal inna regule.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_02"); //Zabronione jest wciaganie do celki przedmiotów ostro zakonczonych.
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling2_30_03"); //No cóz, on i tak znalazlby sie w królestwie Beliara.
};

INSTANCE Info_Mod_Boltan_HaradLehrling3 (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_HaradLehrling3_Condition;
	information	= Info_Mod_Boltan_HaradLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mialem wyrwac Harada z wiezienia!";
};

FUNC INT Info_Mod_Boltan_HaradLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Harad_LehrlingQuest8))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_HaradLehrling))
	&& (Mod_HaradLehrling_Kap4 == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Boltan_HaradLehrling3_Info()
{
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling3_15_00"); //Mialem wyrwac Harada z wiezienia!
	AI_Output(self, hero, "Info_Mod_Boltan_HaradLehrling3_30_01"); //Tak? Kto wydal pozwolenie? Tengron? Panie Andre?
	AI_Output(hero, self, "Info_Mod_Boltan_HaradLehrling3_15_02"); //Nikt dotad nie....

	if (Mod_HaradLehrling_Boltan == 0)
	{
		Mod_HaradLehrling_Boltan = 1;

		B_LogEntry	(TOPIC_MOD_LEHRLING_HARAD_FOUR, "Potrzebuje zgody Pana Andre' a lub Tengrona, aby wyprowadzic Harada z wiezienia.");
	};
};

INSTANCE Info_Mod_Boltan_Pickpocket (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_Pickpocket_Condition;
	information	= Info_Mod_Boltan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Boltan_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

	Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_BACK, Info_Mod_Boltan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Boltan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Boltan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Boltan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Boltan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Boltan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Boltan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Boltan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Boltan_EXIT (C_INFO)
{
	npc		= Mod_564_MIL_Boltan_NW;
	nr		= 1;
	condition	= Info_Mod_Boltan_EXIT_Condition;
	information	= Info_Mod_Boltan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Boltan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Boltan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
