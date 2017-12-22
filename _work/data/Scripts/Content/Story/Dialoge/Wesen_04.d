INSTANCE Info_Mod_Wesen_04_Hi (C_INFO)
{
	npc		= Monster_11028_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_04_Hi_Condition;
	information	= Info_Mod_Wesen_04_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_04_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_04_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_04_Hi_10_00"); //Zycie jest czasem niczym innym jak dziwnym snem.
	AI_Output(self, hero, "Info_Mod_Wesen_04_Hi_10_01"); //Ale jakie marzenie moze byc bardziej dziwne niz zycie?

	AI_StopProcessInfos	(self);
};
