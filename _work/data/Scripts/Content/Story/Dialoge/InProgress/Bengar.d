INSTANCE Info_Mod_Bengar_Hi (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Hi_Condition;
	information	= Info_Mod_Bengar_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Bengar_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bengar_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Bengar_Hi_05_01"); //Ja jestem Bengar, gospodarzem tego gospodarstwa.
};

INSTANCE Info_Mod_Bengar_Aufgabe (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Aufgabe_Condition;
	information	= Info_Mod_Bengar_Aufgabe_Info;
	permanent	= 1;
	important	= 0;
	description	= "Baltram czeka na Twój chleb.";
};

FUNC INT Info_Mod_Bengar_Aufgabe_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Bengar_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Baltram_Warentransporte))
	&& (Mod_BengarBaltram == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bengar_Aufgabe_Info()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_00"); //Baltram czeka na Twój chleb.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_05_01"); //Kilka dni temu stracilem samochody i mezczyzn w rabunku. Nie biore tej szansy ponownie!
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_02"); //Dlatego jestem tutaj.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_05_03"); //Lubie to? Chcesz chodzic samotnie i ladowac sie do miasta?
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_15_04"); //Nie bylby to pierwszy raz.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_05_05"); //Wszystko w porzadku, jesli masz na mysli.... Dostane 150 zlota.

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);

	if (Mod_Verhandlungsgeschick > 0)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Chleb nie wyglada tak cennie....", Info_Mod_Bengar_Aufgabe_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 150)
	{
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Oto 150 zlota.", Info_Mod_Bengar_Aufgabe_B);
	};
	Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Nie mam tak wiele.", Info_Mod_Bengar_Aufgabe_A);
};

FUNC VOID Info_Mod_Bengar_Aufgabe_C()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_C_15_00"); //Chleby nie wygladaja tak drogocennie....

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_C_05_01"); //100 zlota. Najwazniejsze jest to, ze pozwalasz sobie na wzrost.

		Npc_RemoveInvItems	(hero, ItMi_Gold, 100);
		CreateInvItems	(hero, ItFo_Bread, 30);

		Mod_BengarBaltram = 1;

		B_ShowGivenThings	("100 zlota i 30 bochenków chleba");

		B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Bengar dal mi swój chleb.");

		Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_C_05_02"); //Czyz nie mam racji?

		Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);

		if (Npc_HasItems(hero, ItMi_Gold) >= 150)
		{
			Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Oto 150 zlota.", Info_Mod_Bengar_Aufgabe_B);
		};
		Info_AddChoice	(Info_Mod_Bengar_Aufgabe, "Nie mam tak wiele.", Info_Mod_Bengar_Aufgabe_A);
	};
};

FUNC VOID Info_Mod_Bengar_Aufgabe_B()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_B_15_00"); //Oto 150 zlota.

	B_GiveInvItems	(hero, self, ItMi_Gold, 150);

	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_B_05_01"); //A oto chleb.

	B_GiveInvItems	(self, hero, ItFo_Bread, 30);

	Mod_BengarBaltram = 1;

	B_LogEntry	(TOPIC_MOD_BALTRAM_WARENTRANSPORTE, "Bengar dal mi swój chleb.");

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
};

FUNC VOID Info_Mod_Bengar_Aufgabe_A()
{
	AI_Output(hero, self, "Info_Mod_Bengar_Aufgabe_A_15_00"); //Nie mam tak wiele.
	AI_Output(self, hero, "Info_Mod_Bengar_Aufgabe_A_05_01"); //(smiesznie) No cóz, to wlasnie nazywam planowaniem wyprzedzajacym! Po otrzymaniu zlota przyjedz z powrotem.

	Info_ClearChoices	(Info_Mod_Bengar_Aufgabe);
};

INSTANCE Info_Mod_Bengar_Kakos (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Kakos_Condition;
	information	= Info_Mod_Bengar_Kakos_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Bengar_Kakos_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Xardas_NW_Drachen))
	&& (Npc_IsDead(Kakos_11006_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Bengar_Kakos_Info()
{
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_05_00"); //Dziekuje bardzo. Nie moge uwierzyc, co zrobiles na tym gigancie.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_05_01"); //Pracujemy dzien i noc, jedzac wlosy z glowy, tej dranie.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_05_02"); //Nie moglismy trwac dluzej.
	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_05_03"); //Tu wezmiemy skarb olbrzyma, aby mu podziekowac, który powinnismy dla niego dopracowac.

	B_GiveInvItems	(self, hero, ItMi_Riesenschatz, 1);

	AI_Output(self, hero, "Info_Mod_Bengar_Kakos_05_04"); //Gdzie jest teraz, juz go nie bedzie potrzebowal.

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_NL_KAKOS, LOG_SUCCESS);
};

INSTANCE Info_Mod_Bengar_Pickpocket (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_Pickpocket_Condition;
	information	= Info_Mod_Bengar_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Bengar_Pickpocket_Condition()
{
	C_Beklauen	(35, ItMi_Gold, 15);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

	Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_BACK, Info_Mod_Bengar_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Bengar_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Bengar_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Bengar_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Bengar_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Bengar_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Bengar_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Bengar_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Bengar_EXIT (C_INFO)
{
	npc		= Mod_107_BAU_Bengar_NW;
	nr		= 1;
	condition	= Info_Mod_Bengar_EXIT_Condition;
	information	= Info_Mod_Bengar_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Bengar_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Bengar_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
