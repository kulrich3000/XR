INSTANCE Info_Mod_Kyle_Hi (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Hi_Condition;
	information	= Info_Mod_Kyle_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kyle! How you doing, old buddy?";
};

FUNC INT Info_Mod_Kyle_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Hi_15_00"); //Kyle! How you doing, old buddy?
	AI_Output(self, hero, "Info_Mod_Kyle_Hi_01_01"); //How am I doing? Absolutely fucked up! From morning to night I work my back to the hump, and we haven't harvested anything edible yet.
};

INSTANCE Info_Mod_Kyle_WarumArbeit (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_WarumArbeit_Condition;
	information	= Info_Mod_Kyle_WarumArbeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why do you work so hard? It's not like you.";
};

FUNC INT Info_Mod_Kyle_WarumArbeit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kyle_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_WarumArbeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_WarumArbeit_15_00"); //Why do you work so hard? It's not like you.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_01_01"); //Shut your mouth. Thorus thinks it'll break me up. But he cut himself with it.
	AI_Output(self, hero, "Info_Mod_Kyle_WarumArbeit_01_02"); //Will it be clear whether it was such a good idea to let me work so close to his throne....
};

INSTANCE Info_Mod_Kyle_SchatzImSchlammsee (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_SchatzImSchlammsee_Condition;
	information	= Info_Mod_Kyle_SchatzImSchlammsee_Info;
	permanent	= 0;
	important	= 0;
	description	= "Listen here. This thing with the treasure...";
};

FUNC INT Info_Mod_Kyle_SchatzImSchlammsee_Condition()
{
	if (Mod_Gravo_Schatz == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_SchatzImSchlammsee_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_SchatzImSchlammsee_15_00"); //Listen here. This thing with the treasure...
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_01_01"); //You don't have it, that should be obvious!
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_01_02"); //I just whispered that to Gravo so he wouldn't run through my hut a thousand times a day.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_01_03"); //I was able to tell the others, but with Gravo it didn't help that I put my chamber pot in the one door.
	AI_Output(self, hero, "Info_Mod_Kyle_SchatzImSchlammsee_01_04"); //Let him dig a long time after something. Who knows, maybe he'll find a water vein someday!

	B_LogEntry	(TOPIC_MOD_GRAVO_SCHATZ, "Kyle made up the treasure to get rid of Gravo.");
};

INSTANCE Info_Mod_Kyle_Lagermusik (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Lagermusik_Condition;
	information	= Info_Mod_Kyle_Lagermusik_Info;
	permanent	= 0;
	important	= 0;
	description	= "Gravo really did find something. The place you sent him to.";
};

FUNC INT Info_Mod_Kyle_Lagermusik_Condition()
{
	if (Mod_Gravo_Schatz == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_Lagermusik_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_00"); //Gravo really did find something. The place you sent him to.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_01_01"); //An old coin or what?
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_02"); //No. Garaz and Pacho have stored their musical instruments there.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_01_03"); //Maybe I should work as a fortune teller?
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_01_04"); //Here's my next prediction: Gravo will once again walk through my hut every day as before.
	AI_Output(hero, self, "Info_Mod_Kyle_Lagermusik_15_05"); //I don't think so. He wants to switch to making music now.
	AI_Output(self, hero, "Info_Mod_Kyle_Lagermusik_01_06"); //Yes? That would be fantastic. Hopefully, far away from me.

	if (!Npc_KnowsInfo(hero, Info_Mod_Gravo_Schatz)) {
		B_GivePlayerXP	(100);

		B_SetTopicStatus	(TOPIC_MOD_GRAVO_SCHATZ, LOG_SUCCESS);

		CurrentNQ += 1;
	};
};

INSTANCE Info_Mod_Kyle_KGBuddler (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_KGBuddler_Condition;
	information	= Info_Mod_Kyle_KGBuddler_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want to work as a digger again?";
};

FUNC INT Info_Mod_Kyle_KGBuddler_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Costa_Buddler))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Kyle_KGBuddler_Info()
{
	AI_Output(hero, self, "Info_Mod_Kyle_KGBuddler_15_00"); //You want to work as a digger again?
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_01_01"); //Just stop it! That eternal grind in the old mine was terrible.
	AI_Output(self, hero, "Info_Mod_Kyle_KGBuddler_01_02"); //On the other hand, fieldwork is a pure recovery.
};

INSTANCE Info_Mod_Kyle_Pickpocket (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_Pickpocket_Condition;
	information	= Info_Mod_Kyle_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Kyle_Pickpocket_Condition()
{
	C_Beklauen	(43, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_BACK, Info_Mod_Kyle_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Kyle_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Kyle_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Kyle_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Kyle_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Kyle_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Kyle_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Kyle_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Kyle_EXIT (C_INFO)
{
	npc		= Mod_1428_BUD_Kyle_MT;
	nr		= 1;
	condition	= Info_Mod_Kyle_EXIT_Condition;
	information	= Info_Mod_Kyle_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Kyle_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Kyle_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
