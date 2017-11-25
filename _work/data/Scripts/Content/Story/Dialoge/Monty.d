INSTANCE Info_Mod_Monty_Hi (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Hi_Condition;
	information	= Info_Mod_Monty_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you want to defeat the sleeper.";
};

FUNC INT Info_Mod_Monty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Monty_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_Hi_15_00"); //I hear you want to defeat the sleeper.
	AI_Output(self, hero, "Info_Mod_Monty_Hi_31_01"); //Right! Exactly! Stand with the others, I'm just telling them how I did it.
};

INSTANCE Info_Mod_Monty_KeinInteresse (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_KeinInteresse_Condition;
	information	= Info_Mod_Monty_KeinInteresse_Info;
	permanent	= 0;
	important	= 0;
	description	= "I don't care about the story.";
};

FUNC INT Info_Mod_Monty_KeinInteresse_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Monty_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_KeinInteresse_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_15_00"); //I don't care about the story.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_31_01"); //No? What then?
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_15_02"); //It was I who banished the sleeper back to his dimension.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_31_03"); //(laughs out loud) Ah, a joker! Hey, mate, this is my territory, all right?

	Log_CreateTopic	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_MISSION);

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "Either you disappear or it will hurt.", Info_Mod_Monty_KeinInteresse_B);
	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "All right, do what you want.", Info_Mod_Monty_KeinInteresse_A);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_B()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_B_15_00"); //Either you disappear or it will hurt.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_B_31_01"); //Just stay calm! I'm a little short on cash, what can I do?

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	if (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "You give me 50 gold and we'll call it even.", Info_Mod_Monty_KeinInteresse_E);
	};

	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "You don't want to see it without pain.", Info_Mod_Monty_KeinInteresse_D);
	Info_AddChoice	(Info_Mod_Monty_KeinInteresse, "All right, then. Go ahead.", Info_Mod_Monty_KeinInteresse_C);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_A()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_A_15_00"); //All right, do what you want.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_A_31_01"); //Thank you for your insight. Shit, I need the money.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "I'll let Monty tell his story. I'll stay out of this.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	Mod_MontyFake = 1;

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
};

FUNC VOID Info_Mod_Monty_KeinInteresse_E()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_E_15_00"); //You give me 50 gold and we'll call it even.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_E_31_01"); //That is a good compromise!

		B_GiveInvItems	(self, hero, ItMi_Gold, 50);

		B_RaiseHandelsgeschick (2);

		B_GivePlayerXP	(50);

		B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "I'll let Monty tell his story. I'll stay out of this.");
		B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

		Mod_MontyFake = 1;

		CurrentNQ += 1;

		Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_E_31_02"); //I don't have that much.
	};
};

FUNC VOID Info_Mod_Monty_KeinInteresse_D()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_D_15_00"); //You don't want to see it without pain.
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_MontyFake = 2;
};

FUNC VOID Info_Mod_Monty_KeinInteresse_C()
{
	AI_Output(hero, self, "Info_Mod_Monty_KeinInteresse_C_15_00"); //All right, then. Go ahead.
	AI_Output(self, hero, "Info_Mod_Monty_KeinInteresse_C_31_01"); //Thank you for your insight. Shit, I need the money.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "I'll let Monty tell his story. I'll stay out of this.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	Mod_MontyFake = 1;

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Monty_KeinInteresse);
};

INSTANCE Info_Mod_Monty_Pruegel (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Pruegel_Condition;
	information	= Info_Mod_Monty_Pruegel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Monty_Pruegel_Condition()
{
	if (Mod_MontyFake == 2)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	}
	else if (Mod_MontyFake == 2)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
	{
		B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_FAILED);
	};
};

FUNC VOID Info_Mod_Monty_Pruegel_Info()
{
	AI_Output(self, hero, "Info_Mod_Monty_Pruegel_31_00"); //I'm not saying anything anymore!

	Mod_MontyFake = 3;

	CurrentNQ += 1;

	B_LogEntry	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, "I couldn't let Monty go unpunished. That'll teach him a lesson.");
	B_SetTopicStatus	(TOPIC_MOD_MONTY_KONKURRENZKAMPF, LOG_SUCCESS);

	// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
	self.aivar[AIV_ArenaFight] = AF_NONE;
		
	// ------ AIVAR resetten! ------	
	self.aivar[AIV_LastFightComment] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1049_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1059_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1055_VLK_Buerger_NW, "START");
	B_StartOtherRoutine	(Mod_1065_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1073_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1072_VLK_Buergerin_NW, "START");
	B_StartOtherRoutine	(Mod_1044_VLK_Buerger_NW, "START");
};

INSTANCE Info_Mod_Monty_WieGehts (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_WieGehts_Condition;
	information	= Info_Mod_Monty_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's it going?";
};

FUNC INT Info_Mod_Monty_WieGehts_Condition()
{
	if (Kapitel >= 2)
	&& ((Mod_MontyFake == 1)
	|| (Mod_MontyFake == 3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_15_00"); //How's it going?

	if (Mod_MontyFake == 1)
	{
		AI_Output(self, hero, "Info_Mod_Monty_WieGehts_31_01"); //People pay for a good story. You should try it sometime.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Monty_WieGehts_31_02"); //Shut your mouth. Glad I can get a bite.

		Info_ClearChoices	(Info_Mod_Monty_WieGehts);

		Info_AddChoice	(Info_Mod_Monty_WieGehts, "Then don't get rich at the expense of others.", Info_Mod_Monty_WieGehts_B);

		if (Npc_HasItems(hero, ItFo_Bread) >= 1)
		{
			Info_AddChoice	(Info_Mod_Monty_WieGehts, "Here's some bread.", Info_Mod_Monty_WieGehts_A);
		};
	};
};

FUNC VOID Info_Mod_Monty_WieGehts_B()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_B_15_00"); //Then don't get rich at the expense of others.

	Info_ClearChoices	(Info_Mod_Monty_WieGehts);
};

FUNC VOID Info_Mod_Monty_WieGehts_A()
{
	AI_Output(hero, self, "Info_Mod_Monty_WieGehts_A_15_00"); //Here's some bread.

	B_GiveInvItems	(hero, self, ItFo_Bread, 1);

	AI_Output(self, hero, "Info_Mod_Monty_WieGehts_A_31_01"); //Thanks. That'll delay my death a few days.

	B_GivePlayerXP	(30);

	Info_ClearChoices	(Info_Mod_Monty_WieGehts);
};

INSTANCE Info_Mod_Monty_Flugblaetter (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Flugblaetter_Condition;
	information	= Info_Mod_Monty_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Monty_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Monty_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Monty_Flugblaetter_31_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Monty_Flugblaetter_31_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Monty_Pickpocket (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_Pickpocket_Condition;
	information	= Info_Mod_Monty_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Monty_Pickpocket_Condition()
{
	C_Beklauen	(34, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Monty_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

	Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_BACK, Info_Mod_Monty_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Monty_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Monty_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
};

FUNC VOID Info_Mod_Monty_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Monty_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Monty_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Monty_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Monty_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Monty_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Monty_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Monty_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Monty_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Monty_EXIT (C_INFO)
{
	npc		= Mod_741_NONE_Monty_NW;
	nr		= 1;
	condition	= Info_Mod_Monty_EXIT_Condition;
	information	= Info_Mod_Monty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Monty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Monty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
