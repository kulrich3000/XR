INSTANCE Info_Mod_Morgahard_Hi (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Hi_Condition;
	information	= Info_Mod_Morgahard_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, kim jestes i jaka jest Twoja praca w obozie?";
};

FUNC INT Info_Mod_Morgahard_Hi_Condition()
{
	if (Banditen_Dabei == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Hi_15_00"); //Witaj, kim jestes i jaka jest Twoja praca w obozie?
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_01"); //Jestem Morgahardem. Robie to i to. Czasami organizuje rabunek, a czasami organizuje gorace towary.
	AI_Output(self, hero, "Info_Mod_Morgahard_Hi_07_02"); //Poza tym, moge wam pokazac bandycka sztuczke, która jest warta swojej wagi w zlocie na zamachach.

	Npc_SetRefuseTalk	(self, 60);

	Log_CreateTopic	(TOPIC_MOD_LEHRER_BANDITEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_LEHRER_BANDITEN, "Moge nauczyc sie pewnych bandyckich tricków od Morgaharda.");
};

INSTANCE Info_Mod_Morgahard_OrkQuest (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkQuest_Condition;
	information	= Info_Mod_Morgahard_OrkQuest_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_OrkQuest_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_RefuseTalk(self) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_00"); //Hej, moge miec cos dla ciebie, zebys udowodnil sie w obozie.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_01"); //To troche bardziej wyszukane niz okradanie kilku nieszczesliwych dealerów. Tymczasem stalo sie ono dla nas niemalze nawykiem.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_02"); //Wokól obozu zawsze sa patrole wroga Orklagera.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_07_03"); //Moze spotkaliscie sie z orkiestrami podczas wiezienia w barierze?

	Log_CreateTopic	(TOPIC_MOD_BDT_MORGAHARD, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_RUNNING);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "W tym czasie samotnie zmiazdzilem Miasto Ork......", Info_Mod_Morgahard_OrkQuest_C);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Prawdziwe, duze, zle orki?", Info_Mod_Morgahard_OrkQuest_B);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Tak, kilka razy biegala przez orki....", Info_Mod_Morgahard_OrkQuest_A);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_D()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_00"); //W kazdym razie nasi harcerze obserwowali kazdego wieczoru w malej jaskini znajdujacej sie tuz pod naszym obozem grupe orków.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_01"); //Teraz twoim zadaniem jest wymknac sie z grupa bandytów w nocy i zaskoczyc ich, kiedy siedza na swoich luznych skórach na ziemi i polozyli swoja bron obok nich.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_D_07_02"); //Co mówisz? To przyniesie wam wiele szacunku w obozie.

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Jest to dla mnie zbyt niebezpieczne.", Info_Mod_Morgahard_OrkQuest_F);
	Info_AddChoice	(Info_Mod_Morgahard_OrkQuest, "Mala grupa orków sypialnych?", Info_Mod_Morgahard_OrkQuest_E);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_C()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_C_15_00"); //W tym czasie samotnie zmiazdzilem Miasto Ork......
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_C_07_01"); //Ale oczywiscie wczoraj zabilem tylko czarnego trolla. (smiech) Ale z taka postawa na pewno uda Ci sie wykonac kilka orków.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_B()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_B_15_00"); //Prawdziwe, duze, zle orki?
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_B_07_01"); //Ach, nie badz tak. Wiekszosc z nas juz wczesniej przynajmniej zabila harcerza orkowego i udowodnila, ze mozna walczyc.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_A()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_A_15_00"); //Tak, kilka razy biegala przez orki....
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_A_07_01"); //I wciaz zyjesz. To juz sa dobre warunki do realizacji tego zadania.

	Info_Mod_Morgahard_OrkQuest_D();
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_F()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_F_15_00"); //Jest to dla mnie zbyt niebezpieczne.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_F_07_01"); //Co? Jestem w Tobie naprawde zawiedziony.

	Mod_MorgahardBeleidigt = 1;

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_FAILED);

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	AI_StopProcessInfos	(self);
};

FUNC VOID Info_Mod_Morgahard_OrkQuest_E()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkQuest_E_15_00"); //Mala grupa orków sypialnych? Znajdziesz u mnie kupujacego ich sprzet.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_01"); //Bardzo dobrze, nie spodziewalem sie od Ciebie niczego wiecej. Znajdz od trzech do pieciu innych bandytów z obozu, którzy wyjda o pólnocy z wyjscia z obozu z toba.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkQuest_E_07_02"); //I wez takze skóre. Leniuchy powinny miec troche swiezego powietrza.

	Mod_Orks_Morgahard = 1;

	Wld_InsertNpc	(OrkWarrior_BDTPatroullie, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_01, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_02, "OW_PATH_184");
	Wld_InsertNpc	(OrkScout_BDTPatroullie_03, "OW_PATH_184");

	Info_ClearChoices	(Info_Mod_Morgahard_OrkQuest);

	B_LogEntry	(TOPIC_MOD_BDT_MORGAHARD, "Morgahard powierzyl mi usuniecie malego orkowego patrolu, który kazdego wieczoru osiada w jaskini pod obozem. Z Skinnerem i trzema lub piecioma innymi bandytami bede sie zbierac przed obozem o pólnocy, zeby sie wybic.");
};

INSTANCE Info_Mod_Morgahard_OrkPatroullie (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_OrkPatroullie_Condition;
	information	= Info_Mod_Morgahard_OrkPatroullie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Orki juz nigdy nie opuszcza jaskini.";
};

FUNC INT Info_Mod_Morgahard_OrkPatroullie_Condition()
{
	if (Mod_Orks_Morgahard == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_OrkPatroullie_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_OrkPatroullie_15_00"); //Orki juz nigdy nie opuszcza jaskini.
	AI_Output(self, hero, "Info_Mod_Morgahard_OrkPatroullie_07_01"); //Bardzo dobrze, nie spodziewalem sie niczego wiecej. Oto Twoja nagroda.

	B_GiveInvItems	(self, hero, ItMi_Gold, 200);

	B_SetTopicStatus	(TOPIC_MOD_BDT_MORGAHARD, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Dexter_AngriffVorbei))
	&& ((Mod_AlbertTransforms == 8)
	|| (Mod_AlbertTransforms == 9)
	|| (Mod_AlbertTransforms == 10))
	&& (Mod_OC_Miguel == 0)
	&& (Mod_OC_Morgahard == 0)
	&& (Kapitel >= 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_00"); //Hej, po wszystkich przezytych przygodach, jest jedna rzecz, do której wydaje mi sie Pan najbardziej odpowiedni. Bylismy w poblizu....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_01"); //Tak, o co to chodzi?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_02"); //Cóz, Logan przypadkowo wpadl w rece dokumentu napisanego przez przemieniajacych sie magów.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_03"); //Przypadkowo?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_04"); //No cóz, byl tam, aby podziekowac im za wsparcie z Orkami i zamknac kilka transakcji.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_05"); //A w stosie lisci, no cóz, czytal cos z skarbu i wzial sam lisc.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_06"); //Tak wiec samo z siebie......
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_07"); //W kazdym razie chodzilo o opiekuna zwierzat i lasu, który ma byc starozytnym, niewidomym, zamieszkalym w lasach Khoraty i tak dalej, nalezacym do.....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_08"); //... w posiadaniu wielkich skarbów, przypuszczam.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_09"); //To prawda.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_10"); //I teraz mam dostac sie do skarbów? ukrasc starca slepego staruszka?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_11"); //Rzeczywiscie, po prostu powinienes byc w stanie zrobic to samemu......
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_12"); //Tak, tak wlasnie próbowalismy. Jedyny problem polega na tym, ze on równiez wydaje sie byc troche magiczny....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_13"); //Magiczny utalentowany?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_14"); //Tak, kiedy próbowalismy go zorganizowac, oszukiwal nas magia, metamorfoza i oszustwami i odwracal nos.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_15"); //Wielokrotnie próbowalismy go zlapac, ale musielismy wyciagnac sie pod jego pogardliwy smiech.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_16"); //Nie mozemy wiec dotrzec do skarbu w normalny sposób.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann_15_17"); //Hmm, "normalny". Und was soll ich da jetzt machen?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_18"); //Cóz, spróbuj dowiedziec sie wiecej o nim jakos, pozwól swoim kontaktom grac.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_19"); //Trudno nam oczywiscie zapytac przemieniajacych sie magów, poniewaz moze to wzbudzic ich podejrzliwosc po zniknieciu dokumentu. Rozumiesz?
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_20"); //Musisz wiec znalezc inny sposób, aby uzyskac wiecej informacji.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_21"); //Byc moze dowiesz sie czegos o tych lesnych blystkach, które rozbily swoje namioty pod drzewami na calym Khorinis....
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann_07_22"); //No cóz, bedziesz dobrze. Daj mi znac, kiedy znajdziesz skarb.

	Log_CreateTopic	(TOPIC_MOD_BDT_ALTERMANN, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_BDT_ALTERMANN, "Morgahard chce, abym dowiedzial sie wiecej o hodowcy zwierzat i lasu, który znajduje sie w Khoracie i ma posiadac wielki skarb. Powiedzial, ze byc moze Rangers powie mi wiecej o nim. Jak tylko znajde skarb, musze dac Morgahardowi znac.");
};

INSTANCE Info_Mod_Morgahard_AlterWaldMann2 (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_AlterWaldMann2_Condition;
	information	= Info_Mod_Morgahard_AlterWaldMann2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Morgahard_AlterWaldMann2_Condition()
{
	if (Mod_BDT_AlterWaldMann == 11)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_AlterWaldMann2_Info()
{
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_00"); //Czy dowiedziales sie wiecej o strazniku lasu?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_01"); //Um, tak..... Znalazlem nawet jego skarb.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_02"); //Jego skarb? Gdzie jest? Zloto, srebro, kamienie szlachetne i watpliwe zakopane gdzies na ziemi, czekajac na nas, by je odzyskac?
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_03"); //Cóz, wszystkie prawa podziemia. Ale to nie jest zloto i srebro, a stary czlowiek z lasu nie wie jak tak wiele zrobic.
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_04"); //Jest skarbem lasu wiedzy, ziól, eliksirów i roslin.
	AI_Output(self, hero, "Info_Mod_Morgahard_AlterWaldMann2_07_05"); //W kazdym razie chodzilo o opiekuna zwierzat i lasu, który ma byc starozytnym, niewidomym, zamieszkalym w lasach Khoraty i tak dalej, nalezacym do.....
	AI_Output(hero, self, "Info_Mod_Morgahard_AlterWaldMann2_15_06"); //Co, a co z tym wszystkim utrapieniem? Damn go.

	B_SetTopicStatus	(TOPIC_MOD_BDT_ALTERMANN, LOG_SUCCESS);
};

INSTANCE Info_Mod_Morgahard_Lernen_Schleichen (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Schleichen_Condition;
	information	= Info_Mod_Morgahard_Lernen_Schleichen_Info;
	permanent	= 1;
	important	= 0;
	description	= B_BuildLearnString("Skradanie siê", B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1));
};

FUNC INT Info_Mod_Morgahard_Lernen_Schleichen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Npc_GetTalentSkill (hero, NPC_TALENT_SNEAK) == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Schleichen_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Schleichen_15_00"); //Naucz mnie skradac sie.

	if (B_TeachThiefTalent (self, other, NPC_TALENT_SNEAK))
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Schleichen_07_01"); //Miekkie podeszwy daja Ci wieksza szanse na zblizenie sie do przeciwników, bez ich zauwazania.
	};
};

INSTANCE Info_Mod_Morgahard_Lernen_Knockout (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Lernen_Knockout_Condition;
	information	= Info_Mod_Morgahard_Lernen_Knockout_Info;
	permanent	= 1;
	important	= 0;
	description	= "Opady atmosferyczne (10 punktów nauki)";
};

FUNC INT Info_Mod_Morgahard_Lernen_Knockout_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Morgahard_Hi))
	&& (Knockout_Perk == FALSE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Morgahard_Lernen_Knockout_Info()
{
	AI_Output(hero, self, "Info_Mod_Morgahard_Lernen_Knockout_15_00"); //Pokaz mi, jak kogos przewrócic.

	if (hero.lp >= 10)
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_01"); //Wszystko w porzadku, wiec chcesz wiedziec jak zaskoczyc kogos atakiem z niespodzianka.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_02"); //Chodz cicho od tylu do osoby, nie bedac zauwazonym.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_03"); //Jesli jestes wystarczajaco blisko, daj mu dobry cios do tylu glowy przy pomocy pistoletu.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_04"); //Poniewaz Twoja ofiara nie jest na to przygotowana, bedzie ona szczególnie szkodliwa i przy odrobinie szczescia zniknie bez koniecznosci udzielania dalszej pomocy.
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_05"); //Nawiasem mówiac, ma to równiez wplyw na podklady, zwierzeta, orki i wszystko inne, co peka i rozswietla.

		Knockout_Perk = TRUE;
		
		hero.lp -= 10;
	}
	else
	{
		AI_Output(self, other, "Info_Mod_Morgahard_Lernen_Knockout_31_06"); //Wróc do domu, gdy masz wiecej doswiadczenia.
	};
};

INSTANCE Info_Mod_Morgahard_Pickpocket (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_Pickpocket_Condition;
	information	= Info_Mod_Morgahard_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Morgahard_Pickpocket_Condition()
{
	C_Beklauen	(78, ItMi_Gold, 20);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_BACK, Info_Mod_Morgahard_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Morgahard_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Morgahard_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Morgahard_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Morgahard_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Morgahard_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Morgahard_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Morgahard_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Morgahard_EXIT (C_INFO)
{
	npc		= Mod_790_BDT_Morgahard_MT;
	nr		= 1;
	condition	= Info_Mod_Morgahard_EXIT_Condition;
	information	= Info_Mod_Morgahard_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Morgahard_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Morgahard_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
