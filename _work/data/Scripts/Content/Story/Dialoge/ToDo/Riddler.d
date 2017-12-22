INSTANCE Info_Mod_Riddler_Hi (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Hi_Condition;
	information	= Info_Mod_Riddler_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Riddler_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Felsenfestung))
	&& (riddle6 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_00"); //What's happening? I can't remember exactly.
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_01"); //Shadow, death and a tremendous power.
	AI_Output(self, hero, "Info_Mod_Riddler_Hi_09_02"); //Chromanin left me?

	B_SetTopicStatus	(TOPIC_MOD_THERIDDLE, LOG_SUCCESS);
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_34);
};

INSTANCE Info_Mod_Riddler_Chromanin (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Chromanin_Condition;
	information	= Info_Mod_Riddler_Chromanin_Info;
	permanent	= 0;
	important	= 0;
	description	= "What is chromanin?";
};

FUNC INT Info_Mod_Riddler_Chromanin_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Chromanin_Info()
{
	AI_Output(hero, self, "Info_Mod_Riddler_Chromanin_15_00"); //What is chromanin?
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_01"); //Chromanin is an unimaginable power. I received them a long time ago.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_02"); //It seems to me that I have this power from one of the gods. I also received a sword.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_03"); //It's very powerful. With this sword I won many fights.
	AI_Output(hero, self, "Info_Mod_Riddler_Chromanin_15_04"); //Then how could it happen that you die?
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_05"); //No, I wasn't dead at all. But the dark forces with which I got involved overpowered me and threw me into a magical world.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_06"); //There I was trapped and could only communicate with this world in a magical way.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_07"); //So I filled the magic books with hints that could lead to my liberation.
	AI_Output(self, hero, "Info_Mod_Riddler_Chromanin_09_08"); //However, the dark forces have tried to obscure their meaning in puzzles and have created many other obstacles...

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Riddler said something about a sword he received together with chromanin.");
};

INSTANCE Info_Mod_Riddler_Schwert (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_Schwert_Condition;
	information	= Info_Mod_Riddler_Schwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "What happened to the sword?";
};

FUNC INT Info_Mod_Riddler_Schwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Riddler_Chromanin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Riddler_Schwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Riddler_Schwert_15_00"); //What happened to the sword?
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_01"); //The dark magic manifested itself to dark beings who took it upon themselves. One of them took the sword away. It's probably still somewhere in the caves under the tower.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_02"); //Since you defied all obstacles in your quest, you proved yourself worthy. I want you to keep the sword when you find it.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_03"); //I wasn't the one it was meant for, and I will guard against powers I'm not up to in the future.
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_09_04"); //So I can't help you much with your quest, except for a part of my power.

	Info_ClearChoices	(Info_Mod_Riddler_Schwert);

	Info_AddChoice	(Info_Mod_Riddler_Schwert, "2 strength", Info_Mod_Riddler_Schwert_C);
	Info_AddChoice	(Info_Mod_Riddler_Schwert, "2 Skill", Info_Mod_Riddler_Schwert_B);
	Info_AddChoice	(Info_Mod_Riddler_Schwert, "3 Mana", Info_Mod_Riddler_Schwert_A);
};

FUNC VOID Info_Mod_Riddler_Schwert_D()
{
	AI_Output(self, hero, "Info_Mod_Riddler_Schwert_D_09_00"); //Good luck on your way. He will determine the destiny of men and gods.

	Info_ClearChoices	(Info_Mod_Riddler_Schwert);

	B_LogEntry	(TOPIC_MOD_ERSTEWAFFE, "Riddler suspects that the sword is still in the Fog Tower. One of the skeletons took it back then....");

	Wld_InsertNpc	(Skeleton_Anführer, "OW_FOGDUNGEON_42");
};

FUNC VOID Info_Mod_Riddler_Schwert_C()
{
	B_BlessAttribute	(hero, ATR_STRENGTH, 2);

	Info_Mod_Riddler_Schwert_D();
};

FUNC VOID Info_Mod_Riddler_Schwert_B()
{
	B_BlessAttribute	(hero, ATR_DEXTERITY, 2);

	Info_Mod_Riddler_Schwert_D();
};

FUNC VOID Info_Mod_Riddler_Schwert_A()
{
	B_BlessAttribute	(hero, ATR_MANA_MAX, 3);

	Info_Mod_Riddler_Schwert_D();
};

INSTANCE Info_Mod_Riddler_EXIT (C_INFO)
{
	npc		= BAU_989_Riddler;
	nr		= 1;
	condition	= Info_Mod_Riddler_EXIT_Condition;
	information	= Info_Mod_Riddler_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Riddler_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Riddler_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
