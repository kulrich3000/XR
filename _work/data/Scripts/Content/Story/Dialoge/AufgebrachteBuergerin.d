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
	AI_Output(self, hero, "Info_Mod_AufgebrachteBuergerin_Hi_19_00"); //Zaprawde! To on!
	AI_Output(hero, self, "Info_Mod_AufgebrachteBuergerin_Hi_15_01"); //Spokojny, spokojny! Kto jest kim?
	AI_Output(self, hero, "Info_Mod_AufgebrachteBuergerin_Hi_19_02"); //Jestes rzeznikiem! Morderca, zabójca!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");

	Log_CreateTopic	(TOPIC_MOD_MOE_TALK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MOE_TALK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MOE_TALK, "Jestem nieco zdezorientowany..... Na targowisku w Khorinis kobieta oskarzyla mnie o morderstwo. Dlaczego nagle? Powinienem porozmawiac o tym z Moe.");
};
