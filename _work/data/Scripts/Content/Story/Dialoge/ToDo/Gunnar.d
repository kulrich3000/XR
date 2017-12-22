INSTANCE Info_Mod_Gunnar_Hi (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Hi_Condition;
	information	= Info_Mod_Gunnar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Gunnar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gunnar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gunnar_Hi_10_01"); //I'm Gunnar, farmer by trade.
};

INSTANCE Info_Mod_Gunnar_Unheil (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Unheil_Condition;
	information	= Info_Mod_Gunnar_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Has anything out of the ordinary happened lately?";
};

FUNC INT Info_Mod_Gunnar_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Unheil_15_00"); //Has anything out of the ordinary happened lately?
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_01"); //Well, apart from the hordes of monsters in the area, nothing unusual.
	AI_Output(hero, self, "Info_Mod_Gunnar_Unheil_15_02"); //Well, that's all right.
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_03"); //Only the constant hailstorms that ruin our harvest, the sheep only give us acid milk and the constant illnesses on the farm this season.
	AI_Output(self, hero, "Info_Mod_Gunnar_Unheil_10_04"); //Mary in particular has been suffering from severe infirmity for several days. Even Sagitta's herbalism could not help her. Yeah, but everything else is normal.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Gunnar reported hail showers, acidic sheep's milk and health problems on the farm this season.");

	if (!Npc_KnowsInfo(hero, Info_Mod_Bobo_Unheil))
	{
		B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Maria has been seriously ill for a few days now.");
	};

	Mod_HinweiseDerBauernZuHexen += 1;
};

INSTANCE Info_Mod_Gunnar_Dieb (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Dieb_Condition;
	information	= Info_Mod_Gunnar_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gotcha!";
};

FUNC INT Info_Mod_Gunnar_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Onar_Dieb))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_BIGFARM_KITCHEN_04"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Dieb_15_00"); //Gotcha!
	AI_Output(self, hero, "Info_Mod_Gunnar_Dieb_10_01"); //Shit, let's get out of here!

	B_LogEntry	(TOPIC_MOD_BAUER_DIEB, "I caught Gunnar stealing stuff from the storeroom.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	self.flags = 2;
};

INSTANCE Info_Mod_Gunnar_Flucht (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Flucht_Condition;
	information	= Info_Mod_Gunnar_Flucht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Now you're not leaving.";
};

FUNC INT Info_Mod_Gunnar_Flucht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gunnar_Dieb))
	&& (Hlp_StrCmp(Npc_GetNearestWP(self), "NW_BIGFARM_FELDREUBER4"))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gunnar_Flucht_Info()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_15_00"); //Now you're not leaving.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_10_01"); //Uh... what do you want from me? I didn't do anything.
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_15_02"); //You think I'm stupid? I saw you stealing stuff from the warehouse.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_10_03"); //D... There must be some mistake. I didn't steal anything.

	self.flags = 0;
	
	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	Info_AddChoice	(Info_Mod_Gunnar_Flucht, "If you share the booty with me, I won't betray you.", Info_Mod_Gunnar_Flucht_Teilen);
	Info_AddChoice	(Info_Mod_Gunnar_Flucht, "If you won't tell me anything, I'll beat it out of you.", Info_Mod_Gunnar_Flucht_Attacke);
};

FUNC VOID Info_Mod_Gunnar_Flucht_Teilen()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_Teilen_15_00"); //If you share the loot with me, I will not betray you.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_Teilen_10_01"); //Okay, I don't think I have a choice. Here's your share.

	CreateInvItems	(hero, ItFo_MuttonRaw, 10);
	CreateInvItems	(hero, ItFo_Cheese, 3);
	CreateInvItems	(hero, ItFo_Water, 5);

	B_ShowGivenThings	("10 raw meat, 3 cheese and 5 water obtained");

	Mod_Gunnar_Partner = TRUE;

	B_SetTopicStatus	(TOPIC_MOD_BAUER_DIEB, LOG_FAILED);

	AI_StopProcessInfos	(self);

	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	B_StartOtherRoutine	(self, "START");
};

FUNC VOID Info_Mod_Gunnar_Flucht_Attacke()
{
	AI_Output(hero, self, "Info_Mod_Gunnar_Flucht_Attacke_15_00"); //If you won't tell me anything, I'll beat it out of you.
	AI_Output(self, hero, "Info_Mod_Gunnar_Flucht_Attacke_10_01"); //Let's take a look first.
	
	CreateInvItems	(self, ItKe_Mod_Gunnar_Dieb, 1);
	
	AI_StopProcessInfos	(self);

	Info_ClearChoices	(Info_Mod_Gunnar_Flucht);

	B_StartOtherRoutine	(self, "START");

	B_Attack	(self, hero, AR_NONE, 0);
};

INSTANCE Info_Mod_Gunnar_Pickpocket (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_Pickpocket_Condition;
	information	= Info_Mod_Gunnar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Gunnar_Pickpocket_Condition()
{
	C_Beklauen	(20, ItMi_Gold, 10);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

	Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_BACK, Info_Mod_Gunnar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gunnar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gunnar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gunnar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gunnar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gunnar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gunnar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gunnar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gunnar_EXIT (C_INFO)
{
	npc		= Mod_785_BAU_Gunnar_NW;
	nr		= 1;
	condition	= Info_Mod_Gunnar_EXIT_Condition;
	information	= Info_Mod_Gunnar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gunnar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gunnar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
