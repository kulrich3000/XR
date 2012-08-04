INSTANCE Info_Mod_Pedro_Hi (C_INFO)
{
	npc		= Mod_7037_NOV_Pedro_NW;
	nr		= 1;
	condition	= Info_Mod_Pedro_Hi_Condition;
	information	= Info_Mod_Pedro_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer bist du?";
};

FUNC INT Info_Mod_Pedro_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Parlan_Ring))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pedro_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Pedro_Hi_09_01"); //Ich bin Pedro. Was willst du von mir?
};

INSTANCE Info_Mod_Pedro_Erwischt (C_INFO)
{
	npc		= Mod_7037_NOV_Pedro_NW;
	nr		= 1;
	condition	= Info_Mod_Pedro_Erwischt_Condition;
	information	= Info_Mod_Pedro_Erwischt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pedro_Erwischt_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pedro_Erwischt_Info()
{
	AI_Output(self, hero, "Info_Mod_Pedro_Erwischt_09_00"); //Was willst du hier?
	AI_Output(hero, self, "Info_Mod_Pedro_Erwischt_15_01"); //Du hast Parlan seinen Feuerring gestohlen.
	AI_Output(self, hero, "Info_Mod_Pedro_Erwischt_09_02"); //Na und?
	AI_Output(hero, self, "Info_Mod_Pedro_Erwischt_15_03"); //Er will ihn wieder haben.	
	AI_Output(self, hero, "Info_Mod_Pedro_Erwischt_09_04"); //Dann komm und hol ihn dir.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_NONE, 1);
};

INSTANCE Info_Mod_Pedro_Niederlage (C_INFO)
{
	npc		= Mod_7037_NOV_Pedro_NW;
	nr		= 1;
	condition	= Info_Mod_Pedro_Niederlage_Condition;
	information	= Info_Mod_Pedro_Niederlage_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Pedro_Niederlage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Pedro_Erwischt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Pedro_Niederlage_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Pedro_Niederlage_09_00"); //Ok, du hast gewonnen.
			AI_Output(hero, self, "Info_Mod_Pedro_Niederlage_15_01"); //Gibst du mir jetzt den Ring?
			AI_Output(self, hero, "Info_Mod_Pedro_Niederlage_09_02"); //Hier ist er.

			B_LogEntry	(TOPIC_MOD_PARLAN_FEUERRING, "Nachdem ich Pedro eine Lektion erteilt habe hat er mir den Ring gegeben.");

			CreateInvItems	(self, ItRi_Feuerring_Parlan, 1);
			B_GiveInvItems	(self, hero, ItRi_Feuerring_Parlan, 1);

			B_Göttergefallen(1, 1);
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Pedro_Niederlage_09_03"); //Das hast du davon. Jetzt mach das du verschwindest.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Pedro_Pickpocket (C_INFO)
{
	npc		= Mod_7037_NOV_Pedro_NW;
	nr		= 1;
	condition	= Info_Mod_Pedro_Pickpocket_Condition;
	information	= Info_Mod_Pedro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Pedro_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Gold, 60);
};

FUNC VOID Info_Mod_Pedro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);

	Info_AddChoice	(Info_Mod_Pedro_Pickpocket, DIALOG_BACK, Info_Mod_Pedro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Pedro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Pedro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Pedro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);
};

FUNC VOID Info_Mod_Pedro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);

		Info_AddChoice	(Info_Mod_Pedro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Pedro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Pedro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Pedro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Pedro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Pedro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Pedro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Pedro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Pedro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Pedro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Pedro_EXIT (C_INFO)
{
	npc		= Mod_7037_NOV_Pedro_NW;
	nr		= 1;
	condition	= Info_Mod_Pedro_EXIT_Condition;
	information	= Info_Mod_Pedro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Pedro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Pedro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};