INSTANCE Info_Mod_Wesen_10_Hi (C_INFO)
{
	npc		= Monster_11034_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_10_Hi_Condition;
	information	= Info_Mod_Wesen_10_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_10_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_10_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_10_Hi_10_00"); //Nie milcze jak grobowiec, gr�b, gr�b, milcze jak gr�b, gr�b, gr�b, gr�b, milcze, milcze.... Cisze...

	AI_StopProcessInfos	(self);
};
