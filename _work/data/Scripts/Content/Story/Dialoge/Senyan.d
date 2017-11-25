INSTANCE Info_Mod_Senyan_Hi (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Hi_Condition;
	information	= Info_Mod_Senyan_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Senyan_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Senyan_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Senyan_Hi_12_00"); //Hey you! What are you doing in my warehouse?
};

INSTANCE Info_Mod_Senyan_Edgor (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Edgor_Condition;
	information	= Info_Mod_Senyan_Edgor_Info;
	permanent	= 0;
	important	= 0;
	description	= "Edgor sent me.";
};

FUNC INT Info_Mod_Senyan_Edgor_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_Hi))
	&& ((Npc_KnowsInfo(hero, Info_Mod_Edgor_Gold))
	|| (Npc_KnowsInfo(hero, Info_Mod_Edgor_Raeuber)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_Edgor_Info()
{
	AI_Output(hero, self, "Info_Mod_Senyan_Edgor_15_00"); //Edgor sent me. He has given me the first half of the password and I want you to tell me the second half now.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_01"); //So you want to join us? All right, but first you have to prove to me that you're a bandit, too.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_02"); //There's an arms dealer in town selling the weapons of Harad the blacksmith.
	AI_Output(self, hero, "Info_Mod_Senyan_Edgor_12_03"); //I want you to attack him and take his coarse long sword. You bring this one to me.

	Log_CreateTopic	(TOPIC_MOD_SENYANSSCHWERT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SENYANSSCHWERT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SENYANSSCHWERT, "I'm supposed to steal a long sword from Hakon for Senyan.");

	Mod_HakonUeberfall = 0;
};

INSTANCE Info_Mod_Senyan_HabSchwert (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_HabSchwert_Condition;
	information	= Info_Mod_Senyan_HabSchwert_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have the sword.";
};

FUNC INT Info_Mod_Senyan_HabSchwert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Senyan_Edgor))
	&& (Npc_HasItems(hero, ItMw_HakonSchwert_01) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_HabSchwert_Info()
{
	AI_Output(hero, self, "Info_Mod_Senyan_HabSchwert_15_00"); //I have the sword.
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_01"); //Let me see that.
	AI_Output(hero, self, "Info_Mod_Senyan_HabSchwert_15_02"); //Here it is here.

	B_GiveInvItems	(hero, self, ItMw_HakonSchwert_01, 1);

	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_03"); //Well done. The second part of the slogan is: Ban
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_04"); //You can go to our main camp now. It is located in the Minental valley near the Troll gorge.
	AI_Output(self, hero, "Info_Mod_Senyan_HabSchwert_12_05"); //Talk to Sancho there, he'll let you in. In the camp, you should talk to Dexter.

	B_LogEntry_More	(TOPIC_MOD_AUFNAHME_BANDITEN, TOPIC_MOD_SENYANSSCHWERT, "The second half is called Ban. That brings me to the main camp in the Minental.", "I brought Senyan the sword of Hakon.");
	B_SetTopicStatus	(TOPIC_MOD_SENYANSSCHWERT, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	B_GivePlayerXP	(200);

	B_StartOtherRoutine	(Mod_581_NONE_Hakon_NW, "START");
};

INSTANCE Info_Mod_Senyan_TomKraut (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_TomKraut_Condition;
	information	= Info_Mod_Senyan_TomKraut_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Senyan_TomKraut_Condition()
{
	if (Mod_SenyanTom_Kraut == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Senyan_TomKraut_Info()
{
	AI_DrawWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_00"); //(hectic) Who's that? Ahh, it's just you.

	AI_RemoveWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_01"); //Almost took you for a vigilante.
	AI_Output(hero, self, "Info_Mod_Senyan_TomKraut_15_02"); //In bandit armor so close to the city? I'd be restless, too. What's going on?
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_03"); //Justice trouble, that's what's going on.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_04"); //I met Tom here before and gave him some bogweed plants so that he could process them into stems in the city.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_05"); //But when he wanted to go back through the city gate, I saw from afar how Mika - the bum - suddenly stopped him.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_06"); //Since there's been some kind of trouble with demons, the guards seem to be particularly attentive.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_07"); //Anyway, he started to frisk him and found the herb....
	AI_Output(hero, self, "Info_Mod_Senyan_TomKraut_15_08"); //... and then escort him to prison?
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_09"); //No, to the town hall, where he was appointed mayor.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_10"); //Into prison, of course! Where else... Idiot.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_11"); //And now I'm sitting here, and I have no idea how to get him out of there.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_12"); //I couldn't even get past the guards... I'm already too famous around here for that, if you know what I mean.
	AI_Output(self, hero, "Info_Mod_Senyan_TomKraut_12_13"); //Oh, shit. I just hope his punishment won't be too harsh.

	Log_CreateTopic	(TOPIC_MOD_TOM_KRAUT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_TOM_KRAUT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_TOM_KRAUT, "Senyan told me that Tom was caught with marsh plants and is probably in prison.");

	Mob_CreateItems	("SAFE ROOM", ItPl_SwampHerb, 3);
};

INSTANCE Info_Mod_Senyan_Pickpocket (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_Pickpocket_Condition;
	information	= Info_Mod_Senyan_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Senyan_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

	Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_BACK, Info_Mod_Senyan_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Senyan_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Senyan_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Senyan_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Senyan_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Senyan_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Senyan_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Senyan_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Senyan_EXIT (C_INFO)
{
	npc		= Mod_963_BDT_Senyan_NW;
	nr		= 1;
	condition	= Info_Mod_Senyan_EXIT_Condition;
	information	= Info_Mod_Senyan_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Senyan_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Senyan_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
