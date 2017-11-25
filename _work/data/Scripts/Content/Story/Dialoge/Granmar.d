INSTANCE Info_Mod_Granmar_Hi (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Hi_Condition;
	information	= Info_Mod_Granmar_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Granmar_Hi_Condition()
{
	if (Wld_IsTime(08,00,20,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_00"); //What are you doing here?
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_01"); //I'm not sure yet. What's going on here?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_02"); //Well, if you want to work for us, you should go see Ole.
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_03"); //Otherwise you could buy some things from Bernd. The Minental valley is a hard place and you should not venture too deep into it if you are not prepared.
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_04"); //Mm, thanks for the tip. But what kind of grouping are you?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_05"); //We are the royal guard and report directly to the order of Rhobar.
	AI_Output(hero, self, "Info_Mod_Granmar_Hi_15_06"); //Do you belong to the paladins in Khorinis?
	AI_Output(self, hero, "Info_Mod_Granmar_Hi_26_07"); //Not directly, although hopefully we are pursuing the same goals. I'm sure Ole can tell you more about this.
};

INSTANCE Info_Mod_Granmar_Aufgabe (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Aufgabe_Condition;
	information	= Info_Mod_Granmar_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Ole sent me to help you with that mine thing!";
};

FUNC INT Info_Mod_Granmar_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_00"); //Ole sent me to help you with that mine thing!
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_01"); //Very nice, I could use some help!
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_02"); //I'm supposed to take care of the strange stone monsters in the mine, but these creatures are resistant to normal weapons.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_03"); //The only clue is in a book I bought from the Water Magicians.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_04"); //Apparently, these stone monsters can only be defeated with the help of ore covered clubs.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_05"); //I've already talked to Heidrek about it and he thinks that you need a certain type of wood that is only near trolls.
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_06"); //And where's a troll near here?
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_07"); //As far as I know, there's even a troll cauldron near the bandit camp.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_08"); //But I lost my good sword and Heidrek couldn't make a new one.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_09"); //Without my sword, I certainly will not go near trolls.
	AI_Output(hero, self, "Info_Mod_Granmar_Aufgabe_15_10"); //All right, I'll look for it, but I want an appropriate reward.
	AI_Output(self, hero, "Info_Mod_Granmar_Aufgabe_26_11"); //Believe me, if you find the wood, you won't regret it.

	Log_CreateTopic	(TOPIC_MOD_KG_TROLLHOLZ, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_TROLLHOLZ, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "Granmar was to kill the stone monsters in the mine, but he needed an ore plated club. But for this a piece of trollwood is needed, which I am allowed to get now. Maybe I'll find a piece of this wood in the troll cauldron at the bandit camp...");

	Wld_InsertItem	(ItMi_Trollholz, "FP_ITEM_TROLLHOLZ");

	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
	Wld_InsertNpc	(Gobbo_Warrior,	"FP_ITEM_TROLLHOLZ");
};

INSTANCE Info_Mod_Granmar_Trollholz (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Trollholz_Condition;
	information	= Info_Mod_Granmar_Trollholz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the wood.";
};

FUNC INT Info_Mod_Granmar_Trollholz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Aufgabe))
	&& (Npc_HasItems(hero, ItMi_Trollholz) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Trollholz_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Trollholz_15_00"); //I found the wood. What do we do with it now?
	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz_26_01"); //Very well, take it right away to Heidrek, he'll make a club out of it.

	B_LogEntry	(TOPIC_MOD_KG_TROLLHOLZ, "I'm to take the trollwood to Heidrek so that he can make the club out of it.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Granmar_Trollholz2 (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Trollholz2_Condition;
	information	= Info_Mod_Granmar_Trollholz2_Info;
	permanent	= 0;
	important	= 0;
	description	= "The clubs are done!";
};

FUNC INT Info_Mod_Granmar_Trollholz2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Heidrek_Trollholz3))
	&& (Npc_HasItems(hero, ItMW_GranmarKeule) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Trollholz2_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Trollholz2_15_00"); //The clubs are done!

	B_GiveInvItems	(hero, self, ItMw_GranmarKeule, 1);

	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz2_26_01"); //Perfect, then we can go hunting soon.
	AI_Output(self, hero, "Info_Mod_Granmar_Trollholz2_26_02"); //Let me know as soon as Hymir agrees.

	B_LogEntry_More	(TOPIC_MOD_KG_VORBEREITUNGEN, TOPIC_MOD_KG_TROLLHOLZ, "Granmar's problems are solved.", "Granmar is now ready to storm the mine. I'm supposed to let him know if Hymir agrees.");
	B_SetTopicStatus	(TOPIC_mOD_KG_TROLLHOLZ, LOG_SUCCESS);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Granmar_PreLehrer (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_PreLehrer_Condition;
	information	= Info_Mod_Granmar_PreLehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "What's it look like? Can you show me how to be a better fighter?";
};

FUNC INT Info_Mod_Granmar_PreLehrer_Condition()
{
	if (KG_Dabei == 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_PreLehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_PreLehrer_15_00"); //What's it look like? Can you show me how to be a better fighter?
	AI_Output(self, hero, "Info_Mod_Granmar_PreLehrer_26_01"); //I could teach you something, but as long as I don't have a good gun, I won't bother.
	AI_Output(self, hero, "Info_Mod_Granmar_PreLehrer_26_02"); //Ask me again, if Heidrek has finished my new sword.
};

INSTANCE Info_Mod_Granmar_Lehrer (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Lehrer_Condition;
	information	= Info_Mod_Granmar_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Now can you show me how to get better?";
};

FUNC INT Info_Mod_Granmar_Lehrer_Condition()
{
	if (KG_Dabei == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Lehrer_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Lehrer_15_00"); //Now can you show me how to get better?
	AI_Output(self, hero, "Info_Mod_Granmar_Lehrer_26_01"); //Yeah, promise is promise. If you want, I can teach you how to handle the two-handed guy.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_KG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_KG, "Granmar can teach me how to use two-handed people.");
};

INSTANCE Info_Mod_Granmar_Lernen (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Lernen_Condition;
	information	= Info_Mod_Granmar_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Granmar_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Granmar_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Granmar_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Granmar_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Granmar_Lernen);

	Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
	Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
};

FUNC VOID Info_Mod_Granmar_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Granmar_Lernen);
};

FUNC VOID Info_Mod_Granmar_Lernen_2H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_2H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Lernen);

		Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
	};
};

FUNC VOID Info_Mod_Granmar_Lernen_2H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_2H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Lernen);

		Info_AddChoice	(Info_Mod_Granmar_Lernen, DIALOG_BACK, Info_Mod_Granmar_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_2H)), Info_Mod_Granmar_Lernen_2H_5);
		Info_AddChoice	(Info_Mod_Granmar_Lernen, B_BuildLearnString(PRINT_Learn2h1	, B_GetLearnCostTalent(hero, NPC_TALENT_2H, 1)), Info_Mod_Granmar_Lernen_2H_1);
	};
};

INSTANCE Info_Mod_Granmar_Pickpocket (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_Pickpocket_Condition;
	information	= Info_Mod_Granmar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Granmar_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

	Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_BACK, Info_Mod_Granmar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Granmar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Granmar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Granmar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Granmar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Granmar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Granmar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Granmar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Granmar_EXIT (C_INFO)
{
	npc		= Mod_1017_KGD_Granmar_MT;
	nr		= 1;
	condition	= Info_Mod_Granmar_EXIT_Condition;
	information	= Info_Mod_Granmar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Granmar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Granmar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
