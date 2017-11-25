INSTANCE Info_Mod_Gellit_Hi (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Hi_Condition;
	information	= Info_Mod_Gellit_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Tondral_Ken))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_00"); //Who are you and where are you from?
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_15_01"); //I'm from the Minental.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_02"); //Minental? Never heard of it. What are you doing here?
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_15_03"); //I'm looking for a metamorphosis spell. I hear he's here somewhere. I'm here in Gelato, aren't I?
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_26_04"); //Yeah. But I have nothing to do with sorcery. Talk to the village shaman. But no tricks.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "A man named Gellit told me to go to the village shaman for the transformation spell. I have no other choice.");

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Gellit_Hi);

	Info_AddChoice	(Info_Mod_Gellit_Hi, "I would have thought of that myself.", Info_Mod_Gellit_Hi_A);
	Info_AddChoice	(Info_Mod_Gellit_Hi, "Thanks for the tip. I'll be on my way, then.", Info_Mod_Gellit_Hi_B);
};

FUNC VOID Info_Mod_Gellit_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_B_15_00"); //Thanks for the tip. I'll be on my way, then.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_B_26_01"); //One more thing. Bring him a little present, he'll be friendlier. Best you take fish.
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_B_15_02"); //Fish? Where do I get fish from?
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_B_26_03"); //I've told you too much already, now get out of here.

	B_LogEntry	(TOPIC_MOD_FERCO_WANZE, "Gellit also mentioned that I should bring a present, preferably fish, to the shaman, as he would be friendlier to me.");

	VMG_Second = 6;

	Info_ClearChoices	(Info_Mod_Gellit_Hi);
};

FUNC VOID Info_Mod_Gellit_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Gellit_Hi_A_15_00"); //I would have thought of that myself.
	AI_Output(self, hero, "Info_Mod_Gellit_Hi_A_26_01"); //Big mouth, huh? But I'm not stupid, and I'm getting into a skirmish. Get the hell out of here.

	VMG_Second = 5;

	Info_ClearChoices	(Info_Mod_Gellit_Hi);
};

INSTANCE Info_Mod_Gellit_RaueSchneide (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_RaueSchneide_Condition;
	information	= Info_Mod_Gellit_RaueSchneide_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_RaueSchneide_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gellit_RaueSchneide_Info()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gellit_Hi))
	{
		AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_00"); //Oh, one more thing.
	};

	AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_01"); //If you want to get a good reputation in our country, you should contact Commander Willingham. He'll know how to use you.
	AI_Output(self, hero, "Info_Mod_Gellit_RaueSchneide_26_02"); //The barracks are on the other side of town. That's where his troops are stationed.
};

INSTANCE Info_Mod_Gellit_Schneegeister (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Schneegeister_Condition;
	information	= Info_Mod_Gellit_Schneegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Schneegeister_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Eriskult))
	&& (Wld_GetDay()-4 > Mod_Thys_Schneegeister_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Schneegeister_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_00"); //Wait. Wait. You're pretty much out on the road.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_01"); //Be careful, because at the moment there are a lot of snow ghosts outside again.
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_02"); //All right, I'll be careful.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_03"); //Yeah, you'd do well to. You can't fool around with them.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_04"); //When I think about the fact that there was a time when the village hasn't suffered from them yet...
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_05"); //Why? I thought they were always there?
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_06"); //No, they have only been part of the landscape here for a few decades.
	AI_Output(hero, self, "Info_Mod_Gellit_Schneegeister_15_07"); //How did it happen then?
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_08"); //Good question. Nobody really knows.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_09"); //Some see Beliar's malice in this, others see the punishment of Inno for sinful behavior.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_10"); //Some in turn blame demons, or even the stars... there are countless speculations.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_11"); //What I also heard once is that someone was banished from the village because of dark rituals.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_12"); //Some of the old folks, for their part, think it might be related. Might as well be nonsense.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister_26_13"); //Why don't you ask our village elder Thys if you want to know more?

	Log_CreateTopic	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_GELLIT_SCHNEEGEISTER, "Gellit told me that the ghosts had not always made the surroundings of the village unsafe, but did not know more about their origins. Maybe Thys can tell me more about it.");
};

INSTANCE Info_Mod_Gellit_Schneegeister2 (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Schneegeister2_Condition;
	information	= Info_Mod_Gellit_Schneegeister2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gellit_Schneegeister2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gellit_Schneegeister2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_00"); //Hey, incredible news! Almost all snow ghosts have vanished.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_01"); //I have heard rumours that some adventurer allegedly found the root of the evil and eradicated it.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_02"); //Man, I'd shake hands with him and invite him for a drink in the tavern.
	AI_Output(self, hero, "Info_Mod_Gellit_Schneegeister2_26_03"); //I mean, can you imagine? Finally no more snow ghosts.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Gellit_Pickpocket (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_Pickpocket_Condition;
	information	= Info_Mod_Gellit_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Gellit_Pickpocket_Condition()
{
	C_Beklauen	(100, ItMi_Gold, 35);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

	Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_BACK, Info_Mod_Gellit_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gellit_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gellit_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gellit_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gellit_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gellit_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gellit_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gellit_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gellit_EXIT (C_INFO)
{
	npc		= Mod_1953_EIS_Gellit_EIS;
	nr		= 1;
	condition	= Info_Mod_Gellit_EXIT_Condition;
	information	= Info_Mod_Gellit_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gellit_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gellit_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
