INSTANCE Info_Mod_Hilda_Hi (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Hi_Condition;
	information	= Info_Mod_Hilda_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hallo, sch�ne Frau.";
};

FUNC INT Info_Mod_Hilda_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_00"); //Hallo, sch�ne Frau.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_17_01"); //(misstrauisch) Was willst du?
	AI_Output(hero, self, "Info_Mod_Hilda_Hi_15_02"); //Warum so feindselig?
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_17_03"); //(gel�st) Ach, in letzter Zeit kommen hier so viele Fremde vorbei, dass man gar nicht mehr wei�, woran man ist.
	AI_Output(self, hero, "Info_Mod_Hilda_Hi_17_04"); //Und nicht alle Begegnungen waren erfreulicher Natur.
};

INSTANCE Info_Mod_Hilda_Argez (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez_Condition;
	information	= Info_Mod_Hilda_Argez_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wer war denn hier?";
};

FUNC INT Info_Mod_Hilda_Argez_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hilda_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez_15_00"); //Wer war denn hier?
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_01"); //Das fing schon mit den Paladinen und Rittern an. Lauter Schmutzfinken sind das, ich habe noch keine aufrichtige Person unter ihnen erlebt.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_02"); //Und seit dem Fall der Barriere kommen immer mal wieder ehemalige Str�flinge vorbei, verhalten sich aber ruhig, weil Lobart ein gro�es Herz hat.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_03"); //Zu viel wurde es ihm dann erst bei dem T�towierten. Der hat ihm richtig Angst gemacht.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_04"); //Er hat zwar nur nach Arbeit gefragt, aber auf eine so komische Weise, als w�rde er im n�chsten Moment durchdrehen.

	if (!Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	{
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_05"); //Ich habe ihm dann eine Suppe gegeben, damit er geht, aber da er wohl nicht in die Stadt eingelassen wurde, steht er noch immer auf dem Weg vor den Feldern.
		AI_Output(self, hero, "Info_Mod_Hilda_Argez_17_06"); //Wenn du daf�r sorgst, dass er von dort verschwindet, k�nnten wir sicher besser schlafen.

		Log_CreateTopic	(TOPIC_MOD_HILDA_ARGEZ, LOG_MISSION);
		B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_RUNNING);
		B_LogEntry	(TOPIC_MOD_HILDA_ARGEZ, "Auf dem Weg zum Stadttor soll sich ein merkw�rdiger Fremder aufhalten, den die B�uerin Hilda f�rchtet. Es w�re ihr am liebsten, er w�rde von dort verschwinden.");

		Mod_Hilda_Argez = 1;
	};
};

INSTANCE Info_Mod_Hilda_Argez2 (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Argez2_Condition;
	information	= Info_Mod_Hilda_Argez2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Der Fremde ist nun in der Stadt.";
};

FUNC INT Info_Mod_Hilda_Argez2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Argez_NW_InCity))
	&& (Mod_Hilda_Argez == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Hilda_Argez2_Info()
{
	AI_Output(hero, self, "Info_Mod_Hilda_Argez2_15_00"); //Der Fremde ist nun in der Stadt.
	AI_Output(self, hero, "Info_Mod_Hilda_Argez2_17_01"); //Mir f�llt ein Stein vom Herzen. Hier, nimm du auch eine warme Suppe.

	B_GiveInvItems	(self, hero, ItFo_Fleischeintopf, 1);

	B_GivePlayerXP	(50);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_HILDA_ARGEZ, LOG_SUCCESS);
};

INSTANCE Info_Mod_Hilda_Pickpocket (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_Pickpocket_Condition;
	information	= Info_Mod_Hilda_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60_Female;
};

FUNC INT Info_Mod_Hilda_Pickpocket_Condition()
{
	C_Beklauen	(45, ItMi_Gold, 30);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_BACK, Info_Mod_Hilda_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Hilda_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Hilda_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Hilda_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Hilda_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Hilda_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Hilda_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Hilda_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Hilda_EXIT (C_INFO)
{
	npc		= Mod_909_BAU_Hilda_NW;
	nr		= 1;
	condition	= Info_Mod_Hilda_EXIT_Condition;
	information	= Info_Mod_Hilda_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Hilda_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Hilda_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};