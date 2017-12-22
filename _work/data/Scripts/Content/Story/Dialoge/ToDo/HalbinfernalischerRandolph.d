INSTANCE Info_Mod_HalbinfernalischerRandolph_Hi (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_Hi_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_Hi_Condition()
{
	if (Mod_Randolph_Started == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_00"); //Who do we have here?
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_Hi_15_01"); //Randolph, is that you?
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_02"); //Randolph? Are you talking about that miserable farmhand? No, he was once.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_03"); //Through the power of my new lord, more has grown out of him.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_04"); //A powerful tool that will help his Master to take the place he deserves in the not too distant future.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Hi_06_05"); //And for a good start, I and my demons will subdue this stretch of land here.
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_Kill (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_Kill_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_Kill_Info;
	permanent	= 0;
	important	= 0;
	description	= "Not if I can help it, you spawn of a demon.";
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_Kill_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_Kill_Info()
{
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_Kill_15_00"); //Not if I can help it, you spawn of a demon.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_Kill_06_01"); //Wuahahaha, you're in a hurry to die. Come here. I'll tear you apart.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_SecondChance (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_SecondChance_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_SecondChance_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_SecondChance_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Kill))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_SecondChance_Info()
{
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_SecondChance_06_00"); //You fool. You should have killed me when you had the chance. That's how you sealed your downfall.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_HalbinfernalischerRandolph_GoodOne (C_INFO)
{
	npc		= Mod_7174_DEM_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_HalbinfernalischerRandolph_GoodOne_Condition;
	information	= Info_Mod_HalbinfernalischerRandolph_GoodOne_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you sure that not a part of the good (... )";
};

FUNC INT Info_Mod_HalbinfernalischerRandolph_GoodOne_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HalbinfernalischerRandolph_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HalbinfernalischerRandolph_GoodOne_Info()
{
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_GoodOne_15_00"); //Are you sure there's not a part of good old Randolph still in you?
	AI_Output(hero, self, "Info_Mod_HalbinfernalischerRandolph_GoodOne_15_01"); //Remember who you are, the beautiful days in the court, the works of the good that you have done and not this one, the destruction.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_GoodOne_06_02"); //Be quiet, you stupid fool and get the hell out of here! This time I will spare you.
	AI_Output(self, hero, "Info_Mod_HalbinfernalischerRandolph_GoodOne_06_03"); //But the next time we meet, I'll cut you to shreds.

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Randolph now seems once and for all consumed by demonic powers. Maybe Xarda's advice... or I'll have to kill him.");

	AI_StopProcessInfos	(self);
};
