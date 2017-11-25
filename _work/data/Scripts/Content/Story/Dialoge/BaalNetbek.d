INSTANCE Info_Mod_BaalNetbek_Hi (C_INFO)
{
	npc		= Mod_7205_GUR_BaalNetbek_AW;
	nr		= 1;
	condition	= Info_Mod_BaalNetbek_Hi_Condition;
	information	= Info_Mod_BaalNetbek_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, nie sadze, zebys byl tym, z kim chce porozmawiac.";
};

FUNC INT Info_Mod_BaalNetbek_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_BaalNetbek_Kristall))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BaalNetbek_Hi_Info()
{
	B_Say	(hero, self, "$GODLYBOTE01");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_BaalNetbek_Kristall (C_INFO)
{
	npc		= Mod_7205_GUR_BaalNetbek_AW;
	nr		= 1;
	condition	= Info_Mod_BaalNetbek_Kristall_Condition;
	information	= Info_Mod_BaalNetbek_Kristall_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ach, czy przez przypadek jestes boskim poslannikiem?";
};

FUNC INT Info_Mod_BaalNetbek_Kristall_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_04))
	&& (Npc_HasItems(hero, ItMi_AbsorbKristall) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_BaalNetbek_Kristall_Info()
{
	B_Say	(hero, self, "$GODLYBOTE02");

	AI_Output(self, hero, "Info_Mod_BaalNetbek_Kristall_12_01"); //Oto ja! Jestem Baalem Netbkiem, guru bagna i...
	AI_Output(hero, self, "Info_Mod_BaalNetbek_Kristall_15_02"); //(przerwanie) Uh, mysle, ze mielismy to juz wczesniej.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");

	AI_Teleport	(self, "TOT");
};
