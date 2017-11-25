var int Krankheit_01;
var int Krankheit_02;
var int Krankheit_03;
var int Krankheit_04;
var int Krankheit_05;
var int Krankheit_06;

FUNC VOID Use_Bookstand_Krankheit_01_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_01 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_01 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_01);
	};
};

FUNC VOID Use_Bookstand_Krankheit_02_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_02 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_02 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_02);
	};
};

FUNC VOID Use_Bookstand_Krankheit_03_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_03 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_03 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_03);
	};
};

FUNC VOID Use_Bookstand_Krankheit_04_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_04 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_04 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_04);
	};
};

FUNC VOID Use_Bookstand_Krankheit_05_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_05 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_05 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_05);
	};
};

FUNC VOID Use_Bookstand_Krankheit_06_S1()		
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	

		if (Krankheit_06 == 0)
		{
			KrankheitCounter += 1;

			Krankheit_06 = KrankheitCounter;

			B_GivePlayerXP	(XP_Bookstand);

			Log_CreateTopic	(TOPIC_MOD_KRANKHEIT, LOG_NOTE);

			if (KrankheitCounter == 1)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "... oslabiaja organizm i konsumuja go.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona. Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami.");
			}
			else if (KrankheitCounter == 2)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac.");
			}
			else if (KrankheitCounter == 3)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc.");
			}
			else if (KrankheitCounter == 4)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu.");
			}
			else if (KrankheitCounter == 5)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy.");
			}
			else if (KrankheitCounter == 6)
			{
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");
				B_LogEntry	(TOPIC_MOD_KRANKHEIT, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób.");
			};
		};

		B_ShowKrankheitText (Krankheit_06);
	};
};
