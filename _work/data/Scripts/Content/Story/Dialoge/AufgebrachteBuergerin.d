INSTANCE Info_Mod_AufgebrachteBuergerin_Hi (C_INFO)
{
	npc		= Mod_7192_VLK_Buergerin_NW;
	nr		= 1;
	condition	= Info_Mod_AufgebrachteBuergerin_Hi_Condition;
	information	= Info_Mod_AufgebrachteBuergerin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_AufgebrachteBuergerin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_AufgebrachteBuergerin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_AufgebrachteBuergerin_Hi_19_00"); //Iih! That's him!
	AI_Output(hero, self, "Info_Mod_AufgebrachteBuergerin_Hi_15_01"); //Calm down, calm down! Who's what?
	AI_Output(self, hero, "Info_Mod_AufgebrachteBuergerin_Hi_19_02"); //You're the butcher! Murderer, murderer!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	Log_CreateTopic	(TOPIC_MOD_MOE_TALK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MOE_TALK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MOE_TALK, "I am slightly confused.... In the marketplace of Khorinis, a woman accused me of murder. Why all of a sudden? I should talk to Moe about this.");
};
