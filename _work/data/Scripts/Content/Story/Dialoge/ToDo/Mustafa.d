INSTANCE Info_Mod_Mustafa_Hi (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Hi_Condition;
	information	= Info_Mod_Mustafa_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj kielich krwi.";
};

FUNC INT Info_Mod_Mustafa_Hi_Condition()
{
	if (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Hi_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Hi_15_00"); //Tutaj kielich krwi.
	AI_Output(self, hero, "Info_Mod_Mustafa_Hi_13_01"); //Wybitny. Daj ja Na' im.
};

INSTANCE Info_Mod_Mustafa_PosWechsel (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_PosWechsel_Condition;
	information	= Info_Mod_Mustafa_PosWechsel_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dobry dzien, Wysoka Rada. Chcecie mnie panstwo zobaczyc.";
};

FUNC INT Info_Mod_Mustafa_PosWechsel_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_PosWechsel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_PosWechsel_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_00"); //Dobry dzien, Wysoka Rada. Chcecie mnie panstwo zobaczyc.
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_01"); //To plotka o trzecim filizance krwi. Mówi sie, ze jeden z dealerów zaoferowal taka mozliwosc.
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_02"); //Cóz, jest wielu dealerów. Kto dokladnie ma kielich?
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_03"); //Skad powinienem wiedziec? Znajdz kubek i przynies go do nas. I nie zapomnij, ze wlasciciel musi umrzec.
	AI_Output(hero, self, "Info_Mod_Mustafa_PosWechsel_15_04"); //Zawsze do Twojej dyspozycji, Wysoka Rada.
	AI_Output(self, hero, "Info_Mod_Mustafa_PosWechsel_13_05"); //Spute sie wiec.

	Log_CreateTopic	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Jeden z kupców zajmuje trzecie miejsce. kielich krwi. Musze ja dostac i zabrac do Mustafy. Moze znajde ja w miescie. Zacznij na targowisku....");
};

INSTANCE Info_Mod_Mustafa_Blutkelch (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Blutkelch_Condition;
	information	= Info_Mod_Mustafa_Blutkelch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czesc, Rada. Czy dostales jeszcze trzeci kielich krwi?";
};

FUNC INT Info_Mod_Mustafa_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Blutkelch_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_00"); //Czesc, Rada. Czy dostales jeszcze trzeci kielich krwi?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_01"); //Nie. Ale czekam pilnie. Dlaczego pytasz?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_02"); //Nie udalo mi sie jeszcze odnalezc puchar.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_03"); //Czy moge Cie o cos zapytac?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_04"); //Oczywiscie.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_05"); //Do czego sluza te trzy kielichy?
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_06"); //Dowiesz sie, kiedy wszyscy sie spotkamy.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_07"); //A co z ceremonialnym sztyletem, który powinienes dostac?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_08"); //To równiez prace w toku. Dowiedzialem sie, ze sztylet jest gdzies w Jharkendarze. Jeszcze nie wiem gdzie.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_09"); //Jharkendar? Gdzie to jest?
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_10"); //Odlegly obszar na wyspie, do którego mozna dotrzec wylacznie statkiem lub portalem magów wodnych.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_11"); //Ciekawe. Bedziesz musial pózniej wiecej o tym opowiedziec. Teraz najpierw zakoncz swoje zadania.
	AI_Output(self, hero, "Info_Mod_Mustafa_Blutkelch_13_12"); //Ale sztylet jest dla mnie wazniejszy. Przynies go do mnie, a bedziesz wojownikiem.
	AI_Output(hero, self, "Info_Mod_Mustafa_Blutkelch_15_13"); //Próbuje, dobrze radze.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Calyx zniknal. Wyglada jak czyjas gotowanie wlasnej zupy. Nie jest latwo zorientowac sie, co sie dzieje.");
};

INSTANCE Info_Mod_Mustafa_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Zeremoniendolch_Condition;
	information	= Info_Mod_Mustafa_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Zeremoniendolch3))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Zeremoniendolch_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch_13_00"); //Och, tam jestescie. Czy....? Odlozyc troche na bok.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "ATKAMAL");
	B_StartOtherRoutine	(Mod_7163_ASS_Kamal_NW, "PLAUDERN");
};

INSTANCE Info_Mod_Mustafa_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Zeremoniendolch2_Condition;
	information	= Info_Mod_Mustafa_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Zeremoniendolch))
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_53") < 250)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Zeremoniendolch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_00"); //Masz ceremonialny sztylet?
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_01"); //To bylo trudne, ale dostalem go.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_02"); //Pozwole sobie to zobaczyc.

	B_GiveInvItems	(hero, self, ItMw_Avaquar, 1);

	AI_UnequipWeapons	(self);

	Npc_RemoveInvItems	(self, ItMw_Katana, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_ReadyMeleeWeapon	(self);

	AI_PlayAni	(self, "T_1HINSPECT");

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_03"); //To wyglada na niego, a wlasciwie to dobrze. Spójrz, trzymasz sztylet na chwile obecna.

	AI_UnequipWeapons	(self);

	B_GiveInvItems	(self, hero, ItMw_Avaquar, 1);

	CreateInvItems	(self, ItMw_Katana, 1);

	AI_EquipBestMeleeWeapon	(self);

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_04"); //Prawdopodobnie nadal bedziesz go potrzebowal. Ale do nikogo nie mówiac o tym!
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_05"); //Zrozumiale. Chcial pan uczynic mnie wojownikiem.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_06"); //To prawda. Niniejszym wyznaczam Pana Assassin Warrior i przekazuje mu sprzet.

	CreateInvItems	(hero, ItAr_Assassine_01, 1);

	B_ShowGivenThings	("Zbroja zabójcza otrzymana");

	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_07"); //I gratuluje szybkiego wejscia na nasza Kaste. Chcialbym, abysmy mieli wiecej panskiego kalibru.
	AI_Output(hero, self, "Info_Mod_Mustafa_Zeremoniendolch2_15_08"); //Dzieki. Musze zadbac o kielich krwi.
	AI_Output(self, hero, "Info_Mod_Mustafa_Zeremoniendolch2_13_09"); //Zrób to. I porozmawiaj z Masutem. Z pewnoscia zauwazyl cos niezwyklego.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
	B_StartOtherRoutine	(Mod_7163_ASS_Kamal_NW, "START");

	B_SetTopicStatus	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, LOG_SUCCESS);

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Mustafa uczynila mnie wojownikiem. Prosze pozwolic mi zachowac na chwile obecna ceremonialny sztylet. Jest tez cos na zewnatrz! Ale najpierw jednak, kielich.");

	B_GivePlayerXP	(300);
};

INSTANCE Info_Mod_Mustafa_Verschwoerung (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Wysoka rada, musze panstwu cos pokazac.";
};

FUNC INT Info_Mod_Mustafa_Verschwoerung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mirza_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung_15_00"); //Wysoka rada, musze panstwu cos pokazac.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung_15_01"); //Jesli chcesz mnie nasladowac. Czekam na Ciebie w korytarzu przy kupie skrzynki.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung_13_02"); //Jesli to musi byc......

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "FOLLOW");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung2 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung2_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Npc_HasItems(hero, ItMi_Bloodcup_MIS) == 1)
	&& (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung2_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_00"); //Co widzisz tutaj? Moze kielich krwi?
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_01"); //Dostalem to jedno. Wlasciwie dwa z nich. Ale....
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_02"); //Pozwole sobie to zobaczyc.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_03"); //Tutaj.

	Npc_RemoveInvItems	(hero, ItMi_Bloodcup_MIS, 1);
	Npc_RemoveInvItems	(hero, ItMi_Bloodcup_Richter, 1);

	B_ShowGivenThings	("kielich");

	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_04"); //Mam jednak cos do powiedzenia, czego nikt inny nie powinien slyszec.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_05"); //Jaka jest okolicznosc. W Radzie nie mamy zadnych tajemnic.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_06"); //Wiem lepiej niz to. Sluchajcie, magowie plasuja spisek pod przywództwem Rat Norek.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_07"); //Brak mozliwosci.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_08"); //Tak, tak. Masz dwie kielichy.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_09"); //Czarodziej Mufid odnalazl go przed mna i trzymal w klatce piersiowej w jaskini z dala od miasta. Tam tez byla druga. kielich.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_10"); //Jestem pewien, ze drugi z nich to pierwszy raz Norek z Amir.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_11"); //I ostatni dalem Na' im.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_12"); //Hmm. Móglbym sie dowiedziec, czy Norek ma jeszcze swój kielich. Ale jaki jest cel?
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_13"); //Magicy planuja opuscic tutaj obóz i zanurzyc sie w tej jaskini.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_14"); //Nastepnie pozwólmy Zahitowi w miescie opowiedziec paladynom o naszej kryjówce.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_15"); //Norek uwaza, ze jest w stanie zdobyc tutaj licencje na Khorinis.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_16"); //Niewiarygodne, ale mozliwe.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_17"); //Sluchaj, idz do miasta i wycisz zdrajce.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_18"); //Gonna dowiaduje sie, którego kielicha brakuje. Spotkam Cie tutaj.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_19"); //Tak, Rada.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_20"); //Trzymac wlaczony, trzymac wcisniety. Próbowales jeszcze nowego sztyletu?

	if (Mod_ASS_AvaquarGemeuchelt == 1)
	{
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_21"); //Sztylet ceremonialny? Ach, tak, to straszna rzecz.
		AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_22"); //Nastepnie uzyj tego. Nie mozemy sobie pozwolic na zadne zamieszanie.
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_23"); //Sztylet ceremonialny? Nie.... Nie.
		AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung2_13_24"); //Nastepnie uzyj tego. Nie mozemy sobie pozwolic na zadne zamieszanie.
		AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung2_15_25"); //Zrobi to.
	};

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "Powiedzialem Mustafie wszystko o Noreku i czarodziejach. On wydaje mi sie wierzyc. Teraz mam uciszyc zdrajce w miescie. Potem znów spotykam sie z Mustafa na pudelkach.");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung3 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung3_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung2))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Npc_IsDead(Mod_7100_ASS_Zahit_NW))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung3_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_00"); //Kiedys zwrócilam uwage Rady na kielichy krwi.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_01"); //Norek nie mógl go pokazac. Powiedzial, ze trzyma go w bezpiecznym miejscu.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_02"); //Na' im mial z nim kielich....
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_03"); //I zdrajca nie zyje.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_04"); //Wtedy otrzymana informacja musi miec racje.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_05"); //Teraz musze tylko wiedziec, która strona Rat Na' im jest naprawde na miejscu.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_06"); //Nadal ma kielich.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_07"); //Tak, ale jesli jest po drugiej stronie, to nie ma znaczenia, czy on czy Norek go ma.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_08"); //Jeszcze raz doprawdy. Hm.... Musialbys nad nimi pracowac. Chalice przyjezdzaja, nie zauwazajac tego Na' im. We wszystkich przypadkach....
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_09"); //To cos sie stalo. Ale jak? Zawsze nosi go razem z nim.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_10"); //Byc moze spiacy zaklecie?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung3_13_11"); //Mogloby to dzialac. Ale jestem pewien, ze Norek zauwazylby....
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_12"); //Dwa spiace zaklecia.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_13"); //Bardzo dobry. Ale bedziemy czekac na noc. To tutaj wiekszosc magów spi.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung3_15_14"); //Zabierasz teraz obie kielichy i zabezpieczaj je. Nigdy nie znasz......

	CreateInvItems	(hero, ItMi_Bloodcup_MIS, 1);
	CreateInvItems	(hero, ItMi_Bloodcup_Richter, 1);

	B_ShowGivenThings	("filizanki krwi zakonserwowanej");

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "Norek i jego magowie planuja zdrade stanu. Na razie powinienem zabezpieczyc dwie dostepne kielichy. Dotyczy wszystkich przypadków. A dzis wieczorem w radzie rady, z dwoma zakleciami spiacymi....");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung4 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung4_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung4_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Mustafa_Verschwoerung4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung3))
	&& (Npc_GetDistTowP(self, "WP_ASSASSINE_41") < 500)
	&& (Wld_IsTime(22,00,24,00))
	&& ((Npc_HasItems(hero, ItSc_Sleep) >= 2)
	|| (Npc_HasItems(hero, ItRu_Sleep) >= 1))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung4_Info()
{
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_00"); //Najwyzszy czas, abys przyszedl. Norek jest bardzo nerwowy. Zapytany o Mufid kilka razy.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_01"); //Pozostali magowie sa równiez niespokojni.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung4_15_02"); //Czy powinienem teraz udac sie do rady?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_03"); //Absolutnie. Spac i zasnac i wziac kielich Na' im. Mozesz to zrobic.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung4_13_04"); //Rozmawiam teraz z wojownikami.

	AI_StopProcessInfos	(self);

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "Nadszedl czas. Teraz musze spac Norek i Na' im do spania, a potem Na' im zdjac filizanke......");
};

INSTANCE Info_Mod_Mustafa_Verschwoerung5 (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Verschwoerung5_Condition;
	information	= Info_Mod_Mustafa_Verschwoerung5_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dostalem puchar! Co teraz?";
};

FUNC INT Info_Mod_Mustafa_Verschwoerung5_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Mustafa_Verschwoerung4))
	&& (Mod_ASS_NaimBlutkelch == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_Verschwoerung5_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung5_15_00"); //Dostalem puchar! Co teraz?
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung5_13_01"); //Dobra praca, wojownik. Zdobyles sobie range elitarnego zabójcy.
	AI_Output(self, hero, "Info_Mod_Mustafa_Verschwoerung5_13_02"); //Teraz chalety zabierz do schronienia i jak najszybciej wróc do domu.
	AI_Output(hero, self, "Info_Mod_Mustafa_Verschwoerung5_15_03"); //Dziekuje, dobra rada. Bede sie spieszyc.

	B_LogEntry	(TOPIC_MOD_ASS_VERSCHWOERUNG, "Wezmiemy kubki do bezpieczenstwa i jak najszybciej wróce......");
	B_SetTopicStatus	(TOPIC_MOD_ASS_LASTBLUTKELCH, LOG_SUCCESS);

	B_GivePlayerXP	(500);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mustafa_NachSchlacht (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_NachSchlacht_Condition;
	information	= Info_Mod_Mustafa_NachSchlacht_Info;
	permanent	= 0;
	important	= 0;
	description	= "Tutaj.";
};

FUNC INT Info_Mod_Mustafa_NachSchlacht_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Naim_NachSchlacht2))
	&& (Npc_HasItems(hero, ItMi_Bloodcup_Richter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Mustafa_NachSchlacht_Info()
{
	AI_Output(hero, self, "Info_Mod_Mustafa_NachSchlacht_15_00"); //Tutaj.

	B_GiveInvItems	(hero, self, ItMi_Bloodcup_Richter, 1);

	AI_Output(self, hero, "Info_Mod_Mustafa_NachSchlacht_13_01"); //Dziekuje, Warrior. Dokladnie tak jak mówi lore. Nowe zycie dla napoju z filizanki.
	AI_Output(hero, self, "Info_Mod_Mustafa_NachSchlacht_15_02"); //Co to oznacza?
	AI_Output(self, hero, "Info_Mod_Mustafa_NachSchlacht_13_03"); //Porozmawiaj z Na' im. Wyjasni to Tobie. Nadal jestem slaby.

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");
};

INSTANCE Info_Mod_Mustafa_Pickpocket (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_Pickpocket_Condition;
	information	= Info_Mod_Mustafa_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Mustafa_Pickpocket_Condition()
{
	C_Beklauen	(118, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

	Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_BACK, Info_Mod_Mustafa_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Mustafa_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Mustafa_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Mustafa_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Mustafa_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Mustafa_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Mustafa_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Mustafa_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Mustafa_EXIT (C_INFO)
{
	npc		= Mod_7146_ASS_Mustafa_NW;
	nr		= 1;
	condition	= Info_Mod_Mustafa_EXIT_Condition;
	information	= Info_Mod_Mustafa_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Mustafa_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Mustafa_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
