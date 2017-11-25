INSTANCE Info_Mod_Cavalorn_AW_Hi (C_INFO)
{
	npc		= Mod_7640_RDW_Cavalorn_AW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_AW_Hi_Condition;
	information	= Info_Mod_Cavalorn_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cavalorn_AW_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Cavalorn_AW_Hi_36_00"); //Trzymac wlaczony, trzymac wcisniety. Mam dla Panstwa wiadomosc.
	AI_Output(hero, self, "Info_Mod_Cavalorn_AW_Hi_15_01"); //Slysze.....
	AI_Output(self, hero, "Info_Mod_Cavalorn_AW_Hi_36_02"); //Kiedy przyjedziesz do miasta, przejdziesz przez plac swiatyni.
	AI_Output(self, hero, "Info_Mod_Cavalorn_AW_Hi_36_03"); //Tam stoi facet, który chce cie zobaczyc.
	AI_Output(hero, self, "Info_Mod_Cavalorn_AW_Hi_15_04"); //Jesli to nic innego.

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Cavalorn_AW_EXIT (C_INFO)
{
	npc		= Mod_7640_RDW_Cavalorn_AW;
	nr		= 1;
	condition	= Info_Mod_Cavalorn_AW_EXIT_Condition;
	information	= Info_Mod_Cavalorn_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cavalorn_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cavalorn_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
