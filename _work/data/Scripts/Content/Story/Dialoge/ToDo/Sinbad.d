INSTANCE Info_Mod_Sinbad_Hi (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Hi_Condition;
	information	= Info_Mod_Sinbad_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello. I'm supposed to get in touch with you.";
};

FUNC INT Info_Mod_Sinbad_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Malik_Kissen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_00"); //Hello. I'm supposed to get in touch with you.
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_01"); //Uh-huh, the new guy. Quite so. Tell me, what about your martial arts? You want to be an Assassin warrior.
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_02"); //I'm actually quite satisfied.
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_03"); //It remains to be seen whether I can say that.
	AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_04"); //And how can I impress you?
	AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_05"); //I hear the City Guards are having a competition. Go there, report and come back victorious.

	if (Mod_AndreTurnier == 1)
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_06"); //I have already participated and won.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_07"); //That's a good one. I'm sure you won an award. Let me see that.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_08"); //Actually, I don't. Lord Andre tried to accept me into the militia, but I refused.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_09"); //Hm... that may or may not be true. Go and bring me some proof.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_10"); //I'm going to try.
	}
	else if (Mod_AndreTurnier == 2)
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_11"); //I've taken part before, but I lost.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_12"); //Hm... I don't like that at all.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_13"); //But that was a long time ago. I wasn't really trained then. I could try to run again.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_14"); //If it doesn't work, I'll send you to the desert. Go for it!

		B_StartOtherRoutine	(Mod_1723_MIL_Gidan_NW, "SHADOWBEAST");

		CreateInvItems	(Mod_1723_MIL_Gidan_NW, ItMi_TurnierPokal, 1);
	}
	else if (Npc_KnowsInfo(hero, Info_Mod_Andre_Miliz))
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_15"); //I have already participated, but I haven't finished the tournament yet.
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_16"); //Spute yourself then. The competition may be over by now.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_17"); //I'll hurry.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_18"); //Where does it take place?
		AI_Output(self, hero, "Info_Mod_Sinbad_Hi_13_19"); //In the barracks, I mean.
		AI_Output(hero, self, "Info_Mod_Sinbad_Hi_15_20"); //I'll be the winner. See you later.
	};

	Log_CreateTopic	(TOPIC_MOD_ASS_WETTKAMPF, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_WETTKAMPF, "I'm supposed to compete in the barracks and win, of course. Let's see....");
};

INSTANCE Info_Mod_Sinbad_Urkunde (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Urkunde_Condition;
	information	= Info_Mod_Sinbad_Urkunde_Info;
	permanent	= 0;
	important	= 0;
	description	= "Here's my deed.";
};

FUNC INT Info_Mod_Sinbad_Urkunde_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Npc_HasItems(hero, ItWr_TurnierUrkunde) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Urkunde_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_00"); //Here's my deed.

	B_GiveInvItems	(hero, self, ItWr_TurnierUrkunde, 1);

	B_UseFakescroll ();

	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_01"); //Very nice. You already have a few points on me. But some training can never hurt.
	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_02"); //I'm going to our practice area tomorrow with some candidates. You can join us.
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_03"); //I will do it.

	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_SinbadTraining = Wld_GetDay();
};

INSTANCE Info_Mod_Sinbad_Pokal (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Pokal_Condition;
	information	= Info_Mod_Sinbad_Pokal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Look what I got here!";
};

FUNC INT Info_Mod_Sinbad_Pokal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Hi))
	&& (Npc_HasItems(hero, ItMi_TurnierPokal) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Pokal_Info()
{
	AI_Output(hero, self, "Info_Mod_Sinbad_Pokal_15_00"); //Look what I got here!

	B_GiveInvItems	(hero, self, ItMi_TurnierPokal, 1);

	AI_Output(self, hero, "Info_Mod_Sinbad_Pokal_13_01"); //The trophy? Acquired it?
	AI_Output(hero, self, "Info_Mod_Sinbad_Pokal_15_02"); //Of course you do. You can ask Lord Andre.
	AI_Output(self, hero, "Info_Mod_Sinbad_Pokal_13_03"); //I'll be careful not to show up. All right, then. You already have a few points on me. But some training can never hurt.
	AI_Output(self, hero, "Info_Mod_Sinbad_Urkunde_13_02"); //I'm going to our practice area tomorrow with some candidates. You can join us.
	AI_Output(hero, self, "Info_Mod_Sinbad_Urkunde_15_03"); //I will do it.

	B_SetTopicStatus	(TOPIC_MOD_ASS_WETTKAMPF, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_SinbadTraining = Wld_GetDay();
};

INSTANCE Info_Mod_Sinbad_Training (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training_Condition;
	information	= Info_Mod_Sinbad_Training_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Sinbad_Urkunde))
	|| (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Pokal)))
	&& (Wld_GetDay() > Mod_SinbadTraining)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training_13_00"); //We're going to work out. You're coming with me.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training_15_01"); //Of course you do. If you rest, you rust.

	Log_CreateTopic	(TOPIC_MOD_ASS_TRAINING, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_TRAINING, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "I have agreed to go training with Sinbad and some candidates.");

	AI_StopProcessInfos	(hero);

	B_StartOtherRoutine	(self,	"TRAINING");
	B_StartOtherRoutine	(Mod_7118_ASS_Anwaerter_NW,	"TRAINING");
	B_StartOtherRoutine	(Mod_7124_ASS_Anwaerter_NW,	"TRAINING");
};

INSTANCE Info_Mod_Sinbad_Training2 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training2_Condition;
	information	= Info_Mod_Sinbad_Training2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training))
	&& (Npc_GetDistToWP(self, "WP_ASSASSINENTRAINING") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training2_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training2_13_00"); //There. Let me see what you got.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training2_15_01"); //Go right ahead. I'm gonna give you a bump.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training2_13_02"); //Make sure you don't lose your pants!

	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "Sinbad wants to see what I got.");

	self.flags = 2;

	self.npctype = NPCTYPE_FRIEND;

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

INSTANCE Info_Mod_Sinbad_Training3 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training3_Condition;
	information	= Info_Mod_Sinbad_Training3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training3_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_00"); //Well?
	AI_Output(hero, self, "Info_Mod_Sinbad_Training3_15_01"); //My head! Aahh.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_02"); //You see, but not unbeatable. But there's something about your fighting style. You're probably better than some of the other warriors.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_03"); //However, I miss some agility. You might as well attack the enemy on the flank. You saw how I do it.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training3_15_04"); //I'll remember that.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_05"); //That made me feel better. I wish we didn't have to stand around in that cave all the time.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_06"); //Our situation just sucks. No decent place for us on Khorinis.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training3_13_07"); //Nor can Norek come up with anything reasonable. Aw, man! If only I'd stayed on the mainland.

	self.flags = 0;

	self.npctype = NPCTYPE_MAIN;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Sinbad_Training4 (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Training4_Condition;
	information	= Info_Mod_Sinbad_Training4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Sinbad_Training4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Sinbad_Training2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sinbad_Training4_Info()
{
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_00"); //That's enough for today. Everybody back up.
	AI_Output(hero, self, "Info_Mod_Sinbad_Training4_15_01"); //Can I count on your voice?
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_02"); //I think so, yes. You did your best.
	AI_Output(self, hero, "Info_Mod_Sinbad_Training4_13_03"); //If you talk to Karim now, it should soon be enough for the candidate. If not for more.

	self.flags = 0;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self,	"START");
	B_StartOtherRoutine	(Mod_7118_ASS_Anwaerter_NW,	"START");
	B_StartOtherRoutine	(Mod_7124_ASS_Anwaerter_NW,	"START");

	B_LogEntry	(TOPIC_MOD_ASS_TRAINING, "The training was probably also satisfactory.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_TRAINING, LOG_SUCCESS);
};

INSTANCE Info_Mod_Sinbad_Pickpocket (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_Pickpocket_Condition;
	information	= Info_Mod_Sinbad_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sinbad_Pickpocket_Condition()
{
	C_Beklauen	(73, ItMi_Gold, 24);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

	Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_BACK, Info_Mod_Sinbad_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sinbad_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sinbad_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sinbad_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sinbad_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sinbad_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sinbad_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sinbad_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sinbad_EXIT (C_INFO)
{
	npc		= Mod_7133_ASS_Sinbad_NW;
	nr		= 1;
	condition	= Info_Mod_Sinbad_EXIT_Condition;
	information	= Info_Mod_Sinbad_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sinbad_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sinbad_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
