INSTANCE Info_Mod_Gardist1_Hi (C_INFO)
{
	npc		= Mod_1895_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist1_Hi_Condition;
	information	= Info_Mod_Gardist1_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gardist1_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gardist1_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gardist1_Hi_07_00"); //Wiedzialem, ze Bartholo mial racje mówiac, ze powinnismy dbac o dom strazników.
	AI_Output(self, hero, "Info_Mod_Gardist1_Hi_07_01"); //Teraz to Twoja ostatnia godzina.

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);

	B_StartOtherRoutine	(Mod_1107_GRD_Jackal_MT, "FLUCHTHILFE");
	Mod_1107_GRD_Jackal_MT.name = "kosmitka";
	B_Attack	(Mod_1107_GRD_Jackal_MT, self, AR_Kill, 1);
};

INSTANCE Info_Mod_Gardist1_EXIT (C_INFO)
{
	npc		= Mod_1895_GRD_Gardist_MT;
	nr		= 1;
	condition	= Info_Mod_Gardist1_EXIT_Condition;
	information	= Info_Mod_Gardist1_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gardist1_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gardist1_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
