INSTANCE Info_Mod_Xardas_AW_Hi (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_Hi_Condition;
	information	= Info_Mod_Xardas_AW_Hi_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_AW_Hi_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_Hi_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_00"); //Musze z panstwem porozmawiac. Dowiedzialem sie wiele rzeczy.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_01"); //Co sie dzieje?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_02"); //Ta czesc wyspy nosi nazwe Jharkendar.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_03"); //Tysiace lat temu mieszkaly tu wysoko rozwinieci ludzie, jak latwo widac.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_04"); //W tamtym czasie bogowie byli jeszcze zjednoczeni jako pierwotny bóg Radano.

	AI_Function_I (self, XR_Backgroundstory, 1);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_05"); //Z Xeresem przyszedl upadek. Xeres byl poteznym magikiem, tak poteznym, ze zadal, aby mieszkancy czcili go zamiast bogów.

	AI_Function_I (self, XR_Backgroundstory, 2);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_06"); //Kiedy oni odmówili mu posluszenstwa, on z wsciekloscia wymazal caly region, a tylko nieliczni przezyli.

	AI_Function_I (self, XR_Backgroundstory, 3);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_07"); //Jeden z nich zdolal zabic Xeres z tajemniczym mieczem.

	AI_Function_I (self, XR_Backgroundstory, 4);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_08"); //Poniewaz byl zupelnie bezsilny, Radanos mógl go zamknac w wiezieniu gleboko pod powierzchnia ziemi.

	AI_Function_I (self, XR_Backgroundstory, 5);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_09"); //Potem bóg plakal po gorzkiej lzach, które zniszczyly Jharkendala jako powódz.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_10"); //Cale jego dzielo odeszlo w niepamiec i w oplakiwaniu jego mysli stopniowo rozpadalo sie na trzy czesci - trzech bogów, których do dzis znamy.

	AI_Function_I (self, XR_Backgroundstory, 6);

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_11"); //Ale to jeszcze inna historia.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_12"); //Teraz zaczyna sie ta czesc mojej historii, która w duzej mierze opiera sie na moich wlasnych spekulacjach.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_13"); //Xeres musial przetrwac w wiezieniu.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_14"); //Nagle uderzyl i pozbawiony sily, ale nadal zdeterminowany do powrotu.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_15"); //Wydaje sie, ze od kilku dziesiecioleci prowadzi ucieczke.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_16"); //Potrzebowal tego w Minentalu. Dlatego wlasnie poslal tam sypialnego.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_17"); //Potem przeszlismy jego droga, tworzac bariere. Xeres stracil kontakt z twórczoscia i nie mógl jej powierzyc kluczowego zadania.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_18"); //Co robila tam Xeres?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_19"); //Kamienie ogniskujace. Obok Radanosa, który pózniej zostal Beliarem, powstaly tylne drzwi dla pózniejszego przebaczenia czarodziejowi.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_20"); //Gdyby wszystkie Foki wrócily do postumentów w Jharkendarzu, zostalyby zabrane przez Xeres i jego wiezienie zostaloby otwarte.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_21"); //(wazki) Dlatego tez nigdy nie nalezy miec pomyslu na uzywanie Foki' ego z Minentala tutaj w Jharkendarzu. Nigdy nigdy!
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_22"); //Zamiast tego musimy zrobic wszystko, co w naszej mocy, aby zniszczyc lub przynajmniej ukryc ostrosc!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_23"); //Um, Xardas?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_24"); //Tak?
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_25"); //Wyjasnia to, dlaczego podczas poszukiwan w skupieniu uwagi bylo tak wiele dziwnych zdarzen.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_26"); //Xeres znów wyciagnal swoje uczucia. Ale dostalem je wszystkie.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_27"); //Wiec juz je masz? Wspaniale!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_28"); //Nie tylko to. Ostatni wlasnie napisalem tutaj w Jharkendarzu.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_29"); //(bezjezykowo)
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_30"); //Mila terazniejszosc, huh?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_31"); //(wezwania) NIE! Nie moze byc!
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Hi_15_32"); //Ja równiez zrobie to dla Ciebie....
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_33"); //Nie, poczekaj! Potrzebujemy planu juz teraz.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_34"); //Musisz powstrzymac Xeres' a przed znalezieniem dalszych sojuszników na Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_35"); //Orki to chyba najniebezpieczniejsze orki, które byl w stanie wykorzystac dla siebie wraz z sypialnia.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Hi_14_36"); //W celu skrócenia podrózy, bede Cie teleportowal do mojej starej wiezy w Minental. Tam jest niedaleko.

	Log_CreateTopic	(TOPIC_MOD_XERES, LOG_MISSION);
	B_SetTopicStatus	(TOPIC_MOD_XERES, LOG_RUNNING);
	B_LogEntry	(TOPIC_MOD_XERES, "Uzywajac Foki' ego wyzwolilem Xeresa, poteznego maga Starego Ludu, od jego imperium cieni. Xardas kazal mi sprawdzic z orkami w dolinie Kopalni, zanim Xeres ich usypie.");

	B_SetTopicStatus	(TOPIC_MOD_DIEBEDROHUNG, LOG_SUCCESS);

	B_SetLevelchange ("Minental\Minental.zen", "DT_E3_03");
};

INSTANCE Info_Mod_Xardas_AW_Bshydal (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_Bshydal_Condition;
	information	= Info_Mod_Xardas_AW_Bshydal_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_AW_Bshydal_Condition()
{
	if (Npc_HasItems(hero, ItMi_WaterOfLife) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_Bshydal_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_00"); //Co, to tam wyladowalem. Xardas, Ty równiez tutaj?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_01"); //Jesli chodzi o wydarzenia o szczególnym znaczeniu, to nigdy nie jestem daleko.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_02"); //Raporty: Jak wygladalo Twoje wyszukiwanie i co sie stalo z gwardia Innos? Nie moge juz odczuc ich mocy.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_03"); //Oslony sa niszczone. Udalo mi sie pokonac niektórych z jej uczniów.... Wiecej inni zostali zabici przez kult krwi.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_04"); //Musicie wiedziec, ze kult krwi uzywal strazników tylko jako narzedzia do zdobycia miecza Innosa ".
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_05"); //Jednak podczas wyszukiwania trzeba cos zrobic....
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_06"); //... nie udalo sie, poniewaz nie mogli znalezc miecza.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_07"); //Wiesz? Ale jak to jest mozliwe? Gdzie zatem jest wiec Innos, miecz?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_08"); //Bylo to inne miejsce w Khorinis. Nie bylo tak latwo go znalezc, tak gleboko pod Patherionem.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_09"); //Latwiej bylo wciagnac slepo oszolomionych do innego utworu....
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_10"); //Co? Wiesz, ze przez caly czas byli na niewlasciwym torze, szukali go sami!
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_11"); //Co myslisz? Jesli ktos spróbuje zniszczyc Beliarsa, nie bede siedzial w mojej wiezy i czekal na zniszczenie swiata.
	AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_12"); //A gdzie jest teraz miecz?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_13"); //To pozostanie moja tajemnica..... i jestem pewien, ze nie dostaniesz tego pistoletu.... narzedzie, które ma moc, by wygnac naszego Boga i pomóc w wiekszym zlu wstapic.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_14"); //Zamiast tego, otrzymasz troche zlota na swój sprzet i pierscien naszego Pana. Ale jesli bijesz obywateli i chlopów, lepiej nie ubierasz sie.

	CreateInvItems	(hero, ItMi_Gold, 1000);
	CreateInvItems	(hero, ItRi_BeliarBosheit, 1);

	B_ShowGivenThings	("1000 Otrzymane zloto i pierscien");

	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_15"); //Hmm, jesli jednak powinienes osiagnac cel swojej misji, powinienes byc teraz w posiadaniu wody zyciowej.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_16"); //Narzedzie wyposazone w moc, której nie mozna ignorowac. Niech zmarly odzwierciedla zycie.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_17"); //Moze wymyslisz cos, za co zaplacisz.

	if (!Npc_IsDead(Mod_7316_BK_Bshydal_AW))
	{
		AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_18"); //Hmm, jeszcze jedna rzecz: Czarodziej kultowej krwi, który wzial w siebie wladze strazników Inno, jest jeszcze w pokoju pod swiatynia.
		AI_Output(hero, self, "Info_Mod_Xardas_AW_Bshydal_15_19"); //Wydaje sie, ze stal sie niezwykle potezny.....
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_20"); //Cóz, nie sadze, ze musimy sie nim martwic.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_21"); //Pomieszczenie pod swiatynia Adanos musi byc magicznie zapieczetowane, w przeciwnym razie poczulabym jego moc.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_22"); //Tylko poprzez okreslone mechanizmy magii teleportowej mozna wejsc lub wyjsc z pokoju.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_23"); //A portal, który stworzyl musial sie zawalic.... cos takiego moze sie zdarzyc, gdy w srodowisku tworzony jest inny portal.
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_24"); //Prawdopodobnie jest schwytany tam na zawsze.
	};

	if (Mod_Gilde == 13)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_25"); //Idz do Myxiru w klasztorze, wezmie cie do rangi przywolujacego demona.
	}
	else if (Mod_Gilde == 15)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_AW_Bshydal_14_26"); //Idz do Scar, wezmie cie do rangi rycerza demonów.
	};

	B_LogEntry	(TOPIC_MOD_BEL_INNOSSCHWERT, "Wiec to falszywe prowadzenie Xardasa. I juz od dawna odnalazl miecz Innos i sprowadzil go w bezpieczne miejsce. Powiedzial, ze woda zycia moze przywrócic zycie zmarlym. Wszystko, o czym moge pomyslec?");
	
	B_GivePlayerXP	(800);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "TOT");
	AI_Teleport	(self, "TOT");

	B_StartOtherRoutine	(Mod_764_PIR_Greg_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1079_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1078_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1077_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_963_PIR_Malcom_NW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_941_PIR_Angus_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_942_PIR_Hank_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_939_PIR_Owen_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_940_PIR_Samuel_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_936_PIR_Matt_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_938_PIR_Morgan_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_1080_PIR_PIRAT_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_935_PIR_Malcom_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_933_PIR_Garett_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_934_PIR_Henry_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_932_PIR_Francis_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_930_PIR_Bones_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_931_PIR_Brandon_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_775_PIR_Skip_AW, "BEERDIGUNG");
	B_StartOtherRoutine	(Mod_929_PIR_Bill_AW, "BEERDIGUNG");

	Wld_SendTrigger	("EVT_AJ_GRABSTEIN");
};

INSTANCE Info_Mod_Xardas_AW_FokusWeg (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_FokusWeg_Condition;
	information	= Info_Mod_Xardas_AW_FokusWeg_Info;
	permanent	= 0;
	important	= 0;
	description	= "Dlaczego nie mozemy po prostu pozbyc sie skupienia?";
};

FUNC INT Info_Mod_Xardas_AW_FokusWeg_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_FokusWeg_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_FokusWeg_15_00"); //Dlaczego nie mozemy po prostu pozbyc sie skupienia?
	AI_Output(hero, self, "Info_Mod_Xardas_AW_FokusWeg_15_01"); //Czy wiezienie nie zostanie zamkniete?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_02"); //Watpie, czy do tego dojdzie.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_03"); //Poza tym jestem jednak pewien, ze Xeres ma juz wiatr wolnosci i nie jest juz w wiezieniu.
	AI_Output(self, hero, "Info_Mod_Xardas_AW_FokusWeg_14_04"); //Dlatego wazne jest, abysmy dzialali szybko!
};

INSTANCE Info_Mod_Xardas_AW_DuZwischenzeit (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_DuZwischenzeit_Condition;
	information	= Info_Mod_Xardas_AW_DuZwischenzeit_Info;
	permanent	= 0;
	important	= 0;
	description	= "Co zamierzasz zrobic w miedzyczasie?";
};

FUNC INT Info_Mod_Xardas_AW_DuZwischenzeit_Condition()
{
	if (FokiEingesetzt == 5)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_AW_DuZwischenzeit_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_AW_DuZwischenzeit_15_00"); //Co zamierzasz zrobic w miedzyczasie?
	AI_Output(self, hero, "Info_Mod_Xardas_AW_DuZwischenzeit_14_01"); //Bede bacznie obserwowac ogólna sytuacje i zapobiegac rozprzestrzenianiu sie oddzialów Xeres na Khorinis.
};

INSTANCE Info_Mod_Xardas_AW_EXIT (C_INFO)
{
	npc		= Mod_678_DMB_Xardas_AW;
	nr		= 1;
	condition	= Info_Mod_Xardas_AW_EXIT_Condition;
	information	= Info_Mod_Xardas_AW_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_AW_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_AW_EXIT_Info()
{
	AI_StopProcessInfos	(self);

	AI_Teleport	(self, "TOT");
	B_StartOtherRoutine	(self, "TOT");
};
