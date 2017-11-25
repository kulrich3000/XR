INSTANCE Info_Mod_Josef_Infos (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Infos_Condition;
	information	= Info_Mod_Josef_Infos_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes Josefem?";
};

FUNC INT Info_Mod_Josef_Infos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Fanatiker))
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Andre_Erfahrung_Fanatiker))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Josef_Infos_Info()
{
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_00"); //Czy jestes Josefem?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_01"); //Tak, jestem nim. Czego od mnie oczekujesz?
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_02"); //Szukam jakiegos mylnego guru.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_03"); //Pozostaw mi samotny czlowiek, nie mam nic wspólnego z tym kultem.
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_04"); //Czy ziolo bagienne rozluznialoby jezyk?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_05"); //Pieklo do fermentacji..... Daj mi ja.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_06"); //Co chcesz wiedziec?
	AI_Output(hero, self, "Info_Mod_Josef_Infos_15_07"); //Gdzie moge znalezc reszte sekty?
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_08"); //Przenioslem sie z nimi do Khorinis, ale oni sie rozeszli.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_09"); //Niektóre z nich znajduja sie w jaskini poza Khorinis, w poblizu dzielnicy portowej. Pozostali znajduja sie na wzgórzu, bezposrednio przed Khorinis, w latarni morskiej.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_10"); //Nie pytajcie mnie, czego chca, zabarykadowali sie tam, do których nie przyjdziemy.
	AI_Output(self, hero, "Info_Mod_Josef_Infos_13_11"); //Lepiej zostawic je w spokoju, dopóki nie wiesz dokladnie, do czego one sa przyzwyczajone. Teraz wyjdz z tego miejsca!

	B_LogEntry	(TOPIC_MOD_MILIZ_SEKTENSPINNER, "Josef powiedzial mi, ze sa dwie grupy. Jeden z nich znajduje sie w jaskini poza Khorinis w poblizu dzielnicy portowej, drugi w poblizu latarni morskiej. Wolalbym na razie nie dotykac latarni morskiej.");
};

INSTANCE Info_Mod_Josef_Crawlersekret (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Crawlersekret_Condition;
	information	= Info_Mod_Josef_Crawlersekret_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znasz miejsce....";
};

FUNC INT Info_Mod_Josef_Crawlersekret_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Constantino_Lehrling))
	&& (Mod_MinecrawlerEi >= 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Constantino_Stimme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Josef_Crawlersekret_Info()
{
	AI_Output(hero, self, "Info_Mod_Josef_Crawlersekret_15_00"); //Czy znasz miejsce, gdzie moge dostac silnego sekretarza minecrawlera?
	AI_Output(self, hero, "Info_Mod_Josef_Crawlersekret_13_01"); //Jesli sie nie myle, Fortuno sprzedal czesc tych rzeczy. Powinienes zatrzymac sie przy jego miejscu.
};

INSTANCE Info_Mod_Josef_Pickpocket (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_Pickpocket_Condition;
	information	= Info_Mod_Josef_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Josef_Pickpocket_Condition()
{
	C_Beklauen	(40, ItMi_SumpfTabak, 2);
};

FUNC VOID Info_Mod_Josef_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

	Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_BACK, Info_Mod_Josef_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Josef_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Josef_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
};

FUNC VOID Info_Mod_Josef_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Josef_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Josef_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Josef_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Josef_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Josef_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Josef_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Josef_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Josef_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Josef_EXIT (C_INFO)
{
	npc		= Mod_550_NONE_Josef_NW;
	nr		= 1;
	condition	= Info_Mod_Josef_EXIT_Condition;
	information	= Info_Mod_Josef_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Josef_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Josef_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
