INSTANCE Info_Mod_Diana_Hi (C_INFO)
{
	npc		= Mod_7637_OUT_Diana_REL;
	nr		= 1;
	condition	= Info_Mod_Diana_Hi_Condition;
	information	= Info_Mod_Diana_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you all right?";
};

FUNC INT Info_Mod_Diana_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diana_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Diana_Hi_15_00"); //Are you all right?
	AI_Output(self, hero, "Info_Mod_Diana_Hi_16_01"); //I hope so, but I'm starting to worry.
	AI_Output(hero, self, "Info_Mod_Diana_Hi_15_02"); //You miss someone?
	AI_Output(self, hero, "Info_Mod_Diana_Hi_16_03"); //Our daughter left for mushroom picking this morning, but she hasn't returned yet.
	AI_Output(self, hero, "Info_Mod_Diana_Hi_16_04"); //Not that she's not old enough to take care of herself, but it doesn't leave me alone not to hear from her.
	AI_Output(self, hero, "Info_Mod_Diana_Hi_16_05"); //If you run into her, please let her know that she could slowly make her way back.
	AI_Output(self, hero, "Info_Mod_Diana_Hi_16_06"); //You can recognize them by their idiosyncratic red cap.
	
	Log_CreateTopic	(TOPIC_MOD_ROTKAEPPCHEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ROTKAEPPCHEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ROTKAEPPCHEN, "Diana misses her daughter, who left this morning to pick mushrooms. I can recognize them by their red cap.");
};

INSTANCE Info_Mod_Diana_Eintopf (C_INFO)
{
	npc		= Mod_7637_OUT_Diana_REL;
	nr		= 1;
	condition	= Info_Mod_Diana_Eintopf_Condition;
	information	= Info_Mod_Diana_Eintopf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you make yummy stews, too?";
};

FUNC INT Info_Mod_Diana_Eintopf_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diana_Eintopf_Info()
{
	AI_Output(hero, self, "Info_Mod_Diana_Eintopf_15_00"); //Do you make yummy stews, too?
	AI_Output(self, hero, "Info_Mod_Diana_Eintopf_16_01"); //Look at the well-fed boys in the yard! They're literally tearing the meatbug ragout out of my hands.
	AI_Output(self, hero, "Info_Mod_Diana_Eintopf_16_02"); //My secret is little pieces of melon.
	AI_Output(hero, self, "Info_Mod_Diana_Eintopf_15_03"); //Uh-huh. That's interesting.
};

INSTANCE Info_Mod_Diana_Pickpocket (C_INFO)
{
	npc		= Mod_7637_OUT_Diana_REL;
	nr		= 1;
	condition	= Info_Mod_Diana_Pickpocket_Condition;
	information	= Info_Mod_Diana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Diana_Pickpocket_Condition()
{
	C_Beklauen	(87, ItFo_Stew, 3);
};

FUNC VOID Info_Mod_Diana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Diana_Pickpocket);

	Info_AddChoice	(Info_Mod_Diana_Pickpocket, DIALOG_BACK, Info_Mod_Diana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Diana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Diana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Diana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Diana_Pickpocket);
};

FUNC VOID Info_Mod_Diana_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Diana_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Diana_Pickpocket);

		Info_AddChoice	(Info_Mod_Diana_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Diana_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Diana_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Diana_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Diana_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Diana_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Diana_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Diana_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Diana_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Diana_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Diana_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Diana_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Diana_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Diana_EXIT (C_INFO)
{
	npc		= Mod_7637_OUT_Diana_REL;
	nr		= 1;
	condition	= Info_Mod_Diana_EXIT_Condition;
	information	= Info_Mod_Diana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Diana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Diana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
