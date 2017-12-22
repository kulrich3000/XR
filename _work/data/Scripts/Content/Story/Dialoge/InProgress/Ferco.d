INSTANCE Info_Mod_Ferco_Hi (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Hi_Condition;
	information	= Info_Mod_Ferco_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferco_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Hi_03_00"); //Hey you! What are you doing here?
};

INSTANCE Info_Mod_Ferco_WerBistDu (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_WerBistDu_Condition;
	information	= Info_Mod_Ferco_WerBistDu_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Ferco_WerBistDu_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Ferco_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_Einnehmen)))
	|| (Npc_KnowsInfo(hero, Info_Mod_Ferco_Loser))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_WerBistDu_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_WerBistDu_15_00"); //Who are you?
	AI_Output(self, hero, "Info_Mod_Ferco_WerBistDu_03_01"); //My name is Ferco. I'm one of the gatekeepers here, as you can see.
};

INSTANCE Info_Mod_Ferco_Guarding (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Guarding_Condition;
	information	= Info_Mod_Ferco_Guarding_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you guarding?";
};

FUNC INT Info_Mod_Ferco_Guarding_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Guarding_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Guarding_15_00"); //What are you guarding?
	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_01"); //This is the camp of transformation mages. I wouldn't get too close to them.

	AI_PlayAni(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_02"); //I think you're a little crazy.
	AI_Output(hero, self, "Info_Mod_Ferco_Guarding_15_03"); //That seems familiar... (to Ferco) Can I come in?
	AI_Output(self, hero, "Info_Mod_Ferco_Guarding_03_04"); //No, you're not ready for that. We don't even know you. But if you want to be useful, you're welcome to do so. (laughs) We always have work to do.
};

INSTANCE Info_Mod_Ferco_Aufgabe (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Aufgabe_Condition;
	information	= Info_Mod_Ferco_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is there to do?";
};

FUNC INT Info_Mod_Ferco_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Guarding))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufgabe_15_00"); //What is there to do?
	AI_Output(self, hero, "Info_Mod_Ferco_Aufgabe_03_01"); //Down there in a cave once lived a shadow runner. There should be some remains there. You could bring them to me, because the magicians are working on a new metamorphosis spell.
	AI_Output(hero, self, "Info_Mod_Ferco_Aufgabe_15_02"); //All clear.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufgabe_03_03"); //Come back when you get the trophies.

	Log_CreateTopic	(TOPIC_MOD_FERCO_SCHATTI, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_SCHATTI, LOG_RUNNING);
	Log_CreateTopic	(TOPIC_MOD_VMG_AUFNAHME, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_SCHATTI, "To become a transformation mage, I should first of all play well with the goalkeeper Ferco.", "Ferco, a gatekeeper of the Metamorphosis Mages' camp, has ordered me to search for remains of a shadow runner near the former monastery ruins.");
};

INSTANCE Info_Mod_Ferco_Einnehmen (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Einnehmen_Condition;
	information	= Info_Mod_Ferco_Einnehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have come to occupy the monastery ruins.";
};

FUNC INT Info_Mod_Ferco_Einnehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Einnehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Einnehmen_15_00"); //I have come to occupy the monastery ruins.
	AI_Output(self, hero, "Info_Mod_Ferco_Einnehmen_03_01"); //Oh, yeah? Come on over here, little fellow!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Ferco_Umgehauen (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Umgehauen_Condition;
	information	= Info_Mod_Ferco_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Einnehmen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Umgehauen_03_00"); //Jesus Christ! You got a hell of a punch on you.

			Mod_FercoBesiegt	=	1;
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Umgehauen_03_01"); //Hey, big mouth.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Ferco_Loser (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Loser_Condition;
	information	= Info_Mod_Ferco_Loser_Info;
	permanent	= 0;
	important	= 0;
	description	= "And? Still big mouth?";
};

FUNC INT Info_Mod_Ferco_Loser_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Umgehauen))
	&& (Mod_FercoBesiegt == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Loser_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Loser_15_00"); //And? Still big mouth?
	AI_Output(self, hero, "Info_Mod_Ferco_Loser_03_01"); //What are you doing here? You're strong, but not very intelligent, it seems to me.
};

INSTANCE Info_Mod_Ferco_NotSpeaking (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_NotSpeaking_Condition;
	information	= Info_Mod_Ferco_NotSpeaking_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_NotSpeaking_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufgabe))
	&& (Npc_IsInState(self, ZS_Talk))
	&& ((Npc_HasItems(hero, ItAt_ShadowFur) == 0)
	|| (Npc_HasItems(hero, ItAt_ShadowHorn) == 0)
	|| (Npc_HasItems(hero, ItAt_Claw) < 2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Ferco_AllesDabei))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_NotSpeaking_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_NotSpeaking_03_00"); //You know what you have to do.
};

INSTANCE Info_Mod_Ferco_AllesDabei (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_AllesDabei_Condition;
	information	= Info_Mod_Ferco_AllesDabei_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_AllesDabei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Aufgabe))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_AllesDabei_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_AllesDabei_03_00"); //What more do you want?
};

INSTANCE Info_Mod_Ferco_HabAlles (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_HabAlles_Condition;
	information	= Info_Mod_Ferco_HabAlles_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the remains.";
};

FUNC INT Info_Mod_Ferco_HabAlles_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_AllesDabei))
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_HabAlles_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_HabAlles_15_00"); //I found the remains.
	AI_Output(self, hero, "Info_Mod_Ferco_HabAlles_03_01"); //Well, let me see it.
	AI_Output(hero, self, "Info_Mod_Ferco_HabAlles_15_02"); //Here. That should do it.

	Npc_RemoveInvItems	(hero, ItAt_ShadowFur, 1);
	Npc_RemoveInvItems	(hero, ItAt_ShadowHorn, 1);
	Npc_RemoveInvItems	(hero, ItAt_Claw, 2);

	B_ShowGivenThings	("items given");

	AI_Output(self, hero, "Info_Mod_Ferco_HabAlles_03_03"); //Thank you very much. You're all right, man. You want to take another job?

	B_SetTopicStatus	(TOPIC_MOD_FERCO_SCHATTI, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I did the first job. See if Ferco has any more for me.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Ferco_ZweiteQuest (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_ZweiteQuest_Condition;
	information	= Info_Mod_Ferco_ZweiteQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is there to do?";
};

FUNC INT Info_Mod_Ferco_ZweiteQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_HabAlles))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_ZweiteQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_ZweiteQuest_15_00"); //What is there to do?
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_01"); //Some idiot entered the ruins of the monastery as a meat bug through a crack in the wall.
	AI_Output(hero, self, "Info_Mod_Ferco_ZweiteQuest_15_02"); //(wonly surprised) Who comes up with such ideas?
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_03"); //I don't know, sir. But the last known saying of this kind was used up during the action.
	AI_Output(self, hero, "Info_Mod_Ferco_ZweiteQuest_03_04"); //It would be nice if you could get a new one.
};

INSTANCE Info_Mod_Ferco_Crazy (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Crazy_Condition;
	information	= Info_Mod_Ferco_Crazy_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you kidding me?";
};

FUNC INT Info_Mod_Ferco_Crazy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_ZweiteQuest))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Crazy_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_15_00"); //Are you kidding me? Where am I supposed to get it when there aren't any more?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_01"); //I said the last known one. The magicians believe there are still some. Supposedly in colder areas, because they were well preserved there.
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_15_02"); //Then why don't they go to those colder climates and look for it?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_03"); //They come from a country called Tugettso. Maybe you've heard of it. Temperatures there are higher than here.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_03_04"); //They are not resistant to such temperatures and cannot continue their work.

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);

	Info_AddChoice	(Info_Mod_Ferco_Crazy, "I'm too good to be an errand boy.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "I also come from warm regions.", Info_Mod_Ferco_Crazy_B);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Okay, I'll do it. Do you have any other useful tips?", Info_Mod_Ferco_Crazy_A);
};

FUNC VOID Info_Mod_Ferco_Crazy_C()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_C_15_00"); //I'm too good to be an errand boy.

	VMG_Second = 1;

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);
};

FUNC VOID Info_Mod_Ferco_Crazy_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_B_15_00"); //I also come from warm regions.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_B_03_01"); //Are you gonna do it or not?

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);

	Info_AddChoice	(Info_Mod_Ferco_Crazy, "I'm too good to be an errand boy.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_Crazy, "Okay, I'll do it. Do you have any other useful tips?", Info_Mod_Ferco_Crazy_A);
};

FUNC VOID Info_Mod_Ferco_Crazy_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Crazy_A_15_00"); //Okay, I'll do it. Do you have any other useful tips?
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_A_03_01"); //I knew I could count on you. I heard about a place called Gelato.
	AI_Output(self, hero, "Info_Mod_Ferco_Crazy_A_03_02"); //Talk to Ken. He might know something about it.

	VMG_Second = 2;

	Log_CreateTopic	(TOPIC_MOD_FERCO_WANZE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_WANZE, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_WANZE, "Hm, I'm supposed to find a spell role of metamorphosis meat bug. Let's see how Ken can help me with that.", "Ferco told me to talk to Ken to find out where the Gelato is, to salvage the metamorphosis spell Meat Bug.");

	Info_ClearChoices	(Info_Mod_Ferco_Crazy);
};

INSTANCE Info_Mod_Ferco_CrazyTwo (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_CrazyTwo_Condition;
	information	= Info_Mod_Ferco_CrazyTwo_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_CrazyTwo_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Crazy))
	&& (VMG_Second == 1)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_CrazyTwo_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_CrazyTwo_03_00"); //What more do you want?

	Info_ClearChoices	(Info_Mod_Ferco_CrazyTwo);

	Info_AddChoice	(Info_Mod_Ferco_CrazyTwo, "I'm too good to be an errand boy.", Info_Mod_Ferco_Crazy_C);
	Info_AddChoice	(Info_Mod_Ferco_CrazyTwo, "Okay, I'll do it. Do you have any other useful tips?", Info_Mod_Ferco_Crazy_A);
};

INSTANCE Info_Mod_Ferco_CrazyThree (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_CrazyThree_Condition;
	information	= Info_Mod_Ferco_CrazyThree_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_CrazyThree_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Crazy))
	&& (VMG_Second == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_CrazyThree_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_CrazyThree_03_00"); //Talk to Ken.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Ferco_Thys (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Thys_Condition;
	information	= Info_Mod_Ferco_Thys_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Thys_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Fisch))
	&& (Npc_HasItems(hero, ItSc_TrfMeatbug) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Thys_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Thys_03_00"); //Have you got the spell?
	AI_Output(hero, self, "Info_Mod_Ferco_Thys_15_01"); //Yeah, I got him.

	B_GiveInvItems	(hero, self, ItSc_TrfMeatbug, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Thys_03_02"); //All right, I'll let the magicians know. Come back in a few days.

	VMG_Second_Time = Wld_GetDay();

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I've been to Ferco's house. I'm supposed to be back in a few days.");
	B_SetTopicStatus	(TOPIC_MOD_FERCO_WANZE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Ferco_QuestThree (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_QuestThree_Condition;
	information	= Info_Mod_Ferco_QuestThree_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_QuestThree_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Thys))
	&& (VMG_Second_Time < Wld_GetDay())
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_QuestThree_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_00"); //Faice was very pleased with the role of spell. Here, he gave me this for you.
	AI_Output(hero, self, "Info_Mod_Ferco_QuestThree_15_01"); //He hasn't said anything about a new assignment, has he? I could use a little more gold.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_02"); //Yes, he did, by chance.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_03"); //You know, the magicians come from an idyllic spot in the west. You can't reach it easily.
	AI_Output(self, hero, "Info_Mod_Ferco_QuestThree_03_04"); //But Turendil will explain everything to you. I want you to see him right away.

	Wld_SendTrigger	("EVT_OW_FOKUS_GATE_MOVER_01");
	Wld_SendTrigger	("EVT_FOKUSTOR");

	Log_CreateTopic	(TOPIC_MOD_FERCO_GOBLIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_GOBLIN, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_GOBLIN, "And another task. Will I ever get a recording?", "I have a new assignment. Apparently it's about the hometown of the transforming mages. I'm supposed to report to a guy named Turendil.");
};

INSTANCE Info_Mod_Ferco_Aufnahmequest (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Aufnahmequest_Condition;
	information	= Info_Mod_Ferco_Aufnahmequest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Aufnahmequest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Aufnahmequest))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_Info()
{
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_03_00"); //What can I do for you?
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_15_01"); //Faice told you to let me in on my last assignment.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_03_02"); //Ah, so you were sent. A new applicant from the old camp is said to have set off. You may give him the first test.

	Log_CreateTopic	(TOPIC_MOD_FERCO_MUD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_VMG_AUFNAHME, TOPIC_MOD_FERCO_MUD, "One last task before I start recording.", "A new applicant comes from the old camp and I shall give him the first job.");

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Ferco_Aufnahmequest, "No, thanks. I've got something else to do.", Info_Mod_Ferco_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Ferco_Aufnahmequest, "Thank you very much. That's what I'll do.", Info_Mod_Ferco_Aufnahmequest_A);
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_B_15_00"); //No, thanks. I've got something else to do.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_B_03_01"); //Ah, so you were sent. A new applicant from the old camp is said to have set off. You may give him the first test.

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "ATVMG");
	AI_Teleport	(Mod_803_STT_Mud_MT, "OW_PATH_179");
};

FUNC VOID Info_Mod_Ferco_Aufnahmequest_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Aufnahmequest_A_15_00"); //Thank you very much. That's what I'll do.
	AI_Output(self, hero, "Info_Mod_Ferco_Aufnahmequest_A_03_01"); //Here he comes now. Good luck.

	Info_ClearChoices	(Info_Mod_Ferco_Aufnahmequest);

	B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "ATVMG");
	AI_Teleport	(Mod_803_STT_Mud_MT, "OW_PATH_179");
};

INSTANCE Info_Mod_Ferco_Mud (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Mud_Condition;
	information	= Info_Mod_Ferco_Mud_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ferco_Mud_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mud_VMG))
	&& (Mod_Mud_Unterwegs > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Mud_Info()
{
	if (Mod_Mud_Unterwegs == 2)
	{	
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_00"); //What did you do to him? You sent him to certain death!

		Info_ClearChoices	(Info_Mod_Ferco_Mud);

		Info_AddChoice	(Info_Mod_Ferco_Mud, "I'm sorry about that.", Info_Mod_Ferco_Mud_B);
		Info_AddChoice	(Info_Mod_Ferco_Mud, "He deserved it.", Info_Mod_Ferco_Mud_A);
	}
	else if (Mod_Mud_Unterwegs == 3)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_01"); //Well done, we won't see him again anytime soon. (laughs) You can go to Faice. He'll make the necessary arrangements.
		AI_Output(hero, self, "Info_Mod_Ferco_Mud_15_02"); //Thank you very much.

		B_KillNpc	(Mod_803_STT_Mud_MT);

		B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I passed the exam and should now go to Faice.");
	}
	else if (Mod_Mud_Unterwegs == 4)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_03"); //You're dying to get rid of him, aren't you?

		Info_ClearChoices	(Info_Mod_Ferco_Mud);

		Info_AddChoice	(Info_Mod_Ferco_Mud, "Is that so bad?", Info_Mod_Ferco_Mud_D);
		Info_AddChoice	(Info_Mod_Ferco_Mud, "Don't you?", Info_Mod_Ferco_Mud_C);
	}
	else if (Mod_Mud_Unterwegs == 5)
	{
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_04"); //That was quick. I think that is acceptable.
		AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_05"); //Now go to Faice. He'll do what's necessary for your admission.
		AI_Output(hero, self, "Info_Mod_Ferco_Mud_15_02"); //Thank you very much.

		B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I passed the exam and should now go to Faice.");

		if (Npc_HasItems(hero, ItSc_TrfBloodfly) > 0)
		{
			AI_Output(self, hero, "Info_Mod_Ferco_Mud_03_06"); //One more thing: I'd like the part of the saying.

			Info_ClearChoices	(Info_Mod_Ferco_Mud);

			Info_AddChoice	(Info_Mod_Ferco_Mud, "Why?", Info_Mod_Ferco_Mud_F);
			Info_AddChoice	(Info_Mod_Ferco_Mud, "Of course it is. Here.", Info_Mod_Ferco_Mud_E);
		};
	};
};

FUNC VOID Info_Mod_Ferco_Mud_F()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_F_15_00"); //Why?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_F_03_01"); //After all, that was part of your job.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	Info_AddChoice	(Info_Mod_Ferco_Mud, "Yes, part of my job.", Info_Mod_Ferco_Mud_G);
	Info_AddChoice	(Info_Mod_Ferco_Mud, "Of course it is. Here.", Info_Mod_Ferco_Mud_E);
};

FUNC VOID Info_Mod_Ferco_Mud_G()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_G_15_00"); //Yes, part of my job.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_G_03_01"); //Well, keep it then. All right, let's go.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);
};

FUNC VOID Info_Mod_Ferco_Mud_E()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_E_15_00"); //Of course it is. Here.

	B_GiveInvItems	(hero, self, ItSc_TrfBloodfly, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Mud_E_03_01"); //Thanks. Go on, get going.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);
};

FUNC VOID Info_Mod_Ferco_Mud_D()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_00"); //Is that so bad?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_D_03_01"); //No, no. (laughs) You can go to Faice. He'll do what's necessary for your admission.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_02"); //Thank you very much.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I passed the exam and should now go to Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_C()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_C_15_00"); //Don't you?
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_C_03_01"); //Yes, yes, yes. (laughs) You can go to Faice. He'll do what's necessary for your admission.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_D_15_02"); //Thank you very much.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I passed the exam and should now go to Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_B()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_B_15_00"); //I'm sorry about that.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_B_03_01"); //Don't look so glum. We wanted to get rid of him too.
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_B_15_02"); //...
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_B_03_03"); //We just wanted to know how you were reacting to him. (laughs) Now go to Faice, he will do what is necessary.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "I passed the exam and should now go to Faice.");

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	B_KillNpc	(Mod_803_STT_Mud_MT);
};

FUNC VOID Info_Mod_Ferco_Mud_A()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Mud_A_15_00"); //He deserved it.
	AI_Output(self, hero, "Info_Mod_Ferco_Mud_A_03_01"); //Maybe he did, but that's not for you to decide.

	Info_ClearChoices	(Info_Mod_Ferco_Mud);

	Info_AddChoice	(Info_Mod_Ferco_Mud, "I'm sorry about that.", Info_Mod_Ferco_Mud_B);
};

INSTANCE Info_Mod_Ferco_Falin (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Falin_Condition;
	information	= Info_Mod_Ferco_Falin_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's a package from the new warehouse. Let's leave it here.";
};

FUNC INT Info_Mod_Ferco_Falin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Falin_Hi))
	&& (Npc_HasItems(hero, ItMi_PaketFalin) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Falin_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Falin_15_00"); //Here's a package from the new warehouse. Let's leave it here.

	B_GiveInvItems	(hero, self, ItMi_PaketFalin, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Falin_03_01"); //Thank you, didn't know you Ranger was acting as a courier.
	AI_Output(hero, self, "Info_Mod_Ferco_Falin_15_02"); //That's an exception.

	B_GivePlayerXP	(50);

	B_StartOtherRoutine	(Mod_7475_SLD_Falin_MT, "TOT");
};

INSTANCE Info_Mod_Ferco_Urs (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_Urs_Condition;
	information	= Info_Mod_Ferco_Urs_Info;
	permanent	= 0;
	important	= 0;
	description	= "I bring the Ring of Light.";
};

FUNC INT Info_Mod_Ferco_Urs_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Urs_Hi))
	&& (Npc_HasItems(hero, ItRi_Licht) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ferco_Urs_Info()
{
	AI_Output(hero, self, "Info_Mod_Ferco_Urs_15_00"); //I bring the Ring of Light.

	B_GiveInvItems	(hero, self, ItRi_Licht, 1);

	AI_Output(self, hero, "Info_Mod_Ferco_Urs_03_01"); //Ahh, excellent. Faice will be pleased.
	AI_Output(self, hero, "Info_Mod_Ferco_Urs_03_02"); //Here's your run of transformation. Have fun with that.

	B_GivePlayerXP	(200);

	B_GiveInvItems	(self, hero, ItRu_TrfMolerat, 1);

	B_LogEntry	(TOPIC_MOD_URS_HUND, "I have Ferco's metamorphosis rune.");
};

INSTANCE Info_Mod_Ferco_EXIT (C_INFO)
{
	npc		= Mod_1630_VMG_Ferco_MT;
	nr		= 1;
	condition	= Info_Mod_Ferco_EXIT_Condition;
	information	= Info_Mod_Ferco_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ferco_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ferco_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
