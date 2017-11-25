INSTANCE Info_Mod_Falin_Hi (C_INFO)
{
	npc		= Mod_7475_SLD_Falin_MT;
	nr		= 1;
	condition	= Info_Mod_Falin_Hi_Condition;
	information	= Info_Mod_Falin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Kim jestes i co robisz tutaj?";
};

FUNC INT Info_Mod_Falin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Falin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_00"); //Witaj! Kim jestes i co robisz tutaj?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_01"); //Jestem Falinem i w drodze do starego klasztoru przemieniajacych sie magów.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_02"); //Po co wiec sie zwlekacie?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_03"); //Bylem ciekawy. Nie wiedzialem, ze jest tu obóz.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_04"); //To jest obóz Zwiedzajacych. Druid Cyrco jest liderem. Szukamy bojowników walczacych w meczu.
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_05"); //Uczciwie? To mi sie podoba. Zawsze ta sama rutyna z nami. Siedzac na strazy lub siedzac w jaskini.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_06"); //Wiecej dzialan. Wiec chcesz?
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_07"); //Musze zabrac ten pakiet do klasztoru w Ferco.
	AI_Output(hero, self, "Info_Mod_Falin_Hi_15_08"); //Wiesz cos wiesz? Przejme to zadanie. Idziesz do obozu. Powiedz straznikowi, ze jestes nowym facetem. On wysle Cie do Cyrco.
	AI_Output(self, hero, "Info_Mod_Falin_Hi_07_09"); //To byloby w tej chwili dobre. Oto pakiet.

	B_GiveInvItems	(self, hero, ItMi_PaketFalin, 1);

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Byc moze znalazlem juz najemnika, sprawdz wiec z Khorinisem. Oh, tak. A pakiet dla klasztoru przerobionych magów, który musze przekazac Ferco.....");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
};

INSTANCE Info_Mod_Falin_EXIT (C_INFO)
{
	npc		= Mod_7475_SLD_Falin_MT;
	nr		= 1;
	condition	= Info_Mod_Falin_EXIT_Condition;
	information	= Info_Mod_Falin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Falin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Falin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
