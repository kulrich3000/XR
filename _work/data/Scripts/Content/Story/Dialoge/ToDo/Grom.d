INSTANCE Info_Mod_Grom_Hi (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Hi_Condition;
	information	= Info_Mod_Grom_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hi.";
};

FUNC INT Info_Mod_Grom_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grom_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Hi_15_00"); //Hi.
	AI_Output(self, hero, "Info_Mod_Grom_Hi_08_01"); //Hi.
};

INSTANCE Info_Mod_Grom_WhoAreYou (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_WhoAreYou_Condition;
	information	= Info_Mod_Grom_WhoAreYou_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you Grom?";
};

FUNC INT Info_Mod_Grom_WhoAreYou_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_WhoAreYou_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_WhoAreYou_15_00"); //Are you Grom?
	AI_Output(self, hero, "Info_Mod_Grom_WhoAreYou_08_01"); //Yes... what do you want?
};

INSTANCE Info_Mod_Grom_Dragomir (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Dragomir_Condition;
	information	= Info_Mod_Grom_Dragomir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dragomir sent me.";
};

FUNC INT Info_Mod_Grom_Dragomir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WhoAreYou))
	&& (Npc_KnowsInfo(hero, Info_Mod_Dragomir_Mitmachen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Dragomir_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Dragomir_15_00"); //I'm supposed to ask Dragomir if you found out anything new about the area.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_01"); //Now he lets even beginners run through the woods, unbelievable. But if it's absolutely necessary...
	AI_Output(hero, self, "Info_Mod_Grom_Dragomir_15_02"); //Yes, it must be done. Now tell me what you know. I want to go further today.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_03"); //No, there's not much new news so far. The lazy mercenaries lurk around here all the time and mistreat any game within a few miles.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_04"); //Lately, however, the field robbers seem to be much more aggressive than usual.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_05"); //They go farther into the fields and attack peasants too, to the mercenaries' regret.
	AI_Output(self, hero, "Info_Mod_Grom_Dragomir_08_06"); //(laughs dirty) That's where they get their asses up again.

	B_LogEntry	(TOPIC_MOD_JG_JAGDGEBIETE, "There is nothing new about Grom, except that the field robbers seem to be more aggressive than usual.");
};

INSTANCE Info_Mod_Grom_WerBistDu (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_KeinBock_Condition;
	information	= Info_Mod_Grom_KeinBock_Info;
	permanent	= 0;
	important	= 0;
	description	= "You don't like it here very much.";
};

FUNC INT Info_Mod_Grom_KeinBock_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WhoAreYou))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_KeinBock_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_KeinBock_15_00"); //You don't like it here very much.
	AI_Output(self, hero, "Info_Mod_Grom_KeinBock_08_01"); //No, you can't say that. These ignorant puke can only rip open their mouths and trample down everything they encounter like a herd of fat molerats.
	AI_Output(self, hero, "Info_Mod_Grom_KeinBock_08_02"); //Have you ever seen one of their caves before? Disgusting!
};

INSTANCE Info_Mod_Grom_Sauhaufen (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Sauhaufen_Condition;
	information	= Info_Mod_Grom_Sauhaufen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Yeah, a real turd here.";
};

FUNC INT Info_Mod_Grom_Sauhaufen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_WerBistDu))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_15_00"); //Yeah, a real turd here.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_08_01"); //Hm, say, aren't you interested in a little task?
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_15_02"); //Depends on it.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_08_03"); //I wanted to have a look at the secret storerooms of the mercenaries, but they were watching like a dragon in front of his hoard. I want you to give her something.... a distraction.

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);

	Info_AddChoice	(Info_Mod_Grom_Sauhaufen, "No, I don't think so.", Info_Mod_Grom_Sauhaufen_Nein);
	Info_AddChoice	(Info_Mod_Grom_Sauhaufen, "Sounds dangerous.", Info_Mod_Grom_Sauhaufen_Ja);
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Nein()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Nein_15_00"); //No, I don't think so.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Nein_08_01"); //Then don't stop me any longer.

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);
};

FUNC VOID Info_Mod_Grom_Sauhaufen_Ja()
{
	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Ja_15_00"); //Sounds dangerous.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_01"); //It isn't. Listen. Just pour this scavenger grounding into Theklas stew if no one is watching.

	B_GiveInvItems	(self, hero, ItMi_Scavengerdung, 1);

	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_02"); //The mercenaries eat from it every night and will get a lot of stomach cramps, you can count on it.
	AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_03"); //I don't care how you do it, they're just not allowed to hear anything. If necessary, try it at night, the manure doesn't hurt if it can pull for a long time.

	if (Npc_HasItems(hero, ItMi_Pan) == 0)
	{
		AI_Output(self, hero, "Info_Mod_Grom_Sauhaufen_Ja_08_04"); //Here's another pan. It should make it easier.

		B_GiveInvItems	(self, hero, ItMi_Pan, 1);
	};

	AI_Output(hero, self, "Info_Mod_Grom_Sauhaufen_Ja_15_05"); //Sure, I'll be back soon.

	Log_CreateTopic	(TOPIC_MOD_JG_DUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_JG_DUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_JG_DUNG, "Hunter Grom wants to take a look around the mercenaries' pantry. I'm supposed to mix Scavengerdung in Theklas stew.");

	Info_ClearChoices	(Info_Mod_Grom_Sauhaufen);
};

INSTANCE Info_Mod_Grom_DungDrin (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_DungDrin_Condition;
	information	= Info_Mod_Grom_DungDrin_Info;
	permanent	= 0;
	important	= 0;
	description	= "You shouldn't have any trouble this time.";
};

FUNC INT Info_Mod_Grom_DungDrin_Condition()
{
	if (Npc_KnowsInfo(hero, PC_Herd_Scavengerdung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_DungDrin_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_DungDrin_15_00"); //You shouldn't have any trouble this time.
	AI_Output(self, hero, "Info_Mod_Grom_DungDrin_08_01"); //Hey, thanks to you. Maybe I was wrong about you. You're really all right.
	AI_Output(self, hero, "Info_Mod_Grom_DungDrin_08_02"); //Here's some gold as a reward.

	B_GivePlayerXP	(100);

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_Göttergefallen(3, 1);

	B_LogEntry	(TOPIC_MOD_JG_DUNG, "I told Grom he can look around the storerooms now.");
	B_SetTopicStatus	(TOPIC_MOD_JG_DUNG, LOG_SUCCESS);
};

INSTANCE Info_Mod_Grom_Untier (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Untier_Condition;
	information	= Info_Mod_Grom_Untier_Info;
	permanent	= 0;
	important	= 0;
	description	= "Have you seen anything unusual lately?";
};

FUNC INT Info_Mod_Grom_Untier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Grom_Hi))
	&& (Mod_Cronos_Artefakt == 2)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Cronos_AW_Artefakt_02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Grom_Untier_Info()
{
	AI_Output(hero, self, "Info_Mod_Grom_Untier_15_00"); //Have you seen anything unusual lately?
	AI_Output(self, hero, "Info_Mod_Grom_Untier_08_01"); //Hmm, no, just the usual. Lots of wood to work with and two trolls.
};

INSTANCE Info_Mod_Grom_Pickpocket (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_Pickpocket_Condition;
	information	= Info_Mod_Grom_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Grom_Pickpocket_Condition()
{
	C_Beklauen	(60, ItAt_LurkerSkin, 2);
};

FUNC VOID Info_Mod_Grom_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

	Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_BACK, Info_Mod_Grom_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Grom_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Grom_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
};

FUNC VOID Info_Mod_Grom_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Grom_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Grom_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Grom_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Grom_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Grom_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Grom_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Grom_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Grom_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Grom_EXIT (C_INFO)
{
	npc		= Mod_766_NONE_Grom_NW;
	nr		= 1;
	condition	= Info_Mod_Grom_EXIT_Condition;
	information	= Info_Mod_Grom_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Grom_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Grom_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
