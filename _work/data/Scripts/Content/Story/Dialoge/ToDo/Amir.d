INSTANCE Info_Mod_Amir_Hi (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Hi_Condition;
	information	= Info_Mod_Amir_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Hi_Condition()
{
	if (Mod_AnzahlNebengilden < MaxNebengilden)
	&& (Mod_Gilde > 3)
	&& (Mod_DidCrime)
	&& (hero.guild != GIL_PAL)
	&& (Wld_IsTime(22,00,08,00))
	&& (Kapitel >= 2)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Hi_13_00"); //Jakim facetem jestes? Czy jestes zainteresowany pomaganiem mi w czyms, dzieciak?

	Info_ClearChoices	(Info_Mod_Amir_Hi);

	Info_AddChoice	(Info_Mod_Amir_Hi, "Nie, nie interesuje sie!", Info_Mod_Amir_Hi_B);
	Info_AddChoice	(Info_Mod_Amir_Hi, "Tak, ale zawsze! Co o tym chodzi?", Info_Mod_Amir_Hi_A);
};

FUNC VOID Info_Mod_Amir_Hi_B()
{
	AI_Output(hero, self, "Info_Mod_Amir_Hi_B_15_00"); //Nie, nie interesuje sie!
	AI_Output(self, hero, "Info_Mod_Amir_Hi_B_13_01"); //No cóz, wtedy sie mylilem. Wyjdz z oczu i nigdy nie wróc!

	Info_ClearChoices	(Info_Mod_Amir_Hi);
};

FUNC VOID Info_Mod_Amir_Hi_A()
{
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_00"); //Tak, ale zawsze! Co o tym chodzi?
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_01"); //(smiling) No cóz, wiedzialem, ze moge liczyc na takiego czlowieka jak ty. To zadanie jest pilne, wiec trzeba mnie sluchac uwaznie i ciezko pracowac.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_02"); //Placa jest wysoka i mozna zrobic z niej cos wielkiego.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_03"); //Nie bij sie wokól krzewu, po prostu powiedz mi co robic. Mam nadzieje, ze moja nagroda bedzie sprawiedliwa.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_04"); //Nie martw sie o swoja nagrode, nie martw sie o to, co dostaniesz. Ostrzegam, nie bedzie to latwe zadanie.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_05"); //Strzelaj juz!
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_06"); //W dzielnicy portowej w miescie jest bardzo bogaty obywatel, który ma cos, co chcialbym miec.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_07"); //Jeden z trzech tak zwanych kielichów krwi, które maja rzekomo tajemnicze moce. Niestety, on nie wyrzuca tego skarbu i to mnie troche martwi.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_08"); //Chce, zebyscie pozbyli sie tej gliny i przywiezli Puchar do was dzisiejszego wieczora. Ostrzezcie sie jednak: Lehmar zatrudnil dwóch kutroatrów do patrolowania w nocy z mojego powodu.
	AI_Output(self, hero, "Info_Mod_Amir_Hi_A_13_09"); //Badz wiec z nia ostrozny. Bede czekac na Ciebie przy wschodniej bramie miasta, gdy zadanie sie skonczy.
	AI_Output(hero, self, "Info_Mod_Amir_Hi_A_15_10"); //Wszystko w porzadku, ruszam sie naprzód. Spotkam cie tam.

	Log_CreateTopic	(TOPIC_MOD_ASS_LEHMAR, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_LEHMAR, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_LEHMAR, "W swiatyni miasta Khorinis spotkalem dziwna postac. Mezczyzna, który nie podawal mi zadnych informacji na temat siebie, zadbal o to, abym mial przed soba wazne zadanie. W nocy mam odebrac tak zwana kubek krwi od pozyczkodawcy Lehmar i zabic go. Ale czlowiek ostrzegl mnie, ze Lehmar bedzie otoczony przez jakichs strazników. Musze o czyms pomyslec.");

	Mod_ASS_AmirLehmar = 1;

	Info_ClearChoices	(Info_Mod_Amir_Hi);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "LEHMAR");
};

INSTANCE Info_Mod_Amir_Lehmar (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Lehmar_Condition;
	information	= Info_Mod_Amir_Lehmar_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Lehmar_Condition()
{
	if (Npc_IsDead(Mod_537_NONE_Lehmar_NW))
	&& (Npc_HasItems(hero, ItMi_BloodCup_MIS) == 1)
	&& (Npc_HasItems(hero, ItWr_BookLehmar) == 1)
	&& (Npc_HasItems(hero, ItMi_GoldPlate) >= 6)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	&& (Mod_ASS_AmirLehmar == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Lehmar_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_00"); //(smiech) Nie spodziewalem sie, ze znów cie zobacze. Myslalem, ze sie przestraszyles i nie pojawiles sie gonna.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_01"); //Szanuj, maly, dobra praca!
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_02"); //Nie bylo to tez latwe zadanie, ale mam to, o co prosiles.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_03"); //Przyniesliscie puchar?
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_04"); //Tak, a na piersi Lehmara byly jeszcze inne rzeczy. Ksiazka i szesc zlotych talerzy z drobnym napisem runowym i 500 kawalkami zlota.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_05"); //Chce, zebys zatrzymal zloto, ale reszte mi oddasz.

	Npc_RemoveInvItems	(hero, ItMi_BloodCup_MIS, 1);
	Npc_RemoveInvItems	(hero, ItWr_BookLehmar, 1);
	Npc_RemoveInvItems	(hero, ItMi_GoldPlate, 6);

	B_ShowGivenThings	("Kubek z krwia, ksiazka i szesc zlotych talerzyków.");

	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_06"); //A co z moja nagroda?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_07"); //Zapomnialem o tym wszystkim. Oto 100 sztuk zlota za twoje problemy, a ja mam ciekawa oferte dla ciebie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 100);

	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_15_08"); //Jaka jest Twoja oferta?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_13_09"); //Po pierwsze, czy w ogóle chcesz sie z tym uporac?

	B_GivePlayerXP	(250);

	B_SetTopicStatus	(TOPIC_MOD_ASS_LEHMAR, LOG_SUCCESS);

	B_Göttergefallen(3, 1);

	B_RemoveNpc	(Mod_7363_VLK_LehmarWache_NW);
	B_RemoveNpc	(Mod_7364_VLK_LehmarWache_NW);

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);

	Info_AddChoice	(Info_Mod_Amir_Lehmar, "Nie, raczej nie. Do zobaczenia!", Info_Mod_Amir_Lehmar_B);

	if (Mod_AnzahlNebengilden < MaxNebengilden)
	{
		Info_AddChoice	(Info_Mod_Amir_Lehmar, "Jasne!", Info_Mod_Amir_Lehmar_A);
	};
};

FUNC VOID Info_Mod_Amir_Lehmar_B()
{
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_B_15_01"); //Nie, raczej nie. Do zobaczenia!
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_B_13_00"); //Jakze szkoda, nie ma nic, co mozesz z tym zrobic. Mysle, ze juz nigdy sie nie zobaczymy.

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);
};

FUNC VOID Info_Mod_Amir_Lehmar_A()
{
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_00"); //Jasne!
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_01"); //Wiedzialem, ze jestes wlasciwym czlowiekiem, wiec chce ci wszystko wyjasnic.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_02"); //Jaka oferte masz dla mnie?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_03"); //Jak widac, nie naleze do tych ludzi, którzy legalnie zarabiaja swoje zloto. Jestem jednym z zabójców z Varant, który osiedlil sie tutaj na Khorinis.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_04"); //Zawsze szukamy nowych ludzi i wydaje sie, ze jestes czlowiekiem, którego mozna sobie wyobrazic jako zabójce.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_05"); //Czy mordercy? Jak dotarles na wyspe?
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_06"); //Nasi potezni liderzy telepont to wszystko na wyspie, poniewaz nie chcielismy juz dluzej przebywac na kontynencie.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_07"); //Dlatego tez przybylismy na wyspe i od tego czasu ukrywamy sie w jaskini kolo miasta. Tam jest nasz obóz i stamtad dzialamy potajemnie.
	AI_Output(hero, self, "Info_Mod_Amir_Lehmar_A_15_08"); //Jestem zaszczycony, ze otrzymalem te oferte i chcialbym dolaczyc do Panstwa.
	AI_Output(self, hero, "Info_Mod_Amir_Lehmar_A_13_09"); //(jedzenia) Bardzo dobre. Wiec podazaj za mna, poprowadze cie do kryjówki naszych ludzi. Pospiesz sie!

	Log_CreateTopic	(TOPIC_MOD_ASS_VERSTECK, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_ASS_VERSTECK, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_ASS_VERSTECK, "Teraz Amir poprowadzi mnie do kryjówki zabójców. Mówi sie, ze jest to jaskinia w poblizu miasta.");

	Mod_ASS_AmirLehmar = 2;

	Info_ClearChoices	(Info_Mod_Amir_Lehmar);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "VERSTECK");
};

INSTANCE Info_Mod_Amir_AtVersteck (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_AtVersteck_Condition;
	information	= Info_Mod_Amir_AtVersteck_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_AtVersteck_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Amir_Lehmar))
	&& (Mod_ASS_AmirLehmar == 2)
	&& (Npc_GetDistToWP(self, "WP_ASSASSINE_13") < 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_AtVersteck_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_AtVersteck_13_00"); //No cóz, tam jestesmy. Za tymi drzwiami znajduja sie sale, które nazywamy naszym domem. Daje Ci klucz do drzwi, abys mógl przejsc.

	B_GiveInvItems	(self, hero, ItKe_XR_NW_HOEHLE_01, 1);

	AI_Output(self, hero, "Info_Mod_Amir_AtVersteck_13_01"); //Zobaczymy cie jeszcze raz, ale musze isc. Do zobaczenia!
	AI_Output(hero, self, "Info_Mod_Amir_AtVersteck_15_02"); //Okay. Do zobaczenia wokól Amir, zatroszczcie sie!
	
	B_GivePlayerXP	(50);

	B_SetTopicStatus	(TOPIC_MOD_ASS_VERSTECK, LOG_SUCCESS);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "START");

	B_Göttergefallen(3, 1);
};

INSTANCE Info_Mod_Amir_Zeremoniendolch (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch_Info;
	permanent	= 0;
	important	= 0;
	description	= "Witaj, Amir.";
};

FUNC INT Info_Mod_Amir_Zeremoniendolch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Azhar_Later))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch_Info()
{
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_00"); //Witaj, Amir. Mówil pan o uroczystym sztylecie w obozie. Czy mozesz mi o tym opowiedziec wiecej?
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_01"); //Nie tak naprawde. Ale ten facet z wody, który tam przy swiatyni opowiedzial mi o sztylecie.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_02"); //Dobrze, zapytam go. I nie pijcie tak duzo, trzeba to ogladac.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_03"); //W tym pubie poznaje wiecej niz na zewnatrz na placu.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch_13_04"); //Nie slysze juz dzojstika z tego granatowego plaszcza. Zawsze opowiadaj te sama historie.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch_15_05"); //Cokolwiek mówisz. Porozmawiam z Vatrasami.
	
	B_LogEntry	(TOPIC_MOD_ASS_ZEREMONIENDOLCH, "Amir wyslal mnie do Vatras. Z pewnoscia wie wiecej.");
};

INSTANCE Info_Mod_Amir_Zeremoniendolch2 (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch2_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Zeremoniendolch2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Zahit_PosWechsel))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch2_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch2_13_00"); //Hej! Czy mnie szczurowales? Nagle musze go pilnowac.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch2_15_01"); //Juz nie siedziec caly dzien wokól pubu, huh? Ale nie, nic nie powiedzialem.
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch2_13_02"); //Jesli sie dowiedzialem, ze.... Nawiasem mówiac, rada czeka na Ciebie.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch2_15_03"); //Wiem.
};

INSTANCE Info_Mod_Amir_Zeremoniendolch3 (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Zeremoniendolch3_Condition;
	information	= Info_Mod_Amir_Zeremoniendolch3_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Zeremoniendolch3_Condition()
{
	if (Npc_HasItems(hero, ItMw_Avaquar) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Zeremoniendolch3_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Zeremoniendolch3_13_00"); //Robisz dobrze, zawsze w ruchu. Stoje tu z nogami w zoladku.
	AI_Output(hero, self, "Info_Mod_Amir_Zeremoniendolch3_15_01"); //Sprawny czlowiek jest wlascicielem swiata.
};

INSTANCE Info_Mod_Amir_Blutkelch (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Blutkelch_Condition;
	information	= Info_Mod_Amir_Blutkelch_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Amir_Blutkelch_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Shakir_Blutkelch))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Amir_Blutkelch_Info()
{
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_00"); //Czy znów na drodze?
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_01"); //Jak widac. Powiedzmy, czy zauwazyles cos tutaj?
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_02"); //Wlasciwie nie. Ale od dawna tu nie stalem.
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_03"); //Wojownik uwaza jednak, ze ostatnio bylo tam duzo ruchu.
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_04"); //Uh-huh. A kto tu idzie?
	AI_Output(self, hero, "Info_Mod_Amir_Blutkelch_13_05"); //W ciagu dnia niektórzy wojownicy i w nocy, okolo pólnocy, magik.
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_06"); //(równiez) Hm..... Wojownicy prawdopodobnie trenuja na plaskowyzu. Ale magowie.... Hm....
	AI_Output(hero, self, "Info_Mod_Amir_Blutkelch_15_07"); //Erol ten powiedzial cos o zielonym swietle w jaskini nad malym jeziorem..... Zobaczmy teraz.

	B_LogEntry	(TOPIC_MOD_ASS_LASTBLUTKELCH, "Odwiedzi jaskinie Goblin niedaleko Erolu. Okolo pólnocy....");

	Wld_SendTrigger	("EVT_ASSASSINENREPERTOIRE");

	B_StartOtherRoutine	(Mod_7156_ASS_Mirza_NW,	"VERRAT");
	B_StartOtherRoutine	(Mod_7149_ASS_Mufid_NW,	"VERRAT");
};

INSTANCE Info_Mod_Amir_Pickpocket (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_Pickpocket_Condition;
	information	= Info_Mod_Amir_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Amir_Pickpocket_Condition()
{
	C_Beklauen	(111, ItMi_Gold, 41);
};

FUNC VOID Info_Mod_Amir_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

	Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_BACK, Info_Mod_Amir_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Amir_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Amir_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
};

FUNC VOID Info_Mod_Amir_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Amir_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Amir_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Amir_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Amir_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Amir_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Amir_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Amir_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Amir_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Amir_EXIT (C_INFO)
{
	npc		= Mod_7199_ASS_Amir_NW;
	nr		= 1;
	condition	= Info_Mod_Amir_EXIT_Condition;
	information	= Info_Mod_Amir_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Amir_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Amir_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
