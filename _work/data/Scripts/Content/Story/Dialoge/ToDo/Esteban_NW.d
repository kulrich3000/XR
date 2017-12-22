INSTANCE Info_Mod_Esteban_NW_Hi (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Hi_Condition;
	information	= Info_Mod_Esteban_NW_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Whistler wyslal mnie.";
};

FUNC INT Info_Mod_Esteban_NW_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_00"); //Whistler wyslal mnie do Ciebie. Powiedzial, ze pomóglbys nam poszerzyc wplywy obozu.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_01"); //Moglabym to prawdopodobnie naprawde zrobic. Nawet jesli w to nie wierzysz, jestesmy bandytami poteznymi.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_02"); //A co dokladnie mozesz dla nas zrobic?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_03"); //Jeden z naszych ludzi, Morgahard, jest obecnie na farmie wielkiego rolnika i ma dla nas oko na najemników.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_04"); //No cóz, nie chce wchodzic w to bardziej szczególowo, ale on ma kamien na desce z waznymi ludzmi.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_05"); //I jaka role w tym odgrywam?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_06"); //Cóz, ma troche problemów z poteznymi ludzmi w miescie khorynów.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_07"); //Zostal wrzucony do kolonii za przestepstwo, o które zostal oskarzony. Stal sie dla nich zbyt wplywowy.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_08"); //Od tego czasu nie byl w stanie stawic sie w miescie. Jesli jednak mozna znalezc dowód jego niewinnosci, mozemy Ci pomóc.
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Hi_15_09"); //Czy, gdzie powinienem wygladac?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Hi_07_10"); //Porozmawiaj z zastepca gubernatora Corneliusem.

	Log_CreateTopic	(TOPIC_MOD_AL_MORGAHARD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_AL_MORGAHARD, LOG_RUNNING);
	B_LogEntry_More	(TOPIC_MOD_AL_AUSBREITUNGK, TOPIC_MOD_AL_MORGAHARD, "Esteban powiedzial mi, ze powinnismy umozliwic Morgahardowi dotarcie do miasta, zanim on nam pomoze.", "Esteban chce, aby Morgahard wrócil do miasta. Porozmawiam z Corneliusem, zastepca gubernatora.");
};

INSTANCE Info_Mod_Esteban_NW_Gerbrandt (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Gerbrandt_Condition;
	information	= Info_Mod_Esteban_NW_Gerbrandt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dowiedzialem sie, ze Gerbrandt byl w to zaangazowany.";
};

FUNC INT Info_Mod_Esteban_NW_Gerbrandt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gerbrandt_Cornelius))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Gerbrandt_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Gerbrandt_15_00"); //Dowiedzialem sie, ze Gerbrandt byl w to zaangazowany. Nie moge mu jednak niczego udowodnic.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Gerbrandt_07_01"); //Powinienes porozmawiac z Diego o Gerbrandt, znanym mu od dawna.

	B_LogEntry	(TOPIC_MOD_AL_MORGAHARD, "Esteban powiedzial, ze Diego moze mi pomóc.");

	Mob_CreateItems	("WOODCHIP", ItWr_AL_GebrandtDokumente, 1);
};

INSTANCE Info_Mod_Esteban_NW_MorgahardDarfWieder (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_MorgahardDarfWieder_Condition;
	information	= Info_Mod_Esteban_NW_MorgahardDarfWieder_Info;
	permanent	= 0;
	important	= 0;
	description	= "Morgahard moze wrócic do miasta.";
};

FUNC INT Info_Mod_Esteban_NW_MorgahardDarfWieder_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Diego_GerbrandtGefangen))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_MorgahardDarfWieder_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_MorgahardDarfWieder_15_00"); //Morgahard moze wrócic do miasta.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_MorgahardDarfWieder_07_01"); //W prawo, wróce do Minentala, od teraz zwracam sie do Morgahardta.

	B_LogEntry_More	(TOPIC_MOD_AL_MORGAHARD, TOPIC_MOD_AL_AUSBREITUNGK, "Esteban powróci do Minentala. Teraz powinienem trzymac sie Morgaharda.", "Morgahard wraca do miasta i jest teraz moja osoba kontaktowa.");
	B_SetTopicStatus	(TOPIC_MOD_AL_MORGAHARD, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(2, 1);
};

INSTANCE Info_Mod_Esteban_NW_Kleidung (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Kleidung_Condition;
	information	= Info_Mod_Esteban_NW_Kleidung_Info;
	permanent	= 1;
	important	= 0;
	description	= "Dlaczego nosza Panstwo te ubrania?";
};

FUNC INT Info_Mod_Esteban_NW_Kleidung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Whistler_NW_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Kleidung_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Kleidung_15_00"); //Dlaczego nosza Panstwo te ubrania?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Kleidung_07_01"); //Meinst du, ich spaziere mit der Banditenkleidung in die Stadt, sage den Stadtwachen "dobry dzien" und bitte um eine Privataudienz bei Hagen?
};

INSTANCE Info_Mod_Esteban_NW_Castlemine (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Castlemine_Condition;
	information	= Info_Mod_Esteban_NW_Castlemine_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jak wiec wyglada sytuacja w Khorinis?";
};

FUNC INT Info_Mod_Esteban_NW_Castlemine_Condition()
{
	if (Mod_Banditen_Irdorath_NW == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Castlemine_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_00"); //Jak wiec wyglada sytuacja w Khorinis?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_01"); //Mialem nadzieje, ze bede mógl wrócic tutaj z podrózy.....
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_02"); //Co myslisz?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_03"); //Zalegle faktury. Zanim zostalem wrzucony do kolonii, mialem w poblizu kilka rezerwatów.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_04"); //Ale ze najemnicy teraz, jako patronowie chlopów, uniemozliwiaja mi ich uratowanie.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_05"); //Ale pewnego wieczoru wkradam sie do tego brudnego odosobnienia i walcze z nim......
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine_15_06"); //Czy jestes rolnikiem? Co on z tym robi?
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_07"); //No cóz, to on przechowuje moje rzeczy. Dalem mu bryle zlota, które zatrzymalem dla mnie.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_08"); //Ale teraz, gdy bylem z nim, aby odebrac rzeczy, tylko zagrozil wyslaniem najemników po mnie, jesli pozwole mu zobaczyc mnie ponownie.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_09"); //Kosztowalo mnie to duzo kontroli, aby nie rozbic czaszki juz teraz.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_10"); //Niestety, nie stac nas jednak na konflikt z najemnikami.

	AI_TurnAway	(self, hero);

	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine_07_11"); //Na pewno wszystko jest w zamknietej klatce piersiowej.

	AI_TurnToNpc	(self, hero);
};

INSTANCE Info_Mod_Esteban_NW_Castlemine2 (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Castlemine2_Condition;
	information	= Info_Mod_Esteban_NW_Castlemine2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem wasze rezerwy.";
};

FUNC INT Info_Mod_Esteban_NW_Castlemine2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Esteban_NW_Castlemine))
	&& (Npc_HasItems(hero, ItMi_EstebanPaket_01) == 1)
	&& (Npc_HasItems(hero, ItMi_EstebanPaket_02) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Esteban_NW_Castlemine2_Info()
{
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine2_15_00"); //Ich habe deine "zasoby".
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_01"); //Fakt! Jestem naprawde zdumiony. Mam nadzieje, ze wkrótce nie bedziemy musieli walczyc z wscieklymi najemnikami?
	AI_Output(hero, self, "Info_Mod_Esteban_NW_Castlemine2_15_02"); //Nie martw sie o to.
	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_03"); //Doskonaly! Wykonal pan naprawde dobra prace. Tutaj wez kapuste, rude i zloto, aby Ci podziekowac.

	B_ShowGivenThings	("300 Zloto, 10 rudy, 5 medrców czarnych i 4 krzyki smietankowe otrzymane");

	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Nugget, 10);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 5);
	CreateInvItems	(hero, ItMi_Traumruf, 4);

	AI_Output(self, hero, "Info_Mod_Esteban_NW_Castlemine2_07_04"); //Ach, powiniens równiez miec ten pierscien. To zawsze moze byc przydatne dla Ciebie, jesli chcesz ulatwic to komus, kto odrobine kladzie nacisk na ich kosztownosci. Zabawa z tym.

	B_GiveInvItems	(self, hero, ItRi_Verschlagenheit, 1);

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Esteban_NW_Pickpocket (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_Pickpocket_Condition;
	information	= Info_Mod_Esteban_NW_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Esteban_NW_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 29);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

	Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_BACK, Info_Mod_Esteban_NW_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Esteban_NW_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Esteban_NW_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Esteban_NW_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Esteban_NW_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Esteban_NW_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Esteban_NW_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Esteban_NW_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Esteban_NW_EXIT (C_INFO)
{
	npc		= Mod_1926_BDT_Esteban_NW;
	nr		= 1;
	condition	= Info_Mod_Esteban_NW_EXIT_Condition;
	information	= Info_Mod_Esteban_NW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Esteban_NW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Esteban_NW_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
