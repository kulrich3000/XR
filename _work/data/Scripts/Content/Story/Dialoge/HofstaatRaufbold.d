INSTANCE Info_Mod_HofstaatRaufbold_Hi (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Hi_Condition;
	information	= Info_Mod_HofstaatRaufbold_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Hi_13_00"); //Hello!

	AI_StopProcessInfos	(self);

	Mod_HS_Raufbold = 1;

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_HofstaatRaufbold_KoenigSorge (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_KoenigSorge_Condition;
	information	= Info_Mod_HofstaatRaufbold_KoenigSorge_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_KoenigSorge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_Drogenminister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_KoenigSorge_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_00"); //Stop, you can't go any further here. The king's by the river worrying.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_01"); //He doesn't want to be disturbed, especially not by a girl for everything.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_KoenigSorge_15_02"); //Royal girl for everything, if I may ask, and I am not. I've become a royal sweep!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_03"); //Anyway, you can't get through here. It's a royal order.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_KoenigSorge_15_04"); //I spanked you once before, and I'm happy to do it again.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigSorge_13_05"); //Look, I've only got three different narcotics in me right now.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_HofstaatRaufbold_KoenigHilfe (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_KoenigHilfe_Condition;
	information	= Info_Mod_HofstaatRaufbold_KoenigHilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_KoenigHilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatKoenig_Sorge))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_KoenigHilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_00"); //The king worries... We have to do something.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_01"); //You should visit the royal oracle, it will tell you how to make the king happy again!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_02"); //I'm going to take the river that makes the king sad!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_KoenigHilfe_13_03"); //One of us must succeed and believe me, this river will wish it had never been born.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The roughneck advised me to visit the royal oracle. I wonder where I can find it.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUSSFIGHT");
};

INSTANCE Info_Mod_HofstaatRaufbold_Meer (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Meer_Condition;
	information	= Info_Mod_HofstaatRaufbold_Meer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_Meer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meer_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_00"); //You have won.... Did you find the answer?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_01"); //Wait a minute, how did you get out of the river?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_02"); //An otter family saved me! But that doesn't matter now. Speak up, what did you see?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_03"); //The swamp. In the old Minental. He claimed to be the answer.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_04"); //Of course! It's clear as daylight! The swamp is the answer. To what, actually?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_15_05"); //The king wished for a sea. Maybe there's a way to make the swamp part of the state.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_13_06"); //WE' LL CONQUER HIM! If this makes the king happy again, we will slaughter everything that is in the way and take the swamp with us.

	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "The river said you smelled.", Info_Mod_HofstaatRaufbold_Meer_D);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Whatever you take, take less... or more.", Info_Mod_HofstaatRaufbold_Meer_C);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "How fast can you actually run from here to town?", Info_Mod_HofstaatRaufbold_Meer_B);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Meer, "Shut up and let me do that.", Info_Mod_HofstaatRaufbold_Meer_A);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_D()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_D_15_00"); //The river said you smelled.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_D_13_01"); //You still don't have enough, goddamn river?
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_C()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_C_15_00"); //Whatever you take, take less... or more.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_C_13_01"); //I'll start right away!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_B_15_00"); //How fast can you actually run from here to town? Run upstairs, I'll save your time!
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_B_13_01"); //You think I'm that stupid jumping at something like this or what?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_B_15_02"); //One, two, three, four...
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_B_13_03"); //I haven't run off yet!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RENNEN");
};

FUNC VOID Info_Mod_HofstaatRaufbold_Meer_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_Meer_A_15_00"); //Shut up and let me do that.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_Meer_A_13_01"); //What impudence! As punishment, you must forego my further company!
	
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Meer);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_HofstaatRaufbold_Pickpocket (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_Pickpocket_Condition;
	information	= Info_Mod_HofstaatRaufbold_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatRaufbold_Pickpocket_Condition()
{
	C_Beklauen	(53, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatRaufbold_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatRaufbold_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatRaufbold_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatRaufbold_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatRaufbold_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatRaufbold_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatRaufbold_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatRaufbold_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatRaufbold_EXIT (C_INFO)
{
	npc		= Mod_7284_HS_Raufbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_EXIT_Condition;
	information	= Info_Mod_HofstaatRaufbold_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatRaufbold_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
