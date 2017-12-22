INSTANCE Info_Mod_Meer_Hi (C_INFO)
{
	npc		= Mod_7330_Meer_HAL;
	nr		= 1;
	condition	= Info_Mod_Meer_Hi_Condition;
	information	= Info_Mod_Meer_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meer_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meer_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_00"); //Znalazles mnie.
	AI_Output(hero, self, "Info_Mod_Meer_Hi_15_01"); //Co znalazlem?
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_02"); //Zaprawde! Odpowiedz! To, co sprawi, ze król ponownie bedzie szczesliwy!
	AI_Output(hero, self, "Info_Mod_Meer_Hi_15_03"); //Jestes odpowiedzia?
	AI_Output(self, hero, "Info_Mod_Meer_Hi_18_04"); //Jestem odpowiedzia! JESTEM ODPOWIEDZIA!

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Znalazlem morze i to jest odpowiedz. Hm.... nie bardzo jeszcze odkrywcze.");
};
