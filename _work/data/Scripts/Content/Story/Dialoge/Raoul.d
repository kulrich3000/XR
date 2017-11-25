INSTANCE Info_Mod_Raoul_Hi (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_Hi_Condition;
	information	= Info_Mod_Raoul_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How long have you been keeping watch?";
};

FUNC INT Info_Mod_Raoul_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Khaled_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Raoul_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_00"); //Since when have you been keeping watch here and why can't anyone else get out of the swamp camp, even though there's one in there?
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_01"); //Well, we are the bouncers here since the new rule was enacted that no more swampweed may be smoked in the pub and therefore no swamp scribbles are allowed in.
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_02"); //And why is there such a ban?
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_03"); //Lee wants to contain the uncontrolled consumption of bogweed so that the men train more.
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_04"); //And the others in the pub should not be affected by swamp fumes, although they may not want to.
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_05"); //Now smoking is only allowed outside the pub, but if you get caught too often, you get a reprimand and extra hours of training. (quietly, to himself) Well, now you have to go to the camp to smoke.
	AI_Output(hero, self, "Info_Mod_Raoul_Hi_15_06"); //But why is that guy from the swamp camp...
	AI_Output(self, hero, "Info_Mod_Raoul_Hi_01_07"); //Well, it was there before the new rules came into effect. And our job is to make sure none of them get in.
};

INSTANCE Info_Mod_Raoul_Pickpocket (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_Pickpocket_Condition;
	information	= Info_Mod_Raoul_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Raoul_Pickpocket_Condition()
{
	C_Beklauen	(68, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

	Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_BACK, Info_Mod_Raoul_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Raoul_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Raoul_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Raoul_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Raoul_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Raoul_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Raoul_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Raoul_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Raoul_EXIT (C_INFO)
{
	npc		= Mod_794_SLD_Raoul_MT;
	nr		= 1;
	condition	= Info_Mod_Raoul_EXIT_Condition;
	information	= Info_Mod_Raoul_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Raoul_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Raoul_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
