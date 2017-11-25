INSTANCE Info_Mod_Skinner_Hi (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Hi_Condition;
	information	= Info_Mod_Skinner_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj....";
};

FUNC INT Info_Mod_Skinner_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_00"); //Witaj....
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_01"); //Dlaczego mnie budzisz? Czy nie widzisz, ze odpoczywam teraz?
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_02"); //l--
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_03"); //Ale czekaj, jestes nowym facetem. Teraz, gdy jestes tutaj, moge ci wiele zrobic.
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_04"); //Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_05"); //Nie byles zbyt dlugo, a chcesz szybko wejsc na obóz i zyskac reputacje. Moge panu w tym pomóc.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_06"); //Wszystko co musisz zrobic, to przyniesc kilka rzeczy moim partnerom biznesowym, zaplacic im i przyniesc mi zloto i inne rzeczy, które od nich otrzymujesz.
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_15_07"); //Co to dla mnie jest?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_08"); //Co? Czy nie jest to wystarczajaco nagroda, aby mi powiedziec.... moze pomóc obozowi?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_09"); //Ale poczekaj, pomyslim o czyms. Mam potezny magiczny pierscien, który w duzym stopniu wplynie na Twoja sile.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_24_10"); //Uzyskasz to oprócz calej chwaly. Co mówisz?

	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	Info_AddChoice	(Info_Mod_Skinner_Hi, "Nie gram twojego chlopca, który sie rozmyslal.", Info_Mod_Skinner_Hi_B);
	Info_AddChoice	(Info_Mod_Skinner_Hi, "Zrobie to.", Info_Mod_Skinner_Hi_A);
};

FUNC VOID Info_Mod_Skinner_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_B_15_00"); //Nie gram twojego chlopca, który sie rozmyslal.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_B_24_01"); //Nie róbmy wiec tego. Teraz sie rozejrzyj!
	
	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Skinner_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Hi_A_15_00"); //Zrobie to.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_01"); //No cóz, wiesz, jaka jest dobra oferta.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_02"); //No cóz, mam te ambrozje bagnista. Wzialem go od szalenca, który nazwal siebie Baalem Netbkiem, ale to nie ma znaczenia.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_03"); //Przyniesz to moim klientom.

	CreateInvItems	(hero, ItMi_Traumruf, 10);
	CreateInvItems	(hero, ItMi_Addon_Joint_01, 7);
	CreateInvItems	(hero, ItMi_Addon_Joint_02, 12);

	B_ShowGivenThings ("zakonserwowane lodygi roslin bagiennych");

	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_04"); //Wojownicy demonów maja Edwarda. Palenie pali mnóstwo wymarzonych rozmów. Powinienes miec mozliwosc odebrania 4 lub 8 osób. 80 zloto jest nalezne za kazde wezwanie wymarzone.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_05"); //Jest Andokai z magikami demonów. On pali rzeczy, mówi, aby byc blizej swego mistrza w transie.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_06"); //W kazdym razie wezmie od Ciebie kilka wymarzonych rozmów i na pewno zrobi czarne rzeczy. Do kazdego czarnego mezczyzny przypadnie 40 sztuk zlota, a dla kazdego zielonego nowicjusza 20.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_07"); //A tak przy okazji, mój przyjaciel Edgor's dostal dla mnie cos innego. Uwazam, ze nalezy ja zrekompensowac trzema zielonymi nowicjuszami.
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_08"); //Reszta zostanie sprzedana w dolnej czesci miasta. Zawsze jest tam nabywca. Kazdy ma racje?
	AI_Output(self, hero, "Info_Mod_Skinner_Hi_A_24_09"); //Oczekuje od Ciebie co najmniej 1200 zlota. Mozesz zatrzymac reszte i ode mnie dostac obiecana nagrode.
	
	Mod_SkinnerQuest = 1;

	Info_ClearChoices	(Info_Mod_Skinner_Hi);

	B_StartOtherRoutine	(self, "WANTTOTELLMORE");
};

INSTANCE Info_Mod_Skinner_Laufbursche (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Laufbursche_Condition;
	information	= Info_Mod_Skinner_Laufbursche_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Laufbursche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Hi))
	&& (Mod_SkinnerQuest == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Laufbursche_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_00"); //Och, prawie zapomnialem. Mam cos milego do przejecia Myxiru. W tej chwili eksperymentuje z nowymi zakleciami przywolujacymi.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_01"); //Najpierw kilka kosci szkieletowych.....

	B_GiveInvItems	(self, hero, ItAt_SkeletonBone, 20);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_02"); //Aha....
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_03"); //... kilka kosci goblinka.....

	B_GiveInvItems	(self, hero, ItAt_GoblinBone, 14);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_04"); //sympatyczny
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_05"); //... czaszka

	B_GiveInvItems	(self, hero, ItAt_SkeletonHead, 4);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_06"); //Co jeszcze, co jeszcze mozna zrobic?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_07"); //... dwie glowice.....

	B_GiveInvItems	(self, hero, ItMi_Addon_Bloodwyn_Kopf, 2);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_08"); //Jak milo....
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_09"); //Oh, a tu jest reszta.

	CreateInvItems	(hero, ItPo_Blood, 17);
	CreateInvItems	(hero, ItFoMuttonZombie, 12);
	CreateInvItems	(hero, ItAt_DemonHeart, 1);

	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche_15_10"); //Jak.....?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_11"); //Nie pytaj, nie chcesz wiedziec.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_12"); //W zamian otrzymasz od niego po jednej roli zaklecia dla Wolfa, Golema i Demona.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_13"); //Dostaje za to dobra cene od magów transformacji, którzy sa zainteresowani stopniem, w jakim ich magia transformacji przypomina nieswiete zaklecia zaklecia dla zwierzat.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_14"); //Drobny z mna, o ile maja wystarczajaco duzo zlota. O tak, poniewaz jestesmy juz w trakcie procesu: mozecie panstwo to zrobic równiez.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_15"); //Koszt kosztuje chlopców 800 zlota i króliczek konwersji.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_16"); //Prowadzisz interesy z Albertem, do którego mozna sie dostac na zewnatrz, po lewej stronie od wejscia do zniszczonego klasztoru za pomoca upadlego pnia drzewa.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche_24_17"); //Teraz ruszaj w droge. Powoli zaczyna pachniec.

	Log_CreateTopic	(TOPIC_MOD_BDT_SKINNER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_SKINNER, "Wszystko w porzadku, mam troche pracy na nogach. Eduard dostaje wymarzone wezwania do 80 zlota na kawalek, Edgor dostaje trzech zielonych nowicjuszy jako prezent, Andokai otrzymuje wezwania do marzen za 80 medrców zlota i czerni za 40 zlota. Reszta pieniedzy zostanie utracona w miescie i oczekuje sie 20 zlota dla zielonych nowicjuszy. Potem musze dostarczyc kilka demonicznych i nieumarlych stworzen, Myxir, i powinienem dostac trzy przywolujace role. Zostana one nastepnie odeslane z powrotem do Doliny Minentalnej do magów transformacji, gdzie otrzymam 800 zlota i konwersyjna role Hase' a od Alberta, którego znajde poza klasztorem po lewej stronie wejscia. Skinner oczekuje od mnie w sumie 2000 zlota i roli zajac. Ale obiecal mi magiczny pierscien, który ma 'znaczaco wplynac' na sile uzytkownika. Mam nadzieje, ze to jedno z nich jest warte wysilku.");

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Skinner_Laufbursche2 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Laufbursche2_Condition;
	information	= Info_Mod_Skinner_Laufbursche2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tu znów jestem.";
};

FUNC INT Info_Mod_Skinner_Laufbursche2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Laufbursche))
	&& ((Mod_SkinnerQuest == 1)
	|| (Mod_SkinnerQuest == 2))
	&& (Npc_KnowsInfo(hero, Info_Mod_Eduard_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Andokai_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Myxir_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Edgor_Skinner))
	&& (Npc_KnowsInfo(hero, Info_Mod_Albert_Skinner))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	&& (Npc_HasItems(hero, ItSc_TrfRabbit) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_15_00"); //Tutaj wyrzucilem wszystko, co mi dales i wszystko, czego chciales.
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_24_01"); //Dobrze, daj mi to.
	
	Mod_SkinnerQuest = 2;

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "Mysle, ze zatrzymam zloto i kolowrotki.", Info_Mod_Skinner_Laufbursche2_C);
	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "A co z pierscieniem?", Info_Mod_Skinner_Laufbursche2_B);
	Info_AddChoice	(Info_Mod_Skinner_Laufbursche2, "Oto zloto i czesc transformacyjna.", Info_Mod_Skinner_Laufbursche2_A);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_C()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_C_15_00"); //Mysle, ze zatrzymam zloto i kolowrotki.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	AI_StopProcessInfos	(self);

	B_Attack	(self, hero, AR_None, 0);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_FAILED);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_B()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_B_15_00"); //A co z pierscieniem?
	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_01"); //Tak, oto jest pierscien, a ja to zabiore.

	CreateInvItems	(hero, ItRi_SkinnersRing, 1);

	Npc_RemoveInvItems	(hero, ItSc_TrfRabbit, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2000);

	B_ShowGivenThings	("Utrzymywac odporny na dzialanie czynników atmosferycznych pierscien i dawac czar i zloto.");

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_02"); //Czy obiecywalem zbyt wiele? (smiech zwawo) Ale jestem pewien, ze twoja sprawa byla dla ciebie wystarczajaca.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_SUCCESS);

	B_Göttergefallen(3, 1);
};

FUNC VOID Info_Mod_Skinner_Laufbursche2_A()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Laufbursche2_A_15_00"); //Oto zloto i czesc transformacyjna.

	Npc_RemoveInvItems	(hero, ItSc_TrfRabbit, 1);
	Npc_RemoveInvItems	(hero, ItMi_Gold, 2000);

	B_ShowGivenThings	("Rola zaklecia i zlota jest okreslona");	

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_A_24_01"); //Bardzo dobrze, oto pierscien.

	B_GiveInvItems	(self, hero, ItRi_SkinnersRing, 1);

	AI_Output(self, hero, "Info_Mod_Skinner_Laufbursche2_B_24_02"); //Czy obiecywalem zbyt wiele? (smiech zwawo) Ale jestem pewien, ze twoja sprawa byla dla ciebie wystarczajaca.

	Info_ClearChoices	(Info_Mod_Skinner_Laufbursche2);

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_BDT_SKINNER, LOG_SUCCESS);
};

INSTANCE Info_Mod_Skinner_Orkjagd (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd_Condition;
	information	= Info_Mod_Skinner_Orkjagd_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jest jeszcze wiele do zrobienia. Przyjdz do obozu dzis wieczorem o pólnocy.";
};

FUNC INT Info_Mod_Skinner_Orkjagd_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_OrkQuest))
	&& (Mod_Orks_Morgahard == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd_15_00"); //Jest jeszcze wiele do zrobienia. Przyjdz do obozu dzis wieczorem o pólnocy. Robimy polowania na orki.
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd_24_01"); //Ale nie chce polowac na orki. Poza tym mam jeszcze inne rzeczy do zrobienia.

	AI_StopProcessInfos	(self);

	CreateInvItems	(self, ItFo_Booze, 1);
	B_UseItem	(self, ItFo_Booze);
};

INSTANCE Info_Mod_Skinner_Orkjagd2 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd2_Condition;
	information	= Info_Mod_Skinner_Orkjagd2_Info;
	permanent	= 0;
	important	= 0;
	description	= "To nie byla prosba, to byl rozkaz Morgaharda.";
};

FUNC INT Info_Mod_Skinner_Orkjagd2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd))
	&& (Mod_Orks_Morgahard == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd2_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd2_15_00"); //To nie byla prosba, to byl rozkaz Morgaharda.
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd2_24_01"); //Ach, dla mnie.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Skinner_Orkjagd3 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd3_Condition;
	information	= Info_Mod_Skinner_Orkjagd3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Skinner, wstac, wstac, wejsc, teraz!";
};

FUNC INT Info_Mod_Skinner_Orkjagd3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd2))
	&& (Mod_Orks_Morgahard == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd3_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Orkjagd3_15_00"); //Skinner, wstac, wstac, wejsc, teraz!
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd3_24_01"); //Bah, przychodze.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LAGER");
};

INSTANCE Info_Mod_Skinner_Orkjagd4 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd4_Condition;
	information	= Info_Mod_Skinner_Orkjagd4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_GetDistToWP(self, "OW_PATH_188") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd4_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd4_24_00"); //No cóz, rozpocznijmy. Mam lepsze rzeczy do zrobienia.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ORKJAGD");
	self.aivar[AIV_Partymember] = TRUE;

	if (Npc_GetDistToWP(Mod_4072_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "HOEHLE");
		Mod_4072_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4073_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "HOEHLE");
		Mod_4073_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4074_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "HOEHLE");
		Mod_4074_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
	if (Npc_GetDistToWP(Mod_4075_BDT_Bandit_MT, "OW_PATH_188") < 500)
	{
		B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "HOEHLE");
		Mod_4075_BDT_Bandit_MT.aivar[AIV_Partymember] = TRUE;
	};
};

INSTANCE Info_Mod_Skinner_Orkjagd5 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd5_Condition;
	information	= Info_Mod_Skinner_Orkjagd5_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_GetDistToWP(self, "OW_PATH_188") < 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd5_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd5_24_00"); //Teraz trzymaj go w miejscu.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Skinner_Orkjagd6 (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Orkjagd6_Condition;
	information	= Info_Mod_Skinner_Orkjagd6_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Skinner_Orkjagd6_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Orkjagd3))
	&& (Npc_IsDead(OrkWarrior_BDTPatroullie))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_01))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_02))
	&& (Npc_IsDead(OrkScout_BDTPatroullie_03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Orkjagd6_Info()
{
	AI_Output(self, hero, "Info_Mod_Skinner_Orkjagd6_24_00"); //Wracam wiec, to byl stres na dzisiaj.

	AI_StopProcessInfos	(self);

	Mod_Orks_Morgahard = 4;

	B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Nasz atak zakonczyl sie sukcesem i orki sa w prochu. Teraz musze tylko powiedziec Morgahardowi o sukcesie.");

	B_StartOtherRoutine	(self, "START");
	self.aivar[AIV_Partymember] = FALSE;

	B_StartOtherRoutine	(Mod_4072_BDT_Bandit_MT, "START");
	Mod_4072_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4073_BDT_Bandit_MT, "START");
	Mod_4073_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4074_BDT_Bandit_MT, "START");
	Mod_4074_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
	
	B_StartOtherRoutine	(Mod_4075_BDT_Bandit_MT, "START");
	Mod_4075_BDT_Bandit_MT.aivar[AIV_Partymember] = FALSE;
};

INSTANCE Info_Mod_Skinner_Lehrer (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Lehrer_Condition;
	information	= Info_Mod_Skinner_Lehrer_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy mozesz mnie czegos nauczyc?";
};

FUNC INT Info_Mod_Skinner_Lehrer_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Hi))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Lehrer_Info()
{
	B_Say	(hero, self, "$KANNSTDUMIRWASBEIBRINGEN");

	AI_Output(self, hero, "Info_Mod_Skinner_Lehrer_24_01"); //Potrafie nauczyc Cie, jak obchodzic sie z reka.

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Skinner moze nauczyc mnie, jak radzic sobie z ludzmi jednej reki.");
};

INSTANCE Info_Mod_Skinner_Lernen (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Lernen_Condition;
	information	= Info_Mod_Skinner_Lernen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce sie uczyc.";
};

FUNC INT Info_Mod_Skinner_Lernen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Skinner_Lehrer))
	&& (Mod_Schwierigkeit != 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Skinner_Lernen_Info()
{
	AI_Output(hero, self, "Info_Mod_Skinner_Lernen_15_00"); //Chce sie uczyc.

	Info_ClearChoices	(Info_Mod_Skinner_Lernen);

	Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
	Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
	Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
};

FUNC VOID Info_Mod_Skinner_Lernen_BACK()
{
	Info_ClearChoices	(Info_Mod_Skinner_Lernen);
};

FUNC VOID Info_Mod_Skinner_Lernen_1H_5()
{
	if B_TeachFightTalentPercent_New	(self, hero, NPC_TALENT_1H, 5, 60)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Lernen);

		Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
	};
};

FUNC VOID Info_Mod_Skinner_Lernen_1H_1()
{
	if B_TeachFightTalentPercent	(self, hero, NPC_TALENT_1H, 1, 60)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Lernen);

		Info_AddChoice	(Info_Mod_Skinner_Lernen, DIALOG_BACK, Info_Mod_Skinner_Lernen_BACK);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h5	, B_GetLearnCostTalent_New(hero, NPC_TALENT_1H)), Info_Mod_Skinner_Lernen_1H_5);
		Info_AddChoice	(Info_Mod_Skinner_Lernen, B_BuildLearnString(PRINT_Learn1h1	, B_GetLearnCostTalent(hero, NPC_TALENT_1H, 1)), Info_Mod_Skinner_Lernen_1H_1);
	};
};

INSTANCE Info_Mod_Skinner_Pickpocket (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_Pickpocket_Condition;
	information	= Info_Mod_Skinner_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Skinner_Pickpocket_Condition()
{
	C_Beklauen	(61, ItMi_Gold, 25);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

	Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_BACK, Info_Mod_Skinner_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Skinner_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Skinner_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Skinner_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Skinner_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Skinner_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Skinner_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Skinner_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Skinner_EXIT (C_INFO)
{
	npc		= Mod_964_BDT_Skinner_MT;
	nr		= 1;
	condition	= Info_Mod_Skinner_EXIT_Condition;
	information	= Info_Mod_Skinner_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Skinner_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Skinner_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
