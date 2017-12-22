INSTANCE Info_Mod_Fellan_Hi (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Hi_Condition;
	information	= Info_Mod_Fellan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Fellan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fellan_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Fellan_Hi_08_01"); //Don't bother me. I have to figure out how to keep it from raining in my house.
};

INSTANCE Info_Mod_Fellan_Regenproblem (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Regenproblem_Condition;
	information	= Info_Mod_Fellan_Regenproblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "It's raining in your house?";
};

FUNC INT Info_Mod_Fellan_Regenproblem_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_Regenproblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_15_00"); //It's raining in your house?
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_08_01"); //Yeah. Looks like there's a hole somewhere. What am I gonna do now?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);

	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "I can't help you there either.", Info_Mod_Fellan_Regenproblem_B);
	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "Ever heard of boards and nails?", Info_Mod_Fellan_Regenproblem_A);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_B()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_B_15_00"); //I can't help you there either.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_B_08_01"); //What am I gonna do?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_A()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_A_15_00"); //Ever heard of boards and nails?
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_A_08_01"); //Uh... now that you're saying it...
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_A_15_02"); //You'll need a hammer.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_A_08_03"); //Where do I get it back from?

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);

	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "That's your problem.", Info_Mod_Fellan_Regenproblem_D);
	Info_AddChoice	(Info_Mod_Fellan_Regenproblem, "I'll get you one.", Info_Mod_Fellan_Regenproblem_C);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_D()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_D_15_00"); //That's your problem.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_D_08_01"); //(sighs) I'll probably drown in my own house.

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

FUNC VOID Info_Mod_Fellan_Regenproblem_C()
{
	AI_Output(hero, self, "Info_Mod_Fellan_Regenproblem_C_15_00"); //I'll get you one.
	AI_Output(self, hero, "Info_Mod_Fellan_Regenproblem_C_08_01"); //Really? That would be great.

	Log_CreateTopic	(TOPIC_MOD_FELLAN_REGEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FELLAN_REGEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FELLAN_REGEN, "Fellan seems to have a problem with the roof of his house. I told him he needs boards and nails to fix it, but he doesn't even have a hammer. I agreed to get him a hammer.");

	Fellan_Hammer = 1;

	Info_ClearChoices	(Info_Mod_Fellan_Regenproblem);
};

INSTANCE Info_Mod_Fellan_HabHammer (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_HabHammer_Condition;
	information	= Info_Mod_Fellan_HabHammer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a hammer.";
};

FUNC INT Info_Mod_Fellan_HabHammer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_Regenproblem))
	&& (Npc_HasItems(hero, ItMi_Hammer) > 0)
	&& (Fellan_Hammer == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_HabHammer_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_HabHammer_15_00"); //Here's a hammer.

	B_GiveInvItems	(hero, self, ItMi_Hammer, 1);

	AI_Output(self, hero, "Info_Mod_Fellan_HabHammer_08_01"); //Thank you, then I'm going to start closing this hole.

	B_LogEntry	(TOPIC_MOD_FELLAN_REGEN, "Fellan now has a hammer and wants to start closing the hole.");
	B_SetTopicStatus	(TOPIC_MOD_FELLAN_REGEN, LOG_SUCCESS);

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(self, "REPAIR");

	CurrentNQ += 1;

	Npc_SetRefuseTalk (self, 60);
};

INSTANCE Info_Mod_Fellan_NochAmHaemmern (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_NochAmHaemmern_Condition;
	information	= Info_Mod_Fellan_NochAmHaemmern_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you still not done fixing it?";
};

FUNC INT Info_Mod_Fellan_NochAmHaemmern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fellan_HabHammer))
	&& (Npc_RefuseTalk(self) == FALSE)
	&& (Kapitel >= 2)
	&& (Mod_WilfriedsQuest >= 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_Info()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_15_00"); //Are you still not done fixing it?
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_08_01"); //Oh, it's desperate. Sometimes I miss, then the nail bends.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_08_02"); //Sometimes I hit too hard, then the surrounding boards break too.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_08_03"); //I am fortunate to say that this great body that wants to be my house is still standing.

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);

	Info_AddChoice	(Info_Mod_Fellan_NochAmHaemmern, "I can't help you there either.", Info_Mod_Fellan_NochAmHaemmern_B);
	Info_AddChoice	(Info_Mod_Fellan_NochAmHaemmern, "I know one thing.", Info_Mod_Fellan_NochAmHaemmern_A);
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_B()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_B_15_00"); //I can't help you there either.

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern_A()
{
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_A_15_00"); //I know one thing.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_A_08_01"); //Oh, and where?
	AI_Output(hero, self, "Info_Mod_Fellan_NochAmHaemmern_A_15_02"); //On the other side of the port. Wilfried used to live there, but it's... died.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern_A_08_03"); //Well, thanks for the tip. I'm gonna have to ask around.

	B_GivePlayerXP	(50);

	Mod_Fellan_Day = Wld_GetDay();

	Mod_Fellan_Umzug = 1;

	Info_ClearChoices	(Info_Mod_Fellan_NochAmHaemmern);
};

INSTANCE Info_Mod_Fellan_NochAmHaemmern2 (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_NochAmHaemmern2_Condition;
	information	= Info_Mod_Fellan_NochAmHaemmern2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fellan_NochAmHaemmern2_Condition()
{
	if (Mod_Fellan_Umzug == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_NochAmHaemmern2_Info()
{
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern2_08_00"); //Well, shit. It rained in here last night.
	AI_Output(self, hero, "Info_Mod_Fellan_NochAmHaemmern2_08_01"); //Apparently hammering is my destiny until the end of my day.
};

INSTANCE Info_Mod_Fellan_Flugblaetter (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Flugblaetter_Condition;
	information	= Info_Mod_Fellan_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Fellan_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Fellan_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fellan_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Fellan_Flugblaetter_08_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Fellan_Flugblaetter_08_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Fellan_Pickpocket (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_Pickpocket_Condition;
	information	= Info_Mod_Fellan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fellan_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

	Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_BACK, Info_Mod_Fellan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fellan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fellan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fellan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fellan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fellan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fellan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fellan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fellan_EXIT (C_INFO)
{
	npc		= Mod_574_NONE_Fellan_NW;
	nr		= 1;
	condition	= Info_Mod_Fellan_EXIT_Condition;
	information	= Info_Mod_Fellan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fellan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fellan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
