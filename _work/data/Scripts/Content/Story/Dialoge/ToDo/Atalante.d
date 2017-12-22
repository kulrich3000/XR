INSTANCE Info_Mod_Atalante_Hi (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Hi_Condition;
	information	= Info_Mod_Atalante_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Atalante_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Atalante_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_12_00"); //I'll tear you apart!
	AI_Output(hero, self, "Info_Mod_Atalante_Hi_15_01"); //Relax, I don't want to hurt you.
	AI_Output(self, hero, "Info_Mod_Atalante_Hi_12_02"); //(grunts threateningly)
};

INSTANCE Info_Mod_Atalante_Bosper (C_INFO)
{
	npc		= Mod_7678_OUT_Atalante_NW;
	nr		= 1;
	condition	= Info_Mod_Atalante_Bosper_Condition;
	information	= Info_Mod_Atalante_Bosper_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm supposed to bring you a message from Bosper.";
};

FUNC INT Info_Mod_Atalante_Bosper_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Atalante_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Atalante_Bosper_Info()
{
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_00"); //I'm supposed to bring you a message from Bosper.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_12_01"); //I don't want to hear about it! Send him here, and I'll take care of him.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_02"); //He wants to forgive you.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_12_03"); //Forgive me?! On his knees he shall crawl and beg forgiveness!
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_04"); //What did Bosper do to you?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_12_05"); //Stop calling that name! He only brought suffering to my life.
	AI_Output(hero, self, "Info_Mod_Atalante_Bosper_15_06"); //Don't you think you can talk about it?
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_12_07"); //No, I don't need to talk anymore. Anything I don't like will be killed and eaten.
	AI_Output(self, hero, "Info_Mod_Atalante_Bosper_12_08"); //And I don't like you, nosy person. You're on the lookout for things that are none of your business!

	B_LogEntry	(TOPIC_MOD_LEHRLING_BOSPER_FOUR, "I have not managed to talk reasonably with Atalante. She attacked me, and so I had no choice but to kill her. I was told to bring the sad news to Bosper.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};
