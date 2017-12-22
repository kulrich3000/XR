INSTANCE Info_Mod_Endolf_Hi (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Hi_Condition;
	information	= Info_Mod_Endolf_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Endolf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Endolf_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_00"); //Support at last. The last time the creatures attacked, we lost another man.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_01"); //How long have these persistent crawler attacks been going on?
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_02"); //Only recently. It started out of nowhere, all of a sudden. Nasty, stinking creatures.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_03"); //Every time we sent our boys out to slaughter them, just as many came after a short time.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_04"); //A few hours ago there were so many of them that they overrun us, some of our boys died.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_05"); //We had to retreat and barricaded ourselves here.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_06"); //Well, I guess I'll have to investigate on my own about the threat posed by the stinking crawlers.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_07"); //Well, you'd really help us with that down here. That always so many of the animals to follow will probably mean that....
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_08"); //... There must be a nest here.
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_09"); //Well, when the barrier was still standing, you were in the mine...
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_10"); //(nervous) But this has drawn wide circles, the thing with the mine of the old camp.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_11"); //And now I'm supposed to go it alone with all the crawler queens on the whole of Khorinis...
	AI_Output(self, hero, "Info_Mod_Endolf_Hi_09_12"); //And we'll hold here as long as we can. Good luck to you.
	AI_Output(hero, self, "Info_Mod_Endolf_Hi_15_13"); //Grmpf, you too...

	B_LogEntry	(TOPIC_MOD_NL_CRAWLER, "Oh, great. This time I am allowed to go alone as usual to find the origin of the stinking crawlers. Might be a Minecrawler queen again....");
};

INSTANCE Info_Mod_Endolf_Gormgniez (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Gormgniez_Condition;
	information	= Info_Mod_Endolf_Gormgniez_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Endolf_Gormgniez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gormgniez_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Endolf_Gormgniez_Info()
{
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_00"); //And, could you find the source of all this evil and destroy it?
	AI_Output(hero, self, "Info_Mod_Endolf_Gormgniez_15_01"); //Yes, I succeeded.
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_02"); //Excellent, then the work can now continue calmly.
	AI_Output(self, hero, "Info_Mod_Endolf_Gormgniez_09_03"); //Here, take this ore as a thank you.
	
	B_GiveInvItems	(self, hero, ItMi_Nugget, 10);

	B_GivePlayerXP	(400);
};

INSTANCE Info_Mod_Endolf_Pickpocket (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_Pickpocket_Condition;
	information	= Info_Mod_Endolf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Endolf_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Nugget, 2);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

	Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_BACK, Info_Mod_Endolf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Endolf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Endolf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Endolf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Endolf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Endolf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Endolf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Endolf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Endolf_EXIT (C_INFO)
{
	npc		= Mod_1590_SLD_Endolf_FM;
	nr		= 1;
	condition	= Info_Mod_Endolf_EXIT_Condition;
	information	= Info_Mod_Endolf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Endolf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Endolf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
