INSTANCE Info_Mod_Sly_Hi (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Hi_Condition;
	information	= Info_Mod_Sly_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You ain't got nothin' to do, are you?";
};

FUNC INT Info_Mod_Sly_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sly_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Hi_15_00"); //You ain't got nothin' to do, are you?
	AI_Output(self, hero, "Info_Mod_Sly_Hi_31_01"); //Just take it easy, bro. Why don't you sit down and have some fun with us?
};

INSTANCE Info_Mod_Sly_WasPassiert (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_WasPassiert_Condition;
	information	= Info_Mod_Sly_WasPassiert_Info;
	permanent	= 0;
	important	= 0;
	description	= "What has become of you?";
};

FUNC INT Info_Mod_Sly_WasPassiert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_WasPassiert_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_WasPassiert_15_00"); //What has become of you?
	AI_Output(self, hero, "Info_Mod_Sly_WasPassiert_31_01"); //Nothing else... I think. As long as Cutter doesn't put us to work in the fields, we can't do anything.
	AI_Output(self, hero, "Info_Mod_Sly_WasPassiert_31_02"); //All right, now and then, somebody's going hunting. But I've never been able to do that before, and I don't want to end up as a wolf food.
};

INSTANCE Info_Mod_Sly_LagerLeerer (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_LagerLeerer_Condition;
	information	= Info_Mod_Sly_LagerLeerer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Is it empty in the warehouse?";
};

FUNC INT Info_Mod_Sly_LagerLeerer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_LagerLeerer_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_LagerLeerer_15_00"); //Is it empty in the warehouse?
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_31_01"); //A little bit, yeah. Most people don't know what has become of them.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_31_02"); //Some of them wanted to go hunting and never came back.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_31_03"); //Either the poor bastards got hit, or the scumbags got out of the way.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_31_04"); //Therefore, we are not allowed to leave the camp without permission.
	AI_Output(self, hero, "Info_Mod_Sly_LagerLeerer_31_05"); //Of course, if you really want to get out, you can't be hindered by the ban.
};

INSTANCE Info_Mod_Sly_Arena (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena_Condition;
	information	= Info_Mod_Sly_Arena_Info;
	permanent	= 0;
	important	= 0;
	description	= "What about the arena? Don't you want to compete there?";
};

FUNC INT Info_Mod_Sly_Arena_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_WasPassiert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena_15_00"); //What about the arena? Don't you want to compete there?
	AI_Output(self, hero, "Info_Mod_Sly_Arena_31_01"); //The arena would be something for me.... Whenever there are fights, I imagine I'm one of the fighters.
	AI_Output(self, hero, "Info_Mod_Sly_Arena_31_02"); //But I am just a simple shadow and I haven't had a sword in my hand for a long time.
	AI_Output(self, hero, "Info_Mod_Sly_Arena_31_03"); //I used to be good once, I was one of the best in the camp. But now?
	AI_Output(self, hero, "Info_Mod_Sly_Arena_31_04"); //Like me, they clean up the arena for breakfast.
};

INSTANCE Info_Mod_Sly_Arena2 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena2_Condition;
	information	= Info_Mod_Sly_Arena2_Info;
	permanent	= 0;
	important	= 0;
	description	= "How about I train you?";
};

FUNC INT Info_Mod_Sly_Arena2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena2_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena2_15_00"); //How about I train you?
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_31_01"); //You look like you got something in the box. I don't care about him.
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_31_02"); //If I succeed at the arena, you'll be a part of the profits.
	AI_Output(hero, self, "Info_Mod_Sly_Arena2_15_03"); //Fine. When do you want to start?
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_31_04"); //Let me get all sober first. Tomorrow morning we can, uh, meet on the lawn between the small pond and the marketplace.
	AI_Output(self, hero, "Info_Mod_Sly_Arena2_31_05"); //There should be enough room.

	Log_CreateTopic	(TOPIC_MOD_SLY_ARENA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLY_ARENA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "I agreed with Sly that we would meet in the morning on the lawn between the pond and the marketplace so that I could train him for the arena.");

	Mod_Sly_Arena_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Sly_Arena3 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena3_Condition;
	information	= Info_Mod_Sly_Arena3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena2))
	&& (Mod_Sly_Arena == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena3_Info()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_31_00"); //Come on, come on. I'm already hot! How do we start?
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_01"); //When I look at you like that, with conditioning. A nice walk around the castle will do you good.
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_02"); //I'd better go with you so you don't cheat.
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_31_03"); //Walking? I thought we were perfecting my swordplay?
	AI_Output(hero, self, "Info_Mod_Sly_Arena3_15_04"); //So you can make a punch and then be out of breath? Get on your feet!
	AI_Output(self, hero, "Info_Mod_Sly_Arena3_31_05"); //All right, if I have to...

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRAINING2");
};

INSTANCE Info_Mod_Sly_Arena4 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena4_Condition;
	information	= Info_Mod_Sly_Arena4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena3))
	&& (Mod_Sly_Arena == 3)
	&& (Npc_GetDistToWP(hero, "OCR_OUTSIDE_HUT_65_MOVEMENT") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena4_Info()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_31_00"); //Ah, I'm dying!
	AI_Output(hero, self, "Info_Mod_Sly_Arena4_15_01"); //Before that, we have to duel. Do you have a gun?
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_31_02"); //Yeah, yeah, yeah, all of it. Got something for you, too, so you don't hurt me too much.

	B_GiveInvItems	(self, hero, ItMw_Schlagstock, 1);

	EquipWeapon	(hero, ItMw_Schlagstock);

	AI_Output(hero, self, "Info_Mod_Sly_Arena4_15_03"); //Let's see what else you got.
	AI_Output(self, hero, "Info_Mod_Sly_Arena4_31_04"); //Okay.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Sly_Arena5 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena5_Condition;
	information	= Info_Mod_Sly_Arena5_Info;
	permanent	= 0;
	important	= 0;
	description	= "That's been pretty neat.";
};

FUNC INT Info_Mod_Sly_Arena5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sly_Arena4))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena5_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_15_00"); //That's been pretty neat. Is the feeling slowly returning?
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_31_01"); //If by feelings you mean pain, it's definitely pain.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_31_02"); //Do you have any more tips for me?

	Info_ClearChoices	(Info_Mod_Sly_Arena5);

	Info_AddChoice	(Info_Mod_Sly_Arena5, "Nah, that's fine.", Info_Mod_Sly_Arena5_B);
	Info_AddChoice	(Info_Mod_Sly_Arena5, "Fight less offensively. You're more into the defensive.", Info_Mod_Sly_Arena5_A);
};

FUNC VOID Info_Mod_Sly_Arena5_C()
{
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_31_00"); //Good. Thank you for your help. I think I'm getting it out. I'm gonna tell Scatty to put me on the list.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_31_01"); //If I win, you get half my paycheck.
	AI_Output(self, hero, "Info_Mod_Sly_Arena5_C_31_02"); //Now I'm going to practice a little more.

	Info_ClearChoices	(Info_Mod_Sly_Arena5);

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "Sly now wants to apply to Scatty for arena fights. So I should stop by his place and ask him when Sly is going to fight. If Sly wins, he promised me half his pay.");

	B_StartOtherRoutine	(self, "ATARENA");
};

FUNC VOID Info_Mod_Sly_Arena5_B()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_B_15_00"); //Nah, that's fine.

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "I've prepared Sly in a fast-paced program for the fights in the arena. That's all it takes to survive.");

	Info_Mod_Sly_Arena5_C();
};

FUNC VOID Info_Mod_Sly_Arena5_A()
{
	AI_Output(hero, self, "Info_Mod_Sly_Arena5_A_15_00"); //Fight less offensively. You're more into the defensive.

	B_LogEntry	(TOPIC_MOD_SLY_ARENA, "I prepared Sly in a quick program for the fights in the arena and gave him a suggestion.");

	Mod_Sly_Tipp = 1;

	Info_Mod_Sly_Arena5_C();
};

INSTANCE Info_Mod_Sly_Arena6 (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Arena6_Condition;
	information	= Info_Mod_Sly_Arena6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sly_Arena6_Condition()
{
	if (Mod_Sly_Arena == 5)
	|| (Mod_Sly_Arena == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_Arena6_Info()
{
	if (Mod_Sly_Arena == 5)
	{
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_31_00"); //Too bad I almost beat that caranto. This calls for revenge!
		AI_Output(hero, self, "Info_Mod_Sly_Arena6_15_01"); //So you're sticking with it?
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_31_02"); //Of course! Just get him dressed warm!

		B_GivePlayerXP	(50);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_31_03"); //Man, without your defensive advice, I wouldn't have cracked Gor Karanto. Tight, but deserved, I'd say.
		AI_Output(hero, self, "Info_Mod_Sly_Arena6_15_04"); //Congratulations.
		AI_Output(self, hero, "Info_Mod_Sly_Arena6_31_05"); //Here's your share.

		B_GiveInvItems	(self, hero, ItMi_Gold, 150);

		AI_Output(self, hero, "Info_Mod_Sly_Arena6_31_06"); //I'm already looking forward to my next duel.

		B_GivePlayerXP	(100);
	};

	B_SetTopicStatus	(TOPIC_MOD_SLY_ARENA, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Sly_SLDSpy (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_SLDSpy_Condition;
	information	= Info_Mod_Sly_SLDSpy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, what's new at the camp?";
};

FUNC INT Info_Mod_Sly_SLDSpy_Condition()
{
	if (Mod_SLD_STT_Mordrag == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_GotoSylvio))
	&& (Mod_SLD_Spy == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sly_SLDSpy_Info()
{
	AI_Output(hero, self, "Info_Mod_Sly_SLDSpy_15_00"); //Hello, what's new at the camp?
	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_31_01"); //Why do you ask?
	AI_Output(hero, self, "Info_Mod_Sly_SLDSpy_15_02"); //I spent some time in the swamp camp and scouted everything there. Here's a stem.

	B_ShowGivenThings	("Stem swamp herb given");

	CreateInvItems	(self, ItMi_Joint, 1);

	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_31_03"); //Ahh, a fresh resinous stem.

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_31_04"); //Oh, yes, about the news. I heard the guards are planning something big for the next few days.
	AI_Output(self, hero, "Info_Mod_Sly_SLDSpy_31_05"); //Some kind of attack at dawn, they said. I'm really curious....

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "Sly thought the guards would be planning a major attack at dawn.");
};

INSTANCE Info_Mod_Sly_Pickpocket (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_Pickpocket_Condition;
	information	= Info_Mod_Sly_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Sly_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Sly_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

	Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_BACK, Info_Mod_Sly_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sly_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sly_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
};

FUNC VOID Info_Mod_Sly_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sly_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sly_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sly_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sly_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sly_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sly_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sly_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sly_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sly_EXIT (C_INFO)
{
	npc		= Mod_801_STT_Sly_MT;
	nr		= 1;
	condition	= Info_Mod_Sly_EXIT_Condition;
	information	= Info_Mod_Sly_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sly_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sly_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
