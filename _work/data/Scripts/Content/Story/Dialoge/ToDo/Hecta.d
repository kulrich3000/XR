INSTANCE Info_Mod_Hecta_Hi (C_INFO)
{
	npc		= Mod_1972_GRD_Hecta_MT;
	nr		= 1;
	condition	= Info_Mod_Hecta_Hi_Condition;
	information	= Info_Mod_Hecta_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hecta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hecta_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_03_00"); //Cóz, spójrz, kto jest tutaj.
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_15_01"); //l--
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_03_02"); //Och, nigdy nie przeszkadza. Wlasnie wyszedles z Nowego Obozu, huh?

	Info_ClearChoices	(Info_Mod_Hecta_Hi);

	Info_AddChoice	(Info_Mod_Hecta_Hi, ".... nie, tak naprawde nie.", Info_Mod_Hecta_Hi_B);
	Info_AddChoice	(Info_Mod_Hecta_Hi, "To prawda.", Info_Mod_Hecta_Hi_A);
};

FUNC VOID Info_Mod_Hecta_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_B_15_00"); //.... nie, tak naprawde nie.
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_B_03_01"); //W imie Starego Obozu, daj mi wszystkie zloto i kosztownosci.
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_B_15_02"); //Chcesz to sobie wyobrazic, czy nie?
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_B_03_03"); //Jest Twoja szansa.

	Info_ClearChoices	(Info_Mod_Hecta_Hi);
};

FUNC VOID Info_Mod_Hecta_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Hecta_Hi_A_15_00"); //To prawda.
	AI_Output(self, hero, "Info_Mod_Hecta_Hi_A_03_01"); //Wtedy przepraszam. Teraz umrzec.

	Info_ClearChoices	(Info_Mod_Hecta_Hi);
};

INSTANCE Info_Mod_Hecta_EXIT (C_INFO)
{
	npc		= Mod_1972_GRD_Hecta_MT;
	nr		= 1;
	condition	= Info_Mod_Hecta_EXIT_Condition;
	information	= Info_Mod_Hecta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hecta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hecta_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
	B_Attack	(Mod_1973_GRD_Achil_MT, hero, AR_Kill, 0);
};
