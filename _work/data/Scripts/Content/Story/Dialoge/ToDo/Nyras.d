INSTANCE Info_Mod_Nyras_Hi (C_INFO)
{
	npc		= Mod_7770_PSINOV_Nyras_OGY;
	nr		= 1;
	condition	= Info_Mod_Nyras_Hi_Condition;
	information	= Info_Mod_Nyras_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Nyras_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Nyras_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_00"); //Jestes, bluznierca!
	AI_Output(hero, self, "Info_Mod_Nyras_Hi_15_01"); //Nyras! Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_02"); //Przygotuj niezbedne kroki, aby powitac powrót mojego mistrza w niezbyt odleglym czasie..... i pociagnac wszystkich poleglych sprzedawczyków do odpowiedzialnosci.
	AI_Output(hero, self, "Info_Mod_Nyras_Hi_15_03"); //Od czasu skupienia glowy nie wydaje sie, aby wrócila do zdrowia....
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_04"); //Wysmiewac sie, oszukiwac! Inspiruje mnie sila sypialni. Jest wiele innych lojalnych wobec niego.
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_05"); //Tak, wkrótce nasz Mistrz bedzie rzadzil ziemia tak, jak na to zasluguje (....). a ja bede po jego stronie.
	AI_Output(self, hero, "Info_Mod_Nyras_Hi_02_06"); //Nie zobaczysz tego jednak na zywo.... Smierc, niewierny glupiec!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};
