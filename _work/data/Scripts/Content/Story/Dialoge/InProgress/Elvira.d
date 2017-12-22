INSTANCE Info_Mod_Elvira_Frauenkleider (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider_Condition;
	information	= Info_Mod_Elvira_Frauenkleider_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_Frauenkleider_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvira_Frauenkleider_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_00"); //Wait! Wait! I have a job for you!
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider_15_01"); //Oh, yeah?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_02"); //I was robbed on my way to Khorata and robbed of my clothes.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider_21_03"); //You'll get it back for me!
};

INSTANCE Info_Mod_Elvira_Frauenkleider2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider2_Condition;
	information	= Info_Mod_Elvira_Frauenkleider2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why so rude?";
};

FUNC INT Info_Mod_Elvira_Frauenkleider2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider2_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider2_15_00"); //Why so rude?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_01"); //You men are to blame for that!
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_02"); //First a bad conscience is persuaded me because I am not male, and then the sign of my femininity is also stolen from me!
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider2_21_03"); //What's left over?
};

INSTANCE Info_Mod_Elvira_Frauenkleider3 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider3_Condition;
	information	= Info_Mod_Elvira_Frauenkleider3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Where exactly were you mugged?";
};

FUNC INT Info_Mod_Elvira_Frauenkleider3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Frauenkleider2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_15_00"); //Where exactly were you mugged?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_21_01"); //Does it matter? The robbers will have left no trace, after all, they only took my suitcase with them.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_21_02"); //But there can't be that much of that rag here, can there?

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);

	Info_AddChoice	(Info_Mod_Elvira_Frauenkleider3, "Why don't you look for it yourself?", Info_Mod_Elvira_Frauenkleider3_B);
	Info_AddChoice	(Info_Mod_Elvira_Frauenkleider3, "I'll take a look around.", Info_Mod_Elvira_Frauenkleider3_A);
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_B()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_B_15_00"); //Why don't you look for it yourself?
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_B_21_01"); //(sarcastically) Thank you.

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);
};

FUNC VOID Info_Mod_Elvira_Frauenkleider3_A()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider3_A_15_00"); //I'll take a look around.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider3_A_21_01"); //Well, at least you seem reasonable.

	Info_ClearChoices	(Info_Mod_Elvira_Frauenkleider3);

	Log_CreateTopic	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, "Elvira, the fire magician from Khorata, lost her clothes in a robbery. A gang of thieves is said to be responsible for this.");

	Mod_REL_Frauenkleider = 1;
};

INSTANCE Info_Mod_Elvira_Frauenkleider4 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Frauenkleider4_Condition;
	information	= Info_Mod_Elvira_Frauenkleider4_Info;
	permanent	= 0;
	important	= 0;
	description	= "I brought your clothes.";
};

FUNC INT Info_Mod_Elvira_Frauenkleider4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Melvin_Frauenkleider2))
	&& (Npc_HasItems(hero, ItMi_Kleiderkoffer) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Frauenkleider4_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Frauenkleider4_15_00"); //I brought your clothes.

	B_GiveInvItems	(hero, self, ItMi_Kleiderkoffer, 1);

	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider4_21_01"); //Yes, they are. Didn't expect to see her again.
	AI_Output(self, hero, "Info_Mod_Elvira_Frauenkleider4_21_02"); //Take these potions as a thank you.

	B_GiveInvItems	(self, hero, ItPo_Health_02, 3);

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_FRAUENKLEIDER, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Elvira_Dorn (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn_Condition;
	information	= Info_Mod_Elvira_Dorn_Info;
	permanent	= 0;
	important	= 0;
	description	= "We need to talk...";
};

FUNC INT Info_Mod_Elvira_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Idrico_Dorn))
	&& (Mod_REL_IdricoDorn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_15_00"); //We need to talk...
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_21_01"); //What's the matter?

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_DiebeKey2))
	{
		Info_AddChoice	(Info_Mod_Elvira_Dorn, "If you don't go, I'll tell everyone what happened between us.", Info_Mod_Elvira_Dorn_C);
	};
	Info_AddChoice	(Info_Mod_Elvira_Dorn, "Idrico wants to get rid of you.", Info_Mod_Elvira_Dorn_B);
	Info_AddChoice	(Info_Mod_Elvira_Dorn, "You need to leave town now.", Info_Mod_Elvira_Dorn_A);
};

FUNC VOID Info_Mod_Elvira_Dorn_C()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_C_15_00"); //If you don't go, I'll tell everyone what happened between us.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_C_21_01"); //You son of a bitch!
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_C_21_02"); //Then I don't really have a choice... I hope you're happy with what you're doing.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Elvira will leave town.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

FUNC VOID Info_Mod_Elvira_Dorn_B()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_00"); //Idrico wants to get rid of you.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_01"); //That bum who always looks at me crooked? Do you think he could get uncomfortable?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_02"); //It's his smell already. Fanaticism is strong in him.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_03"); //We should put a lockjaw on him.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_B_21_04"); //You think you can pull Anselm over to our side to keep the guy quiet?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_B_15_05"); //I can try.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 3;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "I believe that Idrico's plan is wrong, and I want to convince Anselm that he must be put in place.");
};

FUNC VOID Info_Mod_Elvira_Dorn_A()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_A_15_00"); //You need to leave town now.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_A_21_01"); //My daily schedule was actually a bit different. What's going on?
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn_A_15_02"); //You will no longer be tolerated here. Either you volunteer or I help you.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn_A_21_03"); //Sounds like you're serious. I wonder what your help looks like.

	Info_ClearChoices	(Info_Mod_Elvira_Dorn);

	Mod_REL_IdricoDorn = 2;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Elvira didn't want to leave the city without a fight and now has the damage. Idrico should still be satisfied.");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
	B_Attack	(Mod_7425_KDF_Fuego_REL, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Elvira_Dorn2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn2_Condition;
	information	= Info_Mod_Elvira_Dorn2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Anselm asks you to pay a tribal payment (... )";
};

FUNC INT Info_Mod_Elvira_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn2_15_00"); //Anselm asks you to make a payment in return for his help.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn2_21_01"); //What a blackmailer! But if it satisfies him...
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn2_21_02"); //I still prefer it to trouble with a slobberball like that.

	B_GiveInvItems	(self, hero, ItMi_Gold, 500);

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "I have the fire magicians' gold and should deliver it to Anselm.");
};

INSTANCE Info_Mod_Elvira_Dorn3 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn3_Condition;
	information	= Info_Mod_Elvira_Dorn3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn3_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn3_21_01"); //You only offered Anselm 50 gold coins? Get out of here, thief!
};

INSTANCE Info_Mod_Elvira_Dorn4 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Dorn4_Condition;
	information	= Info_Mod_Elvira_Dorn4_Info;
	permanent	= 0;
	important	= 0;
	description	= "The matter of Idrico should be resolved.";
};

FUNC INT Info_Mod_Elvira_Dorn4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 6)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Dorn4_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Dorn4_15_00"); //The matter of Idrico should be resolved.
	AI_Output(self, hero, "Info_Mod_Elvira_Dorn4_21_01"); //I'm glad you can be counted on. Here's a little compensation.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_Göttergefallen(1, 1);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Elvira_DiebeKey (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DiebeKey_Condition;
	information	= Info_Mod_Elvira_DiebeKey_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_DiebeKey_Condition()
{
	if (Mod_Diebe_Elvira == 1)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DiebeKey_Info()
{
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_00"); //Ohh, I'm getting different. All so easy and funny it turns.
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_01"); //And before me... ohh... that handsome fellow.
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey_21_02"); //Come here, don't hesitate, I won't bite unless you want to...

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Elvira_DiebeKey2 (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DiebeKey2_Condition;
	information	= Info_Mod_Elvira_DiebeKey2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Elvira_DiebeKey2_Condition()
{
	if (Mod_Diebe_Elvira == 2)
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DiebeKey2_Info()
{
	AI_TurnAway	(hero, self);

	AI_Output(hero, self, "Info_Mod_Elvira_DiebeKey2_15_00"); //(to herself) Removing her the key was child's play.

	AI_TurnToNpc	(hero, self);

	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_01"); //Like, what happened. l-- my robe.

	AI_EquipBestArmor	(self);

	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_02"); //Ohh, no, what did I do?
	AI_Output(self, hero, "Info_Mod_Elvira_DiebeKey2_21_03"); //Innos. I have sinned most gravely.... I must repent.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BUSSE");
	
	Spine_OverallSaveSetInt("ElviraSex", 1);
};

INSTANCE Info_Mod_Elvira_DickeLuft (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_DickeLuft_Condition;
	information	= Info_Mod_Elvira_DickeLuft_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to turn into a sheep.";
};

FUNC INT Info_Mod_Elvira_DickeLuft_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_DickeLuft_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_DickeLuft_15_00"); //I'd like to turn into a sheep.
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_01"); //You'd need that if you wanted to land with the women.
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_02"); //With such a clumsy pickup line, that won't work!
	AI_Output(hero, self, "Info_Mod_Elvira_DickeLuft_15_03"); //So you don't have a role in saying that?
	AI_Output(self, hero, "Info_Mod_Elvira_DickeLuft_21_04"); //No. Transformations are not my specialty.
};

INSTANCE Info_Mod_Elvira_Freudenspender (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Freudenspender_Condition;
	information	= Info_Mod_Elvira_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Can you use glee dispensers?";
};                       

FUNC INT Info_Mod_Elvira_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Elvira_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Elvira_Freudenspender_15_00"); //Can you use glee dispensers?
	AI_Output(self, hero, "Info_Mod_Elvira_Freudenspender_21_01"); //Pleasure giver violates our code. So no.
};

INSTANCE Info_Mod_Elvira_Pickpocket_Quest (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Pickpocket_Quest_Condition;
	information	= Info_Mod_Elvira_Pickpocket_Quest_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180_Female;
};

FUNC INT Info_Mod_Elvira_Pickpocket_Quest_Condition()
{
	if (C_Beklauen(166, ItKe_RELMagier, 1))
	&& (Npc_HasItems(self, ItKe_RELMagier) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Cassia_Elvira))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_Info()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);

	Info_AddChoice	(Info_Mod_Elvira_Pickpocket_Quest, DIALOG_BACK, Info_Mod_Elvira_Pickpocket_Quest_BACK);
	Info_AddChoice	(Info_Mod_Elvira_Pickpocket_Quest, DIALOG_PICKPOCKET, Info_Mod_Elvira_Pickpocket_Quest_DoIt);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Quest_DoIt()
{
	B_Beklauen();
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket_Quest);
};

INSTANCE Info_Mod_Elvira_Pickpocket (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_Pickpocket_Condition;
	information	= Info_Mod_Elvira_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120_Female;
};

FUNC INT Info_Mod_Elvira_Pickpocket_Condition()
{
	C_Beklauen	(96, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

	Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_BACK, Info_Mod_Elvira_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Elvira_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Elvira_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Elvira_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Elvira_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Elvira_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Elvira_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Elvira_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Elvira_EXIT (C_INFO)
{
	npc		= Mod_7499_KDF_Elvira_REL;
	nr		= 1;
	condition	= Info_Mod_Elvira_EXIT_Condition;
	information	= Info_Mod_Elvira_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Elvira_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Elvira_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
