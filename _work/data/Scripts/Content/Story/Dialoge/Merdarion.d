INSTANCE Info_Mod_Merdarion_Hi (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_Hi_Condition;
	information	= Info_Mod_Merdarion_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Merdarion_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_00"); //You again!
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_01"); //You dare to come here after you have taken the magical energy from our ore heap?
	AI_Output(hero, self, "Info_Mod_Merdarion_Hi_15_02"); //It worked out. After all, we're free now.
	AI_Output(self, hero, "Info_Mod_Merdarion_Hi_06_03"); //That's the only reason you're still alive.
};

INSTANCE Info_Mod_Merdarion_Nefarius (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_Nefarius_Condition;
	information	= Info_Mod_Merdarion_Nefarius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nefarius sent me.";
};

FUNC INT Info_Mod_Merdarion_Nefarius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nefarius_Saturas))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Merdarion_Nefarius_Info()
{
	AI_Output(hero, self, "Info_Mod_Merdarion_Nefarius_15_00"); //Nefarius sent me. I'm supposed to stop by your house before I start looking for the four parts of the portal ring.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_01"); //I'm glad you came. There's a teleporter here in the ruins. With this key you can get through the door.

	B_GiveInvItems	(self, hero, ItKe_PORTALTEMPELWALKTHROUGH_ADDON, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_02"); //Dann gibt es noch einen weiteren Teleporter in der Nähe der Taverne "The Dead Harpy". Auch dieser Teleporter ist durch eine Tür geschützt.
	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_03"); //With this key, you can open the door.

	B_GiveInvItems	(self, hero, ITKE_ORLAN_TELEPORTSTATION, 1);

	AI_Output(self, hero, "Info_Mod_Merdarion_Nefarius_06_04"); //Now hurry up.
};

INSTANCE Info_Mod_Merdarion_EXIT (C_INFO)
{
	npc		= Mod_768_KDW_Merdarion_NW;
	nr		= 1;
	condition	= Info_Mod_Merdarion_EXIT_Condition;
	information	= Info_Mod_Merdarion_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Merdarion_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Merdarion_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Merdarion_EXIT_06_00"); //May the equilibrium be given forever!

	AI_StopProcessInfos	(self);
};
