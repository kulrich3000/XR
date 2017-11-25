INSTANCE Info_Mod_Ole_Aufgabe (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Aufgabe_Condition;
	information	= Info_Mod_Ole_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Cathran thinks I could earn a little gold from you.";
};

FUNC INT Info_Mod_Ole_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cathran_Hi))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Aufgabe_15_00"); //Cathran thinks I could earn a little gold from you.
	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_01"); //Oh, that's what he means. All right, but I can't give you much for that.
	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_02"); //You'd have to go to Lord Andre for me and give him this letter.

	B_GiveInvItems	(self, hero, ItWr_OleForAndre, 1);

	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_03"); //Here's 50 gold coins.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Ole_Aufgabe_02_04"); //When you give me his answer, we'll talk about more gold.

	Log_CreateTopic	(TOPIC_MOD_KG_OLEBRIEF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_OLEBRIEF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_OLEBRIEF, "Ole gave me a letter to take to Lord Andre. Great...");
};

INSTANCE Info_Mod_Ole_WarBeiAndre (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_WarBeiAndre_Condition;
	information	= Info_Mod_Ole_WarBeiAndre_Info;
	permanent	= 0;
	important	= 0;
	description	= "I delivered the letter to Lord Andre.";
};

FUNC INT Info_Mod_Ole_WarBeiAndre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Andre_Ole))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_WarBeiAndre_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_00"); //I delivered the letter to Lord Andre.
	AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_01"); //Well, what did he tell you?
	AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_02"); //He said that he would not give you new people until you mined ore again, and as a sign of it you should bring him 50 pieces of ore.
	AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_03"); //We don't even have two ore chunks in the camp anymore and how am I supposed to clean up a mine without more people and mine ore there?

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (hero.guild != GIL_MIL)
	&& (Gardist_Dabei == FALSE)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_04"); //Ah... I've got it now. How about you work for us?
		AI_Output(hero, self, "Info_Mod_Ole_WarBeiAndre_15_05"); //If the pay's right, I'm in.
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_06"); //Don't worry, once the mine is up and running, you'll swim in gold.
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_07"); //You can consider this armor as a down payment.

		B_GiveInvItems	(self, hero, ItAr_KG_01, 1);

		KG_Dabei = 1;

		Mod_AnzahlNebengilden += 1;
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_66);

		Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
		B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Ole took me in with the royal guard.");
	}
	else if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_08"); //Well, I guess we'll just have to find someone, not a mercenary.
	}
	else if (Gardist_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_09"); //Well, I guess we'll have to find someone who won't be in the old camp.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ole_WarBeiAndre_02_10"); //Well, I guess we'll have to find someone who's not as busy as you.
	};

	B_SetTopicStatus	(TOPIC_MOD_KG_OLEBRIEF, LOG_SUCCESS);

	B_GivePlayerXP	(250);
};

INSTANCE Info_Mod_Ole_Vorbereitungen (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Vorbereitungen_Condition;
	information	= Info_Mod_Ole_Vorbereitungen_Info;
	permanent	= 0;
	important	= 0;
	description	= "All right, what am I supposed to do for you?";
};

FUNC INT Info_Mod_Ole_Vorbereitungen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_WarBeiAndre))
	&& (KG_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Vorbereitungen_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Vorbereitungen_15_00"); //All right, what am I supposed to do for you?
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_01"); //We need to fix the mine.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_02"); //I have asked Bramrad, Granmar and Melcador to do it, but that doesn't go any further.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen_02_03"); //I want you to help them with their jobs.

	Log_CreateTopic	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KG_VORBEREITUNGEN, "The mine needs to be repaired. Bramrad, Granmar and Melcador are commissioned to do this, but apparently they are not making any progress. Ole wants me to take care of this.");
};

INSTANCE Info_Mod_Ole_Vorbereitungen2 (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Vorbereitungen2_Condition;
	information	= Info_Mod_Ole_Vorbereitungen2_Info;
	permanent	= 0;
	important	= 0;
	description	= "I helped each of the three of them.";
};

FUNC INT Info_Mod_Ole_Vorbereitungen2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Bramrad_Nahrungsversorgung3))
	&& (Npc_KnowsInfo(hero, Info_Mod_Granmar_Trollholz2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Melcador_Buddler7))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_Vorbereitungen2_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_Vorbereitungen2_15_00"); //I helped each of the three of them.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_01"); //So now we can finally start to explore the mine.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_02"); //You did a very good job. From now on, you get your orders directly from Hymir.
	AI_Output(self, hero, "Info_Mod_Ole_Vorbereitungen2_02_03"); //Oh, one more thing: You've earned this armor.

	CreateInvItems	(hero, SSLD_ARMOR, 1);

	B_ShowGivenThings	(ConcatStrings(SSLD_ARMOR.name, " received"));

	B_SetTopicStatus	(TOPIC_MOD_KG_VORBEREITUNGEN, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Ole_ErzAnteil (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_ErzAnteil_Condition;
	information	= Info_Mod_Ole_ErzAnteil_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm here to collect my share of the ore.";
};

FUNC INT Info_Mod_Ole_ErzAnteil_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hymir_MineFertig))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_ErzAnteil_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_ErzAnteil_15_00"); //I'm here to collect my share of the ore.

	if (Wld_GetDay()-6 > Mod_KG_OleErz)
	{
		AI_Output(self, hero, "Info_Mod_Ole_ErzAnteil_02_01"); //Here's your share.

		B_GiveInvItems	(self, hero, ItMi_Nugget, 10+r_max(5));

		Mod_KG_OleErz = Wld_GetDay();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Ole_ErzAnteil_02_02"); //You already got your ore this week.
	};
};

INSTANCE Info_Mod_Ole_InGilde (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_InGilde_Condition;
	information	= Info_Mod_Ole_InGilde_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did you get into the Royal Guard?";
};

FUNC INT Info_Mod_Ole_InGilde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Ole_Vorbereitungen2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Ole_InGilde_Info()
{
	AI_Output(hero, self, "Info_Mod_Ole_InGilde_15_00"); //How did you get into the Royal Guard?
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_01"); //Good question. Today I would probably have made a different decision than before, but you have to live with your decisions.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_02"); //I used to be a city militia in Khorinis until the king decided to start the great ore hunt in the Minental. So I was assigned to the royal guard and was allowed to watch out for serious criminals here in the Minental.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_03"); //Luckily, when the barrier was created, I was on an errand in Khorinis. Just like everyone else who was in the Minetal at that time, they were slaughtered by the prisoners.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_04"); //With the few royal guards who had survived, the king could not win, of course, but he needed an ore source that did not depend on the feelings of the prisoners, and so we founded this camp in his name.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_05"); //But it didn't do much good. You see how shabby everything is here.
	AI_Output(hero, self, "Info_Mod_Ole_InGilde_15_06"); //Why has the King never supported you with additional troops?
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_07"); //Well, that's probably because of the war in Myrtana and he probably doesn't even know we're alive anymore.
	AI_Output(self, hero, "Info_Mod_Ole_InGilde_02_08"); //He probably wrote us off a long time ago.
};

INSTANCE Info_Mod_Ole_Pickpocket (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_Pickpocket_Condition;
	information	= Info_Mod_Ole_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Ole_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 23);
};

FUNC VOID Info_Mod_Ole_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

	Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_BACK, Info_Mod_Ole_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Ole_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Ole_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
};

FUNC VOID Info_Mod_Ole_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Ole_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Ole_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Ole_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Ole_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Ole_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Ole_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Ole_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Ole_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Ole_EXIT (C_INFO)
{
	npc		= Mod_1011_KGD_Ole_MT;
	nr		= 1;
	condition	= Info_Mod_Ole_EXIT_Condition;
	information	= Info_Mod_Ole_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Ole_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Ole_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
