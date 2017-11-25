INSTANCE Info_Mod_Dichter_NW_InKhorinis (C_INFO)
{
	npc		= Mod_7398_OUT_Dichter_NW;
	nr		= 1;
	condition	= Info_Mod_Dichter_NW_InKhorinis_Condition;
	information	= Info_Mod_Dichter_NW_InKhorinis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Dichter_NW_InKhorinis_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Dichter_NW_InKhorinis_Info()
{
	AI_Output(self, hero, "Info_Mod_Dichter_NW_InKhorinis_34_00"); //Widza panstwo, postapilem zgodnie z panstwa rada.
	AI_Output(self, hero, "Info_Mod_Dichter_NW_InKhorinis_34_01"); //To naprawde ekscytujace, wiele sie tutaj nauczylem.
	AI_Output(self, hero, "Info_Mod_Dichter_NW_InKhorinis_34_02"); //Potrafie nawet pokazac wam, jak przemykac sie na zwierzetach.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KHORINIS, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KHORINIS, "Poeta moze mi pokazac, jak cholowac sie na zwierzetach.");
};

INSTANCE Info_Mod_Dichter_NW_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_7398_OUT_Dichter_NW;
	nr		= 1;
	condition	= Info_Mod_Dichter_NW_Lernen_Schleichen_Condition;
	information	= Info_Mod_Dichter_NW_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("bijatyka", B_GetLearnCostTalent(hero, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Dichter_NW_Lernen_Schleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dichter_NW_InKhorinis))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Dichter_NW_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Dichter_NW_Lernen_Schleichen_15_00"); //Naucz mnie skradac sie.

	if (B_TeachThiefTalent (self, hero, NPC_TALENT_SNEAK))
	{
		AI_Output(self, hero, "Info_Mod_Dichter_NW_Lernen_Schleichen_34_01"); //Miekkie podeszwy daja Ci wieksza szanse na zblizenie sie do przeciwników, bez ich zauwazania.
	};
};
