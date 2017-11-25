INSTANCE Info_Mod_HofstaatEremit_Hi (C_INFO)
{
	npc		= Mod_7286_HS_Eremit_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatEremit_Hi_Condition;
	information	= Info_Mod_HofstaatEremit_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestes pustelnikiem?";
};

FUNC INT Info_Mod_HofstaatEremit_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatEremit_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_00"); //Jestes pustelnikiem?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_01"); //Zalezy od niego.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_02"); //Co na czym?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_03"); //Kt�ry pustelnik oznacza.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_04"); //Oczywiscie kr�lewski.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_05"); //Tak, jestem nim.
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_06"); //Czarodziej wyslal mnie.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_07"); //Kt�ry z nich?
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_08"); //Kr�lewski.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_09"); //Ach, c�z. I czego chce?
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_10"); //Powiedzial cos na temat doreczenia grzyb�w.
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_11"); //.... Co to grzyb? (zakl�cone)
	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_12"); //Kr�lewski goddamned jeden kr�lewski!
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_13"); //Ach, c�z. Nastepnie wez te kr�lewska torbe pelna kr�lewskich zarodnik�w grzyb�w i przyprowadz do maga!

	B_GiveInvItems	(self, hero, ItMi_FreudenspenderSporen, 1);

	AI_Output(hero, self, "Info_Mod_HofstaatEremit_Hi_15_14"); //Kt�ry z nich?
	AI_Output(self, hero, "Info_Mod_HofstaatEremit_Hi_08_15"); //Oczywiscie kr�lewski!

	B_LogEntry	(TOPIC_MOD_SEKTE_FREUDENSPENDER, "Hermit dal mi zarodniki grzyb�w. Powinienem ja zabrac do maga.");
};

INSTANCE Info_Mod_HofstaatEremit_EXIT (C_INFO)
{
	npc		= Mod_7286_HS_Eremit_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatEremit_EXIT_Condition;
	information	= Info_Mod_HofstaatEremit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatEremit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatEremit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
