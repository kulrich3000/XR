INSTANCE Info_Mod_Hagen_Hi (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Hi_Condition;
	information	= Info_Mod_Hagen_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Hi_Condition()
{
	if (Mod_IstLehrling == 1)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_00"); //Thank you for coming. You've done well as a former convict.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_01"); //Let me be frank with you. The disappearance of the barrier has presented us with major problems.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_02"); //All the former prisoners - what about them?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_03"); //The King has ordered them not to go to the mainland.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_04"); //I don't want them all in town, and there are a lot of people who don't want that anymore.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_05"); //So far, thanks to Innos, most of them have stayed in the Minental.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_06"); //But the road to Khorinis is no longer blocked.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_07"); //And I can't even guess what they are hatching in their camps.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_08"); //What role do I play in the story?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_09"); //You're a respectable citizen now. You know both sides.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_10"); //I need some information. What are the convicts up to? Where are they everywhere?
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_11"); //So I'm supposed to be spying.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_12"); //No harm shall come to them, on the contrary!
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_13"); //They're trying to lobby me, deceive me so that I can take reckless action against you.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_14"); //(sighing) If no solution is found, the former convicts will find it gloomy.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_15"); //Or for the city! I don't want to be responsible for a massacre.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_16"); //So what am I supposed to do? And what do I get out of it?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_17"); //Look around in the marsh camp and the mercenary camp of the Mine Valley.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_18"); //I've also heard that a bunch of bandits have settled in a valley basin in the north.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_19"); //Perhaps there are other groups that have formed after the disappearance of the barrier.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_20"); //Find out to what extent the mood is against us. How numerous the independent camps are.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_21"); //Whether it comes to combat preparations. Or if it stays calm. Then report to me.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_22"); //What about the old camp?
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_23"); //There's no need for you to ask around.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_24"); //I know everything I need to know about Old Camp.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_25"); //In return, I'll give you unlimited access to the Minental.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_26"); //You will be almost the only one who can move freely in Khorinis as well as in the Minental.
	AI_Output(hero, self, "Info_Mod_Hagen_Hi_15_27"); //I'll be on my way, then.
	AI_Output(self, hero, "Info_Mod_Hagen_Hi_06_28"); //Thank you.... What...? is that? This.... painful

	Log_CreateTopic	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_HAGEN_ASYLANTEN, "Lord Hagen has given me a comprehensive task: I should visit all groups in the Minental, whether old or new, and find out what their plans for the future are. For this I should talk to the respective leaders. Lord Hagen hopes that these talks will shed light on how he should shape his prisoner policy.");

	var int ptr;
	ptr = MEM_SearchVobByName("NW_2_OW_ORETRAIL");

	if (ptr > 0)
	{
		var oCTriggerChangeLevel tcl;
		MEM_AssignInst(tcl, ptr);

		tcl.levelname = "Minental\Minental.ZEN";
		tcl.startvob = "WP_INTRO09";
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HAGENKO");
};

INSTANCE Info_Mod_Hagen_Asylanten (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten_Condition;
	information	= Info_Mod_Hagen_Asylanten_Info;
	permanent	= 1;
	important	= 0;
	description	= "I have news about the groupings in the Minental.";
};

FUNC INT Info_Mod_Hagen_Asylanten_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	&& ((Mod_Hagen_BL == 0)
	|| (Mod_Hagen_VL == 0)
	|| (Mod_Hagen_KG == 0)
	|| (Mod_Hagen_JL == 0)
	|| (Mod_Hagen_SL == 0)
	|| (Mod_Hagen_NL == 0))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_15_00"); //I have news about the groupings in the Minental.

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king has sent his own troop to collect the passport (... )", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_BACK()
{
	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);
};

FUNC VOID Info_Mod_Hagen_Asylanten_F1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_F1_15_00"); //In a valley basin in the north there are bandits.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_F1_06_01"); //Bandits? This does not bode well.... What could you find out?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_F1_15_02"); //There are not too many of them, but I couldn't find out what steps they were planning next.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_F1_06_03"); //I'll have to keep an eye on her.

	Mod_Hagen_BL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_E1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_E1_15_00"); //In a ruin, transformation mages have emerged.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_06_01"); //Transforming magician? What are these creatures?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_E1_15_02"); //They hope for help from outside, as their homeworld is plagued by a goblin plague. They're very pleasant.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_06_03"); //And that's where they're looking in the Minental?
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_E1_06_04"); //I can't support them anyway, my men are all needed.

	Mod_Hagen_VL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_D2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D2_15_00"); //There's no grouping on the pass far and wide.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D2_06_01"); //Then the situation is a bit more relaxed than I thought.

	Mod_Hagen_KG = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_D1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D1_15_00"); //The king sent his own troops to guard the pass.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_06_01"); //Damn it! What's the point?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_D1_15_02"); //You seem to have fallen out of favour with him, and he doesn't trust you anymore.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_06_03"); //There it is again!
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_06_04"); //As soon as you are a few years out of the immediate reach of the king, you are intrigued from all sides without being able to resist.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_D1_06_05"); //I will have to take a closer look at these boys.

	Mod_Hagen_KG = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_C1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_C1_15_00"); //A hunting community pursues its profession.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_C1_06_01"); //They must have crossed the pass before I could have it checked.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_C1_06_02"); //But they won't cause much trouble.

	Mod_Hagen_JL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_B2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_00"); //The Brotherhood rises!
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B2_06_01"); //The Brotherhood? What's she planning?
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_02"); //They think the sleeper was just a trick from the king to keep them still.
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B2_15_03"); //Therefore they are now convinced that Innos is the God of lying and have turned to Beliar.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B2_06_04"); //Give Innos that's not true!

	Mod_Hagen_SL = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_B1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_B1_15_00"); //The Brotherhood is quiet.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B1_06_01"); //That's good news.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_B1_06_02"); //However, you never know when one of their fanatics will call for an exodus.

	Mod_Hagen_SL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_A2()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A2_15_00"); //Everything is quiet in the New Camp.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A2_06_01"); //I can hardly imagine.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A2_06_02"); //But since I don't know anything more specific, I'll probably have to follow you.

	Mod_Hagen_NL = 2;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten_A1()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_00"); //The New Camp is planning an outbreak.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A1_06_01"); //At Innos! Tell me more!
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_02"); //The bandits want to sail to the mainland and overthrow the king.
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten_A1_15_03"); //It is very likely that they will come to Khorinis on their way.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten_A1_06_04"); //No! If they can make it to the mainland, I'm lost!

	Mod_Hagen_NL = 1;

	B_GivePlayerXP	(300);

	Info_ClearChoices	(Info_Mod_Hagen_Asylanten);

	Info_AddChoice	(Info_Mod_Hagen_Asylanten, DIALOG_BACK, Info_Mod_Hagen_Asylanten_BACK);

	if (Npc_KnowsInfo(hero, Info_Mod_Sancho_Asylanten))
	&& (Mod_Hagen_BL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a valley basin in the north there are bandits.", Info_Mod_Hagen_Asylanten_F1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Albert_Asylanten))
	&& (Mod_Hagen_VL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "In a ruin, transformation mages have emerged.", Info_Mod_Hagen_Asylanten_E1);
	};
	
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Asylanten))
	&& (Mod_Hagen_KG == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "There's no grouping on the pass far and wide.", Info_Mod_Hagen_Asylanten_D2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The king sent his own troops to guard the pass.", Info_Mod_Hagen_Asylanten_D1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_Asylanten))
	&& (Mod_Hagen_JL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "A hunting community pursues its profession.", Info_Mod_Hagen_Asylanten_C1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Cadar_Asylanten))
	&& (Mod_Hagen_SL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood rises!", Info_Mod_Hagen_Asylanten_B2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The Brotherhood is quiet.", Info_Mod_Hagen_Asylanten_B1);
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Lee_WieStehts))
	&& (Mod_Hagen_NL == 0)
	{
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "Everything's quiet in New Camp.", Info_Mod_Hagen_Asylanten_A2);
		Info_AddChoice	(Info_Mod_Hagen_Asylanten, "The New Camp is planning an outbreak.", Info_Mod_Hagen_Asylanten_A1);
	};
};

INSTANCE Info_Mod_Hagen_Asylanten2 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten2_Condition;
	information	= Info_Mod_Hagen_Asylanten2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I should have found all the camps.";
};

FUNC INT Info_Mod_Hagen_Asylanten2_Condition()
{
	if (Mod_Hagen_BL > 0)
	&& (Mod_Hagen_VL > 0)
	&& (Mod_Hagen_KG > 0)
	&& (Mod_Hagen_JL > 0)
	&& (Mod_Hagen_SL > 0)
	&& (Mod_Hagen_NL > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten2_15_00"); //I should have found all the camps.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_06_01"); //You've done me an important service. I can't thank you enough.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_06_02"); //It will now be easier to respond to the real situation there.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten2_06_03"); //Before I let you go, I'm afraid I have to hurt you for a moment.

	Mod_Talk_Sicherung = TRUE;

	B_SetTopicStatus	(TOPIC_MOD_HAGEN_ASYLANTEN, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	CurrentNQ += 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Hagen_Asylanten3 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten3_Condition;
	information	= Info_Mod_Hagen_Asylanten3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Asylanten3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten3_Info()
{
	Wld_PlayEffect("BLACK_SCREEN", hero, hero, 0, 0, 0, TRUE);

	B_Say	(hero, self, "$AARGH_1");

	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_00"); //Please don't take it personally, but I can't afford any more mistakes.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_01"); //I had a truth serum administered to you to check your statements on the groupings.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_02"); //Don't worry, you'll definitely stay alive.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_03"); //However, if you have lied to me, I must deprive you of my favor.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_04"); //So, say: Have you told me the truth about the groupings?

	if (Mod_Hagen_NL == 1)
	&& (Mod_Hagen_SL == 1)
	&& (Mod_Hagen_KG == 1)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_05"); //I've only spoken the truth to the best of my knowledge.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_06"); //That means a lot to me.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_07"); //Please forgive my crude way. That's the only way I could be sure.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_08"); //The effect of the serum fades in a few minutes, then you are yourself again.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_09"); //You shall also receive a small reward for the injustice done to you.

		B_GiveInvItems	(self, hero, ItMi_Gold, 500);

		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_10"); //I hope you're not too angry with me?
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_11"); //I'll smash your face, you sack of shit.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_12"); //(seriously) I'm sorry.

		Mod_Hagen_Asylanten = 1;
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_13"); //(wailing) No.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_14"); //What's the situation instead?
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_15"); //(lying) The New Camp plans to break out of the Minental and reach the mainland with a ship.
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_16"); //The brotherhood is perfectly quiet.
		AI_Output(hero, self, "Info_Mod_Hagen_Asylanten3_15_17"); //The king's guards camp at the pass so that you have no power there. The King doesn't trust you.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_18"); //That's different than what you tried to tell me, isn't it?
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_19"); //And another guy says I'm paranoid.
		AI_Output(self, hero, "Info_Mod_Hagen_Asylanten3_06_20"); //Albrecht, get him out of here. And make sure he doesn't forget this day so quickly.

		AI_StopProcessInfos	(self);
	};
};

INSTANCE Info_Mod_Hagen_Alissandro (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Alissandro_Condition;
	information	= Info_Mod_Hagen_Alissandro_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alissandro sent me, we have a request for the Paladin.";
};

FUNC INT Info_Mod_Hagen_Alissandro_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Knast2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Alissandro_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Alissandro_15_00"); //Alissandro sent me, we have a request for the Paladin.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_01"); //I'm listening.
	AI_Output(hero, self, "Info_Mod_Hagen_Alissandro_15_02"); //The Old Camp is threatened by demonic knights under the leadership of the former arch-baron Gomez and we hope for help from the Order of the Paladins.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_03"); //Well, I know Alissandro, he is a wise and righteous man and I am sure that under his hand the Old Camp will be well managed, so we want to fulfill your request.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_04"); //I want to explain the plan:
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_05"); //First we will go through the abandoned mine to the valley of the Mine, where we will take a stand at the hunter's hut. Afterwards we will take all the trails into and out of the Minental.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_06"); //Once we do this, we will attack the Old Mine and take it.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_07"); //If no more supplies can come out of it, we besiege Gomez and his people in which a large part of our army takes position around the camp to prevent someone from entering or leaving.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_08"); //However, we will infiltrate someone into the camp to harm them from within. You'll be the one. So we will eventually force Gomez to surrender.
	AI_Output(self, hero, "Info_Mod_Hagen_Alissandro_06_09"); //We'll be coming to the Minental soon. You go to Alissandro in time and tell him this.

	B_LogEntry	(TOPIC_MOD_AL_FLUCHT, "Lord Hagen has promised me his help. I'll tell Alissandro about it.");
};

INSTANCE Info_Mod_Hagen_Cornelius (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius_Condition;
	information	= Info_Mod_Hagen_Cornelius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Because of my many merits...";
};

FUNC INT Info_Mod_Hagen_Cornelius_Condition()
{
	if (Mod_Cornelius_Overtalk == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_00"); //Because of my many merits...
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_06_01"); //You're starting out like the city quacks. What do you want?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_02"); //I request a new assignment for Cornelius.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_06_03"); //(laughs) I'll only make him a royal toilet cleaner.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_06_04"); //Why is he complaining? Apparently, his only job is to make my life difficult.
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_15_05"); //That doesn't make him happy.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_06_06"); //(ironic) The performance stirs me to tears. But I'll keep him close to where I can look after him.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_06_07"); //Otherwise, I would still have to be afraid that his corrupt games would lead to success.

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);

	Info_AddChoice	(Info_Mod_Hagen_Cornelius, "It's too dangerous for me.", Info_Mod_Hagen_Cornelius_B);
	Info_AddChoice	(Info_Mod_Hagen_Cornelius, "I'll vouch for him.", Info_Mod_Hagen_Cornelius_A);
};

FUNC VOID Info_Mod_Hagen_Cornelius_B()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_B_15_00"); //It's too dangerous for me.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_B_06_01"); //I'm glad you agree.

	Mod_Cornelius_Overtalk = 2;

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	B_SetTopicStatus	(TOPIC_MOD_CORNELIUS_HELP, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);
};

FUNC VOID Info_Mod_Hagen_Cornelius_A()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_A_15_00"); //I'll vouch for him.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_06_01"); //You seem so sure of yourself. If I were willing to give Cornelius a new office, what would that be?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius_A_15_02"); //I think he'd like something economical.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_06_03"); //(sighing deeply) So be it. Tell him I'll appoint him Minister of Economics at the next opportunity.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_06_04"); //But keep in mind that I only feel obliged to do so because you have done such a great service to us so far.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius_A_06_05"); //Let's hope he doesn't abuse his position.

	B_LogEntry	(TOPIC_MOD_CORNELIUS_HELP, "I should tell Cornelius that he will be appointed Minister of Economy by Lord Hagen at the next opportunity.");

	Mod_Cornelius_Overtalk = 4;

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	Info_ClearChoices	(Info_Mod_Hagen_Cornelius);
};

INSTANCE Info_Mod_Hagen_Cornelius02 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius02_Condition;
	information	= Info_Mod_Hagen_Cornelius02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where's Cornelius?";
};

FUNC INT Info_Mod_Hagen_Cornelius02_Condition()
{
	if (Mod_Cornelius_Overtalk == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius02_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius02_15_00"); //Where's Cornelius?
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_06_01"); //Where he belongs: behind bars.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_06_02"); //I just found out he had a little coup in mind.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_06_03"); //He shouldn't have let so many outsiders in on this.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_06_04"); //It's a good thing that you didn't insist on letting him change his post at the time, otherwise things might look quite different now.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius02_06_05"); //You have to be careful who you make a friend of.

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Hagen_Cornelius03 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Cornelius03_Condition;
	information	= Info_Mod_Hagen_Cornelius03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_Cornelius03_Condition()
{
	if (Mod_Cornelius_Overtalk == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Cornelius03_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius03_06_00"); //(bitter) So is this thing eaten now? Can we get back to work?
	AI_Output(hero, self, "Info_Mod_Hagen_Cornelius03_15_01"); //Please forgive my recklessness.
	AI_Output(self, hero, "Info_Mod_Hagen_Cornelius03_06_02"); //I want to teach you a lesson.
};

INSTANCE Info_Mod_Hagen_StellDichEin (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_StellDichEin_Condition;
	information	= Info_Mod_Hagen_StellDichEin_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_StellDichEin_Condition()
{
	if (Mod_HagenStellDichEin == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_StellDichEin_Info()
{
	AI_EquipBestArmor	(Mod_1056_VLK_Buergerin_NW);

	AI_Output(self, hero, "Info_Mod_Hagen_StellDichEin_06_00"); //What the hell are you doing here?
	AI_Output(hero, self, "Info_Mod_Hagen_StellDichEin_15_01"); //Uh, I--
	AI_Output(self, hero, "Info_Mod_Hagen_StellDichEin_06_02"); //All right, uh, let's forget this happened.

	AI_EquipBestArmor	(self);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_1056_VLK_Buergerin_NW, "START");
};

INSTANCE Info_Mod_Hagen_Mario (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Mario_Condition;
	information	= Info_Mod_Hagen_Mario_Info;
	permanent	= 0;
	important	= 0;
	description	= "Garond is a murderer!";
};

FUNC INT Info_Mod_Hagen_Mario_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garond_Mario2))
	&& (!Npc_IsDead(Mod_500_PAL_Garond_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Mario_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_00"); //Garond is a murderer!
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_06_01"); //You mean the duel with Mario?
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_06_02"); //(sigh) I would not have expected an experienced man like Garond to do something so foolish, but I can't see anything unlawful about the duel itself.
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_06_03"); //In many cases these unfortunately end deadly. You should be aware of that before you challenge someone.
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_04"); //That means I have to take matters into my own hands.
	AI_Output(self, hero, "Info_Mod_Hagen_Mario_06_05"); //I'd like it better if you'd let her rest.
	AI_Output(hero, self, "Info_Mod_Hagen_Mario_15_06"); //That's for me to decide.
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Andre)))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_00"); //So now you've arrived.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_01"); //I have heard of everything that has happened.... and also Andre's wish for you to succeed him.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_02"); //I have heard a lot about your past, though.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_03"); //So you shall be a former prisoner of the colony and you shall have contacts with Lares and some of the New Camp's hides.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_04"); //l--
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_05"); //You don't have to deny it.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_06"); //After the last events I asked about you and got confirmation from several sources.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_07"); //With that in mind, I can't just make you captain... because I would have to make you a paladin to the king's paladin, when you are conspiring with his enemies.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_08"); //On the other hand, well.... I can't ignore your actions for the city, or Andres' will for his great sacrifice.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_09"); //What does that mean in concrete terms?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_10"); //That means I'm gonna give you a chance to prove yourself.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_11"); //If you have proven that you are worthy of such a ministry and that you will not be disgraceful to the Paladins, perhaps I will reconsider.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis_15_12"); //How can I prove my loyalty?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_13"); //Well, for your first task you will have to use the relationships that cast such a bad light on you.... even if it sounds paradoxical.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_14"); //You will go to the big farm and deliver a message to Lares expressing my will for a non-aggression pact.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_15"); //The situation in the Minental valley is worryingly aggravating.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_16"); //An open conflict between paladins and mercenaries is of no benefit to either side.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_17"); //I hope Lares feels the same way. Here's the message.

	B_GiveInvItems	(self, hero, ItWr_HagenLares, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis_06_18"); //So you know what to do.

	Log_CreateTopic	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, "Lord Hagen has doubts whether I am worthy of a paladin and captain. So I'm supposed to do some tasks for him first. To begin with, I must deliver a message of peace to Lares.");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis2 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis2_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lares_Friedensbote))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis2_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_00"); //You're back? What do you have to report?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis2_15_01"); //I gave the letter to Lares and he agreed to the truce.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_02"); //That's good news. You have thus fulfilled this task as expected.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_03"); //But since the evil never rests, I must send you out to the next job.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis2_15_04"); //What is the threat to the city?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_05"); //Well... how can I put it... from the east gate an increasing strong smell of decomposition draws into the city.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_06"); //On the one hand, it disturbs public life in the otherwise busy market immensely, and on the other hand, the goalkeepers have so far been unable to identify any source of this evil, which is worrying.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_07"); //So I sent some guards outside the East Gate to look for the source.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_08"); //You will go to them and guide them.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_09"); //If you find what you are looking for, do not hesitate to solve the problem if it is in your power.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis2_06_10"); //All clear? Good. May Inno lighten your search.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FRIEDENSBOTE, LOG_SUCCESS);
	Log_CreateTopic	(TOPIC_MOD_MILIZ_NASE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_NASE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_NASE, "From the east gate a strong smell of decomposition draws into the city. That is why I am to go there, where some city guards will help me to find the source of the stench. If we find anything, we're supposed to solve the problem, if possible.");

	B_RemoveNpc	(Mod_7100_ASS_Zahit_NW);
	B_RemoveNpc	(Mod_7101_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7113_ASS_Yussuf_NW);
	B_RemoveNpc	(Mod_7105_ASS_Aabid_NW);
	B_RemoveNpc	(Mod_7104_ASS_Shakir_NW);
	B_RemoveNpc	(Mod_7103_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7106_ASS_Ramsi_NW);
	B_RemoveNpc	(Mod_7102_ASS_Zeki_NW);
	B_RemoveNpc	(Mod_7108_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7107_ASS_Gauner_NW);
	B_RemoveNpc	(Mod_7127_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7117_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7118_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7116_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7124_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7122_ASS_Maysara_NW);
	B_RemoveNpc	(Mod_7123_ASS_Malik_NW);
	B_RemoveNpc	(Mod_7119_ASS_Masut_NW);
	B_RemoveNpc	(Mod_7125_ASS_Karim_NW);
	B_RemoveNpc	(Mod_7126_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7141_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7134_ASS_Anwaerter_NW);
	B_RemoveNpc	(Mod_7133_ASS_Sinbad_NW);
	B_RemoveNpc	(Mod_7131_ASS_Krieger_NW);
	B_RemoveNpc	(Mod_7142_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7138_ASS_Azhar_NW);
	B_RemoveNpc	(Mod_7140_ASS_Elite_NW);
	B_RemoveNpc	(Mod_7145_ASS_Aadel_NW);
	B_RemoveNpc	(Mod_7149_ASS_Mufid_NW);
	B_RemoveNpc	(Mod_7146_ASS_Mustafa_NW);
	B_RemoveNpc	(Mod_7147_ASS_Naim_NW);
	B_RemoveNpc	(Mod_7150_ASS_Mahamad_NW);
	B_RemoveNpc	(Mod_7152_ASS_Aiman_NW);
	B_RemoveNpc	(Mod_7148_ASS_Norek_NW);
	B_RemoveNpc	(Mod_7154_ASS_Malek_NW);
	B_RemoveNpc	(Mod_7156_ASS_Mirza_NW);
	B_RemoveNpc	(Mod_7166_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7160_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7199_ASS_Amir_NW);
	B_RemoveNpc	(Mod_7159_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7158_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7161_ASS_Novize_NW);
	B_RemoveNpc	(Mod_7157_ASS_Mourad_NW);
	B_RemoveNpc	(Mod_7163_ASS_Kamal_NW);
	B_RemoveNpc	(Mod_7164_ASS_Kais_NW);
	B_RemoveNpc	(Mod_7165_ASS_Adil_NW);

	B_StartOtherRoutine	(Mod_7111_ASS_Yasin_NW, "MILIZ");
	B_KillNpc	(Mod_7111_ASS_Yasin_NW);

	Wld_SendTrigger	("EVT_ASSISTOT");

	CreateInvItems	(Mod_7111_ASS_Yasin_NW, ItWr_YasinErpresser, 1);
	CreateInvItems	(Mod_7111_ASS_Yasin_NW, ItWr_YasinNotiz, 1);

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "NASE");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "NASE");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "NASE");
	
	Mod_541_NONE_Till_NW.guild = GIL_PAL;

	CreateInvItems	(Mod_541_NONE_Till_NW, ItAr_MIL_M, 1);
	AI_UnequipArmor	(Mod_541_NONE_Till_NW);
	AI_EquipBestArmor(Mod_541_NONE_Till_NW);

	B_GivePlayerXP	(300);

	Wld_InsertNpc	(Mod_7681_ASS_Halbtoter_NW,	"WP_ASSASSINE_08");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis3 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis3_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Till_InnosNase2))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis3_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_00"); //You're back? Does that mean the source has been found and eliminated?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis3_15_01"); //Yeah, the city guards are handling it now.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis3_15_02"); //In a nearby cave, the corpses of some sinister creatures lay around, apparently killed by the robot.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_03"); //What's so close to the city? And the robot took them out?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_04"); //Hmm... probably a further explanation for the fact that violent crime has decreased so much in the city and its surroundings.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_05"); //(half-loud) Maybe the robot could have been used a little longer...
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_06"); //(again to the hero) Uh, by all means, you have once again done a good service to the city.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_07"); //Here's a little reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_08"); //If you continue to perform so well, it's only a matter of time before you become captain and Paladin, even if I don't have any other duties for the time being.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis3_06_09"); //Just follow the path of the righteous, the example of Innos.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_NASE, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_541_NONE_Till_NW, "START");
	B_StartOtherRoutine	(Mod_744_MIL_Pablo_NW, "START");
	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "START");

	B_StartOtherRoutine	(Mod_587_NONE_Jesper_NW, "HEHLER");
	B_StartOtherRoutine	(Mod_598_MIL_Mika_NW, "HEHLER");

	B_GivePlayerXP	(300);

	B_StartOtherRoutine	(Mod_748_NONE_Rengaru_NW, "DIEB");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis4 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis4_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis4_Condition()
{
	if (Mod_PAL_MikaHehler > 0)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis4_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_00"); //City guard Mika has disappeared. What's happening?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_01"); //You're responsible for the city guards. I demand accountability!
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_02"); //He was dealing in hot stuff and got a fire under his butt when I caught him doing it.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_03"); //What...? but.... So he was the fenceman who got the stolen goods out of town.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_04"); //You knew about a fence?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_05"); //We knew there had to be a liaison between the city's thieves and the surrounding area.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_06"); //Only in this way could the stolen goods leave the city unnoticed.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_07"); //Mika then... yes now in retrospect, it all makes sense. But... what happened to him?

	if (Mod_PAL_MikaHehler == 2)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_08"); //He escaped from the city.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_09"); //It's annoying that he escapes punishment like that. But at least the thieves lost their fence.

		B_GivePlayerXP	(250);
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis4_15_10"); //I caught him and was forced to kill him in battle.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_11"); //So that's how he was judged for his actions. Good.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_12"); //And the thieves have lost their fence.

		B_GivePlayerXP	(350);
	};

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_13"); //That should make their trade really difficult.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_14"); //Once again, you've done the city a valuable service.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis4_06_15"); //Here, you earned that pay.

	if (Mod_PAL_MikaHehler == 2)
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 200);
	}
	else
	{
		B_GiveInvItems	(self, hero, ItMi_Gold, 300);
	};
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis5 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis5_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis5_Info;
	permanent	= 0;
	important	= 0;
	description	= "The thieves have lost more than just their fence.";
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis5_Condition()
{
	if (Mod_PAL_MikaHehler == 1)
	&& (Npc_HasItems(hero, ItKe_Hotel) == 1)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis5_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_00"); //The thieves have lost more than just their fence.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_01"); //Ich habe Mikas "trading partners" gestellt. Er wird keinen Ärger mehr machen.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_02"); //I found a key with him.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_03"); //That's great, show me the key...
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_04"); //Here.

	B_GiveInvItems	(hero, self, ItKe_Hotel, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_05"); //H. There could be a lot of people in town.... including me.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_06"); //Where'd you catch Mika doing his crooked business?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_07"); //Where the herald preaches during the day.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_08"); //Aha! That brings us closer to the point, of course.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_09"); //I'll do everything I can to make sure. Come back to me tomorrow.

	if (Mod_PAL_Diebesgilde == 1)
	{
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_10"); //But...
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_11"); //Yeah, was there something else?
		AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis5_15_12"); //I've already taken out the thieves. The key led from Hanna's hostel to her hiding place.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_13"); //What, you've already taken care of it?!
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_14"); //(captures again) Uh, well, if that's the way it is.... good work.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_15"); //Once again you have done the city an invaluable service.
		AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis5_06_16"); //Here, you've earned more than that pay.

		B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

		B_GivePlayerXP	(600);

		B_StartOtherRoutine	(Mod_583_NONE_Hanna_NW, "KNAST");
		B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "HOTEL");
	}
	else
	{
		Log_CreateTopic	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "Lord Hagen has instructed me to report to him again tomorrow.");

		Mod_PAL_Diebesgilde_Day = Wld_GetDay();
	};
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis6 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis6_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis5))
	&& (Wld_GetDay() > Mod_PAL_Diebesgilde_Day)
	&& (Mod_PAL_Diebesgilde == 0)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis6_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_06_00"); //I'm glad you came. I've already arranged everything.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis6_15_01"); //What is to be done?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_06_02"); //You will go to Hanna's hostel, from where a path leads down into the sewer system.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_06_03"); //There you will draw the thieves' attention to yourself, so that city guards can climb in and position themselves unnoticed through a shaft elsewhere.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_06_04"); //With a surprise attack we should hopefully be able to take the gang of thieves by surprise.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis6_06_05"); //So you know what to do? Good luck.

	B_GiveInvItems	(self, hero, ItKe_Hotel, 1);

	B_LogEntry	(TOPIC_MOD_MILIZ_DIEBESGILDE, "From Hanna's hostel, a path leads down into the sewerage system that I am to take.");

	B_StartOtherRoutine	(Mod_968_MIL_Bilgot_NW, "HOTEL");

	B_StartOtherRoutine	(Mod_568_NONE_Cassia_NW, "DIEB");
	B_StartOtherRoutine	(Mod_746_NONE_Ramirez_NW, "DIEB");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis7 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis7_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis7_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis7_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wambo_AndreVermaechtnis))
	&& (Mod_PAL_Diebesgilde == 1)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis7_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_06_00"); //You took care of the gang of thieves? Excellent.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_06_01"); //Once again you have done the city an invaluable service.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis7_06_02"); //Here, you've earned more than that pay.

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_DIEBESGILDE, LOG_SUCCESS);

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(600);
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis8 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis8_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis8_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis8_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Urnol_Daemonisch))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis8_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_00"); //Bei Innos, wie konnte ich nur die unsägliche Gefahr übersehen, in der unsere Stadt schwebte.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_01"); //Es hätte nicht viel gefehlt, und die Kreaturen der Nacht hätten uns ihrem Willen unterworfen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_02"); //Zu viele Stadtwachen und Paladine hatten sie schon kontrolliert ... allein dein Einsatz hat uns vor Schlimmeren bewahrt, wie ich gerade erfahren habe.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_03"); //Wahrlich, du gehörst in die Reihen unserer Streiter.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_04"); //Es jetzt noch zu leugnen, hieße Innos Willen zu verleugnen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_05"); //Bist du also bereit ein Paladin des Königs und ein Streiter Innos’ zu werden?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis8_15_06"); //Ja, das bin ich.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_07"); //Dann erhebe ich dich hiermit zu einem der unsrigen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_08"); //Was die Tugenden eines Paladins sein, wie du den Weg der Rechtschaffenheit begehst ... das alles muss ich dir nicht erläutern.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_09"); //Denn du hast durch deine Taten bewiesen, dass du stets im Sinne Innos handelst.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_10"); //Zudem bist du nun auch offiziell Hauptmann der Stadt Khorinis.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_11"); //Für gewöhnlich wäre dein Platz jetzt in der Kaserne.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_12"); //Ich habe aber schon mitbekommen, dass es dich nie lange an einem Ort hält.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_13"); //Ich glaube dennoch, oder gerade deshalb wirst du unserer Stadt und der Insel besonders gut dienen.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_14"); //Dass du ihr Schicksal bislang schon entscheidend zum Guten bestimmt hast, steht außer Frage.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_15"); //Wir werden das schon irgendwie hinbekommen ...
 AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_16"); //	// this dialog is wrong, player got armor and weapon already from Lord AndreWie dem auch sei, hier sind die Rüstung und das Schwert eines Paladins.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis8_06_17"); //Willkommen in unseren Reihen.
	
	Mod_Gilde = 3;
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis9 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis9_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis9_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis9_Condition()
{
	if (Mod_Gilde == 3)
	&& (Mod_Enter_Minental_04)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis9_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_00"); //Ahh, good of you to come. I take it you've heard of the dramatic events in the Minental?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis9_15_01"); //You mean the fall of the Old Camp?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_02"); //Exactly. Evil gains power with alarming speed... and new evil seems to be looming from the Minental.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis9_15_03"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_04"); //We don't know for sure yet.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_05"); //Experience with the soul tormentors has shown us that harmless things cannot always be distinguished from dangerous things at first glance.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_06"); //One thing is certain, however, is that more and more people are coming from the Minental and groups of them can be found everywhere in the area.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_07"); //Whether it's just harmless refugees or shrewd criminals, even insidious spies of the enemy.... we don't know.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_08"); //Some of our city guards are close by and observe the situation.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_09"); //With regard to your knowledge of the valley and its inhabitants, I would like you to come across them and find out what it is like with the people.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_10"); //Here, on this map I have listed the positions of the groups.

	B_GiveInvItems	(self, hero, ItWr_Map_HagenAL, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis9_06_11"); //So you know what to do? Innos accompany you on your way!

	Log_CreateTopic	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_FREUNDFEIND, "Since the fall of the Old Camp, an increasing number of people have flocked from the Minental valley, who have settled in groups at different places in Khorinis. Lord Hagen wants me to find out if they're just innocent refugees or evil ones.");

	B_StartOtherRoutine	(Mod_109_MIL_Rick_NW, "FISK");
	B_StartOtherRoutine	(Mod_118_MIL_Rumbold_NW, "FISK");

	Wld_InsertNpc	(Mod_7682_STT_Fisk_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7683_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7684_STT_Schatten_NW,	"NW_BIGMILL_FARM3_07");
	Wld_InsertNpc	(Mod_7685_BUD_Buddler_NW,	"NW_BIGMILL_FARM3_07");

	Wld_InsertNpc	(Mod_7686_BUD_Grim_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7687_GRD_Gardist_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7688_STT_Schatten_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7689_BUD_Buddler_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7690_STT_Schatten_NW,	"NW_TAVERNE_TROLLAREA_15");
	Wld_InsertNpc	(Mod_7691_BUD_Buddler_NW,	"NW_TAVERNE_TROLLAREA_15");

	Wld_InsertNpc	(Mod_7692_BUD_Buddler_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7693_BUD_Buddler_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7694_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7695_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7696_BDT_Bandit_NW,	"NW_FARM1_PATH_SPAWN_05");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis10 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis10_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis10_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was with the three groups from the Minental.";
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis10_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Npc_IsDead(Mod_7686_BUD_Grim_NW))
	&& (Npc_IsDead(Mod_7687_GRD_Gardist_NW))
	&& (Npc_IsDead(Mod_7689_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7691_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7690_STT_Schatten_NW))
	&& (Npc_IsDead(Mod_7692_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7693_BUD_Buddler_NW))
	&& (Npc_IsDead(Mod_7694_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7695_BDT_Bandit_NW))
	&& (Npc_IsDead(Mod_7696_BDT_Bandit_NW))
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis10_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_00"); //I was with the three groups from the Minental.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_01"); //And what do you have to report?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_02"); //At Bengar they were harmless refugees, including a trader I knew from the colony.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_03"); //They're in town by now.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_04"); //All right, that's good.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_05"); //Maybe we can learn more about the situation in the Minental from them.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_06"); //The group at Akil's was not quite so pleasant.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_07"); //They were highwaymen.... whose remains are now stored along the path.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_08"); //Good work. Fewer scoundrels and troublemakers.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_09"); //You just didn't know what a paladin can do.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_10"); //However... and the last group?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_11"); //Also an old acquaintance from the old camp....
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_12"); //Pleasing to hear...
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_13"); //But it was not quite so harmless.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_14"); //It seems that he opened the gate in the camp under the influence of the mariners.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_15"); //What, he was responsible?
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis10_15_16"); //Ja. Er und seine "pals" die bei ihm waren, werden hier jedoch kein weiteres Unheil mehr anrichten.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_17"); //That's a relief. May Innos have mercy on their tortured souls....
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_18"); //Be that as it may, you have completed your mission more than satisfactorily, as always.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis10_06_19"); //We're really proud to have you in the rows of the Paladins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(800);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_FREUNDFEIND, LOG_SUCCESS);

	Mod_Hagen_KG_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis11 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis11_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis11_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis11_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis10))
	&& (Wld_GetDay()-3 > Mod_Hagen_KG_Day)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis11_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_00"); //I'm glad you're here.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_01"); //Recent events have shown how quickly the situation can slip out of our hands here too, when the situation in the Minental is so unstable.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_02"); //We would therefore definitely need someone to keep an eye on this on the ground.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_03"); //Unfortunately, I can't spare men and send them to the Minental, because the situation around Khorinis requires our full attention.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_04"); //What then is to be done?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_05"); //We must contact a camp in the Minental and ask them to cooperate more closely.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_06"); //Well, I guess you didn't think of the bandits or mercenaries.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_07"); //Um, of course not-- everything has its limits.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_08"); //Of course the king's faithful were meant. My hopes now rest on them.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_09"); //They are battle-tested and are right on the pass.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_10"); //But?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_11"); //Well, we've had nothing more than a trade relationship with you before.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_12"); //And also this one was only based on their good attitude towards Andre, whom they knew and respected in former times.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_13"); //What's the problem?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_14"); //Well... I sent her there shortly after the barrier fell.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_15"); //This was done on order, but I am not allowed to say anything more about this.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_16"); //No matter... they're certainly not very good with me.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_17"); //They now always invoke the fact that they have sworn their oath to the king and are bound only to him for loyalty and obedience.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_18"); //Due to the situation on the mainland, however, it is quite difficult at the moment to reach directives of the king, as you can imagine.
	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_19"); //So what needs to be done?
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_20"); //You are not only the Paladin and the city's captain, but you know your way around the Minental better than anyone else.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_21"); //Therefore you will go to them and bring this letter to Hymir.

	B_GiveInvItems	(self, hero, ItWr_HagenForHymir, 1);

	AI_Output(hero, self, "Info_Mod_Hagen_AndreVermaechtnis11_15_22"); //All right, I'm on my way.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_23"); //Wait! If he does not respond, you must use this spell roll in their camp.

	B_GiveInvItems	(self, hero, ItSc_SumHagen, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis11_06_24"); //Remember... Innos protect you.

	Log_CreateTopic	(TOPIC_MOD_MILIZ_TREUE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MILIZ_TREUE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MILIZ_TREUE, "Hagen would like me to give Hymir a message in which he asks for cooperation.");
};

INSTANCE Info_Mod_Hagen_AndreVermaechtnis12 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_AndreVermaechtnis12_Condition;
	information	= Info_Mod_Hagen_AndreVermaechtnis12_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_AndreVermaechtnis12_Condition()
{
	if (Mod_Kap4_KGOrks >= 2)
	&& (hero.guild == GIL_PAL)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_AndreVermaechtnis12_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_06_00"); //The situation on the pass should now become more secure.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_06_01"); //Enemies can no longer invade Khorinis undetected, which is largely due to your merit.
	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_06_02"); //Here's your pay.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Hagen_AndreVermaechtnis12_06_03"); //Innos keep you safe from all dangers.

	B_GivePlayerXP	(400);

	B_SetTopicStatus	(TOPIC_MOD_MILIZ_TREUE, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "RAT");
};

INSTANCE Info_Mod_Hagen_Siegelring (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Siegelring_Condition;
	information	= Info_Mod_Hagen_Siegelring_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got this ring right here.";
};

FUNC INT Info_Mod_Hagen_Siegelring_Condition()
{
	if (Npc_HasItems(hero, ItRi_Siegelring) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Siegelring_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Siegelring_15_00"); //I got this ring right here.

	B_GiveInvItems	(hero, self, ItRi_Siegelring, 1);

	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_01"); //Let me see... That... that's actually the stolen signet ring you brought me.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_02"); //Incredible! I never expected to see him again...
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_03"); //And what about the wicked man who robbed him?
	AI_Output(hero, self, "Info_Mod_Hagen_Siegelring_15_04"); //He's not going to rob anyone else.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_05"); //So that's how he got the lot, which gave him condition. Be that as it may, your merit for the city is not to be underestimated.
	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_06"); //Here's a thousand gold as a reward.

	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	AI_Output(self, hero, "Info_Mod_Hagen_Siegelring_06_07"); //Your shining example should be a model for all citizens of the kingdom. Innos be with you.

	B_GivePlayerXP	(2500);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_HEROLD_SIEGELRING, LOG_SUCCESS);
};

INSTANCE Info_Mod_Hagen_Asylanten4 (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Asylanten4_Condition;
	information	= Info_Mod_Hagen_Asylanten4_Info;
	permanent	= 1;
	important	= 0;
	description	= "What are you going to do now?";
};

FUNC INT Info_Mod_Hagen_Asylanten4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Asylanten3))
	&& (Mod_Hagen_Asylanten == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hagen_Asylanten4_Info()
{
	AI_Output(hero, self, "Info_Mod_Hagen_Asylanten4_15_00"); //What are you going to do now?
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten4_06_01"); //I think I should send messengers to the Minental to reach an amicable settlement with the New Camp.
	AI_Output(self, hero, "Info_Mod_Hagen_Asylanten4_06_02"); //I will also have to contact the guards before they commit stupidity there on behalf of the king.
};

INSTANCE Info_Mod_Hagen_Pickpocket (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_Pickpocket_Condition;
	information	= Info_Mod_Hagen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Hagen_Pickpocket_Condition()
{
	C_Beklauen	(178, ItMi_Gold, 102);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

	Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_BACK, Info_Mod_Hagen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hagen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hagen_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hagen_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hagen_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hagen_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hagen_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hagen_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hagen_EXIT (C_INFO)
{
	npc		= Mod_592_PAL_Hagen_NW;
	nr		= 1;
	condition	= Info_Mod_Hagen_EXIT_Condition;
	information	= Info_Mod_Hagen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hagen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_EXIT_06_00"); //For the King!

	AI_StopProcessInfos	(self);
};
