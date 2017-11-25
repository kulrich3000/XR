INSTANCE Info_Mod_FrauRichard_Hi (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_Hi_Condition;
	information	= Info_Mod_FrauRichard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Are you all right?";
};

FUNC INT Info_Mod_FrauRichard_Hi_Condition()
{
	if (Npc_IsDead(Ratte_Richard))
	&& (Npc_IsDead(Mod_7409_OUT_Richard_EIS))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_Hi_15_00"); //Are you all right?
	AI_Output(self, hero, "Info_Mod_FrauRichard_Hi_17_01"); //Yes, thank you! What's happening?
	AI_Output(hero, self, "Info_Mod_FrauRichard_Hi_15_02"); //I killed that Richard and his rat breed. You don't have to worry anymore.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Hi_17_03"); //Have you seen my husband? The rats kidnapped him and me.
};

INSTANCE Info_Mod_FrauRichard_Notiz (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_Notiz_Condition;
	information	= Info_Mod_FrauRichard_Notiz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm sorry, but I was late for your husband.";
};

FUNC INT Info_Mod_FrauRichard_Notiz_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_Hi))
	&& (Npc_HasItems(hero, ItWr_CirioNotiz2) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_Notiz_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_Notiz_15_00"); //Tut mir leid, aber bei deinem Mann kam ich leider zu spät. Ich konnte nur noch diesen Brief bei ihm finden.

	B_GiveInvItems	(hero, self, ItWr_CirioNotiz2, 1);

	B_UseFakescroll();

	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_17_01"); //Mein Mann hat bis zum Ende für mich gekämpft.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_17_02"); //Auch wenn die Nachricht schrecklich ist, danke ich dir, dass du dir die Mühe gemacht hast, mich zu finden.
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_17_03"); //Hier hast du 100 Gold. Ich weiß, es ist nicht viel, aber ich hoffe du kannst es gebrauchen.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_FrauRichard_Notiz_15_04"); //Am besten gehst du in die Stadt, dort bist du erst mal sicher. 
	AI_Output(self, hero, "Info_Mod_FrauRichard_Notiz_17_05"); //Ja, ich werde mich dort erst mal ausruhen und dann vielleicht nach Relendel zurückkehren.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "CITY");

	B_LogEntry	(TOPIC_MOD_RATTENQUEST,"I found the woman and saved her. That should put an end to the plague of rats.");
	B_SetTopicStatus	(TOPIC_MOD_RATTENQUEST, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;
};

INSTANCE Info_Mod_FrauRichard_InDorf (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf_Condition;
	information	= Info_Mod_FrauRichard_InDorf_Info;
	permanent	= 0;
	important	= 0;
	description	= "Will you be all right?";
};

FUNC INT Info_Mod_FrauRichard_InDorf_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_Hi))
	&& (Npc_GetDistToWP(self, "EIS_161") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf_15_00"); //Will you be all right?
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_17_01"); //More or less. I'm not really comfortable here.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_17_02"); //The people - they are as cold as the air.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf_17_03"); //Even during the day the village is extinct.
};

INSTANCE Info_Mod_FrauRichard_InDorf2 (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf2_Condition;
	information	= Info_Mod_FrauRichard_InDorf2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Then why don't you return to Relendel?";
};

FUNC INT Info_Mod_FrauRichard_InDorf2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf2_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf2_15_00"); //Then why don't you return to Relendel?
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf2_17_01"); //I've done it many times before, but the way up to the stone circle is so long and arduous.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf2_17_02"); //Recently there have been reports of a band of robbers and missing hikers.
};

INSTANCE Info_Mod_FrauRichard_InDorf3 (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_InDorf3_Condition;
	information	= Info_Mod_FrauRichard_InDorf3_Info;
	permanent	= 0;
	important	= 0;
	description	= "I could go with you.";
};

FUNC INT Info_Mod_FrauRichard_InDorf3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_InDorf3_Info()
{
	AI_Output(hero, self, "Info_Mod_FrauRichard_InDorf3_15_00"); //I could go with you.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf3_17_01"); //In that case, I'd like to go back to Relendel.
	AI_Output(self, hero, "Info_Mod_FrauRichard_InDorf3_17_02"); //Because of me, we can leave right away. I don't have anything to hang on to.

	Log_CreateTopic	(TOPIC_MOD_EIS_GELEIT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_EIS_GELEIT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_EIS_GELEIT, "I have agreed to accompany the former Mrs. Richards to the teleport at the stone circle outside the village.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOSTEINKREIS");
};

INSTANCE Info_Mod_FrauRichard_AtSteinkreis (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_AtSteinkreis_Condition;
	information	= Info_Mod_FrauRichard_AtSteinkreis_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_FrauRichard_AtSteinkreis_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_FrauRichard_InDorf3))
	&& (Npc_GetDistToWP(hero, "EIS_01") < 1000)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_FrauRichard_AtSteinkreis_Info()
{
	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_17_00"); //We seem to have been lucky. There's not a soul on the road today.
	AI_Output(hero, self, "Info_Mod_FrauRichard_AtSteinkreis_15_01"); //I'm not used to escort orders being so unspectacular. That's fine by me, though.
	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_17_02"); //And for the second time, I'm in your debt. Thank you, thank you.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(self, hero, "Info_Mod_FrauRichard_AtSteinkreis_17_03"); //Come visit me in Khorata sometime!

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_EIS_GELEIT, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSTEINKREIS");

	CurrentNQ += 1;
};

INSTANCE Info_Mod_FrauRichard_EXIT (C_INFO)
{
	npc		= Mod_7410_OUT_Frau_EIS;
	nr		= 1;
	condition	= Info_Mod_FrauRichard_EXIT_Condition;
	information	= Info_Mod_FrauRichard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_FrauRichard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_FrauRichard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
