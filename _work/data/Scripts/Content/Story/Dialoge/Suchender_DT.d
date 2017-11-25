INSTANCE Info_Mod_Suchender_DT_Hi (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Hi_Condition;
	information	= Info_Mod_Suchender_DT_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Heh. Caught him again.";
};

FUNC INT Info_Mod_Suchender_DT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Suchender_DT_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_00"); //Heh. Caught him again. Now I know what your home is. You won't get away from me this time!
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_01"); //Heh. You again! I'm not gonna spare you this time!
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_02"); //Let's slow down. What is it that drives you crazy?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_03"); //I am the servant of my Lord, Khorgor the Divine.
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Hi_15_04"); //What's so divine about him?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Hi_10_05"); //My lord will be master of chaos when the keepers of balance, the water magicians and the forest people, are destroyed.
};

INSTANCE Info_Mod_Suchender_DT_Option01 (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Option01_Condition;
	information	= Info_Mod_Suchender_DT_Option01_Info;
	permanent	= 0;
	important	= 0;
	description	= "I see. Say, could I join your club?";
};

FUNC INT Info_Mod_Suchender_DT_Option01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_DT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_DT_Option01_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option01_15_00"); //I see. Say, could I join your club?
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option01_10_01"); //You? I don't know....
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option01_15_02"); //Why not? I don't agree with what the others are doing for a long time.
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option01_10_03"); //That's up to the master. I'll ask him. Wait here.

	AI_GotoWP	(self, "DT_037");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Suchender_DT_Option02 (C_INFO)
{
	npc		= Mod_7543_DMT_Suchender_DT;
	nr		= 1;
	condition	= Info_Mod_Suchender_DT_Option02_Condition;
	information	= Info_Mod_Suchender_DT_Option02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Aha! That's why you're after us and the druids.";
};

FUNC INT Info_Mod_Suchender_DT_Option02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Suchender_DT_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Suchender_DT_Option02_Info()
{
	AI_Output(hero, self, "Info_Mod_Suchender_DT_Option02_15_00"); //Aha! That's why you're after us and the druids.
	AI_Output(self, hero, "Info_Mod_Suchender_DT_Option02_10_01"); //You get the idea. Now die!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
