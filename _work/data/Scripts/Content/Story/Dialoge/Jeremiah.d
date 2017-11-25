INSTANCE Info_Mod_Jeremiah_Hi (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Hi_Condition;
	information	= Info_Mod_Jeremiah_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello, what are you in charge of?";
};

FUNC INT Info_Mod_Jeremiah_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jeremiah_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Hi_15_00"); //Hello, what are you in charge of?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Hi_04_01"); //I'm the alchemist and distiller of the camp. I'm pretty busy right now. Maybe I'll have more time to talk in a few days.

	Mod_NL_JeremiahDay = Wld_GetDay();
};

INSTANCE Info_Mod_Jeremiah_Diver (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Diver_Condition;
	information	= Info_Mod_Jeremiah_Diver_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_Diver_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Hi))
	&& (Wld_GetDay()-3 >= Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Diver_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_00"); //Ahh, you're just in time.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_01"); //What, what's it about?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_02"); //You're not one of those drunken thieves who usually sit around in the pub. You are destined to be able to swim and dive persistently.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_03"); //Yes, I suppose so. I've already swum a few meters or so...
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_04"); //Very good. Very good. Some time ago a lot of me because of a herb on the shore of the lake down at the rice lord. I thought I remember seeing it in a book before.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_05"); //Anyway, I experimented with it a little bit and found a, uh, reasonable use for it. In the meantime, however, I have harvested everything on the banks and I was wondering if you....
	AI_Output(hero, self, "Info_Mod_Jeremiah_Diver_15_06"); //If I couldn't dive in the lake afterwards.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Diver_04_07"); //Yeah, that's right. The plant has long jagged leaves, easy to recognize. Bring me five copies. That should last for a while.

	Log_CreateTopic	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHKRAUT, "I'm supposed to dive in the lake down by the rice lord for an herb with long, serrated leaves and bring Jeremiah five of them.");
};

INSTANCE Info_Mod_Jeremiah_Kraut (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Kraut_Condition;
	information	= Info_Mod_Jeremiah_Kraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the herb.... I think.";
};

FUNC INT Info_Mod_Jeremiah_Kraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Diver))
	&& (Mod_NL_Herkuleskraut == 1)
	&& (Npc_HasItems(hero, ItPl_Herkuleskraut) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Kraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Kraut_15_00"); //I have the herb.... I think.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_01"); //Excellent, give me...

	B_GiveInvItems	(hero, self, ItPl_Herkuleskraut, 5);

	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_02"); //As a little thank-you, I'll tell you what you can do with the plants.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_03"); //Don't tell anyone else about it in the camp under any circumstances. Not that Lee's gonna hear about it.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Kraut_15_04"); //Yeah, that's all right.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_05"); //If you turn a stem from this herb mixed with swampweed, you will experience an effect that will skin you smooth out of your socks.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Kraut_04_06"); //The thrust of power you experience is immense... at least as long as the effect lasts. After that, you first need some rest.

	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHKRAUT, LOG_SUCCESS);

	B_GivePlayerXP	(300);

	Mod_NL_JeremiahDay = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jeremiah_Swimmer (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Swimmer_Condition;
	information	= Info_Mod_Jeremiah_Swimmer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_Swimmer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Kraut))
	&& (Wld_GetDay()-2 >= Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Swimmer_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_00"); //You have already proved that you can swim and dive.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Swimmer_15_01"); //What am I gonna do this time?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_02"); //Well, swim and dive.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_03"); //When the mercenaries once slaughtered a bunch of Lurkers at the lake in front of the camp, which proliferated there very vividly, I noticed when collecting herbs that the other animals were completely crazy about a certain organ of the Lurkers.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_04"); //I found that it contained a liquid that could increase concentration and vitality.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_05"); //Now there used to be a Dammlurker near our lake in the camp. Some guy killed him sometime.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_06"); //But before that, the cattle could have laid eggs in here somewhere. It was the only Lurker in the area and I heard once that they retreat from their conspecifics while they breed.
	AI_Output(hero, self, "Info_Mod_Jeremiah_Swimmer_15_07"); //And I'm supposed to dive now to find access to a cave where the eggs might be?
	AI_Output(self, hero, "Info_Mod_Jeremiah_Swimmer_04_08"); //Yeah, I see you understand. If you find eggs, bring them to me. Normally the creatures hatch at this time of the year, so they should be already well developed....

	Log_CreateTopic	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHLURKER, "Jeremiah wants me to go diving in the camp lake to look for a lurker cave. If I find eggs, I should bring them to him.");
};

INSTANCE Info_Mod_Jeremiah_Lurker (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Lurker_Condition;
	information	= Info_Mod_Jeremiah_Lurker_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, I actually found some eggs.";
};

FUNC INT Info_Mod_Jeremiah_Lurker_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Swimmer))
	&& (Npc_HasItems(hero, ItMi_LurkerEgg) == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_Lurker_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_Lurker_15_00"); //Here, I actually found some eggs.

	B_GiveInvItems	(hero, self, ItMi_LurkerEgg, 5);

	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_01"); //You did a good job, excellent. I should hopefully be able to extract enough secretion from such fresh raw material.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_02"); //Anyway, I experimented with a plant called the Kronstöckel once. Rarely, but you travel a lot.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_03"); //If you get me two more copies now, I will brew you a potion that will permanently increase your concentration and vitality.
	AI_Output(self, hero, "Info_Mod_Jeremiah_Lurker_04_04"); //Meanwhile, I'm going to start pullin' the Lurkers out of the egg...

	B_LogEntry	(TOPIC_MOD_SLD_JEREMIAHLURKER, "Now Jeremiah wants to make me a potion if I get him two crests.");

	B_GivePlayerXP	(250);

	Mod_NL_JeremiahHasEier = 1;
	Mod_NL_JeremiahHasEier_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Jeremiah_PermHerb (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_PermHerb_Condition;
	information	= Info_Mod_Jeremiah_PermHerb_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the plants.";
};

FUNC INT Info_Mod_Jeremiah_PermHerb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_Lurker))
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_PermHerb_Info()
{
	AI_Output(hero, self, "Info_Mod_Jeremiah_PermHerb_15_00"); //I have the plants.

	B_GiveInvItems	(hero, self, ItPl_Perm_Herb, 2);

	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_01"); //Outstanding. That'll make a great brew, uh, a great potion.
	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_02"); //The little creatures also gave away more and stronger secretions than I had expected....
	AI_Output(self, hero, "Info_Mod_Jeremiah_PermHerb_04_03"); //Come back tomorrow. Then I should be done.

	B_SetTopicStatus	(TOPIC_MOD_SLD_JEREMIAHLURKER, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	Mod_NL_JeremiahDay = Wld_GetDay();

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Jeremiah_SpecialTrank (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_SpecialTrank_Condition;
	information	= Info_Mod_Jeremiah_SpecialTrank_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Jeremiah_SpecialTrank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jeremiah_PermHerb))
	&& (Wld_GetDay() > Mod_NL_JeremiahDay)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Jeremiah_SpecialTrank_Info()
{
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_00"); //Oh, there you are. The potion for you is ready. Here he is, sir. Cheers!

	B_GiveInvItems	(self, hero, ItPo_Health_01, 1);

	B_UseItem	(hero, ItPo_Health_01);

	hero.attribute[ATR_STRENGTH] += 4;
	hero.attribute[ATR_DEXTERITY] += 4;
	hero.attribute[ATR_HITPOINTS_MAX] += 4;
	hero.attribute[ATR_HITPOINTS] += 4;

	PrintScreen	("Strength + 4, Skill + 4, Life Energy + 4", -1, -1, FONT_SCREEN, 2);

	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_01"); //And? How are you feeling?
	AI_Output(hero, self, "Info_Mod_Jeremiah_SpecialTrank_15_02"); //Very good, why do you ask?
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_03"); //Oh, uh, just because of.... because of the taste, that's right.
	AI_Output(hero, self, "Info_Mod_Jeremiah_SpecialTrank_15_04"); //Hmm, for someone who mainly has his experience of distilling liquor and observing nature, you seem to be quite talented in alchemy. I think so, don't I?
	AI_Output(self, hero, "Info_Mod_Jeremiah_SpecialTrank_04_05"); //Hmm, yeah... Yes, I understand my trade, as you can see. (to itself) Puhh, then everything went well again...

	var oCNpc her;
	her = Hlp_GetNpc (hero);
	var int totaldivingtime;
	totaldivingtime = roundf(her.divetime);
	totaldivingtime = totaldivingtime*2;
	her.divetime = mkf(totaldivingtime);
};

INSTANCE Info_Mod_Jeremiah_Pickpocket (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_Pickpocket_Condition;
	information	= Info_Mod_Jeremiah_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Jeremiah_Pickpocket_Condition()
{
	C_Beklauen	(51, ItMi_Flask, 3);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

	Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_BACK, Info_Mod_Jeremiah_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Jeremiah_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Jeremiah_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Jeremiah_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Jeremiah_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Jeremiah_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Jeremiah_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Jeremiah_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Jeremiah_EXIT (C_INFO)
{
	npc		= Mod_1087_BAU_Jeremiah_MT;
	nr		= 1;
	condition	= Info_Mod_Jeremiah_EXIT_Condition;
	information	= Info_Mod_Jeremiah_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Jeremiah_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Jeremiah_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
