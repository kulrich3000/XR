INSTANCE Info_Mod_HofstaatBarde_Hi (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Hi_Condition;
	information	= Info_Mod_HofstaatBarde_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatBarde_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatWache_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_00"); //Czarny czarnoskóry czarnoskóry czeladnik wchodzi do naszej sfery,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_01"); //Wlosy sa blond, twarz blada.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_02"); //Blizny jego duszy, nie widac ich,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_03"); //Tylko przerazenie na twarzy.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_04"); //Czy przynosi nam radosc lub cierpienie?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Hi_31_05"); //Czy jest faworyzowany czy zazdrosny?

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_HofstaatBarde_Sporen (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Sporen_Condition;
	information	= Info_Mod_HofstaatBarde_Sporen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_HofstaatBarde_Sporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Pilzsporen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Sporen_Info()
{
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_00"); //Kto przemyka sie z zakazana wiedza?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_01"); //Kto sprzedaje tutejszego króla za glupiego?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_02"); //Kim jest ten, który ponosi nasz los,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_03"); //I nadal wazy jego decyzje.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_04"); //Dostalem sie zorientowalem. Znam to, czego chciales od pierwszego dnia, ale czy zdajesz sobie z tego sprawe teraz?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_05"); //Zostal pan poslany, aby nas zniszczyc,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_06"); //Zamiast tego zaczales do nas przynalezec.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_07"); //W jednej rece przytrzymaj ostrze,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_08"); //W drugim moim gardle.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_09"); //I jeszcze spiewam tutaj,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_10"); //Masz tylko jeden wybór: CHOOSE!
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_11"); //Chcesz zasiac burze w naszym ogrodzie?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_12"); //A moze nawet sam ja kultywowac?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_13"); //Spacer po naszych cialach.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_14"); //A moze spogladajmy z naszej strony?
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_15"); //Zastanów sie i dobrze wybierz,
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_16"); //Daj nam nadzieje, daj nam odwage.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_17"); //Albo inaczej: odebrac nam ja.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_18"); //I zabrac te torbe na bagno.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_19"); //Wybierz strone, do której chcesz nalezec.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_20"); //Jesli chcesz zatrzymac sie w starej spolecznosci w bagnie, przynies im ten proszek.
	AI_Output(self, hero, "Info_Mod_HofstaatBarde_Sporen_31_21"); //Ale jesli nie chcesz pozbawic nowej wspólnoty wszelkiej nadziei, przynies ten proszek alchemikowi.

	AI_StopProcessInfos	(self);

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_FREUDENSPENDER, LOG_SUCCESS);

	Log_CreateTopic	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Bard zobaczyl mnie i dal mi wybór. Albo zdecyduje sie na obóz bagienny przywiezc do Baala Namiba, albo na dwór królewski, wtedy musze odwiedzic królewskiego mysliwego.");
};

INSTANCE Info_Mod_HofstaatBarde_Pickpocket (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_Pickpocket_Condition;
	information	= Info_Mod_HofstaatBarde_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_HofstaatBarde_Pickpocket_Condition()
{
	C_Beklauen	(65, ItMi_Freudenspender, 1);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

	Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_BACK, Info_Mod_HofstaatBarde_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_HofstaatBarde_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_HofstaatBarde_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_HofstaatBarde_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_HofstaatBarde_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_HofstaatBarde_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_HofstaatBarde_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_HofstaatBarde_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_HofstaatBarde_EXIT (C_INFO)
{
	npc		= Mod_7269_HS_Barde_REL;
	nr		= 1;
	condition	= Info_Mod_HofstaatBarde_EXIT_Condition;
	information	= Info_Mod_HofstaatBarde_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_HofstaatBarde_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_HofstaatBarde_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
