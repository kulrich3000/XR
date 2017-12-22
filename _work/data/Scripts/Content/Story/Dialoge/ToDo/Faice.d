INSTANCE Info_Mod_Faice_Hi (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Hi_Condition;
	information	= Info_Mod_Faice_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Faice_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faice_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Faice_Hi_03_01"); //I'm Faice. Don't bother me, I'm busy.
};

INSTANCE Info_Mod_Faice_QuestHermy (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_QuestHermy_Condition;
	information	= Info_Mod_Faice_QuestHermy_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_QuestHermy_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_Matronen))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_QuestHermy_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_03_00"); //Ah, you.

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "What's up?", Info_Mod_Faice_QuestHermy_B);
	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "Turendil sent me.", Info_Mod_Faice_QuestHermy_A);
};

FUNC VOID Info_Mod_Faice_QuestHermy_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_B_15_00"); //What's up?
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_B_03_01"); //Meet with Hermy.
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_B_15_02"); //All clear.

	Log_CreateTopic	(TOPIC_MOD_FAICE_HARPIE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HARPIE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_HARPIE, "Faice told me to meet a magician named Hermy. He'll probably give me further instructions.");

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_QuestHermy_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_A_15_00"); //Turendil said I could come to you if I needed a new assignment.
	AI_Output(self, hero, "Info_Mod_Faice_QuestHermy_A_03_01"); //Keep it short, I'm busy.
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_A_15_02"); //All clear.

	Info_ClearChoices	(Info_Mod_Faice_QuestHermy);

	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "What's up?", Info_Mod_Faice_QuestHermy_B);
	Info_AddChoice	(Info_Mod_Faice_QuestHermy, "I see. I'll be shorter in the future.", Info_Mod_Faice_QuestHermy_C);
};

FUNC VOID Info_Mod_Faice_QuestHermy_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_QuestHermy_C_15_00"); //I see. I'll be shorter in the future.
	
	Info_Mod_Faice_QuestHermy_B();
};

INSTANCE Info_Mod_Faice_Aufnahmequest (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Aufnahmequest_Condition;
	information	= Info_Mod_Faice_Aufnahmequest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Aufnahmequest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hermy_Harpie))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_03_00"); //What's up?

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "When am I in?", Info_Mod_Faice_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "How long before I can join you guys?", Info_Mod_Faice_Aufnahmequest_A);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_00"); //When am I in?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_01"); //One more order.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_03"); //Ferco will let you in.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_B_15_04"); //Thanks.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_B_03_05"); //Now leave me alone.

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "The last assignment.... I'm supposed to go see Ferco.");

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_A_15_00"); //How long before I can join you guys?
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_A_03_01"); //You're wasting time. I'm busy.
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_A_15_02"); //All clear.

	Info_ClearChoices	(Info_Mod_Faice_Aufnahmequest);

	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "When am I in?", Info_Mod_Faice_Aufnahmequest_B);
	Info_AddChoice	(Info_Mod_Faice_Aufnahmequest, "Okay, I'll be shorter in the future. I promise.", Info_Mod_Faice_Aufnahmequest_C);
};

FUNC VOID Info_Mod_Faice_Aufnahmequest_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahmequest_C_15_00"); //I see. I'll be shorter in the future.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahmequest_C_03_01"); //...
	
	Info_Mod_Faice_Aufnahmequest_B();
};

INSTANCE Info_Mod_Faice_Mud (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Mud_Condition;
	information	= Info_Mod_Faice_Mud_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Mud_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ferco_Mud))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Mud_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Mud_03_00"); //Well done.

	if (!Npc_IsDead(Mod_803_STT_Mud_MT))
	{
		B_StartOtherRoutine	(Mod_803_STT_Mud_MT, "SAFETY");
	};

	Info_ClearChoices	(Info_Mod_Faice_Mud);

	Info_AddChoice	(Info_Mod_Faice_Mud, "Ferco said you'd do whatever it takes. So what's the situation?", Info_Mod_Faice_Mud_B);
	Info_AddChoice	(Info_Mod_Faice_Mud, "Am I in?", Info_Mod_Faice_Mud_A);
};

FUNC VOID Info_Mod_Faice_Mud_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_B_15_00"); //Ferco said you'd do whatever it takes. So what's the situation?
	AI_Output(self, hero, "Info_Mod_Faice_Mud_B_03_01"); //My time is precious. When are you gonna learn?

	Info_ClearChoices	(Info_Mod_Faice_Mud);

	Info_AddChoice	(Info_Mod_Faice_Mud, "I'll make a note of it for the future. So what does it look like?", Info_Mod_Faice_Mud_C);
	Info_AddChoice	(Info_Mod_Faice_Mud, "Am I in?", Info_Mod_Faice_Mud_A);
};

FUNC VOID Info_Mod_Faice_Mud_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_A_15_00"); //Am I in?

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_01"); //Let me know when you're ready for the recording.
	
		Info_ClearChoices	(Info_Mod_Faice_Mud);

		B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_SUCCESS);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_02"); //Unfortunately, you have done all this for nothing, because you are already a member of many communities.
		AI_Output(self, hero, "Info_Mod_Faice_Mud_A_03_03"); //I'm afraid we can't take you in.
	
		Info_ClearChoices	(Info_Mod_Faice_Mud);

		AI_StopProcessInfos	(self);

		B_GivePlayerXP	(250);

		B_SetTopicStatus	(TOPIC_MOD_FERCO_MUD, LOG_SUCCESS);
		B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_FAILED);
	};
};

FUNC VOID Info_Mod_Faice_Mud_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Mud_C_15_00"); //I'll make a note of it for the future. So what does it look like?
	AI_Output(self, hero, "Info_Mod_Faice_Mud_C_03_01"); //...
	
	Info_Mod_Faice_Mud_A();
};

INSTANCE Info_Mod_Faice_Aufnahme (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Aufnahme_Condition;
	information	= Info_Mod_Faice_Aufnahme_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm ready for recording.";
};

FUNC INT Info_Mod_Faice_Aufnahme_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Mud))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Aufnahme_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Aufnahme_15_00"); //I'm ready for recording.
	AI_Output(self, hero, "Info_Mod_Faice_Aufnahme_03_01"); //I'll make the necessary arrangements. Come to the monastery yard later.

	AI_StopProcessInfos	(self);

	Mod_VMG_Dabei = 1;

	Mod_AnzahlNebengilden += 1;

	B_GivePlayerXP	(450);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_67);

	AI_Teleport(self, "VMG_19");
	B_StartOtherRoutine	(self, "RITUAL");
	B_StartOtherRoutine	(Mod_4020_VMG_Hermy_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1626_VMG_Furt_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1625_VMG_Neol_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1628_VMG_Anor_MT, "RITUAL");
	B_StartOtherRoutine	(Mod_1955_VMG_Turendil_MT, "RITUAL");

	B_LogEntry	(TOPIC_MOD_VMG_AUFNAHME, "Faice says I should come to the monastery yard later to be admitted. I should talk to him there again.");
};

INSTANCE Info_Mod_Faice_Ritual (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Ritual_Condition;
	information	= Info_Mod_Faice_Ritual_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Faice_Ritual_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Mud))
	&& (Npc_IsInState(self, ZS_Talk))
	&& (Mod_VMG_Dabei == 1)
	&& (Npc_GetDistToWP(self, "VMG_22") < 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Ritual_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_03_00"); //Can we get started?

	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	Info_AddChoice	(Info_Mod_Faice_Ritual, "There's something I have to do.", Info_Mod_Faice_Ritual_B);
	Info_AddChoice	(Info_Mod_Faice_Ritual, "Yeah.", Info_Mod_Faice_Ritual_A);
};

FUNC VOID Info_Mod_Faice_Ritual_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Ritual_B_15_00"); //There's something I have to do.
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_B_03_01"); //Come on, hurry up.

	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Faice_Ritual_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Ritual_A_15_00"); //Yeah.
	AI_Output(self, hero, "Info_Mod_Faice_Ritual_A_03_01"); //Then enter the middle of the circle.
	
	Info_ClearChoices	(Info_Mod_Faice_Ritual);

	Mod_VMG_Dabei = 2;

	Log_CreateTopic	(TOPIC_MOD_FAICE_HEILUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_HEILUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "I am to enter the middle of the magicians' circle so that the ritual can begin.");
	B_SetTopicStatus	(TOPIC_MOD_VMG_AUFNAHME, LOG_SUCCESS);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Faice_RitualRunning (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_RitualRunning_Condition;
	information	= Info_Mod_Faice_RitualRunning_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Faice_RitualRunning_Condition()
{
	if (Mod_VMG_Dabei == 2)
	&& (Npc_GetDistToWP(hero, "VMG_22") < 700)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_RitualRunning_Info()
{
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_00"); //Members of the Circle of Transformation Mages, it's time again.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_01"); //A new member enters our ranks and becomes either a mage's protector or a magician himself.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_02"); //Remember his deeds: He saved Tugettso, he visited Gelato, the snowy area, he found the lost roles of the transformations into a meat bug and a harpy.
	AI_Output(self, hero, "Info_Mod_Faice_RitualRunning_03_03"); //Welcome him back!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DRAINED");

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "The transforming mages have taken me in as one of their own.");
};

INSTANCE Info_Mod_Faice_PrePruefung (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_PrePruefung_Condition;
	information	= Info_Mod_Faice_PrePruefung_Info;
	permanent	= 1;
	important	= 0;
	description	= "You wanted to see me?";
};

FUNC INT Info_Mod_Faice_PrePruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorTot))
	&& (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_PrePruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_PrePruefung_15_00"); //You wanted to see me?
	AI_Output(self, hero, "Info_Mod_Faice_PrePruefung_03_01"); //Not yet, it'll have to wait.
};

INSTANCE Info_Mod_Faice_Pruefung (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung_Condition;
	information	= Info_Mod_Faice_Pruefung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You wanted to see me?";
};

FUNC INT Info_Mod_Faice_Pruefung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Turendil_TradorTot))
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_15_00"); //You wanted to see me?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_03_01"); //Yeah, good of you to come. I could spend a little time telling you about us.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_03_02"); //You want to hear it? Otherwise, I'll just give you a job.

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);

	Info_AddChoice	(Info_Mod_Faice_Pruefung, "The task is sufficient.", Info_Mod_Faice_Pruefung_B);
	Info_AddChoice	(Info_Mod_Faice_Pruefung, "Let's hear it.", Info_Mod_Faice_Pruefung_A);
};

FUNC VOID Info_Mod_Faice_Pruefung_C()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_00"); //Genn will explain the first test for learning our ancient techniques to you.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_01"); //You can safely travel back to Tugettso now, Albert fixed the teleporter.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_02"); //Let him give you a new stone.
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_C_15_03"); //I will, I will. I'll see you around.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_C_03_04"); //I want your paths guarded.

	Log_CreateTopic	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "The first test to learn the old techniques of the transformative mages is to be explained to me by Genn.");

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);
};

FUNC VOID Info_Mod_Faice_Pruefung_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_B_15_00"); //The task is sufficient.

	Info_Mod_Faice_Pruefung_C();
};

FUNC VOID Info_Mod_Faice_Pruefung_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_A_15_00"); //Let's hear it.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_01"); //As you surely know, we come from Tugettso, you have been there several times.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_02"); //In this place, you must know that there is a strong bond with nature, but you can only feel it if you are a full member.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_A_03_03"); //I don't want to humiliate you with this, I know your merits for us. More about this later.

	Info_ClearChoices	(Info_Mod_Faice_Pruefung);

	Info_AddChoice	(Info_Mod_Faice_Pruefung, "[Next]", Info_Mod_Faice_Pruefung_E);
	Info_AddChoice	(Info_Mod_Faice_Pruefung, "Leave the rest out of it, I care.", Info_Mod_Faice_Pruefung_D);
};

FUNC VOID Info_Mod_Faice_Pruefung_E()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_00"); //In any case, we try to live with nature instead of using it for our own purposes.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_01"); //This is not always easy, after all we also need a little meat from time to time, most of us are not vegetarians.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_02"); //But through special meditation we are able to communicate with the animals in Tugettso.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_03"); //In this way we can find out which animals nature has planned for us, and they do not resist any resistance to hunting.
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_E_15_04"); //What's that got to do with me?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung_E_03_05"); //You are now ready to learn these techniques. Can we get started?
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_E_15_06"); //Let's hear it.

	Info_Mod_Faice_Pruefung_C();
};

FUNC VOID Info_Mod_Faice_Pruefung_D()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung_D_15_00"); //Leave the rest out of it, I care.

	Info_Mod_Faice_Pruefung_C();
};

INSTANCE Info_Mod_Faice_Pruefung2 (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung2_Condition;
	information	= Info_Mod_Faice_Pruefung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here I am again.";
};

FUNC INT Info_Mod_Faice_Pruefung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Genn_Pruefung3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_00"); //Here I am again.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_01"); //I already know about it. Let me briefly summarize:

	if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 4)
	{
		if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_02"); //Genn could not tell me anything good, but I heard only the best of Asko and Per.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_03"); //Asko could not tell me anything good, but I heard only the best of Genn and Per.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_04"); //Unfortunately, Per could not tell me anything good, but I heard only the best of Genn and Asko.
		};

		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_05"); //After all that has happened, I will still reward you appropriately and teach you the techniques.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_06"); //That's generous. What have you got for me?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_07"); //You can choose whether you want to have an armor or a robe. Each of these armor has its own advantages and disadvantages.

		B_GivePlayerXP	(1000);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "I'll take the robe.", Info_Mod_Faice_Pruefung2_B);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "I'll take the armor.", Info_Mod_Faice_Pruefung2_A);
	}
	else if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 5)
	{
		if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 1)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_08"); //Genn and Asko told me that you couldn't do their job, but Per was thrilled with you.
		}
		else if (Mod_VMG_Pruefung_Genn == 2)
		&& (Mod_VMG_Pruefung_Asko == 1)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_09"); //Genn and Per told me that you couldn't do their job, but Asko was thrilled with you.
		}
		else if (Mod_VMG_Pruefung_Genn == 1)
		&& (Mod_VMG_Pruefung_Asko == 2)
		&& (Mod_VMG_Pruefung_Per == 2)
		{
			AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_10"); //Asko and Per told me that you couldn't do their job, but Genn was enthusiastic about it.
		};

		B_GivePlayerXP	(800);

		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_11"); //If you give up a reward, I'll teach you the techniques.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_12"); //I give up my reward. Teach me the old techniques.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_13"); //Come back when you're ready.

		B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I can now study with Faice.");
		B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);
	}
	else if ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) == 6)
	{
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_14"); //You didn't manage to qualify for the old techniques.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_15"); //They will now be refused to you forever. Sorry about that.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_16"); //There's nothing you can do about it.... right?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_17"); //What do you mean?

		B_GivePlayerXP	(500);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "How about a thousand pieces of gold?", Info_Mod_Faice_Pruefung2_D);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "Nothing. I guess I'm just not good enough. Goodbye. Goodbye.", Info_Mod_Faice_Pruefung2_C);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_18"); //You have mastered all the tasks and qualified yourself to learn the old techniques. Congratulations!
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_19"); //Of course, you should also receive a fair reward.
		AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_15_20"); //That's very generous. What have you got for me?
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_21"); //You can choose whether you want to have an armor or a robe. Each of these armor has its own advantages and disadvantages.
		AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_03_22"); //In addition, you shall receive 1000 pieces of gold.

		B_GivePlayerXP	(1500);

		Info_ClearChoices	(Info_Mod_Faice_Pruefung2);

		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "I'll take the robe.", Info_Mod_Faice_Pruefung2_F);
		Info_AddChoice	(Info_Mod_Faice_Pruefung2, "I'll take the armor.", Info_Mod_Faice_Pruefung2_E);
	};
};

FUNC VOID Info_Mod_Faice_Pruefung2_G()
{
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_G_03_00"); //I want you to have it.
};

FUNC VOID Info_Mod_Faice_Pruefung2_F()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_F_15_00"); //I'll take the robe.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Naturmagier2, 1);

	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_ShowGivenThings	("1000 gold coins and transformation magic robes preserved");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I have received my reward and can now learn from Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_E()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_E_15_00"); //I'll take the armor.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Verwandlungskrieger, 1);

	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_ShowGivenThings	("1000 gold coins and armor of the protectors preserved");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I have received my reward and can now learn from Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_D()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_D_15_00"); //How about a thousand pieces of gold?
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_D_03_01"); //How dare you? We are incorruptible! Out of my sight!

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I no longer have a chance to learn the old techniques.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_C()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_C_15_00"); //Nothing. I guess I'm just not good enough. Goodbye. Goodbye.
	AI_Output(self, hero, "Info_Mod_Faice_Pruefung2_C_03_01"); //Farewell. Goodbye.

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I no longer have a chance to learn the old techniques.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_B()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_B_15_00"); //I'll take the robe.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Naturmagier2, 1);

	B_ShowGivenThings	("Receive transformation magic robe");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I have received my reward and can now learn from Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

FUNC VOID Info_Mod_Faice_Pruefung2_A()
{
	AI_Output(hero, self, "Info_Mod_Faice_Pruefung2_A_15_00"); //I'll take the armor.

	Info_Mod_Faice_Pruefung2_G();

	CreateInvItems	(hero, ItAr_Verwandlungskrieger, 1);

	B_ShowGivenThings	("To preserve the armor of the guardians");

	B_LogEntry	(TOPIC_MOD_FAICE_PRUEFUNG, "I have received my reward and can now learn from Faice.");
	B_SetTopicStatus	(TOPIC_MOD_FAICE_PRUEFUNG, LOG_SUCCESS);

	Info_ClearChoices	(Info_Mod_Faice_Pruefung2);
};

INSTANCE Info_Mod_Faice_Pruefung3 (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pruefung3_Condition;
	information	= Info_Mod_Faice_Pruefung3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Learning to speak with animals (5 learning points)";
};

FUNC INT Info_Mod_Faice_Pruefung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faice_Pruefung2))
	&& ((Mod_VMG_Pruefung_Genn + Mod_VMG_Pruefung_Asko + Mod_VMG_Pruefung_Per) < 6)
	&& (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_TIER] == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_Pruefung3_Info()
{
	B_TeachPlayerTalentForeignLanguage (self, hero, LANGUAGE_Tier);
};

INSTANCE Info_Mod_Faice_BACK (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_BACK_Condition;
	information	= Info_Mod_Faice_BACK_Info;
	permanent	= 1;
	important	= 0;
	description	= "(room leaving)";
};

FUNC INT Info_Mod_Faice_BACK_Condition()
{
	if (Npc_GetDistToWP(self, "OW_PATH_TEMPELRUIN07") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faice_BACK_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "LOCATION_28_01");
};

INSTANCE Info_Mod_Faice_Pickpocket (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_Pickpocket_Condition;
	information	= Info_Mod_Faice_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Faice_Pickpocket_Condition()
{
	C_Beklauen	(170, ItSc_TrfShadowbeast, 2);
};

FUNC VOID Info_Mod_Faice_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

	Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_BACK, Info_Mod_Faice_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Faice_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Faice_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
};

FUNC VOID Info_Mod_Faice_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Faice_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Faice_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Faice_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Faice_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Faice_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Faice_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Faice_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Faice_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Faice_EXIT (C_INFO)
{
	npc		= Mod_4019_VMG_Faice_MT;
	nr		= 1;
	condition	= Info_Mod_Faice_EXIT_Condition;
	information	= Info_Mod_Faice_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Faice_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faice_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
