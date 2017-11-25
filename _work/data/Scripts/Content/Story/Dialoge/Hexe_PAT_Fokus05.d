INSTANCE Info_Mod_Hexe_PAT_Fokus05_Hi (C_INFO)
{
	npc		= Mod_7796_HEX_Hexe_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexe_PAT_Fokus05_Hi_Condition;
	information	= Info_Mod_Hexe_PAT_Fokus05_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Hexe_PAT_Fokus05_Hi_Condition()
{
	if (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_17_00"); //Well, you pathetic wimp. Pitiful failure, you. Are you trying to mess with me?

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	Info_AddChoice	(Info_Mod_Hexe_PAT_Fokus05_Hi, "I'm gonna shove your disgraceful mouth, you old hag. Come here!", Info_Mod_Hexe_PAT_Fokus05_Hi_B);
	Info_AddChoice	(Info_Mod_Hexe_PAT_Fokus05_Hi, "Calm down, good woman. I just want to get this focus here.", Info_Mod_Hexe_PAT_Fokus05_Hi_A);
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Hexe_PAT_Fokus05_Hi_B_15_00"); //I'm gonna shove your disgraceful mouth, you old hag. Come here!
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_B_17_01"); //You can have that, big mouth!

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_KILL, 0);

	Npc_SetRefuseTalk	(self, 120);
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Hexe_PAT_Fokus05_Hi_A_15_00"); //Calm down, good woman. I just want to get this focus here.
	AI_Output(self, hero, "Info_Mod_Hexe_PAT_Fokus05_Hi_A_17_01"); //Over my dead body.

	Info_ClearChoices	(Info_Mod_Hexe_PAT_Fokus05_Hi);

	AI_StopProcessInfos	(self);

	self.guild = GIL_STRF;
	Npc_SetTrueGuild	(self, GIL_STRF);

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "I won't let a bitch like that provoke me. Reasonable as I am.");

	Mod_PAT_Focus_05 = 1;
};

INSTANCE Info_Mod_Hexe_PAT_Fokus05_EXIT (C_INFO)
{
	npc		= Mod_7796_HEX_Hexe_PAT;
	nr		= 1;
	condition	= Info_Mod_Hexe_PAT_Fokus05_EXIT_Condition;
	information	= Info_Mod_Hexe_PAT_Fokus05_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hexe_PAT_Fokus05_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hexe_PAT_Fokus05_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
