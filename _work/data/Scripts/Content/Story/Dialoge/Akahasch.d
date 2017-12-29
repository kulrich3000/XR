INSTANCE Info_Mod_Akahasch_Hi (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Hi_Condition;
	information	= Info_Mod_Akahasch_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Akahasch_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_01"); //What do you want?
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_02"); //I just wanted to know what you were doing...?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_03"); //So you're not one of them?
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_04"); //To them?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_05"); //That madman who tried to kill me.
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_15_06"); //I don't know about any madmen....
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_24_07"); //Then can you help me?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Crazies, my ass. It's probably more like people where you're standing in the chalk...", Info_Mod_Akahasch_Hi_D);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Sorry, not interested.", Info_Mod_Akahasch_Hi_B);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "What's this about?", Info_Mod_Akahasch_Hi_A);
};

FUNC VOID Info_Mod_Akahasch_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_B_15_00"); //Not interested.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_B_24_01"); //What am I gonna do?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Akahasch_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_E_15_00"); //I'll bring the bill. It's payday...
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_E_24_01"); //(shocked) No... ohh, Innos, stand by me.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_Kill, 2);
};

FUNC VOID Info_Mod_Akahasch_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_D_15_00"); //Crazies, my ass. It's probably more like people where you're standing in the chalk...
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_D_24_01"); //What?! Who are you, what are you up to?

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "I'll bring the bill. It's payday...", Info_Mod_Akahasch_Hi_E);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Don't worry about it. I'll take you to safety.", Info_Mod_Akahasch_Hi_F);
};

FUNC VOID Info_Mod_Akahasch_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_A_15_00"); //What's this about?
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_A_24_01"); //Can you walk me back to the monastery? I'd rather not take any chances.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	Info_AddChoice	(Info_Mod_Akahasch_Hi, "Sorry, not interested.", Info_Mod_Akahasch_Hi_B);
	Info_AddChoice	(Info_Mod_Akahasch_Hi, "All right, follow me.", Info_Mod_Akahasch_Hi_C);
};

FUNC VOID Info_Mod_Akahasch_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_C_15_00"); //All right, follow me.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_C_24_01"); //Thank you very much.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_Akahasch_Guiding = 1;
};

FUNC VOID Info_Mod_Akahasch_Hi_F()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Hi_F_15_00"); //Don't worry about it. I'll take you to safety.
	AI_Output(self, hero, "Info_Mod_Akahasch_Hi_F_24_01"); //Yes? Thank you very much. The best thing you can do is take me to the monastery.

	Info_ClearChoices	(Info_Mod_Akahasch_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");

	self.aivar[AIV_Partymember] = TRUE;

	Mod_Akahasch_Guiding = 1;
};

INSTANCE Info_Mod_Akahasch_AtKloster (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_AtKloster_Condition;
	information	= Info_Mod_Akahasch_AtKloster_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Akahasch_AtKloster_Condition()
{
	if (Mod_Akahasch_Guiding == 1)
	&& ((Npc_GetDistToWP(hero, "NW_MONASTERY_ENTRY_01") < 500)
	|| (Npc_KnowsInfo(hero, Info_Mod_Daron_Akahasch2)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_AtKloster_Info()
{
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_00"); //Thanks a lot, how can I make it up to you?
	AI_Output(hero, self, "Info_Mod_Akahasch_AtKloster_15_01"); //Well, I know something....
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_02"); //Ah, I can think of something. Take this!

	B_GiveInvItems	(self, hero, ItMi_Weinlieferung, 1);

	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_03"); //Take it to Ulf in town, he'll pay you for it.
	AI_Output(hero, self, "Info_Mod_Akahasch_AtKloster_15_04"); //(groans) All right...
	AI_Output(self, hero, "Info_Mod_Akahasch_AtKloster_24_05"); //Thank you very much again.
	
	B_LogEntry	(TOPIC_MOD_ASS_AUFNAHME, "I took Akahash to the monastery. For this he gave me a wine-package, which I should bring to Ulf.");

	B_GivePlayerXP	(50);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KLOSTER");

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;

	self.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Akahasch_Fertig (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Fertig_Condition;
	information	= Info_Mod_Akahasch_Fertig_Info;
	permanent	= 0;
	important	= 0;
	description	= "How are you now?";
};

FUNC INT Info_Mod_Akahasch_Fertig_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ulf_AkahaschTot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_Fertig_Info()
{
	AI_Output(hero, self, "Info_Mod_Akahasch_Fertig_15_00"); //How are you now?
	AI_Output(self, hero, "Info_Mod_Akahasch_Fertig_24_01"); //I'm safe here. I don't dare to go outside that fast.
};

INSTANCE Info_Mod_Akahasch_Heiltrank (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Heiltrank_Condition;
	information	= Info_Mod_Akahasch_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(give healing potion)";
};

FUNC INT Info_Mod_Akahasch_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, DIALOG_BACK, Info_Mod_Akahasch_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Essence of Healing", Info_Mod_Akahasch_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Elixir of Healing", Info_Mod_Akahasch_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Extract of Healing", Info_Mod_Akahasch_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Essence of Healing", Info_Mod_Akahasch_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Drink of light healing", Info_Mod_Akahasch_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Light healing potion", Info_Mod_Akahasch_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Akahasch_Heiltrank, "Potion of Quick Healing", Info_Mod_Akahasch_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Akahasch_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Akahasch_Pickpocket (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_Pickpocket_Condition;
	information	= Info_Mod_Akahasch_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Akahasch_Pickpocket_Condition()
{
	C_Beklauen	(76, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

	Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_BACK, Info_Mod_Akahasch_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Akahasch_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Akahasch_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Akahasch_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Akahasch_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Akahasch_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Akahasch_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Akahasch_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Akahasch_EXIT (C_INFO)
{
	npc		= Mod_4016_NOV_Akahasch_NW;
	nr		= 1;
	condition	= Info_Mod_Akahasch_EXIT_Condition;
	information	= Info_Mod_Akahasch_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Akahasch_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Akahasch_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
