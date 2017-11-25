INSTANCE Info_Mod_Paladin01_Hi (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_Hi_Condition;
	information	= Info_Mod_Paladin01_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Paladin01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Paladin01_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Paladin01_Hi_06_01"); //I'm one of the paladins.
};

INSTANCE Info_Mod_Paladin01_MangelQuest (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_MangelQuest_Condition;
	information	= Info_Mod_Paladin01_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "How about strengthening your spiritual strength through prayer in the Church for a change.";
};

FUNC INT Info_Mod_Paladin01_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Paladin01_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Paladin01_MangelQuest_15_00"); //How about strengthening your spiritual strength through prayer in the Church for a change.
	AI_Output(hero, self, "Info_Mod_Paladin01_MangelQuest_15_01"); //Because a true warrior uses the strength of his body and mind in battle.
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_02"); //Yes, Master... you're right, of course. What would we paladins be without the magic lent by Innos?
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_03"); //In the last time of bloodshed I had started to focus too much on the sword.
	AI_Output(self, hero, "Info_Mod_Paladin01_MangelQuest_06_04"); //Thank you for your wise words. I'll go to church immediately.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "So, I think I have had enough disciples of Inno's to get them to pray and I should stop by the church at Nagon.");
	};
};

INSTANCE Info_Mod_Paladin01_Fake (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_Fake_Condition;
	information	= Info_Mod_Paladin01_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did you notice anyone special here?";
};

FUNC INT Info_Mod_Paladin01_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Paladin01_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Alchemist01_Fake))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Paladin01_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Paladin01_Fake_15_00"); //Did you notice anyone special here?
	AI_Output(self, hero, "Info_Mod_Paladin01_Fake_06_01"); //Maybe one of the magicians, who seemed to be in a hurry. I think he went to the herb garden.

	B_LogEntry	(TOPIC_MOD_FM_SM, "A paladin thinks the magician went to the herb garden.");
};

INSTANCE Info_Mod_Paladin01_EXIT (C_INFO)
{
	npc		= Mod_1769_PAL_Paladin_PAT;
	nr		= 1;
	condition	= Info_Mod_Paladin01_EXIT_Condition;
	information	= Info_Mod_Paladin01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Paladin01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Paladin01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
