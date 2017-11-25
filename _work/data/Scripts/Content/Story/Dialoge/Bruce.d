INSTANCE Info_Mod_Bruce_KesselProblem (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem_Condition;
	information	= Info_Mod_Bruce_KesselProblem_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bruce_KesselProblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lee_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem_Info()
{
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_00"); //(....) Huhä, wykonalem fantastyczna prace.
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem_15_01"); //(gardlo w wózkach)
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_02"); //Zaskoczony) Hmm, huh....? Hej, jaki jestes facetem?
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem_15_03"); //Po prostu rozgladam sie dookola.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_04"); //Tak, zrób to dla mnie. Nie sprawiaj jednak zadnych klopotów. Jesli tego nie zrobisz, zaweze Ci glowe.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_05"); //Tak jak..... podobnie jak ten biegnik cieni, który ostatnio wyruszylem w góry. Widzisz? Siersc realnej biegacza cieni.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_06"); //bestia.... uh, czy zjesc harcerza, huh? Ale bylem po prostu zbyt madry.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem_06_07"); //Wiec kazdy dostal to, na co zasluzyl. (smiertelnicy zabrudzeni

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Znalazlem najemnika Bruce' a przy wejsciu do basenu. On wydaje sie byc dosc pijany i pochwalil sie samozadowoleniem z futra uciekajacego cieniem, który podobno zjadl poszukiwacza. Wydawal sie bardzo zabawny.");
};

INSTANCE Info_Mod_Bruce_KesselProblem2 (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem2_Condition;
	information	= Info_Mod_Bruce_KesselProblem2_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Bruce_KesselProblem2_Condition()
{
	if (Wld_IsTime(20,00,24,00))
	&& (Mod_NL_TalkesselProblem >= 1)
	&& (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Fester_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem2_Info()
{
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem2_06_00"); //Hej, po prostu piechota.
};

INSTANCE Info_Mod_Bruce_KesselProblem3 (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_KesselProblem3_Condition;
	information	= Info_Mod_Bruce_KesselProblem3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Masz juz pewne rzeczy, których nie powinienes miec w swoim posiadaniu.";
};

FUNC INT Info_Mod_Bruce_KesselProblem3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_KesselProblem))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bruce_KesselProblem3_Info()
{
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem3_15_00"); //Masz juz pewne rzeczy, których nie powinienes miec w swoim posiadaniu.
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem3_06_01"); //Co masz na mysli?
	AI_Output(hero, self, "Info_Mod_Bruce_KesselProblem3_15_02"); //Cóz, mam na mysli na przyklad rdestnice bagnista i....
	AI_Output(self, hero, "Info_Mod_Bruce_KesselProblem3_06_03"); //Po prostu pomieszales sie z niewlasciwym facetem.

	CreateInvItems	(self, ItWr_KesselProblem, 1);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bruce_Pickpocket (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_Pickpocket_Condition;
	information	= Info_Mod_Bruce_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Bruce_Pickpocket_Condition()
{
	C_Beklauen	(95, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

	Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_BACK, Info_Mod_Bruce_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bruce_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bruce_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bruce_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bruce_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bruce_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bruce_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bruce_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bruce_EXIT (C_INFO)
{
	npc		= Mod_1289_SLD_Bruce_MT;
	nr		= 1;
	condition	= Info_Mod_Bruce_EXIT_Condition;
	information	= Info_Mod_Bruce_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bruce_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bruce_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
