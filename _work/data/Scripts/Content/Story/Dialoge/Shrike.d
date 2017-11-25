INSTANCE Info_Mod_Shrike_Hi (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Hi_Condition;
	information	= Info_Mod_Shrike_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, Patrick kazal ci zatrzymac sie przy jego miejscu na treningu.";
};

FUNC INT Info_Mod_Shrike_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Training))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_15_00"); //Hey, Patrick kazal ci zatrzymac sie przy jego miejscu na treningu.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_07_01"); //Ale ja tego nie czuje.

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Shrike_Hi, "Otrzymasz takze 100 zlotych monet.", Info_Mod_Shrike_Hi_B);
	};
	Info_AddChoice	(Info_Mod_Shrike_Hi, "Wtedy bede musial cie do niego poprowadzic moimi ciosami.", Info_Mod_Shrike_Hi_A);
};

FUNC VOID Info_Mod_Shrike_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_B_15_00"); //Otrzymasz takze 100 zlotych monet.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_B_07_01"); //Na 100 zlotych monet nie postawie nawet stopy przed jaskinia.

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Shrike_Hi, "Okay, jak okolo 200 zlotych monet?", Info_Mod_Shrike_Hi_C);
	};
	Info_AddChoice	(Info_Mod_Shrike_Hi, "Wtedy bede musial cie do niego poprowadzic moimi ciosami.", Info_Mod_Shrike_Hi_A);
};

FUNC VOID Info_Mod_Shrike_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_A_15_00"); //Wtedy bede musial cie do niego poprowadzic moimi ciosami.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_A_07_01"); //Czyz? Dlaczego nie spróbowac?

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Shrike_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_C_15_00"); //Okay, jak okolo 200 zlotych monet?
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_C_07_01"); //200 zlotych monet! Dobrze, daj mi to!

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(hero, self, "Info_Mod_Shrike_Hi_C_15_02"); //A co teraz z tym?
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_C_07_03"); //Nic nie jest. Dostalem wasze zloto, ale jeszcze nie ruszam na skaly.

	Info_Mod_Shrike_Hi_A();
};

INSTANCE Info_Mod_Shrike_Umgehauen (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Umgehauen_Condition;
	information	= Info_Mod_Shrike_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shrike_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shrike_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_00"); //Och, moje kosci. Jestes synem suki....
			AI_Output(hero, self, "Info_Mod_Shrike_Umgehauen_15_01"); //Co zrobic, zeby cos wiecej rozmawiac?
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_02"); //(niechec) Tak, juz wyjezdzam....

			Mod_SLD_Shrike = 1;

			B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Okay, Shrike pobil i jest na jego drodze do zobaczenia Patryka.");

			B_StartOtherRoutine	(self, "SMOKING");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_03"); //Slabe strony.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Shrike_NoSmokingNow (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_NoSmokingNow_Condition;
	information	= Info_Mod_Shrike_NoSmokingNow_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy nie powiedzialem ci, zebys poszedl do praktyki?";
};

FUNC INT Info_Mod_Shrike_NoSmokingNow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_SindAlleDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_NoSmokingNow_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrike_NoSmokingNow_15_00"); //Czy nie powiedzialem ci, zebys poszedl do praktyki?
	AI_Output(self, hero, "Info_Mod_Shrike_NoSmokingNow_07_01"); //Co? Och, gówno, to ty. Tak, od razu bede w drodze.

	AI_StopProcessInfos	(self);

	Mod_SLD_Shrike = 2;

	B_StartOtherRoutine	(self, "PATRICK");
};

INSTANCE Info_Mod_Shrike_Pickpocket (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Pickpocket_Condition;
	information	= Info_Mod_Shrike_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Shrike_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

	Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_BACK, Info_Mod_Shrike_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shrike_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shrike_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shrike_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shrike_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shrike_EXIT (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_EXIT_Condition;
	information	= Info_Mod_Shrike_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shrike_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrike_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
