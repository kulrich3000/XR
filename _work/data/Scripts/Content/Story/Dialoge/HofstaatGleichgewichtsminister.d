INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Hi (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Hi_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have to see the secretary.";
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatJaeger_Drogenminister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_00"); //I have to see the secretary.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_01"); //You're wrong about me, I'm the Minister of Equilibrium.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_02"); //I know, but the hunter told me you could help me get to the secretary of drugs.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_03"); //I guess he's right. But only if you can tell me the code word.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Hi_15_04"); //Let me guess.... Bananarama?
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Hi_01_05"); //Right. Come on, let's go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DROGENMINISTER");
	B_StartOtherRoutine	(Mod_7289_HS_Jaeger_REL, "START");
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Drogenminister (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatGleichgewichtsminister_Hi))
	&& (Npc_GetDistToWP(self, "REL_301") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_00"); //So, man, you just need to calm down.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_01"); //Okay.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_02"); //Just feel the wind flow through you and become one with you.
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_03"); //All right, all right.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_04"); //You have to be firm like the stone and yet flexible like the reed, you know?
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_05"); //More or less.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_06"); //That's good news. Then take your target into your eyes and...
	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_07"); //Go over the rope?
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_08"); //TO THE SKY DOES NOT WANT TO BULL! You'll break your neck.
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_09"); //Here's the key to the ladder. The door is at the foot of the other hill.

	B_GiveInvItems	(self, hero, ItKe_HSDM, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_15_10"); //What?! Then why did we go up here again?!
	AI_Output(self, hero, "Info_Mod_HofstaatGleichgewichtsminister_Drogenminister_01_11"); //I like it up here.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The Minister of Equilibrium has given me the key to a door in the opposite mountain, where there is to be a ladder leading up to the Minister of Drugs.");
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_Pickpocket (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatGleichgewichtsminister_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatGleichgewichtsminister_EXIT (C_INFO)
{
	npc		= Mod_7287_HS_Gleichgewichtsminister_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatGleichgewichtsminister_EXIT_Condition;
	information	= Info_Mod_HofstaatGleichgewichtsminister_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatGleichgewichtsminister_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatGleichgewichtsminister_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
