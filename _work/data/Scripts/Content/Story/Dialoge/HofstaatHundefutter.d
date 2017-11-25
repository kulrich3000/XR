INSTANCE Info_Mod_HofstaatHundefutter_Hi (C_INFO)
{
	npc		= Mod_7334_HS_Typ_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatHundefutter_Hi_Condition;
	information	= Info_Mod_HofstaatHundefutter_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey!";
};

FUNC INT Info_Mod_HofstaatHundefutter_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatHundefutter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_00"); //Hey!
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_01"); //Age. What the fuck is this shit?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_02"); //What do you think?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_03"); //Can't you see I'm working? You're getting on your nerves!
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_15_04"); //You've had a pretty good time lately, haven't you?
	AI_Output(self, hero, "Info_Mod_HofstaatHundefutter_Hi_06_05"); //Fr... gladdened Huh? aaaa-age Finally, the boss!

	AI_StopProcessInfos	(self);

	Wld_InsertNpc	(Mod_7335_HS_Typ_REL, "REL_243");
};
