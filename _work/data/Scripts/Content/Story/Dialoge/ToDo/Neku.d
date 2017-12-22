INSTANCE Info_Mod_Neku_Hi (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Hi_Condition;
	information	= Info_Mod_Neku_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_00"); //Chcesz skupic sie na bagnie?
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_01"); //Tak, dlaczego?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_02"); //Te dwa punkty ostrosci sa niezwykle niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_03"); //Pólnocny znajduje sie przed stara swiatynia. Polozony jest w poblizu skalnej skaly w sercu bagna.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_04"); //Przed przekletym, obleganym demonem, zombie zamieszkalym i spogladajacym na ducha swiatynia, przypuszczam?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_05"); //Nie, normalna swiatynia. Z wyjatkiem potworów, które zyja przed swiatynia.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_06"); //Jakie potwory?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_07"); //Nie wiem o tym. Widzialem je tylko z góry.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_08"); //Proste figury, ostrza w rekach i ogniem w oczach.....
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_09"); //A co jest tak niebezpieczne na srodku bagna?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_10"); //Chcialbym to równiez wiedziec.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_11"); //Pomiedzy drzewami pojawiaja sie sylwetki dziwacznych postaci, które znikaja miedzy nimi..... Mozna by pomyslec, ze to same drzewa migruja......
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_12"); //Dobrze, bede uwazny, jesli wejde.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_13"); //Nie musisz tego robic.
	AI_Output(hero, self, "Info_Mod_Neku_Hi_15_14"); //Dlaczego nie?
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_15"); //Nie przychodzisz. Potwory zyjace przy swiatyni maja barykade i straznik przy wejsciu na bagno.
	AI_Output(self, hero, "Info_Mod_Neku_Hi_09_16"); //Nie wygladaja jak komitet powitalny. No cóz, szczescie i tak!

	B_LogEntry	(TOPIC_MOD_FOKUSSUCHE, "Bagno otoczone jest barykada, a jedynym wejsciem jest strzezone przez dziwnych wojowników, którzy strzega swiatyni w bagnie w poblizu ogniska. Drugi punkt ogniskowy w bagnie zamieszkuja dziwne stworzenia, które maja przypominac wedrujace drzewa. Zobaczmy, jak do tego dojde....");
};

INSTANCE Info_Mod_Neku_Giftdrache (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Giftdrache_Condition;
	information	= Info_Mod_Neku_Giftdrache_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Neku_Giftdrache_Condition()
{
	if (Mod_NL_Jharkendar_DrachenSpawn == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Neku_Giftdrache_Info()
{
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_00"); //Hej, czekaj! Jesli poszedles na bagno, to bym uwazal.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_01"); //Jesli moje oczy nie oszukaly mnie, zobaczylam jaszczurke.... Wiecej
	AI_Output(hero, self, "Info_Mod_Neku_Giftdrache_15_02"); //Tak, sadze, ze wiele jaszczurek w bagnie.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_03"); //Nie, nie, skonczcie. Widzialem wiec jaszczurke schodzaca z nieba, co najmniej piec metrów wysokosci.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_04"); //Wyladowala gdzies na poludnie w poblizu palisady bagna.
	AI_Output(self, hero, "Info_Mod_Neku_Giftdrache_09_05"); //Od tego czasu, w niesprzyjajacych wiatrach, od czasu do czasu przychodza z niego coraz czesciej okropne opary, niemal zapierajace dech w piersiach.
};

INSTANCE Info_Mod_Neku_Pickpocket (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_Pickpocket_Condition;
	information	= Info_Mod_Neku_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Neku_Pickpocket_Condition()
{
	C_Beklauen	(75, ItMi_Gold, 22);
};

FUNC VOID Info_Mod_Neku_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_BACK, Info_Mod_Neku_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Neku_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Neku_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
};

FUNC VOID Info_Mod_Neku_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Neku_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Neku_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Neku_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Neku_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Neku_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Neku_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Neku_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Neku_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Neku_EXIT (C_INFO)
{
	npc		= Mod_7369_WNOV_Neku_AW;
	nr		= 1;
	condition	= Info_Mod_Neku_EXIT_Condition;
	information	= Info_Mod_Neku_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Neku_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Neku_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
