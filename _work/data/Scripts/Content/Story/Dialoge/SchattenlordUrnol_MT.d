INSTANCE Info_Mod_Urnol_MT_Hi (C_INFO)
{
	npc		= Schattenlord_877_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_MT_Hi_Condition;
	information	= Info_Mod_Urnol_MT_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Urnol_MT_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_MT_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_00"); //Spotykamy sie wiec ponownie. Zrobiles to, uwolniles mojego mistrza z podziemi.
	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_01"); //Wracasz do niego, on na ciebie czeka.

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Urnol_MT_Hi_14_03"); //W drodze do metra miasta. Nie mozna go pominac. (smiertelnicy)

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Urnol_MT_EXIT (C_INFO)
{
	npc		= Schattenlord_877_Urnol;
	nr		= 1;
	condition	= Info_Mod_Urnol_MT_EXIT_Condition;
	information	= Info_Mod_Urnol_MT_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Urnol_MT_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Urnol_MT_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
