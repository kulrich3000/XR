FUNC VOID B_ShowKrankheitText(var int pos)
{
	StPl_nDocID = Doc_Create		() ;							// DocManager
	Doc_SetPages	( StPl_nDocID,  2 );                         
	Doc_SetPage 	( StPl_nDocID,  0, "Book_Brown_L.tga", 	0 	);  
	Doc_SetPage 	( StPl_nDocID,  1, "Book_Brown_R.tga",	0	);
	Doc_SetFont 	( StPl_nDocID, -1, FONT_Book	   				); 	
	Doc_SetMargins	( StPl_nDocID,  0,  275, 20, 30, 20, 1   	);

	if (pos == 1)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "... oslabiaja organizm i konsumuja go.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Istnieja formy lekkie, w tym zwykle zimno. Wystepuje, gdy cialo narazone jest na zimna pogode z niewystarczajaca ochrona."						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Ich progresja jest stosunkowo gladka i równomierna, witalnosc, sila fizyczna i inne zdolnosci z czasem nieco sie zmniejszaja. Jesli jednak cialo przetrwalo kilka przeziebien w krótkich odstepach czasu, twardnieje przed kolejnymi przeziebieniami."		);     
	}
	else if (pos == 2)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Choroby spowodowane zadawaniem ran w zwiazku z zabrudzeniami i smieciami sa jeszcze gorsze. Ukaszenia miesozernych zwierzat i brudna, zardzewiala bron moga zatruwac krew ofiary.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Czas trwania choroby jest nieco krótszy, a jej ognisko jest mniej zauwazalne. Jednak z biegiem czasu bedzie on coraz silniejszy, a straty w umiejetnosciach beda rosnac."		);     
	}
	else if (pos == 3)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Jeszcze bardziej zlosliwe sa choroby, które rozwijaja sie w rozkladajacych sie tuszach. Zgnile ugryzienie monitora lub kontakt z cialem nieumarlym moze byc niszczycielskie. Równiez w tym przypadku, choc poczatek jest stosunkowo lagodny, przejscie do gwaltownego, przedluzajacego sie kursu jest krótkie.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Nawet zdrowie zyciowego, silnego czlowieka bedzie bardzo ucierpialo. Nie trzeba dodawac, ze nieleczeni ludzie czesto oczekuja na smierc."		);     
	}
	else if (pos == 4)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Leczenie chorego organizmu powinno zaczac wzmacniac je jedzeniem i napojami. Nalezy unikac mocnych napojów alkoholowych, a szczególnie korzystne sa swieze owoce i warzywa. Czas trwania, zwlaszcza w przypadku trudnych faz, mozna zatem znacznie skrócic.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Duza ilosc snu moze równiez pomóc organizmowi przezwyciezyc chorobe, zapewniajac regeneracje cierpiacemu cialu. Nie nalezy jednak zapominac, ze choroba rozwija sie równiez podczas snu."		);     
	}
	else if (pos == 5)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Pacjent moze byc zaskoczony ciezka faza snu i umierac, jesli leczenie nie zostalo wsparte srodkami zewnetrznymi.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Do najskuteczniejszych z nich naleza rosliny o wlasciwosciach leczniczych oraz warzone z nich eliksiry, które kazdy ekspert alchemik oferuje do sprzedazy."		);     
	}
	else if (pos == 6)
	{
		Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLines	( StPl_nDocID,  0, "Jesli czlowiek przezywa kilka chorób przenoszonych przez istoty, staje sie coraz bardziej odporny. Organizm uczy sie lepiej zwalczac dana chorobe i w ten sposób zmniejszac jej konsekwencje.");                                             
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  0, ""						);                                
			                                                                                          
			Doc_SetMargins	( StPl_nDocID, -1, 30, 20, 275, 20, 1   		);                                
			Doc_PrintLine	( StPl_nDocID,  1, ""						);                                
			Doc_PrintLine	( StPl_nDocID,  1, "");                                
			Doc_PrintLines	( StPl_nDocID,  1, "Prawdopodobienstwo ponownego wystapienia tej samej choroby maleje. Poniewaz organizm jest równiez przeszkolony w leczeniu chorób, moze szybciej reagowac. Zmniejsza sie czas trwania wszystkich chorób."		);     
	};

	Doc_Show		( StPl_nDocID );
};
