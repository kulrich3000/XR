INSTANCE Info_Mod_Fahim_Hi (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Hi_Condition;
	information	= Info_Mod_Fahim_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Fahim_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fahim_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Fahim_Hi_10_01"); //I'm Fahim.
};

INSTANCE Info_Mod_Fahim_Belagerung (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Belagerung_Condition;
	information	= Info_Mod_Fahim_Belagerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have something to do for me?";
};

FUNC INT Info_Mod_Fahim_Belagerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Raven_Belagerung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Belagerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_00"); //Do you have something to do for me?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_01"); //Yes, indeed!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_02"); //What can be done?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_03"); //During the attack, the magic power of the Beliar Shrine was deactivated. So we can't get away from here. We have to repair the shrine.
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_04"); //How am I supposed to do that?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_05"); //The Beliarch shrine has taken its power from a stone of black ore. This one is destroyed. We need a new stone!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_06"); //Where do you get such a stone from?
	AI_Output(self, hero, "Info_Mod_Fahim_Belagerung_10_07"); //There's supposed to be such a stone in the back of the old library. Try your luck there!
	AI_Output(hero, self, "Info_Mod_Fahim_Belagerung_15_08"); //Then I'll go look for it!

	Wld_InsertItem	(ItMi_Beliarstein_Unloaded, "FP_ITEM_GREATPEASANT_STPLATE_05");

	Log_CreateTopic	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "Fahim told us that the stone of black ore from the Beliar shrine was destroyed. I need to find a new one so we can reactivate the shrine.");
};

INSTANCE Info_Mod_Fahim_HabStein (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_HabStein_Condition;
	information	= Info_Mod_Fahim_HabStein_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the stone.";
};

FUNC INT Info_Mod_Fahim_HabStein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Belagerung))
	&& (Npc_HasItems(hero, ItMi_Beliarstein_Unloaded) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_HabStein_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_00"); //I found the stone.

	B_GiveInvItems	(hero, self, ItMi_Beliarstein_Unloaded, 1);

	AI_Output(self, hero, "Info_Mod_Fahim_HabStein_10_01"); //There's something wrong with it. The stone no longer seems to possess any magic energy!
	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_02"); //I've already noticed that. What can we do?
	AI_Output(self, hero, "Info_Mod_Fahim_HabStein_10_03"); //The stone is made of black ore. Ask Eduard if he can fix the stone.

	B_GiveInvItems	(self, hero, ItMi_Beliarstein_Unloaded, 1);

	AI_Output(hero, self, "Info_Mod_Fahim_HabStein_15_04"); //I'll be going, then!

	B_GivePlayerXP	(200);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "The stone I found had no magic energy left. Now I'm supposed to take it to Eduard, hoping he can fix it.");
};

INSTANCE Info_Mod_Fahim_SteinRepariert (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_SteinRepariert_Condition;
	information	= Info_Mod_Fahim_SteinRepariert_Info;
	permanent	= 0;
	important	= 0;
	description	= "The stone works great again!";
};

FUNC INT Info_Mod_Fahim_SteinRepariert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Eduard_SteinFertig))
	&& (Npc_HasItems(hero, ItMi_Beliarstein) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_SteinRepariert_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_00"); //The stone works great again!
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_01"); //That's wonderful!
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_02"); //What remains to be done?
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_03"); //Now only connect the stone to the Beliar shrine. Fix your magic power in front of the Shrine of Beliars and sacrifice a part of it.
	AI_Output(self, hero, "Info_Mod_Fahim_SteinRepariert_10_04"); //Now the stone will automatically insert itself into the shrine and bring it back into motion.
	AI_Output(hero, self, "Info_Mod_Fahim_SteinRepariert_15_05"); //If that's all there is.

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BEL_BELIARSCHREIN, "I shall go to the shrine and fix my magic power there and sacrifice a part of it. The rest of them go by themselves.");
};

INSTANCE Info_Mod_Fahim_SchreinRepariert (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_SchreinRepariert_Condition;
	information	= Info_Mod_Fahim_SchreinRepariert_Info;
	permanent	= 0;
	important	= 0;
	description	= "The shrine is fixed!";
};

FUNC INT Info_Mod_Fahim_SchreinRepariert_Condition()
{
	if (Npc_KnowsInfo(hero, PC_PrayIdol_SteinEinfuegen))
	&& (Npc_HasItems(hero, ItMi_Beliarstein) == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_SchreinRepariert_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_SchreinRepariert_15_00"); //The shrine is fixed!
	AI_Output(self, hero, "Info_Mod_Fahim_SchreinRepariert_10_01"); //(pleased) Wonderful! Take this gold as a reward! I'll report to Raven!
	
	CreateInvItems	(self, ItMi_Gold, 1000);
	B_GiveInvItems	(self, hero, ItMi_Gold, 1000);

	B_GivePlayerXP	(700);

	B_LogEntry_More	(TOPIC_MOD_BEL_BELIARSCHREIN, TOPIC_MOD_BEL_BELAGERUNG, "The shrine is fixed, Fahim is informed and I have received my reward.", "I helped Fahim reactivate the Belarusian shrine.");

	B_SetTopicStatus	(TOPIC_MOD_BEL_BELIARSCHREIN, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Fahim_Lehrer (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Lehrer_Condition;
	information	= Info_Mod_Fahim_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Can you teach me something?";
};

FUNC INT Info_Mod_Fahim_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Hi))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Fahim_Lehrer_10_00"); //I can teach you how to handle a hand.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BELIARFESTUNG, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BELIARFESTUNG, "Fahim can teach me how to fight with one-handed men.");
};

INSTANCE Info_Mod_Fahim_Lernen (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Lernen_Condition;
	information	= Info_Mod_Fahim_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to learn.";
};

FUNC INT Info_Mod_Fahim_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Fahim_Lehrer))
	&& ((Mod_Gilde == 12)
	|| (Mod_Gilde == 13)
	|| (Mod_Gilde == 14)
	|| (Mod_Gilde == 15)
	|| (Mod_Gilde == 16))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Fahim_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Fahim_Lernen_15_00"); //I want to learn.

	Info_ClearChoices	(Info_Mod_Fahim_Lernen);

	Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
};

FUNC VOID Info_Mod_Fahim_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Fahim_Lernen);
};

FUNC VOID Info_Mod_Fahim_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 100)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Lernen);

		Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Fahim_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 100)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Lernen);

		Info_AddChoice	(Info_Mod_Fahim_Lernen, DIALOG_BACK, Info_Mod_Fahim_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Fahim_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Fahim_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Fahim_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Fahim_Pickpocket (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_Pickpocket_Condition;
	information	= Info_Mod_Fahim_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Fahim_Pickpocket_Condition()
{
	C_Beklauen	(56, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

	Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_BACK, Info_Mod_Fahim_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Fahim_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Fahim_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Fahim_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Fahim_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Fahim_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Fahim_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Fahim_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Fahim_EXIT (C_INFO)
{
	npc		= Mod_1029_SMK_Fahim_MT;
	nr		= 1;
	condition	= Info_Mod_Fahim_EXIT_Condition;
	information	= Info_Mod_Fahim_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Fahim_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Fahim_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
