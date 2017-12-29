INSTANCE Info_Mod_SNOV_11_Leader (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Leader_Condition;
	information	= Info_Mod_SNOV_11_Leader_Info;
	permanent	= 1;
	important	= 0;
	description	= "Who's in charge here?";
};

FUNC INT Info_Mod_SNOV_11_Leader_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Leader_Info()
{
	B_Say	(hero, self, "$AMBISNOV01");

	AI_Output(self, hero, "Info_Mod_SNOV_11_Leader_11_00"); //I don't really know. Ask somebody else.
};

INSTANCE Info_Mod_SNOV_11_Beliarkloster (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Beliarkloster_Condition;
	information	= Info_Mod_SNOV_11_Beliarkloster_Info;
	permanent	= 1;
	important	= 0;
	description	= "Is there anywhere important here where I should go?";
};

FUNC INT Info_Mod_SNOV_11_Beliarkloster_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Beliarkloster_Info()
{
	B_Say	(hero, self, "$AMBISNOV03");

	if (Mod_BibEntdeckt)
	{
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_00"); //You found the library, didn't you? You probably know your way around here better than I do.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_01"); //The church in the middle of the square. You should appear there regularly if you don't want to be suspicious.
		AI_Output(self, hero, "Info_Mod_SNOV_11_Beliarkloster_11_02"); //Behind it lies the library, hidden somewhere in the labyrinth, which nobody has seen for years, because nobody can find it through the maze.
	};
};

INSTANCE Info_Mod_SNOV_11_Interessantes (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Interessantes_Condition;
	information	= Info_Mod_SNOV_11_Interessantes_Info;
	permanent	= 1;
	important	= 0;
	description	= "Has anything interesting happened lately?";
};

FUNC INT Info_Mod_SNOV_11_Interessantes_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_Interessantes_Info()
{
	B_Say	(hero, self, "$AMBISNOV04");

	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_00"); //All these guys from the old warehouse haven't been here long.
	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_01"); //They were very strange when Xardas brought them in, they didn't know their own name and so on.
	AI_Output(self, hero, "Info_Mod_SNOV_11_Interessantes_11_02"); //He's probably brainwashed them pretty good.
};

INSTANCE Info_Mod_SNOV_11_Pickpocket (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_Pickpocket_Condition;
	information	= Info_Mod_SNOV_11_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_SNOV_11_Pickpocket_Condition()
{
	C_Beklauen	(60 + r_max(30), ItMi_Gold, 20 + r_max(10));
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);

	Info_AddChoice	(Info_Mod_SNOV_11_Pickpocket, DIALOG_BACK, Info_Mod_SNOV_11_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SNOV_11_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SNOV_11_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);
};

FUNC VOID Info_Mod_SNOV_11_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SNOV_11_Pickpocket);
};

INSTANCE Info_Mod_SNOV_11_EXIT (C_INFO)
{
	nr		= 1;
	condition	= Info_Mod_SNOV_11_EXIT_Condition;
	information	= Info_Mod_SNOV_11_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SNOV_11_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SNOV_11_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_SNOV_11 (var c_NPC slf)
{
	Info_Mod_SNOV_11_Leader.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Beliarkloster.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Interessantes.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_Pickpocket.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_SNOV_11_EXIT.npc	= Hlp_GetInstanceID(slf);
};
