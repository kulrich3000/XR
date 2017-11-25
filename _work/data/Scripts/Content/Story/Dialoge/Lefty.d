INSTANCE Info_Mod_Lefty_Hi (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_Hi_Condition;
	information	= Info_Mod_Lefty_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lefty_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_00"); //Wygladasz na dosyc ubity.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_01"); //Nie przypominaj mi o tym.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_02"); //Co sie stalo z pieklem?
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_03"); //Jakis czas temu do naszego obozu przyjechal jakis facet. Chlopi postawili go przed nami i pobil nas zle.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_04"); //Przylapal mnie w glowie tak..... Ledwo pamietam, jak wygladala jego twarz.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_05"); //Tak wiec wygladaja na znajome.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_06"); //Hej, gosc byl.... er er..... ponad szesc stóp wysokosci, mówie wam, to prawda. Pelne niedzwiedzia. Ork pod nim ork wygladal jak chlopiec.... Wiecej
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_07"); //Trzymalem sie dlugo, ale on mnie wreszcie zlapal.
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_08"); //Ponad dwa metry? Dzwieki straszne dla mnie.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_09"); //Nie uwierzysz mi, huh? Powinien go widziec! Oczyszczilby Cie na sniadanie!

	if (hero.guild == GIL_MIL) {
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_10"); //Jestes nowy w obozie, czy nie?
		AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_11"); //W pewnym sensie juz......
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_12"); //Jesli chcesz cos zmienic, musisz sie przydac, pokaz, ze masz cos w pudelku. Mam juz dla Ciebie prace.
		AI_Output(hero, self, "Info_Mod_Lefty_Hi_15_13"); //Tak, o co to chodzi?
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_14"); //Opowiedzialem wam o tym zalosnym bandzie, które przyszlo na mnie.
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_15"); //W kazdym razie chlopi od czasu jego obecnosci byli bardzo zbuntowani. Ktos powinien pokazac im, kto znowu stoi na czele.
		AI_Output(self, hero, "Info_Mod_Lefty_Hi_24_16"); //Bylaby to dla pana okazja do pokazania, ze moze pan sobie poradzic.

		Info_ClearChoices	(Info_Mod_Lefty_Hi);

		Info_AddChoice	(Info_Mod_Lefty_Hi, "Co, bezbronni chlopi? Musisz znalezc kogos innego.", Info_Mod_Lefty_Hi_B);
		Info_AddChoice	(Info_Mod_Lefty_Hi, "Oczywiscie, w krótkim czasie pokrece chlopów razem.", Info_Mod_Lefty_Hi_A);
	};
};

FUNC VOID Info_Mod_Lefty_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_B_15_00"); //Co, bezbronni chlopi? Musisz znalezc kogos innego.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_B_24_01"); //Butelka. Bede musial po prostu ponownie przejac obowiazki.

	Mod_LeftysBauern = 1;
	
	Info_ClearChoices	(Info_Mod_Lefty_Hi);
};

FUNC VOID Info_Mod_Lefty_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Lefty_Hi_A_15_00"); //Oczywiscie, w krótkim czasie pokrece chlopów razem.
	AI_Output(self, hero, "Info_Mod_Lefty_Hi_A_24_01"); //Bardzo dobry. Zagotowac co najmniej pieciu chlopów.... i zdecydowanie powinienes sie tym zajac równiez pania Horatio. Wyglada na to, ze jest takim ich przywódca.

	Mod_LeftysBauern = 2;

	Log_CreateTopic	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_LEFTYBAUERN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_LEFTYBAUERN, "Lewa lewica chce, abym pokonal pieciu rolników i Horatio for Lefty.");
	
	Info_ClearChoices	(Info_Mod_Lefty_Hi);
};

INSTANCE Info_Mod_Lefty_BauernVerbatscht (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_BauernVerbatscht_Condition;
	information	= Info_Mod_Lefty_BauernVerbatscht_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_BauernVerbatscht_Condition()
{
	if (Mod_LeftysBauern == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_BauernVerbatscht_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_BauernVerbatscht_24_00"); //No cóz, to pokaze chlopów, którzy tu rzadza. Idz prosto do wladcy ryzu, on Ci za to wynagrodzi.
	AI_Output(self, hero, "Info_Mod_Lefty_BauernVerbatscht_24_01"); //Chlopcy tacy jak ty sa dla nas dobrzy tutaj w obozie.

	B_LogEntry	(TOPIC_MOD_SLD_LEFTYBAUERN, "Szczesliwy byl szczesliwy. Mam dostac nagrode od pana ryzu.");

	B_GivePlayerXP	(200);
};

INSTANCE Info_Mod_Lefty_RufusWeg (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusWeg_Condition;
	information	= Info_Mod_Lefty_RufusWeg_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusWeg_Condition()
{
	if (Mod_LeftysBauern == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusWeg_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_00"); //Damn, ten glupi chlop Rufus porysowal rogiem. Wladca ryzu jest obok siebie. Daje to innym chlopom tylko glupie pomysly.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_01"); //Kto zlowi uciekinierów ponownie, z pewnoscia dostanie dobra nagrode.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusWeg_24_02"); //(nieco cichszy dla siebie) Chociaz wladca ryzu nie ma nic przeciwko temu, gdyby Rufus mial zostac odciety.

	Log_CreateTopic	(TOPIC_MOD_SLD_RUFUS, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SLD_RUFUS, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "Uciekl rolnik Rufus. Ktokolwiek przywiozlby go z powrotem, mógl oczekiwac nagrody od wladcy ryzu.");
};

INSTANCE Info_Mod_Lefty_RufusDa (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusDa_Condition;
	information	= Info_Mod_Lefty_RufusDa_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusDa_Condition()
{
	if (Mod_SLD_Rufus == 3)
	&& (!Npc_IsDead(Mod_1082_BAU_Rufus_MT))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusDa_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_00"); //Znalezliscie Rufusa i przywiezliscie go z powrotem. Teraz ma klopoty....

	if (hero.guild == GIL_MIL)
	{
		AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_01"); //W kazdym razie znowu zdobyles kilka punktów. Przejdz prosto do wójta ryzu.
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Lefty_RufusDa_24_02"); //W kazdym razie to dobrze. Przejdz prosto do wójta ryzu.
	};

	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "Mam teraz udac sie do wladcy ryzu.");

	Mod_SLD_Rufus = 6;
};

INSTANCE Info_Mod_Lefty_RufusTot (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_RufusTot_Condition;
	information	= Info_Mod_Lefty_RufusTot_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_RufusTot_Condition()
{
	if (Npc_IsDead(Mod_1082_BAU_Rufus_MT))
	&& (Npc_KnowsInfo(hero, Info_Mod_Lefty_RufusWeg))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_RufusTot_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_00"); //Byles poza obozem. Widziales Rufusa, przez przypadek?
	AI_Output(hero, self, "Info_Mod_Lefty_RufusTot_15_01"); //Tak. W krwi.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_02"); //Nie mówisz.....
	AI_Output(hero, self, "Info_Mod_Lefty_RufusTot_15_03"); //Tak, tak.
	AI_Output(self, hero, "Info_Mod_Lefty_RufusTot_24_04"); //Idz do wladcy ryzu. Bedzie zainteresowany.

	B_LogEntry	(TOPIC_MOD_SLD_RUFUS, "Powiadomie mu pana ryzu i los Rufusa.");
};

INSTANCE Info_Mod_Lefty_OJGBoss (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_OJGBoss_Condition;
	information	= Info_Mod_Lefty_OJGBoss_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Lefty_OJGBoss_Condition()
{
	if (Mod_LeeOJGBoss < Wld_GetDay()-3)
	&& (Npc_KnowsInfo(hero, Info_Mod_Lee_HabPfeife))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Lefty_OJGBoss_Info()
{
	AI_Output(self, hero, "Info_Mod_Lefty_OJGBoss_24_00"); //Nieco wspanialy) Hey, um, jestes nowym liderem Orchunterów.
	AI_Output(hero, self, "Info_Mod_Lefty_OJGBoss_15_01"); //Tak, co jeszcze?
	AI_Output(self, hero, "Info_Mod_Lefty_OJGBoss_24_02"); //Nic, nic, nic, nic, nic.... tylko..... Wójc ryzowy ma dla Ciebie prezent..... placi wam nasze szacunki.
};

INSTANCE Info_Mod_Lefty_Pickpocket (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_Pickpocket_Condition;
	information	= Info_Mod_Lefty_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_60;
};

FUNC INT Info_Mod_Lefty_Pickpocket_Condition()
{
	C_Beklauen	(53, ItFo_Water, 6);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

	Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_BACK, Info_Mod_Lefty_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Lefty_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Lefty_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Lefty_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Lefty_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Lefty_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Lefty_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Lefty_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Lefty_EXIT (C_INFO)
{
	npc		= Mod_1294_SLD_Lefty_MT;
	nr		= 1;
	condition	= Info_Mod_Lefty_EXIT_Condition;
	information	= Info_Mod_Lefty_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Lefty_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Lefty_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
