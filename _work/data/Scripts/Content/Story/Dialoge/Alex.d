INSTANCE Info_Mod_Alex_Trunkenbold (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Trunkenbold_Condition;
	information	= Info_Mod_Alex_Trunkenbold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Trunkenbold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTrunkenbold_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Trunkenbold_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_00"); //It's gone!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_01"); //He's gone, isn't he?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_02"); //No, he's AWAY! Completely WAY!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_03"); //And... when will he be back?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_04"); //I would say.... in about four months.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_05"); //What?!
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_06"); //Yeah, it kind of hibernates. As soon as the time of great celebration begins, he wakes up.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_07"); //How long has he been gone?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_08"); //About eight months.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_09"); //Well, never mind. I need alcohol.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_10"); //You need what?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_11"); //Well, alcohol, booze or beer or something. The womanizer said I get it from the drunkard.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_12"); //Oh, you mean drunk!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_13"); //What?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_14"); //Drunk! That's the stuff that got the drunk away.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_15"); //How do you think he got his name?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_16"); //And how do I get it?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_17"); //Why don't you ask him?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_18"); //But he's gone.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_19"); //Gone? He's right here. You're a--

	AI_TurnToNpc	(self, Mod_7272_HS_Trunkenbold_REL);

	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_20"); //Drunkard, would you give the gentleman a drink?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Alex_Magier (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Magier_Condition;
	information	= Info_Mod_Alex_Magier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Magier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_MagierTermin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Magier_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_00"); //Ahh, you must be the new royal girl for everything!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_01"); //Weren't you the royal tomb a few days ago?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_02"); //Of course, what do you think?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_03"); //...
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_04"); //Don't make such a despondent face! There's work for you! Go to the royal hermit!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_06"); //Finding out that will be your first royal task.
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_07"); //What?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_08"); //My mind will not remember where he lives. But I'm sure I've seen him recently!
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_09"); //Just go to the places I've been lately!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_10"); //And where have you been lately?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_11"); //If I knew that, I wouldn't need your help finding him! Now go!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_12"); //And... what am I supposed to do with him?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_13"); //With whom?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_14"); //At the hermit's house.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_15"); //You have news of the hermit's whereabouts?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_16"); //No.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_17"); //Ah... Could you please find him and ask him for the usual delivery mushrooms?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_18"); //All right, all right.

	Wld_InsertNpc	(Mod_7286_HS_Eremit_REL, "REL_247");

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "The court magician, who is the former pit grave, wants me to get the usual supply of mushrooms from the hermit. However, he no longer knows where to find him. I'm supposed to search the places where the magician was last.");
};

INSTANCE Info_Mod_Alex_GeheimnisFreudenspender (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_GeheimnisFreudenspender_Condition;
	information	= Info_Mod_Alex_GeheimnisFreudenspender_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a question about the narcotics here.";
};

FUNC INT Info_Mod_Alex_GeheimnisFreudenspender_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Magier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_GeheimnisFreudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_GeheimnisFreudenspender_15_00"); //I have a question about the narcotics here.
	AI_Output(self, hero, "Info_Mod_Alex_GeheimnisFreudenspender_08_01"); //Away! You are not yet ready to know this secret!
};

INSTANCE Info_Mod_Alex_Pilzsporen (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pilzsporen_Condition;
	information	= Info_Mod_Alex_Pilzsporen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your spurs!";
};

FUNC INT Info_Mod_Alex_Pilzsporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatEremit_Hi))
	&& (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Pilzsporen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Pilzsporen_15_00"); //Here's your spurs!
	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_08_01"); //You found the hermit? Wonderful. Take these spurs to the king's secretary of drugs!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_08_03"); //Search for the royal hunter in the vicinity of the camp. He will show you the way!

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "The spores are to be taken to the secretary of drugs, whom I am to find with the help of the royal hunter. I think these spores are the secret of the glee dispensers.");
};

INSTANCE Info_Mod_Alex_Transportsystem (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Transportsystem_Condition;
	information	= Info_Mod_Alex_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for an easy way into the swamps.";
};

FUNC INT Info_Mod_Alex_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_00"); //I'm looking for an easy way into the swamps.
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_08_01"); //And you come to me?
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_02"); //I thought maybe you could create a teleporter or let your magic play somewhere else...
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_08_03"); //Oh, yes.... My magic. All right, your wish is yours! Meet me at the gates of the castle in two days!

	Mod_SL_Meer = 6;

	Mod_SL_AlexGraben = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Alex will use his magic to take care of a transport system. I'm supposed to meet him outside the gate in two days.");
};

INSTANCE Info_Mod_Alex_TeleporterFertig (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_TeleporterFertig_Condition;
	information	= Info_Mod_Alex_TeleporterFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_TeleporterFertig_Condition()
{
	if (Mod_SL_Meer == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_TeleporterFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_TeleporterFertig_08_00"); //Ah, there you are. Just come with me, just come with me!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LOCH");
};

INSTANCE Info_Mod_Alex_AtLoch (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_AtLoch_Condition;
	information	= Info_Mod_Alex_AtLoch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_AtLoch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_TeleporterFertig))
	&& (Npc_GetDistToWP(self, "REL_236") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_AtLoch_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_00"); //Here, my transport system.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_01"); //A... Hole?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_02"); //In a sense... Yes, but it's also a teleporter.
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_03"); //You step in here, fall and get out of the swamp. Isn't that great?
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_04"); //You dug a hole from here to the swamp in two days?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_05"); //Yeah.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_06"); //I had something with more.... Magic awaits...
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_07"); //Well... So... I mean....
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_08"); //Okay, it will serve its purpose... I hope.

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "A hole? Well, anyway, the transport problem is probably solved. I should show it to the king.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MAGIER");

	Wld_SendTrigger	("EVT_LEVELCHANGETOSUMPF");
};

INSTANCE Info_Mod_Alex_Lochgraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Lochgraben_Condition;
	information	= Info_Mod_Alex_Lochgraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Lochgraben_Condition()
{
	if (Mod_SL_Schwaechen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Lochgraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_00"); //Oh, hello. Well, are you impressed with my hole?
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_01"); //Of course it is. There is certainly nothing and no one who can compete with you in digging holes!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_02"); //Hey, you got that right. I'm busy as a digger.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_03"); //There's no one and nothing that digs faster than me... except.
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_04"); //Except what?
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_05"); //Except for a crawler. Crawlers are incredible when it comes to digging.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_06"); //Such a crawler could dig a hole over there, in the ground on the other side of Fluffy's mountain, within a night, that would be so deep that you wouldn't see the ground!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_07"); //But luckily there are no crawlers here... just me.

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "Minecrawlers are better diggers than the hole graves. If I summoned one, he could dig a deeper hole than the pitcher's and hit him.");

	Wld_InsertItem	(ItSc_SumCrawler, "FP_ITEM_CRAWLERSCROLL");
};

INSTANCE Info_Mod_Alex_LochGegraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_LochGegraben_Condition;
	information	= Info_Mod_Alex_LochGegraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_LochGegraben_Condition()
{
	if (Mod_SL_PartLochgraeber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_LochGegraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_00"); //Ah, good morning. You want to admire my funeral arts again, don't you?
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_01"); //I guess you want to dig a hole yourself. Oh, there's one already.
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_02"); //Let me take a look at that. You dug with a spoon, didn't you?

	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_03"); //The hole is barely empty.... just... gram... just maal.... THIS IS THE DEEPEST HOLE I' VE EVER SEEN!!!!
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_04"); //How did you do that, you greenhorn? There must be a trick to it.

	AI_GotoWP	(self, "REL_HS_008");
	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_05"); //That... That... Aaaaaaaaaaaaaaaaaaaaaaaahhhhhhh...

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "I gave it to the hole digger, though...");

	Mod_SL_PartLochgraeber = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alex_Pickpocket (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pickpocket_Condition;
	information	= Info_Mod_Alex_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Alex_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_BACK, Info_Mod_Alex_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alex_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alex_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
};

FUNC VOID Info_Mod_Alex_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alex_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alex_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alex_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alex_EXIT (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_EXIT_Condition;
	information	= Info_Mod_Alex_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alex_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alex_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
