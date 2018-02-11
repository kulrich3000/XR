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
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_00"); //Tak, dotknal jej niemoralnie i grozil nam zlo, jesli mu powiedzielismy.
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_01"); //To zle, my nie mozemy nic z nim zrobic. Jesli tylko ktos móglby nam pomóc....
	AI_Output(hero, self, "Info_Mod_Malfama_AtHome_15_02"); //Moze móglbym stanac u waszego boku.
	AI_Output(self, hero, "Info_Mod_Malfama_AtHome_43_03"); //Naprawde? Och, dziekuje bardzo. Nigdy wczesniej nie spotkalismy takiego czlowieka.

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

	AI_Output(self, hero, "Info_Mod_Malfama_Traenenkristall_43_00"); //(do Serry) Co zrobiles/as? Tak, oczywiscie krysztal. Chce, zebyscie wszyscy zalowali tego smierci!

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
