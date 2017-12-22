INSTANCE Info_Mod_Raeuber01_Hi (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Hi_Condition;
	information	= Info_Mod_Raeuber01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada praca?";
};

FUNC INT Info_Mod_Raeuber01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raeuber01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raeuber01_Hi_15_00"); //Jak wyglada praca?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Hi_08_01"); //Shitty. Nigdy wczesniej nie mial tak glupiego przywódcy.
};

INSTANCE Info_Mod_Raeuber01_Frauenkleider (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Frauenkleider_Condition;
	information	= Info_Mod_Raeuber01_Frauenkleider_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co sadzisz o strojach Melvina?";
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
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider_15_00"); //Co sadzisz o strojach Melvina?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider_08_01"); //Nigdy nie widzialem nic tak glupiego. Pasuje do niego.
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider_15_02"); //Powiedziales mu to jeszcze?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider_08_03"); //Nah. To jest zbyt zle.
};

INSTANCE Info_Mod_Raeuber01_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7510_OUT_Raeuber_REL;
	nr		= 1;
	condition	= Info_Mod_Raeuber01_Frauenkleider2_Condition;
	information	= Info_Mod_Raeuber01_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy powiesz mu o 10 zlotych monetach?";
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
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider2_15_00"); //Czy powiesz mu o 10 zlotych monetach?
	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_01"); //Zajme sie tym.

	AI_StandUP	(self);

	B_GiveInvItems	(hero, self, ItMi_Gold, 10);

	AI_GotoNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_TurnToNpc	(self, Mod_7505_BDT_Melvin_REL);

	AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_02"); //Wiesz jak glupi wygladasz w ubraniu?

	Mod_REL_Frauenkleider01 = 1;

	if (Mod_REL_Frauenkleider01 == 1)
	&& (Mod_REL_Frauenkleider02 == 1)
	&& (Mod_REL_Frauenkleider03 == 1)
	{
		B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Teraz nalezy zmiekczyc Melvin.");
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
	description	= "Czy móglbys mu to powiedziec?";
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
	AI_Output(hero, self, "Info_Mod_Raeuber01_Frauenkleider3_15_00"); //Czy móglbys mu to powiedziec?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider3_08_01"); //Oczywiscie.

		AI_StandUP	(self);

		AI_GotoNpc	(self, Mod_7505_BDT_Melvin_REL);

		AI_TurnToNpc	(self, Mod_7505_BDT_Melvin_REL);

		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider2_08_02"); //Wiesz jak glupi wygladasz w ubraniu?

		Mod_REL_Frauenkleider01 = 1;

		B_RaiseHandelsgeschick (3);

		if (Mod_REL_Frauenkleider01 == 1)
		&& (Mod_REL_Frauenkleider02 == 1)
		&& (Mod_REL_Frauenkleider03 == 1)
		{
			B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Teraz nalezy zmiekczyc Melvin.");
		};
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Raeuber01_Frauenkleider3_08_02"); //Jesli masz takie zainteresowanie, jestem pewien, ze zaplacisz za to.
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
