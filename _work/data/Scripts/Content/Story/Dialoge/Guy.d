INSTANCE Info_Mod_Guy_Hi (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_Hi_Condition;
	information	= Info_Mod_Guy_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you again?";
};

FUNC INT Info_Mod_Guy_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Guy_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Guy_Hi_15_00"); //Who are you again?
	AI_Output(self, hero, "Info_Mod_Guy_Hi_24_01"); //Just a guy. Don't worry about me.
};

INSTANCE Info_Mod_Guy_AllesKlar (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_AllesKlar_Condition;
	information	= Info_Mod_Guy_AllesKlar_Info;
	permanent	= 0;
	important	= 0;
	description	= "Everything the same with you?";
};

FUNC INT Info_Mod_Guy_AllesKlar_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Guy_AllesKlar_Info()
{
	AI_Output(hero, self, "Info_Mod_Guy_AllesKlar_15_00"); //Everything the same with you?
	AI_Output(self, hero, "Info_Mod_Guy_AllesKlar_24_01"); //Yeah, I'm doing just fine. As long as everyone leaves me alone, I'll be fine.
};

INSTANCE Info_Mod_Guy_Lagermusik (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_Lagermusik_Condition;
	information	= Info_Mod_Guy_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Want to join Gravo's new music group?";
};

FUNC INT Info_Mod_Guy_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Guy_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Guy_Lagermusik_15_00"); //Want to join Gravo's new music group?
	AI_Output(self, hero, "Info_Mod_Guy_Lagermusik_24_01"); //I'd love to.
	AI_Output(hero, self, "Info_Mod_Guy_Lagermusik_15_02"); //But?
	AI_Output(self, hero, "Info_Mod_Guy_Lagermusik_24_03"); //I can't play an instrument. And sing - well, well. And they don't appear at all.
	AI_Output(hero, self, "Info_Mod_Guy_Lagermusik_15_04"); //That's not the problem right now. Gravo will find you something. Just go to him.
	AI_Output(self, hero, "Info_Mod_Guy_Lagermusik_24_05"); //All right, if you say so.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRAVO");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Guy_KGBuddler (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_KGBuddler_Condition;
	information	= Info_Mod_Guy_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a new task for you...";
};

FUNC INT Info_Mod_Guy_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Guy_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Guy_KGBuddler_15_00"); //I have a new task for you...
	AI_Output(self, hero, "Info_Mod_Guy_KGBuddler_24_01"); //... I don't need. If I want to work, I can go to the fields.
};

INSTANCE Info_Mod_Guy_Pickpocket (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_Pickpocket_Condition;
	information	= Info_Mod_Guy_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Guy_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Guy_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Guy_Pickpocket);

	Info_AddChoice	(Info_Mod_Guy_Pickpocket, DIALOG_BACK, Info_Mod_Guy_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Guy_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Guy_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Guy_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Guy_Pickpocket);
};

FUNC VOID Info_Mod_Guy_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Guy_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Guy_Pickpocket);

		Info_AddChoice	(Info_Mod_Guy_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Guy_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Guy_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Guy_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Guy_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Guy_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Guy_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Guy_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Guy_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Guy_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Guy_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Guy_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Guy_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Guy_EXIT (C_INFO)
{
	npc		= Mod_1427_BUD_Guy_MT;
	nr		= 1;
	condition	= Info_Mod_Guy_EXIT_Condition;
	information	= Info_Mod_Guy_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Guy_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Guy_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
