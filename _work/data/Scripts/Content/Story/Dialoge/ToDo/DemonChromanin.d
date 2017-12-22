INSTANCE Info_Mod_DemonChromanin_Hi (C_INFO)
{
	npc		= Monster_11058_Demon_MT;
	nr		= 1;
	condition	= Info_Mod_DemonChromanin_Hi_Condition;
	information	= Info_Mod_DemonChromanin_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_DemonChromanin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_DemonChromanin_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_DemonChromanin_Hi_20_00"); //You worm want to get chromanin!? Then you will not only have to use your head but also the strength of your arms.

	AI_StopProcessInfos	(self);
};
