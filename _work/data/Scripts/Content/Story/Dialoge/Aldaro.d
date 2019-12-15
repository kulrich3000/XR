INSTANCE Info_Mod_Aldaro_Hi (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Hi_Condition;
	information	= Info_Mod_Aldaro_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aldaro_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_00"); //Ahh, a new face. Greetings. Are you from...? ahhhh...
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_01"); //What's going on?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_02"); //Ohh, excuse me. The pain is simply unbearable.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_03"); //Whether I go, stand or sit... with the joints is getting worse.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_04"); //I couldn't even go fishing in the last few days.
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_05"); //Is there no cure or relief?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_06"); //No, even Thys couldn't help me.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_07"); //I have read in some books that there is something that can help with inflammatory joint problems... but there's probably not even a thousand miles to go around here.
	AI_Output(hero, self, "Info_Mod_Aldaro_Hi_15_08"); //What's that supposed to be?
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_09"); //The poison of various animals, especially insects, as can be found in warmer areas... but unfortunately not here.
	AI_Output(self, hero, "Info_Mod_Aldaro_Hi_16_10"); //Oh, how is this going to go on....

	Log_CreateTopic	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ALDARO_TIERGIFT, "Aldaro suffers from severe joint problems. He thinks he's read that animal poison might help.");
};

INSTANCE Info_Mod_Aldaro_Gift (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Gift_Condition;
	information	= Info_Mod_Aldaro_Gift_Info;
	permanent	= 0;
	important	= 0;
	description	= "I have animal poison with me.";
};

FUNC INT Info_Mod_Aldaro_Gift_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Aldaro_Hi))
	&& (Npc_HasItems(hero, ItPo_Tiergift) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Gift_Info()
{
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_00"); //I have animal poison with me.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_01"); //What? You've got to be kidding me.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_02"); //How could it be possible here in this icy world?
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_03"); //With the help of some magic.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_04"); //Magic? But.... (sunk in thoughts) then perhaps it is true what I have heard from rumours....
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_05"); //... that one of the magical portals from faraway regions of the world came to us....
	AI_Output(hero, self, "Info_Mod_Aldaro_Gift_15_06"); //Here's your medicine.

	B_GiveInvItems	(hero, self, ItPo_Tiergift, 1);

	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_07"); //(again to the hero) What? Ahh, the insect venom. Thank you very much.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift_16_08"); //I apply it immediately to the affected areas.... and see how I'm doing tomorrow.

	AI_PlayAni	(self, "T_PLUNDER");

	B_LogEntry	(TOPIC_MOD_ALDARO_TIERGIFT, "Aldaro rubbed his joints with the poison and went to sleep.");

	B_GivePlayerXP	(150);

	Mod_Aldaro_Gift_Tag = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ERHOLUNG");
};

INSTANCE Info_Mod_Aldaro_Gift2 (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Gift2_Condition;
	information	= Info_Mod_Aldaro_Gift2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Gift2_Condition()
{
	if (Mod_Aldaro_Gift == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Gift2_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_00"); //It actually did help. My joints are already much better.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_01"); //If this continues, I might be able to go fishing tomorrow.
	AI_Output(self, hero, "Info_Mod_Aldaro_Gift2_16_02"); //Here, it's not much, but I hope you can do something with it.

	CreateInvItems	(hero, ItMi_Gold, 54);
	CreateInvItems	(hero, ItMi_Nugget, 2);
	CreateInvItems	(hero, ItFo_Fish, 12);

	B_ShowGivenThings	("54 gold, 2 pieces of ore and 12 fish preserved");

	B_SetTopicStatus	(TOPIC_MOD_ALDARO_TIERGIFT, LOG_SUCCESS);

	B_GivePlayerXP	(150);

	CurrentNQ += 1;

	B_StartOtherRoutine	(self,	"FIT");
};

INSTANCE Info_Mod_Aldaro_Schneegeister (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Schneegeister_Condition;
	information	= Info_Mod_Aldaro_Schneegeister_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Aldaro_Schneegeister_Condition()
{
	if (Mod_Aldaro_Gift == 1)
	&& (Npc_KnowsInfo(hero, Info_Mod_Thys_Schneegeister))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Aldaro_Schneegeister_Info()
{
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_00"); //Glad to see you again.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_01"); //My discomfort has completely disappeared and the bottle will last for years.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_02"); //But what I was really about... I found this golden ring in a fish I caught in the lake.
	AI_Output(self, hero, "Info_Mod_Aldaro_Schneegeister_16_03"); //And since I couldn't fish at all without your help, it's yours, of course. Here, take this.

	B_GiveInvItems	(self, hero, ItRi_Seering, 1);

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Aldaro_Pickpocket (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_Pickpocket_Condition;
	information	= Info_Mod_Aldaro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Aldaro_Pickpocket_Condition()
{
	C_Beklauen	(77, ItMi_Gold, 28);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

	Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_BACK, Info_Mod_Aldaro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Aldaro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Aldaro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Aldaro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Aldaro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Aldaro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Aldaro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Aldaro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Aldaro_EXIT (C_INFO)
{
	npc		= Mod_7674_OUT_Aldaro_EIS;
	nr		= 1;
	condition	= Info_Mod_Aldaro_EXIT_Condition;
	information	= Info_Mod_Aldaro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Aldaro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Aldaro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
