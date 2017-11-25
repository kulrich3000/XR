INSTANCE Info_Mod_Buff_Hi (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_Hi_Condition;
	information	= Info_Mod_Buff_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you Buff?";
};

FUNC INT Info_Mod_Buff_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Setta_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_00"); //Are you Buff?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_01"); //Yes, I am him. What can an old man like me do for you?
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_02"); //I want to get out of this valley.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_03"); //(laughs out loud) HAHAHAHA! There is no escape from this valley.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_04"); //We have a teleporter here, but it's not working.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_05"); //Where's the teleporter?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_06"); //In a cave down the road. But you'll only find meat bugs there.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_07"); //We'll see about that.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_08"); //If you're there, can you bring me a handful of dark mushrooms?
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_09"); //Five should do it. I want to make a mushroom soup out of it.
	AI_Output(hero, self, "Info_Mod_Buff_Hi_15_10"); //Sure.
	AI_Output(self, hero, "Info_Mod_Buff_Hi_06_11"); //Thank you very much. My legs are so weak, I can't do the whole running.

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "There's a teleporter in this valley! I should check it out. It is located in a nearby cave.");
	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I'm supposed to bring five dark mushrooms for old Buff.");
};

INSTANCE Info_Mod_Buff_Pilze (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_Pilze_Condition;
	information	= Info_Mod_Buff_Pilze_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the mushrooms.";
};

FUNC INT Info_Mod_Buff_Pilze_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_Hi))
	&& (Npc_HasItems(hero, ItPl_Mushroom_01) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_Pilze_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_Pilze_15_00"); //I found the mushrooms. Here you have them.

	B_GiveInvItems	(hero, self, ItPl_Mushroom_01, 5);

	AI_Output(self, hero, "Info_Mod_Buff_Pilze_06_01"); //Thank you very much. Here, have some soup.

	B_GiveInvItems	(self, hero, ItFo_Pilzsuppe, 1);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I brought Buff the mushrooms.");
};

INSTANCE Info_Mod_Buff_TeleportSockel (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_TeleportSockel_Condition;
	information	= Info_Mod_Buff_TeleportSockel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Next to the teleporter is a pedestal. You didn't mention it.";
};

FUNC INT Info_Mod_Buff_TeleportSockel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Buff_Hi))
	&& (Mod_VMG_TeleporterEntdeckt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Buff_TeleportSockel_Info()
{
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_00"); //Next to the teleporter is a pedestal. You didn't mention it.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_01"); //Does it matter?
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_02"); //Yeah, I have a recharge stone with me. It could fit.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_03"); //Why didn't you say so? Finally there is hope!
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_04"); //Here, take these magic seeds.

	B_GiveInvItems	(self, hero, ItMi_MagicSamen, 1);

	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_05"); //Just sprinkle them around the base. Maybe this will help.
	AI_Output(hero, self, "Info_Mod_Buff_TeleportSockel_15_06"); //Thank you, I'm trying to activate the portal.
	AI_Output(self, hero, "Info_Mod_Buff_TeleportSockel_06_07"); //Don't slow down!

	B_LogEntry	(TOPIC_MOD_TURENDIL_GOLEM, "I have received magic seeds from Buff, which I am supposed to sprinkle around the base. After that, I'll have to use the recharge stone.");
};

INSTANCE Info_Mod_Buff_EXIT (C_INFO)
{
	npc		= Mod_7359_OUT_Buff_WS;
	nr		= 1;
	condition	= Info_Mod_Buff_EXIT_Condition;
	information	= Info_Mod_Buff_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Buff_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Buff_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
