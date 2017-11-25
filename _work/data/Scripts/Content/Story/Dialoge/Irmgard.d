INSTANCE Info_Mod_Irmgard_Hi (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Hi_Condition;
	information	= Info_Mod_Irmgard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "You've been wanting to get out of here for a long time, haven't you?";
};

FUNC INT Info_Mod_Irmgard_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hedwig_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Hi_15_00"); //You've been wanting to get out of here for a long time, haven't you?
	AI_Output(self, hero, "Info_Mod_Irmgard_Hi_17_01"); //I'd love to. How can you volunteer to stay in this den of robbers? Up there in the corner... Cobwebs!
	AI_Output(self, hero, "Info_Mod_Irmgard_Hi_17_02"); //But Hedwig says it's the only way our men will change. And I want my husband to change.
};

INSTANCE Info_Mod_Irmgard_Kneipe (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe_Condition;
	information	= Info_Mod_Irmgard_Kneipe_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have a proposition for you.";
};

FUNC INT Info_Mod_Irmgard_Kneipe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_00"); //I have a proposition for you.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_01"); //If I promise to make sure that your wish is fulfilled - would you help me get Hedwig and Berta out of here?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_02"); //Well, I don't know. Hedwig will not give up so easily.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_03"); //There must be some way to get her out of the inn, right?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_04"); //I can't think of anything.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_05"); //Why don't you think about it? What would have to happen if Hedwig left the house?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_06"); //Well, she loves sheep above all else. Whenever she sees one, she always walks there immediately and strokes it.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_07"); //That's a start. The sheep would then have to flee before Hedwig reaches it.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_08"); //That way, we could make sure she gets out of the inn.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_09"); //And then what?
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_10"); //Then she would have to be lured to Anselm so that the two of them could have a say.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_11"); //Somehow they'll be able to come to an agreement.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_12"); //Not necessarily.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_13"); //Let's try it.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_14"); //Where do we get the sheep and get them to do what we want?
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_15"); //I could turn into....
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_16"); //Where can I get a conversion role here?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_17"); //Try the marketplace at Daniel's or the Fire Magic House.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_18"); //Good. Are you in?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe_17_19"); //All right, then.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe_15_20"); //See you later, then!

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Hedwig loves sheep more than anything else, so my plan is to turn me into one and lure them to Anselm, so that they can express themselves. I might be able to get a transformational role at Daniel's Market Square or at the House of Fire Magicians.");

	CreateInvItems	(Mod_7378_OUT_Daniel_REL, ItSc_TrfSheep, 3);
};

INSTANCE Info_Mod_Irmgard_Kneipe2 (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe2_Condition;
	information	= Info_Mod_Irmgard_Kneipe2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hedwig called off the action.";
};

FUNC INT Info_Mod_Irmgard_Kneipe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe2_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_00"); //Hedwig called off the action.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_01"); //(sceptical) She let herself be persuaded? It's not like her.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_02"); //Anselms and my good arguments she had nothing to oppose.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_03"); //So you can go now. And take Berta with you.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_04"); //Yeah, the good guy's gonna have to get a good night's sleep.
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_05"); //And I'm still talking to my husband today.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe2_15_06"); //Want me to help you with that?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe2_17_07"); //No, I don't think that would be a good idea. But nice of you to help us anyway.

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_DITMAR_DICKELUFT, LOG_SUCCESS);

	Mod_Irmgard_Tag = Wld_GetDay();

	B_GivePlayerXP	(100);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "HEIM");
	B_StartOtherRoutine	(Mod_7724_OUT_Berta_REL, "HEIM");
};

INSTANCE Info_Mod_Irmgard_Kneipe3 (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Kneipe3_Condition;
	information	= Info_Mod_Irmgard_Kneipe3_Info;
	permanent	= 0;
	important	= 0;
	description	= "How did the conversation with your husband go?";
};

FUNC INT Info_Mod_Irmgard_Kneipe3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Irmgard_Kneipe2))
	&& (Wld_GetDay() > Mod_Irmgard_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Irmgard_Kneipe3_Info()
{
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe3_15_00"); //How did the conversation with your husband go?
	AI_Output(self, hero, "Info_Mod_Irmgard_Kneipe3_17_01"); //We have found a good compromise: he has offered to work a little more so that we can afford a housekeeper.
	AI_Output(hero, self, "Info_Mod_Irmgard_Kneipe3_15_02"); //Well then...
};

INSTANCE Info_Mod_Irmgard_Pickpocket (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_Pickpocket_Condition;
	information	= Info_Mod_Irmgard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90_Female;
};

FUNC INT Info_Mod_Irmgard_Pickpocket_Condition()
{
	C_Beklauen	(79, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

	Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_BACK, Info_Mod_Irmgard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Irmgard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Irmgard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Irmgard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Irmgard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Irmgard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Irmgard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Irmgard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Irmgard_EXIT (C_INFO)
{
	npc		= Mod_7725_OUT_Irmgard_REL;
	nr		= 1;
	condition	= Info_Mod_Irmgard_EXIT_Condition;
	information	= Info_Mod_Irmgard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Irmgard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Irmgard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
