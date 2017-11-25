INSTANCE Info_Mod_Rod_OGY_Hi (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_Hi_Condition;
	information	= Info_Mod_Rod_OGY_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rod_OGY_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rod_OGY_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_00"); //Damn, finally, reinforcements.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_01"); //What has happened?
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_02"); //What else is there to ask! We were ambushed by the undead bastards in cold blood. Suddenly undead from all sides.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_03"); //We've barricaded ourselves in here waiting for reinforcements.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_04"); //Yeah, there I am.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_05"); //And the others? You're not the only one...
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_06"); //Well, uh... but.
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_07"); //What?! Well, fantastic... Nah, man, until you've brought in the two guys from outside to support me, I sure as hell won't take another step.
	AI_Output(hero, self, "Info_Mod_Rod_OGY_Hi_15_08"); //Well, if there's no other way....
	AI_Output(self, hero, "Info_Mod_Rod_OGY_Hi_06_09"); //Well, hurry up. We'll hold here as long as we can.

	B_LogEntry	(TOPIC_MOD_SLD_FRIEDHOF, "The survivors in the Orc Cemetery have asked me to call in the Orc hunters for support at the entrance.");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Rod_OGY_GetZombie (C_INFO)
{
	npc		= Mod_7533_SLD_Rod_OGY;
	nr		= 1;
	condition	= Info_Mod_Rod_OGY_GetZombie_Condition;
	information	= Info_Mod_Rod_OGY_GetZombie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, looks bad for support.";
};

FUNC INT Info_Mod_Rod_OGY_GetZombie_Condition()
{
	if (Mod_NL_ZombieVerwandlung == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rod_OGY_GetZombie_Info()
{
	AI_Output(hero, self, "Info_Mod_Rod_OGY_GetZombie_15_00"); //Well, looks bad for support.

	AI_StopProcessInfos	(self);
};
