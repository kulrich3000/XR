INSTANCE Info_Mod_Ruga_Hi (C_INFO)
{
	npc		= Mod_749_MIL_Ruga_NW;
	nr		= 1;
	condition	= Info_Mod_Ruga_Hi_Condition;
	information	= Info_Mod_Ruga_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here? Shouldn't you be in the barracks?";
};

FUNC INT Info_Mod_Ruga_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruga_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruga_Hi_15_00"); //What are you doing here? Shouldn't you be in the barracks?
	AI_Output(self, hero, "Info_Mod_Ruga_Hi_11_01"); //No! I shouldn't have. I'm sick of it.
	AI_Output(hero, self, "Info_Mod_Ruga_Hi_15_02"); //But why...?
	AI_Output(self, hero, "Info_Mod_Ruga_Hi_11_03"); //I spend the whole day at the shooting range and stand in my stomach. Every day!
	AI_Output(hero, self, "Info_Mod_Ruga_Hi_15_04"); //You're not the only one.
	AI_Output(self, hero, "Info_Mod_Ruga_Hi_11_05"); //Stop it! The militias, that ignorant bunch! No one wants to study crossbow with me. Nobody!

	if (Mod_Schwierigkeit != 4)
	{
		AI_Output(hero, self, "Info_Mod_Ruga_Hi_15_06"); //And what about me?
		AI_Output(self, hero, "Info_Mod_Ruga_Hi_11_07"); //The first session is free of charge. Because you're the first.

		B_RaiseFightTalent (hero, NPC_TALENT_CROSSBOW, 5);

		PrintScreen	(PRINT_LearnCrossbow, -1, -1, FONT_Screen, 2);

		Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Ruga can show me how to use the crossbow.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Ruga_Hi_15_08"); //Well, there's nothing to be done.
	};
};

INSTANCE Info_Mod_Ruga_Lernen_Armbrust (C_INFO)
{
	npc		= Mod_749_MIL_Ruga_NW;
	nr		= 1;
	condition	= Info_Mod_Ruga_Lernen_Armbrust_Condition;
	information	= Info_Mod_Ruga_Lernen_Armbrust_Info;
	permanent	= 1;
	important	= 0;
	description	= "Teach me how to shoot a crossbow..";
};

FUNC INT Info_Mod_Ruga_Lernen_Armbrust_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ruga_Hi))
	&& (hero.hitchance[NPC_TALENT_CrossBow] < 50)
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ruga_Lernen_Armbrust_Info()
{
	AI_Output(hero, self, "Info_Mod_Ruga_Lernen_Armbrust_15_00"); //Teach me crossbow shooting.

	Info_ClearChoices	(Info_Mod_Ruga_Lernen_Armbrust);
	
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, "Back off.", Info_Mod_Ruga_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Ruga_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Ruga_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Ruga_Lernen_Armbrust_BACK()
{
	Info_ClearChoices	(Info_Mod_Ruga_Lernen_Armbrust);
};

FUNC VOID Info_Mod_Ruga_Lernen_Armbrust_5()
{
	B_TeachFightTalentPercent_New (self, hero, NPC_TALENT_CrossBow, 5, 60);

	Info_ClearChoices	(Info_Mod_Ruga_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, "Back off.", Info_Mod_Ruga_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Ruga_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Ruga_Lernen_Armbrust_1);
};

FUNC VOID Info_Mod_Ruga_Lernen_Armbrust_1()
{
	B_TeachFightTalentPercent (self, hero, NPC_TALENT_CrossBow, 1, 60);

	Info_ClearChoices	(Info_Mod_Ruga_Lernen_Armbrust);

	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, "Back off.", Info_Mod_Ruga_Lernen_Armbrust_BACK);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow5, B_GetLearnCostTalent_New(hero, NPC_TALENT_CrossBow)), Info_Mod_Ruga_Lernen_Armbrust_5);
	Info_AddChoice	(Info_Mod_Ruga_Lernen_Armbrust, B_BuildLearnString(PRINT_LearnCrossBow1, B_GetLearnCostTalent(hero, NPC_TALENT_CrossBow, 1)), Info_Mod_Ruga_Lernen_Armbrust_1);
};

INSTANCE Info_Mod_Ruga_Pickpocket (C_INFO)
{
	npc		= Mod_749_MIL_Ruga_NW;
	nr		= 1;
	condition	= Info_Mod_Ruga_Pickpocket_Condition;
	information	= Info_Mod_Ruga_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ruga_Pickpocket_Condition()
{
	C_Beklauen	(75, ItRw_Bolt, 10);
};

FUNC VOID Info_Mod_Ruga_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);

	Info_AddChoice	(Info_Mod_Ruga_Pickpocket, DIALOG_BACK, Info_Mod_Ruga_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ruga_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ruga_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ruga_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);
};

FUNC VOID Info_Mod_Ruga_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);

		Info_AddChoice	(Info_Mod_Ruga_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ruga_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ruga_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ruga_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ruga_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ruga_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ruga_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ruga_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ruga_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ruga_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ruga_EXIT (C_INFO)
{
	npc		= Mod_749_MIL_Ruga_NW;
	nr		= 1;
	condition	= Info_Mod_Ruga_EXIT_Condition;
	information	= Info_Mod_Ruga_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ruga_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ruga_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
