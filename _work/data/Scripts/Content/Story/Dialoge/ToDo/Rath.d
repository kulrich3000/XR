INSTANCE Info_Mod_Rath_Hi (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Hi_Condition;
	information	= Info_Mod_Rath_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Rath_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rath_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Rath_Hi_08_01"); //I'm Rath. What do you want?
};

INSTANCE Info_Mod_Rath_Sumpfkraut (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Sumpfkraut_Condition;
	information	= Info_Mod_Rath_Sumpfkraut_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got a shipment of swampweed here.";
};

FUNC INT Info_Mod_Rath_Sumpfkraut_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Namib_Dealer))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Sumpfkraut_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_00"); //I got a shipment of swampweed here.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_01"); //Swampwort? What do I want with this shit?
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_02"); //Baal Namib told me to drop it off at your place.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_03"); //You're serious, aren't you?
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_04"); //If that were the case?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_05"); //It's too funny (laughs) Nobody smokes swampweed today!
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_06"); //That stuff is expensive, and you'll be high for an hour after that.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_07"); //I'm telling you, the future is in glee dispenser.
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_08"); //Pleasure giver? What is that again?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_09"); //Do you live behind the moon? Pleasure giver is THE new drug. Cheap, strong and fast.
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_10"); //Swampweed can't compete in any way!
	AI_Output(hero, self, "Info_Mod_Rath_Sumpfkraut_15_11"); //Sooso... and where do you get this giver of joy from?
	AI_Output(self, hero, "Info_Mod_Rath_Sumpfkraut_08_12"); //In Khorata, you're being chucked. There's a guy at the marketplace who's practically giving it away.

	B_LogEntry	(TOPIC_MOD_SEKTE_DEALER, "Rath thinks it's very amusing that I tried to sell him swampweed. He says that swamp herb is no longer smoked because it's far too expensive. The new drug is called Freudenspender, which a guy sells on the marketplace of Khorata. I was supposed to tell Baal Namib about it.");
};

INSTANCE Info_Mod_Rath_Training (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Training_Condition;
	information	= Info_Mod_Rath_Training_Info;
	permanent	= 0;
	important	= 0;
	description	= "Patrick's training is waiting for you.";
};

FUNC INT Info_Mod_Rath_Training_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Training))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Training_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_15_00"); //Patrick's training is waiting for you.
	AI_Output(self, hero, "Info_Mod_Rath_Training_08_01"); //Oh, man, you don't have to be. I'll go some other time.

	Info_ClearChoices	(Info_Mod_Rath_Training);

	Info_AddChoice	(Info_Mod_Rath_Training, "Then I might have to help you with a few strokes.", Info_Mod_Rath_Training_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Rath_Training, "I'll give you 100 gold coins. What do you say?", Info_Mod_Rath_Training_A);
	};
};

FUNC VOID Info_Mod_Rath_Training_B()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_B_15_00"); //Then I might have to help you with a few strokes.
	AI_Output(self, hero, "Info_Mod_Rath_Training_B_08_01"); //You wretch want to mess with me?! Come here!

	Info_ClearChoices	(Info_Mod_Rath_Training);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	Mod_SLD_Rath = 2;
};

FUNC VOID Info_Mod_Rath_Training_A()
{
	AI_Output(hero, self, "Info_Mod_Rath_Training_A_15_00"); //I'll give you 100 gold coins. What do you say?
	AI_Output(self, hero, "Info_Mod_Rath_Training_A_08_01"); //A hundred gold coins? What do I want with it? No, if you get me five green novices or 12 plain swampweed stalks, I'm in.

	Info_ClearChoices	(Info_Mod_Rath_Training);

	Mod_SLD_Rath = 1;
};

INSTANCE Info_Mod_Rath_Joints (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Joints_Condition;
	information	= Info_Mod_Rath_Joints_Info;
	permanent	= 1;
	important	= 0;
	description	= "Here you have....";
};

FUNC INT Info_Mod_Rath_Joints_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Training))
	&& (Mod_SLD_Rath == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Joints_Info()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_15_00"); //Here you have....
	
	Info_ClearChoices	(Info_Mod_Rath_Joints);

	Info_AddChoice	(Info_Mod_Rath_Joints, DIALOG_BACK, Info_Mod_Rath_Joints_C);

	if (Npc_HasItems(hero, ItMi_Joint) >= 12)
	{
		Info_AddChoice	(Info_Mod_Rath_Joints, "... 12 stems of bogweed", Info_Mod_Rath_Joints_B);
	};
	if (Npc_HasItems(hero, ItMi_Addon_Joint_01) >= 5)
	{
		Info_AddChoice	(Info_Mod_Rath_Joints, "... 5 green novices", Info_Mod_Rath_Joints_A);
	};
};

FUNC VOID Info_Mod_Rath_Joints_C()
{
	Info_ClearChoices	(Info_Mod_Rath_Joints);
};

FUNC VOID Info_Mod_Rath_Joints_D()
{
	AI_Output(self, hero, "Info_Mod_Rath_Joints_D_08_00"); //Excellent. You actually don't seem to be in the camp for long. I'd even take on two trolls at a time for that much swampweed.

	Info_ClearChoices	(Info_Mod_Rath_Joints);

	AI_StopProcessInfos	(self);

	Mod_SLD_Rath = 3;

	B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "So, with a little persuasion, Rath is on his way to practice.");

	B_StartOtherRoutine	(self, "TRAINING");
};

FUNC VOID Info_Mod_Rath_Joints_B()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_B_15_00"); //... 12 stems of bogweed.

	B_GiveInvItems	(hero, self, ItMi_Joint, 12);

	Info_Mod_Rath_Joints_D();
};

FUNC VOID Info_Mod_Rath_Joints_A()
{
	AI_Output(hero, self, "Info_Mod_Rath_Joints_A_15_00"); //... 5 green novices.

	B_GiveInvItems	(hero, self, ItMi_Addon_Joint_01, 5);

	Info_Mod_Rath_Joints_D();
};

INSTANCE Info_Mod_Rath_Umgehauen (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Umgehauen_Condition;
	information	= Info_Mod_Rath_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rath_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Training))
	&& (Mod_SLD_Rath == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rath_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_00"); //Damn it, my back...
			AI_Output(hero, self, "Info_Mod_Rath_Umgehauen_15_01"); //Well, a little workout will do your back good.
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_02"); //Yeah, yeah, I'm going.

			Mod_SLD_Rath = 3;

			B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "So, with a little persuasion, Rath is on his way to practice.");

			B_StartOtherRoutine	(self, "TRAINING");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Rath_Umgehauen_08_03"); //Nothing with training.

			Mod_SLD_Rath = 1;
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Rath_Pickpocket (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_Pickpocket_Condition;
	information	= Info_Mod_Rath_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Rath_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Rath_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

	Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_BACK, Info_Mod_Rath_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rath_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rath_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
};

FUNC VOID Info_Mod_Rath_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rath_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rath_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rath_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rath_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rath_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rath_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rath_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rath_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rath_EXIT (C_INFO)
{
	npc		= Mod_1308_SLD_Rath_MT;
	nr		= 1;
	condition	= Info_Mod_Rath_EXIT_Condition;
	information	= Info_Mod_Rath_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rath_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rath_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
