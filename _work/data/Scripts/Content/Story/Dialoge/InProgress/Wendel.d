INSTANCE Info_Mod_Wendel_Hi (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Hi_Condition;
	information	= Info_Mod_Wendel_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Wendel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wendel_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_00"); //Spiral. I'm in charge of water supply here in Khorata.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_01"); //As you can see, the distribution of water is not so easy, but with the help of pumps and locks, above-ground and underground.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_02"); //To this end, we can guarantee an optimal supply of the population.
	AI_Output(self, hero, "Info_Mod_Wendel_Hi_23_03"); //Such a complicated system obviously requires constant monitoring and repair.
};

INSTANCE Info_Mod_Wendel_Endres (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres_Condition;
	information	= Info_Mod_Wendel_Endres_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Juliana_WasLos))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_00"); //Oh, no! We have a serious problem!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_02"); //I'd like to know that, too! The water circulation is interrupted.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_03"); //Something seems to be clogging the pipes.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_15_04"); //What can be done about it?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_05"); //Either we take all the pipes apart and check them... or we lubricate it from the inside with grease, hoping that the plug will dissolve on its own.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_23_06"); //Will you do the greasing?

	Info_ClearChoices	(Info_Mod_Wendel_Endres);

	Info_AddChoice	(Info_Mod_Wendel_Endres, "You can do it without me.", Info_Mod_Wendel_Endres_B);
	Info_AddChoice	(Info_Mod_Wendel_Endres, "Where do I get the fat from?", Info_Mod_Wendel_Endres_A);
};

FUNC VOID Info_Mod_Wendel_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_B_15_00"); //You can do it without me.

	Info_ClearChoices	(Info_Mod_Wendel_Endres);
};

FUNC VOID Info_Mod_Wendel_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_A_15_00"); //Where do I get the fat from?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_01"); //That is the next question. I think the only thing that helps is troll fat, it's extra greasy. And extra rare.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_02"); //But you're lucky to have seen a troll here in Relendel.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_03"); //Just put him down and take as much of his fat off him as you can carry!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres_A_15_04"); //That's all you got?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres_A_23_05"); //Now hurry up, before we run into bottlenecks!

	Mod_Wendel_FettNehmer = 1;

	Wld_InsertNpc	(Troll, "FP_ROAM_TROLL_WENDEL");

	Info_ClearChoices	(Info_Mod_Wendel_Endres);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "The pipes in Khorata's waterworks are blocked. Wendel instructed me to shoot a troll in Relendel and remove the grease from it so that we can grease the pipes.");
};

INSTANCE Info_Mod_Wendel_Endres02 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres02_Condition;
	information	= Info_Mod_Wendel_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got the troll fat.";
};

FUNC INT Info_Mod_Wendel_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres))
	&& (Npc_HasItems(hero, ItMi_Trollfett) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres02_15_00"); //I got the troll fat.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres02_23_01"); //Very good! And now it poured into the abortion at the Fire Magician's House.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "I'm to tip the troll fat into the abortion of the Fire Magic House...");
};

INSTANCE Info_Mod_Wendel_Endres02_Optional (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres02_Optional_Condition;
	information	= Info_Mod_Wendel_Endres02_Optional_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where's the Fire Magic House?";
};

FUNC INT Info_Mod_Wendel_Endres02_Optional_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres02))
	&& (Npc_HasItems(hero, ItMi_Trollfett) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres02_Optional_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres02_Optional_15_00"); //Where's the Fire Magic House?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres02_Optional_23_01"); //It is located in the same street as Peter's inn and the brewery. All right, let's go!
};

INSTANCE Info_Mod_Wendel_Endres03 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres03_Condition;
	information	= Info_Mod_Wendel_Endres03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, PC_Klo_Trollfett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres03_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_00"); //Jesus Christ! That... That's Endres!
	AI_Output(hero, self, "Info_Mod_Wendel_Endres03_15_01"); //Who?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_02"); //Endres, the builder! Juliana's missing man. He blocked the pipes. (chokes)
	AI_Output(self, hero, "Info_Mod_Wendel_Endres03_23_03"); //(pause) I... Oh, by Adanos, he was murdered!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "The corpse of Endres has appeared, but the cause of death is unclear. Maybe Juliana can bring more light into the darkness?");
};

INSTANCE Info_Mod_Wendel_Endres04 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres04_Condition;
	information	= Info_Mod_Wendel_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about Endres?";
};

FUNC INT Info_Mod_Wendel_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_00"); //What do you know about Endres?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_01"); //He was a little weird.... and brilliant, you might say.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_02"); //He created the mysterious sculptures in the city and helped plan the water supply system.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_03"); //Without him, we'd be much more backward.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_04"); //Who could want to kill him?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_05"); //How should I know? He must have had envy, but that's all I know. I never knew him well.
	AI_Output(hero, self, "Info_Mod_Wendel_Endres04_15_06"); //Then I'll keep asking around.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_07"); //Tell Juliana about the incident. I'm not feeling well.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_08"); //Ah... concerning the waterworks: everything is working again... like clockwork...
	AI_Output(self, hero, "Info_Mod_Wendel_Endres04_23_09"); //Thanks for your help.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_KHORATA_WASSERWERK, "The problems in the waterworks are solved to make room for others.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_WASSERWERK, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Wendel_Endres05 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres05_Condition;
	information	= Info_Mod_Wendel_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a few questions to ask you.";
};

FUNC INT Info_Mod_Wendel_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres05_15_00"); //I have a few questions to ask you.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres05_23_01"); //Why is that?
	AI_Output(hero, self, "Info_Mod_Wendel_Endres05_15_02"); //Just answer the questions.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres05_23_03"); //(nervous) All right.
};

INSTANCE Info_Mod_Wendel_Endres06 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres06_Condition;
	information	= Info_Mod_Wendel_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you do before Endres' body (...) )";
};

FUNC INT Info_Mod_Wendel_Endres06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres06_15_00"); //What did you do before Endres' body landed in the water supply system?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres06_23_01"); //Um... with my assistant, the fitter.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres06_23_02"); //As always since morning in the morning.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel claims to have been with his mechanic the whole time on the day in question.");
};

INSTANCE Info_Mod_Wendel_Endres07 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres07_Condition;
	information	= Info_Mod_Wendel_Endres07_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of the healer as a suspect?";
};

FUNC INT Info_Mod_Wendel_Endres07_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres07_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres07_15_00"); //What do you think of the healer as a suspect?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres07_23_01"); //I can't tell if they even knew each other better. Surely they weren't good friends.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel believes that the healer and Endres did not know each other better.");
};

INSTANCE Info_Mod_Wendel_Endres08 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Endres08_Condition;
	information	= Info_Mod_Wendel_Endres08_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of Juliana as a suspect?";
};

FUNC INT Info_Mod_Wendel_Endres08_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Endres08_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Endres08_15_00"); //What do you think of Juliana as a suspect?
	AI_Output(self, hero, "Info_Mod_Wendel_Endres08_23_01"); //The relationship between Juliana and Endres seemed to be a little strained.
	AI_Output(self, hero, "Info_Mod_Wendel_Endres08_23_02"); //He was a genius, which is not always easy for the partner.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "It is said to have been a crisis in Juliana and Endres' relationship.");
};

INSTANCE Info_Mod_Wendel_Nagelnachschub (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Nagelnachschub_Condition;
	information	= Info_Mod_Wendel_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description 	= "I have a letter here for you.";
};                       

FUNC INT Info_Mod_Wendel_Nagelnachschub_Condition()
{
	if (Npc_HasItems(hero, ItWr_ErikaLiebesbrief) == 1)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_15_00"); //I have a letter here for you.

	B_GiveInvItems	(hero, self, ItWr_ErikaLiebesbrief, 1);

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "I gave Wendel the message. Now I was supposed to pick up the nail package.");

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_23_01"); //Who gave you the letter?

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);

	Info_AddChoice	(Info_Mod_Wendel_Nagelnachschub, "I don't know, I found it.", Info_Mod_Wendel_Nagelnachschub_B);
	Info_AddChoice	(Info_Mod_Wendel_Nagelnachschub, "I have the letter from Erika.", Info_Mod_Wendel_Nagelnachschub_A);
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_B_15_00"); //I don't know, I found it.
	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_B_23_01"); //Too bad. Then I can't answer.

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);
};

FUNC VOID Info_Mod_Wendel_Nagelnachschub_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Nagelnachschub_A_15_00"); //I have the letter from Erika.
	AI_Output(self, hero, "Info_Mod_Wendel_Nagelnachschub_A_23_01"); //You are the bearer of the best news of my life! Take that as a thank you!

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	Info_ClearChoices	(Info_Mod_Wendel_Nagelnachschub);
};

INSTANCE Info_Mod_Wendel_Unruhen (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen_Condition;
	information	= Info_Mod_Wendel_Unruhen_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You are proposed to succeed Anselms.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Unruhen2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen_15_00"); //You are proposed to succeed Anselms.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen_23_01"); //I'm very honored. However, I'm not sure I'm the one.
};

INSTANCE Info_Mod_Wendel_Unruhen2 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen2_Condition;
	information	= Info_Mod_Wendel_Unruhen2_Info;
	permanent	= 0;
	important	= 0;
	description 	= "What do you think of the current situation?";
};                       

FUNC INT Info_Mod_Wendel_Unruhen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen2_15_00"); //What do you think of the current situation?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen2_23_01"); //She's very precarious. We must not do anything more that could further provoke the miners, but should resume talks of understanding immediately.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen2_23_02"); //More deaths must be prevented!

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "When Wendel becomes a new governor, he wants to work for an understanding with the miners.");
};

INSTANCE Info_Mod_Wendel_Unruhen3 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen3_Condition;
	information	= Info_Mod_Wendel_Unruhen3_Info;
	permanent	= 0;
	important	= 0;
	description 	= "What's your side of sympathy?";
};                       

FUNC INT Info_Mod_Wendel_Unruhen3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Unruhen))
	&& (Mod_REL_Kandidat < 2)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen3_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen3_15_00"); //What's your side of sympathy?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen3_23_01"); //That's not the point. Both parties have made mistakes.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen3_23_02"); //Our aim must be to integrate miners into our society in such a way that we are all satisfied.
};

INSTANCE Info_Mod_Wendel_Unruhen4 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen4_Condition;
	information	= Info_Mod_Wendel_Unruhen4_Info;
	permanent	= 0;
	important	= 0;
	description 	= "You are now the governor of Khorata.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen4_Condition()
{
	if (Mod_REL_Kandidat == 3)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen4_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_00"); //You are now the governor of Khorata.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_01"); //I don't know if I should be happy about it.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_02"); //You'll be all right.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_03"); //With your support. Let's get started right now. There's a lot to do.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_04"); //Where do we start?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_05"); //Of course with the miners. The conflict must end without bloodshed.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_06"); //Actually, that would be a case for the court. But between you and me, I don't think much of the judge and the magistrate.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_07"); //Understandable.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_08"); //I think we should put together a representative of the townspeople and one of the diggers;
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_09"); //the two of them would discuss the possible solutions, supervised by an impartial outsider - you.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_10"); //Who should represent the townspeople and who should represent the Buddlers?
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_11"); //Now that I am the head of Khorata, I presume to speak on behalf of the citizens.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_12"); //As for the diggers, I suggest you find a volunteer among them.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen4_23_13"); //I'll meet you at the Town Hall.
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen4_15_14"); //All clear.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "Wendel has asked me to persuade a Buddler to meet him in the town keeper's house.");

	B_StartOtherRoutine	(self, "VERHANDLUNG");
};

INSTANCE Info_Mod_Wendel_Unruhen5 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen5_Condition;
	information	= Info_Mod_Wendel_Unruhen5_Info;
	permanent	= 1;
	important	= 0;
	description 	= "You two are good to go. I will intervene if necessary.";
};                       

FUNC INT Info_Mod_Wendel_Unruhen5_Condition()
{
	if (Mod_REL_WendelS == 1)
	&& (Npc_GetDistToWP(Mod_7492_OUT_Roman_REL, "RATHAUSUNTEN_01") < 500)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen5_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen5_15_00"); //You two are good to go. I will intervene if necessary.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen6 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen6_Condition;
	information	= Info_Mod_Wendel_Unruhen6_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen6_Condition()
{
	if (Mod_REL_WendelS == 4)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen6_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen6, "I see your obvious complicity, Wendel.", Info_Mod_Wendel_Unruhen6_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen6, "Exactly, roman, please try to be objective.", Info_Mod_Wendel_Unruhen6_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen6_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen6_B_15_00"); //I see your obvious complicity, Wendel.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 6;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen6_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen6_A_15_00"); //Exactly, roman, please try to be objective.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 5;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen6);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen7 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen7_Condition;
	information	= Info_Mod_Wendel_Unruhen7_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen7_Condition()
{
	if (Mod_REL_WendelS == 10)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen7_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen7, "Wendel, you should give in on that point.", Info_Mod_Wendel_Unruhen7_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen7, "Keep a low profile, Roman.", Info_Mod_Wendel_Unruhen7_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen7_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen7_B_15_00"); //Wendel, you should give in on that point.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 12;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen7_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen7_A_15_00"); //Keep a low profile, Roman.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 11;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen7);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen8 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen8_Condition;
	information	= Info_Mod_Wendel_Unruhen8_Info;
	permanent	= 1;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen8_Condition()
{
	if (Mod_REL_WendelS == 16)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen8_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	Info_AddChoice	(Info_Mod_Wendel_Unruhen8, "Roman's demand is perfectly acceptable.", Info_Mod_Wendel_Unruhen8_B);
	Info_AddChoice	(Info_Mod_Wendel_Unruhen8, "Compensation would be too much of a good thing now.", Info_Mod_Wendel_Unruhen8_A);
};

FUNC VOID Info_Mod_Wendel_Unruhen8_B()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen8_B_15_00"); //Roman's demand is perfectly acceptable.

	if (Mod_REL_WendelS_Choice == 0)
	{
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_01"); //I'm sorry to have to tell you this, but under an impartial one I'm not imagining what you showed us here.
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_02"); //I am not satisfied with the outcome of the discussion and would suggest that I try again later.

		Mod_REL_WendelS = 17;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_03"); //Yes, I'm aware of that. We'll work something out.
		AI_Output(self, hero, "Info_Mod_Wendel_Unruhen8_B_23_04"); //Perhaps we could postpone compensation for a while in the future, in order to clean up the budget. Would that be all right?

		Mod_REL_WendelS = 18;
	};

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Wendel_Unruhen8_A()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Unruhen8_A_15_00"); //Compensation would be too much of a good thing now.
	AI_Output(self, hero, "DEFAULT"); //

	Mod_REL_WendelS = 20;

	Mod_REL_WendelS_Choice += 1;

	Info_ClearChoices	(Info_Mod_Wendel_Unruhen8);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wendel_Unruhen9 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Unruhen9_Condition;
	information	= Info_Mod_Wendel_Unruhen9_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_Wendel_Unruhen9_Condition()
{
	if (Mod_REL_WendelS == 19)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Unruhen9_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen9_23_00"); //We seem to have solved the most serious problems. I hope everything will now run smoothly.
	AI_Output(self, hero, "Info_Mod_Wendel_Unruhen9_23_01"); //Thanks for your help.

	B_LogEntry	(TOPIC_MOD_KHORATA_UNRUHEN, "After all, there is already a basis for further negotiations. That should be the beginning of the peaceful times in Khorata.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_UNRUHEN, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	Mod_REL_Stadthalter = 2;

	CurrentNQ += 1;

	B_StartOtherRoutine	(self, "STADTHALTER");
};

INSTANCE Info_Mod_Wendel_Plagenquest (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_Condition;
	information	= Info_Mod_Wendel_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Seems to me you need an exterminator.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_August_Plagenquest))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST01");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_01"); //Yeah, we've already sent a bunch of hammer-hunters through town.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_02"); //But even with their hammers they could not stop the vermin.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_03"); //No matter how often you hit them, they come back and in the company of many of their kind.
	B_Say	(hero, self, "$PLAGENQUEST02");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_05"); //In fact, I'm currently researching the chronicles of the city and I've actually come across something....
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_06"); //However, it will take me a while until I have fully explored the text.
	B_Say	(hero, self, "$PLAGENQUEST03");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_08"); //Yes, you can try your luck as a hammerfighter in the courthouse, where there are a lot of filthy creatures at the moment.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_23_09"); //Maybe you'll be more successful.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Wendel seems to have found clues in the city's chronicles. Till he's completely fathomed them, I'm supposed to try me out in the courthouse for insect hunting.");

	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_01, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_02, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
	Wld_InsertNpc	(Insekt_03, "REL_CITY_341");
};

INSTANCE Info_Mod_Wendel_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_02_Condition;
	information	= Info_Mod_Wendel_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Plagenquest))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_00"); //Ahh, good to see you, I've discovered something important.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_01"); //The plague that is currently afflicting the city had already existed many centuries ago - not long after the city was founded.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_02"); //In order to secure the blessing of the gods for the city and its surroundings, animal sacrifices were made in homage to the gods at that time.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_03"); //Everyone had the duty to sacrifice a certain number of animals.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_04"); //However, one of their founding fathers was so stingy that he sacrificed insects instead of sheep or molate.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_05"); //The gods were so angry that they transferred the human desire for a rich animal population to the insects of the environment.

	B_Say	(hero, self, "$PLAGENQUEST04");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_07"); //Well, with the chemical club.

	B_Say	(hero, self, "$PLAGENQUEST05");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_09"); //Yes, for a long time one was completely helpless and it seemed as if one had to give up the city.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_10"); //But then a righteous and respectable citizen named Chemos was sent a dream.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_11"); //He received instructions on how to build a weapon that could banish the plague.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_12"); //That's why our custom with the town hammers must come to the fight against the insects.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_13"); //At that time hammers and clubs did not differ fundamentally.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_14"); //Our law for this purpose dates back to a little later, when the hammers were given their characteristic shape and the clubs were replaced for practical reasons.

	B_Say	(hero, self, "$PLAGENQUEST06");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_16"); //No, I'm afraid not anymore. And the production of such a weapon is not uncomplicated. I found the manual....

	B_Say	(hero, self, "$PLAGENQUEST07");

	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_18"); //Here's a copy of it.

	B_GiveInvItems	(self, hero, ItWr_Bauplan_ChemischeKeule, 1);

	B_Say	(hero, self, "$PLAGENQUEST08");

	B_HeroFakeScroll ();

	B_Say	(hero, self, "$PLAGENQUEST09");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_21"); //(joyous) Really? You would be doing us all a great service.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_22"); //As soon as you have everything together, get back here and hand the materials to our blacksmith.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_02_23_23"); //And we'll find a club somewhere in the city. Thank you, thank you.

	B_LogEntry_More	(TOPIC_MOD_ADANOS_PLAGE, TOPIC_MOD_ADANOS_DRECKSVIECHER, "Aha, the plague of insects is thus based on a punishment of the gods for an outrage committed.", "Ok, I'm now allowed to search for the chemical club material that can banish the cattle. They should be able to find a club themselves in Khorata...");

	B_GivePlayerXP	(200);

	Mod_WM_Plage_PartInsekt = 1;
};

INSTANCE Info_Mod_Wendel_Plagenquest_03 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_03_Condition;
	information	= Info_Mod_Wendel_Plagenquest_03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Plagenquest_03_Condition()
{
	if (Npc_HasItems(hero, ItMw_Chemo) == 1)
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_03_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_03_23_00"); //I hear you got the club. Now it's time to drive the pests out of town.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_03_23_01"); //Many of the animals have gathered in the marketplace. Take the chemical club and destroy it.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Now it's time to check if the chemical club is working. I'm supposed to deal with all the scumbags that have gathered at the marketplace.");

	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_04, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_05, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
	Wld_InsertNpc	(Insekt_06, "REL_CITY_102");
};

INSTANCE Info_Mod_Wendel_Plagenquest_04 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_04_Condition;
	information	= Info_Mod_Wendel_Plagenquest_04_Info;
	permanent	= 0;
	important	= 0;
	description	= "The club was able to stop the insects. I defeated them all.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_03))
	&& (Npc_IsDead(Insekt_04))
	&& (Npc_IsDead(Insekt_05))
	&& (Npc_IsDead(Insekt_06))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_04_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST10");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_01"); //That's great and the first step to finally banish the evil.
	B_Say	(hero, self, "$PLAGENQUEST11");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_03"); //Yes, unfortunately we found out that new parasites continue to come from the surrounding forests.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_04"); //Somewhere there must be the root of the evil.... the ominous giant bug the springs were talking about.
	B_Say	(hero, self, "$PLAGENQUEST12");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_06"); //There's something, or rather someone who could help you with that.
	B_Say	(hero, self, "$PLAGENQUEST13");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_08"); //A citizen of our town. His name is axon and he carries the chemical blood, as I found out a few hours ago.
	B_Say	(hero, self, "$PLAGENQUEST14");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_10"); //Well, on the one hand the pedigrees give clear hints and then.... well...
	B_Say	(hero, self, "$PLAGENQUEST15");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_12"); //... we found the chemical club with him. She was hanging in the living room of his house all the time.
	B_Say	(hero, self, "$PLAGENQUEST16");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_04_23_14"); //Anyway, he should be able to help you sense the beetle animal, discover and destroy the giant bug. He's already waiting for you outside the city.

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Grmpf, this is getting better and better. All this time the chemical club was hanging around Axon, a descendant of chemo.... Well then, now I'm allowed to shoot the big bug in the woods with him. Axon's waiting for me outside the city.");

	B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "VORSTADT");
	AI_Teleport	(Mod_7415_OUT_Axon_REL, "REL_CITY_001");
};

INSTANCE Info_Mod_Wendel_Plagenquest_05 (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Plagenquest_05_Condition;
	information	= Info_Mod_Wendel_Plagenquest_05_Info;
	permanent	= 0;
	important	= 0;
	description	= "It is done. The giant bow is defeated.";
};

FUNC INT Info_Mod_Wendel_Plagenquest_05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Axon_Plagenquest_02))
	&& (Npc_IsDead(Riesenbug))
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Plagenquest_05_Info()
{
	B_Say	(hero, self, "$PLAGENQUEST17");
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_05_23_01"); //That's terrific. You have done our city a service of inestimable value and you have dispelled the evil.
	AI_Output(self, hero, "Info_Mod_Wendel_Plagenquest_05_23_02"); //Take this gold and the town hammer as a thank you. May the blessing of the gods accompany you.

	B_ShowGivenThings	("1000 Gold and town hammer received");

	CreateInvItems	(hero, ItMw_Stadthammer, 1);
	CreateInvItems	(hero, ItMi_Gold, 1000);

	B_SetTopicStatus	(TOPIC_MOD_ADANOS_DRECKSVIECHER, LOG_SUCCESS);

	B_GivePlayerXP	(800);

	if (!Npc_IsDead(Mod_7415_OUT_Axon_REL))
	{
		B_StartOtherRoutine	(Mod_7415_OUT_Axon_REL, "START");
	};

	B_Göttergefallen (2, 1);
};

INSTANCE Info_Mod_Wendel_Andre (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Andre_Condition;
	information	= Info_Mod_Wendel_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wendel_Andre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Herold))
	&& (Mod_PAL_HeroBot == 17)
	&& (Mod_REL_Stadthalter == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wendel_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_00"); //Good morning, soldier. Or should I call you captain?
	B_Say	(hero, self, "$HEROBOTQUEST01");
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_02"); //Lord Andre's plan worked, but there was no way to implement an exit into the blast furnace, so he overpowered you, put on the costume and lured the robot into the blast furnace.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_03"); //We found a sealed envelope next to you. In it Andre explained the whole matter and appointed you as his successor.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_04"); //But here... you can read the details for yourself.

	B_GiveInvItems	(self, hero, ItWr_AndreAbschied, 1);

	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_05"); //And I'm supposed to give you this key. Probably to his box in the master's room.

	B_GiveInvItems	(self, hero, ItKe_Andre, 1);

	B_Say	(hero, self, "$HEROBOTQUEST02");
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_06"); //Exactly. You missed the memorial service, you slept through 32 hours of beaten-up sleep. The old warhorse seems to have been in very good shape.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_07"); //If you want to say goodbye, Andre is now at the cemetery. At least his ashes. But rest first, he won't run away from you.
	AI_Output(self, hero, "Info_Mod_Wendel_Andre_23_08"); //Oh yes, before I forget: The operator of the blast furnace asked for you, check in on him.

	B_Göttergefallen(1, 5);

	B_GivePlayerXP	(1000);

	Log_CreateTopic	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_PAL_BOT, TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The robot is defeated, but Lord Andre had to sacrifice himself to achieve this. Now he has appointed me as his successor.", "Andre actually sacrificed himself to destroy the robot. In a letter he named me as his successor and gave me a key, which probably leads me to his chest in the barracks.");
	B_SetTopicStatus	(TOPIC_MOD_PAL_BOT, LOG_SUCCESS);

	B_LogEntry_NS	(TOPIC_MOD_MILIZ_ANDRESVERMAECHTNIS, "The operator of the blast furnace Robert wants to see me. I should stop by there and ask what it's about.");
};

INSTANCE Info_Mod_Wendel_Freudenspender (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Freudenspender_Condition;
	information	= Info_Mod_Wendel_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Do you want to give pleasure?";
};                       

FUNC INT Info_Mod_Wendel_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Wendel_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Wendel_Freudenspender_15_00"); //Do you want to give pleasure?
	AI_Output(self, hero, "Info_Mod_Wendel_Freudenspender_23_01"); //What's this?
	AI_Output(hero, self, "Info_Mod_Wendel_Freudenspender_15_02"); //A way to spirituality.
	AI_Output(self, hero, "Info_Mod_Wendel_Freudenspender_23_03"); //(laughs) Try the old ladies.
};

INSTANCE Info_Mod_Wendel_Pickpocket (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_Pickpocket_Condition;
	information	= Info_Mod_Wendel_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wendel_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

	Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_BACK, Info_Mod_Wendel_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wendel_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wendel_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wendel_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wendel_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wendel_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wendel_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wendel_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wendel_EXIT (C_INFO)
{
	npc		= Mod_7480_OUT_Wendel_REL;
	nr		= 1;
	condition	= Info_Mod_Wendel_EXIT_Condition;
	information	= Info_Mod_Wendel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wendel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wendel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
