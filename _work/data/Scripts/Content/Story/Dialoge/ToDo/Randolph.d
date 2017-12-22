INSTANCE Info_Mod_Randolph_Hi (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Hi_Condition;
	information	= Info_Mod_Randolph_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Heilung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_Hi_06_00"); //Thanks, but I don't need him. I feel so much better already.

	B_GiveInvItems	(self, hero, ItPo_HealBesessenheit, 1);

	AI_Output(hero, self, "Info_Mod_Randolph_Hi_15_01"); //Are you sure you're not...
	AI_Output(self, hero, "Info_Mod_Randolph_Hi_06_02"); //Yeah, yeah, really. I feel like I can rip out trees.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_AKILSHOF, "Randolph didn't want to take the healing potion because he seems to be well again. Well, then, I suppose I should inform Telbor...");
};

INSTANCE Info_Mod_Randolph_Hoehle (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Hoehle_Condition;
	information	= Info_Mod_Randolph_Hoehle_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Hoehle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Akil_Randolph))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Hoehle_Info()
{
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );

	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_00"); //What, how, who's there?
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_01"); //It's just me.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_02"); //Oh, it is you, the savior of our court.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_03"); //Were you expecting someone else?
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_04"); //Yes, these horrible shadows that haunt me, torment and try to seize upon me possessed.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_05"); //At first they were very quiet, and when they were there they seemed to give me strength and I felt comfortable in their presence.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_06"); //But now they are increasingly gaining power over me, talking at me and demanding to follow them.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_07"); //You don't have to. If you'll escort me to the monastery, maybe you can be helped.
	AI_Output(self, hero, "Info_Mod_Randolph_Hoehle_06_08"); //To the monastery? Yeah, I do, let's-- (pauses).... ohh no, they're here.
	AI_Output(hero, self, "Info_Mod_Randolph_Hoehle_15_09"); //What...?

	AI_StopProcessInfos	(self);

	AI_StartState	(hero, ZS_MagicSleep, 0, "");

	B_LogEntry	(TOPIC_MOD_AKIL_RANDOLPH, "Are my senses deceiving me, or were there just some dark shadows? And this sudden paralysis.... Maybe there was more going on after all, than just spinning in Randolph's head. Whether I can catch up with him now.... ?");

	B_StartOtherRoutine	(self, "FLUCHT");
};

INSTANCE Info_Mod_Randolph_NoMoreDemon (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_NoMoreDemon_Condition;
	information	= Info_Mod_Randolph_NoMoreDemon_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_NoMoreDemon_Condition()
{
	if (Mod_Randolph_Started == 16)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_NoMoreDemon_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_00"); //(to himself) What happened? I feel so liberated. These sinister creatures, voices and visions.
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_01"); //Were they just nightmares? No, I'm standing here, it was all real.
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_02"); //You? It was you who saved me from it. I don't know what to say.
	AI_Output(hero, self, "Info_Mod_Randolph_NoMoreDemon_15_03"); //Why don't you go back to Akil and get some rest?
	AI_Output(self, hero, "Info_Mod_Randolph_NoMoreDemon_06_04"); //Uh, yeah, yeah, yeah, I'll do that first.

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_AKIL_RANDOLPH, LOG_SUCCESS);

	B_StartOtherRoutine	(self, "PRESTART");

	B_GivePlayerXP	(600);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_Randolph_Irdorath (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath_Condition;
	information	= Info_Mod_Randolph_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Randolph_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_NoMoreDemon))
	&& (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_00"); //Ahh, there's the savior of our court.... and my soul....
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_01"); //Hello, Randolph. How have you been since then?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_02"); //(slightly depressed) Yes, actually quite all right, the work on the farm is progressing well again and with the others on the farm I get along very well....
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_03"); //But...?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_04"); //It's just.... how should I put it...

	AI_PlayAni	(self, "T_SEARCH");

	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_05"); //(whispers) It still happens that I turn into this demon descendant for a short time....
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_06"); //Is that so?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_07"); //Yeah, when I'm having bad dreams or getting angry. Then I feel the demonic awakening in me.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_08"); //So far I could prevent being seen by the others every time.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_09"); //But I don't know how much longer I will be able to do that.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_10"); //Have you ever been with an expert magician and asked for healing?
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_11"); //What?! I've ventured far enough out of it when I entrusted it to you. Even more people don't need to know about it....
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_12"); //You better tell me what's new on your end.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_13"); //Well, it takes me out to sea.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_14"); //The sea?
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_15"); //Yes, I'm going to find an island on the Paladin's ship. We must banish a dark minion of the Xeres.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_16"); //What Xeres? Then it was more than just bad dreams and confusing memories...
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_17"); //Listen, I have to go to this island.
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath_15_18"); //What?! But this is not a harmless matter.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath_06_19"); //Maybe so, but only in this way can I find definitive salvation if the fiend and his minions are banished. I have to go with you!
};

INSTANCE Info_Mod_Randolph_Irdorath2 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath2_Condition;
	information	= Info_Mod_Randolph_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Very well, then, I welcome you aboard.";
};

FUNC INT Info_Mod_Randolph_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath2_15_00"); //Very well, then, I welcome you aboard.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath2_06_01"); //Thank you very much. Once again, I am in your debt.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath2_06_02"); //I'll be on my way to the harbour immediately.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Randolph, where there is still a part of demonic slumber, will accompany me to the island.");

	B_GivePlayerXP	(150);

	Mod_RandolphDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Randolph_Irdorath3 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath3_Condition;
	information	= Info_Mod_Randolph_Irdorath3_Info;
	permanent	= 1;
	important	= 0;
	description	= "I'm sorry, but it seems we're too many.";
};

FUNC INT Info_Mod_Randolph_Irdorath3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_RandolphDabei == 1)
	&& (Mod_JackDabei == 1)
	&& (Mod_CrewCount > 15)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath3_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath3_15_00"); //I'm sorry, but it seems we're too many. I can't take you with me.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath3_06_01"); //Too bad. I'll go back then. You know where to find me if there's ever gonna be a seat left.

	Mod_RandolphDabei = 0;

	Mod_CrewCount -= 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Randolph_Irdorath4 (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Irdorath4_Condition;
	information	= Info_Mod_Randolph_Irdorath4_Info;
	permanent	= 1;
	important	= 0;
	description	= "I can give you a ride.";
};

FUNC INT Info_Mod_Randolph_Irdorath4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Randolph_Irdorath2))
	&& (Mod_Irdorath == 0)
	&& (Mod_RandolphDabei == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Randolph_Irdorath4_Info()
{
	AI_Output(hero, self, "Info_Mod_Randolph_Irdorath4_15_00"); //I can give you a ride. There's room on the ship.
	AI_Output(self, hero, "Info_Mod_Randolph_Irdorath4_06_01"); //Very well, I'll be back at the harbour.

	Mod_RandolphDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "SCHIFF");
};

INSTANCE Info_Mod_Randolph_Pickpocket (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_Pickpocket_Condition;
	information	= Info_Mod_Randolph_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Randolph_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

	Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_BACK, Info_Mod_Randolph_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Randolph_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Randolph_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Randolph_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Randolph_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Randolph_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Randolph_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Randolph_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Randolph_EXIT (C_INFO)
{
	npc		= Mod_906_BAU_Randolph_NW;
	nr		= 1;
	condition	= Info_Mod_Randolph_EXIT_Condition;
	information	= Info_Mod_Randolph_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Randolph_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Randolph_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
