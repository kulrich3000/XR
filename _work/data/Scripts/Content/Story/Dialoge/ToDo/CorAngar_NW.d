INSTANCE Info_Mod_Angar_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7454_TPL_Angar_NW;
	nr		= 1;
	condition	= Info_Mod_Angar_NW_Irdorath3_Condition;
	information	= Info_Mod_Angar_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Przykro mi, ale wydaje mi sie, ze to zbyt wiele.";
};

FUNC INT Info_Mod_Angar_NW_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Angar_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_AngarDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Angar_NW_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Angar_NW_Irdorath3_15_00"); //Przykro mi, ale wydaje mi sie, ze to zbyt wiele. Nie moge cie zabrac ze soba.
	AI_Output(self, hero, "Info_Mod_Angar_NW_Irdorath3_34_01"); //Zbyt zle. Wr�ce do Minentala.

	Mod_AngarDabei = 3;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Angar_NW_EXIT (C_INFO)
{
	npc		= Mod_7454_TPL_Angar_NW;
	nr		= 1;
	condition	= Info_Mod_Angar_NW_EXIT_Condition;
	information	= Info_Mod_Angar_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Angar_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Angar_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
