INSTANCE Info_Mod_LeibwacheHymir_Treue (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_Treue_Condition;
	information	= Info_Mod_LeibwacheHymir_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_Treue_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Treue_06_00"); //Stop! You can't go any further here.
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Treue_15_01"); //I have a message from Lord Hagen. Look.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Treue_06_02"); //As a matter of fact... with the royal seal. All right, you can go to Hymir.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_LeibwacheHymir_Hi (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_Hi_Condition;
	information	= Info_Mod_LeibwacheHymir_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_LeibwacheHymir_Treue))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Hi_06_00"); //Stop! No one will be allowed to enter Hymir without permission.
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Hi_15_01"); //Why did you do that? He doesn't look like he has much to do.
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Hi_06_02"); //It doesn't matter. I have the order not to let anyone pass, and you too will follow it, understood!
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Hi_15_03"); //That's all right, I'm going.

	AI_TurnAway	(hero, self);

	AI_GotoWP	(hero, "MC_THRON_1");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_LeibwacheHymir_DarfDurch (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_DarfDurch_Condition;
	information	= Info_Mod_LeibwacheHymir_DarfDurch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_DarfDurch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_DarfDurch_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_00"); //Stop!
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_DarfDurch_15_01"); //Ole sent me, he means Hymir wants to see me.
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_02"); //Wait here!

	AI_TurnToNpc	(self, Mod_1016_KGD_Hymir_MT);

	AI_Wait (self, 3);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_03"); //Good! You may go to him.
};

INSTANCE Info_Mod_LeibwacheHymir_EXIT (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_EXIT_Condition;
	information	= Info_Mod_LeibwacheHymir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_LeibwacheHymir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_LeibwacheHymir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
