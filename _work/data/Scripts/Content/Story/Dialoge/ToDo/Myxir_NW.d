INSTANCE Info_Mod_Myxir_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7447_KDS_Myxir_NW;
	nr		= 1;
	condition	= Info_Mod_Myxir_NW_Irdorath3_Condition;
	information	= Info_Mod_Myxir_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Myxir_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Myxir_Irdorath))
	&& (Mod_Irdorath == 0)
	&& (Mod_MyxirDabei == 2)
	&& (((Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15))
	|| (Mod_CedricDabei == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Myxir_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze jest nas zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_28_01"); //Jak to bylo? Radze dokladnie przemyslec to, co zamierzasz powiedziec....

	Info_ClearChoices	(Info_Mod_Myxir_NW_Irdorath3);

	Info_AddChoice	(Info_Mod_Myxir_NW_Irdorath3, "Nie, naprawde nie moge tego zrobic. Miejsca sa pelne.", Info_Mod_Myxir_NW_Irdorath3_B);
	Info_AddChoice	(Info_Mod_Myxir_NW_Irdorath3, "Um, bylo to tylko nieporozumienie organizacyjne.", Info_Mod_Myxir_NW_Irdorath3_A);
};

FUNC VOID Info_Mod_Myxir_NW_Irdorath3_B()
{
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_B_15_00"); //Nie, naprawde nie moge tego zrobic. Miejsca sa pelne.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_B_28_01"); //To Twoja decyzja.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_B_28_02"); //Nie odejde bez pozostawienia ci innego prezentu. Zabawa z tym.

	Info_ClearChoices	(Info_Mod_Myxir_NW_Irdorath3);

	Mod_MyxirDabei = 3;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");

	Wld_InsertNpc	(SkeletonWarrior, "PC_HERO");
	Wld_InsertNpc	(SkeletonWarrior, "PC_HERO");
	Wld_InsertNpc	(SkeletonWarrior, "PC_HERO");
};

FUNC VOID Info_Mod_Myxir_NW_Irdorath3_A()
{
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_A_15_00"); //Um, bylo to tylko nieporozumienie organizacyjne.

	Info_ClearChoices	(Info_Mod_Myxir_NW_Irdorath3);
};

INSTANCE Info_Mod_Myxir_NW_EXIT (C_INFO)
{
	npc		= Mod_7447_KDS_Myxir_NW;
	nr		= 1;
	condition	= Info_Mod_Myxir_NW_EXIT_Condition;
	information	= Info_Mod_Myxir_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Myxir_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Myxir_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
