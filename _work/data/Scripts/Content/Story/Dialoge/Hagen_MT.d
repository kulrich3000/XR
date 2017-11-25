INSTANCE Info_Mod_Hagen_MT_Hi (C_INFO)
{
	npc		= Mod_7698_PAL_Hagen_MT;
	nr		= 1;
	condition	= Info_Mod_Hagen_MT_Hi_Condition;
	information	= Info_Mod_Hagen_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Hagen_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_36_00"); //Teraz, gdy stoje przed toba, czy moge zalozyc, ze to nie poszlo równie dobrze?
	AI_Output(hero, self, "Info_Mod_Hagen_MT_Hi_15_01"); //Ty tutaj? Ahh, zaklecie teleportu, rozumiem.
	AI_Output(hero, self, "Info_Mod_Hagen_MT_Hi_15_02"); //Tak, Hymir byl raczej zdenerwowany pisarstwem, a takze faktem, ze Andre nie jest juz wsród zyjacych.
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_36_03"); //Cóz, tego wlasnie oczekiwalem.
	AI_Output(self, hero, "Info_Mod_Hagen_MT_Hi_36_04"); //Dlatego mam nadzieje, ze bede mógl wyjasnic te sprawe w osobistej rozmowie z Hymirem.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATHYMIR");
};

INSTANCE Info_Mod_Hagen_MT_EXIT (C_INFO)
{
	npc		= Mod_7698_PAL_Hagen_MT;
	nr		= 1;
	condition	= Info_Mod_Hagen_MT_EXIT_Condition;
	information	= Info_Mod_Hagen_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hagen_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hagen_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
