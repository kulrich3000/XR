INSTANCE Info_Mod_Ruediger_Hi (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Hi_Condition;
	information	= Info_Mod_Ruediger_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you sitting here alone?";
};

FUNC INT Info_Mod_Ruediger_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruediger_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Hi_15_00"); //Why are you sitting here alone?
	AI_Output(self, hero, "Info_Mod_Ruediger_Hi_09_01"); //I'm waiting for someone who's interested in a good game to come by.
};

INSTANCE Info_Mod_Ruediger_WasFuerSpiel (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_WasFuerSpiel_Condition;
	information	= Info_Mod_Ruediger_WasFuerSpiel_Info;
	permanent	= 0;
	important	= 0;
	description	= "And what kind of game is this?";
};

FUNC INT Info_Mod_Ruediger_WasFuerSpiel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_WasFuerSpiel_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_WasFuerSpiel_15_00"); //And what kind of game is this?
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_01"); //It has no fixed name. I call it the race game. But some, especially those who have drunk too much, also like to call it Schagby.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_02"); //Each of the two players has a number of monsters on the field.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_03"); //The monsters face each other and the goal is to move their own tile behind the opponent's row.
	AI_Output(self, hero, "Info_Mod_Ruediger_WasFuerSpiel_09_04"); //How about a game?
};

INSTANCE Info_Mod_Ruediger_HabKeineFiguren (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_HabKeineFiguren_Condition;
	information	= Info_Mod_Ruediger_HabKeineFiguren_Info;
	permanent	= 0;
	important	= 0;
	description	= "Stop - I don't have any checkers!";
};

FUNC INT Info_Mod_Ruediger_HabKeineFiguren_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_WasFuerSpiel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_HabKeineFiguren_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_HabKeineFiguren_15_00"); //Stop - I don't have any checkers!
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_01"); //That can be changed.

	B_ShowGivenThings	("Get beginner's set");

	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_02"); //This is the beginner's constellation, five standard pieces.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_03"); //There are ten figures in total, from which the player can choose five new figures for each game.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_04"); //However, I don't even have all the different pieces myself.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_05"); //You can only receive them if you defeat those masters who invented them yourself.
	AI_Output(self, hero, "Info_Mod_Ruediger_HabKeineFiguren_09_06"); //But with the first five figures you are already well served.

	Log_CreateTopic	(TOPIC_MOD_SCHAGBY, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_SCHAGBY, "Schagby is a boardgame, which is a tactical placement of monster figures. I have received five pieces, but there are ten in total, which I can win from the masters of the game.");

	PlayerHas_Troll = 1;
	PlayerHas_Schaf = 1;
	PlayerHas_Bloodfly = 1;
	PlayerHas_Snapper = 1;
	PlayerHas_Meatbug = 1;
};

INSTANCE Info_Mod_Ruediger_Regeln (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Regeln_Condition;
	information	= Info_Mod_Ruediger_Regeln_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are the rules of the game?";
};

FUNC INT Info_Mod_Ruediger_Regeln_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Regeln_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Regeln_15_00"); //What are the rules of the game?
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_01"); //The positioning of the figures takes place alternately.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_02"); //The randomly chosen first player chooses a piece and places it somewhere on his attack line, then the other player continues his first piece and so on until both games have placed all his pieces.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_03"); //Then the actual game begins. All pieces must be moved in each turn.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_04"); //Each tile has different abilities; I'll show you during the game.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_05"); //Once a player has moved all the pieces, it's up to his opponent.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_06"); //If, during the game, one piece hits another on its target field, the attacking stone wins and the underlying piece is removed from the game.
	AI_Output(self, hero, "Info_Mod_Ruediger_Regeln_09_07"); //The player who first succeeds in moving one of his monsters to the darkened row behind the enemy's line of attack wins.

	B_LogEntry	(TOPIC_MOD_SCHAGBY, "Gameplay: The positioning of the figures takes place alternately. The randomly chosen first player chooses a piece and places it somewhere on his attack line, then the other player continues his first piece and so on until both games have placed all his pieces. Then the actual game begins. All pieces must be moved in each turn. Each tile has different abilities. Once a player has moved all the pieces, it's up to his opponent. If, during the game, one piece hits another on its target field, the attacking stone wins and the underlying piece is removed from the game. The player who first succeeds in moving one of his monsters to the darkened row behind the enemy's line of attack wins.");
};

INSTANCE Info_Mod_Ruediger_Preis (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Preis_Condition;
	information	= Info_Mod_Ruediger_Preis_Info;
	permanent	= 0;
	important	= 0;
	description	= "At what price is it played?";
};

FUNC INT Info_Mod_Ruediger_Preis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Preis_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Preis_15_00"); //At what price is it played?
	AI_Output(self, hero, "Info_Mod_Ruediger_Preis_09_01"); //The price is negotiable. Since you're a freshman, we shouldn't be playing for too much gold.
	AI_Output(self, hero, "Info_Mod_Ruediger_Preis_09_02"); //If you manage to win against me once, I would give you the character that is my own creation.
};

INSTANCE Info_Mod_Ruediger_Meister (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Meister_Condition;
	information	= Info_Mod_Ruediger_Meister_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where can I find the masters?";
};

FUNC INT Info_Mod_Ruediger_Meister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_HabKeineFiguren))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Meister_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Meister_15_00"); //Where can I find the masters?
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_01"); //There's one right in front of you. I designed the stone guard. Granted, I can't really be proud of him.
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_02"); //I can't tell you exactly where the other masters are. However, the best chance to find them is in inns.
	AI_Output(self, hero, "Info_Mod_Ruediger_Meister_09_03"); //As much as you get around, you'll find a few more.
};

FUNC VOID B_MG_Start_Ruediger()
{
	MG_CurrentOpp = MG_GEGNER_RUEDIGER;

	FF_Apply(B_MG_GameLoop);
};

INSTANCE Info_Mod_Ruediger_Spielstart01 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart01_Condition;
	information	= Info_Mod_Ruediger_Spielstart01_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play a game.";
};

FUNC INT Info_Mod_Ruediger_Spielstart01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Regeln))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ruediger_Preis))
	&& (MG_Ruediger_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_15_00"); //Let's play a game.
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_09_01"); //Gladly. The stake is ten gold coins. The winner receives everything.

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);

	Info_AddChoice	(Info_Mod_Ruediger_Spielstart01, "I'm a little clammy right now....", Info_Mod_Ruediger_Spielstart01_B);
	Info_AddChoice	(Info_Mod_Ruediger_Spielstart01, "I'll take my chances.", Info_Mod_Ruediger_Spielstart01_A);
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_B()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_B_15_00"); //I'm a little clammy right now....
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_B_09_01"); //No problem, I'm sitting here even longer.

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);
};

FUNC VOID Info_Mod_Ruediger_Spielstart01_A()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart01_A_15_00"); //I'll take my chances.
	AI_Output(self, hero, "Info_Mod_Ruediger_Spielstart01_A_09_01"); //May the one with the better tactics win!

	Info_ClearChoices	(Info_Mod_Ruediger_Spielstart01);

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende01 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende01_Condition;
	information	= Info_Mod_Ruediger_Spielende01_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende01_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende01_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_00"); //Short defeat. But with a little practice, it could be something else.

		B_GiveInvItems	(hero, self, ItMi_Gold, 10);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_01"); //Damn it! I'm so stupid, too!

		B_GiveInvItems	(self, hero, ItMi_Gold, 10);

		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_02"); //It was mostly luck, but I have to keep my promise and give you a stone guard token.

		B_ShowGivenThings	("Maintain stone guard figure");

		PlayerHas_Stoneguardian = 1;

		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_03"); //You seem like an equal opponent to me.
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende01_09_04"); //Are you up for another round of double betting?

		B_GivePlayerXP	(100);

		MG_Ruediger_Runde = 1;
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_36);
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Spielstart02 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart02_Condition;
	information	= Info_Mod_Ruediger_Spielstart02_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play another game with a double stake.";
};

FUNC INT Info_Mod_Ruediger_Spielstart02_Condition()
{
	if (MG_Ruediger_Runde >= 1)
	&& (MG_Ruediger_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart02_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart02_15_00"); //Let's play another game with a double stake.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende02 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende02_Condition;
	information	= Info_Mod_Ruediger_Spielende02_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende02_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde >= 1)
	&& (MG_Ruediger_Runde < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende02_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_00"); //I knew your first win was undeserved!

		if (MG_Ruediger_Runde == 1)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 20);
		}
		else if (MG_Ruediger_Runde == 2)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 40);
		}
		else if (MG_Ruediger_Runde == 3)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 80);
		}
		else if (MG_Ruediger_Runde == 4)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 160);
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_01"); //There's no such thing! I'm surprised again!

		if (MG_Ruediger_Runde == 1)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 20);
		}
		else if (MG_Ruediger_Runde == 2)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 40);
		}
		else if (MG_Ruediger_Runde == 3)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 80);
		}
		else if (MG_Ruediger_Runde == 4)
		{
			B_GiveInvItems	(self, hero, ItMi_Gold, 160);
		};

		if (MG_Ruediger_Runde < 4)
		{
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_02"); //You're a quick study. But it would be laughing if I couldn't keep up.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_03"); //Enough, enough! Enough is enough!
			AI_Output(self, hero, "Info_Mod_Ruediger_Spielende02_09_04"); //This isn't fun anymore. From now on, I won't play gold with you.
		};

		B_GivePlayerXP	(50);

		MG_Ruediger_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Spielstart03 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielstart03_Condition;
	information	= Info_Mod_Ruediger_Spielstart03_Info;
	permanent	= 1;
	important	= 0;
	description	= "Let's play another game.";
};

FUNC INT Info_Mod_Ruediger_Spielstart03_Condition()
{
	if (MG_Ruediger_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielstart03_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruediger_Spielstart03_15_00"); //Let's play another game.
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);

	AI_Function (self, B_MG_Start_Ruediger);
};

INSTANCE Info_Mod_Ruediger_Spielende03 (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Spielende03_Condition;
	information	= Info_Mod_Ruediger_Spielende03_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ruediger_Spielende03_Condition()
{
	if (MG_SiegState > 0)
	&& (MG_CurrentOpp == MG_GEGNER_RUEDIGER)
	&& (MG_Ruediger_Runde >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruediger_Spielende03_Info()
{
	if (MG_SiegState == 2)
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_00"); //I knew your first win was undeserved!
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_01"); //There's no such thing! I'm surprised again!
		AI_Output(self, hero, "Info_Mod_Ruediger_Spielende03_09_02"); //You're a quick study. But it would be laughing if I couldn't keep up.

		MG_Ruediger_Runde += 1;
	};

	MG_SiegState = 0;
	MG_CurrentOpp = 0;
};

INSTANCE Info_Mod_Ruediger_Pickpocket (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_Pickpocket_Condition;
	information	= Info_Mod_Ruediger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ruediger_Pickpocket_Condition()
{
	C_Beklauen	(86, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

	Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_BACK, Info_Mod_Ruediger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ruediger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ruediger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ruediger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ruediger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ruediger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ruediger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ruediger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ruediger_EXIT (C_INFO)
{
	npc		= Mod_7762_OUT_Ruediger_REL;
	nr		= 1;
	condition	= Info_Mod_Ruediger_EXIT_Condition;
	information	= Info_Mod_Ruediger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ruediger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruediger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
