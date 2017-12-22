INSTANCE Info_Mod_FeuerNovize_Hi (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_Hi_Condition;
	information	= Info_Mod_FeuerNovize_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co robisz?";
};

FUNC INT Info_Mod_FeuerNovize_Hi_Condition()
{
	if (WM_Boden_09 == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FeuerNovize_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FeuerNovize_Hi_15_00"); //Co robisz?
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_01"); //(ostra intonacja) Nie martw mi sie. Blogoslawienstwem dla mojego pana Innosa pracuje nad tym profanalnym srodowiskiem.
	AI_Output(hero, self, "Info_Mod_FeuerNovize_Hi_15_02"); //Ze swej strony jestem sluga Adanosa i tu zwracam sie z prosba o wstrzymanie tego procesu. Uderza w....
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_03"); //Nie chcesz mi powiedziec, sluga Inno, co on musi zrobic.
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Hi_13_04"); //Teraz wyjdzcie z tego miejsca i nie martwcie sie juz o moja swieta prace.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_FeuerNovize_Entweihung (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_Entweihung_Condition;
	information	= Info_Mod_FeuerNovize_Entweihung_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_FeuerNovize_Entweihung_Condition()
{
	if (WM_Boden_09 == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FeuerNovize_Entweihung_Info()
{
	AI_Output(self, hero, "Info_Mod_FeuerNovize_Entweihung_13_00"); //Co ty robisz? Zniszczysz moja prace. Czekaj, bede mial racje z Toba.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	B_Attack	(self, hero, AR_Kill, 0);
};

INSTANCE Info_Mod_FeuerNovize_EXIT (C_INFO)
{
	npc		= Mod_7193_NOV_Novize_NW;
	nr		= 1;
	condition	= Info_Mod_FeuerNovize_EXIT_Condition;
	information	= Info_Mod_FeuerNovize_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FeuerNovize_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FeuerNovize_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
