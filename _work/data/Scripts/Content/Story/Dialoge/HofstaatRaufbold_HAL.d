INSTANCE Info_Mod_HofstaatRaufbold_HAL_Hi (C_INFO)
{
	npc		= Mod_7329_HS_Raufbold_HAL;
	nr		= 1;
	condition	= Info_Mod_HofstaatRaufbold_HAL_Hi_Condition;
	information	= Info_Mod_HofstaatRaufbold_HAL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatRaufbold_HAL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatRaufbold_HAL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_00"); //Hu?
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_HAL_Hi_15_01"); //Rozmowa? Co Pan tutaj robi? Czy zazywales równiez lek na wyrocznie?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_02"); //Nie, wpadlem do rzeki..... Niedobór tlenu.
	AI_Output(hero, self, "Info_Mod_HofstaatRaufbold_HAL_Hi_15_03"); //O co to wszystko chodzi?
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_04"); //To jest próba! To musi byc REWELACJA! Wciaz jednak mamy przed soba próbe.
	AI_Output(self, hero, "Info_Mod_HofstaatRaufbold_HAL_Hi_13_05"); //Ostatni pojedynek miedzy nami! Zwyciezca otrzyma odpowiedz! Strata utonie w SCHAAAAAAAAAAAM! Przejdzmy teraz!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};
