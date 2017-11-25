INSTANCE Info_Mod_Hock_JG_Sweetwater (C_INFO)
{
	npc		= Mod_7539_SLD_Hock_JG;
	nr		= 1;
	condition	= Info_Mod_Hock_JG_Sweetwater_Condition;
	information	= Info_Mod_Hock_JG_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you got something to tell me?";
};

FUNC INT Info_Mod_Hock_JG_Sweetwater_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_Sweetwater))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hock_JG_Sweetwater_Info()
{
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_00"); //I hear you got something to tell me?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_01"); //Jo. On the way over here, some guy ran into me. He was looking for you.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_02"); //And what did he want?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_03"); //He told you to come to Vatras. He'd have something for you.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_04"); //Uh-huh. Is there a hurry?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_05"); //He didn't say that.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_06"); //Good. Now show the bow brothers where the sword hangs.
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_07"); //All right, I will. You can believe that.

	Log_CreateTopic	(TOPIC_MOD_JG_SWEETWATER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_SWEETWATER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "That mercenary Hock tells me to come to Vatras. I'd better do it now.");
};

INSTANCE Info_Mod_Hock_JG_EXIT (C_INFO)
{
	npc		= Mod_7539_SLD_Hock_JG;
	nr		= 1;
	condition	= Info_Mod_Hock_JG_EXIT_Condition;
	information	= Info_Mod_Hock_JG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hock_JG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hock_JG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
