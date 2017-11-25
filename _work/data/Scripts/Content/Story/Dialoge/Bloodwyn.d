INSTANCE Info_Mod_Bloodwyn_Hi (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_Hi_Condition;
	information	= Info_Mod_Bloodwyn_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bloodwyn_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bloodwyn_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Hi_04_00"); //You? I thought you were dead. Don't mess with me or I'll kill you.
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Hi_15_01"); //Stay calm, I'm not here to make trouble.
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Hi_04_02"); //That's what I hope for you, too.
};

INSTANCE Info_Mod_Bloodwyn_Dieb (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_Dieb_Condition;
	information	= Info_Mod_Bloodwyn_Dieb_Info;
	permanent	= 0;
	important	= 0;
	description	= "The ore barons are being stolen....";
};

FUNC INT Info_Mod_Bloodwyn_Dieb_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bloodwyn_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bloodwyn_Dieb_Info()
{
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Dieb_15_00"); //The ore barons are being stolen, and I wouldn't be surprised if you had your fingers in the game.
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Dieb_04_01"); //I thought you'd come to give me money again. No, I had nothing to do with it.
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Dieb_15_02"); //I can't help myself, but I don't believe you.
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Dieb_04_03"); //Dein Problem, Freund. Und jetzt verschwinde, bevor ich auf die Idee kommen könnte, ein Treffen mit ein paar "pals" für dich zu organisieren.

	Mod_PDV_Bloodwyn_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Bloodwyn didn't let on that he knows anything, but I don't believe him.");
};

INSTANCE Info_Mod_Bloodwyn_Frage (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_Frage_Condition;
	information	= Info_Mod_Bloodwyn_Frage_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you have any idea...";
};

FUNC INT Info_Mod_Bloodwyn_Frage_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bloodwyn_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bloodwyn_Frage_Info()
{
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Frage_15_00"); //Do you have any idea who's responsible for the thefts at the barons?
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Frage_04_01"); //I thought you'd come to give me money again. No, and I don't want to know.
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Frage_15_02"); //I can't help myself, but I don't believe you.
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Frage_04_03"); //Dein Problem, Freund. Und jetzt verschwinde, bevor ich auf die Idee kommen könnte, ein Treffen mit ein paar "pals" für dich zu organisieren.

	Mod_PDV_Bloodwyn_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Bloodwyn didn't let on that he knows anything, but I don't believe him.");
};

INSTANCE Info_Mod_Bloodwyn_Dealer (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_Dealer_Condition;
	information	= Info_Mod_Bloodwyn_Dealer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Do you know...";
};

FUNC INT Info_Mod_Bloodwyn_Dealer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alissandro_Dieb))
	&& (Mod_PDV_Bloodwyn_Infos == 0)
	&& (Mod_PDV_Fisk_Infos == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bloodwyn_Dealer_Info()
{
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Dealer_15_00"); //Would you know where I can get hot stuff?
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Dealer_04_01"); //I thought you'd come to give me money again. No, I don't know about that.
	AI_Output(hero, self, "Info_Mod_Bloodwyn_Dealer_15_02"); //I can't help myself, but I don't believe you.
	AI_Output(self, hero, "Info_Mod_Bloodwyn_Dealer_04_03"); //Dein Problem, Freund. Und jetzt verschwinde, bevor ich auf die Idee kommen könnte, ein Treffen mit ein paar "pals" für dich zu organisieren.

	Mod_PDV_Bloodwyn_Infos = 1;

	Mod_PDV_Genug_Infos += 1;

	B_LogEntry	(TOPIC_MOD_PDV, "Bloodwyn didn't let on that he knows anything, but I don't believe him.");
};

INSTANCE Info_Mod_Bloodwyn_WieGehts (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_WieGehts_Condition;
	information	= Info_Mod_Bloodwyn_WieGehts_Info;
	permanent	= 0;
	important	= 0;
	description	= "How have you been?";
};

FUNC INT Info_Mod_Bloodwyn_WieGehts_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bloodwyn_WieGehts_Info()
{
	AI_Output(hero, self, "Info_Mod_Bloodwyn_WieGehts_15_00"); //How have you been?
	AI_Output(self, hero, "Info_Mod_Bloodwyn_WieGehts_04_01"); //Get the fuck out of here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bloodwyn_AL (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_AL_Condition;
	information	= Info_Mod_Bloodwyn_AL_Info;
	permanent	= 0;
	important	= 0;
	description	= "How's the old camp?";
};

FUNC INT Info_Mod_Bloodwyn_AL_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bloodwyn_AL_Info()
{
	AI_Output(hero, self, "Info_Mod_Bloodwyn_AL_15_00"); //How's the old camp?
	AI_Output(self, hero, "Info_Mod_Bloodwyn_AL_04_01"); //Get the fuck out of here.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Bloodwyn_Pickpocket (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_Pickpocket_Condition;
	information	= Info_Mod_Bloodwyn_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Bloodwyn_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Nugget, 4);
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);

	Info_AddChoice	(Info_Mod_Bloodwyn_Pickpocket, DIALOG_BACK, Info_Mod_Bloodwyn_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bloodwyn_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bloodwyn_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);

		Info_AddChoice	(Info_Mod_Bloodwyn_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bloodwyn_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bloodwyn_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bloodwyn_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bloodwyn_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bloodwyn_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bloodwyn_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bloodwyn_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bloodwyn_EXIT (C_INFO)
{
	npc		= Mod_943_GRD_Bloodwyn_MT;
	nr		= 1;
	condition	= Info_Mod_Bloodwyn_EXIT_Condition;
	information	= Info_Mod_Bloodwyn_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bloodwyn_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bloodwyn_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
