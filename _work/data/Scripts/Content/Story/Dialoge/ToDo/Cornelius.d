INSTANCE Info_Mod_Cornelius_Hi (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Hi_Condition;
	information	= Info_Mod_Cornelius_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Cornelius_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cornelius_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Cornelius_Hi_13_01"); //I'm Cornelius, deputy governor of Khorinis. What can I do for you?
};

INSTANCE Info_Mod_Cornelius_Morgahard (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Morgahard_Condition;
	information	= Info_Mod_Cornelius_Morgahard_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to talk to you about Morgahard.";
};

FUNC INT Info_Mod_Cornelius_Morgahard_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Morgahard_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_00"); //I want to talk to you about Morgahard.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_01"); //(nervous) What about him?
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_02"); //I don't think he committed the crime that caused him to be thrown into the colony.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_03"); //Well, well, that may be true, but it's too late now, he was already in the colony.
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_04"); //I know that, but I still want him to be officially innocent.
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_05"); //l-- I have proof of his innocence. However, they'd kill me if I gave it to you.
	AI_Output(hero, self, "Info_Mod_Cornelius_Morgahard_15_06"); //Who would kill you?
	AI_Output(self, hero, "Info_Mod_Cornelius_Morgahard_13_07"); //I want to meet you tonight in the empty marketplace. There we can talk safely.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Cornelius cannot speak frankly. He wants to meet me at the marketplace tonight.");

	B_StartOtherRoutine	(self, "MARKT");
};

INSTANCE Info_Mod_Cornelius_AtMarkt (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_AtMarkt_Condition;
	information	= Info_Mod_Cornelius_AtMarkt_Info;
	permanent	= 0;
	important	= 0;
	description	= "So, tell me what you know.";
};

FUNC INT Info_Mod_Cornelius_AtMarkt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Morgahard))
	&& (Npc_GetDistToWP(self, "NW_CITY_MERCHANT_PATH_29_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_AtMarkt_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_AtMarkt_15_00"); //So, tell me what you know.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_01"); //Well, there's a secret group of wealthy citizens in town who have quite a lot of power.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_02"); //Morgahard was a thorn in their side because he did not want to join them and worked against them.
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_03"); //So they set him up with a crime and sent him to the colony.
	AI_Output(hero, self, "Info_Mod_Cornelius_AtMarkt_15_04"); //Who are the members of this group?
	AI_Output(self, hero, "Info_Mod_Cornelius_AtMarkt_13_05"); //I only know one person, and that's Gerbrandt.

	AI_StopProcessInfos	(self);

	AI_PlayAniBS (self, "T_DEAD", BS_LIE);

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Cornelius could just tell me that Gerbrandt was involved in the matter, but then he collapsed dead.");
};

INSTANCE Info_Mod_Cornelius_Ambient (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient_Condition;
	information	= Info_Mod_Cornelius_Ambient_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you like your position as deputy governor?";
};

FUNC INT Info_Mod_Cornelius_Ambient_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient_15_00"); //Do you like your position as deputy governor?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_01"); //This title is a mockery!
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_02"); //I'm just waiting for them to officially hire me as a second temp for Lord Hagen.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_03"); //Because that's all I am. Larius has a little ailment? I must tell the lords.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_04"); //Lord Hagen has an order? To Larius!
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient_13_05"); //Like they couldn't walk the two rooms themselves!
};

INSTANCE Info_Mod_Cornelius_Ambient01 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient01_Condition;
	information	= Info_Mod_Cornelius_Ambient01_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sure you'll get a lot out of what happens.";
};

FUNC INT Info_Mod_Cornelius_Ambient01_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Ambient))
	&& (Mod_Cornelius_Overtalk == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient01_Info()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_15_00"); //I'm sure you'll get a lot out of what happens.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_13_01"); //All confidential information.

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);

	Info_AddChoice	(Info_Mod_Cornelius_Ambient01, "I have a well-filled purse.", Info_Mod_Cornelius_Ambient01_B);
	Info_AddChoice	(Info_Mod_Cornelius_Ambient01, "I could help you improve your position.", Info_Mod_Cornelius_Ambient01_A);
};

FUNC VOID Info_Mod_Cornelius_Ambient01_B()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_B_15_00"); //I have a well-filled purse.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_B_13_01"); //It won't do you any good, I have my honor.

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);
};

FUNC VOID Info_Mod_Cornelius_Ambient01_A()
{
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_00"); //I could help you improve your position.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_A_13_01"); //To what extent?

	// Wenn man Lord Hagen geholfen hat

	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Hi))
	{
		AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_02"); //My relationship with the lords is good.
		AI_Output(self, hero, "Info_Mod_Cornelius_Ambient01_A_13_03"); //In that case... you help me first, then I'll be happy to answer you.

		Mod_Cornelius_Overtalk = 1;

		Log_CreateTopic	(TOPIC_MOD_CORNELIUS_HELP, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_mOD_CORNELIUS_HELP, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_CORNELIUS_HELP, "Through his messenger services, Cornelius, the deputy governor, is in possession of valuable information about the situation in Khorinis. In order for him to start talking, however, he wants to be released from his annoying duties first. I should talk to Lord Hagen about this.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Cornelius_Ambient01_A_15_04"); //I can't think of anything at the moment.
	};

	Info_ClearChoices	(Info_Mod_Cornelius_Ambient01);
};

INSTANCE Info_Mod_Cornelius_Ambient02 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient02_Condition;
	information	= Info_Mod_Cornelius_Ambient02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Cornelius))
	&& (Mod_Cornelius_Overtalk == 2)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient02_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient02_13_00"); //So, what have you managed to achieve?
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient02_15_01"); //Looks like I can't help you.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient02_13_02"); //(ironic) Well, great! But don't think that's how we do business.
};

INSTANCE Info_Mod_Cornelius_Ambient03 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient03_Condition;
	information	= Info_Mod_Cornelius_Ambient03_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient03_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hagen_Cornelius))
	&& (Mod_Cornelius_Overtalk == 4)
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient03_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_00"); //So, what have you managed to achieve?
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_01"); //You're Minister of Economics from now on. Satisfied?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_02"); //But hello! Not a bad task, and finally I can escape the skeptical eyes of Lord Hagen.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_03"); //Don't do anything stupid. I'd have to answer for that.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_04"); //I would never dream of it.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_05"); //What about the return?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_06"); //The piquant news?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_07"); //I know from my sources that Lord Hagen no longer has the King's full confidence.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_08"); //He is said to have already sent a delegation to strike at the right moment and deprive Lord Hagen of power.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient03_15_09"); //Then it won't get boring here anyway.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient03_13_10"); //You bet your ass.

	B_GivePlayerXP	(50);

	Mod_Cornelius_Overtalk_Day = Wld_GetDay();

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_CORNELIUS_HELP, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "WIRTSCHAFT");
};

INSTANCE Info_Mod_Cornelius_Ambient04 (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Ambient04_Condition;
	information	= Info_Mod_Cornelius_Ambient04_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Cornelius_Ambient04_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cornelius_Ambient03))
	&& (Mod_Cornelius_Overtalk == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cornelius_Ambient04_Info()
{
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_00"); //Freeze! Nobody's coming in here right now!
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_01"); //What the hell happened here?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_02"); //Lord Hagen is under arrest! I will no longer tolerate his reign.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_03"); //So what are you gonna do now?
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_04"); //The good gentleman hides in there with one last band of loyalists. The gang will now be starved to death until it surrenders.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_05"); //So you let me down after all.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_06"); //Otherwise, I wouldn't have been able to reach my destination. Now get out of here, I don't need you anymore.
	AI_Output(hero, self, "Info_Mod_Cornelius_Ambient04_15_07"); //You can't get rid of me that easily now....
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_08"); //So you'd rather go stubbornly under? I don't care about him.
	AI_Output(self, hero, "Info_Mod_Cornelius_Ambient04_13_09"); //(shouting) Draw your arms, men, blood is shed here!

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Cornelius_Pickpocket (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_Pickpocket_Condition;
	information	= Info_Mod_Cornelius_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Cornelius_Pickpocket_Condition()
{
	C_Beklauen	(64, ItMi_Gold, 26);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

	Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_BACK, Info_Mod_Cornelius_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Cornelius_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Cornelius_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Cornelius_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Cornelius_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Cornelius_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Cornelius_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Cornelius_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Cornelius_EXIT (C_INFO)
{
	npc		= Mod_571_NONE_Cornelius_NW;
	nr		= 1;
	condition	= Info_Mod_Cornelius_EXIT_Condition;
	information	= Info_Mod_Cornelius_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cornelius_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cornelius_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
