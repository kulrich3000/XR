INSTANCE Info_Mod_Leprechaun_Hi (C_INFO)
{
	npc		= Monster_11073_Leprechaun_AW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_Hi_Condition;
	information	= Info_Mod_Leprechaun_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Leprechaun_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_00"); //Straight into the trap.
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_02"); //The Master has decided that now is the time to take you to him.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_20_03"); //His power is now strong enough to take on you.

	Info_ClearChoices	(Info_Mod_Leprechaun_Hi);

	Info_AddChoice	(Info_Mod_Leprechaun_Hi, "Why me?", Info_Mod_Leprechaun_Hi_B);
	Info_AddChoice	(Info_Mod_Leprechaun_Hi, "Who is your master?", Info_Mod_Leprechaun_Hi_A);
};

FUNC VOID Info_Mod_Leprechaun_Hi_C()
{
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_C_20_00"); //I suppose that means Leprechaun is holding the wrong person captive.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_C_20_01"); //This news will not please his master.

	Info_ClearChoices	(Info_Mod_Leprechaun_Hi);

	Log_CreateTopic	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MAGISCHEMARKIERUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MAGISCHEMARKIERUNG, "Just arrived in Jharkendar, I was already captured by a mysterious figure. She claimed to be a servant of Xeres, but almost gratefully let me go when I pretended not to be the one she was looking for.");

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Leprechaun_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_00"); //Why me?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_01"); //You killed the master's favorite pet. He raged through his halls for days.

	if (hero.guild == GIL_MIL)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_02"); //Me?! I'm just a mercenary!
	}
	else if (hero.guild == GIL_PAL)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_03"); //Me?! I'm just a simple militia soldier!
	}
	else if (hero.guild == GIL_NOV)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_04"); //Me?! I'm just a simple water novice!
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_05"); //Me?! I'm just a simple black novice!
	}
	else if (hero.guild == GIL_VLK)
	{
		AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_06"); //Me?! I'm just a simple fire novice!
	};

	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_07"); //(hopefully) So you're not who they call the chosen one?
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_B_15_08"); //I've never heard of that before.
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_B_20_09"); //Well, what a thing. The master was sure that he would be the first to cross the portal and not one of the unimportant henchmen.

	Mod_Leprechaun_Choices += 1;

	if (Mod_Leprechaun_Choices == 2)
	{
		Info_Mod_Leprechaun_Hi_C();
	};
};

FUNC VOID Info_Mod_Leprechaun_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Leprechaun_Hi_A_15_00"); //Who is your master?
	AI_Output(self, hero, "Info_Mod_Leprechaun_Hi_A_20_01"); //Xeres is the Lord and Lord. Leprechaun's family has served him for over a hundred generations.

	Mod_Leprechaun_Choices += 1;

	if (Mod_Leprechaun_Choices == 2)
	{
		Info_Mod_Leprechaun_Hi_C();
	};
};

INSTANCE Info_Mod_Leprechaun_EXIT (C_INFO)
{
	npc		= Monster_11073_Leprechaun_AW;
	nr		= 1;
	condition	= Info_Mod_Leprechaun_EXIT_Condition;
	information	= Info_Mod_Leprechaun_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Leprechaun_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Leprechaun_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
