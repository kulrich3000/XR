INSTANCE Info_Mod_Gizar_Hi (C_INFO)
{
	npc		= Mod_1772_KDF_Gizar_PAT;
	nr		= 1;
	condition	= Info_Mod_Gizar_Hi_Condition;
	information	= Info_Mod_Gizar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gizar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gizar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gizar_Hi_10_00"); //I want you to see Nagon, brother. He's expecting you in the chapel.
	AI_Output(hero, self, "Info_Mod_Gizar_Hi_15_01"); //Who's the magician who just ran up here?
	AI_Output(self, hero, "Info_Mod_Gizar_Hi_10_02"); //That was Aaron. He's only recently stationed here.

	Npc_ClearAIQueue	(Mod_1771_KDF_Aaron_PAT);
	AI_StandUp	(Mod_1771_KDF_Aaron_PAT);
	B_StartOtherRoutine	(Mod_1771_KDF_Aaron_PAT, "TOT");
	AI_Teleport	(Mod_1771_KDF_Aaron_PAT, "TOT");

	B_LogEntry	(TOPIC_MOD_FM_VERRAT, "A magician named Aaron, who has only been in the monastery for a short time, ran after the troll attacked the tower. I should get to the bottom of this.");
};

INSTANCE Info_Mod_Gizar_EXIT (C_INFO)
{
	npc		= Mod_1772_KDF_Gizar_PAT;
	nr		= 1;
	condition	= Info_Mod_Gizar_EXIT_Condition;
	information	= Info_Mod_Gizar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gizar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gizar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
