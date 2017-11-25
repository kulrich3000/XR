INSTANCE Info_Mod_Katar_Daron (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Daron_Condition;
	information	= Info_Mod_Katar_Daron_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Katar_Daron_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Daron_Katar))
	&& (Mod_Sekte_Karras >= 1)
	&& (Mod_Sekte_Joseppe < 2)
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Karras_NamibHabBuch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Katar_Daron_Info()
{
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_00"); //Innos nie zawsze moze przebaczyc...... Innos moze mnie pieknac! Sygnalizator kaznodziei.
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_01"); //Wydaje sie, ze nie mówisz tak dobrze o Innosie.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_02"); //Co wiec? Co Cie obchodzi?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_03"); //Moge miec cos do zrobienia dla kogos, kto ma dostep do klasztoru.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_04"); //Co o tym chodzi?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_05"); //Magicy strazy pozarnej maja w klasztorze ksiazke, której potrzebuje.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_06"); //I co to jest?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_07"); //Nekronomika.
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_08"); //Nekronomia.... Co? Nie ma to jednak znaczenia.... Co dla mnie jest w niej?
	AI_Output(hero, self, "Info_Mod_Katar_Daron_15_09"); //A co z bagnem?
	AI_Output(self, hero, "Info_Mod_Katar_Daron_03_10"); //Pakiet z rdestnica bagnista, soso. Wszystko w porzadku, to umowa. Spotkaj mnie jutro pod mostem w poblizu tawerny.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Pozar Nowicki Katar dostanie mi ksiazke na pakiet bagna.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "BRIDGE");
	B_StartOtherRoutine	(Mod_523_KDF_Daron_NW, "LIFEKLOSTER");

	Mod_Sekte_KatarDay = Wld_GetDay();
};

INSTANCE Info_Mod_Katar_Necronomicum (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Necronomicum_Condition;
	information	= Info_Mod_Katar_Necronomicum_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Katar_Necronomicum_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Katar_Daron))
	&& (Npc_HasItems(hero, ItMi_HerbPaket) >= 1)
	&& (Mod_Sekte_KatarDay < Wld_GetDay())
	&& (Npc_HasItems(hero, ItWr_BeliarBook) == 0)
	&& (!Npc_KnowsInfo(hero, ItWr_BeliarBook))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Katar_Necronomicum_Info()
{
	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_03_00"); //Jest pan tam wreszcie. Oto Twoja ksiazka.

	CreateInvItems	(self, ItWr_BeliarBook, 1);

	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_15_01"); //Oto Twoja rdestnica bagnista.

	B_GiveInvItems	(hero, self, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_03_02"); //Oh, tak, tak.... Zmienilam zdanie. Chce jeszcze cztery inne. 000 sztuk zlota.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Otrzymalem ksiazke od Kataru i teraz powinienem ja zabrac do Karrasu.");

	B_StartOtherRoutine	(self, "START");

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);

	Info_AddChoice	(Info_Mod_Katar_Necronomicum, "Zamkniesz usta, jesli juz nie podasz mi tej ksiazki.", Info_Mod_Katar_Necronomicum_B);

	if (Npc_HasItems(hero, ItMi_Gold) >= 4000)
	{
		Info_AddChoice	(Info_Mod_Katar_Necronomicum, "Wszystko w porzadku, tutaj.", Info_Mod_Katar_Necronomicum_A);
	};
};

FUNC VOID Info_Mod_Katar_Necronomicum_B()
{
	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_B_15_00"); //Zamkniesz usta, jesli juz nie podasz mi tej ksiazki.
	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_B_03_01"); //Daj mu strzal.

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);
};

FUNC VOID Info_Mod_Katar_Necronomicum_A()
{
	AI_Output(hero, self, "Info_Mod_Katar_Necronomicum_A_15_00"); //Wszystko w porzadku, tutaj.

	B_GiveInvItems	(hero, self, ItMi_Gold, 4000);

	AI_Output(self, hero, "Info_Mod_Katar_Necronomicum_A_03_01"); //Tutaj wez go.

	B_GiveInvItems	(self, hero, ItWr_BeliarBook, 1);

	Info_ClearChoices	(Info_Mod_Katar_Necronomicum);
};

INSTANCE Info_Mod_Katar_Pickpocket (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_Pickpocket_Condition;
	information	= Info_Mod_Katar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Katar_Pickpocket_Condition()
{
	C_Beklauen	(55, ItMi_Gold, 16);
};

FUNC VOID Info_Mod_Katar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

	Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_BACK, Info_Mod_Katar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Katar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Katar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
};

FUNC VOID Info_Mod_Katar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Katar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Katar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Katar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Katar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Katar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Katar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Katar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Katar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Katar_EXIT (C_INFO)
{
	npc		= Mod_1190_NOV_Katar_NW;
	nr		= 1;
	condition	= Info_Mod_Katar_EXIT_Condition;
	information	= Info_Mod_Katar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Katar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Katar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
