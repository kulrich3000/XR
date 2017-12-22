INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Hi (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Hi_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wiec jestes odpowiedzialny za nadmierna populacje królików......";
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Hi_Condition()
{
	if (Mod_WM_UnheilFertig == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_15_00"); //Wiec jestes odpowiedzialny za nadmierna populacje królików......
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_24_01"); //Tak, jestem na misji magików demonów, aby przetestowac zaklecia szkodników.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_24_02"); //I co ty z tym robisz?

	B_GivePlayerXP	(250);

	Mod_WM_Plage_PartHase = 1;

	B_LogEntry	(TOPIC_MOD_ADANOS_PLAGE, "Ok, pochodzenie królików jest mi znane.");

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Hi, "Jesli sie nie zatrzymasz, zatrzasnac tylek.", Info_Mod_SchwarzerNovizeKaninchen_Hi_B);
	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Hi, "Nic nie ma nic. Informacje na ten temat to wszystko, czego potrzebowalem.", Info_Mod_SchwarzerNovizeKaninchen_Hi_A);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_B_15_00"); //Jesli sie nie zatrzymasz, zatrzasnac tylek.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Hi_B_24_01"); //Cóz, przyjdzcie tutaj.

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Hi_A_15_00"); //Nic nie ma nic. Informacje na ten temat to wszystko, czego potrzebowalem.

	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Hi);

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Umgehauen (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak wiec teraz wyjmij z tego piekla.";
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovizeKaninchen_Hi))
	&& (self.aivar[AIV_LastPlayerAR] == AR_NONE)
	&& (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_Info()
{
	AI_Output(hero, self, "Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_15_00"); //Tak wiec teraz wyjmij z tego piekla.
	AI_Output(self, hero, "Info_Mod_SchwarzerNovizeKaninchen_Umgehauen_04_01"); //Bedziesz tego zalowal.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_Pickpocket (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 350);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);

	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket, DIALOG_BACK, Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_SchwarzerNovizeKaninchen_Pickpocket);
};

INSTANCE Info_Mod_SchwarzerNovizeKaninchen_EXIT (C_INFO)
{
	npc		= Mod_7412_SNOV_Novize_REL;
	nr		= 1;
	condition	= Info_Mod_SchwarzerNovizeKaninchen_EXIT_Condition;
	information	= Info_Mod_SchwarzerNovizeKaninchen_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzerNovizeKaninchen_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerNovizeKaninchen_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
