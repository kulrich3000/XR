INSTANCE Info_Mod_Grim_Hi (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Hi_Condition;
	information	= Info_Mod_Grim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look very tired.";
};

FUNC INT Info_Mod_Grim_Hi_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Hi_15_00"); //You look very tired.
	AI_Output(self, hero, "Info_Mod_Grim_Hi_06_01"); //Oh yes, there are those nightmares.... Someday they'll drive me crazy!
};

INSTANCE Info_Mod_Grim_WieGehts (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_WieGehts_Condition;
	information	= Info_Mod_Grim_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How have you been since the fall of the barrier?";
};

FUNC INT Info_Mod_Grim_WieGehts_Condition()
{
	if (Wld_IsTime(05,00,22,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_WieGehts_15_00"); //How have you been since the fall of the barrier?
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_01"); //A lot of things have happened since then. It was funny at first, without a leader and all.
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_02"); //But since Thorus Gomez's position has been taken, you can't afford anything. It got kind of boring around here.
	AI_Output(self, hero, "Info_Mod_Grim_WieGehts_06_03"); //And then those nightmares started....
};

INSTANCE Info_Mod_Grim_Alptraeume (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Alptraeume_Condition;
	information	= Info_Mod_Grim_Alptraeume_Info;
	permanent	= 0;
	important	= 0;
	description	= "What nightmares?";
};

FUNC INT Info_Mod_Grim_Alptraeume_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grim_Hi))
	|| (Npc_KnowsInfo(hero, Info_Mod_Grim_WieGehts))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Alptraeume_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Alptraeume_15_00"); //What nightmares?
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_01"); //They're like those things the gurus had in the swamp, like visions.
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_02"); //After waking up, I can only remember blurred.
	AI_Output(self, hero, "Info_Mod_Grim_Alptraeume_06_03"); //It has something to do with orcs. I'm sure they'll kill me!
};

INSTANCE Info_Mod_Grim_Nacht (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Nacht_Condition;
	information	= Info_Mod_Grim_Nacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Grim_Nacht_Condition()
{
	if (Wld_IsTime(22,00,05,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Nacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Nacht_15_00"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Grim_Nacht_06_01"); //Oh, l-- I'm stretching my legs a little. I always get those nightmares. Yeah, that's right.
};

INSTANCE Info_Mod_Grim_Lagermusik (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Lagermusik_Condition;
	information	= Info_Mod_Grim_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gravo wants to start a music group. Interested?";
};

FUNC INT Info_Mod_Grim_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grim_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_15_00"); //Gravo wants to start a music group. Interested?
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_06_01"); //Why do you ask that?

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);

	Info_AddChoice	(Info_Mod_Grim_Lagermusik, "Maybe you can support him.", Info_Mod_Grim_Lagermusik_B);
	Info_AddChoice	(Info_Mod_Grim_Lagermusik, "I'm trying to scare you.", Info_Mod_Grim_Lagermusik_A);
};

FUNC VOID Info_Mod_Grim_Lagermusik_B()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_B_15_00"); //Maybe you can support him.
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_B_06_01"); //(rejecting) No, I don't think so. Got to think about it anyway.

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);
};

FUNC VOID Info_Mod_Grim_Lagermusik_A()
{
	AI_Output(hero, self, "Info_Mod_Grim_Lagermusik_A_15_00"); //I'm trying to scare you.
	AI_Output(self, hero, "Info_Mod_Grim_Lagermusik_A_06_01"); //Th-That's not working out for you!

	Info_ClearChoices	(Info_Mod_Grim_Lagermusik);
};

INSTANCE Info_Mod_Grim_Pickpocket (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_Pickpocket_Condition;
	information	= Info_Mod_Grim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Grim_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Grim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

	Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_BACK, Info_Mod_Grim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
};

FUNC VOID Info_Mod_Grim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grim_EXIT (C_INFO)
{
	npc		= Mod_1426_BUD_Grim_MT;
	nr		= 1;
	condition	= Info_Mod_Grim_EXIT_Condition;
	information	= Info_Mod_Grim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
