INSTANCE Info_Mod_Robert_Andre (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Andre_Condition;
	information	= Info_Mod_Robert_Andre_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Robert_Andre_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Wendel_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Lukas_Andre))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Andre)))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Andre_Info()
{
	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_00"); //Ach, to ty. Tutaj podniesmy to.

	B_GiveInvItems	(self, hero, ItBe_Kettenhemd, 1);

	B_Say	(hero, self, "$WASISTDAS");

	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_01"); //Powloka poczty lancuchowej. To arcydzielo! Nigdy nie mial tak dobrego materialu w piecu, a tym bardziej pod mlotkiem.
	AI_Output(hero, self, "Info_Mod_Robert_Andre_15_02"); //Nie rozumiem.
	AI_Output(self, hero, "Info_Mod_Robert_Andre_05_03"); //Andre dostal zamówienie. Powinienem przygotowac sie na wielki ladunek magicznej rudy i zrobic z niej poczte lancuchowa. Wziawszy to pod uwage.
};

INSTANCE Info_Mod_Robert_Plagenquest (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Plagenquest_Condition;
	information	= Info_Mod_Robert_Plagenquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem wszystkie rzeczy potrzebne do tego klubu chemicznego.";
};

FUNC INT Info_Mod_Robert_Plagenquest_Condition()
{
	if ((Npc_KnowsInfo(hero, Info_Mod_Lukas_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Wendel_Plagenquest_02))
	|| (Npc_KnowsInfo(hero, Info_Mod_Theodorus_Plagenquest_02)))
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 8)
	&& (Npc_HasItems(hero, ItMi_HolyWater) >= 2)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItAt_LurkerSkin) >= 1)
	&& (Npc_HasItems(hero, ItMi_StarkerTabak) >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Plagenquest_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Plagenquest_15_00"); //Dostalem wszystkie rzeczy potrzebne do tego klubu chemicznego.

	B_ShowGivenThings	("Rózne podane pozycje");

	AI_Output(self, hero, "Info_Mod_Robert_Plagenquest_05_01"); //Hej, dobry czlowiek, zaczynam. Wróc za kilka godzin.

	Npc_RemoveInvItems	(hero, ItMi_Nugget, 8);
	Npc_RemoveInvItems	(hero, ItMi_HolyWater, 2);
	Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, 1);
	Npc_RemoveInvItems	(hero, ItMi_Sulfur, 1);
	Npc_RemoveInvItems	(hero, ItAt_LurkerSkin, 1);
	Npc_RemoveInvItems	(hero, ItMi_StarkerTabak, 2);

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Dalem kowalowi wszystko do klubu i moge go odebrac w ciagu kilku godzin.");

	B_GivePlayerXP	(150);

	Mod_WM_RobertChemo = Wld_GetDay();
};

INSTANCE Info_Mod_Robert_Plagenquest_02 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Plagenquest_02_Condition;
	information	= Info_Mod_Robert_Plagenquest_02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Robert_Plagenquest_02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Plagenquest))
	&& (Wld_GetDay() > Mod_WM_RobertChemo)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Plagenquest_02_Info()
{
	AI_Output(self, hero, "Info_Mod_Robert_Plagenquest_02_05_00"); //Jo, dobry czlowiek, skonczylem ten ladny kawalek. Teraz wszystko, co musisz zrobic, to wpasc do swiatyni Innos i dokonac poswiecenia.

	B_GiveInvItems	(self, hero, ItMw_Chemo_Unloaded, 1);

	B_LogEntry	(TOPIC_MOD_ADANOS_DRECKSVIECHER, "Dostalem klub. Teraz wszystko, co musze zrobic, to poswiecic je w sanktuarium Innos.");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Robert_Nagelnachschub (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub_Condition;
	information	= Info_Mod_Robert_Nagelnachschub_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sprzedajesz paznokcie?";
};

FUNC INT Info_Mod_Robert_Nagelnachschub_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lukas_Wettstreit))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_00"); //Sprzedajesz paznokcie?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_01"); //Nope. Ja sam tego potrzebuje.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_02"); //Czy nie mozesz ich wykonac?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_03"); //Czy moge....? ale nie bez misji.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_04"); //Wtedy podam Ci zamówienie na paznokcie.
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_05"); //Do tego potrzebny jest mi zelazny slepy nablyszczacz, który moge rozpuscic..... i butelke grog jako zaplaty.
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub_15_06"); //Ile paznokci mozesz zrobic?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub_05_07"); //Mam duzo pracy do wykonania. Napelnie Cie paczka pelna, co bedzie trzeba zrobic.

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Robert robi z mnie paczke paznokci, kiedy przynose mu puste paznokcie i butelke grogu.");
};

INSTANCE Info_Mod_Robert_Nagelnachschub2 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub2_Condition;
	information	= Info_Mod_Robert_Nagelnachschub2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto pustka i grog.";
};

FUNC INT Info_Mod_Robert_Nagelnachschub2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Nagelnachschub))
	&& (Npc_HasItems(hero, ItFo_Addon_Grog) >= 1)
	&& (Npc_HasItems(hero, ItMiSwordraw) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub2_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub2_15_00"); //Oto pustka i grog.

	Npc_RemoveInvItems	(hero, ItMiSwordraw, 1);
	Npc_RemoveInvItems	(hero, ItFo_Addon_Grog, 1);

	B_ShowGivenThings	("groty i stal surowa");

	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub2_05_01"); //Dobrze, dostac sie do pracy. Wróc jutro.

	B_LogEntry	(TOPIC_MOD_KHORATA_NAGELNACHSCHUB, "Robert potrzebuje jednego dnia, aby zrobic paznokcie.");

	Mod_REL_Nagelnachschub_Tag = Wld_GetDay();
};

INSTANCE Info_Mod_Robert_Nagelnachschub3 (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Nagelnachschub3_Condition;
	information	= Info_Mod_Robert_Nagelnachschub3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes gotowy?";
};

FUNC INT Info_Mod_Robert_Nagelnachschub3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Robert_Nagelnachschub2))
	&& (Wld_GetDay() > Mod_REL_Nagelnachschub_Tag)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Nagelnachschub3_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Nagelnachschub3_15_00"); //Czy jestes gotowy?
	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub3_05_01"); //Czy nadal mam klientów, jesli nie dotrzymam terminów? Oczywiscie mam juz za soba.

	B_GiveInvItems	(self, hero, ItMi_Nagelpaket, 1);

	AI_Output(self, hero, "Info_Mod_Robert_Nagelnachschub3_05_02"); //Teraz juz nie przeszkadza mi.

	B_GivePlayerXP	(50);
};

INSTANCE Info_Mod_Robert_Dietriche (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Dietriche_Condition;
	information	= Info_Mod_Robert_Dietriche_Info;
	permanent	= 1;
	important	= 0;
	description	= "Pochodze z Thorben i chcialbym zamówic firme Dietriche.";
};

FUNC INT Info_Mod_Robert_Dietriche_Condition()
{
	if (Mod_Thorben_Dietriche == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Robert_Dietriche_Info()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_15_00"); //Pochodze z Thorben i chcialbym zamówic firme Dietriche.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_05_01"); //Czy masz surowe monety stalowe i 100 zlotych?

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);

	Info_AddChoice	(Info_Mod_Robert_Dietriche, "Nie.", Info_Mod_Robert_Dietriche_B);

	if (Npc_HasItems(hero, ItMiSwordRaw) >= 5)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice	(Info_Mod_Robert_Dietriche, "Tak.", Info_Mod_Robert_Dietriche_A);
	};
};

FUNC VOID Info_Mod_Robert_Dietriche_B()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_B_15_00"); //Nie.

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);
};

FUNC VOID Info_Mod_Robert_Dietriche_A()
{
	AI_Output(hero, self, "Info_Mod_Robert_Dietriche_A_15_00"); //Tak.

	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 5);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 100);

	B_ShowGivenThings	("100 zlota i 5 zlota z dodatkiem stali surowej");

	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_01"); //Wykonanie tego zadania zajelo mi troche czasu.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_02"); //Nastepnie przekaze je dealerowi z Khorinis i dostarczy je do Thorben.
	AI_Output(self, hero, "Info_Mod_Robert_Dietriche_A_05_03"); //Nie musisz na nikogo czekac.

	Mod_Thorben_Dietriche = 3;

	Info_ClearChoices	(Info_Mod_Robert_Dietriche);
};

INSTANCE Info_Mod_Robert_Pickpocket (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_Pickpocket_Condition;
	information	= Info_Mod_Robert_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Robert_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMiSwordRaw, 7);
};

FUNC VOID Info_Mod_Robert_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

	Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_BACK, Info_Mod_Robert_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Robert_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Robert_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
};

FUNC VOID Info_Mod_Robert_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Robert_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Robert_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Robert_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Robert_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Robert_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Robert_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Robert_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Robert_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Robert_EXIT (C_INFO)
{
	npc		= Mod_7242_OUT_Robert_REL;
	nr		= 1;
	condition	= Info_Mod_Robert_EXIT_Condition;
	information	= Info_Mod_Robert_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Robert_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Robert_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
