INSTANCE Info_Mod_Tom_Hi (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Hi_Condition;
	information	= Info_Mod_Tom_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Hi_Condition()
{
	var C_Item itm;
	itm = Npc_GetEquippedArmor(other);
	
	if (Hlp_IsItem(itm, ITAR_MIL_L) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_MIL_M) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_M) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_H) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_PAL_TIGER) == TRUE)
	|| (Hlp_IsItem(itm, ITAR_MIL_s2) == TRUE)
	|| (hero.guild == GIL_PAL)
	{
		return 0;
	}
	else if (Mod_Gilde > 0)
	&& (Mod_DidCrime)
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_00"); //Hey, what do you say we talk about Bloodwyn's money-raising in the warehouse back then?
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_01"); //What?! It's been a long time... who cares....
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_02"); //So are you the guy from the colony back then?
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_03"); //What do you think?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_04"); //At that time I was a Buddler in the Old Camp and I thought I recognized you as a fellow prisoner.
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_05"); //To be honest, I asked you this question.
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_06"); //What's the point?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_07"); //Well, I have a problem that I can't necessarily trust every petty-bourgeois bourgeois from this town.... but rather another ex-con.
	AI_Output(hero, self, "Info_Mod_Tom_Hi_15_08"); //What am I supposed to do for you?
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_09"); //Buddy of mine has a camp by the bridge near the tavern. I've learned, however, that a small militia force has left there.
	AI_Output(self, hero, "Info_Mod_Tom_Hi_11_10"); //You have to warn him.

	Mod_Tom_Boese = TRUE;

	Log_CreateTopic	(TOPIC_MOD_TOMSFREUND, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "A certain Tom asked me to warn his friend, who is near the tavern by a bridge, against a militia troop.");
};

INSTANCE Info_Mod_Tom_Franco (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Franco_Condition;
	information	= Info_Mod_Tom_Franco_Info;
	permanent	= 0;
	important	= 0;
	description	= "I warned Franco.";
};

FUNC INT Info_Mod_Tom_Franco_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Franco_Warnung))
	&& (Mod_Tom_Boese == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Franco_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Franco_15_00"); //I warned Franco. He said he was going to Edgor's.
	AI_Output(self, hero, "Info_Mod_Tom_Franco_11_01"); //Very well, thank you.

	B_LogEntry	(TOPIC_MOD_TOMSFREUND, "I told Tom about the escape from Franco.");
	B_SetTopicStatus	(TOPIC_MOD_TOMSFREUND, LOG_SUCCESS);

	Mod_Tom_Boese = FALSE;

	B_GivePlayerXP	(100);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Tom_Belohnung (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Belohnung_Condition;
	information	= Info_Mod_Tom_Belohnung_Info;
	permanent	= 0;
	important	= 0;
	description	= "How about a reward?";
};

FUNC INT Info_Mod_Tom_Belohnung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tom_Franco))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Belohnung_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Belohnung_15_00"); //How about a reward?
	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_01"); //Well, you did me a favor, now I'll do you one.
	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_02"); //Take this ring and go to Edgor. It is located near Bengar's farm.

	B_GiveInvItems	(self, hero, Mod_Banditenring, 1);

	AI_Output(self, hero, "Info_Mod_Tom_Belohnung_11_03"); //You'll have to do something for him, and then he'll give you the first half of a word. If you have both halves, you can go to our main camp and you will be taken in.

	Log_CreateTopic	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AUFNAHME_BANDITEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AUFNAHME_BANDITEN, "Tom gave me a ring to go to Edgor with. From this I then get the first half of a word. When I have both halves, I'll be admitted.");
};

INSTANCE Info_Mod_Tom_Krautquest (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest_Condition;
	information	= Info_Mod_Tom_Krautquest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Krautquest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_TomKraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_00"); //You here? Listen, you gotta help me.
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_01"); //The pigs caught me with marsh plants and want to make me stay in the dungeon.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest_15_02"); //Shall I buy you out?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest_11_03"); //Yeah, see what you can do. Although I'm not sure if Andre's gonna get involved.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest_15_04"); //Okay, I'll talk to him.

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "I should see if I can get Andre released.");
};

INSTANCE Info_Mod_Tom_Krautquest2 (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest2_Condition;
	information	= Info_Mod_Tom_Krautquest2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bad news...";
};

FUNC INT Info_Mod_Tom_Krautquest2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_TomKraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest2_Info()
{
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_00"); //Bad news...
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_01"); //Yeah, I know, I heard everything.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_02"); //What next?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_03"); //Well, let me think about it.... As far as I can see, the marsh weed is in the evidence chest behind Andre....
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_04"); //Should I steal it?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_05"); //No, I guess it's not that simple.
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_06"); //Ultimately, the gatekeepers can testify how the herb was taken from me.... and only Mica's word means a lot.
	AI_Output(hero, self, "Info_Mod_Tom_Krautquest2_15_07"); //What then?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_08"); //Hmm... the herb they have seen....
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest2_11_09"); //That reminds me that I once saw an herb that looked very similar to swamp weed.... but it just wasn't a swamp herb.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Tom mentioned another herb that looks very similar to swampwort.... If I swapped the marsh weed in the chest with this...");
};

INSTANCE Info_Mod_Tom_Krautquest3 (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Krautquest3_Condition;
	information	= Info_Mod_Tom_Krautquest3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Tom_Krautquest3_Condition()
{
	if (Mod_SenyanTom_Kraut == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Tom_Krautquest3_Info()
{
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_00"); //You did a great job of making that work. And I was afraid I'd have to stay there forever. (laughs)
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_01"); //You should have seen Andre's face when he let me out of the cell and pressed a big bag full of coins into my hand with words of regret, huh?
	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_02"); //Here, the gold is yours, of course.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_03"); //And take this ring, too. You deserved that, too.

	B_GiveInvItems	(self, hero, ItRi_Talentring, 1);

	AI_Output(self, hero, "Info_Mod_Tom_Krautquest3_11_04"); //Take care of yourself.

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_TOM_KRAUT, LOG_SUCCESS);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Tom_Pickpocket (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_Pickpocket_Condition;
	information	= Info_Mod_Tom_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Tom_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Tom_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

	Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_BACK, Info_Mod_Tom_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Tom_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Tom_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
};

FUNC VOID Info_Mod_Tom_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Tom_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Tom_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Tom_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Tom_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Tom_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Tom_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Tom_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Tom_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Tom_EXIT (C_INFO)
{
	npc		= Mod_967_BDT_Tom_NW;
	nr		= 1;
	condition	= Info_Mod_Tom_EXIT_Condition;
	information	= Info_Mod_Tom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Tom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Tom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
