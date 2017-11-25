INSTANCE Info_Mod_Wilderer_Hi (C_INFO)
{
	npc		= Mod_7588_OUT_Wilderer_NW;
	nr		= 1;
	condition	= Info_Mod_Wilderer_Hi_Condition;
	information	= Info_Mod_Wilderer_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wilderer_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wilderer_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_00"); //Well, who do we have here... ohh, or rather, what.

	AI_ReadyMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_01"); //Look at this, boys! Tame snapper with shiny skins... they must be worth a fortune.
	AI_Output(hero, self, "Info_Mod_Wilderer_Hi_15_02"); //Hey, don't get any ideas.
	AI_Output(self, hero, "Info_Mod_Wilderer_Hi_08_03"); //Stupid?! Stupid is your face. Come on, guys, we hit the jackpot today.

	AI_StopProcessInfos	(self);
};
