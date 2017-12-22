INSTANCE Info_Mod_Galf_Hi (C_INFO)
{
	npc		= Mod_7235_NONE_Galf_NW;
	nr		= 1;
	condition	= Info_Mod_Galf_Hi_Condition;
	information	= Info_Mod_Galf_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej. Kim jestes?";
};

FUNC INT Info_Mod_Galf_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Galf_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_00"); //Hej. Kim jestes?
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_01"); //Ahhhhhhhhhhhhhhhhhhhhhhhhhhhhhh! Jestem polkniety! Nie uderzaj mnie!
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_02"); //Co Pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_03"); //Gaaa nic! Chce tylko isc!
	AI_Output(hero, self, "Info_Mod_Galf_Hi_15_04"); //Nie idziesz nigdzie, dopóki nie wyjasnisz mi, co sie dzieje!
	AI_Output(self, hero, "Info_Mod_Galf_Hi_09_05"); //l-- AAAAHHHH!

	AI_StopProcessInfos	(self);
};
