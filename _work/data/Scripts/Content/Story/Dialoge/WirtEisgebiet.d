INSTANCE Info_Mod_WirtEisgebiet_Rattenquest (C_INFO)
{
	npc		= Mod_7407_OUT_Wirt_EIS;
	nr		= 1;
	condition	= Info_Mod_WirtEisgebiet_Rattenquest_Condition;
	information	= Info_Mod_WirtEisgebiet_Rattenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy chlopaki maja ostatnio problem z szczurami, przez jakakolwiek szanse?";
};

FUNC INT Info_Mod_WirtEisgebiet_Rattenquest_Condition()
{
	if (Mod_RattenQuest == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_WirtEisgebiet_Rattenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_00"); //Czy chlopaki maja ostatnio problem z szczurami, przez jakakolwiek szanse?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_01"); //Nie mamy problemu z szczurami. Kiedy ciezko ja uderzysz i stwór jest martwy.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_02"); //Nie, nie o to nie chodzilo mi. Mam na mysli, czy w ciagu ostatnich kilku minut gonna pojawia sie czesciej?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_03"); //ale jeden z mysliwych, mysle, ze Burl byl jego imieniem, powiedzial mi o szczurach.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_04"); //A gdzie taki zadzior?
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_05"); //Mysle, ze jest w hotelu.
	AI_Output(self, hero, "Info_Mod_WirtEisgebiet_Rattenquest_14_06"); //Mozesz sprawdzic, czy jest znów sprawny.
	AI_Output(hero, self, "Info_Mod_WirtEisgebiet_Rattenquest_15_07"); //Dzieki, zobacze go od razu.

	B_LogEntry	(TOPIC_MOD_RATTENQUEST, "W tym miescie nic sie nie wydarzylo, ale mysliwy o imieniu Burl mówil o szczurach. Ma zostac w hotelu, gdzie ma go spac.");

	Mod_RattenQuest = 5;
};

INSTANCE Info_Mod_WirtEisgebiet_EXIT (C_INFO)
{
	npc		= Mod_7407_OUT_Wirt_EIS;
	nr		= 1;
	condition	= Info_Mod_WirtEisgebiet_EXIT_Condition;
	information	= Info_Mod_WirtEisgebiet_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_WirtEisgebiet_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_WirtEisgebiet_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
