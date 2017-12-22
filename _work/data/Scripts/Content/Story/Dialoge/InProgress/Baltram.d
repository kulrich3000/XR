INSTANCE Info_Mod_Baltram_Hi (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Hi_Condition;
	information	= Info_Mod_Baltram_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Baltram_Hi_Condition()
{
	if (Wld_IsTime(05,05,20,05))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Baltram_Hi_16_00"); //Hello, stranger. I'm Baltram, and I deal in groceries.
	AI_Output(self, hero, "Info_Mod_Baltram_Hi_16_01"); //If you ever feel the urge for fresh bread and fruit, you can come to me.

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Baltram trades in food.");
};

INSTANCE Info_Mod_Baltram_WieLaeufts (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_WieLaeufts_Condition;
	information	= Info_Mod_Baltram_WieLaeufts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's business?";
};

FUNC INT Info_Mod_Baltram_WieLaeufts_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Hi))
	&& (hero.guild != GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_WieLaeufts_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_WieLaeufts_15_00"); //How's business?
	AI_Output(self, hero, "Info_Mod_Baltram_WieLaeufts_16_01"); //It's been better before. I can sell my goods well, but the supplies from the farms come only stagnating.
	AI_Output(self, hero, "Info_Mod_Baltram_WieLaeufts_16_02"); //The cowardly peasants do not dare to send out their cargoes, because lately there has been an increase in raids.
	AI_Output(hero, self, "Info_Mod_Baltram_WieLaeufts_15_03"); //Robbery?
	AI_Output(self, hero, "Info_Mod_Baltram_WieLaeufts_16_04"); //Some of the thieving scum from the valley of the river Minental is now plundering the land.
	AI_Output(self, hero, "Info_Mod_Baltram_WieLaeufts_16_05"); //All they can do is ambush and ambush them.
};

INSTANCE Info_Mod_Baltram_Warentransporte (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Warentransporte_Condition;
	information	= Info_Mod_Baltram_Warentransporte_Info;
	permanent	= 0;
	important	= 0;
	description	= "I could take care of the detained goods transports (.... )";
};

FUNC INT Info_Mod_Baltram_Warentransporte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_WieLaeufts))
	&& (hero.guild != GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Warentransporte_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Warentransporte_15_00"); //I could take care of the detained shipments.
	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte_16_01"); //You dare! Gladly, gladly, do it!
	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte_16_02"); //I'm still missing the transports of Lobart and Bengar. Lobart tried to sell me turnips, and Bengar gave me bread.
	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte_16_03"); //But watch out for the streets!

	Log_CreateTopic	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Because of the precarious situation caused by plundering convicts, the farmers Lobart and Bengar do not want to send their goods to Baltram. So I play the errand boy.");

	Wld_InsertNpc	(Mod_7557_STRF_Straefling_NW, "NW_FARM1_PATH_SPAWN_05");
	Wld_InsertNpc	(Mod_7558_STRF_Straefling_NW, "NW_FARM1_PATH_SPAWN_05");
};

INSTANCE Info_Mod_Baltram_Warentransporte2 (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Warentransporte2_Condition;
	information	= Info_Mod_Baltram_Warentransporte2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I picked up your goods.";
};

FUNC INT Info_Mod_Baltram_Warentransporte2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Warentransporte))
	&& (Npc_HasItems(hero, ItPl_Beet) >= 20)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 30)
	&& (Mod_LobartsRuebenBaltram == 1)
	&& (Mod_BengarBaltram == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Warentransporte2_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Warentransporte2_15_00"); //I picked up your goods.

	Npc_RemoveInvItems	(hero, ItFo_Bread, 30);
	Npc_RemoveInvItems	(hero, ItPl_Beet, 20);

	B_ShowGivenThings	("30 loaves of bread and 20 turnips added");

	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte2_16_01"); //Good, good, good! You paid the gold for Bengar out of your own pocket? 150 gold?
	AI_Output(hero, self, "Info_Mod_Baltram_Warentransporte2_15_02"); //Of course it is.
	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte2_16_03"); //Then you have it back with this.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Baltram_Warentransporte2_16_04"); //You can take a look around in my assortment, for 150 you get many nice things....

	B_SetTopicStatus	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	CreateInvItems	(self, ItFo_Bread, 15);
	CreateInvItems	(self, ItPl_Beet, 10);
};

INSTANCE Info_Mod_Baltram_MatteoLehrling1 (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_MatteoLehrling1_Condition;
	information	= Info_Mod_Baltram_MatteoLehrling1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Did it look under your stand (.... ) (place apple)";
};

FUNC INT Info_Mod_Baltram_MatteoLehrling1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Baltram_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_MatteoLehrling1_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL01");

	AI_PlayAni	(self, "T_PLUNDER");

	B_Say	(hero, self, "$PLACEAPFEL02");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Baltram_Apfel = 1;
};

INSTANCE Info_Mod_Baltram_MatteoLehrling2 (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_MatteoLehrling2_Condition;
	information	= Info_Mod_Baltram_MatteoLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, ain't they looking for him over there? (place apple)";
};

FUNC INT Info_Mod_Baltram_MatteoLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Baltram_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_MatteoLehrling2_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL03");

	AI_PlayAni	(self, "T_SEARCH");

	B_Say	(hero, self, "$PLACEAPFEL04");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Baltram_Apfel = 1;
};

INSTANCE Info_Mod_Baltram_MatteoLehrling3 (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_MatteoLehrling3_Condition;
	information	= Info_Mod_Baltram_MatteoLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Nice apples you have there... (place apple)";
};

FUNC INT Info_Mod_Baltram_MatteoLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Baltram_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_MatteoLehrling3_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL05");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Baltram_Apfel = 1;
};

INSTANCE Info_Mod_Baltram_Daemonisch (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Daemonisch_Condition;
	information	= Info_Mod_Baltram_Daemonisch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, I'm here from Coragon to pick up the package of salted meat.";
};

FUNC INT Info_Mod_Baltram_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Coragon_Daemonisch2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Daemonisch_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Daemonisch_15_00"); //Hey, I'm here from Coragon to pick up the package of salted meat.
	AI_Output(self, hero, "Info_Mod_Baltram_Daemonisch_16_01"); //Ahh, yeah, okay, it arrived earlier and everything's already paid for.

	B_GiveInvItems	(self, hero, ItMi_CoragonDaemonisch, 1);

	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Baltram_Daemonisch_15_02"); //(to himself) Well, that's something I should prepare at an alchemy table.
};

INSTANCE Info_Mod_Baltram_Melasse (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Melasse_Condition;
	information	= Info_Mod_Baltram_Melasse_Info;
	permanent	= 0;
	important	= 0;
	description	= "You got any molasses?";
};

FUNC INT Info_Mod_Baltram_Melasse_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Samuel_Auftrag))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Kardif_Melasse))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Samuel_HabZeug))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Melasse_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Melasse_15_00"); //You got any molasses?
	AI_Output(self, hero, "Info_Mod_Baltram_Melasse_16_01"); //I'm afraid I can't serve you with that, but I think Kardif, the innkeeper of the harbour pub, has something.

	B_LogEntry	(TOPIC_MOD_SAMUEL_RUM, "Baltram has no molasses, but he believes that Kardif, the innkeeper of the port tavern, will benefit.");
};

INSTANCE Info_Mod_Baltram_Dokumente (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Dokumente_Condition;
	information	= Info_Mod_Baltram_Dokumente_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you still have the leaves of Erhard?";
};

FUNC INT Info_Mod_Baltram_Dokumente_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Hi))
	&& (Mod_REL_Dokumente == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Dokumente_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Dokumente_15_00"); //Do you still have the leaves of Erhard?
	AI_Output(self, hero, "Info_Mod_Baltram_Dokumente_16_01"); //Which...? Ah, I understand. I'm sorry, I'm not in her possession anymore.
	AI_Output(hero, self, "Info_Mod_Baltram_Dokumente_15_02"); //As was to be expected....
	AI_Output(self, hero, "Info_Mod_Baltram_Dokumente_16_03"); //Not at all! Mika from the local city guard impounded her when he checked my cargo.
	AI_Output(self, hero, "Info_Mod_Baltram_Dokumente_16_04"); //Yet such possession is not forbidden!
	AI_Output(hero, self, "Info_Mod_Baltram_Dokumente_15_05"); //I'll take care of it.

	B_LogEntry	(TOPIC_MOD_KHORATA_DOKUMENTE, "Baltram has also lost the sides to Mika from the City Guard.");

	Mod_REL_Dokumente = 3;
};

INSTANCE Info_Mod_Baltram_Blutkelch (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Blutkelch_Condition;
	information	= Info_Mod_Baltram_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm looking for a blood calyx.";
};

FUNC INT Info_Mod_Baltram_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_PosWechsel))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Baltram_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Baltram_Blutkelch_15_00"); //I'm looking for a blood calyx.
	AI_Output(self, hero, "Info_Mod_Baltram_Blutkelch_16_01"); //Hmm... You should try a rarity dealer. There are some on Khorinis.
	AI_Output(self, hero, "Info_Mod_Baltram_Blutkelch_16_02"); //Oh, yeah. Someone came by here the other day. He called himself Morpheus. Probably came from another corner of the island.
	AI_Output(hero, self, "Info_Mod_Baltram_Blutkelch_15_03"); //Good idea. I'll try my luck with them.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Zuris thinks I should try the chalice at the rarity dealers. One of them is called Morpheus and probably comes from further afield. Otherwise there would be Lutero and Erol...");

	B_StartOtherRoutine	(Mod_521_NONE_Erol_NW, "TOT");
};

INSTANCE Info_Mod_Baltram_Anschlagtafel (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Anschlagtafel_Condition;
	information	= Info_Mod_Baltram_Anschlagtafel_Info;
	permanent	= 1;
	important	= 0;
	description	= "I saw your poster on the billboard...";
};

FUNC INT Info_Mod_Baltram_Anschlagtafel_Condition()
{
	if (Mod_Anschlagtafel_Khorinis_Baltram == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Anschlagtafel_Info()
{
	B_Say	(hero, self, "$ANSCHLAGTAFEL01");

	if (Npc_HasItems(hero, ItFo_Milk) >= Mod_Anschlagtafel_Khorinis_Baltram_Milch)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= Mod_Anschlagtafel_Khorinis_Baltram_Kaese)
	&& (Npc_HasItems(hero, ItFo_Bread) >= Mod_Anschlagtafel_Khorinis_Baltram_Brot)
	&& (Npc_HasItems(hero, ItFo_Water) >= Mod_Anschlagtafel_Khorinis_Baltram_Wasser)
	&& (Npc_HasItems(hero, ItFo_Beer) >= Mod_Anschlagtafel_Khorinis_Baltram_Bier)
	&& (Npc_HasItems(hero, ItFo_Booze) >= Mod_Anschlagtafel_Khorinis_Baltram_Wacholder)
	&& (Npc_HasItems(hero, ItFo_Wine) >= Mod_Anschlagtafel_Khorinis_Baltram_Wein)
	&& (Npc_HasItems(hero, ItFo_Sausage) >= Mod_Anschlagtafel_Khorinis_Baltram_Wurst)
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= Mod_Anschlagtafel_Khorinis_Baltram_Grog)
	&& (Npc_HasItems(hero, ItFo_Addon_Rum) >= Mod_Anschlagtafel_Khorinis_Baltram_Rum)
	&& (Npc_HasItems(hero, ItFo_Kuerbis) >= Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis)
	&& (Npc_HasItems(hero, ItPl_Melone) >= Mod_Anschlagtafel_Khorinis_Baltram_Melone)
	&& (Npc_HasItems(hero, ItFo_MuttonRaw) >= Mod_Anschlagtafel_Khorinis_Baltram_Fleisch)
	{
		Npc_RemoveInvItems	(hero, ItFo_Milk, Mod_Anschlagtafel_Khorinis_Baltram_Milch);
		Npc_RemoveInvItems	(hero, ItFo_Cheese, Mod_Anschlagtafel_Khorinis_Baltram_Kaese);
		Npc_RemoveInvItems	(hero, ItFo_Bread, Mod_Anschlagtafel_Khorinis_Baltram_Brot);
		Npc_RemoveInvItems	(hero, ItFo_Water, Mod_Anschlagtafel_Khorinis_Baltram_Wasser);
		Npc_RemoveInvItems	(hero, ItFo_Beer, Mod_Anschlagtafel_Khorinis_Baltram_Bier);
		Npc_RemoveInvItems	(hero, ItFo_Booze, Mod_Anschlagtafel_Khorinis_Baltram_Wacholder);
		Npc_RemoveInvItems	(hero, ItFo_Wine, Mod_Anschlagtafel_Khorinis_Baltram_Wein);
		Npc_RemoveInvItems	(hero, ItFo_Sausage, Mod_Anschlagtafel_Khorinis_Baltram_Wurst);
		Npc_RemoveInvItems	(hero, ItFo_Addon_Grog, Mod_Anschlagtafel_Khorinis_Baltram_Grog);
		Npc_RemoveInvItems	(hero, ItFo_Addon_Rum, Mod_Anschlagtafel_Khorinis_Baltram_Rum);
		Npc_RemoveInvItems	(hero, ItFo_Kuerbis, Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis);
		Npc_RemoveInvItems	(hero, ItPl_Melone, Mod_Anschlagtafel_Khorinis_Baltram_Melone);
		Npc_RemoveInvItems	(hero, ItFo_MuttonRaw, Mod_Anschlagtafel_Khorinis_Baltram_Fleisch);

		AI_Output(self, hero, "Info_Mod_Baltram_Anschlagtafel_16_00"); //What? Show me... In fact, all of it. Very well done.
		AI_Output(self, hero, "Info_Mod_Baltram_Anschlagtafel_16_01"); //Here's your reward.

		B_GiveInvItems	(self, hero, ItMi_Gold, Mod_Anschlagtafel_Khorinis_Baltram_Gold);

		AI_Output(self, hero, "Info_Mod_Baltram_Anschlagtafel_16_02"); //Nice doing business with you.

		if (Mod_Anschlagtafel_Khorinis_Baltram_Gold < 200)
		{
			B_GivePlayerXP	(300);
		}
		else if (Mod_Anschlagtafel_Khorinis_Baltram_Gold < 400)
		{
			B_GivePlayerXP	(400);
		}
		else if (Mod_Anschlagtafel_Khorinis_Baltram_Gold < 600)
		{
			B_GivePlayerXP	(500);
		}
		else
		{
			B_GivePlayerXP	(600);
		};

		Mod_Anschlagtafel_Khorinis_Baltram = 0;
		Mod_Anschlagtafel_Khorinis_Baltram_Cooldown = 3600;

		Npc_RemoveInvItems	(hero, ItWr_Anschlagtafel_Baltram, 1);
	}
	else
	{
		B_Say	(hero, self, "$ANSCHLAGTAFEL02");
	};
};

INSTANCE Info_Mod_Baltram_Trade (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Trade_Condition;
	information	= Info_Mod_Baltram_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Baltram_Trade_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Hi))
	&& (Wld_IsTime(05,05,20,05))
	&& (hero.guild != GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Baltram_TradeFake (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_TradeFake_Condition;
	information	= Info_Mod_Baltram_TradeFake_Info;
	permanent	= 0;
	important	= 0;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Baltram_TradeFake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Baltram_Hi))
	&& (Wld_IsTime(05,05,20,05))
	&& (hero.guild == GIL_KDF)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baltram_TradeFake_Info()
{
	B_Say (hero, self, "$TRADE_1");

	AI_Output(self, hero, "Info_Mod_Baltram_TradeFake_16_01"); //Trading? With you?! Get back to Beliar!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Baltram_Pickpocket (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_Pickpocket_Condition;
	information	= Info_Mod_Baltram_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Baltram_Pickpocket_Condition()
{
	C_Beklauen	(67, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Baltram_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);

	Info_AddChoice	(Info_Mod_Baltram_Pickpocket, DIALOG_BACK, Info_Mod_Baltram_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Baltram_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Baltram_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Baltram_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);
};

FUNC VOID Info_Mod_Baltram_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);

		Info_AddChoice	(Info_Mod_Baltram_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Baltram_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Baltram_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Baltram_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Baltram_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Baltram_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Baltram_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Baltram_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);

		AI_StopProcessInfos	(self);

		B_Attack (self, hero, AR_Theft, 1);
	}
	else
	{
		if (rnd >= 75)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 200);
		}
		else if (rnd >= 50)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 100);
		}
		else if (rnd >= 25)
		{
			B_GiveInvItems	(hero, self, ItMi_Gold, 50);
		};

		B_Say	(self, hero, "$PICKPOCKET_BESTECHUNG_01");

		Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Baltram_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Baltram_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Baltram_EXIT (C_INFO)
{
	npc		= Mod_561_NONE_Baltram_NW;
	nr		= 1;
	condition	= Info_Mod_Baltram_EXIT_Condition;
	information	= Info_Mod_Baltram_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Baltram_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baltram_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
