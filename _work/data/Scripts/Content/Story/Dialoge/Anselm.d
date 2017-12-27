INSTANCE Info_Mod_Anselm_Hi (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Hi_Condition;
	information	= Info_Mod_Anselm_Hi_Info;
	permanent	= 0;
	important	= 0;
	description	= "Kim jestes?";
};

FUNC INT Info_Mod_Anselm_Hi_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Anselm_Hi_Info()
{
	B_Say	(hero, self, "$WHOAREYOU");

	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_00"); //Jestem gubernatorem Khoraty!
	AI_Output(hero, self, "Info_Mod_Anselm_Hi_15_01"); //Gubernator? Kim jest Twój przelozony?
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_02"); //Nie, zle rozumiesz. Jestem gubernatorem. Utrzymam miasto w dobrej kondycji, ale nikomu nie sluze.
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_03"); //Ale jaki szczesliwy zbieg okolicznosci, który los ci dal!
	AI_Output(self, hero, "Info_Mod_Anselm_Hi_16_04"); //Mialem wlasnie pomysl, aby przebadac Khorate i okolice, aby w koncu wiedziec, jak wielkie jest moje imperium.
};

INSTANCE Info_Mod_Anselm_Landvermessung (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Landvermessung_Condition;
	information	= Info_Mod_Anselm_Landvermessung_Info;
	permanent	= 0;
	important	= 0;
	description	= "Potrzebujesz mojej pomocy?";
};

FUNC INT Info_Mod_Anselm_Landvermessung_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Landvermessung_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Landvermessung_15_00"); //Potrzebujesz mojej pomocy?
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_01"); //Dokladnie w porzadku! Wydaje mi sie, ze zlapalem prawdziwego mysliciela!
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_02"); //Tak wiec pierwsza rzecza, która zrobisz jest udanie sie do Vincenta, czyli mysliwego poza miastem.
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_03"); //Poluje wszedzie, wiec bedzie wiedzial jak duza jest okolica Khoraty.
	AI_Output(self, hero, "Info_Mod_Anselm_Landvermessung_16_04"); //Kiedy juz to zrobisz, jedyne co musimy zrobic to dowiedziec sie wiecej o obszarze Khoraty. Znakomity!

	Log_CreateTopic	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Anselm, który chce zostac wyraznie nazwany gubernatorem Khoraty, chce, aby badano Khorate i okolice. Mam jechac do Vincenta, mysliwego poza miastem i poprosic go o szacunkowa wycene.");
};

INSTANCE Info_Mod_Anselm_LandvermessungVincent (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungVincent_Condition;
	information	= Info_Mod_Anselm_LandvermessungVincent_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam wiadomosci.";
};

FUNC INT Info_Mod_Anselm_LandvermessungVincent_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Vincent_Landvermessung))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungVincent_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVincent_15_00"); //Mam wiadomosci. Okoliczny obszar Khorata ma powierzchnie pieciu mil kwadratowych. Mówi Vincent.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_01"); //Doskonaly! Jeszcze wiecej niz sie spodziewalem.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_02"); //Teraz nadal brakuje nam obszaru miasta. Lepiej zapytac Huberta.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVincent_16_03"); //Ze wzgledu na swoja prace duzo biegnie wokól Khoraty i zna swoja droge jak nikt inny.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Teraz musze poprosic pewnego Huberta o teren Khoraty....");

	B_StartOtherRoutine	(Mod_7380_OUT_Hubert_REL, "STREUNER");
};

INSTANCE Info_Mod_Anselm_LandvermessungHubert (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungHubert_Condition;
	information	= Info_Mod_Anselm_LandvermessungHubert_Info;
	permanent	= 0;
	important	= 0;
	description	= "Rozmawialam z Hubertem.";
};

FUNC INT Info_Mod_Anselm_LandvermessungHubert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Hubert_LandvermessungAlk))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungHubert_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungHubert_15_00"); //Rozmawialam z Hubertem.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_01"); //Co on mówi?
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungHubert_15_02"); //Khorata jest tak duza jak siedem sciernisk.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_03"); //Tak? Naprawde? Bylabym tego równiez zadowolona.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungHubert_16_04"); //Wykonal pan wspaniala prace. Jestem Wam gleboko zawdzieczam. Cala Khorata bedzie Panstwu wiecznie wdzieczna.

	B_GivePlayerXP	(150);

	B_LogEntry	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, "Wiec teraz skonczylem te dziwna prace. Dziekuje Bogom!");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_LANDVERMESSUNG, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Anselm_LandvermessungVerarsche (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_LandvermessungVerarsche_Condition;
	information	= Info_Mod_Anselm_LandvermessungVerarsche_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mówic.....";
};

FUNC INT Info_Mod_Anselm_LandvermessungVerarsche_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_00"); //Mówic.....
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_01"); //Co jeszcze jest?
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_02"); //Czy to moze mnie oszukujesz?
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_03"); //Oto ja!
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_04"); //Dokladnie.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_05"); //Nic mnie dalej nie stanie sie nic!
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_15_06"); //Lowca smieje sie z mnie, powinienem zadac pytanie alkoholikowi i ciesze sie z kazdej odpowiedzi byków.
	AI_Output(self, hero, "Info_Mod_Anselm_LandvermessungVerarsche_16_07"); //Hej! Nie patrzcie na to tak!

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);

	Info_AddChoice	(Info_Mod_Anselm_LandvermessungVerarsche, "Wszystko w porzadku....", Info_Mod_Anselm_LandvermessungVerarsche_B);
	Info_AddChoice	(Info_Mod_Anselm_LandvermessungVerarsche, "Mysle, ze nadszedl czas na bicie (....). )", Info_Mod_Anselm_LandvermessungVerarsche_A);
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_B_15_00"); //Wszystko w porzadku....

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);
};

FUNC VOID Info_Mod_Anselm_LandvermessungVerarsche_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_LandvermessungVerarsche_A_15_00"); //Mysle, ze nadszedl czas na bicie, czy nie myslisz?
	AI_Output(self, hero, "DEFAULT"); //

	Info_ClearChoices	(Info_Mod_Anselm_LandvermessungVerarsche);

	AI_StopProcessInfos	(hero);

	AI_Wait	(self, 3);

	self.flags = 0;

	B_Attack	(self, hero, AR_None, 2);
};

INSTANCE Info_Mod_Anselm_Ornament (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Ornament_Condition;
	information	= Info_Mod_Anselm_Ornament_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy wiesz cos o dziele zdobniczym?";
};

FUNC INT Info_Mod_Anselm_Ornament_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Larius_Ornament))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Ornament_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_00"); //Czy wiesz cos o dziele zdobniczym?
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_01"); //Co o czym? Masz na mysli cos starego?
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_02"); //Jest to fragment pierscienia, który zalozyciel miasta musial miec przy sobie.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_03"); //Ach, teraz wiem, co masz na mysli: saga o pochodzeniu khoraty. Nie badz przy mnie puchnacy!
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_04"); //Czy moge miec ten fragment? To wazne.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_05"); //Po co ci to jest potrzebne?
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_06"); //Magicy wody znalezli portal do swiata rodzinnego zalozyciela.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_07"); //Mozna go jednak otworzyc tylko z pierscieniem portalowym, a jego czesc nalezy znalezc w Relendel.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_08"); //Dzwieki wazne, mój chlopiec. Niestety, sam nie mam tego fragmentu, ale moge powiedziec, gdzie go znalezc zgodnie z legenda.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament_15_09"); //Gdzie?
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament_16_10"); //Gdybys byl obywatelem khoraty, powiedzialbym ci od razu, w przeciwnym razie informacja kosztowalaby 2000 zlotych monet.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Anselm mówi mi tylko o miejscu, w którym znajduje sie ornament, kiedy jestem obywatelem Khoratasa lub gdy zaplacilem za 2000 zlotych monet.");
};

INSTANCE Info_Mod_Anselm_Ornament2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Ornament2_Condition;
	information	= Info_Mod_Anselm_Ornament2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Rozmowa o ornamencie.....";
};

FUNC INT Info_Mod_Anselm_Ornament2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Ornament))
	&& (Mod_Anselm_Ornament == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Ornament2_Info()
{
	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);

	Info_AddChoice	(Info_Mod_Anselm_Ornament2, DIALOG_BACK, Info_Mod_Anselm_Ornament2_BACK);

	if (Mod_REL_Buerger == 1)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "Jestem obywatelem khoraty.", Info_Mod_Anselm_Ornament2_C);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 2000)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "Zloto 2000 zloto.... tu.", Info_Mod_Anselm_Ornament2_B);
	};
	if (Npc_HasItems(hero, ItMi_Gold) >= 1000)
	&& (Mod_Verhandlungsgeschick > 0)
	{
		Info_AddChoice(Info_Mod_Anselm_Ornament2, "Tysiac zlota powinno wystarczyc.", Info_Mod_Anselm_Ornament2_A);
	};
};

FUNC VOID Info_Mod_Anselm_Ornament2_D()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_00"); //Bardzo dobry.... Zgodnie z tradycja, uchodzca z Jharkendara byl wspólzalozycielem naszej dynastii.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_01"); //Mieszkal w obozie na zachód od Khoraty, który przerodzil sie w osade, ale zostal zniszczony przez pozar.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_02"); //Z przeleczy trzeba podazac droga w lewo, nie mozna przegapic ruin.
	AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_D_16_03"); //Jesli uciekinier przeniósl czesc portalu, znajdziesz go tam.
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_D_15_04"); //Bede w drodze od razu.

	B_LogEntry	(TOPIC_MOD_PORTAL, "Anselm powiedzial mi, ze ornament mozna znalezc w ruinach na zachód od Khoraty. Z przeleczy musialabym podazac sciezka w lewo....");

	Wld_InsertItem	(ItMi_Ornament_Priester, "FP_ITEM_ORNAMENT_PRIESTER");

	Mod_Anselm_Ornament = 1;

	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);
};

FUNC VOID Info_Mod_Anselm_Ornament2_BACK()
{
	Info_ClearChoices	(Info_Mod_Anselm_Ornament2);
};

FUNC VOID Info_Mod_Anselm_Ornament2_C()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_C_15_00"); //Jestem obywatelem khoraty.

	Info_Mod_Anselm_Ornament2_D();
};

FUNC VOID Info_Mod_Anselm_Ornament2_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_B_15_00"); //Zloto 2000 zloto.... tu.

	B_GiveInvItems	(hero, self, ItMi_Gold, 2000);

	Info_Mod_Anselm_Ornament2_D();
};

FUNC VOID Info_Mod_Anselm_Ornament2_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Ornament2_A_15_00"); //Tysiac zlota powinno wystarczyc.

	if (self.aivar[AIV_Verhandlung] == TRUE)
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_A_16_01"); //Oczywiscie oczywiscie. Wlasciwie móglbym równiez podac panstwu informacje, ale mam tez swoje wydatki, które chce pokryc.

		B_GiveInvItems	(hero, self, ItMi_Gold, 1000);
	
		B_GivePlayerXP	(10);

		B_RaiseHandelsgeschick (2);

		Info_Mod_Anselm_Ornament2_D();
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Ornament2_A_16_02"); //Hmm, nie powinienes próbowac dzisiaj korzystac z mojej dobrej woli. Cieszcie sie, ze proponuje Panstwu w ogóle sprzedac informacje.
	};
};

INSTANCE Info_Mod_Anselm_AnnaBefreit (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_AnnaBefreit_Condition;
	information	= Info_Mod_Anselm_AnnaBefreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_AnnaBefreit_Condition()
{
	if (Mod_AnnaQuest == 9)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_AnnaBefreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_00"); //Slyszalem, ze jestes czesciowo odpowiedzialny za smierc moich sedziów.
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_01"); //Naprawde mialem nadzieje, ze pan cos jeszcze takt. (golen)
	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_02"); //Zostawie to na mala grzywne. Teraz 500 zlotych monet.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Anselm_AnnaBefreit_16_03"); //A nastepnym razem lepiej przyjrzec sie Twojemu biznesowi, czy to Ty? To dorosly biznes.
};

INSTANCE Info_Mod_Anselm_UlrichKO (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_UlrichKO_Condition;
	information	= Info_Mod_Anselm_UlrichKO_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_UlrichKO_Condition()
{
	if (Mod_AnnaQuest == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_UlrichKO_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_00"); //Och, tam jestescie. Sedzia mi wszystko powiedzial. Odwaznie walczyliscie.
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_01"); //Khorata moze byc dumna z posiadania takiego bohatera jak Ty.
	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_02"); //Och, Twoja nagroda. Wez to tutaj.

	CreateInvItems	(hero, ItMi_Gold, 800);
	CreateInvItems	(hero, ItMI_Freudenspender, 5);

	B_ShowGivenThings	("800 zlota i 5 butelek radosnego darczyncy - otrzymane");

	AI_Output(self, hero, "Info_Mod_Anselm_UlrichKO_16_03"); //Slodki dzien, slodki.
};

INSTANCE Info_Mod_Anselm_Unfrieden (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Unfrieden_Condition;
	information	= Info_Mod_Anselm_Unfrieden_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam niejasna sprawe do zgloszenia.";
};

FUNC INT Info_Mod_Anselm_Unfrieden_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Leonhard_Aufgabe))
	&& (Npc_HasItems(hero, ItWr_LeonhardRichter) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Unfrieden_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Unfrieden_15_00"); //Mam niejasna sprawe do zgloszenia.
	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_01"); //Oho! Jestes dobrym czlowiekiem! O co to jest?
	AI_Output(hero, self, "Info_Mod_Anselm_Unfrieden_15_02"); //Mam przekazac ten list sedziemu w imieniu Leonharda.

	B_GiveInvItems	(hero, self, ItWr_LeonhardRichter, 1);

	B_UseFakeScroll ();

	B_GiveInvItems	(self, hero, ItWr_LeonhardRichter, 1);

	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_03"); //Jestes zabawny! Na kartce papieru sypia przypadkowe litery, a potem przekonuja mnie, ze kryje sie za tym cel.
	AI_Output(self, hero, "Info_Mod_Anselm_Unfrieden_16_04"); //Nie jestem na starosc, synu.
};

INSTANCE Info_Mod_Anselm_RuprechtRing (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_RuprechtRing_Condition;
	information	= Info_Mod_Anselm_RuprechtRing_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_RuprechtRing_Condition()
{
	if (Mod_LeonhardRuprecht == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_RuprechtRing_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_00"); //Jak uslyszalem, jak próbowales "okradac szanowanego nieznajomego.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_01"); //Nie moge zostawic tego bezkarnego, nie rozumiem?
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_02"); //Wiec twoim zadaniem bedzie sluzyc wspólnemu dobru.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_03"); //A przez przypadek wlasnie napisalem okólnik do obywateli Khoraty.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_04"); //30 listów, które juz skopiowalem, dostaniesz je.

	B_GiveInvItems	(self, hero, ItWr_AnselmRundschreiben, 30);

	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_05"); //Szybko rozdasz je honorowym mieszkancom Khoraty.
	AI_Output(self, hero, "Info_Mod_Anselm_RuprechtRing_16_06"); //Pozostala czesc zajmie ktos inny.
};

INSTANCE Info_Mod_Anselm_FrazerPakete (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_FrazerPakete_Condition;
	information	= Info_Mod_Anselm_FrazerPakete_Info;
	permanent	= 0;
	important	= 0;
	description	= "Mam tu kilka pakietów rudy.";
};

FUNC INT Info_Mod_Anselm_FrazerPakete_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Hi))
	&& (Npc_HasItems(hero, ItMi_ErzPaketFrazer) == 10)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_FrazerPakete_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_FrazerPakete_15_00"); //Mam tu kilka pakietów rudy.

	B_GiveInvItems	(hero, self, ItMi_ErzPaketFrazer, 10);

	AI_Output(self, hero, "Info_Mod_Anselm_FrazerPakete_16_01"); //Noszyles to wszystko samemu? Szacunek! Za to zostaniesz nagrodzony ksiaze!

	B_GiveInvItems	(self, hero, ItMi_Gold, 20);

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_ERZPAKETE, "Dostalem rude i otrzymalem wynagrodzenie 'ksiazece'.");
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_ERZPAKETE, LOG_SUCCESS);

	CurrentNQ += 1;

	Mod_REL_QuestCounter += 1;
};

INSTANCE Info_Mod_Anselm_Endres (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Endres_Condition;
	information	= Info_Mod_Anselm_Endres_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chce, zebys poinformowal Frazera, ze moge byc zaufany.";
};

FUNC INT Info_Mod_Anselm_Endres_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres02))
	&& (Npc_HasItems(hero, ItWr_AnselmForFrazer) == 0)
	&& (!Npc_KnowsInfo(hero, Info_Mod_Frazer_Endres03))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Endres_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_00"); //Chce, zebys poinformowal Frazera, ze moge byc zaufany.
	AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_01"); //Aha! To jest szybka poprawka, taki list. Ale czy kiedykolwiek pomógles mi w powrocie?

	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_02"); //Ja, ich war dir bei der "geodezja" Khoratas behilflich.
		AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_03"); //Masz racje, ja równiez jestem ci za to wdzieczny! Wezcie to idzcie!

		B_GiveInvItems	(self, hero, ItWr_AnselmForFrazer, 1);

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Powrócmy teraz listem do Frazera.");
	}
	else
	{
		AI_Output(hero, self, "Info_Mod_Anselm_Endres_15_04"); //Prawdopodobnie.....
		AI_Output(self, hero, "Info_Mod_Anselm_Endres_16_05"); //Wróc, jesli pamietasz konkretnie!

		B_LogEntry	(TOPIC_MOD_KHORATA_ENDRES, "Nie otrzymam ubezpieczenia Anselmsa, dopóki nie pomoze mu.");
	};
};

INSTANCE Info_Mod_Anselm_Endres02 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Endres02_Condition;
	information	= Info_Mod_Anselm_Endres02_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Endres02_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Richter_Endres02))
	&& (Mod_EndresIndizien == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Endres02_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Endres02_16_00"); //Szacunek. Jako ostatni podejrzewalem zabójce zimnokrwistego za uzdrowicielem.
	AI_Output(self, hero, "Info_Mod_Anselm_Endres02_16_01"); //Dziekuje za prace chlopców i mnie.

	B_GiveInvItems	(self, hero, ItMi_Gold, 50);
};

INSTANCE Info_Mod_Anselm_Dorn (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn_Condition;
	information	= Info_Mod_Anselm_Dorn_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Dorn_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 2)
	&& (Npc_IsDead(Mod_7499_KDF_Elvira_REL))
	&& (Npc_IsDead(Mod_7425_KDF_Fuego_REL))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_00"); //Rozumiem, ze bral Pan udzial w sprawie dotyczacej zabójstwa. Co sadzisz o tym?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn_15_01"); //Stalo sie tak dzieki woli Adanosa!
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_02"); //(smiech) Niewielki zartownica.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn_16_03"); //Ale miedzy wami a mna nikt nie placze lzem dla magów ognia. Przy odrobinie szczescia pozostana z dala.
};

INSTANCE Info_Mod_Anselm_Dorn2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn2_Condition;
	information	= Info_Mod_Anselm_Dorn2_Info;
	permanent	= 1;
	important	= 0;
	description	= "Potrzebuje panstwa pomocy.";
};

FUNC INT Info_Mod_Anselm_Dorn2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn))
	&& (Mod_REL_IdricoDorn == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn2_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_15_00"); //Potrzebuje panstwa pomocy.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_16_01"); //Ciesze sie, ze Pan to zrobil! Gdzie jest but?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_15_02"); //Idrico próbuje wyprowadzic magów z miasta.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_16_03"); //A co dokladnie jest teraz problemem?

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);

	Info_AddChoice	(Info_Mod_Anselm_Dorn2, "Nie widzisz tego czlowieka?", Info_Mod_Anselm_Dorn2_B);
	Info_AddChoice	(Info_Mod_Anselm_Dorn2, "Obawiam sie, ze umysl Idrico jest zatarty.", Info_Mod_Anselm_Dorn2_A);
};

FUNC VOID Info_Mod_Anselm_Dorn2_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_B_15_00"); //Nie widzisz tego czlowieka?
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_B_16_01"); //Nie w tym tonie, przyjaciel.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_B_16_02"); //Badzcie szczesliwi, ze jestem w dobrym nastroju lub naucze Was lekcji.

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);
};

FUNC VOID Info_Mod_Anselm_Dorn2_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_00"); //Obawiam sie, ze umysl Idrico jest zatarty.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_01"); //Przyznaje, ze jest troche dziwny. Ale co moge z tym zrobic?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_02"); //Bedziesz mial tam swoich malych pomocników.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_03"); //I co jest dobre dla mnie, gdy splywalem go z wplywowym rozsiewaczem plotek?
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_04"); //Wybierz swój wybór.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn2_A_16_05"); //Hmm, tak, doplata plemienna od Strazaków z pewnoscia wprowadzi mnie w laskawszy nastrój.
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn2_A_15_06"); //Zajme sie tym.

	Info_ClearChoices	(Info_Mod_Anselm_Dorn2);

	Mod_REL_IdricoDorn = 4;

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Anselm pomoze mi tylko wtedy, gdy otrzyma plemienna zaplate od Strazaków.");
};

INSTANCE Info_Mod_Anselm_Dorn3 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn3_Condition;
	information	= Info_Mod_Anselm_Dorn3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto 50 zlotych monet od magików strazy pozarnej.";
};

FUNC INT Info_Mod_Anselm_Dorn3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 50)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn3_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn3_15_00"); //Oto 50 zlotych monet od magików strazy pozarnej.

	B_GiveInvItems	(hero, self, ItMi_Gold, 50);

	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_01"); //Sprawa nie wydaje sie byc bardzo pilna.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_02"); //50 zlote za moja pomoc jest nieco obrazliwe.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn3_16_03"); //Nie sadze, aby tak wlasnie postepowalismy.

	Mod_REL_IdricoDorn = 5;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_DORN, LOG_FAILED);
};

INSTANCE Info_Mod_Anselm_Dorn4 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Dorn4_Condition;
	information	= Info_Mod_Anselm_Dorn4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Oto 500 zlotych magów ognia.";
};

FUNC INT Info_Mod_Anselm_Dorn4_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Elvira_Dorn2))
	&& (Mod_REL_IdricoDorn == 4)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 500)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Dorn4_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Dorn4_15_00"); //Oto 500 zlotych magów ognia.

	B_GiveInvItems	(hero, self, ItMi_Gold, 500);

	AI_Output(self, hero, "Info_Mod_Anselm_Dorn4_16_01"); //Ogromna suma! Wlasciwie, Idrico bedzie mial swoja lekcje.
	AI_Output(self, hero, "Info_Mod_Anselm_Dorn4_16_02"); //A potem sie zamknal.

	B_GivePlayerXP	(50);

	B_LogEntry	(TOPIC_MOD_KHORATA_DORN, "Anselm chce utrzymac Idrico w spokoju.");

	Mod_REL_IdricoDorn = 6;
};

INSTANCE Info_Mod_Anselm_Wettstreit (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Wettstreit_Condition;
	information	= Info_Mod_Anselm_Wettstreit_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Wettstreit_Condition()
{
	if (Mod_REL_Wettstreit == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Wettstreit_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Wettstreit_16_00"); //Jestes wielkim bohaterem tegorocznego polowania na szczury.
	AI_Output(self, hero, "Info_Mod_Anselm_Wettstreit_16_01"); //Chcialbym wam wreczyc medal za wasze zaslugi. Nosic go z duma.

	B_GiveInvItems	(self, hero, ItAm_HalskettederEhre, 1);
};

INSTANCE Info_Mod_Anselm_Buerger (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger_Condition;
	information	= Info_Mod_Anselm_Buerger_Info;
	permanent	= 0;
	important	= 0;
	description	= "Czy moge równiez zostac obywatelem Khoraty?";
};

FUNC INT Info_Mod_Anselm_Buerger_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Hi))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger_15_00"); //Czy moge równiez zostac obywatelem Khoraty?
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_01"); //Hmm, huh? Chcesz zniszczyc niektóre przywileje? Chlopiec zdarty.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_02"); //Ale.... Tak, powinna istniec mozliwosc nadania Ci obywatelstwa.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_03"); //Poniewaz jednak jako pierwszy prosil pan o to, musze zastanowic sie nad procedura, aby upewnic sie, ze jest pan do nas dopasowany.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_04"); //W miedzyczasie mozesz sie osiedlic.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_05"); //Kiedy wykonam prace i zobacze, ze sie angazujesz, porozmawiam z Toba.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger_16_06"); //Na co wiec czekasz?

	Log_CreateTopic	(TOPIC_MOD_KHORATA_BUERGER, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_KHORATA_BUERGER, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "Zwrócilem sie do Anselma o obywatelstwo Khoraty. Nadal potrzebuje czasu, aby znalezc dla mnie odpowiednia procedure. Tak dlugo mialam byc przydatna.");
};

INSTANCE Info_Mod_Anselm_Buerger2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger2_Condition;
	information	= Info_Mod_Anselm_Buerger2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_Buerger2_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger))
	&& (Mod_REL_QuestCounter >= 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger2_Info()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_00"); //Jestes! Widzialem, ze nie byles bezczynny i zaprzyjaznilem sie.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_01"); //Dlatego wlasnie podaje Panstwu ten kwestionariusz. Musisz byc w stanie odpowiedziec na te pytania przy nastepnym spotkaniu.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_02"); //Wszystkie rozwiazania znajdziesz w murach miasta Khorata. Lub w poblizu.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger2_16_03"); //(patetyczne) Pytania i badania, a znajdziesz je.

	B_GiveInvItems	(self, hero, ItWr_Fragebogen, 1);

	B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "Anselm przekazal mi teraz kwestionariusz. Chce poznac odpowiedzi na moje pytania w osobistej rozmowie. Wiec powinienem pamietac, co sie dowiaduje.");
};

INSTANCE Info_Mod_Anselm_Buerger3 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Buerger3_Condition;
	information	= Info_Mod_Anselm_Buerger3_Info;
	permanent	= 1;
	important	= 0;
	description	= "Czuje sie gotowy do testu.";
};

FUNC INT Info_Mod_Anselm_Buerger3_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_Buerger2))
	&& (Mod_REL_Buerger == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Buerger3_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_15_00"); //Czuje sie gotowy do testu.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_16_01"); //Bardzo dobrze! Zacznijmy od razu. Na jedno pytanie udzielono nieprawidlowej odpowiedzi i egzamin nie zostal zdany.
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_16_02"); //Pierwsze pytanie: W którym budynku jest tylko jeden z poronien Khoraty?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Dom Margaret.", Info_Mod_Anselm_Buerger3_A5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Dom Friedla.", Info_Mod_Anselm_Buerger3_A4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "W Domu Strazników.", Info_Mod_Anselm_Buerger3_A3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Dom uzdrowiciela.", Info_Mod_Anselm_Buerger3_A2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "W karczmie.", Info_Mod_Anselm_Buerger3_A1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_A()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_A_16_00"); //Pytanie drugie: Co nazywalo sie moimi trzema szczurami?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Oleg, Pinky i Fievel.", Info_Mod_Anselm_Buerger3_B5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Rémy, Fievel i Oleg.", Info_Mod_Anselm_Buerger3_B4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Fantastyczne, pyszne i odprezajace.", Info_Mod_Anselm_Buerger3_B3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Rémy, Feivel i Pinky.", Info_Mod_Anselm_Buerger3_B2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Oleg, Rémy i Pinky.", Info_Mod_Anselm_Buerger3_B1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_A5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A5_15_00"); //Dom Margaret.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A4_15_00"); //Dom Friedla.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A3_15_00"); //W Domu Strazników.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A2_15_00"); //Dom uzdrowiciela.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_A1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_A1_15_00"); //W karczmie.

	Info_Mod_Anselm_Buerger3_A();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_B_16_00"); //Trzecie pytanie: Dlaczego wówczas rzady Trybunalu rozdzielily sie od reszty Wspólnoty?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Fanatyk uwiedzil ja, ze przychodzi z nim.", Info_Mod_Anselm_Buerger3_C5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Tylko oni chcieli sie rozkoszowac.", Info_Mod_Anselm_Buerger3_C4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Nie byli oni w stanie poradzic sobie we Wspólnocie.", Info_Mod_Anselm_Buerger3_C3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Chcieli uciec od obserwacji Beliara.", Info_Mod_Anselm_Buerger3_C2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Oddzielono je w przypadku kleski zywiolowej.", Info_Mod_Anselm_Buerger3_C1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_B5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B5_15_00"); //Oleg, Pinky i Fievel.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B4_15_00"); //Rémy, Fievel i Oleg.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B3_15_00"); //Fantastyczne, pyszne i odprezajace.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B2_15_00"); //Rémy, Feivel i Pinky.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_B1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_B1_15_00"); //Oleg, Rémy i Pinky.

	Info_Mod_Anselm_Buerger3_B();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_C_16_00"); //Czwarte pytanie: Ilu dealerów ma swoja pozycje na rynku Khoraty?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Siedem.", Info_Mod_Anselm_Buerger3_D5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Szesc.", Info_Mod_Anselm_Buerger3_D4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Piec.", Info_Mod_Anselm_Buerger3_D3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Cztery.", Info_Mod_Anselm_Buerger3_D2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Trzy.", Info_Mod_Anselm_Buerger3_D1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_C5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C5_15_00"); //Fanatyk uwiedzil ja, ze przychodzi z nim.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C4_15_00"); //Tylko oni chcieli sie rozkoszowac.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C3_15_00"); //Nie byli oni w stanie poradzic sobie we Wspólnocie.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C2_15_00"); //Chcieli uciec od obserwacji Beliara.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_C1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_C1_15_00"); //Oddzielono je w przypadku kleski zywiolowej.

	Info_Mod_Anselm_Buerger3_C();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D()
{
	AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_D_16_00"); //Piate pytanie: Kto musi zapewnic sprawne funkcjonowanie systemu zaopatrzenia w wode?

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);

	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Idrico.", Info_Mod_Anselm_Buerger3_E5);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Hubert.", Info_Mod_Anselm_Buerger3_E4);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Friedel.", Info_Mod_Anselm_Buerger3_E3);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Lukasz.", Info_Mod_Anselm_Buerger3_E2);
	Info_AddChoice	(Info_Mod_Anselm_Buerger3, "Spirala.", Info_Mod_Anselm_Buerger3_E1);
};

FUNC VOID Info_Mod_Anselm_Buerger3_D5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D5_15_00"); //Siedem.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D4_15_00"); //Szesc.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D3_15_00"); //Piec.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D2_15_00"); //Cztery.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_D1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_D1_15_00"); //Trzy.

	Info_Mod_Anselm_Buerger3_D();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E()
{
	if (Mod_REL_BuergerFragen == 5)
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_00"); //Tak, czyniles dobrze. Odpowiedzial pan prawidlowo na wszystkie pytania.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_01"); //No cóz, to dobrze. Mozesz teraz nazwac sie obywatelem khorat i robic wszystko z radoscia, cokolwiek zechcesz.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_02"); //To cos takiego, prawda?
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_03"); //Nalezy zatrzymac sie równiez przy Friedel' s. Daje mu znac, zeby dal ci troche zalazkowych pieniedzy.

		Mod_REL_Buerger = 1;

		B_GivePlayerXP	(200);

		B_LogEntry	(TOPIC_MOD_KHORATA_BUERGER, "Jestem teraz obywatelem khoraty.");
		B_SetTopicStatus	(TOPIC_MOD_KHORATA_BUERGER, LOG_SUCCESS);
		
		Spine_UnlockAchievement(SPINE_ACHIEVEMENT_21);

		CurrentNQ += 1;
	}
	else
	{
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_04"); //Zbyt zle, co najmniej jedna z odpowiedzi byla niewlasciwa.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_05"); //Ale w mojej nieskonczonej uprzejmosci chce dac wam kolejna szanse.
		AI_Output(self, hero, "Info_Mod_Anselm_Buerger3_E_16_06"); //Jesli uwazasz, ze mozesz wykonac zadanie, wróc do domu.
	};

	Mod_REL_BuergerFragen = 0;

	Info_ClearChoices	(Info_Mod_Anselm_Buerger3);
};

FUNC VOID Info_Mod_Anselm_Buerger3_E5()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E5_15_00"); //Idrico.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E4()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E4_15_00"); //Hubert.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E3()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E3_15_00"); //Friedel.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E2()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E2_15_00"); //Lukasz.

	Info_Mod_Anselm_Buerger3_E();
};

FUNC VOID Info_Mod_Anselm_Buerger3_E1()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Buerger3_E1_15_00"); //Spirala.

	Mod_REL_BuergerFragen += 1;

	Info_Mod_Anselm_Buerger3_E();
};

INSTANCE Info_Mod_Anselm_Bierhexen (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Bierhexen_Condition;
	information	= Info_Mod_Anselm_Bierhexen_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chce zglosic przestepstwo.";
};

FUNC INT Info_Mod_Anselm_Bierhexen_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Brauer_Bierhexen6))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_Bierhexen_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_15_00"); //Chce zglosic przestepstwo.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_16_01"); //No cóz, daj mi ja! Mój dotychczasowy dzien byl dosc nudny.
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_15_02"); //Leonhard przyznaje, ze w nocy wypil piwo warzelnika i upuscil je do jeczmienia.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_16_03"); //Hmm, czy to jest? Cóz za glupi maly zart?

	Info_ClearChoices	(Info_Mod_Anselm_Bierhexen);

	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Taka rzecz musi byc karana!", Info_Mod_Anselm_Bierhexen_C);
	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Dzieki Leonhardowi od tygodni nie mamy swiezego piwa!", Info_Mod_Anselm_Bierhexen_B);
	Info_AddChoice	(Info_Mod_Anselm_Bierhexen, "Od tego czasu piwowar doznal szkód psychologicznych.", Info_Mod_Anselm_Bierhexen_A);
};

FUNC VOID Info_Mod_Anselm_Bierhexen_C()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_C_15_00"); //Taka rzecz musi byc karana!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_C_16_01"); //Dobrze, ze nie musisz nadzorowac praw khoraty.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_C_16_02"); //Niektórzy ludzie potrzebuja troche wiecej miejsca niz inni, nie moge im tego zaprzeczyc.
};

FUNC VOID Info_Mod_Anselm_Bierhexen_B()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_00"); //Dzieki Leonhardowi od tygodni nie mamy swiezego piwa!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_01"); //W ogóle o tym nie myslalem.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_02"); //Nieznaczna szkoda dla krajowej gospodarki.
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_03"); //Dostawy sa juz niewystarczajace.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_04"); //Nie moze to byc prawda! O czym mysli ta posciel?
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_05"); //Nowy jeczmien musi byc dostarczony jak najszybciej.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_06"); //Absolutnie sluszne! Wiem tez, kto bedzie recznie zbieral jeczmien i przenosil go do miasta!
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_B_15_07"); //Dobry pomysl. To wszystko, czego chcialem.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_B_16_08"); //Ale od tej pory trzymaj sie z dala od mnie z przerazajacymi oredziami!

	Info_ClearChoices	(Info_Mod_Anselm_Bierhexen);

	B_GivePlayerXP	(250);

	CurrentNQ += 1;

	B_SetTopicStatus	(TOPIC_MOD_KHORATA_BIERHEXEN, LOG_SUCCESS);

	B_StartOtherRoutine	(Mod_7419_OUT_Leonhard_REL, "STRAFE");
	B_StartOtherRoutine	(Mod_7420_OUT_Michael_REL, "STRAFE");
	B_StartOtherRoutine	(Mod_7421_OUT_Philipp_REL, "STRAFE");
};

FUNC VOID Info_Mod_Anselm_Bierhexen_A()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Bierhexen_A_15_00"); //Od tego czasu piwowar doznal szkód psychologicznych.
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_A_16_01"); //(ironiczne) Jakze dramatyczne! Uszkodzenia psychiczne!
	AI_Output(self, hero, "Info_Mod_Anselm_Bierhexen_A_16_02"); //Mozemy go zabrac do uzdrowiciela, który nastepnie wykonuje cwiczenia mózgu i przywraca porzadek.
};

INSTANCE Info_Mod_Anselm_DickeLuft (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_DickeLuft_Condition;
	information	= Info_Mod_Anselm_DickeLuft_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_DickeLuft_Condition()
{
	if (Mod_IstSchaf == 1)
	&& (Mod_Kneipe_Ditmar == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_DickeLuft_Info()
{
	var c_npc Anselm; Anselm = Hlp_GetNpc(Mod_7241_OUT_Anselm_REL);
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);

	TRIA_Invite(Hedwig);

	TRIA_Start();

	TRIA_Next(Anselm);

	AI_TurnToNpc	(Anselm, Hedwig);
	AI_TurnToNpc	(Hedwig, Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_00"); //No cóz, cóz! Dlaczego przerywaja Panstwo moja wazna dzialalnosc? Nie chciales spedzac czasu z Ditmarem do....? Co to bylo znowu?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_01"); //Dopóki w koncu nie zaczniesz mi pomagac w pracach domowych.

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_02"); //Nie moge sie do ciebie ponownie do ciebie nie dotrzec.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_03"); //Jaka jest wiec sytuacja? Zaczynasz zmieniac zdanie?

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_04"); //Innos zabrania tego! Wystarczy wrócic do karczmy i dokonac strajku.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_05"); //Nie przeszkadza Ci to, zebym wszystkim tam przeszkadzal?

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_06"); //(prawdopodobnie jak on mysli) potrafie sobie z tym poradzic.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_07"); //Grzywna. Wtedy bede musial wymyslic nowa dzwignie.
	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_08"); //A co z tym: siedze tutaj.

	AI_UseMob	(self, "THRONE", 1);

	AI_TurnToNpc	(Anselm, self);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_09"); //I nikogo nie zabierzcie mnie z tego miejsca, chyba ze podniesiesz palec w domu!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_10"); //Jesli sie podoba.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_11"); //Och, tak!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_12"); //Co robia tu owce? Czyz nie byloby to lepsze dla rzeznika?

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_21_13"); //Ostrzegam!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft_16_14"); //Krzyki! Dlaczego tutaj nie przyjdziesz?

	TRIA_Finish();

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Anselm_DickeLuft2 (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_DickeLuft2_Condition;
	information	= Info_Mod_Anselm_DickeLuft2_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Anselm_DickeLuft2_Condition()
{
	if (Mod_IstSchaf == 0)
	&& (Npc_KnowsInfo(hero, Info_Mod_Anselm_DickeLuft))
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Anselm_DickeLuft2_Info()
{
	var c_npc Anselm; Anselm = Hlp_GetNpc(Mod_7241_OUT_Anselm_REL);
	var c_npc Hedwig; Hedwig = Hlp_GetNpc(Mod_7723_OUT_Hedwig_REL);

	TRIA_Invite(Hedwig);

	TRIA_Start();

	TRIA_Next(Anselm);

	AI_TurnToNpc	(Anselm, Hedwig);
	AI_TurnToNpc	(Hedwig, Anselm);

	AI_Output(hero, self, "Info_Mod_Anselm_DickeLuft2_15_00"); //Nie martw sie o mnie wcale.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_01"); //Ale....!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_16_02"); //Zostales oszukany, najdrozszy i najdrozszy. Ale teraz jestes ze mna i bede Cie bronil.

	TRIA_Next(Hedwig);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_03"); //Mozesz go uzywac! Pójde teraz i zablokuje sie, tak!
	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_21_04"); //Nie chce, aby juz nikt z Was wiecej nie widzial!

	TRIA_Next(Anselm);

	AI_Output(self, hero, "Info_Mod_Anselm_DickeLuft2_16_05"); //Dziekuje za pomoc. Teraz wieczorem moge wreszcie udac sie na kolejny napój.

	TRIA_Finish();

	AI_StopProcessInfos	(self);

	B_GivePlayerXP	(250);

	B_LogEntry	(TOPIC_MOD_DITMAR_DICKELUFT, "Zwabilem Hedwiga do Anselm i odbyla sie debata. No cóz, rodzaj. Tak czy inaczej, nie powinna teraz wracac do karczmy. Irmgard i Ditmar chetnie sie o tym dowiedza.");
};

INSTANCE Info_Mod_Anselm_WoHubert (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_WoHubert_Condition;
	information	= Info_Mod_Anselm_WoHubert_Info;
	permanent	= 1;
	important	= 0;
	description 	= "Gdzie moge znalezc Huberta?";
};                       

FUNC INT Info_Mod_Anselm_WoHubert_Condition()
{
	if (Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungVincent))
	&& (!Npc_KnowsInfo(hero, Info_Mod_Anselm_LandvermessungHubert))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Anselm_WoHubert_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_WoHubert_15_00"); //Gdzie moge znalezc Huberta?
	AI_Output(self, hero, "Info_Mod_Anselm_WoHubert_16_01"); //Rózne, ale nie dalekie od zycia eliksiru. Czasami czai sie przy bramie, ale przez wiekszosc czasu mozna go znalezc w poblizu karczmy lub browaru.
};

INSTANCE Info_Mod_Anselm_Freudenspender (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Freudenspender_Condition;
	information	= Info_Mod_Anselm_Freudenspender_Info;
	permanent	= 0;
	important	= 0;
	description 	= "Przyjemnosc dla wielkiego gubernatora?";
};                       

FUNC INT Info_Mod_Anselm_Freudenspender_Condition()
{
	if (Npc_HasItems(hero, ItMi_Freudenspender) >= 1)
	&& (Mod_Freudenspender < 5)
	&& (Npc_KnowsInfo(hero, Info_Mod_Sabine_Hi))
	{
		return TRUE;
	};
};

FUNC VOID Info_Mod_Anselm_Freudenspender_Info()
{
	AI_Output(hero, self, "Info_Mod_Anselm_Freudenspender_15_00"); //Przyjemnosc dla wielkiego gubernatora?
	AI_Output(self, hero, "Info_Mod_Anselm_Freudenspender_16_01"); //Oh, wspanialej oferty, której nie moge odmówic.

	B_GiveInvItems	(hero, self, ItMi_Freudenspender, 1);

	B_GiveInvItems	(self, hero, ItMi_Gold, 10);

	Mod_Freudenspender	+= 1;
};

INSTANCE Info_Mod_Anselm_Pickpocket (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_Pickpocket_Condition;
	information	= Info_Mod_Anselm_Pickpocket_Info;
	permanent	= 1;
	important	= 0;
	description	= Pickpocket_120;
};

FUNC INT Info_Mod_Anselm_Pickpocket_Condition()
{
	C_Beklauen	(102, ItMi_Gold, 37);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Info()
{
	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

	Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_BACK, Info_Mod_Anselm_Pickpocket_BACK);
	Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PICKPOCKET, Info_Mod_Anselm_Pickpocket_DoIt);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_BACK()
{
	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_DoIt()
{
	if (B_Beklauen() == TRUE)
	{
		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
	}
	else
	{
		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_BESCHIMPFEN, Info_Mod_Anselm_Pickpocket_Beschimpfen);
		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_BESTECHUNG, Info_Mod_Anselm_Pickpocket_Bestechung);
		Info_AddChoice	(Info_Mod_Anselm_Pickpocket, DIALOG_PP_HERAUSREDEN, Info_Mod_Anselm_Pickpocket_Herausreden);
	};
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Beschimpfen()
{
	B_Say	(hero, self, "$PICKPOCKET_BESCHIMPFEN");
	B_Say	(self, hero, "$DIRTYTHIEF");

	Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

	AI_StopProcessInfos	(self);

	B_Attack (self, hero, AR_Theft, 1);
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Bestechung()
{
	B_Say	(hero, self, "$PICKPOCKET_BESTECHUNG");

	var int rnd; rnd = r_max(99);

	if (rnd < 25)
	|| ((rnd >= 25) && (rnd < 50) && (Npc_HasItems(hero, ItMi_Gold) < 50))
	|| ((rnd >= 50) && (rnd < 75) && (Npc_HasItems(hero, ItMi_Gold) < 100))
	|| ((rnd >= 75) && (rnd < 100) && (Npc_HasItems(hero, ItMi_Gold) < 200))
	{
		B_Say	(self, hero, "$DIRTYTHIEF");

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

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

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);

		AI_StopProcessInfos	(self);
	};
};

FUNC VOID Info_Mod_Anselm_Pickpocket_Herausreden()
{
	B_Say	(hero, self, "$PICKPOCKET_HERAUSREDEN");

	if (r_max(99) < Mod_Verhandlungsgeschick)
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_01");

		Info_ClearChoices	(Info_Mod_Anselm_Pickpocket);
	}
	else
	{
		B_Say	(self, hero, "$PICKPOCKET_HERAUSREDEN_02");
	};
};

INSTANCE Info_Mod_Anselm_EXIT (C_INFO)
{
	npc		= Mod_7241_OUT_Anselm_REL;
	nr		= 1;
	condition	= Info_Mod_Anselm_EXIT_Condition;
	information	= Info_Mod_Anselm_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Anselm_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Anselm_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
