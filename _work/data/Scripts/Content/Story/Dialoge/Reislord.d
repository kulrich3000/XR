INSTANCE Info_Mod_Reislord_Hi (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_Hi_Condition;
	information	= Info_Mod_Reislord_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_BauernVerbatscht))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_Hi_11_00"); //Ahh, I heard you helped us. I'll put a good word in with Sylvio for you. Then you'll take it to the Orchunter sometime.
	AI_Output(self, hero, "Info_Mod_Reislord_Hi_11_01"); //And here, take the gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 300);

	B_GivePlayerXP	(100);

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 4;

	B_SetTopicStatus	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Reislord_RufusDa (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_RufusDa_Condition;
	information	= Info_Mod_Reislord_RufusDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_RufusDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusDa))
	&& (Mod_SLD_Rufus < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_RufusDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_11_00"); //Hey, you're the guy who got Rufus to come back. The peasants will now consider running away a second time.
	AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_11_01"); //Here, take this gold and ore.

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_11_02"); //Sylvio will only get good things to hear about you.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Reislord_RufusDa_11_03"); //Good work.
	};

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 8);

	B_ShowGivenThings	("300 gold and 8 ore preserved");

	B_GivePlayerXP	(300);

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 6;

	Mod_SLD_Rufus = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Reislord_RufusTot (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_RufusTot_Condition;
	information	= Info_Mod_Reislord_RufusTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "I wanted to report that Rufus is dead.";
};

FUNC INT Info_Mod_Reislord_RufusTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusTot))
	&& (Mod_SLD_Rufus < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_RufusTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_00"); //I wanted to report that Rufus is dead.
	AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_01"); //Really?! How did this happen?

	if (Mod_SLD_Rufus == 5)
	{
		AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_02"); //I killed him.
		AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_03"); //Well, better than if he'd escaped.

		if (hero.guild == GIL_MIL)
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_04"); //Sylvio will love hearing about this.
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_05"); //And the peasants won't dare to flee. Here, take the gold.
		}
		else
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_06"); //Excellent work. The peasants won't dare to flee.
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_07"); //Here, take the gold.
		};

		CreateInvItems	(hero, ItMi_Gold, 300);
		CreateInvItems	(hero, ItMi_Nugget, 5);

		B_ShowGivenThings	("300 gold and 5 ore preserved");

		B_GivePlayerXP	(350);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Reislord_RufusTot_15_08"); //He was torn apart by wild animals.
		AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_09"); //Good. His fate will be a warning to the other peasants. Here, take the gold as a reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, 250);

		if (hero.guild == GIL_MIL)
		{
			AI_Output(self, hero, "Info_Mod_Reislord_RufusTot_11_10"); //Sylvio will only get good things to hear about you.
		};

		B_GivePlayerXP	(300);
	};

	Mod_Reislord_DayChecker = Wld_GetDay();

	Mod_LeftysBauern = 6;

	Mod_SLD_Rufus = 7;

	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Reislord_OJGBoss (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_OJGBoss_Condition;
	information	= Info_Mod_Reislord_OJGBoss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Reislord_OJGBoss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lefty_OJGBoss))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Reislord_OJGBoss_Info()
{
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_11_00"); //Ahh, there you are. I'm glad you made it this far and are the leader of the Orchunters.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_11_01"); //From the moment I saw you, I knew it was a real warhorse...
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_15_02"); //Come on, get to the point.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_11_03"); //(subservient) Yes, immediately.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_11_04"); //Well, now that you've taken Sylvios place, you're entitled to our share of the profits. Gold, ore and some good stuff to eat.

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);

	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "What do you mean revenue?", Info_Mod_Reislord_OJGBoss_B);
	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "I won't say no to that.", Info_Mod_Reislord_OJGBoss_A);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_B()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_B_15_00"); //What do you mean revenue?
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_11_01"); //Well... er... for the work we do here, we get our share of ore, gold and merchandise from outside.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_11_02"); //But such a farmer is actually quite frugal and doesn't need that much.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_11_03"); //And we will take our modest share of that.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_B_11_04"); //And of course, you are entitled to a worthy part of it in your important position in the camp.

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);

	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "You know what-- you give the peasants what they really deserve.", Info_Mod_Reislord_OJGBoss_C);
	Info_AddChoice	(Info_Mod_Reislord_OJGBoss, "I won't say no to that.", Info_Mod_Reislord_OJGBoss_A);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_C()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_00"); //You know what-- you give the peasants what they really deserve.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_C_11_01"); //Uh, what-- such as....
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_02"); //And from the last and next shipment, you give the farmers the amount of money they would normally give you and your boys to compensate for their losses.
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_C_15_03"); //Do we understand each other?
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_C_11_04"); //(paralysed) Uh, uh... yes.

	B_GivePlayerXP	(200);

	Mod_NL_ReislordProBauern = 1;
	Mod_NL_ReislordProBauern_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);
};

FUNC VOID Info_Mod_Reislord_OJGBoss_A()
{
	AI_Output(hero, self, "Info_Mod_Reislord_OJGBoss_A_15_00"); //I won't say no to that. My bags feel so empty and something sparkling metal in them would certainly not be missed.
	AI_Output(self, hero, "Info_Mod_Reislord_OJGBoss_A_11_01"); //Of course, as you deserve. I realize that with you everything will continue to go as it should, hehe. Here you are. Have fun with that.

	B_ShowGivenThings	("230 gold, 17 ore, 2 wine and ham preserved");

	CreateInvItems	(hero, ItMi_Gold, 230);
	CreateInvItems	(hero, ItMi_Nugget, 17);
	CreateInvItems	(hero, ItFo_Wine, 2);
	CreateInvItems	(hero, ItFo_Bacon, 1);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Reislord_OJGBoss);
};

INSTANCE Info_Mod_Reislord_Pickpocket (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_Pickpocket_Condition;
	information	= Info_Mod_Reislord_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Reislord_Pickpocket_Condition()
{
	C_Beklauen	(115, ItMi_Nugget, 13);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

	Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_BACK, Info_Mod_Reislord_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Reislord_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Reislord_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Reislord_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Reislord_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Reislord_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Reislord_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Reislord_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Reislord_EXIT (C_INFO)
{
	npc		= Mod_2002_BAU_Ricelord_MT;
	nr		= 1;
	condition	= Info_Mod_Reislord_EXIT_Condition;
	information	= Info_Mod_Reislord_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Reislord_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Reislord_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
