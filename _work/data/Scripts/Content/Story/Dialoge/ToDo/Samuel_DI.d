INSTANCE Info_Mod_Samuel_DI_Brunhild (C_INFO)
{
	npc		= Mod_1548_PIR_Samuel_DI;
	nr		= 1;
	condition	= Info_Mod_Samuel_DI_Brunhild_Condition;
	information	= Info_Mod_Samuel_DI_Brunhild_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chcecie mnie panstwo zobaczyc.";
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
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_00"); //Chcecie mnie panstwo zobaczyc.
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_01"); //Tak wlasnie jest. Posadziles te kobiete.
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_02"); //Tak, i?
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_03"); //Cóz, potrafi gotowac lepiej niz ja. Ale nie powiedziala ci prawdy.
	AI_Output(hero, self, "Info_Mod_Samuel_DI_Brunhild_15_04"); //Skad to wiesz?
	AI_Output(self, hero, "Info_Mod_Samuel_DI_Brunhild_14_05"); //Przyznala sie do siebie. Jest w kuchni.
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
