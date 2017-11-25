INSTANCE Info_Mod_Port_Hi (C_INFO)
{
	npc		= Mod_4027_NONE_Port_NW;
	nr		= 1;
	condition	= Info_Mod_Port_Hi_Condition;
	information	= Info_Mod_Port_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Port_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Port_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Port_Hi_01_01"); //(wstrzasajace) Nie wiem...... Czy moge panu ufac?
	AI_Output(hero, self, "Info_Mod_Port_Hi_15_02"); //Jestes Johannes Port?
	AI_Output(self, hero, "Info_Mod_Port_Hi_01_03"); //Byc moze...... cichy) byc moze....

	Moe_KnowsPort = 3;

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "Zabije cie!", Info_Mod_Port_Hi_B);
	Info_AddChoice	(Info_Mod_Port_Hi, "Szukam Ciebie. Kazdy szuka Ciebie.", Info_Mod_Port_Hi_A);
};

FUNC VOID Info_Mod_Port_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_B_15_00"); //Zabije cie!
	AI_Output(self, hero, "Info_Mod_Port_Hi_B_01_01"); //Nie, prosze nie!

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "Dziwie sie.", Info_Mod_Port_Hi_D);
	Info_AddChoice	(Info_Mod_Port_Hi, "Tak, tak. Stajesz na drodze mojego bogactwa.", Info_Mod_Port_Hi_C);
};

FUNC VOID Info_Mod_Port_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_D_15_00"); //Dziwie sie.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	Info_AddChoice	(Info_Mod_Port_Hi, "Szukam Ciebie. Kazdy szuka Ciebie.", Info_Mod_Port_Hi_A);
};

FUNC VOID Info_Mod_Port_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_C_15_00"); //Tak, tak. Stajesz na drodze mojego bogactwa.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 0);
};

FUNC VOID Info_Mod_Port_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_00"); //Szukam Ciebie. Kazdy szuka Ciebie.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_01"); //Zauwazylem to! Próbuja mnie zabic!
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_02"); //Kto? Dlaczego?
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_03"); //Nie wiem, kto. Znam jednak jego przyczyny. Powody, które sklonily go do zatopienia statku.
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_04"); //I jakie sa to powody?
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_05"); //Nie mówie ci tego. Dlaczego powinienem panu ufac? Ale.... Bylbym wdzieczny za cos jadalnego....
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_06"); //Przyjedz ze mna, zabiore Cie do znajomego, kupca. Dostaniesz tam cos do jedzenia.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_07"); //Czy jestem tam bezpieczny?
	AI_Output(hero, self, "Info_Mod_Port_Hi_A_15_08"); //Oczywiscie.
	AI_Output(self, hero, "Info_Mod_Port_Hi_A_01_09"); //Dobrze, ja pójde za Toba.

	Info_ClearChoices	(Info_Mod_Port_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOBRAHIM");

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_MOE_PORT, "Znalazlem Johannes Port. Teraz musze tylko zabrac go do Brahima....");
};

INSTANCE Info_Mod_Port_EXIT (C_INFO)
{
	npc		= Mod_4027_NONE_Port_NW;
	nr		= 1;
	condition	= Info_Mod_Port_EXIT_Condition;
	information	= Info_Mod_Port_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Port_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Port_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
