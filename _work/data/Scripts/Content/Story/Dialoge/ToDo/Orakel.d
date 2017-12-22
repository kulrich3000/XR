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
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_00"); //Oczekiwalem Ciebie! Szukasz sposobu na skupienie uwagi.
	AI_Output(hero, self, "Info_Mod_Orakel_Nagon_15_01"); //Skad wiesz.....?
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_02"); //Jestem Oracle. Swoja wiedze zdobylem od samego Innosa.
	AI_Output(hero, self, "Info_Mod_Orakel_Nagon_15_03"); //Jak wiec teraz skupic sie na tym zagadnieniu?
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_04"); //Musicie miec piec cech: odwage, spryt, rozum, wiare i uczciwosc.
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_05"); //Dla kazdego z Foki musisz uzyc jednej z tych funkcji, co jest jedynym sposobem, aby uzyskac je wszystkie.
	AI_Output(self, hero, "Info_Mod_Orakel_Nagon_07_06"); //Teraz wykonaj swoja prace!

	B_LogEntry	(TOPIC_MOD_FM_FOKI, "Oracle powiedzial, ze potrzebuje pieciu cech: odwagi, spryt, rozumu, wiary i uczciwosci.");

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
