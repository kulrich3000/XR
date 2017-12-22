INSTANCE Info_Mod_Galf_Hi (C_INFO)
{
	npc		= Mod_7235_NONE_Galf_NW;
	nr		= 1;
	condition	= Info_Mod_Galf_Hi_Condition;
	information	= Info_Mod_Galf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey. Who are you?";
};

FUNC INT Info_Mod_Galf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Galf_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_00"); //Hey. Who are you?
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_01"); //Ahhhhhhhhh! I'm Galf! Don't hit me!
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_02"); //What are you doing here?
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_03"); //Gaaa nothing! I just want to go!
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_04"); //You're going nowhere until you explain to me what's going on!
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_05"); //l-- AAAAHHHH!

	AI_StopProcessInfos	(self);
};
