INSTANCE Info_Mod_Ulf_Hi (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_Hi_Condition;
	information	= Info_Mod_Ulf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Ulf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulf_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Ulf_Hi_28_01"); //I'm Ulf, my job is to sell the monastery's wine here in town.
};

INSTANCE Info_Mod_Ulf_WieGehts (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_WieGehts_Condition;
	information	= Info_Mod_Ulf_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How are you doing?";
};

FUNC INT Info_Mod_Ulf_WieGehts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulf_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_00"); //How are you doing?
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_01"); //I'm worried about acahash.
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_02"); //Who's Akahasch?
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_03"); //He is also a novice of the monastery, who was supposed to bring me a shipment of wine, but he has not yet arrived here.
	AI_Output(self, hero, "Info_Mod_Ulf_WieGehts_28_04"); //Can you tell me when you find him?
	AI_Output(hero, self, "Info_Mod_Ulf_WieGehts_15_05"); //Okay.
};

INSTANCE Info_Mod_Ulf_AkahaschTot (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_AkahaschTot_Condition;
	information	= Info_Mod_Ulf_AkahaschTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found Akahasch.";
};

FUNC INT Info_Mod_Ulf_AkahaschTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_WieGehts))
	&& ((Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	|| (Npc_KnowsInfo(hero, Info_Mod_Akahasch_AtKloster)))
	&& (Npc_HasItems(hero, ItMi_Weinlieferung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ulf_AkahaschTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_00"); //I found Akahasch.
	AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_01"); //Where's he at?

	if (Npc_IsDead(Mod_4016_NOV_Akahasch_NW))
	{
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_02"); //He's dead.
		AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_03"); //With Innos, is that true? What's happening?
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_04"); //I tripped over his body near the lighthouse. He had this on him.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Ulf_AkahaschTot_15_05"); //He's back in the monastery. Here's his wine.
	};

	B_GiveInvItems	(hero, self, ItMi_Weinlieferung, 1);

	AI_Output(self, hero, "Info_Mod_Ulf_AkahaschTot_28_06"); //At least the wine is saved. Take that as a thank you for your efforts.

	B_GivePlayerXP	(100);

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Ulf_Pickpocket (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_Pickpocket_Condition;
	information	= Info_Mod_Ulf_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Ulf_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

	Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_BACK, Info_Mod_Ulf_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ulf_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ulf_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ulf_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ulf_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ulf_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ulf_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ulf_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ulf_EXIT (C_INFO)
{
	npc		= Mod_753_NOV_Ulf_NW;
	nr		= 1;
	condition	= Info_Mod_Ulf_EXIT_Condition;
	information	= Info_Mod_Ulf_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ulf_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ulf_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
