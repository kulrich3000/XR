INSTANCE Info_Mod_Malfama_AtHome (C_INFO)
{
	npc		= Mod_7560_OUT_Malfama_EIS;
	nr		= 1;
	condition	= Info_Mod_Malfama_AtHome_Condition;
	information	= Info_Mod_Malfama_AtHome_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malfama_AtHome_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Serra_AtHome))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malfama_AtHome_Info()
{
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_00"); //Yes, he touched her immorally and threatened to do something bad to us if we told him.
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_01"); //It's bad, the two of us can't do anything about him. If only someone could help us...
	AI_Output(hero, self, "Info_Mod_Malfama_AtHome_15_02"); //Maybe I could stand by your side.
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_03"); //Really? Ohh, thank you very much. Never before have we met such a kind and helpful man.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Malfama_Traenenkristall (C_INFO)
{
	npc		= Mod_7560_OUT_Malfama_EIS;
	nr		= 1;
	condition	= Info_Mod_Malfama_Traenenkristall_Condition;
	information	= Info_Mod_Malfama_Traenenkristall_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Malfama_Traenenkristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Knatus_Traenenkristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Malfama_Traenenkristall_Info()
{
	AI_TurnToNpc	(self, Mod_7559_OUT_Serra_EIS);

	AI_Output(self, hero, "Info_Mod_Malfama_Traenenkristall_43_00"); //(to Serra) What have you done? Yes, of course the crystal. I want you all to regret that with death!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Malfama_EXIT (C_INFO)
{
	npc		= Mod_7560_OUT_Malfama_EIS;
	nr		= 1;
	condition	= Info_Mod_Malfama_EXIT_Condition;
	information	= Info_Mod_Malfama_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Malfama_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Malfama_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
