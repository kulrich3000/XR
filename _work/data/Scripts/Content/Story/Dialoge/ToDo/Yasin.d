INSTANCE Info_Mod_Yasin_Hi (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Hi_Condition;
	information	= Info_Mod_Yasin_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you all right?";
};

FUNC INT Info_Mod_Yasin_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yasin_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_00"); //Are you all right?
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_01"); //Get the hell out of here.
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_02"); //Hey, take it easy. I just wanted to know how you were doing.
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_03"); //Great, you can see that. What do you want?
	AI_Output(hero, self, "Info_Mod_Yasin_Hi_15_04"); //Are you one of the crooks here?
	AI_Output(self, hero, "Info_Mod_Yasin_Hi_13_05"); //Yes, my name is Yasin. But maybe I won't be part of this community for long.
};

INSTANCE Info_Mod_Yasin_Aufgabe (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Aufgabe_Condition;
	information	= Info_Mod_Yasin_Aufgabe_Info;
	permanent	= 0;
	important	= 0;
	description	= "Why would you do that?";
};

FUNC INT Info_Mod_Yasin_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yasin_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yasin_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_00"); //Why would you do that?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_01"); //(angrily) I have been doing crooked business with some of the city guards some time ago.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_02"); //One of these guys didn't like my stuff, and he blacked me out everywhere.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_03"); //I had to flee the city.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_04"); //What's the big deal?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_05"); //Can't you think logically or are you that stupid?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_06"); //The guy was chasing me, and he saw me get out of here.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_07"); //He knows our hideout, and if we're unlucky, the militia will be here soon.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_08"); //Our leaders are enthusiastic about it.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_09"); //That's not good.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_10"); //Yeah, that's not good. You've heard everything, so the fairy tale lesson is over. Can you go now?
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_11"); //Can I help you with your problem?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_12"); //So, why would you do that?
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_13"); //I'm looking for voices to join you guys.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_14"); //A worthy cause. Hm...
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_15"); //If you can help me, I will certainly be able to give you my vote.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_16"); //What do you want me to do?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_17"); //Take care of this sleazy city guard for me, as befits a real assassin.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_18"); //If you kill him, I'll get rid of my problem and you have one more vote.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_19"); //Which city guard is this, exactly?
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_20"); //Mika is the son of a bitch. He stands in front of the gate day and night.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_21"); //The stupid thing is that there are always some gatekeepers standing with him.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_22"); //You have to lure him away and take him out. The cave with the teleporter would be the perfect place.
	AI_Output(hero, self, "Info_Mod_Yasin_Aufgabe_15_23"); //All right, this guy's as good as done.
	AI_Output(self, hero, "Info_Mod_Yasin_Aufgabe_13_24"); //Hurry up, or I'll be kicked out of the court soon.

	Log_CreateTopic	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_YASIN_MIKA, "I've been talking to the crook Yasin. He told me that militia soldier Mika knows about the hiding place of the Assassins because of a mistake by Yasin. If Mika isn't finished soon, the assassins will be attacked by the militia. I'm supposed to kill that son of a bitch for Yasin when it's night. I'm supposed to lure him into the cave with the teleporter and secretly kill him.");
};

INSTANCE Info_Mod_Yasin_MikaTot (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_MikaTot_Condition;
	information	= Info_Mod_Yasin_MikaTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "There's nothing more to tell this Mika. I took him down.";
};

FUNC INT Info_Mod_Yasin_MikaTot_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Yasin_Aufgabe))
	&& (Npc_IsDead(Mod_598_MIL_Mika_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Yasin_MikaTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Yasin_MikaTot_15_00"); //There's nothing more to tell this Mika. I took him down.
	AI_Output(self, hero, "Info_Mod_Yasin_MikaTot_13_01"); //Are you sure?
	AI_Output(hero, self, "Info_Mod_Yasin_MikaTot_15_02"); //Don't you believe me?
	AI_Output(self, hero, "Info_Mod_Yasin_MikaTot_13_04"); //Yes, yes, of course. Now I'm reassured. Someone like you can be useful. You have my vote.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	B_SetTopicStatus	(TOPIC_MOD_ASS_YASIN_MIKA, LOG_SUCCESS);

	B_GivePlayerXP	(150);
};

INSTANCE Info_Mod_Yasin_Pickpocket (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_Pickpocket_Condition;
	information	= Info_Mod_Yasin_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Yasin_Pickpocket_Condition()
{
	C_Beklauen	(80, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

	Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_BACK, Info_Mod_Yasin_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Yasin_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Yasin_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Yasin_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Yasin_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Yasin_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Yasin_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Yasin_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Yasin_EXIT (C_INFO)
{
	npc		= Mod_7111_ASS_Yasin_NW;
	nr		= 1;
	condition	= Info_Mod_Yasin_EXIT_Condition;
	information	= Info_Mod_Yasin_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Yasin_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Yasin_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
