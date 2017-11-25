INSTANCE Info_Mod_Natalia_Hi (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_Hi_Condition;
	information	= Info_Mod_Natalia_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Natalia_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Natalia_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Natalia_Hi_16_01"); //Jestem Natalia, jedna z pokojówek Cor Cadara.
};

INSTANCE Info_Mod_Natalia_Woher (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_Woher_Condition;
	information	= Info_Mod_Natalia_Woher_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego byles w kolonii?";
};

FUNC INT Info_Mod_Natalia_Woher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Natalia_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Natalia_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Natalia_Woher_15_00"); //Dlaczego byles w kolonii?
	AI_Output(self, hero, "Info_Mod_Natalia_Woher_16_01"); //Zabilem czlowieka, który caly czas mnie nasladuje.
	AI_Output(self, hero, "Info_Mod_Natalia_Woher_16_02"); //Potem zostalem wyslany tutaj do obozu bagiennego i sluzylem Y' Berionowi, a teraz sluze Cor Cadarorowi.
};

INSTANCE Info_Mod_Natalia_EXIT (C_INFO)
{
	npc		= Mod_1624_GUR_Natalia_MT;
	nr		= 1;
	condition	= Info_Mod_Natalia_EXIT_Condition;
	information	= Info_Mod_Natalia_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Natalia_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Natalia_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
