INSTANCE Info_Mod_Zeki_Hi (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Hi_Condition;
	information	= Info_Mod_Zeki_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Zeki_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zeki_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_00"); //My name is Zeki. I'm with this sad club of crooks.
	AI_Output(hero, self, "Info_Mod_Zeki_Hi_15_01"); //Why sad club?
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_02"); //Take a look around. Would you feel comfortable if you never get the chance to take a higher rank?
	AI_Output(hero, self, "Info_Mod_Zeki_Hi_15_03"); //That wouldn't be great. Does that mean you can't win within the guild?
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_04"); //No, not all of them. Some, like me, are condemned as crooks to perform lesser services, such as hunting.
	AI_Output(self, hero, "Info_Mod_Zeki_Hi_05_05"); //What do you want from me?
};

INSTANCE Info_Mod_Zeki_Aufgabe (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Aufgabe_Condition;
	information	= Info_Mod_Zeki_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd like to join you.";
};

FUNC INT Info_Mod_Zeki_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zeki_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zeki_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_00"); //I'd like to join you. Shakir told me I needed to convince you crooks.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_01"); //And another one who wants to ride himself into the crap here and....
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_02"); //Don't you have a job for me?
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_03"); //But I have something to do.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_04"); //I love to play lute, but I've accidentally dropped my old lute on the floor so that it's broken.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_05"); //I'd like to have a new one, but I don't have time to go into town and get one.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_06"); //Please go to Thorben, one of the master craftsmen for me.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_07"); //Tell him you want a new lute.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_08"); //There are 250 gold coins here so you can pay him.

	B_GiveInvItems	(self, hero, ItMi_Gold, 250);

	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_09"); //When you have the sounds, I will give you my vote.
	AI_Output(hero, self, "Info_Mod_Zeki_Aufgabe_15_10"); //All right, then I'll see Thorben right away.
	AI_Output(self, hero, "Info_Mod_Zeki_Aufgabe_05_11"); //Thank you so much, I'll wait for you here.

	Log_CreateTopic	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_ZEKI_LAUTE, "The crook Zeki is a very pessimistic man. He loves to play the lute to keep himself in good spirits, but he has accidentally broken his old instrument and has only been moping ever since. Since he doesn't have time to let the master craftsman Thorben build a new lute, I shall go to him and take over this job. When I've done that, maybe there'll be a reward and a vote for the rogues to pick me up.");
};

INSTANCE Info_Mod_Zeki_Laute (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Laute_Condition;
	information	= Info_Mod_Zeki_Laute_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's your new lute.";
};

FUNC INT Info_Mod_Zeki_Laute_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thorben_LauteFertig))
	&& (Npc_HasItems(hero, ItMi_Lute_Zeki) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Zeki_Laute_Info()
{
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_00"); //Here's your new lute.

	B_GiveInvItems	(hero, self, ItMi_Lute_Zeki, 1);

	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_01"); //Thank you, I owe you something now.
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_02"); //How about your voice for the recording?
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_03"); //Yeah, like I promised, you'll get it.
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_04"); //If Shakir asks for you, I'll tell him only the best about you.
	AI_Output(hero, self, "Info_Mod_Zeki_Laute_15_05"); //Thanks, that's what I wanted to hear.
	AI_Output(self, hero, "Info_Mod_Zeki_Laute_05_06"); //Now I will be able to dedicate myself completely to the lute playing again.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_ASS_ZEKI_LAUTE, "I brought Zeki his new lute and he was very happy about it. Now I have a voice for the recording and I can now devote myself to more things.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEKI_LAUTE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Zeki_Pickpocket (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_Pickpocket_Condition;
	information	= Info_Mod_Zeki_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Zeki_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

	Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_BACK, Info_Mod_Zeki_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Zeki_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Zeki_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Zeki_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Zeki_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Zeki_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Zeki_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Zeki_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Zeki_EXIT (C_INFO)
{
	npc		= Mod_7102_ASS_Zeki_NW;
	nr		= 1;
	condition	= Info_Mod_Zeki_EXIT_Condition;
	information	= Info_Mod_Zeki_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Zeki_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Zeki_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
