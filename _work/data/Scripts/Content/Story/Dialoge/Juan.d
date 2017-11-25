INSTANCE Info_Mod_Juan_Quest (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Quest_Condition;
	information	= Info_Mod_Juan_Quest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Juan_Quest_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& (Mod_AlbertTransforms >= 8)
	&& (Mod_Dexter_BanditenParty + 2 <= Wld_GetDay()))
	|| ((Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	&& (Banditen_Dabei == FALSE))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Quest_Info()
{
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_00"); //Hey, aren't you a tough guy? Of course you are, you've proven it.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_01"); //And you like challenges. Then I've got the right job for you, where you'll get a good deal.
	AI_Output(hero, self, "Info_Mod_Juan_Quest_15_02"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_03"); //There's a trader who owns something I'd like to have. And since you're such a smart guy, you'll get it for me.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_13_04"); //I'll have 300 gold coins jumped for that. What do you say?

	Info_ClearChoices	(Info_Mod_Juan_Quest);

	Info_AddChoice	(Info_Mod_Juan_Quest, "No, you should find someone else.", Info_Mod_Juan_Quest_B);
	Info_AddChoice	(Info_Mod_Juan_Quest, "Yeah, I'm in.", Info_Mod_Juan_Quest_A);
};

FUNC VOID Info_Mod_Juan_Quest_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_B_15_00"); //No, you should find someone else.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_B_13_01"); //Pah, then don't.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

FUNC VOID Info_Mod_Juan_Quest_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_A_15_00"); //Yeah, I'm in.
	AI_Output(self, hero, "Info_Mod_Juan_Quest_A_13_01"); //Great! The merchant's name is Antony. He'd have to be loafing around the Old Camp these days. Hit him down and just bring me everything he's got, okay?

	Mod_JuanQuest = 1;

	Log_CreateTopic	(TOPIC_MOD_BDT_JUAN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "I am to rob the merchant Antonius for Juan, who stands in front of the old camp.");

	Wld_InsertNpc	(Mod_7189_OUT_Antonius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);

	Info_AddChoice	(Info_Mod_Juan_Quest, "What exactly am I supposed to get?", Info_Mod_Juan_Quest_D);
	Info_AddChoice	(Info_Mod_Juan_Quest, "I should probably be able to do that.", Info_Mod_Juan_Quest_C);
};

FUNC VOID Info_Mod_Juan_Quest_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_D_15_00"); //What exactly am I supposed to get?
	AI_Output(self, hero, "Info_Mod_Juan_Quest_D_13_01"); //Just bring me everything he's got. He'll have it with him.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

FUNC VOID Info_Mod_Juan_Quest_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Quest_C_15_00"); //I should probably be able to do that.
	
	Info_ClearChoices	(Info_Mod_Juan_Quest);
};

INSTANCE Info_Mod_Juan_Antonius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Antonius_Condition;
	information	= Info_Mod_Juan_Antonius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Uh, I've got everything the dealer had on me.";
};

FUNC INT Info_Mod_Juan_Antonius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& (Mod_JuanQuest == 1)
	&& (Npc_IsDead(Mod_7189_OUT_Antonius_MT))
	&& (Npc_HasItems(hero, ItMi_Stuff_Barbknife_01) >= 10)
	&& (Npc_HasItems(hero, ItMi_Pan) >= 3)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 150)
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 10)
	&& (Npc_HasItems(hero, ItFo_Cheese) >= 1)
	&& (Npc_HasItems(hero, ItFo_Bread) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Antonius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_00"); //Uh, I've got everything the dealer had on me.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_01"); //Yeah, show me.
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_02"); //There are razors, pans, some bottles of grog, 1 piece of cheese....
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_03"); //Oh, damn it, keep the crap. Although... I'll take the grog.

	B_GiveInvItems	(hero, self, ItFo_Addon_Grog, 10);

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_04"); //(to himself) Then he must have already resold it to Hortensius...
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_15_05"); //What about my gold now?

	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Antonius_13_06"); //Very funny. I'll make you an offer. If you rob another merchant who has to have the goods with him, I add 50 gold.

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "Forget about it. Just give me my gold.", Info_Mod_Juan_Antonius_C);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "I want to know what I'm gonna get you first.", Info_Mod_Juan_Antonius_B);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "All right, I'll do it.", Info_Mod_Juan_Antonius_A);
};

FUNC VOID Info_Mod_Juan_Antonius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_C_15_00"); //Forget about it. Just give me my gold.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_C_13_01"); //I'll give you 100 gold and no more coins.
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "You give me the agreed sum, or I'll get it!", Info_Mod_Juan_Antonius_E);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "Okay, just 100 then...", Info_Mod_Juan_Antonius_D);
};

FUNC VOID Info_Mod_Juan_Antonius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_B_15_00"); //I want to know what I'm gonna get you first.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_B_13_01"); //Okay, it's a book. The dealer is called Hortensius. He's got to be somewhere near the marsh mothers. As usual, knock down and bring me everything.
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	Info_AddChoice	(Info_Mod_Juan_Antonius, "Forget about it. Just give me my gold.", Info_Mod_Juan_Antonius_C);
	Info_AddChoice	(Info_Mod_Juan_Antonius, "All right, I'm leaving.", Info_Mod_Juan_Antonius_F);
};

FUNC VOID Info_Mod_Juan_Antonius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_A_15_00"); //All right, I'll do it.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_A_13_01"); //Okay, the dealer's name is Hortensius. He's got to be somewhere near the marsh mothers. As usual, knock down and bring me everything.

	Mod_JuanQuest = 2;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Damn it! Antony didn't have the item Juan wanted with him. Now I can run to the swamp camp and rob Hortensius.");

	Wld_InsertNpc	(Mod_7190_OUT_Hortensius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

FUNC VOID Info_Mod_Juan_Antonius_E()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_E_15_00"); //You give me the agreed sum, or I'll get it!
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_E_13_01"); //You're threatening me?
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 340);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Antonius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_D_15_00"); //Okay, just 100 then...

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_FAILED);
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

FUNC VOID Info_Mod_Juan_Antonius_F()
{
	AI_Output(hero, self, "Info_Mod_Juan_Antonius_F_15_00"); //All right, I'm leaving.
	
	Mod_JuanQuest = 2;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "Damn it! Antony didn't have the item Juan wanted with him. Now I can run to the swamp camp and rob Hortensius.");

	Wld_InsertNpc	(Mod_7190_OUT_Hortensius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

INSTANCE Info_Mod_Juan_Hortensius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Hortensius_Condition;
	information	= Info_Mod_Juan_Hortensius_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's the stuff.";
};

FUNC INT Info_Mod_Juan_Hortensius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& (Mod_JuanQuest == 2)
	&& (Npc_IsDead(Mod_7190_OUT_Hortensius_MT))
	&& (Npc_HasItems(hero, ItMi_Scoop) >= 7)
	&& (Npc_HasItems(hero, ItMi_Stomper) >= 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 140)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 12)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 6)
	&& (Npc_HasItems(hero, ItMi_Lute) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Hortensius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_15_00"); //Here's the stuff.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_01"); //Damn, it can't be... unless...
	
	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_02"); //(to himself) then Florentius must have it.
	
	AI_TurnToNpc	(self, hero);

	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_03"); //I'll add another 50 gold to it if you go to the New Camp and bring me the book that Florentius MUST have.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_13_04"); //Oh, and I'll keep the juniper.

	B_GiveInvItems	(hero, self, ItFo_Booze, 12);

	B_GivePlayerXP	(100);

	Info_ClearChoices	(Info_Mod_Juan_Hortensius);

	Info_AddChoice	(Info_Mod_Juan_Hortensius, "Now, that's enough! Just give me my gold.", Info_Mod_Juan_Hortensius_B);
	Info_AddChoice	(Info_Mod_Juan_Hortensius, "(slightly resignative) Okay, then to a third.", Info_Mod_Juan_Hortensius_A);
};

FUNC VOID Info_Mod_Juan_Hortensius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_B_15_00"); //Now, that's enough! Just give me my gold.
	AI_Output(self, hero, "Info_Mod_Juan_Hortensius_B_13_01"); //Give yourself 150.
	
	Info_ClearChoices	(Info_Mod_Juan_Hortensius);

	Info_AddChoice	(Info_Mod_Juan_Hortensius, "Are you kidding me?! Give me the agreed sum or I'll get it.", Info_Mod_Juan_Hortensius_D);
	Info_AddChoice	(Info_Mod_Juan_Hortensius, "All right, that can't be helped.", Info_Mod_Juan_Hortensius_c);
};

FUNC VOID Info_Mod_Juan_Hortensius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_A_15_00"); //(slightly resignative) Okay, then to a third.
	
	Mod_JuanQuest = 3;

	B_LogEntry	(TOPIC_MOD_BDT_JUAN, "I'm starting to like it! Since Hortensius was also not in possession of the artifact, this time I am to run to the New Camp to exclude Florentius.");

	Wld_InsertNpc	(Mod_7191_OUT_Florentius_MT, "OC1");
	
	Info_ClearChoices	(Info_Mod_Juan_Hortensius);
};

FUNC VOID Info_Mod_Juan_Hortensius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_D_15_00"); //Are you kidding me?! Give me the agreed sum, or I'll get it.
	AI_Output(self, hero, "Info_Mod_Juan_Antonius_E_13_01"); //You're threatening me?

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 290);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Hortensius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Hortensius_C_15_00"); //All right, that can't be helped.

	B_GiveInvItems	(self, hero, ItMi_Gold, 150);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_FAILED);
	
	Info_ClearChoices	(Info_Mod_Juan_Antonius);
};

INSTANCE Info_Mod_Juan_Florentius (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Florentius_Condition;
	information	= Info_Mod_Juan_Florentius_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the book.";
};

FUNC INT Info_Mod_Juan_Florentius_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Juan_Quest))
	&& ((Mod_JuanQuest == 3)
	|| (Mod_JuanQuest == 4))
	&& (Npc_IsDead(Mod_7191_OUT_Florentius_MT))
	&& (Npc_HasItems(hero, ItWr_JuanBook) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Juan_Florentius_Info()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_15_00"); //I have the book.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_13_01"); //Yes?! Give it to me.
	
	B_GivePlayerXP	(500);

	CurrentNQ += 1;

	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	if (Mod_JuanQuest == 4)
	{
		Info_AddChoice	(Info_Mod_Juan_Florentius, "The price went up.", Info_Mod_Juan_Florentius_B);
	};
	Info_AddChoice	(Info_Mod_Juan_Florentius, "Here you have it.", Info_Mod_Juan_Florentius_A);
};

FUNC VOID Info_Mod_Juan_Florentius_B()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_B_15_00"); //The price went up.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_B_13_01"); //What do you mean?!
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_B_15_02"); //That it costs more now. The merchants would probably be interested to know that I robbed them on your behalf.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_B_13_03"); //You dirty bastard.... How much do you want?
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	Info_AddChoice	(Info_Mod_Juan_Florentius, "1,000 gold.", Info_Mod_Juan_Florentius_E);
	Info_AddChoice	(Info_Mod_Juan_Florentius, "700 gold.", Info_Mod_Juan_Florentius_D);
	Info_AddChoice	(Info_Mod_Juan_Florentius, "500 gold.", Info_Mod_Juan_Florentius_c);
};

FUNC VOID Info_Mod_Juan_Florentius_A()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_A_15_00"); //Here you have it.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	AI_Output(self, hero, "Info_Mod_Juan_Florentius_A_13_01"); //Very good. Very good. Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, 400);

	B_GivePlayerXP	(300);
	
	Mod_JuanQuest = 5;

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);
};

FUNC VOID Info_Mod_Juan_Florentius_E()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_E_15_00"); //1,000 gold.
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_E_13_01"); //Hold still for a second. There's a big, ugly beast on your shoulder.
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItMi_Gold, 723);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Juan_Florentius_F(var int Goldi)
{
	AI_Output(self, hero, "Info_Mod_Juan_Florentius_F_13_00"); //All right, all right. Here's your gold.

	B_GiveInvItems	(self, hero, ItMi_Gold, Goldi);

	AI_Output(self, hero, "Info_Mod_Juan_Florentius_F_13_01"); //Now, give me the book.

	B_GiveInvItems	(hero, self, ItWr_JuanBook, 1);

	B_GivePlayerXP	(300);
	
	Mod_JuanQuest = 5;

	B_Göttergefallen(3, 1);

	B_SetTopicStatus	(TOPIC_MOD_BDT_JUAN, LOG_SUCCESS);
	
	Info_ClearChoices	(Info_Mod_Juan_Florentius);
};

FUNC VOID Info_Mod_Juan_Florentius_D()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_D_15_00"); //700 gold.

	Info_Mod_Juan_Florentius_F(700);
};

FUNC VOID Info_Mod_Juan_Florentius_C()
{
	AI_Output(hero, self, "Info_Mod_Juan_Florentius_C_15_00"); //500 gold.

	Info_Mod_Juan_Florentius_F(500);
};

INSTANCE Info_Mod_Juan_Pickpocket (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_Pickpocket_Condition;
	information	= Info_Mod_Juan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Juan_Pickpocket_Condition()
{
	C_Beklauen	(69, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Juan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

	Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_BACK, Info_Mod_Juan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Juan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Juan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
};

FUNC VOID Info_Mod_Juan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Juan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Juan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Juan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Juan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Juan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Juan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Juan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Juan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Juan_EXIT (C_INFO)
{
	npc		= Mod_955_BDT_Juan_MT;
	nr		= 1;
	condition	= Info_Mod_Juan_EXIT_Condition;
	information	= Info_Mod_Juan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Juan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Juan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
