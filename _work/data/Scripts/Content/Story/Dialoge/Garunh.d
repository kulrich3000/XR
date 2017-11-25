INSTANCE Info_Mod_Garunh_Hi (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Hi_Condition;
	information	= Info_Mod_Garunh_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baro_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_00"); //You're his man from far away.
	AI_Output(self, hero, "Info_Mod_Garunh_Hi_18_01"); //I will tell you not only about evil orcs, but also about evil people from this valley.
};

INSTANCE Info_Mod_Garunh_Orkring (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring_Condition;
	information	= Info_Mod_Garunh_Orkring_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do you know about the bad orcs?";
};

FUNC INT Info_Mod_Garunh_Orkring_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring_15_00"); //What do you know about the bad orcs?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_01"); //Evil orcs are very superstitious. They worship the power of the creator.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring_18_02"); //He's been very strong ever since he was in the temple under the mountains.
};

INSTANCE Info_Mod_Garunh_Orkring2 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring2_Condition;
	information	= Info_Mod_Garunh_Orkring2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are the bad people?";
};

FUNC INT Info_Mod_Garunh_Orkring2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring2_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring2_15_00"); //Who are the bad people?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_01"); //Evil people, found weapons of an old blacksmith.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_02"); //Weapons that didn't rust and were forged for orcs.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_03"); //They supply the orcs with weapons and the orcs pay with artifacts of our culture.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring2_18_04"); //They have given ring of my ancestors to the humans and Garunh must reclaim it to not defile honor.
};

INSTANCE Info_Mod_Garunh_Orkring3 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring3_Condition;
	information	= Info_Mod_Garunh_Orkring3_Info;
	permanent	= 0;
	important	= 0;
	description	= "How can we stop the Orcs from attacking the pass?";
};

FUNC INT Info_Mod_Garunh_Orkring3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring3_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring3_15_00"); //How can we stop the Orcs from attacking the pass?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_01"); //If humans help Garunh to get his ring of evil people, then he also weaken the strength of orcs.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring3_18_02"); //Bad people have caves. Garunh will escort you to her.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "In order for Garunh to help me against the Orcs at the pass, I must help him to reclaim an old ring from the bandits. He will lead me to them.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "GUIDETOBANDITEN");

	self.aivar[AIV_Partymember] = TRUE;
};

INSTANCE Info_Mod_Garunh_Orkring4 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring4_Condition;
	information	= Info_Mod_Garunh_Orkring4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Garunh_Orkring4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	&& (Npc_GetDistToWP(self, "NORDOSTENLOCH_11") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring4_Info()
{
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_00"); //Evil people are behind hut in the mountain. Entrance is too small for orcs, so people are safe here.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring4_18_01"); //Garunh must wait here and hope for man's success.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring4_15_02"); //I'll find your ring, just keep my back out here.

	B_LogEntry	(TOPIC_MOD_EIS_ORKRING, "We arrived at the cave. Since the entrance is too small for Garunh, I have to face the bandits alone.");
};

INSTANCE Info_Mod_Garunh_Orkring5 (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_Orkring5_Condition;
	information	= Info_Mod_Garunh_Orkring5_Info;
	permanent	= 0;
	important	= 0;
	description	= "The bad people and their leader are dead.";
};

FUNC INT Info_Mod_Garunh_Orkring5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring))
	&& (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring2))
	&& (Npc_HasItems(hero, ItRi_Garunh) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_Orkring5_Info()
{
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_00"); //The bad people and their leader are dead. I found your ring with him, too.

	B_GiveInvItems	(hero, self, ItRi_Garunh, 1);

	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_01"); //Thanks, man, now you've saved my honor. I want to tell you the secret of Orcs.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_02"); //Many years ago orcs found great temples in the mountains.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_03"); //The bravest was Shaman Asek. He was the first to enter the temple.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_04"); //In the Artefakthalle he found many powerful artifacts, but none of them interested him except the creator's staff.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_05"); //What kind of staff? And who is the creator?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_06"); //Staff be as strong as creators and creators are anyone who possesses staff.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_07"); //Does that mean you can create anything you want with him?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_08"); //His divine artifact, not meant for orcs or humans.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_09"); //Asek can only create death. And he did this to protect himself and the temple.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_10"); //But Asek wanted more. Not only did he turn living orcs in the temple into living dead, but he also raised dead orcs from cemetery.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_11"); //Wait a minute, is that supposed to mean the orcs in the forest are undead orcs?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_12"); //Yes, very few Asek have survived. Only leaders are still alive.
	AI_Output(hero, self, "Info_Mod_Garunh_Orkring5_15_13"); //Where is the temple where Asek has his hiding place?
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_14"); //Only a living orc leader can tell you that. But since you don't know the language, you need translators.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_15"); //Baro told me about the man who studied orcs. You'd better go to him.
	AI_Output(self, hero, "Info_Mod_Garunh_Orkring5_18_16"); //If you know where Asek is, you can visit me at the tent. Good luck, man.

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_EIS_ORKRING, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_UNTOTEORKS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_UNTOTEORKS, "Garunh told me what the Orcs are all about. Apparently, a shaman named Asek has found a mighty staff in a temple, with the help of which he has turned almost all orcs into undead and additionally resurrected dead orcs. To find out his whereabouts I should speak to Baro, because he knows someone who has studied the language of the orcs. After that, I have to find an orc leader and get the information.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Garunh_EXIT (C_INFO)
{
	npc		= Mod_10045_Orc_Garunh_EIS;
	nr		= 1;
	condition	= Info_Mod_Garunh_EXIT_Condition;
	information	= Info_Mod_Garunh_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Garunh_EXIT_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Garunh_Orkring3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Garunh_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
