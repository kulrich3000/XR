INSTANCE Info_Mod_Greg_DI_Hi (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Hi_Condition;
	information	= Info_Mod_Greg_DI_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_DI_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_00"); //Nie sadzilem, ze w ogóle sie nie obudzisz. Mysle, ze zeszlej nocy bylo to troche za duzo.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_01"); //Teraz pracujesz dla swojego grogu.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Hi_15_02"); //Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_03"); //Cóz, jestesmy tutaj na polowaniu na skarb, wiec znajdz ten skarb. Idz do jaskin i rozejrzyj sie dookola.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_04"); //Najpierw dostaniesz nowy pancerz.

	CreateInvItems	(self, ITAR_PIR_M_Addon, 1);
	B_GiveInvItems	(self, hero, ITAR_PIR_M_Addon, 1);

	AI_Output(self, hero, "Info_Mod_Greg_DI_Hi_01_07"); //Idzmy!
	AI_Output(hero, self, "Info_Mod_Greg_DI_Hi_15_06"); //Oko, kapitan!

	Log_CreateTopic	(TOPIC_MOD_PIRATEN_DI,	LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_DI, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Greg zatrudnil mnie do przeszukiwania jaskin pod katem skarbów.");
};

INSTANCE Info_Mod_Greg_DI_Skelett (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Skelett_Condition;
	information	= Info_Mod_Greg_DI_Skelett_Info;
	permanent	= 0;
	important	= 0;
	description	= "Istnieja trudnosci.";
};

FUNC INT Info_Mod_Greg_DI_Skelett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Hi))
	&& (Mod_HatSkeletonBook_Gelesen == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_SKelett_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_00"); //Istnieja trudnosci.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_01"); //Blad? Jakiego rodzaju klopoty?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_02"); //W jednej z jaskin zaatakowal mnie martwy pirat.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_03"); //Piles zbyt duzo rumu? Jak martwy pirat zamierza cie zaatakowac?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_04"); //Mial z nim te ksiazke. Mówi sie, ze oni zlamali przysiege na Adanosie, przysiagli wiernie swojemu kapitanowi.

	B_GiveInvItems	(hero, self, ItWr_BookFromSkeleton, 1);

	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_05"); //W rezultacie zostali przekleci, aby na zawsze strzegli skarbów tej wyspy.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_06"); //Pirackie duchy? Cóz, to przygoda!

	B_UseItem	(self, ItWr_BookFromSkeleton);

	AI_Output(self, hero, "Info_Mod_Greg_DI_SKelett_01_07"); //Zgodnie z tym, co jest zapisane w dzienniku polowowym, skarb musi byc ogromny!
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_08"); //Podejme pewne ustalenia. O ile mi wiadomo, przyjaciel nowicjusza Bonne' a byl magikiem wody.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_09"); //Wyslem Skipowi, zeby go zdobyl, on bedzie lepiej mógl nam pomóc.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Skelett_15_10"); //A co powinienem zrobic tak dlugo?
	AI_Output(self, hero, "Info_Mod_Greg_DI_Skelett_01_11"); //Cóz, zlapales Alligatora Jacka i zwiedzasz wyspe razem z nim.

	Npc_ExchangeRoutine	(Mod_1540_PIR_Skip_DI, "UNTERWEGS");
	AI_Teleport	(Mod_1540_PIR_Skip_DI, "WP_DI_SKIP_WAITFORPLAYER");

	Mod_DI_InselErkunden = 1;

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Powiedzialem Gregowi o szkielecie. Nie wydaje sie on wcale sie martwic, ale uwaza to za wielka przygode. Przeslil Suknie dla maga wodnego. Dopóki Skip sie nie wróci, powinienem odkrywac wyspe z Alligator Jack.");

	Wld_InsertNpc	(Mod_7642_OUT_Brunhild_DI,	"WP_DI_BRUNHILD_02");
};

INSTANCE Info_Mod_Greg_DI_Brunhild (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Brunhild_Condition;
	information	= Info_Mod_Greg_DI_Brunhild_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Brunhild_Condition()
{
	if (Mod_DI_InselErkunden == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Brunhild_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_00"); //No cóz, dobrze. Co przywiezliscie?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_01"); //Nie jest to zloto i srebro. Moze jednak okazac sie skarbem w kuchni.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_02"); //I jak.....?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_03"); //Odpada. Napisala wiadomosc w butelce. Twój naród umarl. Zapytala, czy moze jezdzic z nami.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_04"); //Czy wie, gdzie ukrywa sie skarb? A moze znalazles go jeszcze?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_05"); //Nie. Widzielismy jednak pewne zablokowane korytarze. Jeden z nich powinien byc odsloniety. Wyglada na rozlane.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Brunhild_15_06"); //Pozostale sa zamkniete solidna skala.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_07"); //No wiec. Wyslam dwóch mezczyzn na korytarz.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Brunhild_01_08"); //Rozmawiasz z Skipa. Powiedz mu, aby zabral pokojówke na statek. Zastepuje Samuela w kuchni.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Podczas gdy Brunhild przywiózl Brunhilda z Skipu na statek, Greg chce wyslac dwóch swoich chlopców do odkrycia tunelu.");

	B_StartOtherRoutine	(Mod_1546_PIR_Francis_DI, "STOLLEN");
	B_StartOtherRoutine	(Mod_1549_PIR_Malcom_DI, "STOLLEN");
};

INSTANCE Info_Mod_Greg_DI_StollenFrei (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_StollenFrei_Condition;
	information	= Info_Mod_Greg_DI_StollenFrei_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jaki jest nastepny krok?";
};

FUNC INT Info_Mod_Greg_DI_StollenFrei_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skip_DI_Brunhild))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_StollenFrei_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_StollenFrei_15_01"); //Jaki jest nastepny krok?
	AI_Output(self, hero, "Info_Mod_Greg_DI_StollenFrei_01_02"); //Malcom powraca i mówi, ze korytarz jest jasny. Franciszek jest jeszcze na miejscu.
	AI_Output(hero, self, "Info_Mod_Greg_DI_StollenFrei_15_03"); //A teraz mam....?
	AI_Output(self, hero, "Info_Mod_Greg_DI_StollenFrei_01_04"); //To prawda, chlopak. Jestes wsród nich najbardziej niezawodny. Spute sam siebie!

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Korytarz jest wolny i powinienem zobaczyc, czy moge znalezc skarb.");

	Wld_SendTrigger	("EVT_STOLLEN_01");

	B_StartOtherRoutine	(Mod_1549_PIR_Malcom_DI, "START");
};

INSTANCE Info_Mod_Greg_DI_Amulett (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Amulett_Condition;
	information	= Info_Mod_Greg_DI_Amulett_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Amulett_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Francis_DI_Amulett))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Amulett_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Amulett_01_00"); //Wracasz? Sprawozdania skarbu panstwa.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Amulett_15_01"); //Nic z skarbem. Znalazlem to aluminium i kielichy, kielichy rudy i tak dalej w tunelu. Nic wiecej.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Amulett_01_02"); //Hmm. Nastepnie nalezy pozostawic zablokowane korytarze. Ale jak.....?
	AI_Output(hero, self, "Info_Mod_Greg_DI_Amulett_15_03"); //Pomysle o czyms.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Musimy znalezc sposób na otwarcie zamknietych korytarzy.");
};

INSTANCE Info_Mod_Greg_DI_Los (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Los_Condition;
	information	= Info_Mod_Greg_DI_Los_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Los_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Los))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Los_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Los_01_00"); //Czekaj, chlopiec, ja tez przychodze. Nie chce tego przegapic.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "SKELETT");

	self.aivar[AIV_PARTYMEMBER] = TRUE;
};

INSTANCE Info_Mod_Greg_DI_Ende (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Ende_Condition;
	information	= Info_Mod_Greg_DI_Ende_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Greg_DI_Ende_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Jones_Ende))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Ende_Info()
{
	AI_Output(self, hero, "Info_Mod_Greg_DI_Ende_01_00"); //Wspanialy! Teraz mozemy wreszcie podniesc skarb. Warto przyjrzec sie blizej fragmentowi, o którym wlasnie wspomnial Jones przed wyjazdem.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Ende_01_01"); //Wróce na plaze i przygotuje wyjazd, pójdziesz do jaskin i zdobede skarby.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Greg zatrudnil mnie do odzyskania skarbów z jaskin.");

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(100);

	Npc_ExchangeRoutine	(self, "START");

	Adanos_Gefallen += 1;

	B_Göttergefallen(2, 1);

	self.aivar[AIV_PARTYMEMBER] = FALSE;
};

INSTANCE Info_Mod_Greg_DI_Alles (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_Alles_Condition;
	information	= Info_Mod_Greg_DI_Alles_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem prawdziwy skarb wyspy.";
};

FUNC INT Info_Mod_Greg_DI_Alles_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Greg_DI_Ende))
	&& (Mod_PirInsel_Teleport == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Greg_DI_Alles_Info()
{
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_00"); //Znalazlem prawdziwy skarb wyspy.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_01"); //Przez sciane dostalem sie do wielkiej jaskini i w ogromnej hali wszystko bylo pelne zlota.
	AI_Output(hero, self, "Info_Mod_Greg_DI_Alles_15_02"); //Powinienes wyslac jeszcze kilku takich facetów, aby zdobyc zloto.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_03"); //No cóz, min mlody, do zobacze!
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_04"); //W miedzyczasie przygotuje sie do wyjazdu. Po powrocie bedziemy dzielic lup w obozie.
	AI_Output(self, hero, "Info_Mod_Greg_DI_Alles_01_05"); //Porozmawiaj z Skipem, gdy juz wszystko zrobiles tutaj. On jest gonna, zabiera nas na statek, a potem jestesmy gonna.

	B_LogEntry	(TOPIC_MOD_PIRATEN_DI, "Powiedzialem Gregowi o jaskini, a on jest gonna wyslac czesc chlopców. Przygotowuje sie do odejscia. Kiedy bede gotowy, powinienem porozmawiac z Skipem, a my wszyscy bedziemy przeniesieni na statek.");
	B_SetTopicStatus	(TOPIC_MOD_PIRATEN_DI, LOG_SUCCESS);

	B_Göttergefallen(2, 2);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Greg_DI_EXIT (C_INFO)
{
	npc		= Mod_1541_PIR_Greg_DI;
	nr		= 1;
	condition	= Info_Mod_Greg_DI_EXIT_Condition;
	information	= Info_Mod_Greg_DI_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Greg_DI_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Greg_DI_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
