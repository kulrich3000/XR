INSTANCE Info_Mod_Namib_Hi (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hi_Condition;
	information	= Info_Mod_Namib_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Hi_02_00"); //Zyjesz?
	AI_Output(hero, self, "Info_Mod_Namib_Hi_15_01"); //Mozna by tak to ujac.
	AI_Output(self, hero, "Info_Mod_Namib_Hi_02_02"); //Wiec udalo sie Panu pokonac spiwora?
};

INSTANCE Info_Mod_Namib_Irdorath (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Irdorath_Condition;
	information	= Info_Mod_Namib_Irdorath_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Irdorath_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Irdorath))
	&& (Mod_Irdorath == 0)
	&& ((Guru_Dabei == 1)
	|| (Templer_Dabei == 1))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Irdorath_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_00"); //Mialem wizje! Widzialem morze.... kawalek drewna na nim dryftowal..... Nie, to byl statek.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_01"); //Poruszala sie ku czemus mrocznemu.... a potem nagle zobaczylem Y' Berion.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath_02_02"); //Powiedzial mi:"Idz do portu w Khorinis i dolacz do zalogi.
};

INSTANCE Info_Mod_Namib_Irdorath2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Irdorath2_Condition;
	information	= Info_Mod_Namib_Irdorath2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tak, rzeczywiscie! Dlatego jestem tutaj.";
};

FUNC INT Info_Mod_Namib_Irdorath2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Irdorath))
	&& (Mod_Irdorath == 0)
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Irdorath2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_00"); //Tak, rzeczywiscie! Dlatego jestem tutaj.
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_01"); //Próbuje zwerbowac zespól, z którym musze odwiedzic wyspe, aby polozyc kres zlowieszczej dzialalnosci magika Xeres' a....
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_02"); //Cóz, jest to przynajmniej wazny krok w tym kierunku.
	AI_Output(self, hero, "Info_Mod_Namib_Irdorath2_02_03"); //Tak wiec mam zamiar jechac. Zobacze cie w porcie.
	AI_Output(hero, self, "Info_Mod_Namib_Irdorath2_15_04"); //Ach, na pewno zobaczcie tam.

	B_LogEntry	(TOPIC_MOD_HQ_CREW, "Namib mial wizje, w której nakazano mu dolaczyc do mojego zespolu. I ma teraz.");

	B_GivePlayerXP	(100);

	Mod_NamibDabei = 1;

	Mod_CrewCount += 1;

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "TOT");
};

INSTANCE Info_Mod_Namib_Sekte (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Sekte_Condition;
	information	= Info_Mod_Namib_Sekte_Info;
	permanent	= 0;
	important	= 0;
	description	= "Lester powiedzial mi, ze jestes tutaj.";
};

FUNC INT Info_Mod_Namib_Sekte_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Aufnehmen))
	{
		return 1;
	};
};

FUnc VOID Info_Mod_Namib_Sekte_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_00"); //Lester powiedzial mi, ze jestes tutaj.
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_01"); //Nie sadzilem, ze znów cie zobacze!
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_02"); //Czy szalales na mnie, ze zabierasz sypialnia?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_03"); //Nie, nie! Jestesmy wam wdzieczni za odkupienie nas od demona, który byl duchem naszego ducha!
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_04"); //Wiec juz nie modlisz sie do sypialni?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_05"); //Nie.
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_06"); //Ah....
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_07"); //Tak.....
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_08"); //A co pan tutaj robi?
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_09"); //Cóz, glównie siejemy, zniwa i rdestnica dymna.
	AI_Output(hero, self, "Info_Mod_Namib_Sekte_15_10"); //To wlasnie pomyslalem.
	AI_Output(self, hero, "Info_Mod_Namib_Sekte_02_11"); //Tu równiez studiujemy magie.
};

INSTANCE Info_Mod_Namib_Aufnehmen (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Aufnehmen_Condition;
	information	= Info_Mod_Namib_Aufnehmen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce do Ciebie dolaczyc!";
};

FUNC INT Info_Mod_Namib_Aufnehmen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Aufnehmen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_00"); //Chce do Ciebie dolaczyc!
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_01"); //Ciesze sie, ze moge to uslyszec. Cóz, jest jeszcze zadanie do wykonania. Najpierw znajdz wczoraj!
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_02"); //Widzialem juz Lester. Powiedzial mi, ze jestes tutaj.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_03"); //(Zmieszane) Ah tak...... zdales juz ten test. Idz do niego. Ma z nim paczke, ze mial zrzucic sie na Constantino, alchemika Khoriniego.
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_04"); //Dlaczego wiec nie upuszcza go tam?
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_05"); //Zrobilismy maly blad organizacyjny. Lester odpowiada za dwa zadania naraz.
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_06"); //Co on teraz robi?
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_07"); //Czy kiedykolwiek byles/as na wspanialej wiezy Xardas w Khorinis?
	AI_Output(hero, self, "Info_Mod_Namib_Aufnehmen_15_08"); //Uh....
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_09"); //Tak czy owak, tam wzywal nieumarle stworzenia. Musial zuzywac sporo energii, wystarczylo zbudowac cala wieze w krótkim czasie.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_10"); //Calosc jednak zmienila glebe, usunela z niej pewne substancje, a kiedy te nieumarle zostaly obrócone w kamien, gleba odzyskala pewne inne substancje.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_11"); //Lester ma byc testowany w jaskini, co ma wplyw na rosliny ziól bagiennych.
	AI_Output(self, hero, "Info_Mod_Namib_Aufnehmen_02_12"); //Gdy jestes u niego, popros go o raport obozowy.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib poprosil mnie, abym przekazal Lester's package to Constantino i otrzymal raport statusowy od Lester.");
};

INSTANCE Info_Mod_Namib_WarBeiLester (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_WarBeiLester_Condition;
	information	= Info_Mod_Namib_WarBeiLester_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zabralem pakiet do Constantino.";
};

FUNC INT Info_Mod_Namib_WarBeiLester_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Lester_Zauberwasser))
	&& (Npc_HasItems(hero, ItMi_DuengerPaket) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_WarBeiLester_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_00"); //Zabralem pakiet do Constantino. Dal mi to.

	B_GiveInvItems	(hero, self, ItMi_DuengerPaket, 1);

	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_01"); //Ach, bardzo dobrze! Wez go na pola w poblizu Balor.

	B_GiveInvItems	(self, hero, ItMi_DuengerPaket, 1);

	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_02"); //Bylem tez z Lesteriem.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_03"); //A co? Co on mówi? Glos do góry.
	AI_Output(hero, self, "Info_Mod_Namib_WarBeiLester_15_04"); //Mówi, ze w jaskini niezwykle dobrze rozwija sie chwast bagienny. Powiedzial cos o czarnych magach.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_05"); //Doskonaly.... Przyniesliscie jeszcze pakiet do Balor? Nie? Cóz, spiesz sie i przynos go do niego.
	AI_Output(self, hero, "Info_Mod_Namib_WarBeiLester_02_06"); //Wróccie do mnie!

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib chce, abym zabral pakiet Constantino do Balor.");
};

INSTANCE Info_Mod_Namib_DuengerVerteilt (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_DuengerVerteilt_Condition;
	information	= Info_Mod_Namib_DuengerVerteilt_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bylem na Balorze i zaplodnilem pole.";
};

FUNC INT Info_Mod_Namib_DuengerVerteilt_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Balor_DuengerVerteilt))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_DuengerVerteilt_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_DuengerVerteilt_15_00"); //Bylem na Balorze i zaplodnilem pole.
	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_01"); //Bardzo dobry. Mam dla Ciebie kolejne zadanie w ciagu minuty. Przejdz do czarnych magów. Potrzebujemy waszej pomocy.
	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_02"); //Przynies im ten list i pakiet chwastów bagiennych jako maly prezent.

	B_ShowGivenThings	("2 Pozycje otrzymane");

	CreateInvItems	(hero, ItWr_NamibForBeliar, 1);
	CreateInvItems	(hero, ItMi_HerbPaket, 1);

	AI_Output(self, hero, "Info_Mod_Namib_DuengerVerteilt_02_03"); //A w drodze powrotnej mozesz cofnac Lester!

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Mam wziac list i paczke bagnistej ambrozji do czarnoskórych magów. Mysle, ze najlepiej byloby, gdyby udalem sie na Xardas. W drodze powrotnej do Minentala powinienem równiez zabrac ze mna Lester.");
};

INSTANCE Info_Mod_Namib_KarrasDa (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KarrasDa_Condition;
	information	= Info_Mod_Namib_KarrasDa_Info;
	permanent	= 0;
	important	= 0;
	description	= "Karras jest tutaj.";
};

FUNC INT Info_Mod_Namib_KarrasDa_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Karras_Namib2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KarrasDa_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KarrasDa_15_00"); //Karras jest tutaj.
	AI_Output(self, hero, "Info_Mod_Namib_KarrasDa_02_01"); //Bardzo dobry. Idz do drugiego guru i powiedz im, aby przyszli do swiatyni.
	AI_Output(self, hero, "Info_Mod_Namib_KarrasDa_02_02"); //Jesli nie wiesz, kto musi przyjechac lub gdzie znajduje sie guru, Talas poprowadzi Cie do nich.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Baal Namib chce, abym powiedzial drugiemu guru, ze przyjdzie na plac swiatyni. Talas moze mnie poprowadzic do guru, gdybym ich nie znalazl lub nie wiedzial, kto zaginal.");

	B_StartOtherRoutine	(self, "TEMPEL");
	B_StartOtherRoutine	(Mod_514_DMB_Karras_MT, "TEMPEL");
	B_StartOtherRoutine	(Mod_7268_PSINOV_Lester_MT, "START");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "TEMPEL");
};

INSTANCE Info_Mod_Namib_AtTempel (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_AtTempel_Condition;
	information	= Info_Mod_Namib_AtTempel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_AtTempel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Orun_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tyon_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Tondral_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Joru_GotoTempel))
	&& (Npc_KnowsInfo(hero, Info_Mod_Caine_GotoTempel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_AtTempel_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_00"); //Ach, tam jestescie.
	AI_Output(hero, self, "Info_Mod_Namib_AtTempel_15_01"); //Co dzieje sie teraz?
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_02"); //Wiecie, ze czarni magowie w ich dolinie wezwali nieumarlych mezczyzn do zbudowania Czarnej Wiezy.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_03"); //Jak wiecie z Lestera, wplynelo to na glebe do tego stopnia, ze bogata rasa rozrastala sie tam.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_04"); //Poprosilismy ich, aby zrobili to samo tutaj, w bagnie, aby jeszcze bardziej podniesc jakosc naszych ziól bagiennych, wiesz?
	AI_Output(hero, self, "Info_Mod_Namib_AtTempel_15_05"); //Uh....
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_06"); //Bardzo dobry.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_07"); //W kazdym razie nie ufam czarnym magom. Wydaje mi sie, ze maja jakis podrzedny motyw.
	AI_Output(self, hero, "Info_Mod_Namib_AtTempel_02_08"); //Idz do Cor Angar. Powiedz mu, aby Templariusze zajeli swoje stanowisko w przypadku, gdyby cos poszlo nie tak.

	B_LogEntry	(TOPIC_MOD_SEKTE_AUFNAHME, "Guru sa gromadzone w miejscu swiatyni i teraz chca wzywac nieumarle tak, ze jakosc ziól bagiennych rosnie. Jako srodek ostroznosci powinienem upewnic sie, ze templariusze sa gotowi.");
};

INSTANCE Info_Mod_Namib_SUDD (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_SUDD_Condition;
	information	= Info_Mod_Namib_SUDD_Info;
	permanent	= 0;
	important	= 0;
	description	= "Bomby rekina bagiennego sa martwe.";
};

FUNC INT Info_Mod_Namib_SUDD_Condition()
{
	if (Mod_Sekte_SH_Kampf == 4)
	&& (Npc_IsDead(Swampshark_Undead))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_SUDD_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_15_00"); //Bomby rekina bagiennego sa martwe.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_01"); //Bardzo dobrze! Te chamskie sumfaizombijki juz po raz drugi znalazly swój grób.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_02"); //Zastanawiam sie, co poszlo nie tak z czarem. Calosc i tak zadzialala! Bagnojowate powinno tu teraz pieknie rosnac.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_03"); //Byliscie nam bardzo pomocni! My i bagna.

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_106_TPL_Angar_MT, "START");
	B_StartOtherRoutine	(Mod_1219_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1218_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1221_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1226_TPL_Templer_MT, "START");
	B_StartOtherRoutine	(Mod_1116_PSINOV_Caine_MT, "START");
	B_StartOtherRoutine	(Mod_2013_PSINOV_Joru_MT, "START");
	B_StartOtherRoutine	(Mod_2007_GUR_BaalOrun_MT, "START");
	B_StartOtherRoutine	(Mod_2003_GUR_BaalTondral_MT, "START");
	B_StartOtherRoutine	(Mod_2006_GUR_BaalTyon_MT, "START");
	B_StartOtherRoutine	(Mod_2005_GUR_CorCadar_MT, "START");

	self.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1218_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1219_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1221_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;
	Mod_1226_TPL_Templer_MT.aivar[AIV_PARTYMEMBER] = FALSE;

	if (hero.guild != GIL_KDF)
	{
		B_StartOtherRoutine	(Mod_514_DMB_Karras_MT, "START");
		AI_Teleport	(Mod_514_DMB_Karras_MT, "TOT");
	};

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Namib_SUDD_02_04"); //Mozesz teraz wejsc do rangi templariusza lub Guru.

		Info_ClearChoices	(Info_Mod_Namib_SUDD);

		Info_AddChoice	(Info_Mod_Namib_SUDD, "Zmienilam zdanie.", Info_Mod_Namib_SUDD_No);
		Info_AddChoice	(Info_Mod_Namib_SUDD, "Chce byc guru.", Info_Mod_Namib_SUDD_Guru);
		Info_AddChoice	(Info_Mod_Namib_SUDD, "Chce byc templariuszem.", Info_Mod_Namib_SUDD_Templer);
	};

	B_GivePlayerXP	(500);

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_AUFNAHME, LOG_SUCCESS);
};

FUNC VOID Info_Mod_Namib_SUDD_No()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_No_15_00"); //Zmienilam zdanie.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_No_02_01"); //Zbyt zle, moglismy z wami wiele osiagnac.

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

FUNC VOID Info_Mod_Namib_SUDD_Guru()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_Guru_15_00"); //Chce byc guru.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_Guru_02_01"); //Wszystko w porzadku, oto Twoja szata.

	CreateInvItems	(hero, Nov_Armor_H, 1);
	B_ShowGivenThings	("Get Get Gururobe");

	Mod_AnzahlNebengilden += 1;

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Jestem teraz guru.");

	Mod_1210_TPL_Templer_MT.aivar[AIV_PASSGATE] = TRUE;

	Guru_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

FUNC VOID Info_Mod_Namib_SUDD_Templer()
{
	AI_Output(hero, self, "Info_Mod_Namib_SUDD_Templer_15_00"); //Chce byc templariuszem.
	AI_Output(self, hero, "Info_Mod_Namib_SUDD_Templer_02_01"); //Dobrze, oto twoja zbroja.

	CreateInvItems	(self, Tpl_Armor_L, 1);
	B_GiveInvItems	(self, hero, Tpl_Armor_L, 1);

	Mod_AnzahlNebengilden += 1;

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Jestem teraz templarka.");

	Mod_1210_TPL_Templer_MT.aivar[AIV_PASSGATE] = TRUE;

	Templer_Dabei = 1;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_68);

	Info_ClearChoices	(Info_Mod_Namib_SUDD);
};

INSTANCE Info_Mod_Namib_Dealer (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Dealer_Condition;
	information	= Info_Mod_Namib_Dealer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Dealer_Condition()
{
	if ((Templer_Dabei == 1)
	|| (Guru_Dabei == 1))
	&& (Kapitel >= 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Dealer_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_00"); //Dobrze! Mam dla Ciebie zadanie. Dostawca chwastów zachorowal.
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_01"); //Musisz zabrac ten pakiet ziól bagiennych do najemników tutaj w Minental! Odbaw go na Rath.

	CreateInvItems	(self, ItMi_HerbPaket, 1);
	B_GiveInvItems	(self, hero, ItMi_HerbPaket, 1);

	AI_Output(hero, self, "Info_Mod_Namib_Dealer_15_02"); //Wszystko jasne.
	AI_Output(self, hero, "Info_Mod_Namib_Dealer_02_03"); //Oto jakas lepsza zbroja.

	if (Templer_Dabei == 1)
	{
		CreateInvItems	(hero, TPL_Armor_M, 1);
	}
	else
	{
		CreateInvItems	(hero, GUR_Armor_M, 1);
	};

	Log_CreateTopic	(TOPIC_MOD_SEKTE_DEALER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_DEALER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_DEALER, "Baal Namib dal mi paczke ziól, która musze dostarczyc najemnikowi o nazwisku Rath tutaj w Minental.");
};

INSTANCE Info_Mod_Namib_NoDeal (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_NoDeal_Condition;
	information	= Info_Mod_Namib_NoDeal_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sciezka nie chciala chwastów?";
};

FUNC INT Info_Mod_Namib_NoDeal_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Rath_Sumpfkraut))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_NoDeal_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_00"); //Sciezka nie chciala chwastów?
	AI_Output(self, hero, "Info_Mod_Namib_NoDeal_02_01"); //Ale dlaczego tak jest?
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_02"); //Mówi, ze jest tanszy i lepszy narkotyk niz bagno. Nazywa ja dawca radosci.
	AI_Output(hero, self, "Info_Mod_Namib_NoDeal_15_03"); //Gosc na targowisku w Khoracie chce go sprzedac.
	AI_Output(self, hero, "Info_Mod_Namib_NoDeal_02_04"); //To zla wiadomosc. Idz do Relendel i poznaj tajemnice dawcy radosci w Khoracie. Jestes nasza ostatnia nadzieja.

	Log_CreateTopic	(TOPIC_MOD_SEKTE_Freudenspender, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_Freudenspender, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SEKTE_Freudenspender, "Baal Namib chce, abym poszedl do Khoraty i podniósl sciezke dawcy radosci.");
	B_SetTopicStatus	(TOPIC_MOD_SEKTE_DEALER, LOG_SUCCESS);

	B_GivePlayerXP	(100);
};

INSTANCE Info_Mod_Namib_Meer (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Meer_Condition;
	information	= Info_Mod_Namib_Meer_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Meer_Condition()
{
	if (Mod_SL_Meer == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Meer_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_00"); //DU!? Osmielisz sie tu przyjechac po zdradzie?
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_01"); //Spójrz, co zrobiles dla chwalebnej spolecznosci bagna!
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_02"); //To sa wszystkie zgony.... No cóz, wiekszosc z nich poszla, poniewaz nie mielismy srodków na uprawe chwastów bagiennych, ale duchem naszej wspólnoty jest DEAD!
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_03"); //Spokojny, spokojny. Mam pomysl, jak tchnac nowe zycie w obóz bagienny.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_04"); //To jest POTWIERDZENIE, co robisz dla nas..... Masz pomysl? Nie pozwól, aby wszystko wydostalo sie z nosa.
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_05"); //Król pragnie morza. Bagno tutaj byloby po prostu sprawa.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_06"); //Masz wrazenie, ze jestesmy po prostu gonna pozwalamy tym dziwakom wziac bagno? Jestes zwariowany!
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_07"); //Oczywiscie nie. Myslalem raczej o sojuszu.
	AI_Output(hero, self, "Info_Mod_Namib_Meer_15_08"); //Sad moze tu pozostac swobodnie, a ja dopilnuje, abyscie mogli znów uprawiac chwast bagienny bez zadnych problemów finansowych.
	AI_Output(self, hero, "Info_Mod_Namib_Meer_02_09"); //Och, nie wiem.... kiedy mysle o tak waznych sprawach.

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib nie jest jeszcze pewien, co sadzic o propozycji. Musi palic, zanim podejmie decyzje. Powinnam go przywiezc troche chwastów lub butelke przyjemnosci.");

	Mod_SL_Meer = 2;
};

INSTANCE Info_Mod_Namib_KoenigJoint (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KoenigJoint_Condition;
	information	= Info_Mod_Namib_KoenigJoint_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto lodyga.";
};

FUNC INT Info_Mod_Namib_KoenigJoint_Condition()
{
	if (Mod_SL_Meer == 2)
	&& (Npc_HasItems(hero, ItMi_Joint) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KoenigJoint_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KoenigJoint_15_00"); //Oto lodyga.

	B_GiveInvItems	(hero, self, ItMi_Joint, 1);

	B_UseItem	(self, ItMi_Joint);

	AI_Output(self, hero, "Info_Mod_Namib_KoenigJoint_02_01"); //Ahhhhhhhh..... To czuje sie dobrze.... Wdychanie slodkiego dymu po tak dlugim czasie.
	AI_Output(self, hero, "Info_Mod_Namib_KoenigJoint_02_02"); //Jesli chodzi o mnie, przynies te rozmycia zamkowe tutaj, jesli tylko pózniej bedziemy mogli znowu hodowac nasza ukochana chwast bagnista!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib nie ma nic przeciwko królowi tu przybywajacemu. Teraz powinienem porozmawiac z królem i poinformowac go, ze znalazlem dla niego morze.");

	Mod_SL_Meer = 3;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Namib_KoenigFreudenspender (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_KoenigFreudenspender_Condition;
	information	= Info_Mod_Namib_KoenigFreudenspender_Info;
	permanent	= 0;
	important	= 0;
	description	= "Spróbuj tego.";
};

FUNC INT Info_Mod_Namib_KoenigFreudenspender_Condition()
{
	if (Mod_SL_Meer == 2)
	&& (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_KoenigFreudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_KoenigFreudenspender_15_00"); //Spróbuj tego.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_UseItem	(self, ItMi_Freudenspender);

	AI_Output(self, hero, "Info_Mod_Namib_KoenigFreudenspender_02_01"); //l-- Bylem na górze. Tam tez byl zamek i rzeka! I.... Swamport!
	AI_Output(self, hero, "Info_Mod_Namib_KoenigFreudenspender_02_02"); //Rozmawialismy do mnie ziolo bagienne! Powiedziala, ze Trybunal jest odpowiedzia! Chodz, spiesz sie!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Baal Namib nie ma nic przeciwko królowi tu przybywajacemu. Teraz powinienem porozmawiac z królem i poinformowac go, ze znalazlem dla niego morze.");

	Mod_SL_Meer = 3;

	B_GivePlayerXP	(500);
};

INSTANCE Info_Mod_Namib_Sporen (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Sporen_Condition;
	information	= Info_Mod_Namib_Sporen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj. Spory te sa kluczem do leku w stanie dworskim.";
};

FUNC INT Info_Mod_Namib_Sporen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_HofstaatBarde_Sporen))
	&& (Npc_HasItems(hero, ItMi_FreudenspenderSporen) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Sporen_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_00"); //Tutaj. Spory te sa kluczem do leku w stanie dworskim.

	B_GiveInvItems	(hero, self, ItMi_FreudenspenderSporen, 1);

	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_01"); //Te przetrwalniki sa kluczowe?
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_02"); //Um.... Tak. To wlasnie powiedzial magik.
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_03"); //To bylo naprawde KAZDY WSZYSTKO dowiedziales sie?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_04"); //No cóz, tak czy owak, jestem gonna badac te zarodniki.
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_05"); //A co mam robic?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_06"); //Co?
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_07"); //Co mam teraz zrobic?
	AI_Output(self, hero, "Info_Mod_Namib_Sporen_02_08"); //To oczywiste! Przeniknac je, oslabic, oslabic, podwazyc ich motywacje, takie rzeczy!
	AI_Output(hero, self, "Info_Mod_Namib_Sporen_15_09"); //Zobacze, co moge znalezc.....

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Mam za zadanie przeniknac do sadu, oslabic, podwazyc ich motywacje i tak dalej. W miedzyczasie Baal Namib bada przetrwalniki, które go przynioslem.");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Namib_Motivation (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Motivation_Condition;
	information	= Info_Mod_Namib_Motivation_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oslabilem sad i wszystko to.";
};

FUNC INT Info_Mod_Namib_Motivation_Condition()
{
	if (Mod_SL_Schwaechen == 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Motivation_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Motivation_15_00"); //Oslabilem sad i wszystko to.
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_01"); //Doskonaly! W miedzyczasie przeanalizowalem te przetrwalniki, sa one bardzo interesujace.
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_02"); //W kazdym razie powinienes komus przyniesc te przetrwalniki, prawda? Zamiast tego, jestes gonna przyniesc mu te torbe tutaj.

	B_GiveInvItems	(self, hero, ItMi_FakeFreudenspenderSporen, 1);

	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_03"); //Zawiera ona jaja pasozytniczego gatunku owadów. Jesli oni rozrzucaja je na swoje pola, caly plon zginie!
	AI_Output(self, hero, "Info_Mod_Namib_Motivation_02_04"); //To powinno wystarczyc, aby je raz na zawsze dokonczyc! Chodzcie dalej, odejdzmy!

	B_LogEntry	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, "Ma mnie zabrac pasozytnicze jajka do sekretarza narkotyków. Najpierw bede musial zobaczyc mysliwego.");

	Mod_SL_Schwaechen = 5;
};

INSTANCE Info_Mod_Namib_HofstaatFutsch (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_HofstaatFutsch_Condition;
	information	= Info_Mod_Namib_HofstaatFutsch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Sad jest historia.";
};

FUNC INT Info_Mod_Namib_HofstaatFutsch_Condition()
{
	if (Mod_SL_Schwaechen == 8)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_HofstaatFutsch_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_HofstaatFutsch_15_00"); //Sad jest historia.
	AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_01"); //Doskonaly! Wszystko rozwija sie doskonale.

	if (Guru_Dabei == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_02"); //Jestes naprawde godzien zostac wysokim guru.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_03"); //To mój zaszczyt umiescic cie w szeregach wysokiego guru.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_04"); //Nosic te szate z duma.

		HoherGuru_Dabei = TRUE;

		CreateInvItems	(hero, Gur_Armor_H, 1);

		B_ShowGivenThings	("Uzyskaj wysoki poziom gururobego");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_05"); //Jestes naprawde godny stania sie wysokim szablonem.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_06"); //Mam zaszczyt przyjac cie w szeregi wyzszych templariuszy rycerskich.
		AI_Output(self, hero, "Info_Mod_Namib_HofstaatFutsch_02_07"); //Nosic te zbroje z duma i godnoscia.

		HoherTempler_Dabei = TRUE;

		CreateInvItems	(hero, Tpl_Armor_H, 1);

		B_ShowGivenThings	("Otrzymywanie ciezkiego sprzetu templariuszy");
	};

	B_SetTopicStatus	(TOPIC_MOD_SEKTE_ENTSCHEIDUNG, LOG_SUCCESS);

	B_GivePlayerXP	(1000);
};

INSTANCE Info_Mod_Namib_Leichengase (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Leichengase_Condition;
	information	= Info_Mod_Namib_Leichengase_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Leichengase_Condition()
{
	if ((Templer_Dabei == TRUE)
	|| (Guru_Dabei == TRUE))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Leichengase_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_02_00"); //Damn nowicjuszy!

	Wld_SendTrigger	("EVT_SUMPFHAIPROBE_01");
	Wld_SendTrigger	("EVT_SUMPFHAIPROBE_02");

	Info_ClearChoices	(Info_Mod_Namib_Leichengase);

	Info_AddChoice	(Info_Mod_Namib_Leichengase, "Bezuzyteczne opakowanie, wszystkie!", Info_Mod_Namib_Leichengase_B);
	Info_AddChoice	(Info_Mod_Namib_Leichengase, "Co?", Info_Mod_Namib_Leichengase_A);
};

FUNC VOID Info_Mod_Namib_Leichengase_C()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_00"); //Co?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_01"); //Jak? Och, uh, chodzi o nowicjuszy!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_02"); //Seit wir die Sumpfkrautfelder ... "nawozony" haben liegen sie mir tagein tagaus in den Ohren.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_03"); //"Baal Namib jest straszny, straszny, straszny, nieznosnie zly i po prostu niezadowalajacy.", sagen sie!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_04"); //"Zrobiles cos z tym.", meinen sie.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_05"); //"Nie moze to juz dluzej tak wygladac.", beschweren sie sich.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_06"); //I ja? Co powinienem zrobic?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_07"); //Ach, to zle.... Czy potrafisz sobie nawet wyobrazic, jak to jest miec uszy pelne zawodzenia?
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_08"); //....
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_09"); //Pomyslalem tak! Nikt nie cierpi tak bardzo jak ja.... Wiecej z wyjatkiem byc moze nowicjuszy.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_10"); //Moze mozesz mi powiedziec, na co cierpia.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_11"); //Zapach.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_12"); //Zapach?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_13"); //Naja, das trifft es nicht so ganz ... vielleicht würde der Begriff "zapach" der Sache eher gerecht werden.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_14"); //Zapach wiec?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_15"); //Tak..... Nie.... Nie. Moze zapach moze nie jest wlasciwym slowem....
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_16"); //Zobaczmy wiec, moze by to podsunelo.... smród lub zapach..... lub.... lub Och Mój BÓG, biedni nowicjusze.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_17"); //Nie mozna sobie wyobrazic, jak zle grzebia te pekajace rekiny bagienne!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_18"); //To tak, jakby sypiali po dlugiej drzemce wypili poranna kawe, a potem odprezyli sie w bagnie.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_19"); //Nie mozna sobie wyobrazic, jak zle sie czai.
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_20"); //Cóz, smród nie jest az tak zly.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_21"); //Ach, tak? Myslisz tak! Jeden z nowicjuszy jest niewidomy, tak bardzo smierdzi!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_22"); //Prosze, PLEASE, pomózcie moim biednym nowicjuszom, oni sa dla mnie jak dzieci!
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_C_15_23"); //A co mam robic?
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_C_02_24"); //Przejdz do miejscowosci Baal Caine. Pracuje nad tym problemem. Mam nadzieje, ze wkrótce znajdzie rozwiazanie.

	Log_CreateTopic	(TOPIC_MOD_SL_LEICHENGASE, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_SL_LEICHENGASE, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_SL_LEICHENGASE, "Nowicjusze cierpia z powodu smrodu trupów rekinów bagiennych. Baal Caine poszukuje rozwiazania. Powinienem isc do niego.");

	Info_ClearChoices	(Info_Mod_Namib_Leichengase);
};

FUNC VOID Info_Mod_Namib_Leichengase_A()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_A_15_00"); //Co?

	Info_Mod_Namib_Leichengase_C();
};

FUNC VOID Info_Mod_Namib_Leichengase_B()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_B_15_00"); //Bezuzyteczne opakowanie, wszystkie!
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_B_02_01"); //Tak, tak, tak! Calkiem sluszne, malo godny pracownik, który docenia, ze poswiece sie dla tego spoleczenstwa.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase_B_02_02"); //Ale ja cierpie cicho, slyszysz mnie?
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase_B_15_03"); //Ciezko jest zignorowac. Co o tym chodzi?

	Info_Mod_Namib_Leichengase_C();
};

INSTANCE Info_Mod_Namib_Leichengase2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Leichengase2_Condition;
	information	= Info_Mod_Namib_Leichengase2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Hej, rozwiazalem problem.";
};

FUNC INT Info_Mod_Namib_Leichengase2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Caine_Leichengase5))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Leichengase2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Leichengase2_15_00"); //Hej, rozwiazalem problem.
	AI_Output(self, hero, "Info_Mod_Namib_Leichengase2_02_01"); //Zrobiliscie nam Panstwo bezcenny serwis!

	B_GivePlayerXP	(150);

	B_SetTopicStatus	(TOPIC_MOD_SL_LEICHENGASE, LOG_SUCCESS);
};

INSTANCE Info_Mod_Namib_Orkfriedhof (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Orkfriedhof_Condition;
	information	= Info_Mod_Namib_Orkfriedhof_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_Orkfriedhof_Condition()
{
	if (Mod_NL_UOS > 0)
	&& (Mod_NL_UOS < 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Orkfriedhof_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_00"); //Co Pan tutaj robi? Na orkowym cmentarzu, gdzie potrzebna jest twoja sila bojowa.
	AI_Output(hero, self, "Info_Mod_Namib_Orkfriedhof_15_01"); //Latwo to sobie wyobrazic.... Zglaszac, co sie stalo?
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_02"); //Baal Tavor rozpoczal niedawno wyprawe nowicjuszy i templariuszy na opuszczony Cmentarz Orkowy, aby szukac artefaktów i skarbów oraz odzyskac zwloki zmarlych braci z pierwszej wyprawy.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_03"); //Tak, porzuceni tak jak my pomyslelismy, podobnie jak w czasie naszej pierwszej wizyty na cmentarzu, kiedy orki i mroczne moce spowodowaly nam bolesne straty wsród naszych braci.....
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_04"); //Najpierw nie mozna bylo sie spodziewac niczego po zblizajacej sie katastrofie.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_05"); //Nie zaklóceni, moi wspólbracia dokonali tego, do czego weszli, obejrzeli pomieszczenia, korytarze i nisze, oplakiwali losy zmarlych templariuszy, którzy zostali tam wystawieni w kurzu rozkladu.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_06"); //Weszli coraz glebiej w pomieszczenia i rozeszli sie.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_07"); //Nagle uslyszeli krzyk nowicjusza, który obsesyjnie opetal sie z jednego z glebszych pokoi i krzyczal cos z szamanów i piorunów.... ale bylo juz za pózno.
	AI_Output(hero, self, "Info_Mod_Namib_Orkfriedhof_15_08"); //Tak, co sie stalo..... ?
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_09"); //Mówi sie o tym szybko. Orki pochowane na cmentarzu staly sie nieumarlymi orkami..... jak ciala naszych wspólbraci.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_10"); //Upadli oni nad templariuszami i nowicjuszami, a w chaosie uciekla tylko nowicjuszka Tali.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_11"); //Niejasne jest, co sie stalo z innymi, bez wzgledu na to, czy sa ocalale.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_12"); //Tak czy inaczej, zwrócilismy sie o wsparcie dla nowego obozu i dalibysmy mi pewnosc, gdybyscie uczestniczyli w tej wyprawie ratunkowej.
	AI_Output(self, hero, "Info_Mod_Namib_Orkfriedhof_02_13"); //Zrobiles juz wczesniej sprzeciw wobec przeciwnosci Orkriedhof?
};

INSTANCE Info_Mod_Namib_GeiselnSicher (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_GeiselnSicher_Condition;
	information	= Info_Mod_Namib_GeiselnSicher_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Namib_GeiselnSicher_Condition()
{
	if (Mod_NL_UOS == 7)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_GeiselnSicher_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_00"); //Wlasciwie udalo Ci sie znalezc i uratowac ocalalych, niesamowitych. Oto dziekuje.

	B_ShowGivenThings	("Otrzymywanie róznych pozycji");

	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_01"); //Wsród nich jest równiez nowo opracowany walek zaklecia, który zostal wyprodukowany z duza iloscia chwastów borowinowych.
	AI_Output(self, hero, "Info_Mod_Namib_GeiselnSicher_02_02"); //To sprawia, ze ziolowy material waszego otoczenia wzrasta do golem, który podaza za wasza wola. Zabawa z tym.

	CreateInvItems	(hero, ItPo_Health_03, 4);
	CreateInvItems	(hero, ItMi_Gold, 300);
	CreateInvItems	(hero, ItMi_Traumruf, 5);
	CreateInvItems	(hero, ItPl_SwampHerb, 10);
	CreateInvItems	(hero, ItSc_SumSwampGolem, 1);

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Namib_Hueterklinge (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hueterklinge_Condition;
	information	= Info_Mod_Namib_Hueterklinge_Info;
	permanent	= 0;
	important	= 0;
	description	= "Szukam Baala Ydrana.";
};

FUNC INT Info_Mod_Namib_Hueterklinge_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_GorNaKar_Hueterklinge2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Hueterklinge_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge_15_00"); //Szukam Baala Ydrana.
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge_02_01"); //Znajdziesz go na naszym cmentarzu. Znajduje sie w bagnie w poblizu morza.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Mówi sie, ze Baal Ydran znajduje sie na cmentarzu w bagnie niedaleko morza.");
};

INSTANCE Info_Mod_Namib_Hueterklinge2 (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Hueterklinge2_Condition;
	information	= Info_Mod_Namib_Hueterklinge2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Znalazlem Ydrana. On nie zyje.";
};

FUNC INT Info_Mod_Namib_Hueterklinge2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Hueterklinge))
	&& (Mod_TPL_HK_Ydran == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Hueterklinge2_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_00"); //Znalazlem Ydrana. On nie zyje.
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_01"); //Wiem. Tragicznie cala historia.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_02"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_03"); //Nie chce o tym mówic...... rany sa jeszcze zbyt swieze..... SO SWIEZE (budzic sie glosno)
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_04"); //Spokój, czy ty sie uspokoisz?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_05"); //Masz racje, masz racje. Rydiger nie chcialby, abym plakal nad nim.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_06"); //Rydiger? Nigdy nie przeszkadzac. Czy znasz templariusza o imieniu Gor Na Kosh?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_07"); //Ale tak, tak, tak. Bardzo sprytny mlody templariusz. Bardzo powaznie traktuje swoje zadanie.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_08"); //Czy wiesz, gdzie moge go znalezc?
	AI_Output(self, hero, "Info_Mod_Namib_Hueterklinge2_02_09"); //Dlaczego nie spróbujesz tylko jego kabiny? To wlasnie po drugiej stronie mojego drzewa.
	AI_Output(hero, self, "Info_Mod_Namib_Hueterklinge2_15_10"); //Dzieki.

	B_LogEntry	(TOPIC_MOD_SL_SCHMIEDEFEUERN, "Chata Gor Na Kosh znajduje sie bezposrednio po drugiej stronie drzewa Baal Namiba. Zobaczmy, co tam znajde.");

	Wld_InsertItem	(ItMi_GorNaKoshsBeutel, "FP_ITEM_GORNAKOSH_BEUTEL");
	Wld_InsertItem	(ItWr_GorNaKoshsTagebuch1, "FP_ITEM_GORNAKOSH_TAGEBUCH");
};

INSTANCE Info_Mod_Namib_Magie (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Magie_Condition;
	information	= Info_Mod_Namib_Magie_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czar? Jak zrobic magie?";
};

FUNC INT Info_Mod_Namib_Magie_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Magie_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Magie_15_00"); //Czar? Jak zrobic magie? Otrzymales swoja magie od sypialni.
	AI_Output(self, hero, "Info_Mod_Namib_Magie_02_01"); //To wlasnie pomyslelismy. Ale dowiedzielismy sie, ze to nie spiacy dal nam magie. To byla chwast bagna!
};

INSTANCE Info_Mod_Namib_Lehre (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Lehre_Condition;
	information	= Info_Mod_Namib_Lehre_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wtedy juz nie jestes grupa religijna?";
};

FUNC INT Info_Mod_Namib_Lehre_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Lehre_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Lehre_15_00"); //Wtedy juz nie jestes grupa religijna?
	AI_Output(self, hero, "Info_Mod_Namib_Lehre_02_01"); //Nie. Jestesmy raczej sojuszem gospodarczym i spolecznoscia zyjaca. Przyjezdza tu kazdy, kto ma dosc konwencji i praw miasta.
	AI_Output(hero, self, "Info_Mod_Namib_Lehre_15_02"); //Dlaczego wiec sa jeszcze Templariusze?
	AI_Output(self, hero, "Info_Mod_Namib_Lehre_02_03"); //Dobre pytanie..... Nikt o tym nigdy nie pomyslal. Templariusze sa zawsze przydatne.
};

INSTANCE Info_Mod_Namib_Ruestung (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Ruestung_Condition;
	information	= Info_Mod_Namib_Ruestung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Jesli nie wierzysz juz w spiwora, dlaczego....";
};

FUNC INT Info_Mod_Namib_Ruestung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Namib_Sekte))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Ruestung_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Ruestung_15_00"); //Jesli nie wierzysz juz w seniera, dlaczego masz jeszcze znak jego maski na pancerzu?
	AI_Output(self, hero, "Info_Mod_Namib_Ruestung_02_01"); //Postanowilismy zostawic ich tam w pamieci dawnych dni. Nigdy nie chcemy zapominac, jak falszywa moze byc wiara. Zwlaszcza, gdy dostajesz go glosem.
};

INSTANCE Info_Mod_Namib_Woher (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Woher_Condition;
	information	= Info_Mod_Namib_Woher_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego jestes tutaj z sekta?";
};

FUNC INT Info_Mod_Namib_Woher_Condition()
{
	if (Guru_Dabei == 1)
	|| (Templer_Dabei == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Namib_Woher_Info()
{
	AI_Output(hero, self, "Info_Mod_Namib_Woher_15_00"); //Dlaczego jestes tutaj z sekta?
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_01"); //Mieszkalem w okolicach Silden jako wlasciciel plantacji ziemi bagiennej.
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_02"); //Kiedy król zakazal chwastów, zostalem natychmiast wrzucony do kolonii.
	AI_Output(hero, self, "Info_Mod_Namib_Woher_15_03"); //Co zrobiles?
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_04"); //Najpierw poszedlem do nowego obozu i pracowalem tam jako rolnik.
	AI_Output(self, hero, "Info_Mod_Namib_Woher_02_05"); //Kiedy dowiedzialem sie, ze Y' Berion chcial zalozyc obóz na bagnie, dolaczylem do niego. Po jakims czasie nazwal mnie tez guru.
};

INSTANCE Info_Mod_Namib_Pickpocket (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_Pickpocket_Condition;
	information	= Info_Mod_Namib_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_150;
};

FUNC INT Info_Mod_Namib_Pickpocket_Condition()
{
	C_Beklauen	(123, ItMi_Gold, 66);
};

FUNC VOID Info_Mod_Namib_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

	Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_BACK, Info_Mod_Namib_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Namib_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Namib_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
};

FUNC VOID Info_Mod_Namib_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Namib_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Namib_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Namib_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Namib_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Namib_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Namib_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Namib_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Namib_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Namib_EXIT (C_INFO)
{
	npc		= Mod_2004_GUR_BaalNamib_MT;
	nr		= 1;
	condition	= Info_Mod_Namib_EXIT_Condition;
	information	= Info_Mod_Namib_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Namib_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Namib_EXIT_Info()
{
	AI_Output(self, hero, "Info_Mod_Namib_EXIT_02_01"); //Do celu!

	AI_StopProcessInfos	(self);
};
