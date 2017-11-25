INSTANCE Info_Mod_Myxir_NW_Irdorath3 (C_INFO)
{
	npc		= Mod_7447_KDS_Myxir_NW;
	nr		= 1;
	condition	= Info_Mod_Myxir_NW_Irdorath3_Condition;
	information	= Info_Mod_Myxir_NW_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
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
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_15_00"); //I'm sorry, but it seems there are too many of us. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_28_01"); //What was that like? I advise you to think carefully about what you're going to say...

	Info_ClearChoices	(Info_Mod_Myxir_NW_Irdorath3);

	Info_AddChoice	(Info_Mod_Myxir_NW_Irdorath3, "No, I really can't do that. Places are full.", Info_Mod_Myxir_NW_Irdorath3_B);
	Info_AddChoice	(Info_Mod_Myxir_NW_Irdorath3, "Um, it was just an organizational misunderstanding.", Info_Mod_Myxir_NW_Irdorath3_A);
};

FUNC VOID Info_Mod_Myxir_NW_Irdorath3_B()
{
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_B_15_00"); //No, I really can't do that. Places are full.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_B_28_01"); //All right, it's your decision.
	AI_Output(self, hero, "Info_Mod_Myxir_NW_Irdorath3_B_28_02"); //I'm not going to leave without leaving you another present. Have fun with that.

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
	AI_Output(hero, self, "Info_Mod_Myxir_NW_Irdorath3_A_15_00"); //Um, it was just an organizational misunderstanding.

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
