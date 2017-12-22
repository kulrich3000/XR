INSTANCE Info_Mod_Torwache_NL_01_GardistenInfos (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_GardistenInfos_Condition;
	information	= Info_Mod_Torwache_NL_01_GardistenInfos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Torwache_NL_01_GardistenInfos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Torgan_NochEinAuftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Torgan_GardistenZettel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_01"); //Yes?
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_02"); //Have you seen strangers here in the last few days? Guards, perhaps?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_03"); //Guardsmen? Here? I don't think hardly anyone will dare come here.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_04"); //Are you sure there was nothing here?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_05"); //Hm, let me reconsider. Yeah, that reminds me, a couple of unknowns shot at us the night before last.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_06"); //An arrow injured one of our mercenaries. Lee almost freaked out with anger. But I was not there, so I don't remember.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_07"); //Just go to the tavern on the island, he'll probably sit there and pick up a few jugs. Go right on in.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_15_08"); //Thanks, I'll go find him.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_06_09"); //Do you have anything to drink with you? I've been dying of thirst here for hours.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The gatekeeper of the new camp doesn't know anything, but another mercenary currently in the tavern was shot a few nights ago. I should see him, maybe he knows something.");

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);
	
	Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "I'm sorry, I don't have anything on me.", Info_Mod_Torwache_NL_01_GardistenInfos_B);
	if (Npc_HasItems(hero, ItFo_Wine) > 0)
	|| (Npc_HasItems(hero, ItFo_Water) > 0)
	|| (Npc_HasItems(hero, ItFo_Booze) > 0)
	|| (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "Sure, here you go...", Info_Mod_Torwache_NL_01_GardistenInfos_A);
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_B()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_B_15_00"); //I'm sorry, I don't have anything on me.
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_B_06_01"); //Oh, damn it. Well, good luck.

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_G()
{
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_GardistenInfos_G_06_00"); //Thanks, man. His name is Nodrak, by the way. When he's had a few beers, he's actually always a little talkative.

	B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "The mercenary's name is Nodrak. If he gets a drink, he'd rather talk.");
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_A()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_A_15_00"); //Sure, here you go...

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	if (Npc_HasItems(hero, ItFo_Wine) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... a wine.", Info_Mod_Torwache_NL_01_GardistenInfos_F);
	};
	if (Npc_HasItems(hero, ItFo_Water) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... a water.", Info_Mod_Torwache_NL_01_GardistenInfos_E);
	};
	if (Npc_HasItems(hero, ItFo_Booze) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... a juniper.", Info_Mod_Torwache_NL_01_GardistenInfos_D);
	};
	if (Npc_HasItems(hero, ItFo_Beer) > 0)
	{
		Info_AddChoice	(Info_Mod_Torwache_NL_01_GardistenInfos, "... a beer.", Info_Mod_Torwache_NL_01_GardistenInfos_C);
	};
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_F()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_F_15_00"); //... a wine.

	B_GiveInvItems	(hero, self, ItFo_Wine, 1);
	B_UseItem	(self, ItFo_Wine);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_E()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_E_15_00"); //... a water.

	B_GiveInvItems	(hero, self, ItFo_Water, 1);
	B_UseItem	(self, ItFo_Water);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_D()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_D_15_00"); //... a juniper.

	B_GiveInvItems	(hero, self, ItFo_Booze, 1);
	B_UseItem	(self, ItFo_Booze);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

FUNC VOID Info_Mod_Torwache_NL_01_GardistenInfos_C()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_GardistenInfos_C_15_00"); //... a beer.

	B_GiveInvItems	(hero, self, ItFo_Beer, 1);
	B_UseItem	(self, ItFo_Beer);

	Info_ClearChoices	(Info_Mod_Torwache_NL_01_GardistenInfos);

	Info_Mod_Torwache_NL_01_GardistenInfos_G();
};

INSTANCE Info_Mod_Torwache_NL_01_Hi (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_Hi_Condition;
	information	= Info_Mod_Torwache_NL_01_Hi_Info;
	permanent	= 1;
	important	= 0;
	description	= "Anything new?";
};

FUNC INT Info_Mod_Torwache_NL_01_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_Hi_15_00"); //Anything new?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_Hi_06_01"); //No, everything's been quiet lately.
};

INSTANCE Info_Mod_Torwache_NL_01_WarumHier (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_WarumHier_Condition;
	information	= Info_Mod_Torwache_NL_01_WarumHier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why are you guarding the gate here?";
};

FUNC INT Info_Mod_Torwache_NL_01_WarumHier_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_WarumHier_Info()
{
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_WarumHier_15_00"); //Why are you guarding the gate here?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_WarumHier_06_01"); //Basically, we're not guarding anything here. Occasionally we catch an orc scout coming out of the mountains, but they're no danger to us.
	AI_Output(hero, self, "Info_Mod_Torwache_NL_01_WarumHier_15_02"); //And what about access over the river?
	AI_Output(self, hero, "Info_Mod_Torwache_NL_01_WarumHier_06_03"); //Access is not particularly vulnerable. There is also a gate in the camp and the farmers as vanguard.
};

INSTANCE Info_Mod_Torwache_NL_01_Pickpocket (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_Pickpocket_Condition;
	information	= Info_Mod_Torwache_NL_01_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Torwache_NL_01_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);

	Info_AddChoice	(Info_Mod_Torwache_NL_01_Pickpocket, DIALOG_BACK, Info_Mod_Torwache_NL_01_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Torwache_NL_01_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Torwache_NL_01_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);
};

FUNC VOID Info_Mod_Torwache_NL_01_Pickpocket_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Torwache_NL_01_Pickpocket);
};

INSTANCE Info_Mod_Torwache_NL_01_EXIT (C_INFO)
{
	npc		= Mod_1318_SLD_Organisator_MT;
	nr		= 1;
	condition	= Info_Mod_Torwache_NL_01_EXIT_Condition;
	information	= Info_Mod_Torwache_NL_01_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Torwache_NL_01_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Torwache_NL_01_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
