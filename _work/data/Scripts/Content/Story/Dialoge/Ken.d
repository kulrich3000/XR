INSTANCE Info_Mod_Ken_Eisgebiet (C_INFO)
{
	npc		= Mod_1627_VMG_Ken_MT;
	nr		= 1;
	condition	= Info_Mod_Ken_Eisgebiet_Condition;
	information	= Info_Mod_Ken_Eisgebiet_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ken_Eisgebiet_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Crazy))
	&& (VMG_Second == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ken_Eisgebiet_Info()
{
	AI_Output(self, hero, "Info_Mod_Ken_Eisgebiet_03_00"); //I hear you're trying to get in. You're looking for gelato, aren't you?
	AI_Output(hero, self, "Info_Mod_Ken_Eisgebiet_15_01"); //That's right. Ferco said you know where it is.
	AI_Output(self, hero, "Info_Mod_Ken_Eisgebiet_03_02"); //I know where it is, but that won't help you if you don't know how to get there.
	AI_Output(self, hero, "Info_Mod_Ken_Eisgebiet_03_03"); //There's a teleport spell there, but it's hard to find.
	AI_Output(hero, self, "Info_Mod_Ken_Eisgebiet_15_04"); //Where can I find this magic?
	AI_Output(self, hero, "Info_Mod_Ken_Eisgebiet_03_05"); //In the swamp. You're expected. I can't tell you more, but one advice: beware of the hermit.
	AI_Output(hero, self, "Info_Mod_Ken_Eisgebiet_15_06"); //Thanks for the information. I'll take a look around.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Ken said I'm expected in the swamp. I should take a look around. Besides, I'm to watch out for the hermit.");

	B_StartOtherRoutine	(Mod_2012_PSINOV_Talas_MT, "ATGATE");

	VMG_Second = 3;
};

INSTANCE Info_Mod_Ken_Pickpocket (C_INFO)
{
	npc		= Mod_1627_VMG_Ken_MT;
	nr		= 1;
	condition	= Info_Mod_Ken_Pickpocket_Condition;
	information	= Info_Mod_Ken_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ken_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Ken_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ken_Pickpocket);

	Info_AddChoice	(Info_Mod_Ken_Pickpocket, DIALOG_BACK, Info_Mod_Ken_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ken_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ken_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ken_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ken_Pickpocket);
};

FUNC VOID Info_Mod_Ken_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ken_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ken_Pickpocket);

		Info_AddChoice	(Info_Mod_Ken_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ken_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ken_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ken_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ken_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ken_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ken_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ken_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ken_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ken_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ken_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ken_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ken_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ken_EXIT (C_INFO)
{
	npc		= Mod_1627_VMG_Ken_MT;
	nr		= 1;
	condition	= Info_Mod_Ken_EXIT_Condition;
	information	= Info_Mod_Ken_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ken_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ken_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
