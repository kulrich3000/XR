INSTANCE Info_Mod_Hel_Hi (C_INFO)
{
	npc		= Mod_7299_OUT_Hel_NW;
	nr		= 1;
	condition	= Info_Mod_Hel_Hi_Condition;
	information	= Info_Mod_Hel_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hel_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hel_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hel_Hi_26_00"); //(slanting) Ahh, invaders and new slaves for my servants. I'll feed on your blood.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_Hel_GhuleFutsch (C_INFO)
{
	npc		= Mod_7299_OUT_Hel_NW;
	nr		= 1;
	condition	= Info_Mod_Hel_GhuleFutsch_Condition;
	information	= Info_Mod_Hel_GhuleFutsch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hel_GhuleFutsch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hel_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hel_GhuleFutsch_Info()
{
	AI_Output(self, hero, "Info_Mod_Hel_GhuleFutsch_26_00"); //Ahh, be damned.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KRYPTA");
	AI_Teleport	(self, "NW_CRYPT_IN_11");
};

INSTANCE Info_Mod_Hel_InKrypta (C_INFO)
{
	npc		= Mod_7299_OUT_Hel_NW;
	nr		= 1;
	condition	= Info_Mod_Hel_InKrypta_Condition;
	information	= Info_Mod_Hel_InKrypta_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hel_InKrypta_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gorn_Hel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hel_InKrypta_Info()
{
	AI_Output(self, hero, "Info_Mod_Hel_InKrypta_26_00"); //You're persistent. But all the more pleasure it will give me to dress with your guts the ceiling of my rooms.
	AI_Output(self, hero, "Info_Mod_Hel_InKrypta_26_01"); //(inviting) Inubis!

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_SetTopicStatus	(TOPIC_MOD_NL_GORN, LOG_SUCCESS);
};
