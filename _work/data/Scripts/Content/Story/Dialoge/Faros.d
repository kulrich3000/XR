INSTANCE Info_Mod_Faros_Hi (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_Hi_Condition;
	information	= Info_Mod_Faros_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Faros_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faros_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Faros_Hi_09_01"); //I'm Faros, the gardener.
	AI_Output(self, hero, "Info_Mod_Faros_Hi_09_02"); //I'm the head of the herb garden.
};

INSTANCE Info_Mod_Faros_MangelQuest (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_MangelQuest_Condition;
	information	= Info_Mod_Faros_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's the gardening going?";
};

FUNC INT Info_Mod_Faros_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest_15_00"); //How's the gardening going?
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_01"); //Miserable. It doesn't help that Turgas always wants to talk things over.
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest_15_02"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_03"); //Take a look around you! Among the plants there is a fungal infection and I don't have the damn fungicide.
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest_09_04"); //Any alchemist or herb protector outside the siege ring has this stuff. It's too frustrating.

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Faros has complained that there's a fungal infection raging in his herb garden. He said that every alchemist and herbalist outside has an antidote.");
};

INSTANCE Info_Mod_Faros_MangelQuest2 (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_MangelQuest2_Condition;
	information	= Info_Mod_Faros_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have something against the fungal infection....";
};

FUNC INT Info_Mod_Faros_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_MangelQuest))
	&& (Npc_HasItems(hero, ItMi_Fungizid) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_MangelQuest2_15_00"); //I have something against the fungal infection....

	B_GiveInvItems	(hero, self, ItMi_Fungizid, 1);

	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_01"); //What? Show me... In fact, it seems to be. I need to try it out right now.

	AI_PlayAni	(hero, "T_PLUNDER");

	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_02"); //Yeah, it works. This means that this mushroom story will be a thing of the past in a few days. Thank you very much.
	AI_Output(self, hero, "Info_Mod_Faros_MangelQuest2_09_03"); //Here, take some of my best herbs as a reward. Innos be with you.

	B_ShowGivenThings	("Kronstöckl, 4 knotweed and 5 fire root preserved");

	CreateInvItems	(hero, ItPl_Perm_Herb, 1);
	CreateInvItems	(hero, ItPl_Temp_Herb, 4);
	CreateInvItems	(hero, ItPl_Mana_Herb_03, 5);

	B_GivePlayerXP	(300);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Faro's fungus problem is solved.");

	B_StopMangel();
};

INSTANCE Info_Mod_Faros_Fake (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_Fake_Condition;
	information	= Info_Mod_Faros_Fake_Info;
	permanent	= 0;
	important	= 0;
	description	= "Was there a strange magician here?";
};

FUNC INT Info_Mod_Faros_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Paladin01_Fake))
	&& (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Faros_Fake_Info()
{
	AI_Output(hero, self, "Info_Mod_Faros_Fake_15_00"); //Was there a strange magician here?
	AI_Output(self, hero, "Info_Mod_Faros_Fake_09_01"); //Yes, indeed. There was this guy who was in a hurry. He looked around and then he mumbled about the library. Then he disappeared.

	B_LogEntry	(TOPIC_MOD_FM_SM, "Faros told me that the magician muttered something from the library. Maybe I should take a look around.");
};

INSTANCE Info_Mod_Faros_EXIT (C_INFO)
{
	npc		= Mod_1770_KDF_Faros_PAT;
	nr		= 1;
	condition	= Info_Mod_Faros_EXIT_Condition;
	information	= Info_Mod_Faros_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Faros_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Faros_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
