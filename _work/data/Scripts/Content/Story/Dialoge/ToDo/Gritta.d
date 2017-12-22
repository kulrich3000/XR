INSTANCE Info_Mod_Gritta_Hi (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Hi_Condition;
	information	= Info_Mod_Gritta_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Who are you?";
};

FUNC INT Info_Mod_Gritta_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gritta_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Gritta_Hi_43_01"); //I'm Gritta.
};

INSTANCE Info_Mod_Gritta_ThorbenLehrling (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_ThorbenLehrling_Condition;
	information	= Info_Mod_Gritta_ThorbenLehrling_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_ThorbenLehrling_Condition()
{
	if (Mod_Thorben_KO == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_ThorbenLehrling_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_00"); //You want to see Thorben, don't you?
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_01"); //Yes... Is something wrong?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_02"); //He... It looks bad. The doctor thinks it was a stroke and he'll wake up.
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_03"); //But no one knows how much of his memory is lost.
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_04"); //I'm sorry to hear that. Is there anything I can do for him?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling_43_05"); //You're his apprentice, aren't you? I'm sure he would appreciate a little homemade gift, oh yes.
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling_15_06"); //I'll think of something. Take care, now.

	Log_CreateTopic	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_LEHRLING_THORBEN_FOUR, "Thorben's hit him hard. His niece thinks he would be happy to receive a self-made gift. Well, it's a bit kitschy, but if it helps.... I should ask Brahim again for a drawing. Even if he doesn't want to do it himself, he might be able to pass me on.");
};

INSTANCE Info_Mod_Gritta_ThorbenLehrling2 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_ThorbenLehrling2_Condition;
	information	= Info_Mod_Gritta_ThorbenLehrling2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_ThorbenLehrling2_Condition()
{
	if (Mod_Thorben_Geschenk == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_ThorbenLehrling2_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling2_43_00"); //You have a present for my uncle?
	AI_Output(hero, self, "Info_Mod_Gritta_ThorbenLehrling2_15_01"); //Yeah. Is he conscious?
	AI_Output(self, hero, "Info_Mod_Gritta_ThorbenLehrling2_43_02"); //Since last night. He's already feeling better, and he seems to remember everything. Bring him your present.
};

INSTANCE Info_Mod_Gritta_Shakir (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir_Condition;
	information	= Info_Mod_Gritta_Shakir_Info;
	permanent	= 0;
	important	= 0;
	description	= "Innos, greeting. How are you feeling?";
};

FUNC INT Info_Mod_Gritta_Shakir_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jana_Shakir))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir_Info()
{
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_00"); //Innos, greeting. How are you feeling?
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_01"); //Bad. Who asks that?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_02"); //A suitor.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_03"); //You want to marry me? Why?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_04"); //Not that one. They say you like beautiful clothes.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_05"); //That's what I mean. Do you have any?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_06"); //No. But I could get you one. Finest fabric, elegant cut, best quality.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_07"); //Give it to me! What do you want for it?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_08"); //Just a courtesy. A good friend of mine wants to be with a woman.
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_09"); //He has a cozy accommodation outside the city...
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir_43_10"); //I see. When do I get the piece?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir_15_11"); //My friend will give it to you.

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "I could' hire' Gritta. Got to get her a dress from the tailor in Khorata and give it to Shakir.");
};

INSTANCE Info_Mod_Gritta_Shakir2 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir2_Condition;
	information	= Info_Mod_Gritta_Shakir2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hello! I got what you wanted.";
};

FUNC INT Info_Mod_Gritta_Shakir2_Condition()
{
	if (Mod_ASS_Gritta == 0)
	&& (Mod_ASS_Schneider == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir2_Info()
{
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_00"); //Hello! I got what you wanted.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir2_43_01"); //A new dress?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_02"); //Certainly. Haute couture from gay failure.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir2_43_03"); //Yeah, and? At least these people have good taste.
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir2_15_04"); //Whatever you say. Let's get going.

	Mod_ASS_Gritta = 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOWTOSHAKIR");

	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Take her to the cave and tell Shakir.");
};

INSTANCE Info_Mod_Gritta_Shakir3 (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Shakir3_Condition;
	information	= Info_Mod_Gritta_Shakir3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Gritta_Shakir3_Condition()
{
	if (Mod_ASS_Gritta == 1)
	&& (Npc_GetDistToWP(hero, "NW_CITY_SMFOREST_05") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Shakir3_Info()
{
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_00"); //You call this comfortable accommodation?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_01"); //Well, yeah. Anyway, you're undisturbed here. It's nice and warm too.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_02"); //And where's your good friend?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_03"); //I'll let him know. His name is Shakir. Pour yourself some wine in the meantime, if you like.
	AI_Output(self, hero, "Info_Mod_Gritta_Shakir3_43_04"); //And my dress?
	AI_Output(hero, self, "Info_Mod_Gritta_Shakir3_15_05"); //He'll bring it.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATSHAKIR");
};

INSTANCE Info_Mod_Gritta_Flugblaetter (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Flugblaetter_Condition;
	information	= Info_Mod_Gritta_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "I've got a flyer for you.";
};

FUNC INT Info_Mod_Gritta_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_Gritta_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Gritta_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_Gritta_Flugblaetter_43_01"); //(affects) Hmm, Matteo has beautiful clothes but I don't think so.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_Gritta_Pickpocket (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_Pickpocket_Condition;
	information	= Info_Mod_Gritta_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Gritta_Pickpocket_Condition()
{
	C_Beklauen	(36, ItMi_Gold, 19);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

	Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_BACK, Info_Mod_Gritta_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Gritta_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Gritta_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Gritta_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Gritta_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Gritta_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Gritta_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Gritta_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Gritta_EXIT (C_INFO)
{
	npc		= Mod_580_NONE_Gritta_NW;
	nr		= 1;
	condition	= Info_Mod_Gritta_EXIT_Condition;
	information	= Info_Mod_Gritta_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Gritta_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Gritta_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
