INSTANCE Info_Mod_Maleth_Hi (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Hi_Condition;
	information	= Info_Mod_Maleth_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Maleth_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Maleth_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_08_00"); //Look at you, another stranger! Are you on your way to town?

	Info_ClearChoices	(Info_Mod_Maleth_Hi);

	Info_AddChoice	(Info_Mod_Maleth_Hi, "None of your business.", Info_Mod_Maleth_Hi_B);
	Info_AddChoice	(Info_Mod_Maleth_Hi, "Yes, exactly.", Info_Mod_Maleth_Hi_A);
};

FUNC VOID Info_Mod_Maleth_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_B_15_00"); //None of your business.

	var C_Item NovArmorOrNot;
	NovArmorOrNot = Npc_GetEquippedArmor(hero);

	if (Hlp_IsItem(NovArmorOrNot, ITAR_FAKE_NOV_L))
	{
		AI_Output(self, hero, "Info_Mod_Maleth_Hi_B_08_01"); //Whatever you say. But don't expect us to provide you with board and lodging, even if you are a novice of the monastery.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Maleth_Hi_B_08_02"); //Whatever you say, stranger. But don't make any trouble for us here.
	};

	Info_ClearChoices	(Info_Mod_Maleth_Hi);
};

FUNC VOID Info_Mod_Maleth_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_A_15_00"); //Yeah, that's right.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_01"); //You'd do well to.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_02"); //Apart from the wild animals, since the fall of the barrier, all kinds of creepy riffraff have been hanging around here, like the strange dark pilgrim who came here before.
	AI_Output(hero, self, "Info_Mod_Maleth_Hi_A_15_03"); //A dark pilgrim?
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_04"); //Yes, a rather sinister figure. He went to town. Luckily, he didn't ask us for shelter.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_05"); //Well, our farmer wouldn't have given him a place to live anyway, but rather referred him to the city.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_06"); //Just like the last guy who was here. I didn't feel too good about him either.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_07"); //Speaking calmly, but with his tattoos, he looked like he was about to come at your throat.
	AI_Output(self, hero, "Info_Mod_Maleth_Hi_A_08_08"); //They didn't let him into town. He's been hanging around a lot ever since.

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "Maleth has seen the dark pilgrim pass in the direction of the city. Maybe I'll find out more from the gatekeepers.");

	B_GivePlayerXP	(50);
	
	Info_ClearChoices	(Info_Mod_Maleth_Hi);
};

INSTANCE Info_Mod_Maleth_Neuankoemmlinge (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Neuankoemmlinge_Condition;
	information	= Info_Mod_Maleth_Neuankoemmlinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "You sound as if you could listen to all the newcomers (... )";
};

FUNC INT Info_Mod_Maleth_Neuankoemmlinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Neuankoemmlinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Neuankoemmlinge_15_00"); //You sound like you can pass on all the newcomers.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_01"); //Well, it's getting a little crowded right now. Just a few weeks ago, this was the quietest farm in Khorinis, and I just had to be careful that the goblins and wolves didn't get too funny.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_02"); //But since then: strangers pass by as if we were a tourist attraction. Robbers have settled somewhere along the way, and further back a huge tower is said to have been built overnight, from which an evil power emanates.
	AI_Output(self, hero, "Info_Mod_Maleth_Neuankoemmlinge_08_03"); //And me and my flock of sheep, shit.
};

INSTANCE Info_Mod_Maleth_Hof (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Hof_Condition;
	information	= Info_Mod_Maleth_Hof_Info;
	permanent	= 0;
	important	= 0;
	description	= "What kind of farm is this?";
};

FUNC INT Info_Mod_Maleth_Hof_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Hof_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Hof_15_00"); //What kind of farm is this?
	AI_Output(self, hero, "Info_Mod_Maleth_Hof_08_01"); //The farm belongs to the farmer Lobart. We enjoy the protection of the city - at least theoretically. In return, we must leave a large part of our yield to the paladins.
	AI_Output(self, hero, "Info_Mod_Maleth_Hof_08_02"); //You'll find Lobart over there, towards the houses. He keeps an eye on everything.
};

INSTANCE Info_Mod_Maleth_Wolfsplage (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Wolfsplage_Condition;
	information	= Info_Mod_Maleth_Wolfsplage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you making such a face?";
};

FUNC INT Info_Mod_Maleth_Wolfsplage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Hi))
	&& (Kapitel > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_Wolfsplage_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_00"); //Why are you making such a face?
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_01"); //Oh, we've been having more and more problems with wolves lately. They're tearing my sheep apart, and I can't catch them.
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_02"); //Where are these animals?
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_03"); //Do you want to mess with those animals?
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_04"); //That's what I had in mind.
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_05"); //You would do that? Well, these creatures always hang around near the statue of the Inno and always appear when you look away.
	AI_Output(hero, self, "Info_Mod_Maleth_Wolfsplage_15_06"); //I'll take a look at that.
	AI_Output(self, hero, "Info_Mod_Maleth_Wolfsplage_08_07"); //Good luck to you!

	Log_CreateTopic	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MALETH_WOLFSPLAGE, "Shepherd Maleth has a problem with wolves. They hide near the Innoshrine and tear their sheep when they don't look. I should take care of it.");

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Blackwolf_Maleth_01, "NW_FARM1_PATH_SPAWN_07");
	Wld_InsertNpc	(Blackwolf_Maleth_02, "NW_FARM1_PATH_SPAWN_07");
	Wld_InsertNpc	(Blackwolf_Maleth_03, "NW_FARM1_PATH_SPAWN_07");
};

INSTANCE Info_Mod_Maleth_WoelfeTot (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_WoelfeTot_Condition;
	information	= Info_Mod_Maleth_WoelfeTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The wolves won't cause you any more trouble!";
};

FUNC INT Info_Mod_Maleth_WoelfeTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maleth_Wolfsplage))
	&& (Npc_IsDead(Blackwolf_Maleth_01))
	&& (Npc_IsDead(Blackwolf_Maleth_02))
	&& (Npc_IsDead(Blackwolf_Maleth_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Maleth_WoelfeTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Maleth_WoelfeTot_15_00"); //The wolves won't cause you any more trouble!
	AI_Output(self, hero, "Info_Mod_Maleth_WoelfeTot_08_01"); //Thanks, I owe you one.

	B_LogEntry	(TOPIC_MOD_MALETH_WOLFSPLAGE, "I killed the wolves and Maleth was happy.");
	B_SetTopicStatus	(TOPIC_MOD_MALETH_WOLFSPLAGE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Maleth_Pickpocket (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_Pickpocket_Condition;
	information	= Info_Mod_Maleth_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Maleth_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

	Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_BACK, Info_Mod_Maleth_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Maleth_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Maleth_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Maleth_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Maleth_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Maleth_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Maleth_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Maleth_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Maleth_EXIT (C_INFO)
{
	npc		= Mod_911_BAU_Maleth_NW;
	nr		= 1;
	condition	= Info_Mod_Maleth_EXIT_Condition;
	information	= Info_Mod_Maleth_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Maleth_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Maleth_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
