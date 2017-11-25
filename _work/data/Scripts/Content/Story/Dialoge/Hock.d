INSTANCE Info_Mod_Hock_HaradLehrling (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_HaradLehrling_Condition;
	information	= Info_Mod_Hock_HaradLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hock_HaradLehrling_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torlof_HaradLehrling3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hock_HaradLehrling_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Hock_NahkampfJG (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_NahkampfJG_Condition;
	information	= Info_Mod_Hock_NahkampfJG_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Czy jestes Hockiem?";
};

FUNC INT Info_Mod_Hock_NahkampfJG_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cord_NW_NahkampfJG))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hock_NahkampfJG_Info()
{
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_00"); //Witaj! Czy jestes Hockiem?
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_01"); //Oczywiscie jestem. Nie moge byc widoczny?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_02"); //Instrukcja od linki. Chce, zebyscie udali sie do doliny Minentala i zglosili sie do obozu Ranger.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_03"); //Uh-huh. A jak moge to stwierdzic?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_04"); //Czy byles w Minental?
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_05"); //Uzywany do przebywania z Lee w obozie najemników. Byc jednak chwile.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_06"); //Sprawdz to. Wchodzac w doline, nalezy trzymac sie prawej strony, zawsze wzdluz gór w kierunku kopalni Alte.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_07"); //W pewnym momencie zobaczysz przejscie i troche dalej na drewnianej straznicy.
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_08"); //Jest tam obóz Ranger. Przy wejsciu znajduje sie Torgan. Powiedz mu, ze jestes nowym wojownikiem.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_09"); //Czy wiec jestem?
	AI_Output(hero, self, "Info_Mod_Hock_NahkampfJG_15_10"); //Oczywiscie, bedziesz sie dobrze bawic.
	AI_Output(self, hero, "Info_Mod_Hock_NahkampfJG_34_11"); //Cóz, mam nadzieje, ze....

	B_LogEntry	(TOPIC_MOD_JG_NAHKAMPF, "Moglem wygrac Hock jako wojownik. W tym celu Cyrco musi wyslac jednego z mysliwych do rolnika Onar.");

	B_StartOtherRoutine	(self, "WEG");
};

INSTANCE Info_Mod_Hock_EXIT (C_INFO)
{
	npc		= Mod_1200_SLD_Soeldner_NW;
	nr		= 1;
	condition	= Info_Mod_Hock_EXIT_Condition;
	information	= Info_Mod_Hock_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hock_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hock_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
