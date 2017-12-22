INSTANCE Info_Mod_Furgas_Hi (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Hi_Condition;
	information	= Info_Mod_Furgas_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Furgas_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_00"); //A new face in our ranks, how gratifying.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_01"); //Let me briefly explain something important.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_02"); //Tell me about it.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_03"); //This tower is a central place in the monastery.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_04"); //On the top you will find the oracle, which can be very useful.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_05"); //However, if you step into the pentagram, you will be teleported to our cave.
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_06"); //There's a mine where we mine rune stones and an herb garden.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_07"); //A herb garden underground?
	AI_Output(self, hero, "Info_Mod_Furgas_Hi_13_08"); //Yes, and the plants thrive there thanks to our magic.
	AI_Output(hero, self, "Info_Mod_Furgas_Hi_15_09"); //Thanks for the information.
};

INSTANCE Info_Mod_Furgas_Paket (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_Paket_Condition;
	information	= Info_Mod_Furgas_Paket_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got a food package for you.";
};

FUNC INT Info_Mod_Furgas_Paket_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (Npc_HasItems(hero, ItMi_PAT_Nahrung) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_Paket_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_Paket_15_00"); //I got packages of food for you.
	
	B_GiveInvItems	(hero, self, ItMi_Pat_Nahrung, 1);

	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_01"); //Ah, finally. The paladins have been waiting for this.
	AI_Output(self, hero, "Info_Mod_Furgas_Paket_13_02"); //Here's a rune stone to thank you.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 1);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Furgas_MangelQuest (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest_Condition;
	information	= Info_Mod_Furgas_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "As I've seen, you have many veins of ore down there....";
};

FUNC INT Info_Mod_Furgas_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Faros_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest_15_00"); //As I've seen, you have many veins of ore down there.... but nobody's involved in the mining.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_01"); //Well, since the siege, not everything has been running its usual course.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_02"); //We were really not prepared for the fact that the Black Magicians and their legions are so suddenly at our gates.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_03"); //And when it got serious, we couldn't think long but had to forge each piece of metal into a blade for our fighters.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_04"); //Among them were the pickaxes.... Oh, but now and then we could use the ore for the rune stones again.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest_13_05"); //If only we had five pickaxes...

	B_StartMangel();

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas could use five pickaxes to get the ore mining going again.");
};

INSTANCE Info_Mod_Furgas_MangelQuest2 (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_MangelQuest2_Condition;
	information	= Info_Mod_Furgas_MangelQuest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have some pickaxes here.";
};

FUNC INT Info_Mod_Furgas_MangelQuest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Furgas_MangelQuest))
	&& (Npc_HasItems(hero, ItMw_2H_Axe_L_01) >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Furgas_MangelQuest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Furgas_MangelQuest2_15_00"); //I have some pickaxes here.

	B_GiveInvItems	(hero, self, ItMw_2H_Axe_L_01, 5);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_01"); //As a matter of fact... thank you very much. Take these rune stones as a reward.

	B_GiveInvItems	(self, hero, ItMi_Runeblank, 2);

	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_02"); //They are our last ones, but with the pickaxes we will have enough new ones soon.
	AI_Output(self, hero, "Info_Mod_Furgas_MangelQuest2_13_03"); //Innos keep you safe on your ways.

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_FM_MANGEL, "Furgas has pickaxes and ore mining can continue.");

	B_StopMangel();

	B_RemoveNpc	(Mod_7787_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7788_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7789_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7790_SFB_Schuerfer_PAT);
	B_RemoveNpc	(Mod_7791_SFB_Flaemar_PAT);
};

INSTANCE Info_Mod_Furgas_EXIT (C_INFO)
{
	npc		= Mod_1747_KDF_Furgas_PAT;
	nr		= 1;
	condition	= Info_Mod_Furgas_EXIT_Condition;
	information	= Info_Mod_Furgas_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Furgas_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Furgas_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
