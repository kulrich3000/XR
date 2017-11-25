INSTANCE Info_Mod_Serpentes_Hi (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Hi_Condition;
	information	= Info_Mod_Serpentes_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Serpentes_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serpentes_Hi_Info()
{
	B_Say (hero, self, "$WHOAREYOU");
	AI_Output(self, hero, "Info_Mod_Serpentes_Hi_10_01"); //Ja jestem serpentesem, drugim co do wielkosci magikiem ognia na Khorinisie. Czego od mnie oczekujesz?
};

INSTANCE Info_Mod_Serpentes_Weindiebe (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Weindiebe_Condition;
	information	= Info_Mod_Serpentes_Weindiebe_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serpentes_Weindiebe_Condition()
{
	if (Wld_GetDay() > Mod_FMAufnahme_Day)
	&& (hero.guild == GIL_VLK)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Weindiebe_Info()
{
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_00"); //Nie tak szybko, Novice. Mam za Pania prosbe.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_02"); //Jak zapewne wiecie, nasz klasztor dobrze zarabia na zycie sprzedajac wino wsród innych zródel dochodu.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_03"); //Wiem to lepiej niz ktokolwiek inny, poniewaz zajmuje sie finansami klasztoru i obserwuje dochody i wydatki.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_04"); //Niestety z przykroscia stwierdzam, ze w ostatnim czasie mielismy do czynienia z nieproporcjonalnie duza rozbieznoscia miedzy wycofywanym winem a dochodami ze sprzedazy zlota.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_05"); //Karczmarz Orlan kilkakrotnie skarzyl sie na brak dostaw naszego wina.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_06"); //Co mówi Gorax?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_07"); //Gorax? Jest starym pijakiem, który lubi wino duzo bardziej niz dla niego dobre.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_08"); //Mimo ze nalegal na to, aby uzywac tylko najbardziej niezawodnych nowicjuszy do porodów, wypil tyle, az do poludnia, ze nie mógl powiedziec nowicjuszom czarodziejom.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_09"); //Z drugiej strony, moje ostre spojrzenie powiedzialo mi, ze kilku nowicjuszy opuscilo klasztor przez wejscie, które wczesniej nie dotarlo do niego... i którego nigdy wczesniej nie widzialem.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_10"); //Co to oznacza i kto moze byc?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_11"); //Teraz, gdy nasza magiczna brama moze byc punktem wejscia dla wrogów, ale to nie przeszkadza im wyjsc, posadzam uczniów ciemnego Boga.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_12"); //Nie zdziwilbym sie, gdyby ci demoniczni magicy byli wystarczajaco zuchwali, aby wyslac swoich nowicjuszy do nas, którzy kradna wino.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_13"); //Ale wystarczy przypuszczenie: chce pewnosci!
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_14"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_15"); //Niedawno jeden z tych falszywych innowatorów opuscil klasztor.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_16"); //Jesli sie spieszysz, mozesz umiescic go na drodze miedzy klasztorem a tawerna.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe_10_17"); //No cóz, wiesz co robic.
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe_15_18"); //Bede w drodze od razu.

	Log_CreateTopic	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SERPENTES_WEINDIEBE, "Serpentes narzekal na powtarzajace sie zaniki dostaw wina. Podejrzewa nowicjuszy demonicznych magów. Jeden z tych falszywych innowatorów wlasnie opuscil klasztor i mam pójsc za nim.");

	Wld_InsertNpc	(Mod_7761_SNOV_Novize_NW, "TAVERNE");
};

INSTANCE Info_Mod_Serpentes_Weindiebe2 (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Weindiebe2_Condition;
	information	= Info_Mod_Serpentes_Weindiebe2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Serpentes_Weindiebe2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_SchwarzerNovize_Weindieb_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Weindiebe2_Info()
{
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_00"); //A? Mówcie! Co masz do powiedzenia na temat zlodziei wina?
	AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_01"); //Miales racje, byles nowicjuszem czarnych magów.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_02"); //Ha, znalem to. Mój entuzjastyczny umysl nie oszukal mnie.
	AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_03"); //Czy postawiles winowajce przed sadem?

	if (Npc_IsDead(Mod_7761_SNOV_Novize_NW))
	{
		AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_04"); //Ciezko bedzie mu bylo wykrasc kogokolwiek. Dopilnowalem sie tego.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_05"); //Doskonaly.... Jestem bardzo zadowolony z Ciebie, Novice. To nauczy czarnych magów lekcji.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_06"); //Watpie, czy jakikolwiek brak Mrocznego Boga odwazy sie wejsc do naszego klasztoru.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_07"); //Niech plomienie Inna spala kazdego, kto stoi na naszej drodze.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_08"); //Tutaj zarobiles to zloto i zaklecie rolkami!

		CreateInvItems	(hero, ItMi_Gold, 400);
		CreateInvItems	(hero, ItSc_Firestorm, 4);

		B_ShowGivenThings	("400 szt. zlota i 4 kolowrotków burzy pozarowej zakonserwowanych");

		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_09"); //Idzcie z blogoslawienstwem Inno.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Serpentes_Weindiebe2_15_10"); //Wyjasnilam mu, ze on i jego wspólbracia nie powinni juz nigdy wiecej wracac.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_11"); //Co dales mu na ucieczke?
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_12"); //Wolalbym, gdybyscie go oczyscili z plomienia Innosa na smierc.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_13"); //Chce jednak tym razem spojrzec panstwu w oczy.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_14"); //W koncu upewniliscie sie, ze sludzy hanby juz nie beda nas okradac.
		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_15"); //Tutaj wez zaklecia i zloto jako nagrode.

		CreateInvItems	(hero, ItMi_Gold, 250);
		CreateInvItems	(hero, ItSc_Firestorm, 2);

		B_ShowGivenThings	("250 zlote i 2 zaklecia zwój burza pozarowa zachowana");

		AI_Output(self, hero, "Info_Mod_Serpentes_Weindiebe2_10_16"); //Teraz zdejmij sie ponownie.
	};

	B_GivePlayerXP	(200);

	B_SetTopicStatus	(TOPIC_MOD_SERPENTES_WEINDIEBE, LOG_SUCCESS);

	B_RemoveNpc	(Mod_7761_SNOV_Novize_NW);
};

INSTANCE Info_Mod_Serpentes_Kimon (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Kimon_Condition;
	information	= Info_Mod_Serpentes_Kimon_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dealer Kimon mówi, ze placiles mu za zbyt malo za winogrona.";
};

FUNC INT Info_Mod_Serpentes_Kimon_Condition()
{
	if (Mod_Kimons_Traubenquest == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_Kimon_Info()
{
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_00"); //Dealer Kimon mówi, ze placiles mu za zbyt malo za winogrona.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_01"); //To wlasnie mówi? I jak malo myslisz, ze obchodzi mnie to, co on mówi?
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_02"); //Dalem mu tyle zlota, ile warte byly dla mnie winogrona.
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_03"); //Ale to nie wystarczylo.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_04"); //Pytasz slowo drugiego co do wielkosci maga strazaka Khorini?
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_05"); //Tak, to wlasnie robie.
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_06"); //Wyjmij z niego pieklo, zanim wyrzuce cie!
	AI_Output(hero, self, "Info_Mod_Serpentes_Kimon_15_07"); //Dopiero wtedy, gdy zaplacisz za te damskie winogrona!
	AI_Output(self, hero, "Info_Mod_Serpentes_Kimon_10_08"); //To wystarczy.

	B_LogEntry	(TOPIC_MOD_KIMONSTRAUBEN, "Serpentes nie zaplaci za reszte zlota. Albo musze spróbowac odebrac zloto Serpentesowi, albo sam musze za nie zaplacic. Moze Pyrokar moze mi tez pomoze.");

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "KLOSTER");
};

INSTANCE Info_Mod_Serpentes_KimonsGold (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_KimonsGold_Condition;
	information	= Info_Mod_Serpentes_KimonsGold_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czy da mi pan teraz zloto?";
};

FUNC INT Info_Mod_Serpentes_KimonsGold_Condition()
{
	if (Mod_Kimons_Traubenquest == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Serpentes_Kimon))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Pyrokar_KimonGeld))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Serpentes_KimonsGold_Info()
{
	AI_Output(hero, self, "Info_Mod_Serpentes_KimonsGold_15_00"); //Czy da mi pan teraz zloto?
	AI_Output(self, hero, "Info_Mod_Serpentes_KimonsGold_10_01"); //Powiedzialem ci, zebys wyszedl z tego miejsca!

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "KLOSTER");
};

INSTANCE Info_Mod_Serpentes_Pickpocket (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_Pickpocket_Condition;
	information	= Info_Mod_Serpentes_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_180;
};

FUNC INT Info_Mod_Serpentes_Pickpocket_Condition()
{
	C_Beklauen	(165, ItMi_Gold, 93);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

	Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_BACK, Info_Mod_Serpentes_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Serpentes_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Serpentes_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Serpentes_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Serpentes_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Serpentes_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Serpentes_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Serpentes_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Serpentes_EXIT (C_INFO)
{
	npc		= Mod_552_KDF_Serpentes_NW;
	nr		= 1;
	condition	= Info_Mod_Serpentes_EXIT_Condition;
	information	= Info_Mod_Serpentes_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Serpentes_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Serpentes_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
