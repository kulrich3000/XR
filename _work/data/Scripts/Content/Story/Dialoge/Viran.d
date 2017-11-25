INSTANCE Info_Mod_Viran_Hi (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Hi_Condition;
	information	= Info_Mod_Viran_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hardworking on the bogweed production?";
};

FUNC INT Info_Mod_Viran_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Viran_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_00"); //Hardworking on the bogweed production?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_01"); //Yeah, but more comfortable than when I was in the colony.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_02"); //There I stood there from morning to night in the swamp and every day I bent my hump for the gurus every day.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_03"); //Now even their asses can move to the field to harvest the herb.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_04"); //And here I can even experiment at the alchemy table.
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_05"); //You used to be an alchemist?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_06"); //Uh, ne.... freelance. Here a little bit intoxicants traded, there a little bit stolen....
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_07"); //After the fall of the barrier, I used the confusion to ease Cor Kalom's possessions for useful things.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_08"); //Well, there wasn't much gold and ore, but there were some recipes...
	AI_Output(hero, self, "Info_Mod_Viran_Hi_15_09"); //Then how did you get here?
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_10"); //Chani had overheard some gurus who entrusted the novices of Lester with growing bogweed on magically influenced soils.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_11"); //This should significantly increase yields.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_12"); //I had heard about this cursed moor in my time before the barrier and so I left here with her and Harlok.
	AI_Output(self, hero, "Info_Mod_Viran_Hi_07_13"); //And I have not regretted it.... even if Harlok sits on his ass for the longest time of the day and hardly helps.
};

INSTANCE Info_Mod_Viran_Traenke (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Traenke_Condition;
	information	= Info_Mod_Viran_Traenke_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, what are the potions doing?";
};

FUNC INT Info_Mod_Viran_Traenke_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Traenke_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Traenke_15_00"); //So, what are the potions doing?
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_01"); //The customer likes it. I'm back to a new potion, too... but I'm missing some ingredients.
	AI_Output(hero, self, "Info_Mod_Viran_Traenke_15_02"); //What do you need?
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_03"); //Mostly wild berries. Yeah, I'd need at least five of those.
	AI_Output(self, hero, "Info_Mod_Viran_Traenke_02_04"); //Only they're damn rare... unless you're not afraid of the monster plants.

	Log_CreateTopic	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VIRAN_SUMPFBEEREN, "Viran would need at least 5 berries to complete a potion. He said they were rare... cited monster plants as a possible source.");
};

INSTANCE Info_Mod_Viran_Sumpfbeeren (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren_Info;
	permanent	= 0;
	important	= 0;
	description	= "There are five bog bilberries.";
};

FUNC INT Info_Mod_Viran_Sumpfbeeren_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Traenke))
	&& (Npc_HasItems(hero, ItPl_Sumpfbeeren_XR) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren_Info()
{
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren_15_00"); //There are five bog bilberries.

	B_GiveInvItems	(hero, self, ItPl_Sumpfbeeren_XR, 5);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_01"); //What are you kidding me? Actually. How you got it right....
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_02"); //That's worth 500 gold coins to me, anyway. Here.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren_02_03"); //The potion should be ready by tomorrow. You're supposed to have a sip of it.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_VIRAN_SUMPFBEEREN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_Viran_Sumpfbeeren_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Viran_Sumpfbeeren2 (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren2_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Sumpfbeeren2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Sumpfbeeren))
	&& (Wld_GetDay() > Mod_Viran_Sumpfbeeren_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren2_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren2_02_00"); //Hey, the potion's ready. It's turned out all right, I think. Here, try this.

	B_GiveInvItems	(self, hero, ItFo_Bruehe, 1);

	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren2_15_01"); //Well then...

	B_UseItem	(hero, ItFo_Bruehe);

	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren2_02_02"); //And?
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren2_15_03"); //l--
	AI_Output(self, hero, "DEFAULT"); //

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Viran_Sumpfbeeren3 (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Sumpfbeeren3_Condition;
	information	= Info_Mod_Viran_Sumpfbeeren3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Sumpfbeeren3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Viran_Sumpfbeeren2))
	&& (Mod_SumpfbeerenTraum == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Sumpfbeeren3_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_00"); //Hey, are you okay?
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren3_15_01"); //(dazed) Dazzling metal brings death... Redemption by what has been snatched from the breast of the moor...
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_02"); //Oh, man, that was a little too intense.
	AI_Output(hero, self, "Info_Mod_Viran_Sumpfbeeren3_15_03"); //(again) What? Uh, no, I'm all right now. I just had a strange dream.
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_04"); //After drinking like that, I'd be surprised if the dreams didn't come true, huh? No hard feelings.
	AI_Output(self, hero, "Info_Mod_Viran_Sumpfbeeren3_02_05"); //Put the potion on my list.
};

INSTANCE Info_Mod_Viran_Wasserleichen (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Wasserleichen_Condition;
	information	= Info_Mod_Viran_Wasserleichen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Viran_Wasserleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Botschek_Wasserleichen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Viran_Wasserleichen_Info()
{
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_00"); //Hey, no more undead in 100 paces... that's what I call clean work.
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_01"); //Without the drowned corpse, we have one less problem with swamp weed care.
	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_02"); //Here, take this recipe as a little thank you.

	B_GiveInvItems	(self, hero, ItWr_Rezept_Purpurmond, 1);

	AI_Output(self, hero, "Info_Mod_Viran_Wasserleichen_02_03"); //But don't be too greedy.... one vial is enough for beautiful dreams, huh?

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Viran_Pickpocket (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_Pickpocket_Condition;
	information	= Info_Mod_Viran_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Viran_Pickpocket_Condition()
{
	C_Beklauen	(20, ItPl_SwampHerb, 13);
};

FUNC VOID Info_Mod_Viran_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

	Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_BACK, Info_Mod_Viran_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Viran_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Viran_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
};

FUNC VOID Info_Mod_Viran_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Viran_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Viran_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Viran_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Viran_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Viran_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Viran_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Viran_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Viran_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Viran_EXIT (C_INFO)
{
	npc		= Mod_3002_PSINOV_Viran_REL;
	nr		= 1;
	condition	= Info_Mod_Viran_EXIT_Condition;
	information	= Info_Mod_Viran_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Viran_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Viran_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
