INSTANCE Info_Mod_Khorgor_Hi (C_INFO)
{
	npc		= Mod_7554_OUT_Khorgor_DT;
	nr		= 1;
	condition	= Info_Mod_Khorgor_Hi_Condition;
	information	= Info_Mod_Khorgor_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Khorgor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Khorgor_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_00"); //Step right up, warrior. I've been expecting you.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_01"); //You've come a long way. But this is where your path ends.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_02"); //I beg to differ. My way ends when you lie in the dust in front of me.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_03"); //What have you got against me?
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_04"); //You follow the wood folks and the water magicians. What for?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_05"); //You're in the way! They interfere with my plans.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_06"); //Which projects?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_07"); //I want to create chaos and control it.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_08"); //Poor lunatic. You've got the chaos in your head, at best.
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_09"); //How do you talk about me, you worm?
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_10"); //Worm, my ass. I'll soon be first-degree ranger. And you?
	AI_Output(self, hero, "Info_Mod_Khorgor_Hi_04_11"); //I am your death. Your quick death.
	AI_Output(hero, self, "Info_Mod_Khorgor_Hi_15_12"); //Come on, you bastard!

	AI_StopProcessInfos	(hero);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_LogEntry	(TOPIC_MOD_JG_DRACHENTAL, "I found Khorgor, and he jumped right at me. Now I'm finally putting an end to this.");
};
