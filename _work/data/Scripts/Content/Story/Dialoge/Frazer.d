INSTANCE Info_Mod_Frazer_Hi (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Hi_Condition;
	information	= Info_Mod_Frazer_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co Pan tutaj robi?";
};

FUNC INT Info_Mod_Frazer_Hi_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_01"); //Stojac wokól, od czasu do czasu drapie moja torbe. (smiech szorstki)
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_02"); //No cóz, mam tu miec oko na chlopaków, ale co sie stanie? (pauza)
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_03"); //Czekaj minute, gdy jestes tutaj.... zabrac to od razu szefowi, czy móglbys?
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_04"); //Wtedy nie musze chodzic caly czas, co jest naprawde ekscytujace.

	B_GiveInvItems	(self, hero, ItMi_ErzPaketFrazer, 10);

	AI_Output(hero, self, "Info_Mod_Frazer_Hi_15_05"); //Co.....? uh..... Kim jest szef?
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_06"); //Oczywiscie Anselm! Potrzebujemy tego, aby odbudowac instalacje wodociagowa. Albo cos.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_ERZPAKETE, "Frazer nagle wcisnal do ramion mnie 10 opakowan rudy, które mialem przyniesc Anselmowi w Khoracie.");
};

INSTANCE Info_Mod_Frazer_Endres (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres_Condition;
	information	= Info_Mod_Frazer_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy masz pomysl, kto mógl zabic Endów?";
};

FUNC INT Info_Mod_Frazer_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres_15_00"); //Czy masz pomysl, kto mógl zabic Endów?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres_29_01"); //Wlasciwie kazdy poszukiwacz jest opcja. I inaczej..... nie pytaj mnie.
};

INSTANCE Info_Mod_Frazer_Endres02 (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres02_Condition;
	information	= Info_Mod_Frazer_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kto przejal prace Endów?";
};

FUNC INT Info_Mod_Frazer_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norman_Endres))
	&& (Npc_KnowsInfo(hero, Info_Mod_Roman_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_00"); //Kto przejal prace Endów?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_01"); //Dlaczego chcesz wiedziec? Czy zamierzacie uczynic go blogoslawienstwem takze dla doczesnych?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_02"); //Nie, ze wzgledów bezpieczenstwa nie zdradzimy nowego szefa.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_03"); //Co musze zrobic, abys dal mi imie?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_04"); //Musze miec pewnosc, ze nie chcesz mu krzywdzic.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_05"); //Obietnica prawdopodobnie nie wystarczy dla ciebie?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_06"); //Haha. Hmm..... dowód twojej lojalnosci.... Wszystko w porzadku, to przypomina mi o tym, ze caluj mnie!
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_07"); //Co?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_08"); //Ahahaha, zart. Wystarczy mi troche papieru z Anselm, na który on kupuje dla Ciebie.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_09"); //Zobacze, co moge zrobic.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Frazer z kopalni powie mi, kto odziedziczyl pozycje Endresa tylko wtedy, gdy otrzymal zapewnienie od Anselm, ze moge byc zaufany.");
};

INSTANCE Info_Mod_Frazer_Endres03 (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres03_Condition;
	information	= Info_Mod_Frazer_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Z Anselm dla Ciebie.";
};

FUNC INT Info_Mod_Frazer_Endres03_Condition()
{
	if (Npc_HasItems(hero, ItWr_AnselmForFrazer) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_00"); //Z Anselm dla Ciebie.

	B_GiveInvItems	(hero, self, ItWr_AnselmForFrazer, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_01"); //Joa, wszystko w porzadku. Potem wpuszcze cie na to.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_02"); //No cóz, Wendel zajal oczywiscie miejsce Endresa. Tylko on jest do tego uprawniony.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_03"); //Mam jeszcze jedno pytanie: dlaczego chcesz wiedziec?
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_04"); //Wendel jest teraz podejrzany.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_05"); //(spodzianka) Spirala? Nie sadze, aby tak bylo.... Ale tak, to by mialo sens....
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_06"); //Zobaczymy to.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel skorzystal na smierci Endresa. Czy pozbyl sie rywala z morderstwem?");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Frazer_Pickpocket (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Pickpocket_Condition;
	information	= Info_Mod_Frazer_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Frazer_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

	Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_BACK, Info_Mod_Frazer_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Frazer_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Frazer_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Frazer_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Frazer_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Frazer_EXIT (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_EXIT_Condition;
	information	= Info_Mod_Frazer_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Frazer_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frazer_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
