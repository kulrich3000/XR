INSTANCE Info_Mod_William_Hi (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_Hi_Condition;
	information	= Info_Mod_William_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_William_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_William_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_William_Hi_06_01"); //Ja jestem William, rybak.
};

INSTANCE Info_Mod_William_Flugblaetter (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_Flugblaetter_Condition;
	information	= Info_Mod_William_Flugblaetter_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam dla Ciebie ulotke.";
};

FUNC INT Info_Mod_William_Flugblaetter_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Matteo_Auftrag_2))
	&& (Npc_HasItems(hero, MatteoFlugblaetter) >= 1)
	&& (Mod_Flugblaetter < 20)
	&&(!Npc_KnowsInfo(hero, Info_Mod_Matteo_Flugblaetter))
	&& (Npc_KnowsInfo(hero, Info_Mod_William_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_William_Flugblaetter_Info()
{
	B_Say (hero, self, "$MATTEOPAPER");

	B_GiveInvItems	(hero, self, MatteoFlugblaetter, 1);

	AI_Output(self, hero, "Info_Mod_William_Flugblaetter_06_01"); //Zobaczmy jak.....

	B_UseFakeScroll();

	AI_Output(self, hero, "Info_Mod_William_Flugblaetter_06_02"); //Nie lubie serów, ale dziekuje za to, ze mi powiedziales.

	Mod_Flugblaetter += 1;
};

INSTANCE Info_Mod_William_HalvorHolFische (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_HalvorHolFische_Condition;
	information	= Info_Mod_William_HalvorHolFische_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jestem po to, aby dostac twoja rybe.";
};

FUNC INT Info_Mod_William_HalvorHolFische_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_William_Hi))
	&& (Mod_HalvorHolFischeQuest == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_William_HalvorHolFische_Info()
{
	AI_Output(hero, self, "Info_Mod_William_HalvorHolFische_15_00"); //Jestem po to, aby dostac twoja rybe.

	if (!Npc_IsDead(Waran_William))
	{
		AI_Output(self, hero, "Info_Mod_William_HalvorHolFische_06_01"); //Dostalem problem, a ty go rozwiazesz.
		AI_Output(hero, self, "Info_Mod_William_HalvorHolFische_15_02"); //Jaki jest problem?
		AI_Output(self, hero, "Info_Mod_William_HalvorHolFische_06_03"); //Tam jest monitor i musze zyc w ciaglym strachu przed jedzeniem.
		AI_Output(hero, self, "Info_Mod_William_HalvorHolFische_15_04"); //Chcesz wiec, abym zabil za ciebie monitor?
		AI_Output(self, hero, "Info_Mod_William_HalvorHolFische_06_05"); //Wlasnie wtedy podam ci rybe dla Halvora.
		AI_Output(hero, self, "Info_Mod_William_HalvorHolFische_15_06"); //Wszystkie sluszne, wszystkie sluszne.

		B_LogEntry	(TOPIC_MOD_HALVOR_HOLFISCHE, "William nie da mi polowu, dopóki nie zabije monitora, który mieszka w poblizu niego.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_William_HalvorHolFische_06_07"); //Oto mój polów.

		B_GiveInvItems	(self, hero, ItFo_Fish, 10);

		Mod_HalvorHolFischeQuest = 2;

		B_LogEntry	(TOPIC_MOD_HALVOR_HOLFISCHE, "William dal mi swój polów.");
	};
};

INSTANCE Info_Mod_William_WaranDead (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_WaranDead_Condition;
	information	= Info_Mod_William_WaranDead_Info;
	permanent	= 0;
	important	= 0;
	description	= "Monitor jest wylaczony.";
};

FUNC INT Info_Mod_William_WaranDead_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_William_HalvorHolFische))
	&& (Mod_HalvorHolFischeQuest == TRUE)
	&& (Npc_IsDead(Waran_William))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_William_WaranDead_Info()
{
	AI_Output(hero, self, "Info_Mod_William_WaranDead_15_00"); //Monitor jest wylaczony.
	AI_Output(self, hero, "Info_Mod_William_WaranDead_06_01"); //Dziekuje bardzo. Oto mój polów.

	B_GiveInvItems	(self, hero, ItFo_Fish, 10);

	Mod_HalvorHolFischeQuest = 2;

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_HALVOR_HOLFISCHE, "William dal mi swój polów.");
};

INSTANCE Info_Mod_William_Pickpocket (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_Pickpocket_Condition;
	information	= Info_Mod_William_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_30;
};

FUNC INT Info_Mod_William_Pickpocket_Condition()
{
	C_Beklauen	(20, ItFo_Fish, 14);
};

FUNC VOID Info_Mod_William_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_William_Pickpocket);

	Info_AddChoice	(Info_Mod_William_Pickpocket, DIALOG_BACK, Info_Mod_William_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_William_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_William_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_William_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_William_Pickpocket);
};

FUNC VOID Info_Mod_William_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_William_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_William_Pickpocket);

		Info_AddChoice	(Info_Mod_William_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_William_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_William_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_William_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_William_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_William_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_William_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_William_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_William_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_William_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_William_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_William_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_William_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_William_EXIT (C_INFO)
{
	npc		= Mod_927_NONE_William_NW;
	nr		= 1;
	condition	= Info_Mod_William_EXIT_Condition;
	information	= Info_Mod_William_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_William_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_William_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
