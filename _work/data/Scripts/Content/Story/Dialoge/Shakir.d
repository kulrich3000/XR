INSTANCE Info_Mod_Shakir_Hi (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Hi_Condition;
	information	= Info_Mod_Shakir_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy jestes Shakir, przywódca oszustów?";
};

FUNC INT Info_Mod_Shakir_Hi_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_Aufnahme))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_00"); //Czy jestes Shakir, przywódca oszustów?
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_01"); //Tak, to ja. Ale kim jestes? Nigdy nie widzialem Cie tutaj!
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_02"); //Jestem.....
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_03"); //Nie ma to znaczenia. Zastanawiam sie tylko, co tu robisz.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_04"); //Amir zaprowadzil mnie do waszego obozu, poniewaz zrobilem mu laske.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_05"); //Powiedzial, ze powinienem sie do pana przylaczyc.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_06"); //Przy bramce rozmawialem o tym z Zahitem, który na koniec powiedzial, ze powinienem do ciebie przyjsc.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_07"); //Ah, swieze mieso. Zanim jednak do nas dolaczysz, jest jeszcze wiele do zrobienia.
	AI_Output(self, hero, "Info_Mod_Shakir_Hi_31_08"); //Mówie ci, masz duzo na glowie.
	AI_Output(hero, self, "Info_Mod_Shakir_Hi_15_09"); //Cos podobnego juz mi powiedzial Zahit.
};

INSTANCE Info_Mod_Shakir_GaunerWerden (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden_Condition;
	information	= Info_Mod_Shakir_GaunerWerden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co musze zrobic, aby zostac oszustem?";
};

FUNC INT Info_Mod_Shakir_GaunerWerden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_00"); //Co musze zrobic, aby zostac oszustem?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_01"); //To w zasadzie calkiem proste. Tu w naszym sasiedztwie musisz zebrac wszystkich waznych oszustów.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_02"); //A co to konkretnie oznacza?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_03"); //Wykonanie zadania polegajacego na zebraniu glosów przez wszystkich.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_04"); //Jesli przekonales wszystkich oszustów, w tym mnie, mozesz skontaktowac sie ze mna, a ja cie zabiore.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_05"); //Wtedy staniesz sie czescia spolecznosci Assassina.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_06"); //Kto jest jednym z oszustów, których musze przekonac?
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_07"); //Trzeba przekonac nastepujacych czlonków: Zeki, Ramsi, Aabid, Yasin, Yussuf i oczywiscie mnie.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_08"); //To wiele osób.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_09"); //(smiech) Chcesz naszego zaufania, wiec musisz cos z tym zrobic.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_10"); //Wlasciwie, zajme sie tym.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden_31_11"); //Zabawne zbieranie glosów.
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden_15_12"); //Ja to ja bede mial.

	B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Rozmawialem teraz z Shakirem, który jest gotów przyjac mnie z oszustami, ale tylko pod jednym warunkiem. Mialem przekonac wszystkich waznych oszustów w okolicy, aby do nich dolaczyli. Kiedy to uczynilem, chcialbys, abym opowiedzial o tym Shakirowi.");
};

INSTANCE Info_Mod_Shakir_Frau (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau_Condition;
	information	= Info_Mod_Shakir_Frau_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Frau_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yussuf_Hi))
	&& (Npc_KnowsInfo(hero, Info_Mod_Yasin_MikaTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Aabid_HabPakete))
	&& (Npc_KnowsInfo(hero, Info_Mod_Ramsi_JaegerTot))
	&& (Npc_KnowsInfo(hero, Info_Mod_Zeki_Laute))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_00"); //Och, tam jestescie. Do tej pory slyszalem tylko o Tobie dobre rzeczy.

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_01"); //Ciesze sie, ze Pan to zrobil. Ale nie moglem sie zgodzic z Jusufem.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_02"); //Jakie jest Twoje imie?
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_03"); //Nie uznalem jego zadania za poprawne. W poprzek z drugiej strony.
		AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_04"); //Oops! Chlopak z sumieniem! Tutaj cos nowego.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_05"); //Nicosc na spotkanie. Nie mam jeszcze Jusufa. Nie ma czasu, mówi.
		AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_06"); //Musi rozkazywac samemu wojownikom, mówi.
	};

	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_07"); //Wszystko teraz. Sluchajcie co to jest mój test:
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_08"); //Kiedy ostatni raz spales z kobieta?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_09"); //Och, niebo! To bylo w moim ostatnim zyciu. Raz poszedlem do Bromoru.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_10"); //Dom w porcie?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_11"); //Dokladnie. Nie zaluje.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_12"); //Oto problem. Musisz wiedziec, ze mialem dwie zony w Varant.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_13"); //Teraz trace tu wiele rzeczy. Wiesz, co mam na mysli?
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_14"); //Oczywiscie. Chce cie teraz zabrac do siebie kobiety.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_15"); //Jeden wystarczy.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_16"); //Dlaczego wiec nie pójdziesz do miasta? Wciaz musisz miec przebrania.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_17"); //To nie jest problem. Ale mnie tam znaja. Szczególnie milicja.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_18"); //Uh-huh. Jest to juz nieprzyjemnie zauwazone.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_19"); //Tak wlasnie rozumiem. Piekno wbija sie w jaskinie mieszadla do napojów.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_20"); //I moze to zrobic raz na jakis czas.....
	AI_Output(self, hero, "Info_Mod_Shakir_Frau_31_21"); //Czy nie masz zamiaru? Nie ma jednak znaczenia, jest zbyt zajety.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau_15_22"); //Wszystko jasne. Chce zobaczyc, co moge dla Ciebie zrobic.

	Log_CreateTopic	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_SHAKIR_FRAU, "Dla Shakir' a musze znalezc kobiete na pewne godziny. O czym moga pomyslec. Lepiej porozmawiac z Bromorem. Jesli ja mam, zabiore ja do jaskini w poblizu obozu Assassin, gdzie zdaje sie mieszkac alchemik.");
};

INSTANCE Info_Mod_Shakir_Frau2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Frau2_Condition;
	information	= Info_Mod_Shakir_Frau2_Info;
	permanent	= 0;
	important	= 0;
	description	= "Zglos sie do mnie z powrotem.";
};

FUNC INT Info_Mod_Shakir_Frau2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Gritta_Shakir3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Frau2_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_00"); //Zglos sie do mnie z powrotem. Dostalem piekna mloda kobiete. Czeka w jaskini.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_01"); //Naprawde? Jestes pieklem faceta.
	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_02"); //Obiecalem jej te sukienke. Wez to tutaj.

	B_GiveInvItems	(hero, self, ItAr_GrittasKleid, 1);

	AI_Output(hero, self, "Info_Mod_Shakir_Frau2_15_03"); //I spiesz sie. Zanim zmieni zdanie.
	AI_Output(self, hero, "Info_Mod_Shakir_Frau2_31_04"); //Juz nie jestem. Czekacie tutaj.

	B_SetTopicStatus	(TOPIC_MOD_ASS_SHAKIR_FRAU, LOG_SUCCESS);

	B_GivePlayerXP	(250);

	Mod_ASS_ShakirGritta_Day = Wld_GetDay();

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATGRITTA");
};

INSTANCE Info_Mod_Shakir_GaunerWerden2 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden2_Condition;
	information	= Info_Mod_Shakir_GaunerWerden2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_GaunerWerden2_Condition()
{
	if (Mod_ASS_ShakirGritta == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden2_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_00"); //Wow! To wszystko. Ale powitanie!

	if (Mod_ASS_Yussuf == 1)
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_01"); //Nicosc na spotkanie. Ukonczylem wszystkie zadania. Jaki jest nastepny krok?
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_02"); //Zostalem poinformowany o wszystkim i mysle, ze jestescie Panstwo doskonale przygotowani do przylaczenia sie do naszego stowarzyszenia.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden2_15_03"); //Nicosc na spotkanie. Wciaz mam Jusuf.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_04"); //Zapomnij o nim. Jestes z nami tylko przez krótki czas i zrobiles juz tak wiele. Szybciej niz jakikolwiek inny kandydat.
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_05"); //Mysle, ze jestes doskonale przygotowany do przylaczenia sie do naszego stowarzyszenia.

		B_SetTopicStatus	(TOPIC_MOD_ASS_YUSSUF_HILFE, LOG_SUCCESS);
	};

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_06"); //Jesli chcesz, mozesz dolaczyc do nas juz teraz.

		B_LogEntry	(TOPIC_MOD_ASS_VERTRAUEN, "Shakir byl bardzo podekscytowany moja praca. Mój egzamin jusufowy zdal i dal mi mozliwosc zostania kanciarzem.");
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden2_31_07"); //Niestety, juz teraz nalezysz do wielu spolecznosci.
	};

	B_GivePlayerXP	(250);

	AI_UnequipArmor	(Mod_580_NONE_Gritta_NW);

	AI_EquipArmor (Mod_580_NONE_Gritta_NW, ItAr_GrittasKleid);
};

INSTANCE Info_Mod_Shakir_GaunerWerden3 (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_GaunerWerden3_Condition;
	information	= Info_Mod_Shakir_GaunerWerden3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce byc oszustem.";
};

FUNC INT Info_Mod_Shakir_GaunerWerden3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_GaunerWerden2))
	&& (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_GaunerWerden3_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_GaunerWerden3_15_00"); //Chce byc oszustem.
	AI_Output(self, hero, "Info_Mod_Shakir_GaunerWerden3_31_01"); //Oto Twoja przepasc. Zglaszasz sie do wojownika Masuta.

	CreateInvItems	(hero, ITAR_Gauner, 1);

	B_ShowGivenThings	("Udanie sie w powietrze oszusta");

	B_GivePlayerXP	(250);

	Log_CreateTopic	(TOPIC_MOD_NEBENGILDEN, LOG_NOTE);
	B_LogEntry	(TOPIC_MOD_NEBENGILDEN, "Jestem teraz zabójca.");

	Mod_7117_ASS_Krieger_NW.aivar[AIV_PASSGATE] = TRUE;

	Mod_AnzahlNebengilden += 1;

	Assassinen_Dabei = TRUE;
	
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_54);
	Spine_UnlockAchievement(SPINE_ACHIEVEMENT_70);
};

INSTANCE Info_Mod_Shakir_Assassinengold (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Assassinengold_Condition;
	information	= Info_Mod_Shakir_Assassinengold_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Assassinengold_Condition()
{
	if (Mod_ASS_Assassinengold == 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Assassinengold_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Assassinengold_31_00"); //Witam powitaj, panie posle. Czy odniesliscie sukces?
	AI_Output(hero, self, "Info_Mod_Shakir_Assassinengold_15_01"); //Mysle, ze tak, tak. Zobaczmy teraz.
};

INSTANCE Info_Mod_Shakir_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Zeremoniendolch_Condition;
	information	= Info_Mod_Shakir_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Shakir_Zeremoniendolch_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_00"); //Cokolwiek nowego?
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_01"); //Nie. Dostales cos?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_02"); //Mozesz sie zalozyc! Mysle, ze jest tam cos warzacego.
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_03"); //Co masz na mysli?
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_04"); //Wojownicy sa jakos niespokojni. Zawsze ktos ucieka z tego miejsca lub wraca. Nawet w ciagu dnia.
	AI_Output(self, hero, "Info_Mod_Shakir_Zeremoniendolch_31_05"); //Kiedy nikt inny nie opuszcza obozu w ciagu dnia......
	AI_Output(hero, self, "Info_Mod_Shakir_Zeremoniendolch_15_06"); //Zobacze.
};

INSTANCE Info_Mod_Shakir_Blutkelch (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Blutkelch_Condition;
	information	= Info_Mod_Shakir_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj.";
};

FUNC INT Info_Mod_Shakir_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Masut_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_00"); //Witaj.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_01"); //W pancerzu wojennym! Prawie Cie nie rozpoznawal. Jak Pan....?
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_02"); //Nie ma to teraz znaczenia. Powiedz mi, czy zauwazyles czarodziejów opuszczajacych obóz w nocy?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_03"); //Tak, najpierw jest Mufid, a potem jeszcze jeden. Nie znam jednak jego nazwiska.
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_04"); //Mieli pól nocy na drodze.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_05"); //Uh-huh. Czy oni cos mówili?
	AI_Output(self, hero, "Info_Mod_Shakir_Blutkelch_31_06"); //Nah, w pospiechu.
	AI_Output(hero, self, "Info_Mod_Shakir_Blutkelch_15_07"); //Hmm..... dziekuje.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Dowiedzialem sie, ze niektórzy magowie opuszczaja obóz w nocy. Musi miec cos wspólnego z kielichem.");
};

INSTANCE Info_Mod_Shakir_NachSchlacht (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_NachSchlacht_Condition;
	information	= Info_Mod_Shakir_NachSchlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce, abyscie przyszli do rady.";
};

FUNC INT Info_Mod_Shakir_NachSchlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht2))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Shakir_NachSchlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_00"); //Chce, abyscie przyszli do rady.
	AI_Output(self, hero, "Info_Mod_Shakir_NachSchlacht_31_01"); //Co sie tam dzieje?
	AI_Output(hero, self, "Info_Mod_Shakir_NachSchlacht_15_02"); //Dowiesz sie. Idz na to.

	B_StartOtherRoutine	(Mod_7105_ASS_Aabid_NW,	"START");
	B_StartOtherRoutine	(Mod_7106_ASS_Ramsi_NW,	"START");
	B_StartOtherRoutine	(Mod_7102_ASS_Zeki_NW,	"START");
	B_StartOtherRoutine	(Mod_7103_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7108_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7107_ASS_Gauner_NW,	"START");
	B_StartOtherRoutine	(Mod_7113_ASS_Yussuf_NW,	"START");
	B_StartOtherRoutine	(Mod_7111_ASS_Yasin_NW,	"START");
	B_StartOtherRoutine	(Mod_7104_ASS_Shakir_NW,	"START");

	Npc_RemoveInvItems	(hero, ItKe_XR_NW_HOEHLE_01, 1);
};

INSTANCE Info_Mod_Shakir_Pickpocket (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_Pickpocket_Condition;
	information	= Info_Mod_Shakir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_90;
};

FUNC INT Info_Mod_Shakir_Pickpocket_Condition()
{
	C_Beklauen	(75, ItPo_Pflanzengift, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_BACK, Info_Mod_Shakir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Shakir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Shakir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Shakir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Shakir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Shakir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Shakir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Shakir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Shakir_EXIT (C_INFO)
{
	npc		= Mod_7104_ASS_Shakir_NW;
	nr		= 1;
	condition	= Info_Mod_Shakir_EXIT_Condition;
	information	= Info_Mod_Shakir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Shakir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Shakir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
