var int BeliarBibliothek_01;
var int BeliarBibliothek_02;
var int BeliarBibliothek_03;
var int BeliarBibliothek_04;
var int BeliarBibliothek_05;
var int BeliarBibliothek_06;
var int BeliarBibliothek_07;
var int BeliarBibliothek_08;
var int BeliarBibliothek_09;
var int BeliarBibliothek_10;
var int BeliarBibliothek_11;
var int BeliarBibliothek_12;
var int BeliarBibliothek_13;
var int BeliarBibliothek_14;
var int BeliarBibliothek_15;
var int BeliarBibliothek_16;
var int BeliarBibliothek_17;

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_01_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
		//1.Seite
  					
		Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
		Doc_PrintLine	( nDocID,  0, "czary");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, " "			);
		Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
		Doc_PrintLine	( nDocID,  0, "Dar bog�w");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Ludzie od wiek�w staraja sie zrozumiec istote i pochodzenie magii. Ale gdzie szukac? Jak mozna je opisac? Jest to najbardziej sprzeczna sila, jaka znamy. Potrafi zabijac i leczyc jednoczesnie, potrafi ksztaltowac i niszczyc.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "Jak wyglada taka sila? Gdzie mozna znalezc te niewidzialna, a jednoczesnie tak potezna sile? Magia jest tym, czym jest. Najbardziej chwalebny i potezny dar bog�w. Uzytkownik i pastoralka tej mocy jest w ten spos�b obdarzony Boskim darem. Swieta moc, kt�ra tylko nieliczni moga kontrolowac.");	
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos from thearano");
		Doc_Show		( nDocID );
					
		if (BeliarBibliothek_01 == FALSE)
		{
			B_GivePlayerXP (XP_Bookstand);

			BeliarBibliothek_01 = TRUE;
		};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_02_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
		//1.Seite
  					
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "Tajemnice Sork�w");
					
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Sam mag nie ma zadnej magii, jest raczej w stanie z niej skorzystac. On sam ma tylko zdolnosc wplywania i kierowania magia. Adept zainicjowany w High Art of Magic musi umiec wykorzystac sw�j umysl jako narzedzie.");
					
		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "To wlasnie jego duch gromadzi, ksztaltuje i laczy w jedna calosc ekologiczna potege Arcane i wreszcie wypuszcza ja na swiat, kt�ry jest dla nas dostepny. W tym czasie najwyzszej koncentracji, mag udaje sie swoim duchem przeniknac w nasza sfere i patrzac na druga strone, stamtad przychodzi moc, mag sam jest tylko przyw�dca i dawca tej mocy.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Barthos from thearano");
		Doc_Show		( nDocID );
					
		if (BeliarBibliothek_02 == FALSE)
		{
			B_GivePlayerXP (XP_Bookstand);

			BeliarBibliothek_02 = TRUE;
		};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_03_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" 	, 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga"	, 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Potezna sztuka");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Utw�r dla konsekrowanego sztuki arkanicznej.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Zdolnosc kierowania boska wladza wzrasta u maga. Poczatkowo kielkuje jak mala kielek na polu i musi byc zadbany, aby nie zaniknal. Ale gdy potomstwo to rozroslo sie, nabiera pelnego blasku.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Wzrasta i rosnie, z kazdym dniem staje sie silniejszy. To wlasnie dzieje sie z potulnym magem. Poczatkowo bardzo male sily wzrastaja i rozwijaja sie, a w miare uplywu czasu, rozwijaja sile, kt�rej nie da sie przewidziec w jej ukonczeniu. Doprowadzenie tej mocy do jej najwyzszej doskonalosci jest swietym obowiazkiem kazdego maga, poniewaz ta kielkujaca przez samych bog�w kielek jest najwiekszym darem, jaki moze otrzymac smiertelnik.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_03 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_03 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_04_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga" ,	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" ,	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Arcanei elementarne");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Klasyfikacja magii w strukturze ziemskiej");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wiele zostalo zbadanych nad magia i jej umiejscowieniem na zywiolach. Mozna powiedziec, ze magie mozna uznac za absolutny element. Ma ona zdolnosc do zmiany i ksztaltowania wszystkich element�w, dzieki czemu jest widocznie przenoszona na nie.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Polaczenie pierwiastka i magii odslania kazdy zywi�l w jego najczystszej postaci, wiec istnieje tylko kilka naturalnych zjawisk takich zwiazk�w i sa one w wielkim popycie. Takze zdolnosc elementu magicznego do pozornego stworzenia z niczego jest dowodem na to, ze moc magiczna jest najczystszym i najwyzszym dobrem, jakie istnieje.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_04 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_04 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_05_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Prawdziwa moc");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Swiety obowiazek eksperta");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Jego moc oddziela mag od zwyklych ludzi. On, obdarzony zdolnoscia wplywania na boska moc, jest istota, do kt�rej normalne granice smiertelnej mocy nie maja zastosowania. ");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Kiedy mag osiagnal juz stopien, kt�ry pozwala mu przekroczyc granice swojego istnienia, moze postawic sie na poziomie wyzszym od zwyklego smiertelnika. Potrafi przeniknac przez granice przestrzeni i czasu, nawet koniec calej istoty, smierc, nie jest przeszkoda na jego drodze.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_05 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_05 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_06_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Z rudy");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Najlepsza rude do kucia broni mozna bez watpienia znalezc w kopalniach rudy niedalekohorinis. Jest zywiolem czystym i nasyconym magia. Ma niepor�wnywalna twardosc, a jednak jest tak miekki, ze nie peka. Bron kuta ze stali uzyskanej ze stali z glebokich kopaln przy niewyobrazalnie wysokim koszcie nie jest por�wnywalna z ostrzem, nawet jesli jest wykonana z najlepszej stali.");
					
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");	
					Doc_PrintLines	( nDocID,  1, ". Zadna oslona nie moze sie zlamac, nie moze przebic pancerza. Kr�lowie i bohaterowie z czas�w minionych nosili bron wykonana z najlepszej stali khorini, a w Myrtanie najlepsze ceny za taka bron osiaga sie do dzis. Za rude te pobierana jest jednak r�wniez wysoka cena. To tak, jakby ruda nie chciala uciec z glebi ziemi.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_06 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_06 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_07_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga",		0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "... ale dow�dca Rhobar wybral atak. Zebral swoja armie i naciskal skoncentrowana sila na zle przykryta prawa burte wroga. Nie pozostal dlugo z potyczkami, ale pchnal sie jak miecz w bok wrogich wojsk i pocial je jak papier. On ciagle pchal swoich ludzi naprz�d, zawsze dalej w kierunku granicy Varant. Wiedzial, ze jesli chce wygrac te bitwe, musi byc w stanie dzielic sie z wrogim panem i powstrzymac Gellona i Lukkora przed polaczeniem sil. ");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "  i daj mu niszczycielski cios. Musial byc w stanie przerwac jej zaopatrzenie, a potem nie m�gl juz wiecej wygrac...."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "... Gellon nie zyl, jego armia zostala pokonana, jego teraz bez przyw�dc�w na biegu. Ale Rhobar nie byl sklonny dac wrogowi szanse zebrania sie i kazal im natychmiast opuscic, aby zniszczyc wroga. Lukkor postanawia jednak wykorzystac te godzine i wyciagnac cios z wyczerpanych oddzial�w kr�la Rhobara.... Wiecej");
					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_07 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_07 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_08_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga",		0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga", 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "Wojna zostala rozstrzygnieta. Varant zrabowal swoje porty morskie, tak wazne dla zaopatrzenia wojsk. Kr�l Rhobar nie byl przez dlugi czas na polu bitwy pod Varantem, ale zostawil generalom, aby wymazac ostatnie wrogie oddzialy. Varant posiadal tylko wieksza armie, dowodzona przez Lukkora, najbardziej zdolnego wojownika armii Varant, wiecej niz raz zdolal przeksztalcic zblizajaca sie kleske w zwyciestwo.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, ". Teraz jednak jego armia zostala uwieziona. Numerycznie wyprzedza armie wroga, ale w beznadziejnej sytuacji. Lee, bohater wojny Myrtany zwabil go w pulapke. Jego ciezka kawaleria nie mogla walczyc na glebokim, bagnistym gruncie waskiej doliny, a otaczajace go wzg�rza byly zajete przez zolnierzy Lee' a, kt�rzy ciagle bili i zdziesiatkowywali swojego mistrza przez czlowieka. Rozpaczliwe niepowodzenia jego mezczyzn zostaly pobite z powrotem krwawe. Zostal pokonany.");
					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_08 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_08 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_09_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "    Piesn o piesni");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "		  ubolewanie");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
		
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "Na poczatku byla moc, czysta i czysta,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "pozostaje tylko echo starej przysiegi.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Czasy jednosci juz dawno minely,");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "po dobrach jest teraz naszym celem.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Teraz dzieli nas to, co kiedys bylo razem.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Zapuscmy ducha, kt�ry nas wzial.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Nasze piosenki pelne sa tesknoty.");				
					Doc_PrintLine	( nDocID,  1, "");				
					Doc_PrintLines	( nDocID,  1, "Jednosc juz nigdy wiecej nie przychodzi.");				
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_09 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_09 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_10_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Sluchac sl�w bog�w, bo to jest ich wola, ze sa slyszalne. Postepuj zgodnie z naukami bog�w, poniewaz ich wola jest, aby byli posluszni. Szanuj kaplan�w bog�w, poniewaz sa oni wybrani."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "Slowa Innosa:'A jezli wy nie rozumiecie, nie watpcie w slowa kaplan�w; ich czyny sa prawe i madre. Jestem bowiem wschodzacym sloncem, swiatlem i zyciem. I wszystko, ze tam pod slonce jest przeciwko mnie, i zostanie wypedzony na zawsze i zawsze w cieniu.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Slowa Adanosa:'Pracuj i zyj, bo dzien jest stworzony dla czlowieka do pracy. Szukaj wiedzy i wiedzy, abys m�gl ja przekazac, poniewaz tak wlasnie zostales stworzony. Ale kto jest bezczynny i leniwy, zostanie wygnany cieniom na wieki wieczne i wieczne."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "M�wi Beliar:'Ale kto, kto dziala zle i wbrew woli bog�w, ukarze go, cialo cierpieniem, cierpieniem i smiercia, ale na wieki i zawsze w cieniu. "					);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_10 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_10 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_11_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "Od poczatku czasu: Nie bylo dnia ani nocy i nie bylo zadnych przemieszczen po swiecie. Potem ukazal sie swiat Inno, a jego swiatlo oswietlilo wszystko. I Innos dal zycie swiatu. Ale poniewaz zadna istota nie moze zyc w swietle Inno, stworzyl slonce. Ale swiatlo bylo jeszcze zbyt mocne. Nastepnie Innos podzielil sie i stworzyl Beliara. Beliar przyni�sl noc. Teraz moga byc ludzie. Nastepnie Innos ponownie podzielil sie i stworzyl Adanos. Adanos dal ludziom wszechstronnosc, wiedze, ciekawosc i odwage. Innos byl bardzo zadowolony z siebie i swojej pracy.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "I postanowil pozostawic mieszkanc�w Adano calkowicie odpoczac. Ale Beliar byl obdarzony zazdroscia, bo mezczyzni nie modlili sie do niego i odpoczywali w nocy. Potem sie zloscil i uformowal mezczyzne. Czlowiek, kt�ry powinien oddawac mu czesc. Ale czlowiek stal sie czlowiekiem jak wszyscy inni ludzie. Beliar byl tak pelen gniewu, ze zabil czlowieka i powiedzial:'Jesli mnie nie czcza, niech mnie boja sie. I on stworzyl smierc i wzial zycie mezczyzn."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_11 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_11 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_12_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Red_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Red_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
   					Doc_PrintLine	( nDocID,  0, ""					);			
					Doc_PrintLines	( nDocID,  0, "Innos dal ludziom moc, by go uslyszec i przem�wic do niego. Dal im moc do dokonywania wielkich cud�w. I nazwal ja magia. Dzieki tej mocy ludzie moga swobodnie ksztaltowac swiat zgodnie ze swoja wola. Nie bylo granic, kt�re Innos pokazal. I tak mezczyzni byli czescia boskiej mocy tw�rczej. Ale mezczyzni byli podobni i nie lubili. Wiec zabral sile tym, kt�rzy byli niezadowoleni. Nieliczni, kt�rzy byli wdzieczni, postawili Innosa ponad wszystkimi innymi."	);
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
 					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "Wkr�tce ludzie ci czcili sie i obawiali i nazywani byli kaplanami. Ale nawet wsr�d nich bylo wielu, kt�rzy szybko byli niezadowoleni. I tak sie stalo, ze modlili sie do Adanosa i zapomnieli o swoich poczatkach. Kaplani byli podzieleni. Wojny zostaly rozpetane, a wiara w boska wszechmoc wkr�tce stala sie mitem. Wiec kaplani podzielili sie. Ci, kt�rzy poszli za Adanosem nazywani byli teraz magami wody, ale konsekrowani Inno nazywani byli czarodziejami ognia."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_12 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_12 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_13_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite
 
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					); 					
					Doc_PrintLines	( nDocID,  0, "Jego pisarstwo przetrwalo czasy, a jego rada jest uwazana za podrecznik polowan. Po wielkiej bitwie na p�lnocy, kazdy z rodak�w wie, jak radzic sobie z lukiem. Jednakze podczas polowan nalezy przestrzegac kilku zasad, kt�re wykraczaja poza proste obchodzenie sie z bronia! Gra jest niesmiala i nieprzewidywalna.");
					
					//2.Seite

					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "Sztuka lowiectwa lucznictwa ma nie tylko najstarsza tradycje, ale jest tez najpowszechniej spotykana we wszystkich mozliwych polowaniach. Technika tego rodzaju tradycyjnego lowiectwa prawie nie zmienila sie w ciagu tysiacleci i prawdopodobnie nie zmieni sie w przyszlosci. Jakie okolicznosci naprawde decyduja o przebiegu polowan z lukiem? Rozpoznanie tych praw jest prawdziwa sztuka lowienia luk�w."	);
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_13 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_13 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_14_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga" , 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 	0		);
					
					//1.Seite

					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
					Doc_PrintLines	( nDocID,  0, "Przez 2000 lat te nauki Mistrza stanowily filary rozwoju sztuk walki.  "	);
  					Doc_PrintLine	( nDocID,  0, ""					);					
  					Doc_PrintLine	( nDocID,  0, ""					);					
   					Doc_PrintLines	( nDocID,  0, "Szkoli ruchliwosc ciala, odpoczynek i predkosc, obserwacje i reakcje. Ruchy musza byc dobrze skoordynowane, a postawa musi byc prawidlowa, aby osiagnac najlepszy rozw�j sily."	);			
					
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
					Doc_PrintLines	( nDocID,  1, "Trzon duchowych i fizycznych nauk Mistrza przetrwal wiele lat.  "	);
  					Doc_PrintLine	( nDocID,  1, ""					);					
  					Doc_PrintLine	( nDocID,  1, ""					);					
 					Doc_PrintLines	( nDocID,  1, "Jego wyjatkowy sukces wplynal na pokolenie. Tysiace lat, w kt�rych swiat czesto zmienial sw�j wyglad, ale jedno z nich bedzie trwalo wiecznie: harmonia sil wewnetrznych z ukierunkowanym zewnetrznym ruchem ciala."					);					
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_14 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_14 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_15_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "W centrum znajduje sie Morgrad z jego czterech zywiol�w: ziemia, woda, ogien i powietrze, przestrzen przejsciowa, w jego wnetrzu niewypowiedziana ciemnosc Beliara. Przede wszystkim jest to sfera nieba."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "W hierarchii kosmosu czlowiek zajmuje pozycje odbiorcy. Przez swoja dusze jest on czescia najwyzszej istoty, duch boski, podczas gdy jego przemijajace cialo sklada sie z substancji Morgradu. Jako maly obraz calego swiata.");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Synodyczna orbita planet, tj. okres czasu pomiedzy dwoma podobnymi pozycjami w stosunku do stopnia upamietnienia naszego swiata r�zni sie o kilka stopni w kazdym wieku, tak wiec mozemy spodziewac sie, ze znajdziemy sie w ciaglym ruchu z reszta kosmosu."	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Kiedy ustalamy kalendarz, na poczatku nawiazywalismy do kursu ksiezycowego, aby utrzymac polaczenie z rzeczywista dlugoscia roku slonecznego.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_15 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_15 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_16_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Balsam wzroku:"	);
					Doc_PrintLine	( nDocID,  0, "----------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLines	( nDocID,  0, "W tym celu jest malowany na jego oczach z�lcia. Z�lk jest gorzki w smaku. Jesli ta gorycz jest brana do oka, tj. jesli spojrzymy na gorycz, rodzi sie z niej madrosc. Zobaczymy! Gorzkosc i madrosc wzajemnie sie wykluczaja. To sa kijanki przeciwne!");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, ""	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Lakomstwo, smutek i rozczarowanie sa gorzkie, ale madrosc jest pocieszajaca w kazdym b�lu duchowym. Gorzkosc i madrosc sa alternatywa. Gdziekolwiek gorycz, tam nie ma madrosci, a gdzie madrosc, tam nie ma goryczy.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_16 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_16 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_17_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0		);
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Wino zapomnienia"	);
					Doc_PrintLine	( nDocID,  0, "--------------------"					);
						Doc_PrintLine	( nDocID,  0, ""					);			
					Doc_PrintLines	( nDocID,  0, "Wysoko na zboczach Archolo znajduja sie najlepsze winogrona, kt�re mozna znalezc dla tego wina. Sztuka dojrzewania tego wina do perfekcji polega na tym, by pod zadnym pozorem nie pozostawiac go w ruchu. Winogrona miesza sie z pospolita kapusta Syos przed winnica. ");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Oto i badz zdumiony, gdy Magister przemienia najczystsza wode w doskonale wino. Wszyscy skladaja mu hold i zywia sie jego prezentem. Magister karze swoich leniwych uczni�w w butelkach, ogien jest cudownie zapalony, a czarne weze wyrastaja.");
					Doc_Show		( nDocID );
					
					if (BeliarBibliothek_17 == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						BeliarBibliothek_17 = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARBIBLIOTHEK_FAKE_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int rnd; rnd = r_max(1);

		if (rnd == 0)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE01");
		}
		else if (rnd == 1)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE02");
		}
		else if (rnd == 2)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE03");
		}
		else if (rnd == 3)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE04");
		}
		else if (rnd == 4)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE05");
		}
		else if (rnd == 5)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE06");
		}
		else if (rnd == 6)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE07");
		}
		else if (rnd == 7)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE08");
		}
		else if (rnd == 8)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE09");
		}
		else if (rnd == 9)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE10");
		}
		else if (rnd == 10)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE11");
		}
		else if (rnd == 11)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE12");
		}
		else if (rnd == 12)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE13");
		}
		else if (rnd == 13)
		{
			B_Say	(hero, NULL, "$BOOKSTANDNOTREADABLE14");
		};
	};
};
