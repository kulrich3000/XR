INSTANCE Info_Mod_Mika_Hi (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Hi_Condition;
	information	= Info_Mod_Mika_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mika_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_00"); //Hey, I've seen you around here before. You must be new in town.
	AI_Output(hero, self, "Info_Mod_Mika_Hi_15_01"); //That's possible.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_02"); //I'm giving you the advice to take good care of yourself when you leave town.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_28_03"); //Recently there has been an increasing number of reports of rather uncanny events.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	Info_AddChoice	(Info_Mod_Mika_Hi, "What events are you talking about?", Info_Mod_Mika_Hi_B);
	Info_AddChoice	(Info_Mod_Mika_Hi, "I'm not interested.", Info_Mod_Mika_Hi_A);
};

FUNC VOID Info_Mod_Mika_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_B_15_00"); //What events are you talking about?
	AI_Output(self, hero, "Info_Mod_Mika_Hi_B_28_01"); //Well, it's rumored that dark powers are at odds with each other. People disappear, others suddenly fall seriously ill.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_B_28_02"); //And some have even reported that the dead rise up from their graves and, as undead, cause their dreadful mischief.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	Info_AddChoice	(Info_Mod_Mika_Hi, "(more)", Info_Mod_Mika_Hi_D);
	Info_AddChoice	(Info_Mod_Mika_Hi, "It doesn't mean anything at all.", Info_Mod_Mika_Hi_C);
};

FUNC VOID Info_Mod_Mika_Hi_E()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_E_28_00"); //Okay, whatever you say. Don't come running when undead or other sinister creatures are after you.

	Info_ClearChoices	(Info_Mod_Mika_Hi);
};

FUNC VOID Info_Mod_Mika_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_A_15_00"); //I'm not interested.

	Info_Mod_Mika_Hi_E();
};

FUNC VOID Info_Mod_Mika_Hi_D()
{
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_00"); //And only some time ago I saw an uncanny, sinister figure coming from the valley basin in front of the city.
	AI_Output(hero, self, "Info_Mod_Mika_Hi_D_15_01"); //A dark figure? Where did she go?
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_02"); //Continue up the path. Either in the direction of Akils Hof, which is located to the left of the path, or straight ahead in the direction of Taverne.
	AI_Output(self, hero, "Info_Mod_Mika_Hi_D_28_03"); //I wasn't very happy, that fellow.

	Info_ClearChoices	(Info_Mod_Mika_Hi);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_DUNKLERPILGER, "The dark pilgrim has apparently circumnavigated the city and proceeded towards Akil's farm, or Orlan's tavern.");
};

FUNC VOID Info_Mod_Mika_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Mika_Hi_C_15_00"); //It doesn't mean anything at all.

	Info_Mod_Mika_Hi_E();
};

INSTANCE Info_Mod_Mika_Yasin (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Yasin_Condition;
	information	= Info_Mod_Mika_Yasin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, Mika.";
};

FUNC INT Info_Mod_Mika_Yasin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_Aufgabe))
	&& (Wld_IsTime(20,00,06,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Yasin_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_00"); //Hey, Mika.

	if (!Npc_KnowsInfo(hero, Info_Mod_Urnol_WerBistDu))
	{
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_01"); //I haven't found the pilgrim you told me about.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_02"); //But a group of bandits or thieves, I don't know.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_03"); //Are they going into town? Tell me.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_04"); //I think so, yes. They're lurking in that cave up ahead, to the left of the road.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_05"); //You must be insane, but good, good luck!
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_06"); //I caught the pilgrim you told me about. And even more.
		AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_07"); //Tell me about it.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_08"); //There's this cave up here a bit, there's this cave on the left.
		AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_09"); //I saw some bad people there. Bandits or thieves, I'd say.
	};

	AI_Output(self, hero, "Info_Mod_Mika_Yasin_28_10"); //I want to check it out, what am I here for? You got my back?
	AI_Output(hero, self, "Info_Mod_Mika_Yasin_15_11"); //Certainly.

	B_LogEntry	(TOPIC_MOD_ASS_YASIN_MIKA, "Mika fell into my trap.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MORD");
};

INSTANCE Info_Mod_Mika_Yasin2 (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Yasin2_Condition;
	information	= Info_Mod_Mika_Yasin2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Yasin2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Yasin))
	&& (Npc_GetDistToWP(self, "NW_CITY_TO_FOREST_04_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Yasin2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Yasin2_28_00"); //There's no one here. The birds must have flown out.
	AI_Output(hero, self, "Info_Mod_Mika_Yasin2_15_01"); //Not quite. There's one left here.
	AI_Output(self, hero, "Info_Mod_Mika_Yasin2_28_02"); //Where? Where?
	AI_Output(hero, self, "Info_Mod_Mika_Yasin2_15_03"); //Where you're standing.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 2);
};

INSTANCE Info_Mod_Mika_Banditen (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Banditen_Condition;
	information	= Info_Mod_Mika_Banditen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anything new here?";
};

FUNC INT Info_Mod_Mika_Banditen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Hi))
	&& ((Mod_Gilde == 1)
	|| (Mod_Gilde == 2)
	|| (Mod_Gilde == 3))
	&& (Kapitel > 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Banditen_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_00"); //Anything new here?
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_01"); //For days now, the militia have been chasing after a small group of bandits who constantly attack the traders.
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_02"); //Before we get hold of them, they always disappear in the woods near Akil Hof.
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_03"); //There's no way we're going in there. It's full of animals.
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_04"); //What would you give me if I killed those bandits!
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_05"); //Well, 100 gold pieces would be in it for you. Does that mean you're killing those guys?
	AI_Output(hero, self, "Info_Mod_Mika_Banditen_15_06"); //Yes, that's what it means!
	AI_Output(self, hero, "Info_Mod_Mika_Banditen_28_07"); //You must be insane, but good, good luck!

	Log_CreateTopic	(TOPIC_MOD_MIKA_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MIKA_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MIKA_BANDITEN, "The militia is having trouble with a small group of bandits. They're supposed to be hiding in the woods near Akil's farm. I'll have to take care of it.");
};

INSTANCE Info_Mod_Mika_BanditenTot (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_BanditenTot_Condition;
	information	= Info_Mod_Mika_BanditenTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bandits are history!";
};

FUNC INT Info_Mod_Mika_BanditenTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mika_Banditen))
	&& (Npc_IsDead(Mod_1969_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_1970_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_1971_BDT_Bandit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_BanditenTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_BanditenTot_15_00"); //The bandits are history!
	AI_Output(self, hero, "Info_Mod_Mika_BanditenTot_28_01"); //I didn't think you'd be able to do this on your own, kiddo. Here's the gold you promised me!

	CreateInvItems	(self, ItMi_Gold, 100);
	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(250);

	B_Göttergefallen(1, 1);

	B_LogEntry	(TOPIC_MOD_MIKA_BANDITEN, "The bandits are finished and Mika is satisfied.");
	B_SetTopicStatus	(TOPIC_MOD_MIKA_BANDITEN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Mika_Randolph (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Randolph_Condition;
	information	= Info_Mod_Mika_Randolph_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Randolph_Condition()
{
	if (Mod_Randolph_Started == 11)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlaf_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Randolph_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_00"); //You better get to town fast.
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_01"); //There are demons floating around out here at the moment, leaving no one alive to cross their path.
	AI_Output(hero, self, "Info_Mod_Mika_Randolph_15_02"); //Demons? Where do these come from?
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_03"); //I don't know, they're all over the woods near the city. And in the vicinity of Lobart's court there is also an obscure figure.
	AI_Output(self, hero, "Info_Mod_Mika_Randolph_28_04"); //Anyway, I have to be careful now and I don't have time to talk anymore.
};

INSTANCE Info_Mod_Mika_RandolphWeg (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_RandolphWeg_Condition;
	information	= Info_Mod_Mika_RandolphWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_RandolphWeg_Condition()
{
	if ((Mod_Randolph_Started == 13)
	|| (Mod_Randolph_Started == 16))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Parlaf_RandolphWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_RandolphWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_00"); //That's good news. The demons seem to have disappeared again.
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_01"); //I suppose they must have realized they're no match for us.
	AI_Output(self, hero, "Info_Mod_Mika_RandolphWeg_28_02"); //So you can go back to town with peace of mind.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Mika_Dokumente (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Dokumente_Condition;
	information	= Info_Mod_Mika_Dokumente_Info;
	permanent	= 1;
	important	= 0;
	description	= "You confiscated Baltram's notes?";
};

FUNC INT Info_Mod_Mika_Dokumente_Condition()
{
	if (Mod_REL_Dokumente == 3)
	|| (Mod_REL_Dokumente == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_00"); //You confiscated Baltram's notes?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_01"); //Correct.
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_02"); //And they're still in your possession?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_03"); //Right.
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_15_04"); //Would you chew it up...?
	AI_Output(self, hero, "Info_Mod_Mika_Dokumente_28_05"); //200 gold.

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);

	if (Mod_Verhandlungsgeschick > 0)
	&& (Mod_REL_Dokumente == 3)
	{
		Info_AddChoice	(Info_Mod_Mika_Dokumente, "What would Lord Hagen say...", Info_Mod_Mika_Dokumente_C);
	};

	Info_AddChoice	(Info_Mod_Mika_Dokumente, "I'll come back later.", Info_Mod_Mika_Dokumente_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Mika_Dokumente, "Deal.", Info_Mod_Mika_Dokumente_A);
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_C()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_C_15_00"); //What would Lord Hagen say about keeping confiscated goods?

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Mika_Dokumente_C_28_01"); //Oh, take it already, I can't do anything with it.

		CreateInvItems	(hero, ItWr_Lehrling01, 1);
		CreateInvItems	(hero, ItWr_Lehrling02, 1);
		B_ShowGivenThings	("Getting the apprentice's sheets");

		Npc_RemoveInvItems	(self, ItWr_Lehrling01, 1);
		Npc_RemoveInvItems	(self, ItWr_Lehrling02, 1);

		B_RaiseHandelsgeschick (5);

		Mod_REL_Dokumente = 5;

		B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "I have finally come into possession of the leaves and only have to return them to the apprentice. Seems like something really hot...");

		Info_ClearChoices	(Info_Mod_Mika_Dokumente);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Mika_Dokumente_C_28_02"); //200 gold or no notes.

		Mod_REL_Dokumente = 4;
	};
};

FUNC VOID Info_Mod_Mika_Dokumente_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_B_15_00"); //I'll come back later.

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);
};

FUNC VOID Info_Mod_Mika_Dokumente_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Dokumente_A_15_00"); //Deal.

	Npc_RemoveInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItWr_Lehrling01, 1);
	CreateInvItems	(hero, ItWr_Lehrling02, 1);

	Npc_RemoveInvItems	(self, ItWr_Lehrling01, 1);
	Npc_RemoveInvItems	(self, ItWr_Lehrling02, 1);

	B_ShowGivenThings	("200 gold given and leaves of the apprentice obtained");

	Mod_REL_Dokumente = 5;

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "I have finally come into possession of the leaves and only have to return them to the apprentice. Seems like something really hot...");

	Info_ClearChoices	(Info_Mod_Mika_Dokumente);
};

INSTANCE Info_Mod_Mika_VinoBrennerei (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_VinoBrennerei_Condition;
	information	= Info_Mod_Mika_VinoBrennerei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_VinoBrennerei_Condition()
{
	if (Kapitel >= 3)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Lobart_VinoBrennerei))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Vino_Brennerei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_VinoBrennerei_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_00"); //Hold on a second.
	AI_Output(hero, self, "Info_Mod_Mika_VinoBrennerei_15_01"); //What is it?
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_02"); //You travel a lot out there. Have you seen Vino anywhere?
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_03"); //Lobart is very worried because he left the farm two days ago and hasn't come back yet.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_04"); //And I can't help but recall that he passed the city gate here.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_05"); //However, I don't know where he went afterwards.
	AI_Output(hero, self, "Info_Mod_Mika_VinoBrennerei_15_06"); //No, I haven't seen him lately either.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_07"); //No one at Lobart's farm wants to know where he went.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_08"); //He's been on the field all day with the other farmhands.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_09"); //Somebody must have heard something.
	AI_Output(self, hero, "Info_Mod_Mika_VinoBrennerei_28_10"); //And I'm allowed to stand up here and ask any questions.

	Log_CreateTopic	(TOPIC_MOD_VINO_WO, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VINO_WO, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_VINO_WO, "Vino is missing at Lobart's farm.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Mika had seen Vino pass the east gate, but could not remember where he went afterwards.");
	B_LogEntry_NS	(TOPIC_MOD_VINO_WO, "Maybe I should talk to his peasants in the field.");
};

INSTANCE Info_Mod_Mika_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_AndreVermaechtnis_Condition;
	information	= Info_Mod_Mika_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_AndreVermaechtnis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_AndreVermaechtnis))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis_28_00"); //Damn...
	AI_Output(hero, self, "Info_Mod_Mika_AndreVermaechtnis_15_01"); //What have we got here? Hot stuff?
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis_28_02"); //I.... uhm... Shit, let's get outta here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Mika_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Mika_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_AndreVermaechtnis2_Condition()
{
	if (Mod_PAL_MikaHehler == 1)
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_08") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_AndreVermaechtnis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_AndreVermaechtnis2_28_00"); //Shit, we're trapped. Fight for your life, or we'll end up like Yasin.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	Mod_587_NONE_Jesper_NW.guild = GIL_STRF;
	Npc_SetTrueGuild	(Mod_587_NONE_Jesper_NW, GIL_STRF);
};

INSTANCE Info_Mod_Mika_Pflanzensammler (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Pflanzensammler_Condition;
	information	= Info_Mod_Mika_Pflanzensammler_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mika_Pflanzensammler_Condition()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_Info()
{
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_00"); //Hey, hold it right there!
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_02"); //The herbalists complained that you were constantly picking up all the medicinal plants in the area and keeping them to yourself.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_03"); //The existing ones would hardly be sufficient to cover the demand.
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_15_04"); //I didn't know it was forbidden to pick up plants myself. What do you want from me?
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_05"); //You give me 50 medicinal plants, and I'll pay you almost as good as one of the merchants.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_28_06"); //You ain't gonna get no more trouble for this.

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Info_AddChoice	(Info_Mod_Mika_Pflanzensammler, "This is extortion. (... )", Info_Mod_Mika_Pflanzensammler_B);
	Info_AddChoice	(Info_Mod_Mika_Pflanzensammler, "All right, then. I hope it helps.", Info_Mod_Mika_Pflanzensammler_A);
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_B()
{
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_B_15_00"); //This is extortion. No one can forbid me from gathering herbs!
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_01"); //I regret your decision.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_02"); //She's forcing me to denounce my help in case you're attacked outside the city gates.
	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_B_28_03"); //And now: go.

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Mod_Mika_Pflanzen = 2;
};

FUNC VOID Info_Mod_Mika_Pflanzensammler_A()
{
	AI_Output(hero, self, "Info_Mod_Mika_Pflanzensammler_A_15_00"); //All right, then. I hope it helps.

	B_GiveInvItems	(hero, self, ItPl_Health_Herb_01, 50);

	Npc_RemoveInvItems	(self, ItPl_Health_Herb_01, 50);

	AI_Output(self, hero, "Info_Mod_Mika_Pflanzensammler_A_28_01"); //A wise decision. Have a nice day.

	B_GiveInvItems	(self, hero, ItMi_Gold, 60);

	B_GivePlayerXP	(150);

	Info_ClearChoices	(Info_Mod_Mika_Pflanzensammler);

	Mod_Mika_Pflanzen = 1;
};

INSTANCE Info_Mod_Mika_Pickpocket (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_Pickpocket_Condition;
	information	= Info_Mod_Mika_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Mika_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Mika_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

	Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_BACK, Info_Mod_Mika_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mika_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mika_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
};

FUNC VOID Info_Mod_Mika_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mika_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mika_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mika_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mika_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mika_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mika_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mika_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mika_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mika_EXIT (C_INFO)
{
	npc		= Mod_598_MIL_Mika_NW;
	nr		= 1;
	condition	= Info_Mod_Mika_EXIT_Condition;
	information	= Info_Mod_Mika_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mika_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mika_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
