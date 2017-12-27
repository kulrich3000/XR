INSTANCE Info_Mod_Wasili_BelohnungMaria (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_BelohnungMaria_Condition;
	information	= Info_Mod_Wasili_BelohnungMaria_Info;
	permanent	= 0;
	important	= 0;
	description	= "Maria said you should give me another 200 gold coins.";
};

FUNC INT Info_Mod_Wasili_BelohnungMaria_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Maria_BelohnungOnar))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wasili_BelohnungMaria_Info()
{
	AI_Output(hero, self, "Info_Mod_Wasili_BelohnungMaria_15_00"); //Maria said you should give me another 200 gold coins.
	AI_Output(self, hero, "Info_Mod_Wasili_BelohnungMaria_01_01"); //What?! What if Onar finds out? Then Maria won't even be able to protect me from his anger.
	AI_Output(self, hero, "Info_Mod_Wasili_BelohnungMaria_01_02"); //100 gold coins. That's all I can give you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	Mod_WM_WasiliTag = Wld_GetDay();
	Mod_WM_WasiliQuest = 1;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Wasili_Verbannt_01 (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_Verbannt_01_Condition;
	information	= Info_Mod_Wasili_Verbannt_01_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Wasili_Verbannt_01_Condition()
{
	if (Mod_WM_WasiliQuest == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wasili_Verbannt_01_Info()
{
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_01_00"); //(slurping) Fucking hell. He threw me out of the yard.
	AI_Output(hero, self, "Info_Mod_Wasili_Verbannt_01_15_01"); //What's happening?
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_01_02"); //This son of a bitch Onar threw me out of the yard because I gave you the gold.
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_01_03"); //Now I can't do anything else but sit here at the field robbery and drink.
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_01_04"); //And if Thekla didn't bring me some food every now and then, I would die of hunger.

	Info_ClearChoices	(Info_Mod_Wasili_Verbannt_01);

	Info_AddChoice	(Info_Mod_Wasili_Verbannt_01, "That doesn't concern me.", Info_Mod_Wasili_Verbannt_01_B);
	Info_AddChoice	(Info_Mod_Wasili_Verbannt_01, "What can be done?", Info_Mod_Wasili_Verbannt_01_A);
};

FUNC VOID Info_Mod_Wasili_Verbannt_01_B()
{
	AI_Output(hero, self, "Info_Mod_Wasili_Verbannt_01_B_15_00"); //I'm not interested.
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_B_01_01"); //You don't care?! You got me here, you fucking bastard. I'm gonna have to punch you in the face.
	
	Info_ClearChoices	(Info_Mod_Wasili_Verbannt_01);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Wasili_Verbannt_01_A()
{
	AI_Output(hero, self, "Info_Mod_Wasili_Verbannt_01_A_15_00"); //What can be done?
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_A_01_01"); //What can be done? You should kick this onar's ass pretty good.
	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_01_A_01_02"); //I'd put a decent portion of this field robber crap in his booze if I could.
	
	Mod_WM_WasiliQuest = 3;

	Mob_CreateItems	("ONARSTRUHE", ItFo_OnarsSchnaps, 1);

	Log_CreateTopic	(TOPIC_MOD_ADANOS_WASILI, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ADANOS_WASILI, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "Onar banished Wasili from the court because he had given me the money. Someone should talk to Onar so that Wasili can get back.");

	Info_ClearChoices	(Info_Mod_Wasili_Verbannt_01);
};

INSTANCE Info_Mod_Wasili_Verbannt_02 (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_Verbannt_02_Condition;
	information	= Info_Mod_Wasili_Verbannt_02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here, I have some of Thekla's food for you.";
};

FUNC INT Info_Mod_Wasili_Verbannt_02_Condition()
{
	if (Mod_WM_WasiliQuest == 3)
	&& (Npc_HasItems(hero, ItMi_EsspaketWasili) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wasili_Verbannt_02_Info()
{
	AI_Output(hero, self, "Info_Mod_Wasili_Verbannt_02_15_00"); //Here, I have some of Thekla's food for you.

	B_GiveInvItems	(hero, self, ItMi_EsspaketWasili, 1);

	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_02_01_01"); //Thank you very much. I'm starving to death.

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Wasili_Verbannt_03 (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_Verbannt_03_Condition;
	information	= Info_Mod_Wasili_Verbannt_03_Info;
	permanent	= 0;
	important	= 0;
	description	= "I got Onar's booze.";
};

FUNC INT Info_Mod_Wasili_Verbannt_03_Condition()
{
	if (Mod_WM_WasiliQuest == 3)
	&& (Npc_HasItems(hero, ItFo_OnarsSchnaps) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Wasili_Verbannt_03_Info()
{
	AI_Output(hero, self, "Info_Mod_Wasili_Verbannt_03_15_00"); //I got Onar's booze.

	B_GiveInvItems	(hero, self, ItFo_OnarsSchnaps, 1);

	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_03_01_01"); //Ha, let's have it. First the field robber dirt and then....

	AI_PlayAni (self, "T_PLUNDER");
	AI_PlayAni (self,"T_STAND_2_PEE");
	AI_PlayAni (self,"T_PEE_2_STAND");

	AI_Output(self, hero, "Info_Mod_Wasili_Verbannt_03_01_02"); //So that should really get the old pig's stomach. (laughs drunk)

	B_GiveInvItems	(self, hero, ItFo_OnarsSchnaps2, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_WASILI, "Wasili prepared Onar's liquor. Now all I have to do is get him back to where I got him.");
};

INSTANCE Info_Mod_Wasili_Pickpocket (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_Pickpocket_Condition;
	information	= Info_Mod_Wasili_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Wasili_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_OldCoin, 13);
};

FUNC VOID Info_Mod_Wasili_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);

	Info_AddChoice	(Info_Mod_Wasili_Pickpocket, DIALOG_BACK, Info_Mod_Wasili_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Wasili_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Wasili_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Wasili_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);
};

FUNC VOID Info_Mod_Wasili_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);

		Info_AddChoice	(Info_Mod_Wasili_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Wasili_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Wasili_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Wasili_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Wasili_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Wasili_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Wasili_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Wasili_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Wasili_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Wasili_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Wasili_EXIT (C_INFO)
{
	npc		= Mod_100_BAU_Wasili_NW;
	nr		= 1;
	condition	= Info_Mod_Wasili_EXIT_Condition;
	information	= Info_Mod_Wasili_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Wasili_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Wasili_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
