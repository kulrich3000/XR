INSTANCE Info_Mod_Gelehrter_Hi (C_INFO)
{
	npc		= Mod_7712_OUT_Gelehrter_REL;
	nr		= 1;
	condition	= Info_Mod_Gelehrter_Hi_Condition;
	information	= Info_Mod_Gelehrter_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Gelehrter_Hi_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gelehrter_Hi_Info()
{
	var int rnd;
	rnd = r_max(2);

	if (rnd == 0)
	{
		AI_Output(self, hero, "Info_Mod_Gelehrter_Hi_10_00"); //How dare you speak to me, unworthy mob.
	}
	else if (rnd == 1)
	{
		AI_Output(self, hero, "Info_Mod_Gelehrter_Hi_10_01"); //Away with you, stinking ejection of ignorance.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Gelehrter_Hi_10_02"); //Buffoon! Shall my servant teach you what pain is?
	};

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Gelehrter_EXIT (C_INFO)
{
	npc		= Mod_7712_OUT_Gelehrter_REL;
	nr		= 1;
	condition	= Info_Mod_Gelehrter_EXIT_Condition;
	information	= Info_Mod_Gelehrter_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gelehrter_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gelehrter_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
