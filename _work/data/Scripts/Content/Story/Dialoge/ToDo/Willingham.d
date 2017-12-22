INSTANCE Info_Mod_Willingham_Hi (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Hi_Condition;
	information	= Info_Mod_Willingham_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_00"); //Ah! A new face and a strong body. Speak my friend, why are you coming to me?
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_01"); //I want to make myself useful to you, commander, to get to know your country and to see how you are doing.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_02"); //Good! But before I tell you anything about us, I'm asking you to do me a favor.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_03"); //I sent a patrol to the crumbling tower on the rugged mountain to scout the pass and search the forest for orcs in front of it.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_04"); //In the meantime, however, they are two days overdue and should have been here by now.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_05"); //I can't send any more of my men there, but you know how to make it through a long road.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_06"); //The path will be less of a problem than what stopped your people....
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_07"); //I'll pay you, of course, and then you'll have my trust.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_08"); //You can see the rugged mountain right in front of you when you leave the city gate. A pass leads to it, which flows out of the mountain on the right.
	AI_Output(hero, self, "Info_Mod_Willingham_Hi_15_09"); //If I find your people, what should I tell them?
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_10"); //I want to know what they have to report. Then bring her to me safely.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_11"); //Oh, and if you see Baro on the way to a small lumberjack camp, tell him to contact me.
	AI_Output(self, hero, "Info_Mod_Willingham_Hi_08_12"); //Now go and come back with my men soon.

	Log_CreateTopic	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_RAUESCHNEIDE, "For Commander Willingham's sake, I shall look after his men at the crumbling tower on the rugged mountain in the north and bring them safely back to the village. On the way I shall also inform the logger Baro that he is to deliver a report to the commander.");

	Wld_InsertNpc	(Mod_7730_OUT_Brendan_EIS, "NORTDGEBIET_93");
	Wld_InsertNpc	(Mod_7731_OUT_Wache_EIS, "NORTDGEBIET_88");
	Wld_InsertNpc	(Mod_7732_OUT_Wache_EIS, "NORTDGEBIET_88");

	B_KillNpc	(Mod_7731_OUT_Wache_EIS);
	B_KillNpc	(Mod_7732_OUT_Wache_EIS);

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_88");
	Wld_InsertNpc	(Riesenwolf, "NORTDGEBIET_88");

	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
	Wld_InsertNpc	(Icewolf, "NORTDGEBIET_85");
};

INSTANCE Info_Mod_Willingham_RaueSchneide (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_RaueSchneide_Condition;
	information	= Info_Mod_Willingham_RaueSchneide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_RaueSchneide_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Hi))
	&& (Mod_BaroAtWillingham == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_RaueSchneide_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_00"); //When the orcs attack the pass, we are connected to the outside world only through the stone circle and they have us in their pliers.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_01"); //Their numbers could be almost strong enough to attack the village.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_02"); //We need to find out how many of them got into our valley at once.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_03"); //Baro said he had an idea how we could learn more about it. He wanted to talk to you about it.
	AI_Output(self, hero, "Info_Mod_Willingham_RaueSchneide_08_04"); //You'll find him in the house right next to the mayor's. Why don't you go see him now and refund me what he knows?

	CurrentNQ += 1;

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_EIS_RAUESCHNEIDE, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_ORKRING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "Commander Willingham wants to know where the orcs come from. I'm to see Baro, who will be able to help me with information.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Willingham_UntoteOrks (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_UntoteOrks_Condition;
	information	= Info_Mod_Willingham_UntoteOrks_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Willingham_UntoteOrks_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_UntoteOrks))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Willingham_UntoteOrks_Info()
{
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_00"); //So, what did Baro want? What does he know about the Orcs?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_01"); //It seems to be more than we thought. Besides, they're not quite alive anymore.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_02"); //Are you telling me they're dead orcs?
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_03"); //That's what they are. An orc shaman has found a mighty artifact in a temple and turned almost all orcs into undead.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_04"); //I need to find one of the Orc leaders and question him about the shaman's location.
	AI_Output(hero, self, "Info_Mod_Willingham_UntoteOrks_15_05"); //Baro said Melchior could help me.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_06"); //If we can get to this boy and stop these undead, I will put Melchior at your service.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_07"); //He has his camp at the last outpost outside the pass. Let Marcus show you the way to him and take his place there.
	AI_Output(self, hero, "Info_Mod_Willingham_UntoteOrks_08_08"); //Besides, I want to give you these potions on the way. Good luck.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 5);

	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Marcus will lead me to Melchior and take his place there.");
};

INSTANCE Info_Mod_Willingham_Pickpocket (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_Pickpocket_Condition;
	information	= Info_Mod_Willingham_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Willingham_Pickpocket_Condition()
{
	C_Beklauen	(171, ItMi_Gold, 98);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_BACK, Info_Mod_Willingham_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Willingham_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Willingham_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Willingham_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Willingham_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Willingham_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Willingham_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Willingham_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Willingham_EXIT (C_INFO)
{
	npc		= Mod_7728_OUT_Willingham_EIS;
	nr		= 1;
	condition	= Info_Mod_Willingham_EXIT_Condition;
	information	= Info_Mod_Willingham_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Willingham_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Willingham_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
