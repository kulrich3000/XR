INSTANCE Info_Mod_Mud_REL_Hi (C_INFO)
{
	npc		= Mod_7697_STT_Mud_REL;
	nr		= 1;
	condition	= Info_Mod_Mud_REL_Hi_Condition;
	information	= Info_Mod_Mud_REL_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mud_REL_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_REL_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_00"); //Ahh, hello. It's you, my dear friend.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_01"); //I'd like to take you for a walk around.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_02"); //But I have to take care of the nice sheep right now.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_03"); //Mud?!
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_04"); //Yeah, I'm a shepherd now. With Onar, they didn't want me anymore.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_05"); //Pepe's looking after the sheep now.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_06"); //But... what about the old camp?
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_07"); //There were so bad green guys there now.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_08"); //They were even meaner than the others in the camp before, screaming all the time and trying to beat me up.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_09"); //That's when I ran away.
	AI_Output(hero, self, "Info_Mod_Mud_REL_Hi_15_10"); //Everything's clear. Then I wish you a lot of fun while you watch over the woollen column.
	AI_Output(self, hero, "Info_Mod_Mud_REL_Hi_03_11"); //Hihi, you're weird... knob of wool.... I have to remember that.

	if (Npc_KnowsInfo(hero, Info_Mod_Fisk_NW_Hi))
	&& (Mod_Fisk_LeiseHoffnung == 0)
	{
		B_LogEntry	(TOPIC_MOD_LEISEHOFFNUNG, "Obviously Mud was luckier than I thought. He's herding sheep in Khorata now.");
	};
};

INSTANCE Info_Mod_Mud_REL_EXIT (C_INFO)
{
	npc		= Mod_7697_STT_Mud_REL;
	nr		= 1;
	condition	= Info_Mod_Mud_REL_EXIT_Condition;
	information	= Info_Mod_Mud_REL_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mud_REL_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mud_REL_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
