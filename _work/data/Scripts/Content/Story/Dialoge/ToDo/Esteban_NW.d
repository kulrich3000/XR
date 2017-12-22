INSTANCE Info_Mod_Esteban_NW_Hi (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Hi_Condition;
	information	= Info_Mod_Esteban_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Whistler sent me.";
};

FUNC INT Info_Mod_Esteban_NW_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_00"); //Whistler sent me to you. He said you could help us expand the camp's influence.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_01"); //I could probably really do that. Even if you don't believe it, we bandits are powerful.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_02"); //And what exactly can you do for us?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_03"); //One of our people, Morgahard, is currently on the farm of the big farmer and keeps an eye on the mercenaries for us.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_04"); //Well, I don't want to go into it in more detail, but he has a stone in his board with some important people.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_05"); //And what role do I play in this?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_06"); //Well, he's got a little problem with some powerful people in the city of khorinis.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_07"); //He was thrown into the colony for a crime he was accused of. He became too influential for them.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_08"); //He hasn't been able to show up in town since. However, if you can find proof of his innocence, we could help you.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_09"); //OK, where should I look?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_10"); //Talk to Cornelius, the deputy governor.

	Log_CreateTopic	(TOPIC_MOD_AL_MORGAHARD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_MORGAHARD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_AL_AUSBREITUNGK, TOPIC_MOD_AL_MORGAHARD, "Esteban told me that we should make it possible for Morgahard to get into town before he helps us.", "Esteban wants Morgahard back in town. I'll speak to Cornelius, the deputy governor.");
};

INSTANCE Info_Mod_Esteban_NW_Gerbrandt (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Gerbrandt_Condition;
	information	= Info_Mod_Esteban_NW_Gerbrandt_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found out that Gerbrandt was involved in this.";
};

FUNC INT Info_Mod_Esteban_NW_Gerbrandt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Cornelius))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Gerbrandt_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Gerbrandt_15_00"); //I found out that Gerbrandt was involved in this. However, I can't prove anything to him.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Gerbrandt_07_01"); //You should talk to Diego about Gerbrandt, he's known him for a long time.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Esteban said Diego could help me.");

	Mob_CreateItems	("WOODCHIP", ItWr_AL_GebrandtDokumente, 1);
};

INSTANCE Info_Mod_Esteban_NW_MorgahardDarfWieder (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_MorgahardDarfWieder_Condition;
	information	= Info_Mod_Esteban_NW_MorgahardDarfWieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Morgahard can go back to town.";
};

FUNC INT Info_Mod_Esteban_NW_MorgahardDarfWieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_GerbrandtGefangen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_MorgahardDarfWieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_MorgahardDarfWieder_15_00"); //Morgahard can go back to town.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_MorgahardDarfWieder_07_01"); //All right, I'll go back to the Minental, turn to Morgahard from now on.

	B_LogEntry_More	(TOPIC_MOD_AL_MORGAHARD, TOPIC_MOD_AL_AUSBREITUNGK, "Esteban will go back to the Minental. I'm supposed to stick with Morgahard now.", "Morgahard is allowed back in town and is now my contact person.");
	B_SetTopicStatus	(TOPIC_MOD_AL_MORGAHARD, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Esteban_NW_Kleidung (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Kleidung_Condition;
	information	= Info_Mod_Esteban_NW_Kleidung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Why are you wearing these clothes?";
};

FUNC INT Info_Mod_Esteban_NW_Kleidung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Kleidung_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Kleidung_15_00"); //Why are you wearing these clothes?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Kleidung_07_01"); //Meinst du, ich spaziere mit der Banditenkleidung in die Stadt, sage den Stadtwachen "good day" und bitte um eine Privataudienz bei Hagen?
};

INSTANCE Info_Mod_Esteban_NW_Castlemine (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Castlemine_Condition;
	information	= Info_Mod_Esteban_NW_Castlemine_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, how are things going in Khorinis now?";
};

FUNC INT Info_Mod_Esteban_NW_Castlemine_Condition()
{
	if (Mod_Banditen_Irdorath_NW == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Castlemine_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_00"); //So, how are things going in Khorinis now?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_01"); //I had hoped to get more out of coming back here....
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_02"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_03"); //Outstanding invoices. Before I was thrown into the colony, I had some reserves in the vicinity.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_04"); //But that the mercenaries now, as patrons of the peasants, prevent me from being able to rescue them.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_05"); //But one night I sneak up to this dirty secob and fight it out of him....
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_06"); //Sekob the farmer? What's he got to do with it?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_07"); //Well, he's the one who stores my stuff. I had given him a lump of gold to keep it for me.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_08"); //But now that I was with him to pick things up, he just threatened to send the mercenaries after me if I let him see me again.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_09"); //It cost me a lot of control not to smash his skull right now.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_10"); //But unfortunately, we can't afford a conflict with the mercenaries.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_11"); //The things are definitely in the locked chest.

	AI_TurnToNpc	(self, hero);
};

INSTANCE Info_Mod_Esteban_NW_Castlemine2 (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Castlemine2_Condition;
	information	= Info_Mod_Esteban_NW_Castlemine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got your reserves.";
};

FUNC INT Info_Mod_Esteban_NW_Castlemine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Castlemine))
	&& (Npc_HasItems(hero, ItMi_EstebanPaket_01) == 1)
	&& (Npc_HasItems(hero, ItMi_EstebanPaket_02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Castlemine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine2_15_00"); //Ich habe deine "reserves".
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_01"); //Fact! I'm really baffled. I hope we don't soon have to fight off angry mercenaries?
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine2_15_02"); //Don't worry about that.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_03"); //Excellent! You did a really good job. Here, take some cabbage, ore and gold to thank you.

	B_ShowGivenThings	("300 Gold, 10 Ore, 5 Black Wise Men and 4 Dream Cries received");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 10);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 5);
	CreateInvItems	(hero, ItMi_Traumruf, 4);

	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_04"); //Oh, you should have that ring, too. It can always be useful for you, if you want to make it easier for someone with a little bit of emphasis on their valuables. Have fun with that.

	B_GiveInvItems	(self, hero, ItRi_Verschlagenheit, 1);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Esteban_NW_Pickpocket (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Pickpocket_Condition;
	information	= Info_Mod_Esteban_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Esteban_NW_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_BACK, Info_Mod_Esteban_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Esteban_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Esteban_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Esteban_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Esteban_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Esteban_NW_EXIT (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_EXIT_Condition;
	information	= Info_Mod_Esteban_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Esteban_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Esteban_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
