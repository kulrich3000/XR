INSTANCE Info_Mod_LeibwacheHymir_Treue (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_Treue_Condition;
	information	= Info_Mod_LeibwacheHymir_Treue_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_Treue_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Hagen_AndreVermaechtnis11))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_Treue_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Treue_06_00"); //Zatrzymaj sie! Tutaj nie mozna pójsc dalej.
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Treue_15_01"); //Mam wiadomosc od Pana Hagena. Spójrz.

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Treue_06_02"); //W rzeczywistosci.... z pieczecia królewska. W porzadku, mozna pójsc do Hymira.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_LeibwacheHymir_Hi (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_Hi_Condition;
	information	= Info_Mod_LeibwacheHymir_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	&& (!Npc_KnowsInfo(hero, Info_Mod_LeibwacheHymir_Treue))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Hi_06_00"); //Zatrzymaj sie! Nikt nie moze wejsc do Hymiru bez pozwolenia.
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Hi_15_01"); //Dlaczego tak sie stalo? Nie wyglada na to, ze ma wiele do zrobienia.
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_Hi_06_02"); //Nie ma to znaczenia. Mam rozkaz, aby nikogo nie pozwalac, a wy równiez bedziecie go przestrzegac, zrozumieli!
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_Hi_15_03"); //To prawda, ide.

	AI_TurnAway	(hero, self);

	AI_GotoWP	(hero, "MC_THRON_1");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_LeibwacheHymir_DarfDurch (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_DarfDurch_Condition;
	information	= Info_Mod_LeibwacheHymir_DarfDurch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_LeibwacheHymir_DarfDurch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_LeibwacheHymir_DarfDurch_Info()
{
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_00"); //Zatrzymaj sie!
	AI_Output(hero, self, "Info_Mod_LeibwacheHymir_DarfDurch_15_01"); //Ole mnie poslal, to znaczy Hymir chce mnie zobaczyc.
	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_02"); //Czekaj tutaj!

	AI_TurnToNpc	(self, Mod_1016_KGD_Hymir_MT);

	AI_Wait (self, 3);

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_LeibwacheHymir_DarfDurch_06_03"); //Dobrze! Mozesz sie do niego udac.
};

INSTANCE Info_Mod_LeibwacheHymir_EXIT (C_INFO)
{
	npc		= Mod_1014_KGD_Leibwache_MT;
	nr		= 1;
	condition	= Info_Mod_LeibwacheHymir_EXIT_Condition;
	information	= Info_Mod_LeibwacheHymir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_LeibwacheHymir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_LeibwacheHymir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
