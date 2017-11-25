INSTANCE Info_Mod_Lefty_Hi (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_Hi_Condition;
	information	= Info_Mod_Lefty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lefty_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_00"); //You look pretty battered.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_01"); //Don't remind me of that.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_02"); //What the hell happened?
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_03"); //Some time ago, some guy came to our camp. The peasants set him up against us and he beat us up badly.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_04"); //He caught me in the head like that.... I can barely remember what his face looked like.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_05"); //So, so, so, looks kind of familiar.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_06"); //Hey, the guy was... er... over six feet tall, I tell you, that's right. Full of bear. Against him an orc looked like a boy....
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_07"); //I held out for a long time, but then he finally caught me.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_08"); //Over two meters? Sounds scary to me.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_09"); //You don't believe me, huh? Should have seen him! He would have cleaned you for breakfast!

	if (hero.guild == GIL_MIL) {
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_10"); //You're new in the camp, aren't you?
		AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_11"); //In a way already....
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_12"); //If you want to make a difference, you have to make yourself useful, show that you have something on the box. I already have a job for you.
		AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_13"); //Yeah, what's it about?
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_14"); //I told you about that lousy thug that came at me.
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_15"); //Anyway, the peasants have been very rebellious ever since he was here. Somebody ought to show them who's in charge again.
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_16"); //That would be an opportunity for you to show that you can deal.

		Info_ClearChoices	(Info_Mod_Lefty_Hi);

		Info_AddChoice	(Info_Mod_Lefty_Hi, "What, defenceless peasants? You're gonna have to find someone else.", Info_Mod_Lefty_Hi_B);
		Info_AddChoice	(Info_Mod_Lefty_Hi, "Sure, I'll beat the peasants together in no time.", Info_Mod_Lefty_Hi_A);
	};
};

FUNC VOID Info_Mod_Lefty_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_B_15_00"); //What, defenceless peasants? You're gonna have to find someone else.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_B_24_01"); //Bottle. I'll just have to take over again.

	Mod_LeftysBauern = 1;
	
	Info_ClearChoices	(Info_Mod_Lefty_Hi);
};

FUNC VOID Info_Mod_Lefty_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_A_15_00"); //Sure, I'll beat the peasants together in no time.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_A_24_01"); //Very good. Very good. Boil at least five peasants... and you should definitely take care of that Horatio too. He seems to be some kind of leader of them.

	Mod_LeftysBauern = 2;

	Log_CreateTopic	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_LEFTYBAUERN, "Lefty wants me to beat up five farmers and Horatio for Lefty.");
	
	Info_ClearChoices	(Info_Mod_Lefty_Hi);
};

INSTANCE Info_Mod_Lefty_BauernVerbatscht (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_BauernVerbatscht_Condition;
	information	= Info_Mod_Lefty_BauernVerbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_BauernVerbatscht_Condition()
{
	if (Mod_LeftysBauern == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_BauernVerbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_BauernVerbatscht_24_00"); //Well, that'll show the peasants who's in charge here. Go straight to the rice lord, he'll reward you for it.
	AI_Output(self, hero, "Info_Mod_Lefty_BauernVerbatscht_24_01"); //Guys like you are good for us here in the camp.

	B_LogEntry	(TOPIC_MOD_SLD_LEFTYBAUERN, "Lefty was happy. I'm supposed to get my reward from the rice lord.");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Lefty_RufusWeg (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusWeg_Condition;
	information	= Info_Mod_Lefty_RufusWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusWeg_Condition()
{
	if (Mod_LeftysBauern == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_00"); //Damn, that stupid peasant Rufus has scratched the corner. The rice lord is beside himself. That only gives the other peasants some stupid ideas.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_01"); //Whoever catches the fugitive again would certainly get a good reward.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_02"); //(slightly more quiet to oneself) Although the rice lord wouldn't mind if Rufus were to be cut off.

	Log_CreateTopic	(TOPIC_MOD_SLD_RUFUS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "The farmer Rufus has escaped. Whoever would bring him back could expect a reward from the rice lord.");
};

INSTANCE Info_Mod_Lefty_RufusDa (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusDa_Condition;
	information	= Info_Mod_Lefty_RufusDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusDa_Condition()
{
	if (Mod_SLD_Rufus == 3)
	&& (!Npc_IsDead(Mod_1082_BAU_Rufus_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_00"); //You actually found Rufus and brought him back. He's in trouble now....

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_01"); //Anyway, you've gained a few points again. Go straight to the rice lord.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_02"); //Anyway, that's a good thing. Go straight to the rice lord.
	};

	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "I'm supposed to go to the rice lord now.");

	Mod_SLD_Rufus = 6;
};

INSTANCE Info_Mod_Lefty_RufusTot (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusTot_Condition;
	information	= Info_Mod_Lefty_RufusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusTot_Condition()
{
	if (Npc_IsDead(Mod_1082_BAU_Rufus_MT))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_00"); //You were outside the camp. Have you seen Rufus, by any chance?
	AI_Output(hero, self, "Info_Mod_Lefty_RufusTot_15_01"); //Yeah. In his blood.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_02"); //You're not saying...
	AI_Output(hero, self, "Info_Mod_Lefty_RufusTot_15_03"); //Yes, it is.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_04"); //Go to the rice lord. He'll be interested.

	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "I shall report to the rice lord and Rufus' fate to him.");
};

INSTANCE Info_Mod_Lefty_OJGBoss (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_OJGBoss_Condition;
	information	= Info_Mod_Lefty_OJGBoss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_OJGBoss_Condition()
{
	if (Mod_LeeOJGBoss < Wld_GetDay()-3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_OJGBoss_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_OJGBoss_24_00"); //(slightly awesome) Hey, um, you're the new leader of the Orchunters.
	AI_Output(hero, self, "Info_Mod_Lefty_OJGBoss_15_01"); //Yeah, what else?
	AI_Output(self, hero, "Info_Mod_Lefty_OJGBoss_24_02"); //Nothing, nothing, nothing... just... the rice lord has a present for you.... to, uh, pay you our respects.
};

INSTANCE Info_Mod_Lefty_Pickpocket (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_Pickpocket_Condition;
	information	= Info_Mod_Lefty_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lefty_Pickpocket_Condition()
{
	C_Beklauen	(53, ItFo_Water, 6);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

	Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_BACK, Info_Mod_Lefty_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lefty_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lefty_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lefty_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lefty_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lefty_EXIT (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_EXIT_Condition;
	information	= Info_Mod_Lefty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lefty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lefty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
