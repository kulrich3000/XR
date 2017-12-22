INSTANCE Info_Mod_Emma_Hi (C_INFO)
{
	npc		= Monster_11069_Emma_REL;
	nr		= 1;
	condition	= Info_Mod_Emma_Hi_Condition;
	information	= Info_Mod_Emma_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, Ty. Przyjedzcie ze mna, chce wam cos pokazac.";
};

FUNC INT Info_Mod_Emma_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Erhard_RebellischesSchaf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emma_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Emma_Hi_15_00"); //Hej, Ty. Przyjedzcie ze mna, chce wam cos pokazac.

	B_LieselMaeh();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	Mod_Metzger_Schaf = 2;
};

INSTANCE Info_Mod_Emma_Dank (C_INFO)
{
	npc		= Monster_11069_Emma_REL;
	nr		= 1;
	condition	= Info_Mod_Emma_Dank_Condition;
	information	= Info_Mod_Emma_Dank_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Emma_Dank_Condition()
{
	if (Mod_Metzger_Schaf == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Emma_Dank_Info()
{
	B_LieselMaeh();

	AI_Output(hero, self, "Info_Mod_Emma_Dank_15_00"); //Witaj! Co to jest w ustach?

	B_LieselMaeh();

	B_GiveInvItems	(self, hero, ItPl_Perm_Herb, 1);

	AI_Output(hero, self, "Info_Mod_Emma_Dank_15_01"); //Wybrales to dla mnie? Bardzo dziekuje!

	B_LieselMaeh();
};

INSTANCE Info_Mod_Emma_EXIT (C_INFO)
{
	npc		= Monster_11069_Emma_REL;
	nr		= 1;
	condition	= Info_Mod_Emma_EXIT_Condition;
	information	= Info_Mod_Emma_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Emma_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Emma_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
