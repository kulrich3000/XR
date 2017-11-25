INSTANCE Info_Mod_Shrat_Hi (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Hi_Condition;
	information	= Info_Mod_Shrat_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shrat_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrat_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Shrat_Hi_02_00"); //Don't disturb my peace!
};

INSTANCE Info_Mod_Shrat_Woher (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Woher_Condition;
	information	= Info_Mod_Shrat_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why are you alone in a cabin in the swamp?";
};

FUNC INT Info_Mod_Shrat_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shrat_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrat_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrat_Woher_15_00"); //Why are you alone in a cabin in the swamp?
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_01"); //Because I want to be left alone. I've never been in peace.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_02"); //First I had to work all day on Onar's farm until I ran away with one of his sheep.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_03"); //When they threw me into the colony, I thought the swamp camp was cosy.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_04"); //But there I was allowed to stomp bog cabbage all day long and that was not what I wanted.
	AI_Output(self, hero, "Info_Mod_Shrat_Woher_02_05"); //Then I ran away and built a small hut here and finally I have my peace.
};

INSTANCE Info_Mod_Shrat_Pickpocket (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_Pickpocket_Condition;
	information	= Info_Mod_Shrat_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Shrat_Pickpocket_Condition()
{
	C_Beklauen	(23, ItMi_Gold, 12);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

	Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_BACK, Info_Mod_Shrat_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shrat_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shrat_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shrat_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shrat_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shrat_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shrat_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shrat_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shrat_EXIT (C_INFO)
{
	npc		= Mod_1119_PSINOV_Shrat_MT;
	nr		= 1;
	condition	= Info_Mod_Shrat_EXIT_Condition;
	information	= Info_Mod_Shrat_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shrat_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrat_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
