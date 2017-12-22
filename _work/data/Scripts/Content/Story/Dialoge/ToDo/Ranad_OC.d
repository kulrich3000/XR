INSTANCE Info_Mod_Ranad_OC_Hi (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_Hi_Condition;
	information	= Info_Mod_Ranad_OC_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ranad_OC_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_Hi_18_00"); //Be a friend. Going into big room way back in town.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_Hi_15_01"); //How do I get there?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_Hi_18_02"); //Become a friend.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDE");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ranad waited for me at the entrance of the Orc City and will lead me to Hosh Pak.");
};

INSTANCE Info_Mod_Ranad_OC_AtHoshPak (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_AtHoshPak_Condition;
	information	= Info_Mod_Ranad_OC_AtHoshPak_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_AtHoshPak_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ranad_OC_Hi))
	&& (Npc_GetDistToWP(self, "WP_OCC_35") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_OC_AtHoshPak_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_00"); //Like friend to goal. Ranad will be waiting here.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_AtHoshPak_15_01"); //Where should I go?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_02"); //His room ahead. Hosh Pak hold ritual there. Man must go and kill Hosh Pak.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_AtHoshPak_15_03"); //I'm on my way.
	AI_Output(self, hero, "Info_Mod_Ranad_OC_AtHoshPak_18_04"); //Good.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WAITING");

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Ranad can't get me any further. But the road is not that far.");
};

INSTANCE Info_Mod_Ranad_OC_HoshPakTot (C_INFO)
{
	npc		= Mod_10007_Orc_Ranad_OC;
	nr		= 1;
	condition	= Info_Mod_Ranad_OC_HoshPakTot_Condition;
	information	= Info_Mod_Ranad_OC_HoshPakTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Ranad_OC_HoshPakTot_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_HoshPak_OC_Hi))
	|| (Npc_IsDead(Mod_10005_Orc_HoshPak_OC)))
	&& (Npc_GetDistToWP(self, "WP_OCC_35") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ranad_OC_HoshPakTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_00"); //Friends have done well. Hosh Pak be dead.
	AI_Output(hero, self, "Info_Mod_Ranad_OC_HoshPakTot_15_01"); //What happens now?
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_02"); //Friend must look for residual focus and fulfill his task.
	AI_Output(self, hero, "Info_Mod_Ranad_OC_HoshPakTot_18_03"); //Ranad will stay here and try to gain alliance between orcs in town and us.

	AI_StopProcessInfos	(self);
};
