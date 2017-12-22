INSTANCE Info_Mod_Jones_Hi (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Hi_Condition;
	information	= Info_Mod_Jones_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Hi_Condition()
{
	if (Mod_DI_InselErkunden == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_00"); //Well, if these notes are true, then you must banish the spirit that cursed them during their lifetime.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_01"); //Banish a ghost? How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_02"); //Well, first you have to hand over his mortal remains to Earth. After that, he must be granted a funeral ceremony.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_03"); //If these conditions are fulfilled, then his soul is no longer bound to the mortal shell.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_04"); //And then what?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_05"); //Well... either he enters Beliar's realm, or he stays in Adano's realm and will attack us.
	AI_Output(hero, self, "Info_Mod_Jones_Hi_15_06"); //And how do I fight a ghost?
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_07"); //With your sword or the bow? Not at all. Even with earthly magic you will have little luck.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_08"); //I have an empty ghost rune and a sword forged with an ectoplasmic coating.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_13_09"); //You must either hurt the spirit so badly with the sword until its aura goes out, or prepare the spell that catches the ghost in this rune.

	Info_ClearChoices	(Info_Mod_Jones_Hi);
	
	Info_AddChoice	(Info_Mod_Jones_Hi, "I can handle the ghost.", Info_Mod_Jones_Hi_Schwert);
	Info_AddChoice	(Info_Mod_Jones_Hi, "I want to prepare the spell.", Info_Mod_Jones_Hi_Zauber);
};

FUNC VOID Info_Mod_Jones_Hi_Schwert()
{
	AI_Output(hero, self, "Info_Mod_Jones_Hi_Schwert_15_00"); //I can handle the ghost.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Schwert_13_01"); //All right, here's the sword.

	CreateInvItems	(self, ItMw_Geisterschwert, 1);
	B_GiveInvItems	(self, hero, ItMw_Geisterschwert, 1);

	AI_Output(self, hero, "Info_Mod_Jones_Hi_Schwert_13_02"); //Once I release his spirit, you must destroy him.

	Info_ClearChoices	(Info_Mod_Jones_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Jones_Hi_Zauber()
{
	AI_Output(hero, self, "Info_Mod_Jones_Hi_Zauber_15_00"); //I want to prepare the spell.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_01"); //All right, here's the rune.

	CreateInvItems	(self, ItMi_Geisterrune, 1);
	B_GiveInvItems	(self, hero, ItMi_Geisterrune, 1);

	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_02"); //The spirit is trapped in it. This is done by a spell.
	AI_Output(self, hero, "Info_Mod_Jones_Hi_Zauber_13_03"); //I only have five spell rolls, so make sure you don't use too many. If you applied the spell to the spirit three times, the soul should be trapped.

	CreateInvItems	(self, ItSc_Geisterspell, 5);
	B_GiveInvItems	(self, hero, ItSc_Geisterspell, 5);

	Info_ClearChoices	(Info_Mod_Jones_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Jones_Los (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Los_Condition;
	information	= Info_Mod_Jones_Los_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Los_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Los_13_00"); //All right, then. You know where the center of the zombies is?
	AI_Output(hero, self, "Info_Mod_Jones_Los_15_01"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Jones_Los_13_02"); //Then lead me there.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "SKELETT");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Jones_Anfang (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Anfang_Condition;
	information	= Info_Mod_Jones_Anfang_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Anfang_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Los))
	&& (Npc_GetDistToWp(hero, "WP_DI_HOEHLE_RITUAL") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Anfang_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Anfang_13_00"); //Ah yes, be ready, I will begin now.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Jones is now beginning to invoke the spirit. I should get ready.");

	Npc_ExchangeRoutine	(self, "CIRCLE");
	Npc_ExchangeRoutine	(Mod_1541_PIR_Greg_DI, "CIRCLE");
};

INSTANCE Info_Mod_Jones_Ende (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Ende_Condition;
	information	= Info_Mod_Jones_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jones_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Anfang))
	&& (Mod_GeisterpiratWurdeGekillt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jones_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_00"); //We made it!

	if (Npc_HasItems(hero, ItMi_Geisterrune_Voll) == 1)
	{
		AI_Output(self, hero, "Info_Mod_Jones_Ende_13_01"); //The ghost is trapped in the rune. Let's see what I can do with it.

		B_GiveInvItems	(hero, self, ItMi_Geisterrune_Voll, 1);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Jones_Ende_13_02"); //You have destroyed the spirit and liberated its soul.
	};

	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_03"); //I noticed the wall over there during the ritual. I think it is possible that this is not yet the end of the cave.
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_04"); //You should look for a switch or something similar, maybe you can find something interesting there.
	AI_Output(self, hero, "Info_Mod_Jones_Ende_13_05"); //I'm going back to the beach.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "The spirit has been defeated, but Jones has noticed a wall that he believes can be opened. I should talk to Greg now.");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Jones_Pickpocket (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;
	condition	= Info_Mod_Jones_Pickpocket_Condition;
	information	= Info_Mod_Jones_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Jones_Pickpocket_Condition()
{
	C_Beklauen	(97, ItMi_Gold, 42);
};

FUNC VOID Info_Mod_Jones_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

	Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_BACK, Info_Mod_Jones_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jones_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jones_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
};

FUNC VOID Info_Mod_Jones_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jones_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jones_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jones_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jones_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jones_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jones_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jones_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jones_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jones_EXIT (C_INFO)
{
	npc		= Mod_1554_KDW_Jones_DI;
	nr		= 1;	
	condition	= Info_Mod_Jones_EXIT_Condition;
	information	= Info_Mod_Jones_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jones_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jones_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
