INSTANCE Info_Mod_Balthasar_Hi (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Hi_Condition;
	information	= Info_Mod_Balthasar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Balthasar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balthasar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Balthasar_Hi_05_01"); //I'm Balthazar and here is the shepherd.
};

INSTANCE Info_Mod_Balthasar_Untier (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Untier_Condition;
	information	= Info_Mod_Balthasar_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "You haven't happened to have had an encounter with a predator lately, which....";
};

FUNC INT Info_Mod_Balthasar_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_15_00"); //You haven't happened to have had an encounter with a predator lately, which....
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_05_01"); //Yeah, that's what I want to say. Only two days ago, I could hardly survive on my skin.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_05_02"); //It was early in the morning, I had just got up and had driven the sheep to the pasture when I heard a noise behind the barn.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_05_03"); //Curious and worried, I pulled out my gun and went looking for it.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_05_04"); //But when I stepped behind the barn, my breath paused: There was a man-sized beast standing on all fours and hissing at me.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_05_05"); //Even before I could catch up to the blow it jumped at me and my weapon fell to the ground.

	Info_ClearChoices	(Info_Mod_Balthasar_Untier);

	Info_AddChoice	(Info_Mod_Balthasar_Untier, "I don't have time for too much talk now.", Info_Mod_Balthasar_Untier_B);
	Info_AddChoice	(Info_Mod_Balthasar_Untier, "(more)", Info_Mod_Balthasar_Untier_A);
};

FUNC VOID Info_Mod_Balthasar_Untier_C()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_C_15_00"); //Thank you, that's all I wanted to know.
	
	Info_ClearChoices	(Info_Mod_Balthasar_Untier);

	B_LogEntry	(TOPIC_MOD_ADANOS_NOVIZE, "Balthasar reported that he was attacked by a beast, which then went on towards the tavern.");

	B_GivePlayerXP	(100);
};

FUNC VOID Info_Mod_Balthasar_Untier_B()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Untier_B_15_00"); //I don't have time for too much talk now. It's disappeared again? If so, where to.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_B_05_01"); //Uh, yeah, it ended up heading for Orlan's tavern.
	
	Info_Mod_Balthasar_Untier_C();
};

FUNC VOID Info_Mod_Balthasar_Untier_A()
{
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_05_00"); //It stood over me bent over me and wanted to reach out to the bite, when I quickly clutched his head and pressed it tightly.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_05_01"); //Yes, as a shepherd you have to be able to act quickly when it matters.
	AI_Output(self, hero, "Info_Mod_Balthasar_Untier_A_05_02"); //With the other hand I punched him with fists and finally pressed him with my fingers into the eyes, whereupon it teared itself away and ran into the direction of Orlan's tavern.
	
	Info_Mod_Balthasar_Untier_C();
};

INSTANCE Info_Mod_Balthasar_Unheil (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Unheil_Condition;
	information	= Info_Mod_Balthasar_Unheil_Info;
	permanent	= 0;
	important	= 0;
	description	= "Has anything unusual happened lately?";
};

FUNC INT Info_Mod_Balthasar_Unheil_Condition()
{
	if (Mod_WM_Boeden == 14)
	|| (Mod_WM_Boeden == 13)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Unheil_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Unheil_15_00"); //Has anything unusual happened lately?
	AI_Output(self, hero, "Info_Mod_Balthasar_Unheil_05_01"); //(slightly moronic) Yes, indeed. There are some nasty undead running around the cemetery.
	AI_Output(self, hero, "Info_Mod_Balthasar_Unheil_05_02"); //And my sheep don't feel so good at the moment. Some have even started to be lame.

	B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Balthazar's sheep are lame.");

	Mod_HinweiseDerBauernZuHexen += 1;
};

INSTANCE Info_Mod_Balthasar_Hirte (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Hirte_Condition;
	information	= Info_Mod_Balthasar_Hirte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sekob thinks you have something to do for me.";
};

FUNC INT Info_Mod_Balthasar_Hirte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sekob_Bauer))
	&& (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Hirte_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Hirte_15_00"); //Sekob thinks you have something to do for me.
	AI_Output(self, hero, "Info_Mod_Balthasar_Hirte_05_01"); //You could watch the sheep for a minute, because I have to go.
	AI_Output(self, hero, "Info_Mod_Balthasar_Hirte_05_02"); //Let me know when you're ready.

	Log_CreateTopic	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BALTHASAR_SCHAFE, "I'm supposed to take care of his sheep for Balthasar while he relieves himself.");
};

INSTANCE Info_Mod_Balthasar_Bereit (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Bereit_Condition;
	information	= Info_Mod_Balthasar_Bereit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Okay, I'm ready.";
};

FUNC INT Info_Mod_Balthasar_Bereit_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Hirte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Bereit_Info()
{
	AI_Output(hero, self, "Info_Mod_Balthasar_Bereit_15_00"); //Okay, I'm ready.
	AI_Output(self, hero, "Info_Mod_Balthasar_Bereit_05_01"); //All right, I'm out of here.

	AI_StopProcessInfos	(self);

	Mdl_ApplyOverlayMds	(self, "HUMANS_FLEE.MDS");

	Npc_ExchangeRoutine	(self, "WOLF");
};

INSTANCE Info_Mod_Balthasar_Wolf (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Wolf_Condition;
	information	= Info_Mod_Balthasar_Wolf_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Balthasar_Wolf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balthasar_Bereit))
	&& (Mod_Balthasar_Wolf == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Balthasar_Wolf_Info()
{
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_05_00"); //What the hell happened here?
	AI_Output(hero, self, "Info_Mod_Balthasar_Wolf_15_01"); //A pack of wolves attacked me right after you left. But I could stop them.
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_05_02"); //Thank you, what would I have done without you?
	AI_Output(self, hero, "Info_Mod_Balthasar_Wolf_05_03"); //Take these coins as a thank you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	B_GivePlayerXP	(100);

	B_LogEntry	(TOPIC_MOD_BALTHASAR_SCHAFE, "Balthasar is happy with me.");
	B_SetTopicStatus	(TOPIC_MOD_BALTHASAR_SCHAFE, LOG_SUCCESS);

	Mdl_RemoveOverlayMDS (self,"HUMANS_FLEE.MDS");

	B_Göttergefallen(1, 1);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Balthasar_Pickpocket (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_Pickpocket_Condition;
	information	= Info_Mod_Balthasar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_Balthasar_Pickpocket_Condition()
{
	C_Beklauen	(10, ItMi_Gold, 12);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

	Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_BACK, Info_Mod_Balthasar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Balthasar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Balthasar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Balthasar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Balthasar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Balthasar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Balthasar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Balthasar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Balthasar_EXIT (C_INFO)
{
	npc		= Mod_101_BAU_Balthasar_NW;
	nr		= 1;
	condition	= Info_Mod_Balthasar_EXIT_Condition;
	information	= Info_Mod_Balthasar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Balthasar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Balthasar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
