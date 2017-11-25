INSTANCE Info_Mod_Fester_Hi (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_Hi_Condition;
	information	= Info_Mod_Fester_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello.";
};

FUNC INT Info_Mod_Fester_Hi_Condition()
{
	if (hero.guild == GIL_MIL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_15_00"); //Hello.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_31_01"); //Hey, you're new at camp. You're gonna want to move up fast and make a difference with us.
	AI_Output(hero, self, "Info_Mod_Fester_Hi_15_02"); //Sure, why not.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_31_03"); //Very good. Very good. Then you'd just have to accompany me and two other boys on the hunt, kill some Molerat and Scavenger, not hard at all. What do you say?

	Info_ClearChoices	(Info_Mod_Fester_Hi);

	Info_AddChoice	(Info_Mod_Fester_Hi, "Nah, it's too dull for me.", Info_Mod_Fester_Hi_B);
	Info_AddChoice	(Info_Mod_Fester_Hi, "Sure, I'm on it.", Info_Mod_Fester_Hi_A);
};

FUNC VOID Info_Mod_Fester_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_B_15_00"); //Nah, it's too dull for me.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_B_31_01"); //So, so, but the first one who moans when there's nothing to eat in the camp will decide. Tse, tse, tse, such a good-for-nothing.
	
	Info_ClearChoices	(Info_Mod_Fester_Hi);
};

FUNC VOID Info_Mod_Fester_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Fester_Hi_A_15_00"); //Sure, I'm on it.
	AI_Output(self, hero, "Info_Mod_Fester_Hi_A_31_01"); //Fantastic. Engardo and Nodrak were supposed to have already started running and wait for us in front of the camp. Here we go. Let's go.
	
	Info_ClearChoices	(Info_Mod_Fester_Hi);

	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "WAITFORPLAYER");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "WAITFORPLAYER");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITFORPLAYER");

	Mod_SLD_Fester = 1;

	Log_CreateTopic	(TOPIC_MOD_SLD_FESTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_FESTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "I now run with Fester to the camp to go hunting with him, Engardo and Nodrak.");
};

INSTANCE Info_Mod_Fester_VorLager (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_VorLager_Condition;
	information	= Info_Mod_Fester_VorLager_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_VorLager_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_Hi))
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21") < 300)
	&& (Mod_SLD_Fester == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_VorLager_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_VorLager_31_00"); //Come on, let's go.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SMALLCAVE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "SMALLCAVE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "SMALLCAVE");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_904_SLD_Engardo_MT.aivar[AIV_PARTYMEMBER] = TRUE;
	Mod_1275_SLD_Nodrak_MT.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Fester_AtSmallCave (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_AtSmallCave_Condition;
	information	= Info_Mod_Fester_AtSmallCave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_AtSmallCave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_VorLager))
	&& (Npc_GetDistToWP(hero, "LOCATION_24_IN") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_AtSmallCave_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_00"); //Ahh, here's a good spot.
	AI_Output(hero, self, "Info_Mod_Fester_AtSmallCave_15_01"); //Huh, shall we lay in wait here?
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_02"); //Uh, yeah, something like that.

	CreateInvItems	(self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_03"); //Ahh, lovely.
	AI_Output(hero, self, "Info_Mod_Fester_AtSmallCave_15_04"); //Uh, what is now...?
	AI_Output(self, hero, "Info_Mod_Fester_AtSmallCave_31_05"); //Oh, the hunt. Well, you see those well-nourished Scavenger and Molerats back there? Hunt them down and bring me ten Scavenger and ten Moleratkeulen each. Any more questions?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SMOKEPAUSE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "SMOKEPAUSE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "SMOKEPAUSE");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Oh, great. While the three of them are getting stoned, I am allowed to kill the well-nourished Scavengers and Molerats and bring ten meat lobes each to Fester.");

	Wld_InsertNpc	(Scavenger_Fett_01, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_02, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_03, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_04, "SPAWN_OW_WARAN_NC_03");
	Wld_InsertNpc	(Scavenger_Fett_05, "SPAWN_OW_WARAN_NC_03");

	Wld_InsertNpc	(Molerat_Fett_01, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_02, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_03, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_04, "OW_PATH_158");
	Wld_InsertNpc	(Molerat_Fett_05, "OW_PATH_158");
};

INSTANCE Info_Mod_Fester_HabFleisch (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_HabFleisch_Condition;
	information	= Info_Mod_Fester_HabFleisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "There are ten scavenger and ten molar clubs each.";
};

FUNC INT Info_Mod_Fester_HabFleisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_AtSmallCave))
	&& (Npc_IsDead(Scavenger_Fett_01))
	&& (Npc_IsDead(Scavenger_Fett_02))
	&& (Npc_IsDead(Scavenger_Fett_03))
	&& (Npc_IsDead(Scavenger_Fett_04))
	&& (Npc_IsDead(Scavenger_Fett_05))
	&& (Npc_IsDead(Molerat_Fett_01))
	&& (Npc_IsDead(Molerat_Fett_02))
	&& (Npc_IsDead(Molerat_Fett_03))
	&& (Npc_IsDead(Molerat_Fett_04))
	&& (Npc_IsDead(Molerat_Fett_05))
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= 20)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_HabFleisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_HabFleisch_15_00"); //There are ten scavenger and ten molar clubs each.

	B_ShowGivenThings	("20 raw meat given");

	Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, 20);

	AI_Output(self, hero, "Info_Mod_Fester_HabFleisch_31_01"); //Laundry? Oh, the meat. Well done, kid.
	AI_Output(self, hero, "Info_Mod_Fester_HabFleisch_31_02"); //Now we go a little bit further to hunt something else in a cave.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GREATCAVE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "GREATCAVE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "GREATCAVE");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Fester_AtGreatCave (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_AtGreatCave_Condition;
	information	= Info_Mod_Fester_AtGreatCave_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_AtGreatCave_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_HabFleisch))
	&& (Npc_GetDistToWP(hero, "LOCATION_23_CAVE_1_OUT") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_AtGreatCave_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_AtGreatCave_15_00"); //Uh, and what are we trying to kill here?
	AI_Output(self, hero, "Info_Mod_Fester_AtGreatCave_31_01"); //Did I say shot? I meant take care of it.
	AI_Output(self, hero, "Info_Mod_Fester_AtGreatCave_31_02"); //Uh, but just a minute. Some giant orcs have settled in the cave. Go inside and take care of her.
	AI_Output(hero, self, "Info_Mod_Fester_AtGreatCave_15_03"); //Uh, looks more like some young goblins to me... oh, never mind.
	
	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITING");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "WAITING");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "WAITING");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Now I get to kill the three young goblins in the cave.");

	Wld_InsertNpc	(Gobbo_Fester_01, "LOCATION_23_CAVE_1_02");
	Wld_InsertNpc	(Gobbo_Fester_02, "LOCATION_23_CAVE_1_02");
	Wld_InsertNpc	(Gobbo_Fester_03, "LOCATION_23_CAVE_1_02");
};

INSTANCE Info_Mod_Fester_GobbosTot (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_GobbosTot_Condition;
	information	= Info_Mod_Fester_GobbosTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_GobbosTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_AtGreatCave))
	&& (Npc_IsDead(Gobbo_Fester_01))
	&& (Npc_IsDead(Gobbo_Fester_02))
	&& (Npc_IsDead(Gobbo_Fester_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_GobbosTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_GobbosTot_31_00"); //Very good, now we can make some bogweed... uh, practice alchemy. Wait a minute till we're done.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "POTIONPAUSE");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "POTIONPAUSE");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "POTIONPAUSE");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Now I'm allowed to wait for the three of them until they've made new bogweed stalks.");
};

INSTANCE Info_Mod_Fester_PotionReady (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_PotionReady_Condition;
	information	= Info_Mod_Fester_PotionReady_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_PotionReady_Condition()
{
	if (Mod_SLD_Fester == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_PotionReady_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_PotionReady_31_00"); //There, now you can go back. Go ahead, we'll follow you.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOCAMP");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "FOLLOWTOCAMP");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "FOLLOWTOCAMP");

	Wld_InsertNpc	(Gobbo_Fester_04, "OW_PATH_161");

	B_LogEntry	(TOPIC_MOD_SLD_FESTER, "Grmpf, last but not least I am allowed to play escort for the drunk boys to the camp.");

	Wld_InsertItem	(ItWr_Weisenchronik,	"FP_ITEM_FESTER_WEISENCHRONIK");
};

INSTANCE Info_Mod_Fester_BackAtCamp (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_BackAtCamp_Condition;
	information	= Info_Mod_Fester_BackAtCamp_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_BackAtCamp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fester_PotionReady))
	&& (Npc_GetDistToWP(hero, "OW_PATH_07_21") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_BackAtCamp_Info()
{
	AI_Output(self, hero, "Info_Mod_Fester_BackAtCamp_31_00"); //Hey, you did a really good job... for a rookie. Will Lee and Sylvio report that you've done reasonably well.
	AI_Output(self, hero, "Info_Mod_Fester_BackAtCamp_31_01"); //Here's some weed and ore for your reward.

	B_ShowGivenThings	("4 stems of bog cabbage and 3 ore preserved");

	CreateInvItems	(hero, ItMi_Joint, 4);
	CreateInvItems	(hero, ItMi_Nugget, 3);

	B_GivePlayerXP	(400);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_904_SLD_Engardo_MT, "START");
	B_StartOtherRoutine	(Mod_1275_SLD_Nodrak_MT, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_904_SLD_Engardo_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1275_SLD_Nodrak_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	B_SetTopicStatus	(TOPIC_MOD_SLD_FESTER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Fester_KesselProblem (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_KesselProblem_Condition;
	information	= Info_Mod_Fester_KesselProblem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, Fester. Another walk tonight?";
};

FUNC INT Info_Mod_Fester_KesselProblem_Condition()
{
	if (Mod_NL_TalkesselProblem == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_KesselProblem_Info()
{
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_00"); //Hello, Fester. Another walk tonight?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_01"); //What...?! Who are you and what do you want?
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_02"); //The question is, what are you going to tell me... about your little businesses.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_03"); //What...?! Damn it! Hey, man, don't give me any trouble.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_04"); //I just traded some things for ore.
	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_05"); //Couple of things?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_06"); //Yeah, well, a little swampweed. Man, what's the big deal?
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_07"); //I deserved most of it with other stuff, for example that shadow runner's fur he wanted.

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_08"); //What, the shadow runner's coat? Then....

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_09"); //Hey, come on. Don't you talk about the swampweed thing.
	AI_Output(self, hero, "Info_Mod_Fester_KesselProblem_31_10"); //If you keep your mouth shut, you won't regret it either.

	if (Npc_HasItems(hero, ItWr_KesselProblem) == 0)
	{
		AI_TurnAway	(hero, self);

		AI_Output(hero, self, "Info_Mod_Fester_KesselProblem_15_11"); //I should confront Bruce.
	};

	B_LogEntry	(TOPIC_MOD_NL_TALKESSELPROB, "Bruce didn't kill any shadow runners. He bought the fur against ore.");
};

INSTANCE Info_Mod_Fester_KesselProblem2 (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_KesselProblem2_Condition;
	information	= Info_Mod_Fester_KesselProblem2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Fester_KesselProblem2_Condition()
{
	if (Mod_NL_TalKesselProblem >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fester_KesselProblem2_Info()
{
	if (Mod_NL_TalkesselProblem == 5)
	{
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_00"); //Phew, thank you so much for not telling Lee about the herb.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_01"); //I barely got away with a black eye.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_02"); //Well, I have to be a little more careful for now. Hence... Here, take the herb.

		B_ShowGivenThings	("2 black way, 2 green novices, 1 dream call and 5 stems preserved");

		CreateInvItems	(hero, ItMi_Joint, 5);
		CreateInvItems	(hero, ItMi_Addon_Joint_01, 2);
		CreateInvItems	(hero, ItMi_Addon_Joint_02, 2);
		CreateInvItems	(hero, ItMi_Traumruf, 1);

		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_03"); //And... er... another little recipe.

		B_GiveInvItems	(self, hero, ItWr_Weisenchronik, 1);

		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_04"); //Preferably before sleeping.... then you're gonna have a super relaxed night, and you're gonna be fine the next morning.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_05"); //Have fun with that. But don't exaggerate, huh?
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_06"); //Great, because of you I'm allowed to work the next few weeks from morning till night.
		AI_Output(self, hero, "Info_Mod_Fester_KesselProblem2_31_07"); //Did you really do a great job.... Son of a bitch!
	};
};

INSTANCE Info_Mod_Fester_Pickpocket (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_Pickpocket_Condition;
	information	= Info_Mod_Fester_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fester_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Joint, 3);
};

FUNC VOID Info_Mod_Fester_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

	Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_BACK, Info_Mod_Fester_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fester_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fester_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
};

FUNC VOID Info_Mod_Fester_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fester_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fester_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fester_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fester_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fester_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fester_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fester_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fester_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fester_EXIT (C_INFO)
{
	npc		= Mod_784_SLD_Fester_MT;
	nr		= 1;
	condition	= Info_Mod_Fester_EXIT_Condition;
	information	= Info_Mod_Fester_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fester_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fester_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
