INSTANCE Info_Mod_Francis_Hi (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Hi_Condition;
	information	= Info_Mod_Francis_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Francis_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Francis_Hi_13_01"); //I'm Francis and I'm one of the three enterpreneur leaders.
};

INSTANCE Info_Mod_Francis_Entertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Entertrupp_Condition;
	information	= Info_Mod_Francis_Entertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join your posse.";
};

FUNC INT Info_Mod_Francis_Entertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Hi))
	&& (Piraten_Dabei == 1)
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Entertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_00"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_01"); //And you want my approval? Well, then maybe you can help me with a problem:
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_02"); //The guys from my Entertruppupp made a lot of trouble with Skip and that's why he doesn't want to trade with us anymore.
	AI_Output(self, hero, "Info_Mod_Francis_Entertrupp_13_03"); //Go to him and make it up to him.
	AI_Output(hero, self, "Info_Mod_Francis_Entertrupp_15_04"); //I'll give it a try.

	Log_CreateTopic	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "In order to get into Francis Entertrupp, I'm supposed to make sure that Skip deals with him and his people again.");
};

INSTANCE Info_Mod_Francis_Skip (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Skip_Condition;
	information	= Info_Mod_Francis_Skip_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skip's gonna deal with you and your boys again.";
};

FUNC INT Info_Mod_Francis_Skip_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_Geld))
	&& (Mod_InEntertrupp == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Skip_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Skip_15_00"); //Skip's gonna deal with you and your boys again.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_01"); //Well, that's your side of the deal.
	AI_Output(self, hero, "Info_Mod_Francis_Skip_13_02"); //You can join one of the troops if you want.

	if (Mod_InEntertrupp == 0)
	{
		B_LogEntry_More	(TOPIC_MOD_PIRATEN_ENTERTRUPP, TOPIC_MOD_FRANCIS_ENTERTRUPP, "Francis gives me his approval to join an enlisted group.", "Francis is satisfied with me and gives me his consent.");
	}
	else
	{
		B_LogEntry	(TOPIC_MOD_FRANCIS_ENTERTRUPP, "Francis is satisfied with me and gives me his consent.");
	};

	B_SetTopicStatus	(TOPIC_MOD_FRANCIS_ENTERTRUPP, LOG_SUCCESS);

	B_GivePlayerXP	(200);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Francis_InEntertrupp (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_InEntertrupp_Condition;
	information	= Info_Mod_Francis_InEntertrupp_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to join your posse.";
};

FUNC INT Info_Mod_Francis_InEntertrupp_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Skip))
	&& (Mod_InEntertrupp == 0)
	&& ((Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen))
	|| (Mod_QuatschGrog == 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_InEntertrupp_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_InEntertrupp_15_00"); //I want to join your posse.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_01"); //You've proven yourself useful as a pirate.
	AI_Output(self, hero, "Info_Mod_Francis_InEntertrupp_13_02"); //From now on, you're in my squad.

	B_GivePlayerXP	(400);

	B_LogEntry	(TOPIC_MOD_PIRATEN_ENTERTRUPP, "I'm now a member of Francis Enterprise.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_ENTERTRUPP, LOG_SUCCESS);

	Mod_InEntertrupp = 1;

	B_Göttergefallen(2, 1);
	
	if (Npc_KnowsInfo(hero, Info_Mod_Morgan_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Morgan_HierKrallen)) {
		B_SetTopicStatus(TOPIC_MOD_MORGAN_ENTERTRUPP, LOG_FAILED);
	};
	if (Npc_KnowsInfo(hero, Info_Mod_Henry_Entertrupp))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Henry_HierGrog)) {
		B_SetTopicStatus(TOPIC_MOD_HENRY_ENTERTRUPP, LOG_FAILED);
	};
};

INSTANCE Info_Mod_Francis_Befreiung (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung_Condition;
	information	= Info_Mod_Francis_Befreiung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have something to do for me?";
};

FUNC INT Info_Mod_Francis_Befreiung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_00"); //Do you have something to do for me? I'm supposed to help get everything going again, so that I can give the guard Innos the last blow.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_01"); //(irred) What? Can't you see I'm trying to cut wood for the palisade?
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_02"); //Since when do you have to do this?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_03"); //That's exactly what it is. I'd have to supervise the work instead of sawing.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_04"); //Angus and Hank, these lazy bastards, would have to do it, but they are having a nice day in the sun.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_05"); //Do you want me to help you?
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_06"); //I should shut your mouth for your cheeky grin, but yes, you can help me.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung_13_07"); //Beat up the lazy pack to make them swing the saws again, and I'll tell Greg that we'll have enough wood for the palisade again.
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung_15_08"); //Okay.
	
	Log_CreateTopic	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BEL_PIRFRANCIS, "Angus and Hank have a nice day in the sun instead of sawing wood for the palisade. Francis wants me to get them both back to work.");
};

INSTANCE Info_Mod_Francis_Befreiung2 (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Befreiung2_Condition;
	information	= Info_Mod_Francis_Befreiung2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Your workers are back again.";
};

FUNC INT Info_Mod_Francis_Befreiung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_Befreiung))
	&& (Npc_KnowsInfo(hero, Info_Mod_Angus_Befreiung2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Francis_Befreiung2_Info()
{
	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_00"); //Your workers are back again.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_01"); //Well done. Didn't think you'd be able to bring them back to the line. Here, take this as a reward.

	B_GiveInvItems	(self, hero, ItPl_Perm_Herb, 1);

	AI_Output(hero, self, "Info_Mod_Francis_Befreiung2_15_02"); //Thank you, I'll go now.
	AI_Output(self, hero, "Info_Mod_Francis_Befreiung2_13_03"); //Do that.

	B_GivePlayerXP	(300);

	Mod_Piratenbefreiung += 1;
	
	B_LogEntry_More	(TOPIC_MOD_BEL_PIRFRANCIS, TOPIC_MOD_BEL_PIRATENLAGER, "Francis knows about Angus and Hank.", "Francis knows about Angus and Hank.");
	B_SetTopicStatus	(TOPIC_MOD_BEL_PIRFRANCIS, LOG_SUCCESS);
};

INSTANCE Info_Mod_Francis_Pickpocket (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_Pickpocket_Condition;
	information	= Info_Mod_Francis_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Francis_Pickpocket_Condition()
{
	C_Beklauen	(58, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_BACK, Info_Mod_Francis_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Francis_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Francis_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
};

FUNC VOID Info_Mod_Francis_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Francis_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Francis_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Francis_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Francis_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Francis_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Francis_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Francis_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Francis_EXIT (C_INFO)
{
	npc		= Mod_932_PIR_Francis_AW;
	nr		= 1;
	condition	= Info_Mod_Francis_EXIT_Condition;
	information	= Info_Mod_Francis_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Francis_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Francis_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
