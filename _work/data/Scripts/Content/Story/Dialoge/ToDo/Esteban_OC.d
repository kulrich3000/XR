INSTANCE Info_Mod_Esteban_OC_Hi (C_INFO)
{
	npc		= Mod_7184_BDT_Esteban_OC;
	nr		= 1;
	condition	= Info_Mod_Esteban_OC_Hi_Condition;
	information	= Info_Mod_Esteban_OC_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Esteban_OC_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Esteban_OC_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Esteban_OC_Hi_07_00"); //Ty tutaj! Nie wierze. Tak jak..... ?
	AI_Output(hero, self, "Info_Mod_Esteban_OC_Hi_15_01"); //Cóz, pózniej mozemy zaglebic sie w szczególy. Musimy zobaczyc, w jaki sposób wydostajemy sie z tego miejsca w jednym kawalku.
	AI_Output(self, hero, "Info_Mod_Esteban_OC_Hi_07_02"); //Ah, tu tez jest beczka naszej broni.

	Wld_InsertNpc	(OrcWarrior_Roam, "WP_OCC_105");
	Wld_InsertNpc	(OrcWarrior_Roam, "WP_OCC_105");
	Wld_InsertNpc	(OrcWarrior_Roam, "WP_OCC_105");

	Mod_AlbertTransforms = 3;
};

INSTANCE Info_Mod_Esteban_OC_EXIT (C_INFO)
{
	npc		= Mod_7184_BDT_Esteban_OC;
	nr		= 1;
	condition	= Info_Mod_Esteban_OC_EXIT_Condition;
	information	= Info_Mod_Esteban_OC_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Esteban_OC_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Esteban_OC_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
