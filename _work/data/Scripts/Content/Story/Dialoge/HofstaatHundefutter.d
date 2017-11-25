INSTANCE Info_Mod_HofstaatHundefutter_Hi (C_INFO)
{
	npc		= Mod_7334_HS_Typ_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHundefutter_Hi_Condition;
	information	= Info_Mod_HofstaatHundefutter_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej!";
};

FUNC INT Info_Mod_HofstaatHundefutter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatHundefutter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_00"); //Hej!
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_01"); //Wiek. Co to jest ten gówno?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_02"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_03"); //Czy nie widzisz, ze pracuje? Stajesz sie na nerwy!
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_04"); //Ostatnio miales dosc dobry czas, czyz nie?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_05"); //Ks. zadowolony Hu? aaaaaaa wieku Wreszcie szef!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7335_HS_Typ_REL, "REL_243");
};
