INSTANCE Info_Mod_Kagan_Hi (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Hi_Condition;
	information	= Info_Mod_Kagan_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, are you still chasing swampweed in the camp?";
};

FUNC INT Info_Mod_Kagan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kagan_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_00"); //So, are you still chasing swampweed in the camp?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_01"); //Oh, the times for the swamp herb trade in the New Camp are bad, since Lee has succeeded in containing the swamp herb consumption to a large extent with his new rules.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_02"); //Then what are you doing in the New Camp?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_03"); //I got the order to return Baal Isidro to the bog camp.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_04"); //Why don't you just do your job?
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_05"); //And how? He's in the pub, isn't he? And now only mercenaries and prospectors are allowed in.
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_15_06"); //He's gotta come out sometime. At the latest when he runs out of gold and doesn't get any more booze.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_07"); //Oh, yeah? Someone gave him a bunch of ore for his swampweed just before the barrier fell. And after the fall of the barrier, the value of the ore has increased by a factor of 50 due to the now open trade.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_13_08"); //It can take months or years before he runs out of ore and has to leave the pub. And until then I have to stay and wait, because without Isidro I cannot be seen in the camp.

	Info_ClearChoices	(Info_Mod_Kagan_Hi);

	Info_AddChoice	(Info_Mod_Kagan_Hi, "I'm not interested.", Info_Mod_Kagan_Hi_B);
	Info_AddChoice	(Info_Mod_Kagan_Hi, "Maybe I can help you....", Info_Mod_Kagan_Hi_A);
};

FUNC VOID Info_Mod_Kagan_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_B_15_00"); //I'm not interested.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

FUNC VOID Info_Mod_Kagan_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_A_15_00"); //Maybe I can help you....
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_A_13_01"); //(joyous) Really?

	Mod_SLD_Kagan = 1;
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);

	Info_AddChoice	(Info_Mod_Kagan_Hi, "Sure, but I want something in return.", Info_Mod_Kagan_Hi_D);
	Info_AddChoice	(Info_Mod_Kagan_Hi, "Sure, I'll get him out of the bar somehow.", Info_Mod_Kagan_Hi_C);
};

FUNC VOID Info_Mod_Kagan_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_D_15_00"); //Sure, but I want something in return.
	AI_Output(self, hero, "Info_Mod_Kagan_Hi_D_13_01"); //I'll give you all the marshmallow I have left with me when you get him out of the pub.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

FUNC VOID Info_Mod_Kagan_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Kagan_Hi_C_15_00"); //Sure, I'll get him out of the bar somehow.
	
	Info_ClearChoices	(Info_Mod_Kagan_Hi);
};

INSTANCE Info_Mod_Kagan_Isidro (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Isidro_Condition;
	information	= Info_Mod_Kagan_Isidro_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kagan_Isidro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Isidro_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kagan_Isidro_Info()
{
	AI_Output(self, hero, "Info_Mod_Kagan_Isidro_13_00"); //Ahh, there he is at last. Here's my swampweed to thank you for what you've done.

	B_ShowGivenThings	("16 stems of bog cabbage preserved");

	CreateInvItems	(hero, ItMi_Addon_Joint_01, 7);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 6);
	CreateInvItems	(hero, ItMi_Traumruf, 3);

	AI_TurnToNpc	(self, Mod_1118_PSINOV_BaalIsidro_MT);

	AI_Output(self, hero, "Info_Mod_Kagan_Isidro_13_01"); //(Biting for Isidro) So, and now it goes back to our camp.

	B_GivePlayerXP	(200);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
	B_StartOtherRoutine	(Mod_1118_PSINOV_BaalIsidro_MT, "LAGER");
};

INSTANCE Info_Mod_Kagan_Pickpocket (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_Pickpocket_Condition;
	information	= Info_Mod_Kagan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Kagan_Pickpocket_Condition()
{
	C_Beklauen	(116, ItMi_Gold, 44);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

	Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_BACK, Info_Mod_Kagan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kagan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kagan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kagan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kagan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kagan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kagan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kagan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kagan_EXIT (C_INFO)
{
	npc		= Mod_1117_PSINOV_BaalKagan_MT;
	nr		= 1;
	condition	= Info_Mod_Kagan_EXIT_Condition;
	information	= Info_Mod_Kagan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kagan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kagan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
