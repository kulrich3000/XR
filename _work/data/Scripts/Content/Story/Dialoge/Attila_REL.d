INSTANCE Info_Mod_Attila_REL_Hi (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Hi_Condition;
	information	= Info_Mod_Attila_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_00"); //It seems that the children of simplicity are just filling their warehouse with supplies.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_01"); //They always carry boxes and sacks filled with food and drink into the building from morning to night.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_02"); //There are no windows there.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_03"); //Two guards guard the whole process, which also always lock the building in the evening.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_04"); //One of them then stops the night over guard at the front door.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Hi_09_05"); //That's all I heard.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Attila_REL_Glorie (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie_Condition;
	information	= Info_Mod_Attila_REL_Glorie_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_00"); //Greetings, father of learning.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_01"); //You here? Aren't you supposed to make sure the scholar doesn't show up?

	AI_PlayAni	(hero, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_02"); //Well, I couldn't get him involved in a conversation.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_03"); //I had to resort to other means.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_04"); //You didn't see him....
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_05"); //No, no... only some targeted litters with lazy fruit, followed by a short chase with him and his bodyguard.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_06"); //He is now allowed to keep the house in his soiled clothes.
	AI_Output(hero, self, "Info_Mod_Attila_REL_Glorie_15_07"); //Rotten fruit? That's not usually your way.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_08"); //A thief must always know how to change... which reminds me to release Ramirez from his precarious situation.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_09"); //If we do it skillfully, we should even be able to put the dress back before the theft is noticed.
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie_09_10"); //Come on!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOSCHNEIDER");
};

INSTANCE Info_Mod_Attila_REL_Glorie2 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie2_Condition;
	information	= Info_Mod_Attila_REL_Glorie2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie))
	&& (Npc_GetDistToWP(self, "REL_CITY_231") < 500)
	&& (Npc_HasItems(hero, ItAr_GelehrterNeu) == 1)
	&& (Npc_HasItems(hero, ItAr_Bart) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie2_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie2_09_00"); //So, may I ask the gentleman for his clothes?

	B_GiveInvItems	(hero, self, ItAr_GelehrterNeu, 1);

	Npc_RemoveInvItems (hero, ItAr_Bart, 1);

	AI_EquipBestArmor (hero);

	AI_SetWalkmode (self, NPC_SNEAK);

	AI_GotoWP (self, "REL_CITY_232");

	AI_GotoNpc (self, hero);

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_Glorie3 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie3_Condition;
	information	= Info_Mod_Attila_REL_Glorie3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Attila_REL_Glorie2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie3_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie3_09_00"); //Now, let's get back to camp.

	AI_StopProcessInfos (self);

	B_StartOtherRoutine	(self, "INHAUS");
	B_StartOtherRoutine	(Mod_7704_OUT_Jesper_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7705_OUT_Cassia_REL, "INHAUS");
	B_StartOtherRoutine	(Mod_7708_OUT_Ramirez_REL, "INHAUS");
};

INSTANCE Info_Mod_Attila_REL_Glorie4 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie4_Condition;
	information	= Info_Mod_Attila_REL_Glorie4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie4_Condition()
{
	if (Npc_GetDistToWP(hero, "REL_CITY_KANAL_027") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie4_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie4_09_00"); //Beliar is big... just look at this treasure.

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_Glorie5 (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_Glorie5_Condition;
	information	= Info_Mod_Attila_REL_Glorie5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Attila_REL_Glorie5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jesper_REL_Glorie4))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_01))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_02))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_03))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_04))
	&& (Npc_IsDead(Lesser_Skeleton_Diebe_05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Attila_REL_Glorie5_Info()
{
	AI_Output(self, hero, "Info_Mod_Attila_REL_Glorie5_09_00"); //Well, I think we've enraged Beliar enough for today. We'd better not plunder his treasure any more.

	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Attila_REL_EXIT (C_INFO)
{
	npc		= Mod_7709_OUT_Attila_REL;
	nr		= 1;
	condition	= Info_Mod_Attila_REL_EXIT_Condition;
	information	= Info_Mod_Attila_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Attila_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Attila_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
