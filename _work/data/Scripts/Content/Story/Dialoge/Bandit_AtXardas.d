INSTANCE Info_Mod_Bandit_AtXardas_Hi (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Hi_Condition;
	information	= Info_Mod_Bandit_AtXardas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bandit_AtXardas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bandit_AtXardas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Hi_06_00"); //Hey! Since when do pussies get lost here?
};

INSTANCE Info_Mod_Bandit_AtXardas_Bereuen (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Bereuen_Condition;
	information	= Info_Mod_Bandit_AtXardas_Bereuen_Info;
	permanent	= 0;
	important	= 0;
	description	= "You're about to regret what you said.";
};

FUNC INT Info_Mod_Bandit_AtXardas_Bereuen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_Bereuen_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Bereuen_15_00"); //You're about to regret what you said.
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Bereuen_06_01"); //(laughs) I want to see that.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Bandit_AtXardas_WiesoHier (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_WiesoHier_Condition;
	information	= Info_Mod_Bandit_AtXardas_WiesoHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you here?";
};

FUNC INT Info_Mod_Bandit_AtXardas_WiesoHier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_WiesoHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_WiesoHier_15_00"); //Why are you here?
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_WiesoHier_06_01"); //Man, what kind of question is that? This is our camp. Tell me what you're looking for before I cut your head off.
};

INSTANCE Info_Mod_Bandit_AtXardas_Anschluss (C_INFO)
{
	npc		= Mod_7772_BDT_Bandit_NW;
	nr		= 1;
	condition	= Info_Mod_Bandit_AtXardas_Anschluss_Condition;
	information	= Info_Mod_Bandit_AtXardas_Anschluss_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can I join you guys?";
};

FUNC INT Info_Mod_Bandit_AtXardas_Anschluss_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bandit_AtXardas_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bandit_AtXardas_Anschluss_Info()
{
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Anschluss_15_00"); //Can I join you guys?
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Anschluss_06_01"); //No. We're not taking on diaper wearers here, understand?
	AI_Output(hero, self, "Info_Mod_Bandit_AtXardas_Anschluss_15_02"); //All right, I'll just go... again.
	AI_Output(self, hero, "Info_Mod_Bandit_AtXardas_Anschluss_06_03"); //It's too late for that, buddy. I'm gonna go see if you've got something valuable with you.

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild (self, GIL_STRF);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
