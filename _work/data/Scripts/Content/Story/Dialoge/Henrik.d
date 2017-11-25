INSTANCE Info_Mod_Henrik_Hi (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Hi_Condition;
	information	= Info_Mod_Henrik_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wyglada praca?";
};

FUNC INT Info_Mod_Henrik_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henrik_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_00"); //Jak wyglada praca?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_01"); //Zly. W naszym jeziorze jest juz tak malo rybek.... i coraz mniej!
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_02"); //Dlaczego tak jest?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_03"); //W lesie naprzeciwko znajduja sie hordy Moleratów.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_04"); //Vincent, nasz mysliwy, ostatnio nie wydaje sie byc zbyt udany, a wiec coraz wiecej.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_05"); //Moleraty lubia plywac do chlodzenia i wciagac do wody duzo brudu.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_06"); //Nic dziwnego, ze male ryby umieraja. Ja bym zrobil to samo dla nich. Musi byc dawca radosci.....
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_15_07"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_07_08"); //Vincent ten nie poluje juz z powodzeniem. Zawsze jest wysoki. Wiec.... czy przejmiesz Molerats?

	Info_ClearChoices	(Info_Mod_Henrik_Hi);

	Info_AddChoice	(Info_Mod_Henrik_Hi, "Czasami trzeba pozwolic naturze panowac nad nia.", Info_Mod_Henrik_Hi_B);
	Info_AddChoice	(Info_Mod_Henrik_Hi, "Bez problemu.", Info_Mod_Henrik_Hi_A);
};


FUNC VOID Info_Mod_Henrik_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_B_15_00"); //Czasami trzeba pozwolic naturze panowac nad nia.

	Info_ClearChoices	(Info_Mod_Henrik_Hi);
};

FUNC VOID Info_Mod_Henrik_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_00"); //Bez problemu.
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_01"); //Nicei!
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_02"); //Nawiasem mówiac, to nie dziala na mnie....
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_03"); //Co?
	AI_Output(self, hero, "Info_Mod_Henrik_Hi_A_07_04"); //Przyjemny dawca! Dobrze?
	AI_Output(hero, self, "Info_Mod_Henrik_Hi_A_15_05"); //Wszystko jasne!

	Log_CreateTopic	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_SCHWEINE, "Rybak Henrik skarzy sie na to, ze meleraty po lesnej stronie duzego jeziora zanieczyszczaja je podczas kapieli i w ten sposób ryby gina. Wiec powinienem zdziesiatkowac meleraty.");

	Mod_Henrik_Schweine = 1;

	Info_ClearChoices	(Info_Mod_Henrik_Hi);
};

INSTANCE Info_Mod_Henrik_MoleratsTot (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_MoleratsTot_Condition;
	information	= Info_Mod_Henrik_MoleratsTot_Info;
	permanent	= 0;
	important	= 0;
	description	= "Strzelilem do Moleratów.";
};

FUNC INT Info_Mod_Henrik_MoleratsTot_Condition()
{
	if (Mod_Henrik_Schweine == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Henrik_MoleratsTot_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_MoleratsTot_15_00"); //Strzelilem do Moleratów.
	AI_Output(self, hero, "Info_Mod_Henrik_MoleratsTot_07_01"); //Bardzo dziekuje! Oto butelka grog jako nagroda, której juz nie potrzebuje.

	B_GiveInvItems	(self, hero, ItFo_Addon_Grog, 1);

	AI_Output(self, hero, "Info_Mod_Henrik_MoleratsTot_07_02"); //Oto teraz!

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_SCHWEINE, LOG_SUCCESS);

	B_GivePlayerXP	(100);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Henrik_Freudenspender (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Freudenspender_Condition;
	information	= Info_Mod_Henrik_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Przyjemnosc-darczynca przeciw samotnosci?";
};                       

FUNC INT Info_Mod_Henrik_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Henrik_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_00"); //Przyjemnosc-darczynca przeciw samotnosci?
	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_01"); //Tak, tak, tak, bardzo dobrze.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_02"); //Jestes dobrym bitrem, huh?
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_03"); //Kto?
	AI_Output(self, hero, "Info_Mod_Henrik_Freudenspender_07_04"); //Glupich rybek. Dobrze?
	AI_Output(hero, self, "Info_Mod_Henrik_Freudenspender_15_05"); //Pewne.

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Henrik_Pickpocket (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_Pickpocket_Condition;
	information	= Info_Mod_Henrik_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Henrik_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Freudenspender, 2);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

	Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_BACK, Info_Mod_Henrik_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Henrik_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Henrik_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Henrik_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Henrik_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Henrik_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Henrik_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Henrik_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Henrik_EXIT (C_INFO)
{
	npc		= Mod_7383_OUT_Henrik_REL;
	nr		= 1;
	condition	= Info_Mod_Henrik_EXIT_Condition;
	information	= Info_Mod_Henrik_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Henrik_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Henrik_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
