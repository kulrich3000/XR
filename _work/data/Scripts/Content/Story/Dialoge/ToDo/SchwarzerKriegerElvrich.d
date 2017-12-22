INSTANCE Info_Mod_SchwarzerKriegerElvrich_Hi (C_INFO)
{
	npc		= Mod_7403_SMK_SchwarzerKrieger_MT;
	nr		= 1;
	condition	= Info_Mod_SchwarzerKriegerElvrich_Hi_Condition;
	information	= Info_Mod_SchwarzerKriegerElvrich_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_SchwarzerKriegerElvrich_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerKriegerElvrich_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_00"); //Hej, czy zdarzylo Ci sie zobaczyc kopacza biegnacego gdzies w poblizu?
	AI_Output(hero, self, "Info_Mod_SchwarzerKriegerElvrich_Hi_15_01"); //Nie wiem o tym.
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_02"); //Damn, Kurgan bedzie w klopotach, jesli nie odzyskam tego miejskiego tlumu.
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_03"); //Nie powinienem byl tak otwarcie rojac sie o blotniaku i karczmie.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "Wojownik demoniczny szuka uciekajacego kopacza, który móglby przyjechac z miasta. Narzekl, ze przy zbyt wielu debauzjach o danym obozie i bzu bagnistym, dal mu zbyt wiele glupich mysli.");

	Mod_WM_ElvrichImSumpf = 2;
};

INSTANCE Info_Mod_SchwarzerKriegerElvrich_EXIT (C_INFO)
{
	npc		= Mod_7403_SMK_SchwarzerKrieger_MT;
	nr		= 1;
	condition	= Info_Mod_SchwarzerKriegerElvrich_EXIT_Condition;
	information	= Info_Mod_SchwarzerKriegerElvrich_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_SchwarzerKriegerElvrich_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_SchwarzerKriegerElvrich_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
