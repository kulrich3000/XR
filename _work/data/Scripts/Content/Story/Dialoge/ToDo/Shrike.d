INSTANCE Info_Mod_Shrike_Hi (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Hi_Condition;
	information	= Info_Mod_Shrike_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hey, Patrick told you to stop by his place for practice.";
};

FUNC INT Info_Mod_Shrike_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_Training))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_15_00"); //Hey, Patrick told you to stop by his place for practice.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_07_01"); //I don't feel like it.

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	if (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Shrike_Hi, "You'll also get 100 gold coins.", Info_Mod_Shrike_Hi_B);
	};
	Info_AddChoice	(Info_Mod_Shrike_Hi, "Then I'll have to drive you to him with my punches.", Info_Mod_Shrike_Hi_A);
};

FUNC VOID Info_Mod_Shrike_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_B_15_00"); //You'll also get 100 gold coins.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_B_07_01"); //For 100 gold coins, I won't even put my foot in front of the cave.

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	if (Npc_HasItems(hero, ItMi_Gold) >= 200)
	{
		Info_AddChoice	(Info_Mod_Shrike_Hi, "Okay, how about 200 gold coins?", Info_Mod_Shrike_Hi_C);
	};
	Info_AddChoice	(Info_Mod_Shrike_Hi, "Then I'll have to drive you to him with my punches.", Info_Mod_Shrike_Hi_A);
};

FUNC VOID Info_Mod_Shrike_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_A_15_00"); //Then I'll have to drive you to him with my punches.
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_A_07_01"); //Oh, yeah?! Why don't you give it a try?

	Info_ClearChoices	(Info_Mod_Shrike_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Shrike_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Shrike_Hi_C_15_00"); //Okay, how about 200 gold coins?
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_C_07_01"); //200 gold coins?! Okay, give it to me!

	B_GiveInvItems	(hero, self, ItMi_Gold, 200);

	AI_Output(hero, self, "Info_Mod_Shrike_Hi_C_15_02"); //And what about now?
	AI_Output(self, hero, "Info_Mod_Shrike_Hi_C_07_03"); //Nothing is. I got your gold, but I'm still not going on the rocks.

	Info_Mod_Shrike_Hi_A();
};

INSTANCE Info_Mod_Shrike_Umgehauen (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Umgehauen_Condition;
	information	= Info_Mod_Shrike_Umgehauen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shrike_Umgehauen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shrike_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_Umgehauen_Info()
{
	if (self.aivar[AIV_LastPlayerAR] == AR_NONE) //Kampf aus Dialog heraus.
	{
		if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_LOST)
		{
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_00"); //Ohh, my bones. You son of a bitch...
			AI_Output(hero, self, "Info_Mod_Shrike_Umgehauen_15_01"); //How about some more talking?
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_02"); //(reluctantly) Yes, I'm already leaving...

			Mod_SLD_Shrike = 1;

			B_LogEntry	(TOPIC_MOD_SLD_PATRICK, "Okay, Shrike got a beating and is on his way to see Patrick.");

			B_StartOtherRoutine	(self, "SMOKING");
		}
		else if (B_GetAivar(self, AIV_LastFightAgainstPlayer) == FIGHT_WON)
		{
			AI_Output(self, hero, "Info_Mod_Shrike_Umgehauen_07_03"); //Weakling.
		};
							
		// ------ In jedem Fall: Arena-Kampf abgeschlossen ------
		self.aivar[AIV_ArenaFight] = AF_NONE;
		
		// ------ AIVAR resetten! ------	
		self.aivar[AIV_LastFightComment] = TRUE;
	};
};

INSTANCE Info_Mod_Shrike_NoSmokingNow (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_NoSmokingNow_Condition;
	information	= Info_Mod_Shrike_NoSmokingNow_Info;
	permanent	= 0;
	important	= 0;
	description	= "Didn't I tell you to go to practice?!";
};

FUNC INT Info_Mod_Shrike_NoSmokingNow_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Patrick_SindAlleDa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shrike_NoSmokingNow_Info()
{
	AI_Output(hero, self, "Info_Mod_Shrike_NoSmokingNow_15_00"); //Didn't I tell you to go to practice?!
	AI_Output(self, hero, "Info_Mod_Shrike_NoSmokingNow_07_01"); //What?! Oh, shit, it's you. Yeah, I'll be on my way right away.

	AI_StopProcessInfos	(self);

	Mod_SLD_Shrike = 2;

	B_StartOtherRoutine	(self, "PATRICK");
};

INSTANCE Info_Mod_Shrike_Pickpocket (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_Pickpocket_Condition;
	information	= Info_Mod_Shrike_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Shrike_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

	Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_BACK, Info_Mod_Shrike_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shrike_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shrike_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shrike_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shrike_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shrike_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shrike_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shrike_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shrike_EXIT (C_INFO)
{
	npc		= Mod_1292_SLD_Shrike_MT;
	nr		= 1;
	condition	= Info_Mod_Shrike_EXIT_Condition;
	information	= Info_Mod_Shrike_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shrike_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shrike_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
