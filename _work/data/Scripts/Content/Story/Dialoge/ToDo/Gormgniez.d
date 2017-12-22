INSTANCE Info_Mod_Gormgniez_Hi (C_INFO)
{
	npc		= Gormgniez_11007_FM;
	nr		= 1;
	condition	= Info_Mod_Gormgniez_Hi_Condition;
	information	= Info_Mod_Gormgniez_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gormgniez_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gormgniez_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_00"); //What?! You here, man?! You'll never stop me and come to my ore.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_01"); //So it is you, you little child, who are responsible for this shameful activity. I will now put an end to this.
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_02"); //Give me a break.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_03"); //Why would I do that? Whether dragon or goblin, I will destroy such transgressors as you.
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_04"); //The dragons, you know? I can tell you a secret that can help you.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_05"); //What are you talking about?
	AI_Output(self, hero, "Info_Mod_Gormgniez_Hi_07_06"); //The great dragon speaks in his sleep.
	AI_Output(hero, self, "Info_Mod_Gormgniez_Hi_15_07"); //Yeah, but what's that? oh, damn it.

	B_LogEntry_More	(TOPIC_MOD_NL_DRACHEN, TOPIC_MOD_NL_CRAWLER, "Damn, he got away from me. What did he mean by 'The Great Dragon Speaks in his sleep?' 'Can Xardas tell me more about this?", "So this goblin is responsible for all the horror in the mine.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(Mod_1582_SFB_Bert_FM, "GERETTET");
	
	B_RemoveNpc	(Zombie_11015_FM);
	B_RemoveNpc	(Zombie_11016_FM);
	B_RemoveNpc	(Zombie_11017_FM);
	B_RemoveNpc	(Zombie_11018_FM);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};
