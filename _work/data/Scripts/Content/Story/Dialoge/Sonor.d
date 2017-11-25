INSTANCE Info_Mod_Sonor_Hi (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Hi_Condition;
	information	= Info_Mod_Sonor_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Sonor_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_00"); //Sonor. Mysliwi i kandydaci na mój wstep do Rangers.
	AI_Output(hero, self, "Info_Mod_Sonor_Hi_15_01"); //Chcesz byc lesniczy? Czy jest to mozliwe?
	AI_Output(self, hero, "Info_Mod_Sonor_Hi_06_02"); //To wlasnie powiedzialem. Zobacze to z Baldurem i innym w obozie dla miesa i skór.
};

INSTANCE Info_Mod_Sonor_CyrcoMine (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_CyrcoMine_Condition;
	information	= Info_Mod_Sonor_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj Waidmann! Mam misje. Czy jestes?";
};

FUNC INT Info_Mod_Sonor_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_00"); //Witaj Waidmann! Mam misje. Czy jestes?
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_01"); //Tak, tak, jestescie. Ciagle jeszcze jestem cieply od wczesniejszych lat. Pokazalismy je. Co sie teraz dzieje?
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_02"); //Musimy dotrzec do starej kopalni. Jakas jaskinia. To wszystko, co wiem.
	AI_Output(self, hero, "Info_Mod_Sonor_CyrcoMine_06_03"); //Przejdz do przodu. Prosze pozwolic mi wiedziec, kiedy sie zaczyna.
	AI_Output(hero, self, "Info_Mod_Sonor_CyrcoMine_15_04"); //Wlasciwie, bede.

	if (Npc_KnowsInfo(hero, Info_Mod_Zelar_CyrcoMine))
	{
		B_LogEntry	(TOPIC_MOD_JG_GARDISTEN, "Tak wiec mam to wszystko razem. Sprzet i dwóch mezczyzn. Sonor i Zelar pójda z nimi. Popatrzcie jeszcze raz na Cyrco....");
	};
};

INSTANCE Info_Mod_Sonor_AlterMann (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_AlterMann_Condition;
	information	= Info_Mod_Sonor_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapytaj o starca w lesie.";
};

FUNC INT Info_Mod_Sonor_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_00"); //Ach, masz na mysli starego czlowieka z lasu. Tak, wiem o nim cos.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_01"); //Mówi sie, ze ma ona stulecia i ma chronic zwierzeta w lesie wokól Khoraty.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_02"); //Mówi sie, ze jest slepy, ale jednoczesnie ma magiczny talent.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_03"); //To wszystko, o czym moge teraz pomyslec. Moze ktos inny wie wiecej.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Od pierwszego straznika nie dostalem wiele nowych informacji. Stary czlowiek z lasu, chroniac zwierzeta, jest starozytnym, niewidomym i magicznym. Moze inny straznik wie wiecej.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_04"); //Stary czlowiek z lasu? Tak, slyszalem, ze byl kiedys sluga Adano.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_05"); //Nie wiadomo, czy byl on takim straznikiem jak my, magikiem wody, czy przemieniajacym magiem.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_06"); //Jego magiczne zdolnosci, a takze silne przywiazanie do swiata zwierzat i roslin sa dowodem na to, ze ma wszystko.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "W 2. lesniczy tez nie dowiedzialem sie wiele, co warto wiedziec. Mówi sie, ze stary czlowiek lasu jest zwiazany z Adanosem i kreacja, zwlaszcza zwierzetami i roslinami.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_07"); //Cóz, nie moge ci wiele powiedziec o nim.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_08"); //Problem polega równiez na tym, ze nie rozmawia z nikim, nawet z nami, nawet jesli dazymy do podobnych celów.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_09"); //Sam z zwierzetami lasu bawi sie sam.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_10"); //No cóz, gdybym byl dzikiem, jestem pewien, ze móglbym powiedziec ci wiecej o nim.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, to mogla byc wazna wskazówka. Stary czlowiek z lasu calkowicie unika ludzi, mówi tylko zwierzetom.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_11"); //Stary czlowiek z lasu? Cóz, ma byc scisle zwiazany z fauna i flora.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_12"); //Mówi sie, ze prowadzi on spakowywanie zwierzat takich jak knury czy wilki, aby chronic las przed intruzami.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_13"); //Nawet mówi sie, ze czesto wystepuje w ksztalcie zielonego wilka.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Przede wszystkim powinien on równiez poinstruowac wieksze paczki zwierzat, takie jak knury i wilki, aby chronic las przed intruzami.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_14"); //Interesuja Cie opowiesci o starym czlowieku z lasu?
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_15"); //Cóz, nie wiem wiele o tej mistycznej dziwnej kuli.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_16"); //Podobno zamieszkuje glównie w ciemnym lesie, ale równiez w poblizu zbiorników wodnych, takich jak jeziora.
		AI_Output(self, hero, "Info_Mod_Sonor_AlterMann_06_17"); //Rzadko zdarza sie, ze ktos go widzial.....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Najprawdopodobniej znajduje sie on w gestym lesie Khoraty w poblizu jeziora.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Sonor_Heiltrank (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Heiltrank_Condition;
	information	= Info_Mod_Sonor_Heiltrank_Info;
	permanent	= 1;
	important	= 0;
	description	= "(goraczka lecznicza)";
};

FUNC INT Info_Mod_Sonor_Heiltrank_Condition()
{
	if (self.aivar[AIV_Partymember] == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	Info_AddChoice	(Info_Mod_Sonor_Heiltrank, DIALOG_BACK, Info_Mod_Sonor_Heiltrank_BACK);

	if (Npc_HasItems(hero, ItPo_Health_Addon_04) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Istota uzdrawiania", Info_Mod_Sonor_Heiltrank_Health_04);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Eliksir uzdrawiania", Info_Mod_Sonor_Heiltrank_Health_03);
	};
	if (Npc_HasItems(hero, ItPo_Health_02) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Ekstrakt z ekstraktu leczniczego", Info_Mod_Sonor_Heiltrank_Health_02);
	};
	if (Npc_HasItems(hero, ItPo_Health_01) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Istota uzdrawiania", Info_Mod_Sonor_Heiltrank_Health_01);
	};
	if (Npc_HasItems(hero, ItPo_Health_07) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Napój lekkiego leczenia", Info_Mod_Sonor_Heiltrank_Health_07);
	};
	if (Npc_HasItems(hero, ItPo_Health_06) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Lekki eliksir leczniczy", Info_Mod_Sonor_Heiltrank_Health_06);
	};
	if (Npc_HasItems(hero, ItPo_Health_05) >= 1)
	{
		Info_AddChoice	(Info_Mod_Sonor_Heiltrank, "Napoje szybko lecznicze", Info_Mod_Sonor_Heiltrank_Health_05);
	};
};

FUNC VOID Info_Mod_Sonor_Heiltrank_BACK ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_04 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_Addon_04, 1);

	B_UseItem	(self, ItPo_Health_Addon_04);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_03 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_03, 1);

	B_UseItem	(self, ItPo_Health_03);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_02 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_02, 1);

	B_UseItem	(self, ItPo_Health_02);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_01 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_01, 1);

	B_UseItem	(self, ItPo_Health_01);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_07 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_07, 1);

	B_UseItem	(self, ItPo_Health_07);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_06 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_06, 1);

	B_UseItem	(self, ItPo_Health_06);
};

FUNC VOID Info_Mod_Sonor_Heiltrank_Health_05 ()
{
	Info_ClearChoices	(Info_Mod_Sonor_Heiltrank);

	B_GiveInvItems	(hero, self, ItPo_Health_05, 1);

	B_UseItem	(self, ItPo_Health_05);
};

INSTANCE Info_Mod_Sonor_Pickpocket (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_Pickpocket_Condition;
	information	= Info_Mod_Sonor_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Sonor_Pickpocket_Condition()
{
	C_Beklauen	(77, ItRw_Arrow, 26);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_BACK, Info_Mod_Sonor_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Sonor_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Sonor_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Sonor_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Sonor_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Sonor_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Sonor_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Sonor_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Sonor_EXIT (C_INFO)
{
	npc		= Mod_7432_JG_Sonor_MT;
	nr		= 1;
	condition	= Info_Mod_Sonor_EXIT_Condition;
	information	= Info_Mod_Sonor_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Sonor_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Sonor_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
