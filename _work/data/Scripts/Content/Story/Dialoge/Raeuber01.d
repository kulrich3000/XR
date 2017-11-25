INSTANCE Info_Mod_Raeuber01_Hi (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Hi_Condition;
	information	= Info_Mod_Raeuber01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's work going?";
};

FUNC INT Info_Mod_Raeuber01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raeuber01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber01_Hi_15_00"); //How's work going?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Hi_08_01"); //Shitty. Never had such a stupid leader before.
};

INSTANCE Info_Mod_Raeuber01_Frauenkleider (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Frauenkleider_Condition;
	information	= Info_Mod_Raeuber01_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of Melvin's clothes?";
};

FUNC INT Info_Mod_Raeuber01_Frauenkleider_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raeuber01_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raeuber01_Frauenkleider_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider_15_00"); //What do you think of Melvin's clothes?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider_08_01"); //I've never seen anything so stupid. Fits him.
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider_15_02"); //Did you tell him that yet?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider_08_03"); //Nah. That's too bad.
};

INSTANCE Info_Mod_Raeuber01_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Frauenkleider2_Condition;
	information	= Info_Mod_Raeuber01_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Will you tell him for 10 gold coins?";
};

FUNC INT Info_Mod_Raeuber01_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raeuber01_Frauenkleider))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 10)
	&& (Mod_REL_Frauenkleider01 == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raeuber01_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider2_15_00"); //Will you tell him for 10 gold coins?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_01"); //I'll take care of it.

	AI_StandUP	(self);

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_GotoNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_TurnToNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_02"); //You know how stupid you look in your clothes?

	Mod_REL_Frauenkleider01 = 1;

	if (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Now Melvin should be softened.");
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Raeuber01_Frauenkleider3 (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Frauenkleider3_Condition;
	information	= Info_Mod_Raeuber01_Frauenkleider3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Would you tell him that?";
};

FUNC INT Info_Mod_Raeuber01_Frauenkleider3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Raeuber01_Frauenkleider))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Raeuber01_Frauenkleider2))
	&& (Mod_REL_Frauenkleider01 == 0)
	&& (Mod_Verhandlungsgeschick > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raeuber01_Frauenkleider3_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider3_15_00"); //Would you tell him that?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider3_08_01"); //Joa, sure.

		AI_StandUP	(self);

		AI_GotoNpc	(self, Mod_7505_BDT_Melvin_REL);

		AI_TurnToNpc	(self, Mod_7505_BDT_Melvin_REL);

		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_02"); //You know how stupid you look in your clothes?

		Mod_REL_Frauenkleider01 = 1;

		B_RaiseHandelsgeschick (3);

		if (Mod_REL_Frauenkleider01 == 1)
		&& (Mod_REL_Frauenkleider02 == 1)
		&& (Mod_REL_Frauenkleider03 == 1)
		{
			B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Now Melvin should be softened.");
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider3_08_02"); //If you have such an interest in it, I'm sure you'll pay for it.
	};
};

INSTANCE Info_Mod_Raeuber01_Pickpocket (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Pickpocket_Condition;
	information	= Info_Mod_Raeuber01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Raeuber01_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);

	Info_AddChoice	(Info_Mod_Raeuber01_Pickpocket, DIALOG_BACK, Info_Mod_Raeuber01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raeuber01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raeuber01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);

		Info_AddChoice	(Info_Mod_Raeuber01_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raeuber01_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raeuber01_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raeuber01_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raeuber01_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raeuber01_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raeuber01_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raeuber01_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raeuber01_EXIT (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_EXIT_Condition;
	information	= Info_Mod_Raeuber01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raeuber01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raeuber01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
