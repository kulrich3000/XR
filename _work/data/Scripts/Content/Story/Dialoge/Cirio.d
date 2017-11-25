INSTANCE Info_Mod_Cirio_Hi (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_Hi_Condition;
	information	= Info_Mod_Cirio_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cirio_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_00"); //Hey, stranger, what brings you to Relendel?
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_01"); //Why do you want to know?
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_02"); //Well, I have a little rat problem, and you look like you can handle it.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_03"); //All right, what am I supposed to do for you?
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_04"); //A few days ago, when I went into town to buy food, a bunch of rats spread out in my house.
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_05"); //Those damn creatures are eating up my whole house, and there's just too many of them for me alone.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_06"); //I think I can handle some rats.
	AI_Output(self, hero, "Info_Mod_Cirio_Hi_09_07"); //Thank you, stranger, I'll show you to my house.
	AI_Output(hero, self, "Info_Mod_Cirio_Hi_15_08"); //All right, let's go!

	Log_CreateTopic	(TOPIC_MOD_RATTENQUEST, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_RATTENQUEST, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Cirio has a little rat problem in his house. He asked me to help him, and now he leads me there.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");
};

INSTANCE Info_Mod_Cirio_AtHaus (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_AtHaus_Condition;
	information	= Info_Mod_Cirio_AtHaus_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_AtHaus_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cirio_Hi))
	&& (Npc_GetDistToWP(hero, "REL_SURFACE_085") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cirio_AtHaus_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_AtHaus_09_00"); //Well, here we are. You said you thought you could handle them on your own. I'll keep my back so long, not that there's more of those things coming.
	AI_Output(hero, self, "Info_Mod_Cirio_AtHaus_15_01"); //All right, but I'm not doing this for free.
	AI_Output(self, hero, "Info_Mod_Cirio_AtHaus_09_02"); //Well, I don't have much gold left, but if you kill the rats for me, you get 200 gold out of my vault. Here's 20 gold already.

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	AI_Output(hero, self, "Info_Mod_Cirio_AtHaus_15_03"); //200 gold sounds good, your rat problem is history.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "Cirio took me to his house, and I'm going to take care of the rats.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAIT");

	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
	Wld_InsertNpc	(Giant_Rat_Cirio, "REL_SURFACE_085");
};

INSTANCE Info_Mod_Cirio_RattenErledigt (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_RattenErledigt_Condition;
	information	= Info_Mod_Cirio_RattenErledigt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cirio_RattenErledigt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cirio_AtHaus))
	&& (Npc_IsDead(Giant_Rat_Cirio))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cirio_RattenErledigt_Info()
{
	AI_Output(self, hero, "Info_Mod_Cirio_RattenErledigt_09_00"); //So you've killed them all, considerable. It's just a pity they're now falling behind you.
	AI_Output(hero, self, "Info_Mod_Cirio_RattenErledigt_15_01"); //What are you doing, you said you had my back.
	AI_Output(self, hero, "Info_Mod_Cirio_RattenErledigt_09_02"); //I said I'd watch your back. I had hoped that my friends would be able to cope with you on their own, but it doesn't matter now, because to me you're just food.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");

	Wld_InsertNpc	(Mod_7406_OUT_Mann_REL, "REL_SURFACE_105");
	B_KillNpc	(Mod_7406_OUT_Mann_REL);

	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_098");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_098");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_099");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_100");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_102");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_100");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_102");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
	Wld_InsertNpc	(Giant_Rat, "REL_SURFACE_103");
};

INSTANCE Info_Mod_Cirio_EXIT (C_INFO)
{
	npc		= Mod_7405_OUT_Cirio_REL;
	nr		= 1;
	condition	= Info_Mod_Cirio_EXIT_Condition;
	information	= Info_Mod_Cirio_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cirio_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cirio_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
