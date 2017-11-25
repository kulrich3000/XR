INSTANCE Info_Mod_Glenn_Nahrungsversorgung (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung_Info;
	permanent	= 0;
	important	= 0;
	description	= "You look like you could use a job and a good bath.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_00"); //You look like you could use a job and a good bath.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_01"); //What to do, not even in the harbour you get a job as a cook.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_02"); //I'd even cook for the rats if I saw gold for it.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_03"); //I could use a cook. What would you say if I gave you 150 gold in advance?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_04"); //That sounds good, but I'd need a spoon for that.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_05"); //However, not as cheap as those that are sold on the market. Just cooking with mine.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_06"); //And where would that be?
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_07"); //I'm guessing he got lost in the fight with some field robbers.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung_06_08"); //That was northwards on the mountain directly in front of the city gate.
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung_15_09"); //Well, if you really need it, I'll find it for you.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn would come along as a cook, but he wants his own spoon. He must have lost it on the mountain north of the east gate.");

	Wld_InsertItem	(ItMi_Scoop_Glenn, "FP_ITEM_KOCHLOEFFEL_GLENN");

	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_01");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_02");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_03");
	Wld_InsertNpc	(Giant_Bug, "FP_ROAM_BUG_GLENN_04");
};

INSTANCE Info_Mod_Glenn_Nahrungsversorgung2 (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_Nahrungsversorgung2_Condition;
	information	= Info_Mod_Glenn_Nahrungsversorgung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your cooking spoon and 150 gold coins.";
};

FUNC INT Info_Mod_Glenn_Nahrungsversorgung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Glenn_Nahrungsversorgung))
	&& (Npc_HasItems(hero, ItMi_Scoop_Glenn) == 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Glenn_Nahrungsversorgung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_00"); //Here's your cooking spoon and 150 gold coins. Are you working for me now?

	Npc_RemoveInvItems	(hero, ItMi_Gold, 150);
	Npc_RemoveInvItems	(hero, ItMi_Scoop_Glenn, 1);

	B_ShowGivenThings	("150 Gold and Glenns cooking spoons added");

	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_01"); //Of course, where should I cook for you?
	AI_Output(hero, self, "Info_Mod_Glenn_Nahrungsversorgung2_15_02"); //Go to the Minental and wait for me at the entrance of the abandoned mine.
	AI_Output(self, hero, "Info_Mod_Glenn_Nahrungsversorgung2_06_03"); //Okay, I'll be on my way.

	B_LogEntry	(TOPIC_MOD_KG_NAHRUNGSVERSORGUNG, "Glenn's heading for the abandoned mine.");

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Glenn_EXIT (C_INFO)
{
	npc		= Mod_7493_OUT_Glenn_NW;
	nr		= 1;
	condition	= Info_Mod_Glenn_EXIT_Condition;
	information	= Info_Mod_Glenn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Glenn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Glenn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
