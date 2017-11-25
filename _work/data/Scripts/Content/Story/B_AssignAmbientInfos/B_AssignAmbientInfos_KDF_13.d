// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE Info_Mod_KDF_13_EXIT(C_INFO)
{
	nr			= 999;
	condition	= Info_Mod_KDF_13_EXIT_Condition;
	information	= Info_Mod_KDF_13_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT Info_Mod_KDF_13_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID Info_Mod_KDF_13_EXIT_Info()
{	
	AI_Output(self, hero, "Info_Mod_KDF_13_EXIT_13_00"); //To honor magic!
	AI_StopProcessInfos	(self);
};

// *************************************************************************
// 									PEOPLE
// *************************************************************************
INSTANCE Info_Mod_KDF_13_Trank(C_INFO)
{
	nr			= 3;
	condition	= Info_Mod_KDF_13_Trank_Condition;
	information	= Info_Mod_KDF_13_Trank_Info;
	permanent	= TRUE;
	description = "Here's a potion.";
};                       

FUNC INT Info_Mod_KDF_13_Trank_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (Npc_HasItems(hero, ItPo_Mana_02) > 0)
	&& (self.aivar[AIV_TrankBekommen] == FALSE)
	&& (Mod_FM_TrankCounter_Mana < 9)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_KDF_13_Trank_Info()
{	
	AI_Output (hero, self, "Info_Mod_KDF_13_Trank_15_00"); //Here's a potion.

	B_GiveInvItems	(hero, self, ItPo_Mana_02, 1);
	AI_UseItem	(self, ItPo_Mana_02);

	Mod_FM_TrankCounter_Mana += 1;

	AI_Output (self, hero, "Info_Mod_KDF_13_Trank_13_01"); //Thanks.

	self.aivar[AIV_TrankBekommen] = TRUE;
};

INSTANCE Info_Mod_KDF_13_Fake(C_INFO)
{
	nr			= 4;
	condition	= Info_Mod_KDF_13_Fake_Condition;
	information	= Info_Mod_KDF_13_Fake_Info;
	permanent	= 0;
	description = "Did you see where the magician disappeared from the platform?";
};                       

FUNC INT Info_Mod_KDF_13_Fake_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Trank))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_KDF_13_Fake_Info()
{	
	AI_Output (hero, self, "Info_Mod_KDF_13_Fake_15_00"); //Did you see where the magician disappeared from the platform?
	AI_Output (self, hero, "Info_Mod_KDF_13_Fake_13_01"); //Yeah, I think he went to the alchemy labs.

	B_LogEntry	(TOPIC_MOD_FM_SM, "It seems the spy has escaped to the alchemy labs.");
};

INSTANCE Info_Mod_KDF_13_TrankLeer(C_INFO)
{
	nr			= 5;
	condition	= Info_Mod_KDF_13_TrankLeer_Condition;
	information	= Info_Mod_KDF_13_TrankLeer_Info;
	permanent	= 0;
	important	= 1;
};                       

FUNC INT Info_Mod_KDF_13_TrankLeer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tojan_Hi))
	&& (self.aivar[AIV_TrankBekommen] == FALSE)
	&& (Mod_FM_TrankCounter_Mana == 9)
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_KDF_13_TrankLeer_Info()
{	
	AI_Output(self, hero, "Info_Mod_KDF_13_TrankLeer_13_00"); //Do you have a potion for me, too?
	AI_Output(hero, self, "Info_Mod_KDF_13_TrankLeer_15_01"); //Um... No. There's something wrong.

	B_StartOtherRoutine	(Mod_1768_KDF_Magier_PAT, "FLUCHT");

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_KDF_13_MangelQuest(C_INFO)
{
	nr			= 5;
	condition	= Info_Mod_KDF_13_MangelQuest_Condition;
	information	= Info_Mod_KDF_13_MangelQuest_Info;
	permanent	= 0;
	important	= 0;
	description	= "What did you think about visiting the church to pray to Innos?";
};                       

FUNC INT Info_Mod_KDF_13_MangelQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Nagon_MangelQuest2))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_KDF_13_MangelQuest_Info()
{	
	AI_Output(hero, self, "Info_Mod_KDF_13_MangelQuest_15_00"); //What did you think about visiting the church to pray to Innos?
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_01"); //I have to stand guard here on the wall and make the black skirts hot hell if they get too close.
	AI_Output(hero, self, "Info_Mod_KDF_13_MangelQuest_15_02"); //Everything's quiet right now.
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_03"); //Hmm, yeah, that's actually true... and the last attacks were some time ago.
	AI_Output(hero, self, "Info_Mod_KDF_13_MangelQuest_15_04"); //What about your last visit to church?
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_05"); //(acknowledging) Hmm, well, that's actually been quite some time...
	AI_Output(hero, self, "Info_Mod_KDF_13_MangelQuest_15_06"); //And I'm sure you'll be able to spare a man up here too. There's nothing going on except siege...
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_07"); //Yeah, you're absolutely right.
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_08"); //Through the siege I have gradually begun to neglect my other duties as a servant of Inno without realizing it.
	AI_Output(self, hero, "Info_Mod_KDF_13_MangelQuest_13_09"); //I'll go to church immediately.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "KIRCHE");

	B_GivePlayerXP	(100);

	Mod_Pat_Beter += 1;

	if (Mod_Pat_Beter == 3)
	{
		B_LogEntry	(TOPIC_MOD_FM_MANGEL, "So, I think I have had enough disciples of Inno's to get them to pray and I should stop by the church at Nagon.");
	};
};

INSTANCE Info_Mod_KDF_13_Pickpocket (C_INFO)
{
	nr		= 6;
	condition	= Info_Mod_KDF_13_Pickpocket_Condition;
	information	= Info_Mod_KDF_13_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_KDF_13_Pickpocket_Condition()
{
	C_Beklauen	(150 + r_max(30), ItMi_Gold, 90 + r_max(20));
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);

	Info_AddChoice	(Info_Mod_KDF_13_Pickpocket, DIALOG_BACK, Info_Mod_KDF_13_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_KDF_13_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_KDF_13_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);

		Info_AddChoice	(Info_Mod_KDF_13_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_KDF_13_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_KDF_13_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_KDF_13_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_KDF_13_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_KDF_13_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_KDF_13_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_KDF_13_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

// *************************************************************************
// -------------------------------------------------------------------------

FUNC VOID B_AssignAmbientInfos_KDF_13 (var c_NPC slf)
{
	Info_Mod_KDF_13_EXIT.npc					= Hlp_GetInstanceID(slf);
	Info_Mod_KDF_13_Trank.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_KDF_13_Fake.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_KDF_13_TrankLeer.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_KDF_13_MangelQuest.npc	= Hlp_GetInstanceID(slf);
	Info_Mod_KDF_13_Pickpocket.npc	= Hlp_GetInstanceID(slf);
};
