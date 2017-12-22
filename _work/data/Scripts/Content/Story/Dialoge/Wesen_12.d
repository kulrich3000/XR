INSTANCE Info_Mod_Wesen_12_Hi (C_INFO)
{
	npc		= Monster_11036_Wesen_HALU;
	nr		= 1;
	condition	= Info_Mod_Wesen_12_Hi_Condition;
	information	= Info_Mod_Wesen_12_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wesen_12_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wesen_12_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wesen_12_Hi_10_00"); //.... HEY... slyszy, ze on bedzie poskromil czasy...... czosnek.... chcesz miec...... hahahahahahahahahahahahahahahahahahahahahaha..... Dobry zart?
	AI_Output(self, hero, "Info_Mod_Wesen_12_Hi_10_01"); //Yoo-ho! LEEEBEEBEEBEN! ... HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA.....

	AI_StopProcessInfos	(self);
};
