FUNC VOID Info_Mod_XardasThroughSkeletteStart()
{
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_00"); //Is that you, my friend?
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_01"); //If no, get lost!
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_02"); //If so, congratulations!
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_03"); //(with Xardas' voice) I had already given up the search, and only my faithful helpers here continue to work tirelessly.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_04"); //(with Xardas' voice) I just hope my skeletons didn't expose too many spilled sectarian spiders in their quest.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_05"); //(with Xardas' voice) Who knows what Cor Kalom did to them during his lifetime.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_06"); //(with Xardas' voice) But if you somehow survived the collapse, the few undead shouldn't be an obstacle for you.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_07"); //I left you a note with instructions up at the sleeper statue.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_08"); //(with Xardas' voice) There you will find everything you need to proceed.
	AI_Output(self, hero, "Info_Mod_XardasThroughSkeletteStart_14_09"); //(with Xardas' voice) Come back to me immediately!

	Mod_OT_XardasNachricht = 1;
};

INSTANCE Info_Mod_XardasSkelett_01_Hi (C_INFO)
{
	npc		= Monster_11055_Skelett_OT;
	nr		= 1;
	condition	= Info_Mod_XardasSkelett_01_Hi_Condition;
	information	= Info_Mod_XardasSkelett_01_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_XardasSkelett_01_Hi_Condition()
{
	if (Mod_OT_XardasNachricht == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_XardasSkelett_01_Hi_Info()
{
	Info_Mod_XardasThroughSkeletteStart();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_XardasSkelett_02_Hi (C_INFO)
{
	npc		= Monster_11056_Skelett_OT;
	nr		= 1;
	condition	= Info_Mod_XardasSkelett_02_Hi_Condition;
	information	= Info_Mod_XardasSkelett_02_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_XardasSkelett_02_Hi_Condition()
{
	if (Mod_OT_XardasNachricht == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_XardasSkelett_02_Hi_Info()
{
	Info_Mod_XardasThroughSkeletteStart();

	AI_StopProcessInfos	(self);
};
