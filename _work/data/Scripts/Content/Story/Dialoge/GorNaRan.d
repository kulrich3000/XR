INSTANCE Info_Mod_GorNaRan_Urs (C_INFO)
{
	npc		= Mod_2009_TPL_GorNaRan_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaRan_Urs_Condition;
	information	= Info_Mod_GorNaRan_Urs_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaRan_Urs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Darrion_Urs))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaRan_Urs_Info()
{
	AI_Output(self, hero, "Info_Mod_GorNaRan_Urs_13_00"); //Ahh, ostrze z blogoslawionej stali.
	AI_Output(self, hero, "Info_Mod_GorNaRan_Urs_13_01"); //Zobaczmy, czy mozna lepiej kontrolowac naturalne magiczne impulsy.
	AI_Output(self, hero, "Info_Mod_GorNaRan_Urs_13_02"); //Spróbuje to wypróbowac na tej wyjatkowo upartej bylinie.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "STAUDE");

	Wld_InsertNpc	(Alraune_Sumpfis,	"PATH_AROUND_PSI09");
};

INSTANCE Info_Mod_GorNaRan_Urs2 (C_INFO)
{
	npc		= Mod_2009_TPL_GorNaRan_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaRan_Urs2_Condition;
	information	= Info_Mod_GorNaRan_Urs2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_GorNaRan_Urs2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaRan_Urs))
	&& (Npc_IsDead(Alraune_Sumpfis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaRan_Urs2_Info()
{
	AI_Output(self, hero, "Info_Mod_GorNaRan_Urs2_13_00"); //Swietnie, ostrze przechodzi przez ziolo jak maslo.
	AI_Output(self, hero, "Info_Mod_GorNaRan_Urs2_13_01"); //Mozesz wrócic do Darrion.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_GorNaRan_Hueterklinge (C_INFO)
{
	npc		= Mod_2009_TPL_GorNaRan_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaRan_Hueterklinge_Condition;
	information	= Info_Mod_GorNaRan_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "W jaki sposób dostales surowce do swojej ostrza opiekuna?";
};

FUNC INT Info_Mod_GorNaRan_Hueterklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Hueterklinge))
	&& (Mod_TPL_Hueterklinge == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_GorNaRan_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_GorNaRan_Hueterklinge_15_00"); //W jaki sposób dostales surowce do swojej ostrza opiekuna?
	AI_Output(self, hero, "Info_Mod_GorNaRan_Hueterklinge_13_01"); //Nie mialem o tym mówic.... ale raz bylem w panskiej sytuacji....
	AI_Output(self, hero, "Info_Mod_GorNaRan_Hueterklinge_13_02"); //Gatunki te potrzebuja wszystkich skladników, których nie mozna znalezc w zyciu?
	AI_Output(self, hero, "Info_Mod_GorNaRan_Hueterklinge_13_03"); //Krew, która przeplynela przez 4 serca i Lurkerklaue, który zabral zycie dziadka, ojca i syna, powinienem dostac!
	AI_Output(self, hero, "Info_Mod_GorNaRan_Hueterklinge_13_04"); //Przynieslismy kowalowi zwykla krew i zwykla czarownice!

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Gor Na Ran mówi, ze dostarczyl kowalowi zwykle skladniki dla swojego ostrza opiekuna. Warto byloby spróbowac.");
};

INSTANCE Info_Mod_GorNaRan_Pickpocket (C_INFO)
{
	npc		= Mod_2009_TPL_GorNaRan_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaRan_Pickpocket_Condition;
	information	= Info_Mod_GorNaRan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_GorNaRan_Pickpocket_Condition()
{
	C_Beklauen	(117, ItMi_Gold, 39);
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);

	Info_AddChoice	(Info_Mod_GorNaRan_Pickpocket, DIALOG_BACK, Info_Mod_GorNaRan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_GorNaRan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_GorNaRan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);

		Info_AddChoice	(Info_Mod_GorNaRan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_GorNaRan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_GorNaRan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_GorNaRan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_GorNaRan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_GorNaRan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_GorNaRan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_GorNaRan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_GorNaRan_EXIT (C_INFO)
{
	npc		= Mod_2009_TPL_GorNaRan_MT;
	nr		= 1;
	condition	= Info_Mod_GorNaRan_EXIT_Condition;
	information	= Info_Mod_GorNaRan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_GorNaRan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_GorNaRan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
