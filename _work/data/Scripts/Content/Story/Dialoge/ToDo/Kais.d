INSTANCE Info_Mod_Kais_Hi (C_INFO)
{
	npc		= Mod_7164_ASS_Kais_NW;
	nr		= 1;
	condition	= Info_Mod_Kais_Hi_Condition;
	information	= Info_Mod_Kais_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! Well, he sent me. You must have a problem.";
};

FUNC INT Info_Mod_Kais_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_Hi))
	&& (Mod_ASS_Magier == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kais_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kais_Hi_15_00"); //Hello! Well, he sent me. You must have a problem.
	AI_Output(self, hero, "Info_Mod_Kais_Hi_01_01"); //What they say. It's nothing. Not at the moment, anyway. Later, maybe.
	AI_Output(hero, self, "Info_Mod_Kais_Hi_15_02"); //I see. See you around.
};

INSTANCE Info_Mod_Kais_Blutkelch (C_INFO)
{
	npc		= Mod_7164_ASS_Kais_NW;
	nr		= 1;
	condition	= Info_Mod_Kais_Blutkelch_Condition;
	information	= Info_Mod_Kais_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Kais_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kais_Hi))
	&& (Kapitel >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kais_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_00"); //Finally! Where have you been all this time?
	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_01"); //You sent me away, didn't you? I took a break.
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_02"); //Time out. That was out of time.
	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_03"); //I'm here now. What am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_04"); //Now, listen, we magicians have a problem.
	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_05"); //I'm all ears. How can I help you?
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_06"); //Some of us have received fractions of a message or something.
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_07"); //They seem to belong together somehow, but no one has yet figured out what that means.
	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_08"); //Uh-huh. And now let me guess....
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_09"); //Exactly. You're supposed to be a handsome little fellow. That's what they say.
	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_10"); //Very well. I can try it sometime.
	AI_Output(self, hero, "Info_Mod_Kais_Blutkelch_01_11"); //Here's my share. There's another one for the magician Mahamad and councilman Norek.

	B_GiveInvItems	(self, hero, ItWr_BlutkelchZettel1, 1);

	AI_Output(hero, self, "Info_Mod_Kais_Blutkelch_15_12"); //I'll have a look.

	B_RemoveNpc	(Mod_7199_ASS_Amir_NW);
};

INSTANCE Info_Mod_Kais_Pickpocket (C_INFO)
{
	npc		= Mod_7164_ASS_Kais_NW;
	nr		= 1;
	condition	= Info_Mod_Kais_Pickpocket_Condition;
	information	= Info_Mod_Kais_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Kais_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 40);
};

FUNC VOID Info_Mod_Kais_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kais_Pickpocket);

	Info_AddChoice	(Info_Mod_Kais_Pickpocket, DIALOG_BACK, Info_Mod_Kais_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kais_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kais_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kais_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kais_Pickpocket);
};

FUNC VOID Info_Mod_Kais_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kais_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kais_Pickpocket);

		Info_AddChoice	(Info_Mod_Kais_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kais_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kais_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kais_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kais_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kais_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kais_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kais_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kais_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kais_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kais_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kais_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kais_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kais_EXIT (C_INFO)
{
	npc		= Mod_7164_ASS_Kais_NW;
	nr		= 1;
	condition	= Info_Mod_Kais_EXIT_Condition;
	information	= Info_Mod_Kais_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kais_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kais_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
