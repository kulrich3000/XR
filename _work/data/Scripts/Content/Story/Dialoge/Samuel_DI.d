INSTANCE Info_Mod_Samuel_DI_Brunhild (C_INFO)
{
	npc		= Mod_1548_PIR_Samuel_DI;
	nr		= 1;
	condition	= Info_Mod_Samuel_DI_Brunhild_Condition;
	information	= Info_Mod_Samuel_DI_Brunhild_Info;
	permanent	= 0;
	important	= 0;
	description	= "You want to see me.";
};

FUNC INT Info_Mod_Samuel_DI_Brunhild_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Brunhild2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Samuel_DI_Brunhild_Info()
{
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_00"); //You want to see me.
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_01"); //That's how it is. You planted that woman.
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_02"); //Yeah, and?
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_03"); //Well, she can cook better than I can. But she didn't tell you the truth.
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_04"); //How do you know that?
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_05"); //She confessed to herself. She's in the kitchen.
};

INSTANCE Info_Mod_Samuel_DI_EXIT (C_INFO)
{
	npc		= Mod_1548_PIR_Samuel_DI;
	nr		= 1;
	condition	= Info_Mod_Samuel_DI_EXIT_Condition;
	information	= Info_Mod_Samuel_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Samuel_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Samuel_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
