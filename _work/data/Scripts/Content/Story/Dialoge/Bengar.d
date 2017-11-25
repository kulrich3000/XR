INSTANCE Info_Mod_Bengar_Hi (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Hi_Condition;
	information	= Info_Mod_Bengar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Bengar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bengar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Bengar_Hi_10_01"); //I'm Bengar, farmer of this farm.
};

INSTANCE Info_Mod_Bengar_Aufgabe (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Aufgabe_Condition;
	information	= Info_Mod_Bengar_Aufgabe_Info;
	permanent	= 1;
	important	= 0;
	description	= "Baltram is waiting for your bread.";
};

FUNC INT Info_Mod_Bengar_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bengar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Baltram_Warentransporte))
	&& (Mod_BengarBaltram == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bengar_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_00"); //Baltram is waiting for your bread.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_10_01"); //I just lost cars and men in a robbery a few days ago. I'm not taking that chance again!
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_02"); //That's why I'm here.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_10_03"); //Like this? You want to walk alone and loaded to town?
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_04"); //Wouldn't be the first time.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_10_05"); //All right, if you mean... I'll get 150 gold.

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);

	if (Mod_Verhandlungsgeschick > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "The bread doesn't look that valuable...", Info_Mod_Bengar_Aufgabe_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Here's 150 gold.", Info_Mod_Bengar_Aufgabe_B);
	};
	Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "I don't have that much.", Info_Mod_Bengar_Aufgabe_A);
};

FUNC VOID Info_Mod_Bengar_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_C_15_00"); //The breads don't look so precious...

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_C_10_01"); //100 gold, then. The main thing is that you let something grow over.

		Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
		CreateInvItems	(hero, ItFo_Bread, 30);

		Mod_BengarBaltram = 1;

		B_ShowGivenThings	("100 gold and get 30 loaves of bread");

		B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Bengar gave me his bread.");

		Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_C_10_02"); //Don't bullshit me, all right?

		Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);

		if (Npc_HasItems(hero, ItMi_Gold) >= 150)
		{
			Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Here's 150 gold.", Info_Mod_Bengar_Aufgabe_B);
		};
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "I don't have that much.", Info_Mod_Bengar_Aufgabe_A);
	};
};

FUNC VOID Info_Mod_Bengar_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_B_15_00"); //Here's 150 gold.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_B_10_01"); //And here's the bread.

	B_GiveInvItems	(self, hero, ItFo_Bread, 30);

	Mod_BengarBaltram = 1;

	B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Bengar gave me his bread.");

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
};

FUNC VOID Info_Mod_Bengar_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_A_15_00"); //I don't have that much.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_A_10_01"); //(mockingly) Well, that's what I call advance planning! Come back when you get the gold.

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
};

INSTANCE Info_Mod_Bengar_Kakos (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Kakos_Condition;
	information	= Info_Mod_Bengar_Kakos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bengar_Kakos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	&& (Npc_IsDead(Kakos_11006_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bengar_Kakos_Info()
{
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_10_00"); //Thank you very much. I can't believe what you did on that giant.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_10_01"); //Worked us day and night, eating the hair off our heads, that bastard.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_10_02"); //We couldn't have lasted much longer.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_10_03"); //Here, take the treasure of the giant to thank him, which we should polish up for him.

	B_GiveInvItems	(self, hero, ItMi_Riesenschatz, 1);

	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_10_04"); //(laughs spitefully) Where he is now, he won't need it anymore.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_NL_KAKOS, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bengar_Pickpocket (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Pickpocket_Condition;
	information	= Info_Mod_Bengar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bengar_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

	Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_BACK, Info_Mod_Bengar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bengar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bengar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bengar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bengar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bengar_EXIT (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_EXIT_Condition;
	information	= Info_Mod_Bengar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bengar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bengar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
