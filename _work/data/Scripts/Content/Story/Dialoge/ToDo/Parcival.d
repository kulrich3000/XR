INSTANCE Info_Mod_Parcival_Hi (C_INFO)
{
	npc		= Mod_504_PAL_Parcival_REL;
	nr		= 1;
	condition	= Info_Mod_Parcival_Hi_Condition;
	information	= Info_Mod_Parcival_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Greetings, what are you doing here?";
};

FUNC INT Info_Mod_Parcival_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Parcival_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_00"); //Greetings, what are you doing here?
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_01"); //What?! Are you mocking us?!
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_02"); //Well, I, uh....
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_03"); //We may keep an eye on this cursed place... on royal authority. What a rare honor.
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_04"); //Yeah, it's not the nicest neighborhood.
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_05"); //And as if that wasn't bad enough, this scum has settled here.
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_06"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_07"); //I'm talking about that rag at the tavern. Day thieves, criminals, whores... most of them straight out of the penal colony.
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_08"); //Innos is truly putting us to the test.
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_09"); //Well, this monster's contaminated site may be better than nothing.
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_10"); //Pah, if it were up to me, we'd drive them all into the moor together, to the undead pack. They'd be in good company.
	AI_Output(hero, self, "Info_Mod_Parcival_Hi_15_11"); //Now you're exaggerating...
	AI_Output(self, hero, "Info_Mod_Parcival_Hi_13_12"); //What do you say?! Why am I even talking to you?! Get out of here!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Parcival_Siedlung (C_INFO)
{
	npc		= Mod_504_PAL_Parcival_REL;
	nr		= 1;
	condition	= Info_Mod_Parcival_Siedlung_Condition;
	information	= Info_Mod_Parcival_Siedlung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Parcival_Siedlung_Condition()
{
	if (Mod_Parcival_VorKneipe == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Parcival_Siedlung_Info()
{
	AI_Output(self, hero, "Info_Mod_Parcival_Siedlung_13_00"); //Goddamn it, he's hanging out again. He was supposed to be guarding this place.
};

INSTANCE Info_Mod_Parcival_Pickpocket (C_INFO)
{
	npc		= Mod_504_PAL_Parcival_REL;
	nr		= 1;
	condition	= Info_Mod_Parcival_Pickpocket_Condition;
	information	= Info_Mod_Parcival_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Parcival_Pickpocket_Condition()
{
	C_Beklauen	(97, ItMi_Gold, 35);
};

FUNC VOID Info_Mod_Parcival_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);

	Info_AddChoice	(Info_Mod_Parcival_Pickpocket, DIALOG_BACK, Info_Mod_Parcival_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Parcival_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Parcival_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Parcival_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);
};

FUNC VOID Info_Mod_Parcival_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);

		Info_AddChoice	(Info_Mod_Parcival_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Parcival_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Parcival_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Parcival_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Parcival_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Parcival_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Parcival_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Parcival_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Parcival_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Parcival_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Parcival_EXIT (C_INFO)
{
	npc		= Mod_504_PAL_Parcival_REL;
	nr		= 1;
	condition	= Info_Mod_Parcival_EXIT_Condition;
	information	= Info_Mod_Parcival_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Parcival_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Parcival_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
