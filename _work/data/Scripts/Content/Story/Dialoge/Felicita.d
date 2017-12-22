INSTANCE Info_Mod_Felicita_Hi (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Hi_Condition;
	information	= Info_Mod_Felicita_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Felicita_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Schneider_Gritta))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Felicita_Hi_19_00"); //A word, stranger. You look so tidy. Would you do me a favor?
};

INSTANCE Info_Mod_Felicita_AufgabeJa (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_AufgabeJa_Condition;
	information	= Info_Mod_Felicita_AufgabeJa_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd be happy to help such a beautiful woman.";
};

FUNC INT Info_Mod_Felicita_AufgabeJa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeNein))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_AufgabeJa_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_00"); //I'd be happy to help such a beautiful woman. Besides, I have some time.
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_01"); //What can I do for you?
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_19_02"); //I am Felicita, August's wife, the gatekeeper.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_19_03"); //Now the women in my neighborhood are whispering, he would not only guard the gate when it gets dark in the evening.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_19_04"); //I'd like to know if there's anything true.
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_05"); //I can do that. But why don't you check yourself?
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_19_06"); //I'm afraid of the dark. When I was a kid, I had--
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeJa_15_07"); //I see. I'll take care of it.
	AI_Output(self, hero, "Info_Mod_Felicita_AufgabeJa_19_08"); //Thank you very much. You'll find me in the old quarter, back right.

	Log_CreateTopic	(TOPIC_MOD_ASS_FELICITA, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_FELICITA, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_FELICITA, "Felicita asked me to find out if her husband August was cheating on her. I'll find him at the city gate.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "FREMDGANG");
	B_StartOtherRoutine	(Mod_7343_OUT_Buergerin_REL, "FREMDGANG");
};

INSTANCE Info_Mod_Felicita_AufgabeNein (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_AufgabeNein_Condition;
	information	= Info_Mod_Felicita_AufgabeNein_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'd love to. Sorry, I don't have time right now. Maybe later.";
};

FUNC INT Info_Mod_Felicita_AufgabeNein_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_Hi))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeJa))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_AufgabeNein_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_AufgabeNein_15_00"); //I'd love to. Sorry, I don't have time right now. Maybe later.
};

INSTANCE Info_Mod_Felicita_Belauscht (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Belauscht_Condition;
	information	= Info_Mod_Felicita_Belauscht_Info;
	permanent	= 0;
	important	= 0;
	description	= "I'm afraid I can't say good evening.";
};

FUNC INT Info_Mod_Felicita_Belauscht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Felicita_AufgabeJa))
	&& (Mod_ASS_Felicita == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Felicita_Belauscht_Info()
{
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_00"); //I'm afraid I can't say good evening.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_19_01"); //So you caught my husband?
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_02"); //Not in flagrant. I heard him talking to a woman. Under the big birch tree outside.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_19_03"); //That's good enough for me. That rascal! Ever since he's swallowed all this evil stuff, he's been like a complete replacement.
	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_04"); //You mean this giver of joy?
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_19_05"); //Exactly. It's enough now. I'll get a divorce and throw him out of my house.
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_19_06"); //Here, I'll give you this gold ring.

	B_GiveInvItems	(self, hero, ItMi_Hochzeitsring, 1);

	AI_Output(hero, self, "Info_Mod_Felicita_Belauscht_15_07"); //Your wedding ring?
	AI_Output(self, hero, "Info_Mod_Felicita_Belauscht_19_08"); //He used to be. Take it!

	B_LogEntry	(TOPIC_MOD_ASS_FELICITA, "Caught the gatekeeper August with another woman and told Felicita. She gave me her wedding ring for it.");
	B_SetTopicStatus	(TOPIC_MOD_ASS_FELICITA, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	B_StartOtherRoutine	(Mod_7385_OUT_August_REL, "FREMDGANG");
	B_StartOtherRoutine	(Mod_7343_OUT_Buergerin_REL, "FREMDGANG");
};

INSTANCE Info_Mod_Felicita_Pickpocket (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_Pickpocket_Condition;
	information	= Info_Mod_Felicita_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Felicita_Pickpocket_Condition()
{
	C_Beklauen	(42, ItMi_Gold, 18);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

	Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_BACK, Info_Mod_Felicita_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Felicita_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Felicita_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Felicita_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Felicita_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Felicita_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Felicita_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Felicita_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Felicita_EXIT (C_INFO)
{
	npc		= Mod_7281_OUT_Felicita_REL;
	nr		= 1;
	condition	= Info_Mod_Felicita_EXIT_Condition;
	information	= Info_Mod_Felicita_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Felicita_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Felicita_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
