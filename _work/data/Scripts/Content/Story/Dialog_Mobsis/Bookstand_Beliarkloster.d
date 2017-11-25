var int Beliarkloster_1_permanent;
var int Beliarkloster_2_permanent;
var int Beliarkloster_3_permanent;
var int Beliarkloster_4_permanent;

FUNC VOID BOOKSTAND_BELIARKLOSTER_01_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Protokól z posiedzenia pana Ur GarShocka"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Król ludzkosci zostal przyniesiony przez samego Beliara. Ostatnia bitwa, a tym samym wojna, dobiegla konca. A cel ten mógl osiagnac tylko sam Beliar, który spowodowal piorun deszczu, abysmy mogli ruszyc naprzód.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Beliar jestes tutaj,"); 
					Doc_PrintLines	( nDocID,  1, "nasz Pan i Stwórca"); 
					Doc_PrintLines	( nDocID,  1, "wszelkie zlo,"); 
					Doc_PrintLines	( nDocID,  1, "wszystkie zle rzeczy,"); 
					Doc_PrintLines	( nDocID,  1, "którego królestwo jest najbardziej chwalebne"); 
					Doc_PrintLines	( nDocID,  1, "i najwiekszy."); 
					Doc_PrintLines	( nDocID,  1, "Tylko dzieki Twej mocy"); 
					Doc_PrintLines	( nDocID,  1, "Bedziemy zwyciezcami,"); 
					Doc_PrintLines	( nDocID,  1, "dreczyc wszystkich,"); 
					Doc_PrintLines	( nDocID,  1, "przeciwko poddanym."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_1_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_02_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Protokól proroka Gosha Tar-Wogha"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Beliar objawil sie dzisiaj wszystkim nasladowcom, ale niektórzy byli sceptyczni co do mocy swego Pana. Oni chcieli znak, ale potem pojawil sie demon otoczony mgla i powiedzial:'Królestwo, które walczy przeciwko sobie jest skazane na zgube, wiec nie watpic w moc Beliara, ale znalezc i zabic wszystkich tych, którzy obracaja sie przeciwko prawdziwej wiary Beliara.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Przyjmowanie zla"					);
					Doc_PrintLine	( nDocID,  1, "-----------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Nikt nie bierze glowy swojego wroga z nimi, a nastepnie trzyma go w tajemnicy lub pokazuje go nikomu. Glowa jest wypalana wlócznia, aby kazdy mógl ja zobaczyc, zarówno sojusznik, jak i wróg. Twoja nienawisc jest kluczem do czystej zlosliwosci. W zwiazku z tym idz i nienawidzic wszystkich swoich wrogów z wyjatkiem krwi i walczyc z nimi. Kiedy jestes pelen nienawisci i nie ma w tobie zadnego jasnego miejsca, wejdziesz do królestwa Beliara."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_2_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_03_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Przypowiesc o zlym w tobie"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Mezczyzna mial gospodarstwo rolne, dzierzawil je innym rolnikom i wyjechal na kilka miesiecy. Kiedy przyszly zniwa, wyslal sluge, aby odebral czynsz. Zostal pobity i pobity przez chlopów. Rolnik wyslal teraz innego rolnika, ale to samo mu sie stalo. Teraz rolnik wyslal syna. Ale rolnicy widzieli swoja szanse i wykorzystali ja. Bo w swiecie panuje tylko prawo najsilniejszych.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar oczyszcza swiatynie"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Drodzy bracia i siostry, nie zapominajcie, jak dawno temu Beliar dal naszym przodkom ten wspanialy klasztor na srodku morza, abysmy mogli szerzyc jego jedyna i prawdziwa wiare. Prowadzil nas przez morze i dawal nam wszystko, co bylo nam potrzebne w zyciu. Ale wszyscy ci nowicjusze nie chcieli wyrzec sie swoich starych bogów. Dlatego wszyscy zgineli reka Beliara."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_3_permanent = TRUE;
					};
	};
};

FUNC VOID BOOKSTAND_BELIARKLOSTER_04_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLines	( nDocID,  0, "Protokoly pracy Thernus' a czarnego maga"					);
					Doc_PrintLine	( nDocID,  0, "-------------------------"					);
					Doc_PrintLine	( nDocID,  0, ""					);
				
					
					Doc_PrintLines	( nDocID,  0, "Ja i moi bracia Black Mage ostrzegalismy tych glupców, ze Beliar ich wezmie i potepiamy, jesli nie wyrzekli sie swoich starozytnych bogów. To byla doslownie krwiak. Beliar nie byl az tak zly od przegranej porazki nad Innosem.");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLines	( nDocID,  1, "Beliar zabija 200. 000 000 Paladynki"					);
					Doc_PrintLine	( nDocID,  1, "-------------------------"					);
					Doc_PrintLine	( nDocID,  1, ""					);
				
					
					Doc_PrintLines	( nDocID,  1, "Wtedy Beliar zawolal swoich slug na pole bitwy. I wszyscy przyszli. Szkielety, orki, demony, nieumarli, poszukiwacze i czarni nowicjusze. Paladynowie mieli kontrole nad sila Beliara, az Beliar nagle interweniowal i zniszczyl wszystko. Pozar i piorun padal. Nawet duza czesc jego armii byla rozciagnieta, ale zwyciestwo bylo jasne."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Beliarkloster_4_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Beliarkloster_4_permanent = TRUE;
					};
	};
};
