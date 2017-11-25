INSTANCE Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest (C_INFO)
{
	npc		= Mod_1740_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Condition;
	information	= Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co myslales o zlozeniu rak na modlitwe w Kosciele Panskim?";
};

FUNC INT Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_15_00"); //Co myslales o zlozeniu rak na modlitwe w Kosciele Panskim?
	AI_Output(self, hero, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_06_01"); //Hmm, tak, modlitwa w kosciele. Dziekuje za przypomnienie mi, bratu. Moja ostatnia wizyta byla zbyt dluga.
	AI_Output(self, hero, "Info_Mod_Ordenspriester_PAT_Alchemist_MangelQuest_06_02"); //Potem z pewnoscia bede mógl kontynuowac prace spokojniejsza reka. Bede w drodze od razu.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Wiec mysle, ze mialem wystarczajaco duzo uczniów Inno' s, aby zachecic ich do modlitwy i powinienem zatrzymac sie przy kosciele w Nagon.");
	};
};

INSTANCE Info_Mod_Ordenspriester_PAT_Alchemist_EXIT (C_INFO)
{
	npc		= Mod_1740_KDF_Ordenspriester_PAT;
	nr		= 1;
	condition	= Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Condition;
	information	= Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ordenspriester_PAT_Alchemist_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
