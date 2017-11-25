INSTANCE Info_Mod_Richard_Hi (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_Hi_Condition;
	information	= Info_Mod_Richard_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Richard_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_00"); //Kim jest ty i dlaczego zabijasz moich przyjaciól?
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_01"); //Twój przyjaciel Cirio popelnil blad widzac mnie jako jedzenie, a teraz HE jest pokarmem dla robaków, czyz nie smiesznie?
	AI_Output(self, hero, "Info_Mod_Richard_Hi_12_02"); //Cirio nie jest wielka strata, wykonal swoja prace, a teraz, gdy zabiles wszystkich moich przyjaciól, wiecej kobiety pozostaje dla mnie.
	AI_Output(hero, self, "Info_Mod_Richard_Hi_15_03"); //Chcialem po prostu odciac glowe i powiesic ja na scianie, wiec zacznijmy.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TRANSFORM");
};

INSTANCE Info_Mod_Richard_EXIT (C_INFO)
{
	npc		= Mod_7409_OUT_Richard_EIS;
	nr		= 1;
	condition	= Info_Mod_Richard_EXIT_Condition;
	information	= Info_Mod_Richard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Richard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Richard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
