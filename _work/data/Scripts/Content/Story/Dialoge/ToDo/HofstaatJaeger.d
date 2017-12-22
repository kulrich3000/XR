INSTANCE Info_Mod_HofstaatJaeger_Hi (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Hi_Condition;
	information	= Info_Mod_HofstaatJaeger_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you the hunter?";
};

FUNC INT Info_Mod_HofstaatJaeger_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatBarde_Sporen))
	&& ((!Npc_KnowsInfo(hero, Info_Mod_Namib_Sporen))
	|| (Npc_KnowsInfo(hero, Info_Mod_Namib_Motivation)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_00"); //Are you the hunter?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_01"); //Well, do I look like that?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_02"); //Well... you're certainly not a conventional hunter...
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_03"); //AAAAAHA! I've caught you! You work for the convention!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_04"); //The convention? What's this?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_05"); //That's what I was going to ask you, because you're working for her...
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_06"); //Are you the hunter or not?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_07"); //Oh, you know, if you think it's great and believe strongly, then you can be AAAAAALLY anything you want.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_08"); //Everything? Then tell me if you're the hunter or not!
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_09"); //So you're looking for the hunter? He's not here right now.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_10"); //Not here?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_11"); //Jop.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_12"); //And where is he?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_13"); //Vacation.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_14"); //When will he be back?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_15"); //Not at all.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_16"); //Not at all?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_17"); //Jop.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_18"); //...
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_19"); //(humming)
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_20"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_21"); //Er hat unbefristeten Vacation.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_22"); //Then he was released?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_23"); //If he was fired, he could hardly have a vacation.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_24"); //Oh, forget about it.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_25"); //Okay. Oh yes, if you meet the hunter, tell him this from me:"Bananarama"
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_26"); //Bananarama?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_27"); //Who told you that?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_28"); //You?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_29"); //Why would I have told you the code word?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_30"); //Well, so I can tell the hunter.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_31"); //Hello.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_32"); //WHAT' S THE MATTER WITH YOU?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_33"); //Don't stress me, I'm on vacation!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_34"); //You have robbery.... let me guess. You're the hunter?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_35"); //WHERE DO YOU KNOW THAT?!?!?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_36"); //Cut the bullshit. The King sent me.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_37"); //The King?! What does he want?
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Hi_15_38"); //I want you to show me the way to the secretary of drugs.
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Hi_09_39"); //Ah... Well, come with me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DROGENMINISTER");

	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Motivation))
	{
		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I went to see the hunter, and he's gonna take me to the secretary of drugs now.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "I decided to go to the royal court and visit the hunter. This one leads me to the secretary of drugs now.");
	};
};

INSTANCE Info_Mod_HofstaatJaeger_Drogenminister (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Drogenminister_Condition;
	information	= Info_Mod_HofstaatJaeger_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatJaeger_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatJaeger_Hi))
	&& (Npc_GetDistToWP(self, "REL_301") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_00"); //We are here!
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_01"); //So that's where the secretary of drugs lives?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_02"); //Yeah.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_03"); //How do I get over there?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_04"); //Oh, you want to be on the other side?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_05"); //Then you can either try to get there via the rope and break your neck, or you can go to the Minister of Equilibrium and have yourself transferred.
	AI_Output(hero, self, "Info_Mod_HofstaatJaeger_Drogenminister_15_06"); //And where do I find the Minister of Equilibrium?
	AI_Output(self, hero, "Info_Mod_HofstaatJaeger_Drogenminister_09_07"); //I'll take you there.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GLEICHGEWICHTSMINISTER");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The Minister of Drugs lives at the summit near the fortress. From this hill only a rope leads to him, but running over it would be the certain death. The hunter's taking me to the equilibrium minister, who was supposed to take me over.");
};

INSTANCE Info_Mod_HofstaatJaeger_Pickpocket (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_Pickpocket_Condition;
	information	= Info_Mod_HofstaatJaeger_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatJaeger_Pickpocket_Condition()
{
	C_Beklauen	(55, ItAt_Claw, 3);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatJaeger_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatJaeger_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatJaeger_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatJaeger_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatJaeger_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatJaeger_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatJaeger_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatJaeger_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatJaeger_EXIT (C_INFO)
{
	npc		= Mod_7289_HS_Jaeger_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatJaeger_EXIT_Condition;
	information	= Info_Mod_HofstaatJaeger_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatJaeger_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatJaeger_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
