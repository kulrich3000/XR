INSTANCE Info_Mod_Meldor_Hi (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Hi_Condition;
	information	= Info_Mod_Meldor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Meldor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meldor_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Meldor_Hi_07_01"); //I'm Meldor. I'm helping Lehmar with his financial transactions.
};

INSTANCE Info_Mod_Meldor_Hilfe (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Hilfe_Condition;
	information	= Info_Mod_Meldor_Hilfe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meldor_Hilfe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Wld_GetDay() > 1)
	&& (hero.guild != GIL_PAL)
	&& (Mod_Gilde > 0)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Hilfe_Info()
{
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_00"); //Hey you, come here.
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_02"); //I desperately need your help!
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_15_03"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_07_04"); //I don't have time to tell you everything. They'll be here any minute. So you'll help me?

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	Info_AddChoice	(Info_Mod_Meldor_Hilfe, "Sure, how can I help you?", Info_Mod_Meldor_Hilfe_Ja);
	Info_AddChoice	(Info_Mod_Meldor_Hilfe, "No, do your stuff alone!", Info_Mod_Meldor_Hilfe_Nein);
};

FUNC VOID Info_Mod_Meldor_Hilfe_Ja()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_00"); //Sure, how can I help you?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_01"); //I've got a pack of bogweed, hide it now!

	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_02"); //Why should I hide it?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_03"); //Hurry up, the militias can come any minute.
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_04"); //Some dog's got her on top of me, so go.
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Ja_15_05"); //Where should I hide the package?
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_06"); //There's a warehouse here in the harbour district, hiding it in a chest.
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Ja_07_07"); //Now get out of here before the militia get here!

	Log_CreateTopic	(TOPIC_MOD_MELDOR_PAKET, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MELDOR_PAKET, "Meldor gave me a pack of swampweed. He wants me to hide it in the dockside warehouse, because it looks like someone blackened it with the militia.");

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "MILIZ");
	B_StartOtherRoutine(Mod_543_MIL_Picasso_NW, "MILIZ");
};

FUNC VOID Info_Mod_Meldor_Hilfe_Nein()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Hilfe_Nein_15_00"); //No, do your stuff alone!
	AI_Output(self, hero, "Info_Mod_Meldor_Hilfe_Nein_07_01"); //Whatever you say, but you just missed a big chance.

	CreateInvItems	(self, ItMi_HerbPaket, 1);

	Info_ClearChoices	(Info_Mod_Meldor_Hilfe);

	AI_StopProcessInfos	(self);
	
	B_StartOtherRoutine(self, "MILIZ");
	B_StartOtherRoutine(Mod_543_MIL_Picasso_NW, "MILIZ");
};

INSTANCE Info_Mod_Meldor_PaketSicher (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_PaketSicher_Condition;
	information	= Info_Mod_Meldor_PaketSicher_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hid your package.";
};

FUNC INT Info_Mod_Meldor_PaketSicher_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hilfe))
	&& (Mob_HasItems("CHEST_ANDRE_WAREHOUSE_PACKET", ItMi_HerbPaket) == 1)
	&& (Mod_MeldorVerpfiffen == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_PaketSicher_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_00"); //I hid your package.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_01"); //Now will you tell me what this is all about?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_02"); //All right... the militia's been stalking me lately. They think I'm behind all that swampweed.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_03"); //You're stuck with me.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_04"); //Yes, but very few people, and certainly not the militia, know that.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_05"); //What dog were you talking about earlier?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_06"); //As I have already said, very few people in the barracks are aware of this, and there is no one in the barracks who knows too much.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_07"); //Before I forget, you saved my ass. The militia came to my house and searched me for swampweed.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_08"); //They're getting bolder all the time. Anyway, you're a decent guy and you can still be something!
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_09"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_10"); //If you want, I can introduce you to my boss. Could put in a good word for you.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_11"); //Well, where's your boss?
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_12"); //You'd better go alone, I'm too conspicuous. Go to the sleeping money bag, near the barracks.
	AI_Output(self, hero, "Info_Mod_Meldor_PaketSicher_07_13"); //Tell Hanna you're from Marshal's Office.
	AI_Output(hero, self, "Info_Mod_Meldor_PaketSicher_15_14"); //All right, I'll do it.

	B_SetTopicStatus	(TOPIC_MOD_MELDOR_PAKET, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_Göttergefallen(3, 1);

	Log_CreateTopic	(TOPIC_MOD_MELDOR_HANNA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_MELDOR_HANNA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_MELDOR_HANNA, "Meldor wants to put in a good word for me with his boss. I'm to speak to Hanna in the Sleeping Wallet.");
};

INSTANCE Info_Mod_Meldor_Mortis (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Mortis_Condition;
	information	= Info_Mod_Meldor_Mortis_Info;
	permanent	= 0;
	important	= 0;
	description	= "I hear you're trying to close a deal.";
};

FUNC INT Info_Mod_Meldor_Mortis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_NewsMilizDead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Mortis_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_00"); //I hear you're trying to close a deal.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_01"); //How the fuck do you know that?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_02"); //Mortis, the blacksmith of the barracks, knew about it.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_03"); //What? It was him?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_04"); //Yeah, that's what it looks like.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_05"); //I wish he'd go to jail for swampweed.
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_06"); //Can't you do that for me?
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_07"); //Where do I get a bog herb package?
	AI_Output(self, hero, "Info_Mod_Meldor_Mortis_07_08"); //I don't have any anymore at the moment, try and find one somewhere.
	AI_Output(hero, self, "Info_Mod_Meldor_Mortis_15_11"); //I'll do my best.

	B_LogEntry	(TOPIC_MOD_DIEB_ANDRE_MELDOR, "I warned Meldor. He wants me to give mortis a herb package. I'd better put it in his chest in the militia forge.");
};

INSTANCE Info_Mod_Meldor_WacholderDieb (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_WacholderDieb_Condition;
	information	= Info_Mod_Meldor_WacholderDieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey you!";
};

FUNC INT Info_Mod_Meldor_WacholderDieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Coragon_WhatHappened))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_WacholderDieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_00"); //Hey you!
	AI_Output(self, hero, "Info_Mod_Meldor_WacholderDieb_07_01"); //What do you want, kid?
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_02"); //Do you know anything about the theft at Coragon?
	AI_Output(self, hero, "Info_Mod_Meldor_WacholderDieb_07_03"); //From where? If you're looking for evidence, check with the Coragon's competitors. By that I mean Cardif and the landlord of the free beer stand.
	AI_Output(hero, self, "Info_Mod_Meldor_WacholderDieb_15_04"); //Thanks for the tip!

	B_LogEntry	(TOPIC_MOD_CORAGON_WACHOLDER, "Meldor gave me the tip to ask Kardif and the host of the free beer stand, as they are the competitors of Coragon.");
};

INSTANCE Info_Mod_Meldor_Aabid (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Aabid_Condition;
	information	= Info_Mod_Meldor_Aabid_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm from Aabid.";
};

FUNC INT Info_Mod_Meldor_Aabid_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_Aufgabe))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Aabid_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_00"); //I'm from Aabid.
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_01"); //(Surprised) Who?
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_02"); //Aabid, a man who ordered a bogweed package from you. He wonders where his order is.
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_03"); //Oh, that guy. I forgot all about him.
	AI_Output(hero, self, "Info_Mod_Meldor_Aabid_15_04"); //That's what I thought. Can you give me the package so I can bring it to him?
	AI_Output(self, hero, "Info_Mod_Meldor_Aabid_07_05"); //Sure, but only for the price of 150 gold coins.
};

INSTANCE Info_Mod_Meldor_AabidPaket (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_AabidPaket_Condition;
	information	= Info_Mod_Meldor_AabidPaket_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here are the coins.";
};

FUNC INT Info_Mod_Meldor_AabidPaket_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Meldor_Aabid))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_AabidPaket_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_AabidPaket_15_00"); //Here are the coins.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Meldor_AabidPaket_07_01"); //All right, here's your package.

	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	B_LogEntry	(TOPIC_MOD_ASS_AABID_PAKET, "I visited Meldor and received Aabid's package for 150 gold coins.");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Meldor_Skinner (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Skinner_Condition;
	information	= Info_Mod_Meldor_Skinner_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you interested in some green novices?";
};

FUNC INT Info_Mod_Meldor_Skinner_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Skinner_Info()
{
	AI_Output(hero, self, "Info_Mod_Meldor_Skinner_15_00"); //Are you interested in some green novices?
	AI_Output(self, hero, "Info_Mod_Meldor_Skinner_07_01"); //Sure, I'll take everything you got.
	AI_Output(hero, self, "Info_Mod_Meldor_Skinner_15_02"); //Here, take this.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, Npc_HasItems(hero, ItMi_Addon_Joint_01));

	AI_Output(self, hero, "Info_Mod_Meldor_Skinner_07_03"); //Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, Npc_HasItems(self, ItMi_Addon_Joint_01)*20);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "So I got rid of all the green novices in town.");
};

INSTANCE Info_Mod_Meldor_Flugblaetter (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Flugblaetter_Condition;
	information	= Info_Mod_Meldor_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Meldor_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Meldor_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	AI_Output(self, hero, "Info_Mod_Meldor_Flugblaetter_07_01"); //What do I care? Can his pamphlets be stuck anywhere else?
};

INSTANCE Info_Mod_Meldor_LobartAlwinScene (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_LobartAlwinScene_Condition;
	information	= Info_Mod_Meldor_LobartAlwinScene_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Meldor_LobartAlwinScene_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alwin_LobartScene))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Meldor_LobartAlwinScene_Info()
{
	AI_Output(self, hero, "Info_Mod_Meldor_LobartAlwinScene_07_00"); //You should drink less.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Meldor_Pickpocket (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_Pickpocket_Condition;
	information	= Info_Mod_Meldor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Meldor_Pickpocket_Condition()
{
	C_Beklauen	(50, ItMi_Joint, 3);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

	Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_BACK, Info_Mod_Meldor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Meldor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Meldor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Meldor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Meldor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Meldor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Meldor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Meldor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Meldor_EXIT (C_INFO)
{
	npc		= Mod_597_NONE_Meldor_NW;
	nr		= 1;
	condition	= Info_Mod_Meldor_EXIT_Condition;
	information	= Info_Mod_Meldor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Meldor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Meldor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
