INSTANCE Info_Mod_Rupert_Hi (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Hi_Condition;
	information	= Info_Mod_Rupert_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy handlujesz?";
};

FUNC INT Info_Mod_Rupert_Hi_Condition()
{
	if (Mod_IstLehrling == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_15_00"); //Czy handlujesz?
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_03_01"); //(popychanie) Uh...... no c�z...... nie tak naprawde dzisiaj.
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_15_02"); //Nie lubisz mojej twarzy, czy?
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_03_03"); //Nie, nie, to po prostu.... Garondowi nie podoba sie to, gdy sprzedaje ci skazanych.
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_03_04"); //I nie mam licencji na handel dlugo, wiesz?

	Info_ClearChoices	(Info_Mod_Rupert_Hi);

	Info_AddChoice	(Info_Mod_Rupert_Hi, "Daj mi te towary lub bede sie rozsypywac!", Info_Mod_Rupert_Hi_C);
	Info_AddChoice	(Info_Mod_Rupert_Hi, "Calkowicie rozumiem. Jestes tch�rzem.", Info_Mod_Rupert_Hi_B);
	Info_AddChoice	(Info_Mod_Rupert_Hi, "Niech wiec wszyscy maja racje.", Info_Mod_Rupert_Hi_A);
};

FUNC VOID Info_Mod_Rupert_Hi_C()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_C_15_00"); //Daj mi te towary lub bede sie rozsypywac!
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_C_03_01"); //Nie r�b nic glupiego!

	Info_ClearChoices	(Info_Mod_Rupert_Hi);

	Info_AddChoice	(Info_Mod_Rupert_Hi, "Prosiles o to!", Info_Mod_Rupert_Hi_E);
	Info_AddChoice	(Info_Mod_Rupert_Hi, "Porozmawiam z wami p�zniej.", Info_Mod_Rupert_Hi_D);
};

FUNC VOID Info_Mod_Rupert_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_B_15_00"); //Calkowicie rozumiem. Jestes tch�rzem.
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_B_03_01"); //Nie jestem! Musze zobaczyc, gdzie jestem.
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_B_15_02"); //Mozesz pozostac tam, gdzie rosnie papryka.

	Info_ClearChoices	(Info_Mod_Rupert_Hi);
};

FUNC VOID Info_Mod_Rupert_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_A_15_00"); //Niech wiec wszyscy maja racje.
	AI_Output(self, hero, "Info_Mod_Rupert_Hi_A_03_01"); //Dziekuje za zrozumienie. Moze p�zniej.

	Info_ClearChoices	(Info_Mod_Rupert_Hi);
};

FUNC VOID Info_Mod_Rupert_Hi_E()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_E_15_00"); //Prosiles o to!
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Rupert_Hi);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Rupert_Hi_D()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Hi_D_15_00"); //Porozmawiam z wami p�zniej.

	Info_ClearChoices	(Info_Mod_Rupert_Hi);
};

INSTANCE Info_Mod_Rupert_Handelt (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Handelt_Condition;
	information	= Info_Mod_Rupert_Handelt_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rupert_Handelt_Condition()
{
	if (Mod_IstLehrling == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Handelt_Info()
{
	AI_Output(self, hero, "Info_Mod_Rupert_Handelt_03_00"); //Poczekaj minute, bede z Toba teraz.

	Info_ClearChoices	(Info_Mod_Rupert_Handelt);

	Info_AddChoice	(Info_Mod_Rupert_Handelt, "Zapomnij o tym. Moje zloto trafia do sprzedawc�w innych niz ty.", Info_Mod_Rupert_Handelt_B);
	Info_AddChoice	(Info_Mod_Rupert_Handelt, "C�z, pozwole sobie to zobaczyc.", Info_Mod_Rupert_Handelt_A);
};

FUNC VOID Info_Mod_Rupert_Handelt_B()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Handelt_B_15_00"); //Zapomnij o tym. Moje zloto trafia do sprzedawc�w innych niz ty.

	Info_ClearChoices	(Info_Mod_Rupert_Handelt);
};

FUNC VOID Info_Mod_Rupert_Handelt_A()
{
	AI_Output(hero, self, "Info_Mod_Rupert_Handelt_A_15_00"); //C�z, pozwole sobie to zobaczyc.
	AI_Output(self, hero, "Info_Mod_Rupert_Handelt_A_03_01"); //Wybierz sw�j wyb�r!

	Info_ClearChoices	(Info_Mod_Rupert_Handelt);

	Mod_RupertHandelt = 1;

	Log_CreateTopic	(TOPIC_MOD_HAENDLER_STADT, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_HAENDLER_STADT, "Handel Ruperta ze mna teraz.");
};

INSTANCE Info_Mod_Rupert_MatteoLehrling1 (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_MatteoLehrling1_Condition;
	information	= Info_Mod_Rupert_MatteoLehrling1_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy cos sie po prostu poruszylo pod twoimi stopami? (miescic jablko)";
};

FUNC INT Info_Mod_Rupert_MatteoLehrling1_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Rupert_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_MatteoLehrling1_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL01");

	AI_PlayAni	(self, "T_PLUNDER");

	B_Say	(hero, self, "$PLACEAPFEL02");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Rupert_Apfel = 1;
};

INSTANCE Info_Mod_Rupert_MatteoLehrling2 (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_MatteoLehrling2_Condition;
	information	= Info_Mod_Rupert_MatteoLehrling2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, nie szukaja go tam? (miescic jablko)";
};

FUNC INT Info_Mod_Rupert_MatteoLehrling2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Rupert_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_MatteoLehrling2_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL03");

	AI_PlayAni	(self, "T_SEARCH");

	B_Say	(hero, self, "$PLACEAPFEL04");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Rupert_Apfel = 1;
};

INSTANCE Info_Mod_Rupert_MatteoLehrling3 (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_MatteoLehrling3_Condition;
	information	= Info_Mod_Rupert_MatteoLehrling3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mile jablka, kt�re tam masz.... (miescic jablko)";
};

FUNC INT Info_Mod_Rupert_MatteoLehrling3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_LehrlingQuest2))
	&& (Mod_Rupert_Apfel == 0)
	&& (Npc_HasItems(hero, ItFo_Apple_Matteo_Schlecht) > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_MatteoLehrling3_Info()
{
	B_Say	(hero, self, "$PLACEAPFEL05");

	Npc_RemoveInvItems	(hero, ItFo_Apple_Matteo_Schlecht, 1);

	Mod_Rupert_Apfel = 1;
};

INSTANCE Info_Mod_Rupert_Daemonisch (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Daemonisch_Condition;
	information	= Info_Mod_Rupert_Daemonisch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rupert_Daemonisch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brian_Daemonisch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Daemonisch_Info()
{
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch_03_00"); //Hej, duzo sie poruszasz i znasz swoja droge.
	AI_Output(hero, self, "Info_Mod_Rupert_Daemonisch_15_01"); //Tak, dlaczego?
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch_03_02"); //Shh, nie tak glosne. Nie wiem, czy jestesmy podsluchiwani.....
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch_03_03"); //Wieczorem widzialem dziwne rzeczy poza miastem i nie wiem, co o nich myslec.
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch_03_04"); //Obecnie nie wiem, komu moge zaufac z miasta......
	AI_Output(hero, self, "Info_Mod_Rupert_Daemonisch_15_05"); //Co sie stalo z pieklem?
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch_03_06"); //Cichy) Po prostu przyjdz tu p�zno w nocy. Pokaze Ci wtedy, o czym m�wie.

	B_LogEntry	(TOPIC_MOD_DAEMONISCH, "Rupert chce mnie spotkac p�znym wieczorem przy poludniowej bramie, zeby cos mi pokazac. Byl bardzo ostrozny, jakby musial obawiac sie bycia podsluchiwanym.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DAEMONISCH2");
};

INSTANCE Info_Mod_Rupert_Daemonisch2 (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Daemonisch2_Condition;
	information	= Info_Mod_Rupert_Daemonisch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rupert_Daemonisch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rupert_Daemonisch))
	&& (Wld_IsTime(21,00,05,00))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Daemonisch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch2_03_00"); //Och, tam jestescie. Towarzyszyc mi dyskretnie......

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "DAEMONISCHER");
};

INSTANCE Info_Mod_Rupert_Daemonisch3 (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Daemonisch3_Condition;
	information	= Info_Mod_Rupert_Daemonisch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Rupert_Daemonisch3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rupert_Daemonisch2))
	&& (Npc_GetDistToWP(self, "NW_FARM1_CITYWALL_02_B") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Daemonisch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch3_03_00"); //C�z, tutaj jestesmy.
	AI_Output(hero, self, "Info_Mod_Rupert_Daemonisch3_15_01"); //Ale.... Nie ma tu nic.
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch3_03_02"); //Jeszcze nie.
	AI_Output(hero, self, "Info_Mod_Rupert_Daemonisch3_15_03"); //Hej, co ty robisz?
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch3_03_04"); //Po prostu wszystko przygotowuje.
	AI_Output(self, hero, "Info_Mod_Rupert_Daemonisch3_03_05"); //Teraz przygotuj sie do przylaczenia sie do nas...... lub umieraja.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");
};

INSTANCE Info_Mod_Rupert_Trade (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Trade_Condition;
	information	= Info_Mod_Rupert_Trade_Info;
	permanent	= 1;
	important	= 0;
	trade		= 1;
	description	= DIALOG_TRADE;
};

FUNC INT Info_Mod_Rupert_Trade_Condition()
{
	if (Mod_RupertHandelt == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Rupert_Trade_Info()
{
	Backup_Questitems();

	B_GiveTradeInv (self);
	B_Say (hero, self, "$TRADE_1");
};

INSTANCE Info_Mod_Rupert_Pickpocket (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_Pickpocket_Condition;
	information	= Info_Mod_Rupert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Rupert_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 17);
};

FUNC VOID Info_Mod_Rupert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);

	Info_AddChoice	(Info_Mod_Rupert_Pickpocket, DIALOG_BACK, Info_Mod_Rupert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Rupert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Rupert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Rupert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);
};

FUNC VOID Info_Mod_Rupert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);

		Info_AddChoice	(Info_Mod_Rupert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Rupert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Rupert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Rupert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Rupert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Rupert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Rupert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Rupert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Rupert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Rupert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Rupert_EXIT (C_INFO)
{
	npc		= Mod_750_NONE_Rupert_NW;
	nr		= 1;
	condition	= Info_Mod_Rupert_EXIT_Condition;
	information	= Info_Mod_Rupert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Rupert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Rupert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
