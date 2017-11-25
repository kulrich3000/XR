INSTANCE Info_Mod_Alex_Trunkenbold (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Trunkenbold_Condition;
	information	= Info_Mod_Alex_Trunkenbold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Trunkenbold_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatTrunkenbold_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Trunkenbold_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_00"); //To juz minelo!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_01"); //Odszedl, czyz nie?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_02"); //Nie, to AWAJ! Calkowicie WAY!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_03"); //I.... Kiedy wróci?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_04"); //Powiedzialbym, ze...... w ciagu okolo czterech miesiecy.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_05"); //Co?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_06"); //Tak, rodzaj hibernacji. Gdy tylko zaczyna sie czas wielkiego swietowania, budzi sie.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_07"); //Jak dlugo trwa jego zycie?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_08"); //Okolo osmiu miesiecy.
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_09"); //No cóz, nigdy nie przeszkadza. Potrzebuje alkoholu.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_10"); //Czego potrzebujesz?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_11"); //Cóz, alkohol, gorzala lub piwo albo cos. Kobieciarz powiedzial, ze dostaje ja od pijaka.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_12"); //Ach, masz na mysli pijaka!
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_13"); //Co?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_14"); //Pijac! To wlasnie to, co sie pijalo.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_15"); //Jak twoim zdaniem otrzymal imie?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_16"); //A jak ja dostac?
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_17"); //Dlaczego go nie pytasz?
	AI_Output(hero, self, "Info_Mod_Alex_Trunkenbold_15_18"); //Ale on juz go nie ma.
	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_19"); //Ktos inny? Wlasnie tutaj. Jestes -- --

	AI_TurnToNpc	(self, Mod_7272_HS_Trunkenbold_REL);

	AI_Output(self, hero, "Info_Mod_Alex_Trunkenbold_08_20"); //Pijany, czy dalbys panu pic?

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Alex_Magier (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Magier_Condition;
	information	= Info_Mod_Alex_Magier_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Magier_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatArsch_MagierTermin))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Magier_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_00"); //Ach, musisz byc nowa królewska dziewczyna na wszystko!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_01"); //Czy kilka dni temu nie byles królewskim grobowcem?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_02"); //Co oczywiscie sadzisz?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_03"); //...
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_04"); //Nie rób tak przygnebiajacej twarzy! Praca dla Ciebie! Idz do pustelnika królewskiego!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_06"); //Znalezienie tego bedzie twoim pierwszym królewskim zadaniem.
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_07"); //Co?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_08"); //Mój umysl nie pamieta, gdzie mieszka. Ale jestem pewien, ze widzialem go ostatnio!
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_09"); //Wystarczy isc do miejsc, w których ostatnio bylem!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_10"); //A gdzie byles ostatnio?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_11"); //Gdybym to wiedzial, nie potrzebowalbym twojej pomocy w znalezieniu go! Teraz idzcie!
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_12"); //I.... co mam z nim zrobic?
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_13"); //Z kim?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_14"); //W domu pustelnika.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_15"); //Masz wiesci o miejscu pobytu pustelnika?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_16"); //Nie.
	AI_Output(self, hero, "Info_Mod_Alex_Magier_08_17"); //Ah.... Czy móglbys go znalezc i poprosic go o zwykla porcje grzybów?
	AI_Output(hero, self, "Info_Mod_Alex_Magier_15_18"); //Wszystkie sluszne, wszystkie sluszne.

	Wld_InsertNpc	(Mod_7286_HS_Eremit_REL, "REL_247");

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Czarodziej nadworny, który jest dawnym grobowcem, chce, abym od pustelnika dostal od pustelnika zwykly zapas grzybów. Nie wie juz jednak, gdzie go znalezc. Mam przeszukiwac miejsca, w których czarodziej byl ostatnia.");
};

INSTANCE Info_Mod_Alex_GeheimnisFreudenspender (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_GeheimnisFreudenspender_Condition;
	information	= Info_Mod_Alex_GeheimnisFreudenspender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu pytanie dotyczace narkotyków.";
};

FUNC INT Info_Mod_Alex_GeheimnisFreudenspender_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_Magier))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_GeheimnisFreudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_GeheimnisFreudenspender_15_00"); //Mam tu pytanie dotyczace narkotyków.
	AI_Output(self, hero, "Info_Mod_Alex_GeheimnisFreudenspender_08_01"); //W kazdym razie! Nie znasz jeszcze tej tajemnicy!
};

INSTANCE Info_Mod_Alex_Pilzsporen (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pilzsporen_Condition;
	information	= Info_Mod_Alex_Pilzsporen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto Twoje ostrza!";
};

FUNC INT Info_Mod_Alex_Pilzsporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatEremit_Hi))
	&& (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Pilzsporen_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Pilzsporen_15_00"); //Oto Twoje ostrza!
	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_08_01"); //Znalazles pustelnika? Cudowny. Zabierz te ostrogi do sekretarza królewskiego narkotyków!

	B_Say	(hero, self, "$WOFINDEICHIHN");

	AI_Output(self, hero, "Info_Mod_Alex_Pilzsporen_08_03"); //Szukaj królewskiego mysliwego w poblizu obozu. On wskaze ci droge!

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Zarodniki maja byc zabrane do sekretarza narkotyków, których znajde z pomoca królewskiego mysliwego. Mysle, ze te zarodniki sa sekretem blyszczacych dozowników.");
};

INSTANCE Info_Mod_Alex_Transportsystem (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Transportsystem_Condition;
	information	= Info_Mod_Alex_Transportsystem_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam latwej drogi przez bagna.";
};

FUNC INT Info_Mod_Alex_Transportsystem_Condition()
{
	if (Mod_SL_Meer == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Transportsystem_Info()
{
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_00"); //Szukam latwej drogi przez bagna.
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_08_01"); //I przychodzisz do mnie?
	AI_Output(hero, self, "Info_Mod_Alex_Transportsystem_15_02"); //Pomyslalem, ze moze mozna by stworzyc teleportera lub pozwolic sobie na magiczna zabawe gdzie indziej....
	AI_Output(self, hero, "Info_Mod_Alex_Transportsystem_08_03"); //Oh, tak...... Moja magia. Wszystko dobrze, twoje zyczenie jest twoje! Spotkaj mnie u bram zamku za dwa dni!

	Mod_SL_Meer = 6;

	Mod_SL_AlexGraben = Wld_GetDay();

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Alex wykorzysta swoja magie do dbania o system transportowy. Za dwa dni mam go spotkac za brama.");
};

INSTANCE Info_Mod_Alex_TeleporterFertig (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_TeleporterFertig_Condition;
	information	= Info_Mod_Alex_TeleporterFertig_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_TeleporterFertig_Condition()
{
	if (Mod_SL_Meer == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_TeleporterFertig_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_TeleporterFertig_08_00"); //Ach, tam jestescie. Wystarczy przyjechac do mnie, przyjedzcie z mna!

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LOCH");
};

INSTANCE Info_Mod_Alex_AtLoch (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_AtLoch_Condition;
	information	= Info_Mod_Alex_AtLoch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_AtLoch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Alex_TeleporterFertig))
	&& (Npc_GetDistToWP(self, "REL_236") < 400)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_AtLoch_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_00"); //Tutaj mój system transportowy.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_01"); //A... Otwór?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_02"); //W pewnym sensie.... Tak, ale to równiez teleporter.
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_03"); //Tutaj wchodzisz, opadasz i wychodzisz z bagna. Czyz nie jest to tak wielkie?
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_04"); //W ciagu dwóch dni wykopales dziure do bagna?
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_05"); //Tak.
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_06"); //Mialem cos z czyms wiecej..... Czary czeka na....
	AI_Output(self, hero, "Info_Mod_Alex_AtLoch_08_07"); //.... Tak wiec.... Mam na mysli......
	AI_Output(hero, self, "Info_Mod_Alex_AtLoch_15_08"); //Dobrze, to bedzie sluzylo jego celowi.... Mam nadzieje.

	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Otwór? Cóz, w kazdym razie problem transportu jest prawdopodobnie rozwiazany. Powinienem to pokazac królowi.");

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "MAGIER");

	Wld_SendTrigger	("EVT_LEVELCHANGETOSUMPF");
};

INSTANCE Info_Mod_Alex_Lochgraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Lochgraben_Condition;
	information	= Info_Mod_Alex_Lochgraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_Lochgraben_Condition()
{
	if (Mod_SL_Schwaechen == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_Lochgraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_00"); //Oh, powitanie. Cóz, czy jestem pod wrazeniem mojej dziury?
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_01"); //Oczywiscie tak jest. Z pewnoscia nie ma nic i nikt nie moze z Toba konkurowac w kopaniu dziur!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_02"); //Hej, dostales to prawo. Jestem zajety jako kopaczka.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_03"); //Nie ma nikogo i nic, co wykopuje sie szybciej niz ja.... z wyjatkiem
	AI_Output(hero, self, "Info_Mod_Alex_Lochgraben_15_04"); //Poza czym?
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_05"); //Z wyjatkiem gasienic. Gasienice sa niesamowite jesli chodzi o kopanie.
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_06"); //Taki gasienica moglaby tam wykopac dziure, w ziemi po drugiej stronie góry Fluffy' ego, w nocy, która bylaby tak gleboka, ze nie widzielibysmy ziemi!
	AI_Output(self, hero, "Info_Mod_Alex_Lochgraben_08_07"); //Ale na szczescie nie ma tu gasienic.... Tylko ja.

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "Minekrawlery sa lepszymi kopaczami niz groby. Gdy wezwalem go, mógl wykopac glebsza dziure niz dzbanek i uderzyc.");

	Wld_InsertItem	(ItSc_SumCrawler, "FP_ITEM_CRAWLERSCROLL");
};

INSTANCE Info_Mod_Alex_LochGegraben (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_LochGegraben_Condition;
	information	= Info_Mod_Alex_LochGegraben_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Alex_LochGegraben_Condition()
{
	if (Mod_SL_PartLochgraeber == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Alex_LochGegraben_Info()
{
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_00"); //Ach, dobry poranek. Chcesz ponownie podziwiac moje sztuki pogrzebowe, czyz nie?
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_01"); //Mysle, ze chcesz samemu wykopac dziure. Ach, jest juz jeden.
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_02"); //Pozwole sobie przyjrzec sie temu. Wykopales lyzka, czy nie?

	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_03"); //Otwór jest ledwie pusty..... tylko..... gram.... po prostu maal..... TO JEST NAJGLEBSZA DZIURA, JAKA KIEDYKOLWIEK WIDZIALEM!
	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_04"); //Jak to zrobiles, zielonoswiadczylas zieleni? Musi to byc sztuczka.

	AI_GotoWP	(self, "REL_HS_008");
	AI_GotoWP	(self, "REL_HS_007");

	AI_Output(self, hero, "Info_Mod_Alex_LochGegraben_08_05"); //.... .... Aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh.....

	B_LogEntry	(TOPIC_MOD_SL_LOCHGRAEBER, "Dalem ja jednak kopaczce do dziury....");

	Mod_SL_PartLochgraeber = 2;

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Alex_Pickpocket (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_Pickpocket_Condition;
	information	= Info_Mod_Alex_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Alex_Pickpocket_Condition()
{
	C_Beklauen	(99, ItMi_Freudenspender, 3);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_BACK, Info_Mod_Alex_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Alex_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Alex_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
};

FUNC VOID Info_Mod_Alex_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Alex_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Alex_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Alex_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Alex_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Alex_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Alex_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Alex_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Alex_EXIT (C_INFO)
{
	npc		= Mod_7011_HS_Alex_REL;
	nr		= 1;
	condition	= Info_Mod_Alex_EXIT_Condition;
	information	= Info_Mod_Alex_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Alex_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Alex_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
