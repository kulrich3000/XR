INSTANCE Info_Mod_Orakel_Hi (C_INFO)
{
	npc		= Mod_1774_KDF_Orakel_PAT;
	nr		= 1;
	condition	= Info_Mod_Orakel_Hi_Condition;
	information	= Info_Mod_Orakel_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Orakel_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_Gizar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orakel_Hi_Info()
{
	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orakel_Nagon (C_INFO)
{
	npc		= Mod_1774_KDF_Orakel_PAT;
	nr		= 1;
	condition	= Info_Mod_Orakel_Nagon_Condition;
	information	= Info_Mod_Orakel_Nagon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Orakel_Nagon_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_Gizar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Orakel_Nagon_Info()
{
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_00"); //I've been expecting you! You're looking for a way to get the focus.
	AI_Output(hero, self, "Info_Mod_Orakel_Nagon_15_01"); //How do you know...?
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_02"); //I am the Oracle. I have acquired my knowledge from Innos himself.
	AI_Output(hero, self, "Info_Mod_Orakel_Nagon_15_03"); //So how do I get the focus now?
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_04"); //You must have five qualities: courage, cunning, reason, faith and honesty.
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_05"); //For each of the Foki you have to use one of these features, which is the only way to get them all.
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_06"); //Now go and do your job!

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "The oracle said that I need five qualities to gain the focus: courage, cunning, reason, faith and honesty.");

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Orakel_EXIT (C_INFO)
{
	npc		= Mod_1774_KDF_Orakel_PAT;
	nr		= 1;
	condition	= Info_Mod_Orakel_EXIT_Condition;
	information	= Info_Mod_Orakel_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Orakel_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Orakel_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
