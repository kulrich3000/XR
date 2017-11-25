INSTANCE Info_Mod_Juliana_Hi (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Hi_Condition;
	information	= Info_Mod_Juliana_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello.";
};

FUNC INT Info_Mod_Juliana_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Hi_15_00"); //Hello.
	AI_Output(self, hero, "Info_Mod_Juliana_Hi_35_01"); //What do you want?
};

INSTANCE Info_Mod_Juliana_WasLos (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_WasLos_Condition;
	information	= Info_Mod_Juliana_WasLos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why so hostile?";
};

FUNC INT Info_Mod_Juliana_WasLos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Hi))
	&& (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_WasLos_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_00"); //Why so hostile?
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_01"); //I've got other things to worry about than letting me chat up.
	AI_Output(hero, self, "Info_Mod_Juliana_WasLos_15_02"); //That's what interests me now.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_03"); //You're not well informed. The gossips play it out in every alley!
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_04"); //My husband disappeared yesterday morning on his way to work. Nobody knows where.
	AI_Output(self, hero, "Info_Mod_Juliana_WasLos_35_05"); //Now, if you'll excuse me.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_ENDRES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ENDRES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana is worried about her husband staying. She did not expressly instruct me to investigate the case, but I will keep my eyes and ears open.");
};

INSTANCE Info_Mod_Juliana_Endres (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres_Condition;
	information	= Info_Mod_Juliana_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Endres is dead.";
};

FUNC INT Info_Mod_Juliana_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wendel_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_00"); //Endres is dead.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_01"); //His body got into the water supply system and washed into the lake from there.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_35_02"); //(shocked) No! How did this happen?
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_03"); //It looks like murder.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_15_04"); //I'll take care of finding the culprit. I need to ask you a few questions.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_35_05"); //(apathic) Yes... because of me.

	Info_ClearChoices	(Info_Mod_Juliana_Endres);

	Info_AddChoice	(Info_Mod_Juliana_Endres, "Who could have a motive to kill him?", Info_Mod_Juliana_Endres_B);
	Info_AddChoice	(Info_Mod_Juliana_Endres, "What has Endres done in the last few weeks?", Info_Mod_Juliana_Endres_A);
};

FUNC VOID Info_Mod_Juliana_Endres_C()
{
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_35_00"); //Before you start examining, you should go to our healer first.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_C_35_01"); //I'm sure he can tell you what.... Endres's cause of death.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Before his death, Endres was involved in a project for which he had ore produced from a mine. I don't want the prospectors to talk to him. But before I go to them, I should talk to the healer.");

	B_StartOtherRoutine	(self, "HAUS");

	AI_Teleport	(Mod_7483_OUT_Endres_REL, "REL_CITY_244");
	B_StartOtherRoutine	(Mod_7483_OUT_Endres_REL, "ARZT");

	if (Mod_REL_Stadthalter != 2) {
		B_StartOtherRoutine	(Mod_7480_OUT_Wendel_REL, "START");
	};

	B_StartOtherRoutine	(Mod_7481_OUT_Monteur_REL, "START");

	B_KillNpc	(Mod_7483_OUT_Endres_REL);

	Info_ClearChoices	(Info_Mod_Juliana_Endres);
	
	var int platformPtr; platformPtr = MEM_SearchVobByName ("ENDRESPLATFORM");
	var zCVob platform; platform = MEM_PtrToInst(platformPtr);
	platform.bitfield[0] = platform.bitfield[0] & ~zCVob_bitfield0_collDetectionDynamic;
};

FUNC VOID Info_Mod_Juliana_Endres_B()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_B_15_00"); //Who could have a motive to kill him?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_01"); //The miners are unhappy with their work.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_02"); //They complain when they can and blame Endres for their situation.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_B_35_03"); //There are a few of them that I.... to think such a horrible thing would happen.

	Mod_Juliana_Endres_02 = 1;

	if (Mod_Juliana_Endres_01 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

FUNC VOID Info_Mod_Juliana_Endres_A()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres_A_15_00"); //What has Endres done in the last few weeks?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_01"); //He had a great idea to improve the water pipes.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_02"); //He found out that pipes made of ore do not rust or release toxic substances into the water, and he found out that a small mine near the city was used for ore mining.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres_A_35_03"); //During the day he spent most of his time there, and at night he was always at home.

	Mod_Juliana_Endres_01 = 1;

	if (Mod_Juliana_Endres_02 == 1)
	{
		Info_Mod_Juliana_Endres_C();
	};
};

INSTANCE Info_Mod_Juliana_Endres02 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres02_Condition;
	information	= Info_Mod_Juliana_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you're being blackmailed.";
};

FUNC INT Info_Mod_Juliana_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_00"); //I hear you're being blackmailed.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_35_01"); //Ah... Oh, that's nothing.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres02_15_02"); //I want to ask you a few things. If you're innocent, you have nothing to worry about.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres02_35_03"); //If it helps...
};

INSTANCE Info_Mod_Juliana_Endres03 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres03_Condition;
	information	= Info_Mod_Juliana_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where were you when Endres died?";
};

FUNC INT Info_Mod_Juliana_Endres03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_00"); //Where were you when Endres died?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_35_01"); //I've been waiting for him.... in the house.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres03_15_02"); //Is there anyone who can testify to that?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres03_35_03"); //(slowly) No, I don't think so.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana was home alone at that time. That's not so good, of course.");
};

INSTANCE Info_Mod_Juliana_Endres04 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres04_Condition;
	information	= Info_Mod_Juliana_Endres04_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you think of Wendel?";
};

FUNC INT Info_Mod_Juliana_Endres04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres04_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres04_15_00"); //What do you think of Wendel?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres04_35_01"); //He indicates with his knowledge, but he's fine. Quiet guy.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana thinks Wendel is a boastful but quiet person.");
};

INSTANCE Info_Mod_Juliana_Endres05 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres05_Condition;
	information	= Info_Mod_Juliana_Endres05_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why is the healer blackmailing you?";
};

FUNC INT Info_Mod_Juliana_Endres05_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juliana_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres05_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_00"); //Why is the healer blackmailing you?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_01"); //I guess he needs the money.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_02"); //Why are you blackmailing me?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_03"); //I can't tell you that.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres05_15_04"); //All right, but that casts a bad light on you.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_05"); //Between Endres and me, things didn't always go so well.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_06"); //I was often angry with him because his work was so important to him. More important than me...
	AI_Output(self, hero, "Info_Mod_Juliana_Endres05_35_07"); //But I never would have killed him!

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Juliana asserted that she hadn't killed Endres, even though she had been angry with him a lot lately.");
};

INSTANCE Info_Mod_Juliana_Endres06 (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Endres06_Condition;
	information	= Info_Mod_Juliana_Endres06_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's something else I'd like to know.";
};

FUNC INT Info_Mod_Juliana_Endres06_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juliana_Endres06_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_00"); //There's something else I'd like to know.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_01"); //To what extent were you actually privy to the healer's plans?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_02"); //I knew it. I knew he was going to kill him, and I was so mad at Endres at the time that I didn't stop him.
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_03"); //By the time I regretted it, it was too late. Of course, the healer used this as a bargaining chip against me.
	AI_Output(hero, self, "Info_Mod_Juliana_Endres06_15_04"); //What was he blackmailing for?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_05"); //My secrecy. He loved me, did you know that?
	AI_Output(self, hero, "Info_Mod_Juliana_Endres06_35_06"); //He destroyed everything I used to hang on so I could take him as the center of my life.
};

INSTANCE Info_Mod_Juliana_Freudenspender (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Freudenspender_Condition;
	information	= Info_Mod_Juliana_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Pleasure-giver against sorrow?";
};                       

FUNC INT Info_Mod_Juliana_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Juliana_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Juliana_Freudenspender_15_00"); //Pleasure-giver against sorrow?
	AI_Output(self, hero, "Info_Mod_Juliana_Freudenspender_35_01"); //Maybe.... why not? Thanks.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Juliana_Pickpocket (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_Pickpocket_Condition;
	information	= Info_Mod_Juliana_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Juliana_Pickpocket_Condition()
{
	C_Beklauen	(57, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_BACK, Info_Mod_Juliana_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Juliana_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Juliana_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Juliana_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Juliana_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Juliana_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Juliana_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Juliana_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Juliana_EXIT (C_INFO)
{
	npc		= Mod_7482_OUT_Juliana_REL;
	nr		= 1;
	condition	= Info_Mod_Juliana_EXIT_Condition;
	information	= Info_Mod_Juliana_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Juliana_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juliana_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
