INSTANCE Info_Mod_Baldur_Hi (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Hi_Condition;
	information	= Info_Mod_Baldur_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj! Co ci nazywaja?";
};

FUNC INT Info_Mod_Baldur_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baldur_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_00"); //Witaj! Co ci nazywaja?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_03_01"); //Jestem Baldur, mysliwy w sluzbie druidom i straznikom.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_02"); //Niebezpieczenstwo? Druidy? Co.....?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_03_03"); //Rangers sa równiez mysliwymi, ale sa oni czesciowo zaangazowani w walke.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_04"); //A i Druidowie?
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_03_05"); //To sa liderzy Rangersów. A takze wszystkich mysliwych.
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_03_06"); //Madrzy mezczyzni, którzy znaja swoja droge wokól medycyny i magii.
	AI_Output(self, hero, "Info_Mod_Baldur_Hi_03_07"); //Nie poluja i rzadko walcza, kochaja przyrode i modla sie do Adanosa.
	AI_Output(hero, self, "Info_Mod_Baldur_Hi_15_08"); //Ciekawe! Dziekujemy za informacje.
};

INSTANCE Info_Mod_Baldur_CyrcoMine (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_CyrcoMine_Condition;
	information	= Info_Mod_Baldur_CyrcoMine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej Baldur! Byles w walce wczesniej.";
};

FUNC INT Info_Mod_Baldur_CyrcoMine_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Cyrco_BaalOrun))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_CyrcoMine_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_CyrcoMine_15_00"); //Hej Baldur! Byles w walce wczesniej.
	AI_Output(self, hero, "Info_Mod_Baldur_CyrcoMine_03_01"); //To wlasnie mam na mysli! To jest gromada, która mamy!
	AI_Output(hero, self, "Info_Mod_Baldur_CyrcoMine_15_02"); //Udales sie na kolejna runde? Dostalem kolejna misje.
	AI_Output(self, hero, "Info_Mod_Baldur_CyrcoMine_03_03"); //Nie, pozwólcie mu odejsc. Urazilem ramie. Lepsze nie.
};

INSTANCE Info_Mod_Baldur_Felle (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Felle_Condition;
	information	= Info_Mod_Baldur_Felle_Info;
	permanent	= 0;
	important	= 0;
	description	= "Alchemik potrzebuje swiezej skóry.";
};

FUNC INT Info_Mod_Baldur_Felle_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Wulfgar_Felle3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_Felle_Info()
{
	AI_Output(hero, self, "Info_Mod_Baldur_Felle_15_00"); //Alchemik potrzebuje swiezej skóry.
	AI_Output(self, hero, "Info_Mod_Baldur_Felle_03_01"); //Jest ich stos. Pomóz sobie.
	AI_Output(hero, self, "Info_Mod_Baldur_Felle_15_02"); //Bede mial 10 sztuk.
	AI_Output(self, hero, "Info_Mod_Baldur_Felle_03_03"); //Przejdz do przodu. Nie musze jej wciagac.

	AI_GotoWP	(hero, "WP_JL_14");

	AI_PlayAni	(hero, "T_PLUNDER");

	CreateInvItems	(hero, ItAt_Wolffur, 5);
	CreateInvItems	(hero, ItAt_WargFur, 5);

	B_ShowGivenThings	("5 Zachowane futra wolframowe i ostrzegawcze");
};

INSTANCE Info_Mod_Baldur_AlterMann (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_AlterMann_Condition;
	information	= Info_Mod_Baldur_AlterMann_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zapytaj o starca w lesie.";
};

FUNC INT Info_Mod_Baldur_AlterMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_AlterWaldMann))
	&& (Mod_BDT_AlterWaldMann < 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Baldur_AlterMann_Info()
{
	if (Mod_BDT_AlterWaldMann == 0)
	{
		B_Say	(hero, self, "$ALTERWALDMANN01");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_00"); //Ach, masz na mysli starego czlowieka z lasu. Tak, wiem o nim cos.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_01"); //Mówi sie, ze ma ona stulecia i ma chronic zwierzeta w lesie wokól Khoraty.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_02"); //Mówi sie, ze jest slepy, ale jednoczesnie ma magiczny talent.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_03"); //To wszystko, o czym moge teraz pomyslec. Moze ktos inny wie wiecej.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Od pierwszego straznika nie dostalem wiele nowych informacji. Stary czlowiek z lasu, chroniac zwierzeta, jest starozytnym, niewidomym i magicznym. Moze inny straznik wie wiecej.");
	}
	else if (Mod_BDT_AlterWaldMann == 1)
	{
		B_Say	(hero, self, "$ALTERWALDMANN02");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_04"); //Stary czlowiek z lasu? Tak, slyszalem, ze byl kiedys sluga Adano.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_05"); //Nie wiadomo, czy byl on takim straznikiem jak my, magikiem wody, czy przemieniajacym magiem.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_06"); //Jego magiczne zdolnosci, a takze silne przywiazanie do swiata zwierzat i roslin sa dowodem na to, ze ma wszystko.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "W 2. lesniczy tez nie dowiedzialem sie wiele, co warto wiedziec. Mówi sie, ze stary czlowiek lasu jest zwiazany z Adanosem i kreacja, zwlaszcza zwierzetami i roslinami.");
	}
	else if (Mod_BDT_AlterWaldMann == 2)
	{
		B_Say	(hero, self, "$ALTERWALDMANN03");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_07"); //Cóz, nie moge ci wiele powiedziec o nim.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_08"); //Problem polega równiez na tym, ze nie rozmawia z nikim, nawet z nami, nawet jesli dazymy do podobnych celów.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_09"); //Sam z zwierzetami lasu bawi sie sam.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_10"); //No cóz, gdybym byl dzikiem, jestem pewien, ze móglbym powiedziec ci wiecej o nim.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Acha, to mogla byc wazna wskazówka. Stary czlowiek z lasu calkowicie unika ludzi, mówi tylko zwierzetom.");
	}
	else if (Mod_BDT_AlterWaldMann == 3)
	{
		B_Say	(hero, self, "$ALTERWALDMANN04");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_11"); //Stary czlowiek z lasu? Cóz, ma byc scisle zwiazany z fauna i flora.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_12"); //Mówi sie, ze prowadzi on spakowywanie zwierzat takich jak knury czy wilki, aby chronic las przed intruzami.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_13"); //Nawet mówi sie, ze czesto wystepuje w ksztalcie zielonego wilka.

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Przede wszystkim powinien on równiez poinstruowac wieksze paczki zwierzat, takie jak knury i wilki, aby chronic las przed intruzami.");
	}
	else if (Mod_BDT_AlterWaldMann == 4)
	{
		B_Say	(hero, self, "$ALTERWALDMANN05");

		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_14"); //Interesuja Cie opowiesci o starym czlowieku z lasu?
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_15"); //Cóz, nie wiem wiele o tej mistycznej dziwnej kuli.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_16"); //Podobno zamieszkuje glównie w ciemnym lesie, ale równiez w poblizu zbiorników wodnych, takich jak jeziora.
		AI_Output(self, hero, "Info_Mod_Baldur_AlterMann_03_17"); //Rzadko zdarza sie, ze ktos go widzial.....

		B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Najprawdopodobniej znajduje sie on w gestym lesie Khoraty w poblizu jeziora.");
	};

	Mod_BDT_AlterWaldMann += 1;
};

INSTANCE Info_Mod_Baldur_Pickpocket (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_Pickpocket_Condition;
	information	= Info_Mod_Baldur_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Baldur_Pickpocket_Condition()
{
	C_Beklauen	(81, ItMi_Gold, 27);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

	Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_BACK, Info_Mod_Baldur_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Baldur_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Baldur_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Baldur_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Baldur_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Baldur_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Baldur_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Baldur_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Baldur_EXIT (C_INFO)
{
	npc		= Mod_7431_JG_Baldur_MT;
	nr		= 1;
	condition	= Info_Mod_Baldur_EXIT_Condition;
	information	= Info_Mod_Baldur_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Baldur_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Baldur_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
