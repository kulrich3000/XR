INSTANCE Info_Mod_Frazer_Hi (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Hi_Condition;
	information	= Info_Mod_Frazer_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "What are you doing here?";
};

FUNC INT Info_Mod_Frazer_Hi_Condition()
{
	if (Kapitel < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Hi_Info()
{
	B_Say	(hero, self, "$WASMACHSTDUHIER");

	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_01"); //Standing around, and now and then I scratch my bag. (laughs rough)
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_02"); //Well, I'm supposed to keep an eye on the guys here, but what's going to happen? (pause)
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_03"); //Wait a minute, while you're here.... take this to the boss right away, would you?
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_04"); //Then I don't have to walk all the time, which is really exciting.

	B_GiveInvItems	(self, hero, ItMi_ErzPaketFrazer, 10);

	AI_Output(hero, self, "Info_Mod_Frazer_Hi_15_05"); //What...? uh... Who's the boss?
	AI_Output(self, hero, "Info_Mod_Frazer_Hi_29_06"); //Anselm of course! We need this stuff for rebuilding the plumbing. Or something.

	Log_CreateTopic	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_ERZPAKETE, "Frazer suddenly pressed 10 ore packs into my arms, which I am supposed to bring to Anselm in Khorata.");
};

INSTANCE Info_Mod_Frazer_Endres (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres_Condition;
	information	= Info_Mod_Frazer_Endres_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have any idea who might have killed Endres?";
};

FUNC INT Info_Mod_Frazer_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Heiler_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres_15_00"); //Do you have any idea who might have killed Endres?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres_29_01"); //Actually, every prospector is an option. And otherwise... don't ask me.
};

INSTANCE Info_Mod_Frazer_Endres02 (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres02_Condition;
	information	= Info_Mod_Frazer_Endres02_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who took over Endres' work?";
};

FUNC INT Info_Mod_Frazer_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Norman_Endres))
	&& (Npc_KnowsInfo(hero, Info_Mod_Roman_Endres))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres02_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_00"); //Who took over Endres' work?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_01"); //Why do you want to know? Are you planning to make him bless the temporal as well?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_02"); //No, for security reasons, we will not betray the new chief.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_03"); //What do I have to do to get you to give me the name?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_04"); //I need to be sure you don't want to hurt him.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_05"); //Promise is probably not enough for you?
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_06"); //Haha. Hmm... a proof of your loyalty... All right, that reminds me. Kiss me!
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_07"); //What?!
	AI_Output(self, hero, "Info_Mod_Frazer_Endres02_29_08"); //Ahaha, joke. A little piece of paper from Anselm, on which he vouches for you, would be enough for me.
	AI_Output(hero, self, "Info_Mod_Frazer_Endres02_15_09"); //I'll see what I can do.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Frazer from the mine will only tell me who inherited Endres' position when he got the assurance from Anselm that I can be trusted.");
};

INSTANCE Info_Mod_Frazer_Endres03 (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Endres03_Condition;
	information	= Info_Mod_Frazer_Endres03_Info;
	permanent	= 0;
	important	= 0;
	description	= "From Anselm for you.";
};

FUNC INT Info_Mod_Frazer_Endres03_Condition()
{
	if (Npc_HasItems(hero, ItWr_AnselmForFrazer) == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres02))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Frazer_Endres03_Info()
{
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_00"); //From Anselm for you.

	B_GiveInvItems	(hero, self, ItWr_AnselmForFrazer, 1);

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_01"); //Joa, all right. Then I'll let you in on this.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_02"); //Well, Wendel took Endres' place, of course. He's the only one qualified to do it.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_03"); //I have just one more question: why do you want to know?
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_04"); //Wendel is now under suspicion.
	AI_Output(self, hero, "Info_Mod_Frazer_Endres03_29_05"); //(surprised) Spiral? I don't think so... But yes, that would make sense...
	AI_Output(hero, self, "Info_Mod_Frazer_Endres03_15_06"); //We'll see about that.

	B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Wendel benefited from Endres' death. Did he get rid of a rival with the murder?");

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Frazer_Pickpocket (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_Pickpocket_Condition;
	information	= Info_Mod_Frazer_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Frazer_Pickpocket_Condition()
{
	C_Beklauen	(72, ItMi_Gold, 21);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

	Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_BACK, Info_Mod_Frazer_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Frazer_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Frazer_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Frazer_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Frazer_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Frazer_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Frazer_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Frazer_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Frazer_EXIT (C_INFO)
{
	npc		= Mod_7479_OUT_Frazer_REL;
	nr		= 1;
	condition	= Info_Mod_Frazer_EXIT_Condition;
	information	= Info_Mod_Frazer_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Frazer_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Frazer_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
