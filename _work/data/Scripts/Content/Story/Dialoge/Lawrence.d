INSTANCE Info_Mod_Lawrence_Hi (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_Hi_Condition;
	information	= Info_Mod_Lawrence_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lawrence_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_00"); //Szukasz kogos?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_01"); //Tak, ale nie pamietam jego nazwiska. Zaczyna sie od L.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_02"); //W górnym miescie sa tylko trzy. Jednym z nich jest Larius, gubernator. Jest tez Lutero, dealer. Móglby tu stanac.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_03"); //I ja oczywiscie. Nazywam sie Lawrence.

	Mod_1730_MIL_Lawrence_NW.name = "prawo";

	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_04"); //Cóz, dziekuje za informacje.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_05"); //Bez problemu. Czego potrzebujesz?
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_06"); //Szukam wynalazcy.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_07"); //Wynalazca?
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_08"); //Uh, th,.... na wakacje, prawo, na wakacje! Powiedzial, ze zamierza odwiedzic przyjaciela.... w Myrtanie!
	AI_Output(hero, self, "Info_Mod_Lawrence_Hi_15_09"); //O Skromnie! Jeszcze raz dziekuje za informacje.
	AI_Output(self, hero, "Info_Mod_Lawrence_Hi_06_10"); //Bez problemu. Uh, musze isc teraz!

	B_LogEntry	(TOPIC_MOD_MILIZ_WISSENSCHAFTLER, "Milicja o imieniu Lawrence opowiedziala mi o trzech osobach w górnym miescie z poczatkowa litera 'L'. Larius, gubernator, Lutero, kupiec i on sam. Po tym jak dowiedzial sie, ze szukam wynalazcy, bardzo sie zdenerwowal. Chyba powinienem kiedys pójsc za nim.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LARIUS");
	B_StartOtherRoutine	(Mod_591_NONE_Larius_NW, "LARIUS");

	Mod_MitLawrenceGesprochen = 1;
};

INSTANCE Info_Mod_Lawrence_EXIT (C_INFO)
{
	npc		= Mod_1730_MIL_Lawrence_NW;
	nr		= 1;
	condition	= Info_Mod_Lawrence_EXIT_Condition;
	information	= Info_Mod_Lawrence_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lawrence_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lawrence_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
