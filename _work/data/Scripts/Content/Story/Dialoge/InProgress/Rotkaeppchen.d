INSTANCE Info_Mod_Rotkaeppchen_Hi (C_INFO)
{
	npc		= Mod_7556_OUT_Rotkaeppchen_REL;
	nr		= 1;
	condition	= Info_Mod_Rotkaeppchen_Hi_Condition;
	information	= Info_Mod_Rotkaeppchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your mother's worried about you.";
};

FUNC INT Info_Mod_Rotkaeppchen_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diana_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rotkaeppchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Rotkaeppchen_Hi_15_00"); //Your mother's worried about you.
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_Hi_19_01"); //I'm starting to worry too.
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_Hi_19_02"); //I feel like I've been haunted by a big wolf for some time now. He's back there, heading for the burned warehouse.
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_Hi_19_03"); //I don't dare to walk past him, so I run deeper and deeper into the forest.
	AI_Output(hero, self, "Info_Mod_Rotkaeppchen_Hi_15_04"); //I'm gonna take the wolf to my chest.

	Wld_InsertNpc	(Wolf_Rotkaeppchen,	"FP_SPAWN_ROTKAEPPCHENWOLF");
	
	B_LogEntry	(TOPIC_MOD_ROTKAEPPCHEN, "I found Little Red Riding Hood. But she is persecuted by a big wolf and does not dare to return to the farm.");
};

INSTANCE Info_Mod_Rotkaeppchen_Grossmutter (C_INFO)
{
	npc		= Mod_7556_OUT_Rotkaeppchen_REL;
	nr		= 1;
	condition	= Info_Mod_Rotkaeppchen_Grossmutter_Condition;
	information	= Info_Mod_Rotkaeppchen_Grossmutter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you happen to have an old grandmother?";
};

FUNC INT Info_Mod_Rotkaeppchen_Grossmutter_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rotkaeppchen_Grossmutter_Info()
{
	AI_Output(hero, self, "Info_Mod_Rotkaeppchen_Grossmutter_15_00"); //Do you happen to have an old grandmother?
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_Grossmutter_19_01"); //Yeah, why do you ask? I want to visit her again soon, she is so alone.
};

INSTANCE Info_Mod_Rotkaeppchen_WolfTot (C_INFO)
{
	npc		= Mod_7556_OUT_Rotkaeppchen_REL;
	nr		= 1;
	condition	= Info_Mod_Rotkaeppchen_WolfTot_Condition;
	information	= Info_Mod_Rotkaeppchen_WolfTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The wolf won't hurt you.";
};

FUNC INT Info_Mod_Rotkaeppchen_WolfTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rotkaeppchen_Hi))
	&& (Npc_IsDead(Wolf_Rotkaeppchen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rotkaeppchen_WolfTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Rotkaeppchen_WolfTot_15_00"); //The wolf won't hurt you.
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_WolfTot_19_01"); //Did you drive him away?
	AI_Output(hero, self, "Info_Mod_Rotkaeppchen_WolfTot_15_02"); //You could call it that.
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_WolfTot_19_03"); //Then I can finally get back home!
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_WolfTot_19_04"); //Thanks, you'll get half the mushrooms I picked!
	AI_Output(self, hero, "Info_Mod_Rotkaeppchen_WolfTot_19_05"); //Look what magnificent specimens I found!

	CreateInvItems	(hero, ItPl_Mushroom_01, 5);
	CreateInvItems	(hero, ItPl_Mushroom_02, 7);
	CreateInvItems	(hero, ItPl_Mushroom_03, 4);

	B_ShowGivenThings	("5 dark mushrooms, 7 digger meat and 4 toadstools preserved");

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HOF");

	B_Göttergefallen(1, 1);
	B_SetTopicStatus	(TOPIC_MOD_ROTKAEPPCHEN, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Rotkaeppchen_Pickpocket (C_INFO)
{
	npc		= Mod_7556_OUT_Rotkaeppchen_REL;
	nr		= 1;
	condition	= Info_Mod_Rotkaeppchen_Pickpocket_Condition;
	information	= Info_Mod_Rotkaeppchen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Rotkaeppchen_Pickpocket_Condition()
{
	C_Beklauen	(47, ItPl_Mushroom_01, 5);
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);

	Info_AddChoice	(Info_Mod_Rotkaeppchen_Pickpocket, DIALOG_BACK, Info_Mod_Rotkaeppchen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rotkaeppchen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rotkaeppchen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);

		Info_AddChoice	(Info_Mod_Rotkaeppchen_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rotkaeppchen_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rotkaeppchen_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rotkaeppchen_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rotkaeppchen_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rotkaeppchen_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rotkaeppchen_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rotkaeppchen_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rotkaeppchen_EXIT (C_INFO)
{
	npc		= Mod_7556_OUT_Rotkaeppchen_REL;
	nr		= 1;
	condition	= Info_Mod_Rotkaeppchen_EXIT_Condition;
	information	= Info_Mod_Rotkaeppchen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rotkaeppchen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rotkaeppchen_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
