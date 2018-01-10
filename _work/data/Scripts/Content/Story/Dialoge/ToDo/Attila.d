INSTANCE Info_Mod_Attila_Hi (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Hi_Condition;
	information	= Info_Mod_Attila_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "And glad you're out of the dungeon?";
};

FUNC INT Info_Mod_Attila_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ramirez_WelcomeBack))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_00"); //So glad you're out of the dungeon?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_01"); //I don't think the question needs an answer, son of cunning.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_02"); //You played your part in my liberation, and I thank you for that.
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_03"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_04"); //Well. Cassia directly reassigned me.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_05"); //But as I am a bit rusty after the time in the dungeon, I am supposed to take someone with me for support.
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_06"); //I heard you eliminated some gang members in my absence?
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_07"); //I had no choice....
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_08"); //Would you support me with your experience?
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_09"); //And against what?
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_10"); //They said that a would-be would-be would have messed with Meldor and didn't pay for the bogweed.
	AI_Output(hero, self, "Info_Mod_Attila_Hi_15_11"); //All right, but just this once!
	AI_Output(self, hero, "Info_Mod_Attila_Hi_09_12"); //Follow me. Follow me.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MOECHTEGERN");

	Wld_InsertNpc	(Mod_7702_OUT_Moechtegern_NW,	"NW_CITY_HABOUR_KASERN_05_01");
};

INSTANCE Info_Mod_Attila_Moechtegern (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern_Condition;
	information	= Info_Mod_Attila_Moechtegern_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Hi))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_KASERN_05_01") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern_Info()
{
	var c_npc Attila; Attila = Hlp_GetNpc(Mod_760_NONE_Attila_NW);
	var c_npc Moechtegern; Moechtegern = Hlp_GetNpc(Mod_7702_OUT_Moechtegern_NW);

	TRIA_Invite(Moechtegern);
	TRIA_Start();

	TRIA_Next(Attila);

	AI_GotoNpc	(Attila, Moechtegern);

	AI_TurnToNpc	(Attila, Moechtegern);
	AI_TurnToNpc	(Moechtegern, Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_00"); //Ohh, son of the green haze... where did you get all that weed?
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_01"); //Du scheinst mir eigentlich nicht mit dem nötigen Reichtum gesegnet, es auf "more honest" Wege zu erstehen.

	TRIA_Next(Moechtegern);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_02"); //What the hell are you talking about? My herb is none of your business.
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_03"); //So make sure you get out before I sink my shoe where there's no sunshine.

	TRIA_Next(Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_04"); //In that case, I'm allowed to let you know that I've come to get the swampweed and your head.

	TRIA_Next(Moechtegern);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_04_05"); //You better crawl back under your stone or you won't live to see the next day with your friend.

	Moechtegern.guild = GIL_STRF;
	Npc_SetTrueGuild	(Moechtegern, GIL_STRF);

	TRIA_Next(Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern_09_06"); //Give my regards to the eternal darkness. Beliar is expecting you.

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Attila_Moechtegern2 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern2_Condition;
	information	= Info_Mod_Attila_Moechtegern2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern))
	&& (Npc_IsDead(Mod_7702_OUT_Moechtegern_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern2_Info()
{
	AI_GotoNpc	(self, Mod_7702_OUT_Moechtegern_NW);

	AI_PlayAni	(self, "T_PLUNDER");

	AI_GotoNpc	(self, hero);

	AI_TurnToNpc	(self, hero);
	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern2_09_00"); //Now, however, we should leave before the militia arrives.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOMELDOR");
};

INSTANCE Info_Mod_Attila_Moechtegern3 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern3_Condition;
	information	= Info_Mod_Attila_Moechtegern3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern2))
	&& (Npc_GetDistToWP(self, "NW_CITY_HABOUR_POOR_AREA_PATH_20") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern3_Info()
{
	var c_npc Attila; Attila = Hlp_GetNpc(Mod_760_NONE_Attila_NW);
	var c_npc Meldor; Meldor = Hlp_GetNpc(Mod_597_NONE_Meldor_NW);

	TRIA_Invite(Meldor);
	TRIA_Start();

	TRIA_Next(Attila);

	AI_GotoNpc	(Attila, Meldor);

	AI_TurnToNpc	(Attila, Meldor);
	AI_TurnToNpc	(Meldor, Attila);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern3_09_00"); //Here's your swampweed again, father of business.

	TRIA_Next(Meldor);

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern3_04_01"); //Anyway, thank you. You can be counted on.

	TRIA_Next(Attila);

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOLAGER");
};

INSTANCE Info_Mod_Attila_Moechtegern4 (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Moechtegern4_Condition;
	information	= Info_Mod_Attila_Moechtegern4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_Moechtegern4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_Moechtegern3))
	&& (Npc_GetDistToWP(self, "NW_CITY_KANAL_ROOM_05_03") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Moechtegern4_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern4_09_00"); //Thanks for your support. Take this humble gift as a token of my gratitude.

	CreateInvItems	(hero, ItMi_Gold, 200);
	CreateInvItems	(hero, ItPo_Tiergift, 1);

	B_ShowGivenThings	("200 gold and animal poison received");

	AI_Output(self, hero, "Info_Mod_Attila_Moechtegern4_09_01"); //Yes, you have recently shown truly that the dark God has blessed you with wisdom.

	B_GivePlayerXP	(150);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FREE");
};

INSTANCE Info_Mod_Attila_Umzug (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Umzug_Condition;
	information	= Info_Mod_Attila_Umzug_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's going on? Where did everybody go?";
};

FUNC INT Info_Mod_Attila_Umzug_Condition()
{
	if (Mod_Diebe_Weg == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_Umzug_Info()
{
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_00"); //What's going on? Where did everybody go?
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_01"); //Our cellar community goes to Khorata, son of ignorance.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_02"); //Since the events of the demonic shadows, citizens and guards have been more suspicious and cautious than ever before.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_03"); //There won't be any more opportunities in this town than a few little tricks.
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_04"); //So that's what happened to us and Khorinis.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_05"); //It's the only way to escape an honest profession...
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_06"); //By the way, Cassia asked me to tell you to go to the Khoratas tavern.
	AI_Output(self, hero, "Info_Mod_Attila_Umzug_09_07"); //It's about finding us a new place to stay.
	AI_Output(hero, self, "Info_Mod_Attila_Umzug_15_08"); //All right, I will. See you soon.

	Log_CreateTopic	(TOPIC_MOD_DIEB_UMZUG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_DIEB_UMZUG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_DIEB_UMZUG, "After the story of the soul tormentors, it's hard to be successful in Khorinis, so our cellar community moves to Khorata. The first step is to find a new accommodation there. I'm supposed to go to the Khoratas tavern for that.");
};

INSTANCE Info_Mod_Attila_Pickpocket (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_Pickpocket_Condition;
	information	= Info_Mod_Attila_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Attila_Pickpocket_Condition()
{
	C_Beklauen	(87, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Attila_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

	Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_BACK, Info_Mod_Attila_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Attila_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Attila_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
};

FUNC VOID Info_Mod_Attila_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Attila_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Attila_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Attila_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Attila_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Attila_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Attila_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Attila_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Attila_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Attila_EXIT (C_INFO)
{
	npc		= Mod_760_NONE_Attila_NW;
	nr		= 1;
	condition	= Info_Mod_Attila_EXIT_Condition;
	information	= Info_Mod_Attila_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Attila_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
