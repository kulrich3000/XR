INSTANCE Info_Mod_Joe_Hi (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Hi_Condition;
	information	= Info_Mod_Joe_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Joe_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joe_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Joe_Hi_10_01"); //I'm Joe.
};

INSTANCE Info_Mod_Joe_Flugblaetter (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Flugblaetter_Condition;
	information	= Info_Mod_Joe_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Joe_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Joe_Flugblaetter_10_01"); //Oh, thank you. Thank you. Let's see....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Joe_Flugblaetter_10_02"); //Ah yes. Maybe I'll stop by Matteo's.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Joe_Diego (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Diego_Condition;
	information	= Info_Mod_Joe_Diego_Info;
	permanent	= 0;
	important	= 0;
	description	= "Diego needs a replacement.";
};

FUNC INT Info_Mod_Joe_Diego_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Diego_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Diego_Info()
{
	AI_Output(hero, self, "Info_Mod_Joe_Diego_15_00"); //Diego needs a replacement.
	AI_Output(self, hero, "Info_Mod_Joe_Diego_10_01"); //All right, I'll be on my way right away.

	B_LogEntry	(TOPIC_MOD_DIEGO_KRISTALL, "Joe will relieve Diego until he finds the crystal.");

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "DIEGO");
};

INSTANCE Info_Mod_Joe_Wassersnapper (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper_Condition;
	information	= Info_Mod_Joe_Wassersnapper_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Hi))
	&& (Mod_WM_Boeden >= 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_00"); //Greetings. What's the news from out there?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_01"); //I heard that there was some misfortune on the pasture plateau....
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_02"); //Yes, the powers of darkness are strong at present. The community of water has its hands full of work to maintain the balance.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_03"); //I felt the anxiety and concern in our ranks.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_04"); //How I would like to do my part in this, too... but as a simple novice such tasks are unfortunately not yet open to me.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_05"); //And the test that was imposed on me for a quick admission to the Water Warriors paralyzes me with fear that I might fail.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_06"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_07"); //Oh, my job is to guide the snappers of the water safely to Relendel.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_08"); //Accompany a pack of bloodthirsty snappers? I can understand your concern...
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_09"); //No, that's not the point. They are in themselves peaceful animals that would attack me all the less since I serve their Creator.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_10"); //Every 10 years at this time these holy creatures appear on the lake between excavation site and black troll.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_11"); //They stay there for some time, give the place its blessing aura and then set off on their way to the lake in Relendel.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_12"); //And I was given the task of escorting them safely in part.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_13"); //And what's the problem with that?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_14"); //Now, after this test was imposed on me, rumours came to my ears that poachers are to hang around here.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_15"); //This is confirmed by sightings of wild animals shot by the rangers, and a trader in the city is said to have recently acquired skins of rare and hard-to-hunt animals.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_16"); //Now I'm worried that something might happen to the snapper on the way and I won't be able to protect them.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper_15_17"); //Then I will make it my business to ensure the success of your mission.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_18"); //Really?! That would do me an invaluable service.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper_10_19"); //Now I can calmly go to the lake and wait for you there. Thank you very much.

	self.aivar[AIV_Partymember] = TRUE;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SNAPPER");

	Log_CreateTopic	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JOE_WASSERSNAPPER, "Joe has the task of escorting some water snappers safely to Relendel. Since there are probably poachers in the area at the moment, I will rather accompany him and meet him at the lake near the Relendelpass.");
};

INSTANCE Info_Mod_Joe_Wassersnapper2 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper2_Condition;
	information	= Info_Mod_Joe_Wassersnapper2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PATH_76") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper2_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper2_10_00"); //Ahh, there you are.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper2_15_01"); //What's it look like?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper2_10_02"); //Everything's been quiet so far. Maybe everything will work out without complications after all.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper2_15_03"); //Let's go to the pass.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	Wld_InsertNpc	(Wassersnapper_Joe_01,	"NW_TROLLAREA_PATH_76");
	Wld_InsertNpc	(Wassersnapper_Joe_02,	"NW_TROLLAREA_PATH_76");
	Wld_InsertNpc	(Wassersnapper_Joe_03,	"NW_TROLLAREA_PATH_76");

	Wld_InsertNpc	(Mod_7587_OUT_Wilderer_NW,	"NW_TROLLAREA_PATH_13");
	Wld_InsertNpc	(Mod_7588_OUT_Wilderer_NW,	"NW_TROLLAREA_PATH_13");
};

INSTANCE Info_Mod_Joe_Wassersnapper3 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper3_Condition;
	information	= Info_Mod_Joe_Wassersnapper3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper2))
	&& (Npc_IsDead(Mod_7587_OUT_Wilderer_NW))
	&& (Npc_IsDead(Mod_7588_OUT_Wilderer_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper3_Info()
{
	if (Npc_IsDead(Wassersnapper_Joe_01))
	&& (Npc_IsDead(Wassersnapper_Joe_02))
	&& (Npc_IsDead(Wassersnapper_Joe_03)) {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_00"); //What wrong-doers. Now everything is lost.
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_01"); //Yeah, we couldn't help it. Let's go back.

		AI_StopProcessInfos	(self);

		B_StartOtherRoutine	(self, "START");
	} else if ((Npc_IsDead(Wassersnapper_Joe_01)))
	|| (Npc_IsDead(Wassersnapper_Joe_02))
	|| (Npc_IsDead(Wassersnapper_Joe_03)) {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_02"); //What wrong-doers. Only thanks to your support, worse things have been averted.
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_03"); //Yeah, they got the lottery ticket they deserved, too. Let's keep moving.

		AI_StopProcessInfos	(self);
	} else {
		AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper3_10_04"); //What wrong-doers. Thanks to your support, we were able to save all the snappers.
		AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper3_15_05"); //Yes, they also received the lot to these poachers. Let's keep moving.

		AI_StopProcessInfos	(self);
	};
};

INSTANCE Info_Mod_Joe_Wassersnapper4 (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Wassersnapper4_Condition;
	information	= Info_Mod_Joe_Wassersnapper4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Joe_Wassersnapper4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Joe_Wassersnapper3))
	&& (Npc_GetDistToWP(self, "NW_TROLLAREA_PLANE_02") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Joe_Wassersnapper4_Info()
{
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_00"); //Here we are. We actually did it. Without your help, it would never have been possible. I don't know how to thank you.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_01"); //It's all right. I think... what happens.... me--

	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_01, Wassersnapper_Joe_01, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_02, Wassersnapper_Joe_02, 0, 0, 0, FALSE );
	Wld_PlayEffect("spellFX_INCOVATION_BLUE",  Wassersnapper_Joe_03, Wassersnapper_Joe_03, 0, 0, 0, FALSE );

	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_02"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_03"); //l-- it seems to me that the snappers have given us part of their aura.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_04"); //I feel how the knowledge and the magical power within me have grown.
	AI_Output(hero, self, "Info_Mod_Joe_Wassersnapper4_15_05"); //They've disappeared.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_06"); //Yes, to another place to which they bless Adano.... until ten years from now, she'll be heading back here.
	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_07"); //And this is mainly thanks to you. Well, here's my thanks to you.

	B_ShowGivenThings	("Kronstöckl and 2 mana elixirs obtained");

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPo_Mana_03, 2);

	AI_Output(self, hero, "Info_Mod_Joe_Wassersnapper4_10_08"); //I hope you can use it, even if it does not reflect the true value of your service, of course.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;

	B_RemoveNpc	(Wassersnapper_Joe_01);
	B_RemoveNpc	(Wassersnapper_Joe_02);
	B_RemoveNpc	(Wassersnapper_Joe_03);

	hero.attribute[ATR_MANA_MAX] += 20;
	hero.attribute[ATR_MANA] += 20;

	B_GivePlayerXP	(2000);

	B_SetTopicStatus	(TOPIC_MOD_JOE_WASSERSNAPPER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Joe_Pickpocket (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_Pickpocket_Condition;
	information	= Info_Mod_Joe_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Joe_Pickpocket_Condition()
{
	C_Beklauen	(47, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Joe_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

	Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_BACK, Info_Mod_Joe_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Joe_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Joe_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
};

FUNC VOID Info_Mod_Joe_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Joe_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Joe_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Joe_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Joe_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Joe_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Joe_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Joe_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Joe_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Joe_EXIT (C_INFO)
{
	npc		= Mod_588_WNOV_Joe_NW;
	nr		= 1;
	condition	= Info_Mod_Joe_EXIT_Condition;
	information	= Info_Mod_Joe_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Joe_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Joe_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
