INSTANCE Info_Mod_HofstaatTrunkenbold_Hi (C_INFO)
{
	npc		= Mod_7272_HS_Trunkenbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTrunkenbold_Hi_Condition;
	information	= Info_Mod_HofstaatTrunkenbold_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you the drunkard?";
};

FUNC INT Info_Mod_HofstaatTrunkenbold_Hi_Condition()
{
	if (Mod_HSBook == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Hi_15_00"); //Are you the drunkard?
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Hi_04_01"); //...
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Hi_15_02"); //Hello?
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Hi_04_01"); //...
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Hi_15_03"); //HALLO?!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_7011_HS_Alex_REL, "TRUNKENBOLD");

	AI_Teleport	(Mod_7011_HS_Alex_REL, "REL_261");
};

INSTANCE Info_Mod_HofstaatTrunkenbold_Trunken (C_INFO)
{
	npc		= Mod_7272_HS_Trunkenbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTrunkenbold_Trunken_Condition;
	information	= Info_Mod_HofstaatTrunkenbold_Trunken_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTrunkenbold_Trunken_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Trunkenbold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Trunken_Info()
{
	B_GiveInvItems	(self, hero, ItFo_Trunken, 3);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatTrunkenbold_Geliebte (C_INFO)
{
	npc		= Mod_7272_HS_Trunkenbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTrunkenbold_Geliebte_Condition;
	information	= Info_Mod_HofstaatTrunkenbold_Geliebte_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatTrunkenbold_Geliebte_Condition()
{
	if (Mod_SL_PartGeliebte == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Geliebte_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_04_00"); //(yawns) Good morning, Your Majesty. Is it time to celebrate again?
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_15_01"); //Yes, drunkard. Something else, do you remember when you saw the royal... uh... seduced my mistress?
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_04_02"); //Yeah, I remember yawning. She tasted my special drink, hehe. Nobody can take my specialty drunk.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_15_03"); //Give it to me.
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_04_04"); //No.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_15_05"); //What? No.
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_04_06"); //I can't do that. I don't have any more.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_15_07"); //Then make some.
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_04_08"); //Of course, as soon as I'm awake. It takes a while to do this.

	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Geliebte);

	Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Geliebte, "No, you better tell me how you do it.", Info_Mod_HofstaatTrunkenbold_Geliebte_B);
	Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Geliebte, "Fair enough.", Info_Mod_HofstaatTrunkenbold_Geliebte_B);
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Geliebte_B()
{
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_15_00"); //No, you better tell me how you do it.
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_04_01"); //Yes, Your Highness. You need drunkenness, viiiieeel drunkenness. Then you'll need a strange green fruit, that's all.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_15_02"); //Where do I get the drunk?
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_04_03"); //You can get it in a town. The foreigners call drink liquor or juniper. ts... ridiculous.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_15_04"); //What green fruit?
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_04_05"); //It is called melon. You'll get them in Khorata. Pour the drunk into the melon at an alchemy table.
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_B_15_06"); //You're not really awake yet. Here, have some treats.

	CreateInvItems	(self, ItMi_Freudenspender, 1);

	B_UseItem	(self, ItMi_Freudenspender);

	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Geliebte);

	Mod_SL_PartGeliebte = 3;

	B_LogEntry	(TOPIC_MOD_SL_GELIEBTE, "For the special drink with which the drunkard seduced the royal lover at that time, I need a lot of drunk and a melon. Drunk is also known to foreigners as juniper. I can get both in Khorata.");
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Geliebte_A()
{
	AI_Output(hero, self, "Info_Mod_HofstaatTrunkenbold_Geliebte_A_15_00"); //All right, all right.
	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_A_04_01"); //Good, good, good. (yawns) I'm on my way.

	AI_GotoWP	(self, "REL_262");
	AI_GotoWP	(self, "REL_272");

	AI_Output(self, hero, "Info_Mod_HofstaatTrunkenbold_Geliebte_A_04_02"); //It's not the time of the festival... and you're not the king! STIIRB!

	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Geliebte);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_HofstaatTrunkenbold_Pickpocket (C_INFO)
{
	npc		= Mod_7272_HS_Trunkenbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTrunkenbold_Pickpocket_Condition;
	information	= Info_Mod_HofstaatTrunkenbold_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_HofstaatTrunkenbold_Pickpocket_Condition()
{
	C_Beklauen	(17, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatTrunkenbold_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatTrunkenbold_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatTrunkenbold_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatTrunkenbold_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatTrunkenbold_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatTrunkenbold_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatTrunkenbold_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatTrunkenbold_EXIT (C_INFO)
{
	npc		= Mod_7272_HS_Trunkenbold_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatTrunkenbold_EXIT_Condition;
	information	= Info_Mod_HofstaatTrunkenbold_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatTrunkenbold_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatTrunkenbold_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
