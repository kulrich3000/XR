INSTANCE Info_Mod_HofstaatNewHundefutter_Hi (C_INFO)
{
	npc		= Mod_7335_HS_Typ_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatNewHundefutter_Hi_Condition;
	information	= Info_Mod_HofstaatNewHundefutter_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatNewHundefutter_Hi_Condition()
{
	if (Mod_SL_PartFluffy == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatNewHundefutter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_00"); //Tam idzie.... zdobienie gildii.... Prawdopodobnie nigdy nie bede tak chrupiacy i soczysty jak on....
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_01"); //Jestes jego nastepca?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_02"); //Tak, tak, tak..... ale nie bardzo dobry.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_03"); //Moze moge ci pomóc?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_04"); //Chcesz mi pomóc? Jestes kucharzem lub kims innym?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_05"); //Ubralem juz jedno lub dwa bydlo.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_06"); //Jestes rzeznikiem! Prosze mi pomóc! Prosze, prosze, prosze, prosze, prosze! Co chcesz, abym zrobil?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_07"); //Pierwsze calkowite wycofanie dawcy przyjemnosci. Sprawia, ze mieso jest twarde.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_08"); //Przyjemnosc dla dawcy..... tak, oczywiscie...... Poluzowac mieso.... oczywiscie.... To wlasnie robie! Dziekuje bardzo, panie Rzezniku!
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_09"); //Witamy.

	Mod_SL_PartFluffy_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);
};
