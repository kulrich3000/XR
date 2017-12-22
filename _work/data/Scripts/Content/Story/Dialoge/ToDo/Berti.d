INSTANCE Info_Mod_Berti_Hi (C_INFO)
{
	npc		= Mod_7590_OUT_Berti_REL;
	nr		= 1;
	condition	= Info_Mod_Berti_Hi_Condition;
	information	= Info_Mod_Berti_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "How do you like the play?";
};

FUNC INT Info_Mod_Berti_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berti_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Berti_Hi_15_00"); //How do you like the play?
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_01"); //Cleanly written, perhaps - but in terms of content it is Kokolores.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_02"); //Good Will treats the spectators as if they were underage children. These blatant moral teachings!
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_03"); //He understands that today's theatre has to meet other demands.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_04"); //I don't want to be presented with any doctrine, I want to reflect and analyse myself!
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_05"); //And now he boasts with his innovations, tiny changes compared to what I have in mind.
	AI_Output(self, hero, "Info_Mod_Berti_Hi_06_06"); //His time is up, and mine will come.
};

INSTANCE Info_Mod_Berti_EXIT (C_INFO)
{
	npc		= Mod_7590_OUT_Berti_REL;
	nr		= 1;
	condition	= Info_Mod_Berti_EXIT_Condition;
	information	= Info_Mod_Berti_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Berti_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Berti_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
