INSTANCE Info_Mod_Shakir_Hi (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Hi_Condition;
	information	= Info_Mod_Shakir_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you Shakir, the leader of the crooks?";
};

FUNC INT Info_Mod_Shakir_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Aufnahme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_00"); //Are you Shakir, the leader of the crooks?
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_01"); //Yeah, that's me. But who are you? I've never seen you around here before!
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_02"); //I am....
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_03"); //It doesn't matter. I'm just wondering what you're doing here.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_04"); //Amir led me to your camp because I did him a favor.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_05"); //He said I should join you.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_06"); //At the gate I talked to Zahit about it, who at the end said that I should come to you.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_07"); //Ah, fresh meat. But before you can join us, there's still a lot to do.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_08"); //I'm telling you, you've got a lot on your mind.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_09"); //Something similar already told me Zahit.
};

INSTANCE Info_Mod_Shakir_GaunerWerden (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden_Condition;
	information	= Info_Mod_Shakir_GaunerWerden_Info;
	permanent	= 0;
	important	= 0;
	description	= "What do I have to do to become a crook?";
};

FUNC INT Info_Mod_Shakir_GaunerWerden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_00"); //What do I have to do to become a crook?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_01"); //It's basically quite simple. You need to get all the important crooks on your side here in our neighborhood.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_02"); //And what does that mean in concrete terms?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_03"); //Complete a task for everyone to collect votes.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_04"); //If you've convinced all the crooks, including me, you can contact me and I'll take you in.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_05"); //Then you'll be part of the Assassin community.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_06"); //Who's one of the crooks I have to convince?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_07"); //You have to convince the following members: Zeki, Ramsi, Aabid, Yasin, Yussuf and of course me.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_08"); //That's a lot of people.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_09"); //(laughs) You want our trust, so you have to do something about it.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_10"); //All right, I'll take care of it.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_11"); //Have fun collecting voices.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_12"); //I'll have that one.

	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "I have now spoken to Shakir, who is willing to take me in with the crooks, but only on one condition. I'm supposed to convince all the important crooks in the neighborhood to join them. When I've done that, you want me to report back to Shakir.");
};

INSTANCE Info_Mod_Shakir_Frau (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau_Condition;
	information	= Info_Mod_Shakir_Frau_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Frau_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_MikaTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_HabPakete))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramsi_JaegerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Zeki_Laute))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_00"); //Oh, there you are. I've only heard good things about you so far.

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_01"); //I'm glad you did. But I couldn't agree with Yussuf.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_02"); //What's your name?
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_03"); //I didn't find his task correct. Across from the other side.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_04"); //Oops! A crook with a conscience! Something new around here.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_05"); //Nice to meet you. I don't have the Yussuf yet. Doesn't have time, he says.
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_06"); //Must do orders for the warriors himself, he says.
	};

	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_07"); //All right, now. Listen to what my test is:
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_08"); //When was the last time you slept with a woman?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_09"); //Oh, heavens! That was in my last life. I went to see Bromor once.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_10"); //The whorehouse in the harbour?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_11"); //Exactly. I didn't regret it.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_12"); //Here's the problem. You must know I had two wives in Varant.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_13"); //Now I'm losing a lot of things here. You know what I mean?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_14"); //Certainly. I'm supposed to get you women now.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_15"); //One would be enough.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_16"); //Then why don't you go to town? You must still have disguises.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_17"); //That's not the problem. But they know me there. Especially the militia.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_18"); //Uh-huh. It's already been unpleasantly noticed.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_19"); //That's what I mean. You're taking the beauty into the cave of the beverage adulterator near here.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_20"); //And he can do that once in a while....
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_21"); //Are you out of your mind? He doesn't matter anyway, he's too busy.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_22"); //All clear. I want to see what I can do for you.

	Log_CreateTopic	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "For Shakir, I have to find a woman for certain hours. What they can think of. I'd better go talk to Bromor. If I have one, I'll take her to a cave near the Assassin camp where an alchemist seems to live.");
};

INSTANCE Info_Mod_Shakir_Frau2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau2_Condition;
	information	= Info_Mod_Shakir_Frau2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Report me back.";
};

FUNC INT Info_Mod_Shakir_Frau2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau2_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_00"); //Report me back. I got you a beautiful young woman. She's waiting down in the cave.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_01"); //Really? You're a hell of a guy.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_02"); //I promised her that dress. Here, take this.

	B_GiveInvItems	(hero, self, ItAr_GrittasKleid, 1);

	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_03"); //And hurry up. Before she changes her mind.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_04"); //I'm already gone. You wait here.

	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_ASS_ShakirGritta_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRITTA");
};

INSTANCE Info_Mod_Shakir_GaunerWerden2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden2_Condition;
	information	= Info_Mod_Shakir_GaunerWerden2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_GaunerWerden2_Condition()
{
	if (Mod_ASS_ShakirGritta == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden2_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_00"); //Wow! That's all. But hello!

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_01"); //Nice to meet you. I have now completed all the tasks. What's the next step?
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_02"); //I have been informed about everything and I think you are perfectly qualified to join our association.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_03"); //Nice to meet you. I still have the Yussuf.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_04"); //Forget about him. You're only with us for a short time and you've done so much already. Faster than any other candidate.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_05"); //I think you're perfectly qualified to join our association.

		B_SetTopicStatus	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_SUCCESS);
	};

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_06"); //If you want, you can join us now.

		B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Shakir was very excited about my placement. He passed my Yussuf exam and gave me the opportunity to become a crook.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_07"); //Unfortunately, you already belong to many communities.
	};

	B_GivePlayerXP	(250);

	AI_UnequipArmor	(Mod_580_NONE_Gritta_NW);

	AI_EquipArmor (Mod_580_NONE_Gritta_NW, ItAr_GrittasKleid);
};

INSTANCE Info_Mod_Shakir_GaunerWerden3 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden3_Condition;
	information	= Info_Mod_Shakir_GaunerWerden3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want to be a crook.";
};

FUNC INT Info_Mod_Shakir_GaunerWerden3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden2))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden3_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden3_15_00"); //I want to be a crook.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden3_31_01"); //Here's your scoundrel gulf. You report to the warrior Masut.

	CreateInvItems	(hero, ITAR_Gauner, 1);

	B_ShowGivenThings	("Getting the crook's air");

	B_GivePlayerXP	(250);

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "I'm an assassin now.");

	Mod_7117_ASS_Krieger_NW.aivar[AIV_PASSGATE] = TRUE;

	Mod_AnzahlNebengilden += 1;

	Assassinen_Dabei = TRUE;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_70);
};

INSTANCE Info_Mod_Shakir_Assassinengold (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Assassinengold_Condition;
	information	= Info_Mod_Shakir_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Assassinengold_31_00"); //Welcome back, sir. Were you successful?
	AI_Output(hero, self, "Info_Mod_Shakir_Assassinengold_15_01"); //I think so, yes. Let's see now.
};

INSTANCE Info_Mod_Shakir_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Zeremoniendolch_Condition;
	information	= Info_Mod_Shakir_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Zeremoniendolch_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_00"); //Anything new?
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_01"); //No. You got something?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_02"); //You bet! There's something brewing back there, I think.
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_03"); //What do you mean?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_04"); //The warriors are somehow restless. There's always someone running out of here or coming back. Even during the day.
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_05"); //When hardly anyone else leaves the camp during the day....
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_06"); //I'll have a look.
};

INSTANCE Info_Mod_Shakir_Blutkelch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Blutkelch_Condition;
	information	= Info_Mod_Shakir_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello.";
};

FUNC INT Info_Mod_Shakir_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_00"); //Hello.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_01"); //In war armor! Almost didn't recognize you. How did you...?
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_02"); //It doesn't matter now. Tell me, did you notice any magicians leaving the camp at night?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_03"); //Yeah, there's the Mufid first, and then another one. I don't know his name, though.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_04"); //They've been on the road half nights.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_05"); //Uh-huh. Did they say anything?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_06"); //Nah, just in a hurry.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_07"); //Hmm... thank you.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "I have learned that some mages leave the camp at night. It must have something to do with the chalice.");
};

INSTANCE Info_Mod_Shakir_NachSchlacht (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_NachSchlacht_Condition;
	information	= Info_Mod_Shakir_NachSchlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "I want you to come to the council.";
};

FUNC INT Info_Mod_Shakir_NachSchlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_NachSchlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_00"); //I want you to come to the council.
	AI_Output(self, hero, "Info_Mod_Shakir_NachSchlacht_31_01"); //What's going on in there?
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_02"); //You'll find out. Go for it.

	B_StartOtherRoutine	(Mod_7105_ASS_Aabid_NW,	"START");
	B_StartOtherRoutine	(Mod_7106_ASS_Ramsi_NW,	"START");
	B_StartOtherRoutine	(Mod_7102_ASS_Zeki_NW,	"START");
	B_StartOtherRoutine	(Mod_7103_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7108_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7107_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7113_ASS_Yussuf_NW,	"START");
	B_StartOtherRoutine	(Mod_7111_ASS_Yasin_NW,	"START");
	B_StartOtherRoutine	(Mod_7104_ASS_Shakir_NW,	"START");

	Npc_RemoveInvItems	(hero, ItKe_XR_NW_HOEHLE_01, 1);
};

INSTANCE Info_Mod_Shakir_Pickpocket (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Pickpocket_Condition;
	information	= Info_Mod_Shakir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Shakir_Pickpocket_Condition()
{
	C_Beklauen	(75, ItPo_Pflanzengift, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_BACK, Info_Mod_Shakir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shakir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shakir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shakir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shakir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shakir_EXIT (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_EXIT_Condition;
	information	= Info_Mod_Shakir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shakir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shakir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
