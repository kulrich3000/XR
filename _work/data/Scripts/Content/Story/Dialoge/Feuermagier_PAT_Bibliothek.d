INSTANCE Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest (C_INFO)
{
	npc		= Mod_1737_KDF_Feuermagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Condition;
	information	= Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co myslales o tym, ze wpadles w modlitwe do Innos o zmiane w jego kosciele, bratu?";
};

FUNC INT Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_15_00"); //Co myslales o tym, ze wpadles w modlitwe do Innos o zmiane w jego kosciele, bratu?
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_01"); //Co mówisz, bracie? Cóz, tak, Kosciól.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_02"); //Hmm, tak naprawde chcialem nadal zajmowac sie tym traktatem o magicznych dzialaniach wojennych, który tak dawno zajmowalem.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_03"); //Ale modlitwa w Kosciele z pewnoscia pomoze mi nabrac swiezego ducha, aby kontynuowac prace w sposób skoncentrowany.
	AI_Output(self, hero, "Info_Mod_Feuermagier_PAT_Bibliothek_MangelQuest_06_04"); //Ide tam natychmiast.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Wiec mysle, ze mialem wystarczajaco duzo uczniów Inno' s, aby zachecic ich do modlitwy i powinienem zatrzymac sie przy kosciele w Nagon.");
	};
};

INSTANCE Info_Mod_Feuermagier_PAT_Bibliothek_EXIT (C_INFO)
{
	npc		= Mod_1737_KDF_Feuermagier_PAT;
	nr		= 1;
	condition	= Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Condition;
	information	= Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Feuermagier_PAT_Bibliothek_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
