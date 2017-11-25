INSTANCE Info_Mod_Hock_JG_Sweetwater (C_INFO)
{
	npc		= Mod_7539_SLD_Hock_JG;
	nr		= 1;
	condition	= Info_Mod_Hock_JG_Sweetwater_Condition;
	information	= Info_Mod_Hock_JG_Sweetwater_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze masz cos do powiedzenia?";
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
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_00"); //Slysze, ze masz cos do powiedzenia?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_01"); //Jo Jo. W drodze, po której mnie wbiegl jakis facet. On cie szukal.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_02"); //I czego chcial?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_03"); //Kazal ci przyjechac do Vatras. Móglby miec cos dla ciebie.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_04"); //Uh-huh. Czy jest pospiech?
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_05"); //Nie powiedzial tego.
	AI_Output(hero, self, "Info_Mod_Hock_JG_Sweetwater_15_06"); //Dobre. Teraz pokaz braciom dziobów, gdzie zawieszony jest miecz.
	AI_Output(self, hero, "Info_Mod_Hock_JG_Sweetwater_34_07"); //Wlasciwie, bede. Mozna w to uwierzyc.

	Log_CreateTopic	(TOPIC_MOD_JG_SWEETWATER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_SWEETWATER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_SWEETWATER, "Ten najemnik Hock kaze mi przyjsc do Vatras. Lepiej bym to teraz zrobil.");
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
