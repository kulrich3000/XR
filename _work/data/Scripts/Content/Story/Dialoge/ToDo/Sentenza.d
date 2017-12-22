INSTANCE Info_Mod_Sentenza_Hi (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Hi_Condition;
	information	= Info_Mod_Sentenza_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kagan_Isidro))
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 6)
	&& (Npc_HasItems(hero, ItMi_Addon_Joint_02) >= 6)
	&& (Npc_HasItems(hero, ItMi_Traumruf) >= 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_00"); //I heard you got some bogweed stalks from Baal Kagan. Let me have a look.
	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_01"); //Aah, 10 stems.

	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_01, 5);
	Npc_RemoveInvItems	(hero, ItMi_Addon_Joint_02, 4);
	Npc_RemoveInvItems	(hero, ItMi_Traumruf, 1);

	B_ShowGivenThings	("10 stems of swamp herb given");

	AI_Output(self, hero, "Info_Mod_Sentenza_Hi_09_02"); //(To the hero) Okay, you can continue now.
};

INSTANCE Info_Mod_Sentenza_Killer (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Killer_Condition;
	information	= Info_Mod_Sentenza_Killer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Killer_Condition()
{
	if (Mod_SLD_Spy == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Killer_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_00"); //You don't have to say anything, I already know what it's about. You know, maybe we can still avert the attack.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_01"); //All you have to do is take this bloody sword and this letter and smuggle them both into Cutter's chest and spread rumors about him, so that his chest can be inspected in any case.
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_15_02"); //I hadn't even mentioned that the witness's editor... you committed the murder.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_03"); //So what if I do?
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_09_04"); //If you keep your mouth shut, Lee doesn't say a word about the whole thing and if you do your job nicely, nobody will be harmed and you'll have a lot of fun. So?

	Info_ClearChoices	(Info_Mod_Sentenza_Killer);

	Info_AddChoice	(Info_Mod_Sentenza_Killer, "No, I don't let myself get involved in such dirty games.", Info_Mod_Sentenza_Killer_B);
	Info_AddChoice	(Info_Mod_Sentenza_Killer, "Okay, I'll do it.", Info_Mod_Sentenza_Killer_A);
};

FUNC VOID Info_Mod_Sentenza_Killer_B()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_B_15_00"); //No, I don't let myself get involved in such dirty games.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_B_09_01"); //All right, then. But you'll regret this.

	Mod_SLD_Spy = 1;
	
	Info_ClearChoices	(Info_Mod_Sentenza_Killer);
};

FUNC VOID Info_Mod_Sentenza_Killer_A()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Killer_A_15_00"); //Okay, I'll do it.
	AI_Output(self, hero, "Info_Mod_Sentenza_Killer_A_09_01"); //Good. You know what you have to do.

	CreateInvItems	(hero, ItMw_BloodySword, 1);
	CreateInvItems	(hero, ItWr_SentenzaForCutter, 1);

	B_ShowGivenThings	("Bloody sword and note received");

	Mod_SLD_Spy = 5;

	B_LogEntry	(TOPIC_MOD_SLD_SPY, "I have received a bloody sword from Sentenza and a letter which I am to smuggle into Cutter's chest. After that, all I have to do is spread the rumor that Cutter had something to do with Bullit's death.");
	
	Info_ClearChoices	(Info_Mod_Sentenza_Killer);
};

INSTANCE Info_Mod_Sentenza_Cutter (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Cutter_Condition;
	information	= Info_Mod_Sentenza_Cutter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I did everything you told me to do.";
};

FUNC INT Info_Mod_Sentenza_Cutter_Condition()
{
	if (Mod_SLD_Spy == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Cutter_Info()
{
	AI_Output(hero, self, "Info_Mod_Sentenza_Cutter_15_00"); //I did everything you told me to do.
	AI_Output(self, hero, "Info_Mod_Sentenza_Cutter_09_01"); //Very good. Very good. That'll save some trouble. Here, take the gold as a reward.

	B_ShowGivenThings	("400 gold and 12 ore preserved");

	CreateInvItems	(hero, ItMi_Gold, 400);
	CreateInvItems	(hero, ItMi_Nugget, 12);

	Mod_SLD_Spy = 8;

	AI_Output(self, hero, "Info_Mod_Sentenza_Cutter_09_02"); //You've come a long way towards joining the ranks of the Orc hunters. Way to go.

	B_GivePlayerXP	(600);

	B_SetTopicStatus	(TOPIC_MOD_SLD_SPY, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sentenza_Bruce (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Bruce_Condition;
	information	= Info_Mod_Sentenza_Bruce_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sentenza_Bruce_Condition()
{
	if (Mod_NL_BruceTot == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sentenza_Bruce_Info()
{
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_00"); //Hey, you're a fit fellow, aren't you? Yes, you are. A lot of getting around and fighting experience.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_01"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_02"); //Well, some time ago I was out in front of the camp chasing animals. I saw one of those bloodhounds.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_03"); //I immediately hit the cattle with my sword and rammed it into his body.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_04"); //Unfortunately, the filthy creature turned away suddenly and ran away with my sword in his body.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_05"); //It took the way up in front of our camp, probably hiding in its cave.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_06"); //Now this sword was a family heirloom, I have only fought with it since my youth.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_07"); //I want it back so badly.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_08"); //And I'm supposed to get it for you.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_09"); //Yeah, that's right. I'd let a big chunk of ore jump for that, too.... the blade is worth it to me.
	AI_Output(hero, self, "Info_Mod_Sentenza_Bruce_15_10"); //Okay, let's see what we can do.
	AI_Output(self, hero, "Info_Mod_Sentenza_Bruce_09_11"); //Great! I'm counting on you.

	Log_CreateTopic	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_NL_SENTENZAKLINGE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_NL_SENTENZAKLINGE, "Sentenza told me that during a fight he drilled his beloved sword into a bloodhound and the cattle and his sword ran away. It is said to have taken the way up in front of the camp and is probably sitting there in a cave. He promised me a big reward for getting the gun back, because he seems to be very attached to it.");

	Wld_InsertNpc	(Mod_7641_BUD_Buddler_MT, "OC1");
	B_KillNpc	(Mod_7641_BUD_Buddler_MT);
};

INSTANCE Info_Mod_Sentenza_Pickpocket (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_Pickpocket_Condition;
	information	= Info_Mod_Sentenza_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sentenza_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

	Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_BACK, Info_Mod_Sentenza_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sentenza_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sentenza_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sentenza_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sentenza_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sentenza_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sentenza_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sentenza_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sentenza_EXIT (C_INFO)
{
	npc		= Mod_796_SLD_Sentenza_MT;
	nr		= 1;
	condition	= Info_Mod_Sentenza_EXIT_Condition;
	information	= Info_Mod_Sentenza_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sentenza_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sentenza_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
