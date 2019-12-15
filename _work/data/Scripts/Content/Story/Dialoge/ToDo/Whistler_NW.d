INSTANCE Info_Mod_Whistler_NW_Hi (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Hi_Condition;
	information	= Info_Mod_Whistler_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alissandro sent me.";
};

FUNC INT Info_Mod_Whistler_NW_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_WasTunAlsErzbaron))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_00"); //Alissandro sent me to you. He means you could help us spread our business around here.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_01"); //Yeah, I got us some information that might help us:
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_02"); //Because of the paladins we are undesirable in the city, so it would not be a good starting point. We can forget about the fire magic monastery.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_03"); //There are too many of the new warehouse at the big farmer's, so we can't hope to do business with him either.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_04"); //Between us and the Demon Knights and Summoners a tension has developed because of the thing with the old mine, so they also fall away.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_05"); //Of course, the water magicians don't want to support us either. We do, however, have the thieves and the bandits on our side.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_06"); //The thieves and the bandits? And they're supposed to be able to help us?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_07"); //Don't underestimate them, people are afraid of them, which gives them influence.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Hi_15_08"); //I see, and what am I supposed to do now?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_09"); //Esteban came to town, he wanted to meet with you.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Hi_11_10"); //Go to the marketplace, where he's waiting for you.

	B_LogEntry	(TOPIC_MOD_AL_AUSBREITUNGK, "Whistler said we're working with the bandits. I'm supposed to go see Esteban, whom I find in the marketplace.");
};

INSTANCE Info_Mod_Whistler_NW_WasGeht (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_WasGeht_Condition;
	information	= Info_Mod_Whistler_NW_WasGeht_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's it coming?";
};

FUNC INT Info_Mod_Whistler_NW_WasGeht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_NW_AtLagerhaus))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_WasGeht_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_00"); //How's it coming?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_01"); //Not bloody hell at all. Some guy always sends us threatening letters and says if we don't pay him protection money, he'll tear the whole place apart.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_02"); //And you paid him?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_03"); //No, with what? We only have ore, and he won't accept that. And now he wants to demolish this warehouse at regular intervals.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_04"); //How much gold does he want?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_05"); //500 gold coins behind the warehouse, where the battles of this Alrik take place during the day.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_06"); //When does he want the money?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_WasGeht_11_07"); //Tonight at midnight.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_WasGeht_15_08"); //All right, I'll go behind the warehouse at midnight and take a look at this.

	Log_CreateTopic	(TOPIC_MOD_AL_LAGERHAUS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_LAGERHAUS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "I spoke to Whistler. He said someone was blackmailing money and trying to destroy our warehouse. At midnight he picks up the money behind the warehouse, I'll take a look at that.");

	B_StartOtherRoutine	(Mod_563_NONE_Borka_NW, "ERPRESSER");
};

INSTANCE Info_Mod_Whistler_NW_BromorSchuld (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_BromorSchuld_Condition;
	information	= Info_Mod_Whistler_NW_BromorSchuld_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bromor from the red lantern doesn't want us convicts here.";
};

FUNC INT Info_Mod_Whistler_NW_BromorSchuld_Condition()
{
	if (Mod_AL_BorkaAusgequetscht == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_BromorSchuld_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_00"); //Bromor from the red lantern doesn't want us convicts here, and he's hindering us now.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_01"); //Then we'll have to take revenge, and I'd have a plan.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_02"); //Which is?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_03"); //From 5 a. m. to 10 a. m. the red lantern is closed for visitors, during this time Bromor and his girls are recovering.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_04"); //In time, we'll kidnap his girls and steal his gold.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_05"); //That would be the first step.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_06"); //And the second one?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_07"); //I'll get to that later.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_BromorSchuld_15_08"); //Well, then we'll take care of the first step.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_09"); //All right, I'll meet you there between 5:00 and 10:00.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_BromorSchuld_11_10"); //You get the gold, I'll get the girls.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Whistler already has a plan for revenge. He's kidnapping Bromor's prostitute while I steal his money.");

	B_StartOtherRoutine	(Mod_563_NONE_Borka_NW, "START");
	B_StartOtherRoutine	(self, "PUFF");
};

INSTANCE Info_Mod_Whistler_NW_HabSeinGold (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_HabSeinGold_Condition;
	information	= Info_Mod_Whistler_NW_HabSeinGold_Info;
	permanent	= 0;
	important	= 0;
	description	= "And now what?";
};

FUNC INT Info_Mod_Whistler_NW_HabSeinGold_Condition()
{
	if (Mob_HasItems("BROMORSTRUHE", Itmi_Gold) == 0)
	&& (Wld_IsTime(05,00,10,00))
	&& (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_BromorSchuld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_HabSeinGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_HabSeinGold_15_00"); //And now what?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_01"); //We have a deal with Bromor's girls. We'll take them away from here for now, but they'll come back when Bromor gives up.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_HabSeinGold_15_02"); //And what am I supposed to do?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_03"); //I have something else to do for you. I've got a spell here evoking some rats.

	CreateInvItems	(self, ItSc_SummonRats, 1);
	B_GiveInvItems	(self, hero, ItSc_SummonRats, 1);

	AI_Output(self, hero, "Info_Mod_Whistler_NW_HabSeinGold_11_04"); //Let her go and Bromor will have a nice surprise.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "We've been through the break-in. Now I'm supposed to release another spell, summon the rats.");

	B_StartOtherRoutine	(Mod_522_NONE_Vanja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "ERPRESSUNG");
	B_StartOtherRoutine	(self, "ATLAGERHAUS");
};

INSTANCE Info_Mod_Whistler_NW_RattenGespawnt (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_RattenGespawnt_Condition;
	information	= Info_Mod_Whistler_NW_RattenGespawnt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Well, I could have done that. What now?";
};

FUNC INT Info_Mod_Whistler_NW_RattenGespawnt_Condition()
{
	if (Mod_AL_Rattengespawnt == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_HabSeinGold))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_RattenGespawnt_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_RattenGespawnt_15_00"); //Well, I could have done that. What now?
	AI_Output(self, hero, "Info_Mod_Whistler_NW_RattenGespawnt_11_01"); //Now we wait and see what sch develops. At night we all go to the red lantern and enjoy Bromor's problems.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "Whistler thinks we should watch Bromor now. I should stop by his place at night.");

	B_StartOtherRoutine	(self, "NACHTIMPUFF");
};

INSTANCE Info_Mod_Whistler_NW_NachtImPuff (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_NachtImPuff_Condition;
	information	= Info_Mod_Whistler_NW_NachtImPuff_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bromor's giving up.";
};

FUNC INT Info_Mod_Whistler_NW_NachtImPuff_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bromor_Aufgeben))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_NachtImPuff_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_NachtImPuff_15_00"); //Bromor's giving up.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_NachtImPuff_11_01"); //Well, then we'll put his place back together.

	B_LogEntry	(TOPIC_MOD_AL_LAGERHAUS, "I told Whistler that Bromor's giving up.");
	B_SetTopicStatus	(TOPIC_MOD_AL_LAGERHAUS, LOG_SUCCESS);

	B_Göttergefallen(2, 1);

	B_GivePlayerXP	(500);

	if (hero.guild != GIL_KDF)
	{
		Wld_InsertNpc	(Mod_1933_BUD_Buddler_NW,	"HAFEN");
	};

	B_StartOtherRoutine	(self, "NACHTIMPUFF");
	B_StartOtherRoutine	(Mod_522_NONE_Vanja_NW, "START");
	B_StartOtherRoutine	(Mod_752_NONE_Sonja_NW, "START");
	B_StartOtherRoutine	(Mod_7115_NONE_Nadja_NW, "DOWN");
};

INSTANCE Info_Mod_Whistler_NW_Daemonen (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Daemonen_Condition;
	information	= Info_Mod_Whistler_NW_Daemonen_Info;
	permanent	= 0;
	important	= 0;
	description	= "I was with the Demon Knights.";
};

FUNC INT Info_Mod_Whistler_NW_Daemonen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_MT_Angebot))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Whistler_NW_Daemonen_Info()
{
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Daemonen_15_00"); //I was with the Demon Knights.
	AI_Output(hero, self, "Info_Mod_Whistler_NW_Daemonen_15_01"); //There Gomez said he was trying to recapture the camp.
	AI_Output(self, hero, "Info_Mod_Whistler_NW_Daemonen_11_02"); //What?! Damn, he's probably already sent one of his men to the camp, Alissandro must be warned immediately!

	B_LogEntry	(TOPIC_MOD_AL_MINE, "Whistler said I should warn Alissandro as soon as possible.");

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Whistler_NW_Pickpocket (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_Pickpocket_Condition;
	information	= Info_Mod_Whistler_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Whistler_NW_Pickpocket_Condition()
{
	C_Beklauen	(52, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_BACK, Info_Mod_Whistler_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Whistler_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Whistler_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Whistler_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Whistler_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Whistler_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Whistler_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Whistler_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Whistler_NW_EXIT (C_INFO)
{
	npc		= Mod_1927_STT_Whistler_NW;
	nr		= 1;
	condition	= Info_Mod_Whistler_NW_EXIT_Condition;
	information	= Info_Mod_Whistler_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Whistler_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Whistler_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
