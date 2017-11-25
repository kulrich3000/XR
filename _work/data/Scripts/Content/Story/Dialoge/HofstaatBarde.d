INSTANCE Info_Mod_HofstaatBarde_Hi (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Hi_Condition;
	information	= Info_Mod_HofstaatBarde_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatBarde_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatWache_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_00"); //A black journeyman enters our realm,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_01"); //The hair is blonde, the face is pale.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_02"); //The scars of his soul, you can't see them,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_03"); //Just the horror on his face.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_04"); //Does he bring us joy or suffering?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_05"); //Is he favoured or envious?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatBarde_Sporen (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Sporen_Condition;
	information	= Info_Mod_HofstaatBarde_Sporen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatBarde_Sporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Pilzsporen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Sporen_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_00"); //Who sneaks around with forbidden knowledge?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_01"); //Who sells the local king for stupid?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_02"); //Who is he who bears our fate,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_03"); //And still weighs his decision.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_04"); //I got you figured out. I've known what you wanted from day one, but do you realize it now?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_05"); //You were sent to destroy us,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_06"); //Instead, you started belonging to us.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_07"); //In one hand, hold the blade,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_08"); //In the other my throat.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_09"); //And while I'm still singing here,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_10"); //Do you have only one choice: CHOOSE!
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_11"); //Do you want to sow a storm in our garden
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_12"); //Or even cultivate it yourself?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_13"); //Walk over our bodies
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_14"); //Or look from our midst?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_15"); //Make up your mind and choose well,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_16"); //Give us hope, give us courage
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_17"); //Or else: take it away from us
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_18"); //And take that bag to the swamp.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_19"); //Decide which side you want to belong to.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_20"); //If you want to stay with your old fellowship in the swamp, bring them this powder.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_21"); //But if you do not want to deprive a new community of all hope, bring this powder to the alchemist.

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_FREUDENSPENDER, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "The bard figured me out and gave me a choice. Either I decide for the swamp camp by bringing the spurs to Baal Namib, or for the royal court, then I have to visit the royal hunter.");
};

INSTANCE Info_Mod_HofstaatBarde_Pickpocket (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Pickpocket_Condition;
	information	= Info_Mod_HofstaatBarde_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_HofstaatBarde_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatBarde_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatBarde_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatBarde_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatBarde_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatBarde_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatBarde_EXIT (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_EXIT_Condition;
	information	= Info_Mod_HofstaatBarde_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatBarde_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatBarde_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
