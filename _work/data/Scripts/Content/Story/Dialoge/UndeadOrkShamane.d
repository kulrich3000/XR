INSTANCE Info_Mod_UndeadOrkShamane_Hi (C_INFO)
{
	npc		= Mod_10032_ORC_UndeadShamane_MT;
	nr		= 1;
	condition	= Info_Mod_UndeadOrkShamane_Hi_Condition;
	information	= Info_Mod_UndeadOrkShamane_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_UndeadOrkShamane_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_UndeadOrkShamane_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_Hi_18_00"); //Ksiazka o wielkiej magicznej mocy, czuje. Jestem zbyt ciekawy, aby wiedziec, jaka wiedze posiada.
	AI_Output(self, hero, "Info_Mod_UndeadOrkShamane_Hi_18_01"); //Co ty, który kiedys wyrzucil mojego starego pana? Wole siegnac z ksiazka do miejsca martwej ciszy, aby poswiecic sie jej bez zaklócen.

	B_LogEntry	(TOPIC_MOD_THERIDDLE, "Damn go. Ten nieumarly orkiestr, który po prostu ukradl mi ksiazke i zrzucil ja w 'miejsce martwej ciszy', cokolwiek by to nie oznaczalo.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	Mod_NL_UOS_Day = Wld_GetDay();
};
