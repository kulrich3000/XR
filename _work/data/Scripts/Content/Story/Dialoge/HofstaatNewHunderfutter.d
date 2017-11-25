INSTANCE Info_Mod_HofstaatNewHundefutter_Hi (C_INFO)
{
	npc		= Mod_7335_HS_Typ_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatNewHundefutter_Hi_Condition;
	information	= Info_Mod_HofstaatNewHundefutter_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatNewHundefutter_Hi_Condition()
{
	if (Mod_SL_PartFluffy == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatNewHundefutter_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_00"); //There he goes... an adornment of his guild... I will probably never be as crusty and juicy as he is...
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_01"); //You're his successor?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_02"); //Yes, yes... but not a very good one.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_03"); //Maybe I can help you?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_04"); //You want to help me? Are you a cook or something?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_05"); //I've already slaughtered one or two cattle.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_06"); //You're a butcher?! Please help me! Please, please, please, please, please! What do you want me to do?
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_07"); //First complete pleasure giver withdrawal. It makes your meat tough.
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_06_08"); //Pleasure giver.... yes, of course.... Loose meat... of course... That's what I do! Thank you very much, Mr. Butcher!
	AI_Output(self, hero, "Info_Mod_HofstaatNewHundefutter_Hi_15_09"); //You're welcome.

	Mod_SL_PartFluffy_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);
};
