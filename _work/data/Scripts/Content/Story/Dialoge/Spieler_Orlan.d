INSTANCE Info_Mod_Spieler_Orlan_Hi (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Hi_Condition;
	information	= Info_Mod_Spieler_Orlan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's the game before you on the table?";
};

FUNC INT Info_Mod_Spieler_Orlan_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_Hi_15_00"); //What's the game before you on the table?
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Hi_01_01"); //Are you suggesting you don't know Shagby?
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_Hi_15_02"); //I haven't played it yet, no. Can you explain the rules to me?
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Hi_01_03"); //Not now, no. I only play with experienced players.
};

INSTANCE Info_Mod_Spieler_Orlan_RuedigerBesiegt (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_RuedigerBesiegt_Condition;
	information	= Info_Mod_Spieler_Orlan_RuedigerBesiegt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Fancy a game of shagby?";
};

FUNC INT Info_Mod_Spieler_Orlan_RuedigerBesiegt_Condition()
{
	if (MG_Ruediger_Runde >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_RuedigerBesiegt_Info()
{
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_15_00"); //Fancy a game of shagby?
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_01_01"); //You know the game?
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_15_02"); //Sure. I already defeated Rüdiger.
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_01_03"); //Rüdiger, the whistle. Did his incredible stone guard scare you?
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_15_04"); //That's what happened.
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_01_05"); //Anyway, he can't compete with my creation.
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_15_06"); //You're one of the masters, too?
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_01_07"); //Oh, yeah. My rabbit creates completely new tactical possibilities for the player through his agility.
	AI_Output(self, hero, "Info_Mod_Spieler_Orlan_RuedigerBesiegt_01_08"); //If you still dare, I'll show it to you. The bet is 15 gold coins.
};

FUNC VOID B_MG_Start_Spieler_Orlan()
{
	MG_CurrentOpp = MG_GEGNER_SPIELER_ORLAN;

	FF_Apply(B_MG_GameLoop);
};

INSTANCE Info_Mod_Spieler_Orlan_Spielstart01 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielstart01_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielstart01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play.";
};

FUNC INT Info_Mod_Spieler_Orlan_Spielstart01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Spieler_Orlan_RuedigerBesiegt))
	&& (MG_Spieler_Orlan_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielstart01_Info()
{
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_Spielstart01_15_00"); //Let's play.

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Spieler_Orlan);
};

INSTANCE Info_Mod_Spieler_Orlan_Spielende01 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielende01_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielende01_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Spieler_Orlan_Spielende01_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_Spieler_Orlan)
	&& (MG_Spieler_Orlan_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielende01_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende01_01_00"); //What can you expect if Rüdiger was your teacher?

		B_GiveInvItems	(hero, self, ItMi_Gold, 15);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende01_01_01"); //Oh, that's bullshit! I completely missed it!
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende01_01_02"); //That's never gonna happen to me.

		B_GiveInvItems	(self, hero, ItMi_Gold, 15);

		AI_Output(hero, hero, "Info_Mod_Spieler_Orlan_Spielende01_15_03"); //Now you still owe me that bunny piece, or am I wrong?

		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende01_01_04"); //I can't give it to you with a clear conscience after this stroke of luck.
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende01_01_05"); //You're gonna have to prove to me first that you've got some real talent. With a double commitment.

		B_GivePlayerXP	(100);

		MG_Spieler_Orlan_Runde = 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Spieler_Orlan_Spielstart02 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielstart02_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielstart02_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play another game with a double stake.";
};

FUNC INT Info_Mod_Spieler_Orlan_Spielstart02_Condition()
{
	if (MG_Spieler_Orlan_Runde >= 1)
	&& (MG_Spieler_Orlan_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielstart02_Info()
{
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_Spielstart02_15_00"); //Let's play another game with a double stake.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Spieler_Orlan);
};

INSTANCE Info_Mod_Spieler_Orlan_Spielende02 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielende02_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielende02_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Spieler_Orlan_Spielende02_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_Spieler_Orlan)
	&& (MG_Spieler_Orlan_Runde >= 1)
	&& (MG_Spieler_Orlan_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielende02_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende02_01_00"); //You don't have to come this way.

		if (MG_Spieler_Orlan_Runde == 1)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 30);
		}
		else if (MG_Spieler_Orlan_Runde == 2)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 60);
		}
		else if (MG_Spieler_Orlan_Runde == 3)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 120);
		}
		else if (MG_Spieler_Orlan_Runde == 4)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 240);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende02_01_01"); //What a disgrace! It wouldn't have happened to me on better days.

		if (MG_Spieler_Orlan_Runde == 1)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 30);

			B_ShowGivenThings	("Receive bunny figure");

			PlayerHas_Hase = 1;
		}
		else if (MG_Spieler_Orlan_Runde == 2)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 60);
		}
		else if (MG_Spieler_Orlan_Runde == 3)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 120);
		}
		else if (MG_Spieler_Orlan_Runde == 4)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 240);
		};

		if (MG_Spieler_Orlan_Runde == 4)
		{
			AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende02_01_02"); //All right, all right, you're the better of both of us.
			AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende02_01_03"); //Before I play with you again for money, I have to pull something out of the farmer's socks.
		};

		B_GivePlayerXP	(50);

		MG_Spieler_Orlan_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Spieler_Orlan_Spielstart03 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielstart03_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielstart03_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play another game.";
};

FUNC INT Info_Mod_Spieler_Orlan_Spielstart03_Condition()
{
	if (MG_Spieler_Orlan_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielstart03_Info()
{
	AI_Output(hero, self, "Info_Mod_Spieler_Orlan_Spielstart03_15_00"); //Let's play another game.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Spieler_Orlan_Spielstart03);

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Spieler_Orlan);
};

INSTANCE Info_Mod_Spieler_Orlan_Spielende03 (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Spielende03_Condition;
	information	= Info_Mod_Spieler_Orlan_Spielende03_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Spieler_Orlan_Spielende03_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_Spieler_Orlan)
	&& (MG_Spieler_Orlan_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Spielende03_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende03_01_00"); //You don't have to come this way.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Spieler_Orlan_Spielende03_01_01"); //What a disgrace! It wouldn't have happened to me on better days.

		MG_Spieler_Orlan_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Spieler_Orlan_Pickpocket (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_Pickpocket_Condition;
	information	= Info_Mod_Spieler_Orlan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Spieler_Orlan_Pickpocket_Condition()
{
	C_Beklauen	(86, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);

	Info_AddChoice	(Info_Mod_Spieler_Orlan_Pickpocket, DIALOG_BACK, Info_Mod_Spieler_Orlan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Spieler_Orlan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Spieler_Orlan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);

		Info_AddChoice	(Info_Mod_Spieler_Orlan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Spieler_Orlan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Spieler_Orlan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Spieler_Orlan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Spieler_Orlan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Spieler_Orlan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Spieler_Orlan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Spieler_Orlan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Spieler_Orlan_EXIT (C_INFO)
{
	npc		= Mod_7804_VLK_Spieler_NW;
	nr		= 1;
	condition	= Info_Mod_Spieler_Orlan_EXIT_Condition;
	information	= Info_Mod_Spieler_Orlan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Spieler_Orlan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Spieler_Orlan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
