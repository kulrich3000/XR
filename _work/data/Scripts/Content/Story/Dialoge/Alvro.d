INSTANCE Info_Mod_Alvro_Hi (C_INFO)
{
	npc		= Mod_185_NONE_Alvro_NW;
	nr		= 1;
	condition	= Info_Mod_Alvro_Hi_Condition;
	information	= Info_Mod_Alvro_Hi_Info;
	permanent	= 1;
	important	= 1;
};

FUNC INT Info_Mod_Alvro_Hi_Condition()
{
	if (!Npc_KnowsInfo(hero, Info_Mod_Kardif_Melasse))
	&& (Npc_IsInState(self, ZS_Talk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvro_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Alvro_Hi_01_00"); //Wyjsc stad!

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alvro_Melasse (C_INFO)
{
	npc		= Mod_185_NONE_Alvro_NW;
	nr		= 1;
	condition	= Info_Mod_Alvro_Melasse_Condition;
	information	= Info_Mod_Alvro_Melasse_Info;
	permanent	= 0;
	important	= 0;
	description	= "Slysze, ze dostales melase.";
};

FUNC INT Info_Mod_Alvro_Melasse_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Kardif_Melasse))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alvro_Melasse_Info()
{
	AI_Output(hero, self, "Info_Mod_Alvro_Melasse_15_00"); //Slysze, ze dostales melase.
	AI_Output(self, hero, "Info_Mod_Alvro_Melasse_01_01"); //Zadnego z Twoich interesów!
	AI_Output(hero, self, "Info_Mod_Alvro_Melasse_15_02"); //Jestem piratem i potrzebuje rzeczy.
	AI_Output(self, hero, "Info_Mod_Alvro_Melasse_01_03"); //Jestes piratem?
	AI_Output(hero, self, "Info_Mod_Alvro_Melasse_15_04"); //No tak, cóz, tu wyprowadzmy melase.
	AI_Output(self, hero, "Info_MOd_Alvro_Melasse_01_05"); //I-I nie moge - nie moge.

	CreateInvItems	(self, ItFo_Melasse, 15);
	CreateInvItems	(self, Mod_BillsRumRezept, 1);

	B_LogEntry	(TOPIC_MOD_SAMUEL_RUM, "Alvro nie da mi ochotniczo melasy i zamiast tego zaatakuje mnie. Nie pozostawia mi wyboru.....");

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_GuildEnemy, 0);
};

INSTANCE Info_Mod_Alvro_Pickpocket (C_INFO)
{
	npc		= Mod_185_NONE_Alvro_NW;
	nr		= 1;
	condition	= Info_Mod_Alvro_Pickpocket_Condition;
	information	= Info_Mod_Alvro_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Alvro_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Flask, 3);
};

FUNC VOID Info_Mod_Alvro_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);

	Info_AddChoice	(Info_Mod_Alvro_Pickpocket, DIALOG_BACK, Info_Mod_Alvro_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alvro_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alvro_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alvro_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);
};

FUNC VOID Info_Mod_Alvro_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);

		Info_AddChoice	(Info_Mod_Alvro_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alvro_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alvro_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alvro_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alvro_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alvro_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alvro_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alvro_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alvro_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alvro_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alvro_EXIT (C_INFO)
{
	npc		= Mod_185_NONE_Alvro_NW;
	nr		= 1;
	condition	= Info_Mod_Alvro_EXIT_Condition;
	information	= Info_Mod_Alvro_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alvro_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alvro_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
