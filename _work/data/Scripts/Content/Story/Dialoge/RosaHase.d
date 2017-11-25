INSTANCE Info_Mod_RosaHase_Hi (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_Hi_Condition;
	information	= Info_Mod_RosaHase_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RosaHase_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_RosaHase_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_00"); //Finally, someone who can help me.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_01"); //Wh-- what, where am I?
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_02"); //You have to help me! The sheep-fraction of evil stole my enchanted comb.
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_03"); //I need him to fly it to the moon.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_04"); //Uh, I see.
	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_05"); //Here, use this enchanted bread as a weapon to stand up to the sheep.

	B_GiveInvItems	(self, hero, ItMw_Brot, 1);

	AI_Output(self, hero, "Info_Mod_RosaHase_Hi_13_06"); //You're in that pothole lock back there. But beware of them.
	AI_Output(hero, self, "Info_Mod_RosaHase_Hi_15_07"); //Ooh, all right.

	Log_CreateTopic	(TOPIC_MOD_BDT_KAMM, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_KAMM, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_KAMM, "I find myself on a cloud, in the surroundings strange sounds. A pink rabbit asked me to salvage his comb, which the sheep robbed him.");
};

INSTANCE Info_Mod_RosaHase_HabKamm (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_HabKamm_Condition;
	information	= Info_Mod_RosaHase_HabKamm_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_RosaHase_HabKamm_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_RosaHase_Hi))
	&& (Npc_HasItems(hero, ItMi_MagicKamm) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_RosaHase_HabKamm_Info()
{
	AI_Output(self, hero, "Info_Mod_RosaHase_HabKamm_13_00"); //You've done it, proving that you're worthy of a true hero.

	B_GiveInvItems	(hero, self, ItMi_MagicKamm, 1);
	AI_UnequipWeapons	(hero);

	B_TransferInventory_All (hero, RosaHase_7187);

	AI_Output(self, hero, "Info_Mod_RosaHase_HabKamm_13_01"); //Now my journey can begin. Farewell.
	
	B_SetTopicStatus	(TOPIC_MOD_BDT_KAMM, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	Mod_CrazyRabbit = 3;
		
	Spine_OverallSaveSetInt("cloud world", 1);
	CheckHalluAchievement();
};

INSTANCE Info_Mod_RosaHase_EXIT (C_INFO)
{
	npc		= RosaHase_7187;
	nr		= 1;
	condition	= Info_Mod_RosaHase_EXIT_Condition;
	information	= Info_Mod_RosaHase_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_RosaHase_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_RosaHase_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
