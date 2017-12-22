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
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_00"); //Hey, did you happen to see a digger running around somewhere nearby?
	AI_Output(hero, self, "Info_Mod_SchwarzerKriegerElvrich_Hi_15_01"); //Not that I know of.
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_02"); //Damn, Kurgan will be in trouble if I don't recapture this city crowd.
	AI_Output(self, hero, "Info_Mod_SchwarzerKriegerElvrich_Hi_13_03"); //I shouldn't have swarmed so openly about the bogweed and the lair.

	B_LogEntry	(TOPIC_MOD_VERMISSTE, "A demon warrior is looking for a runaway digger who could have come from the city. He complained that with too many debaucheries about a certain camp and bogweed, he had given him too many stupid thoughts.");

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
