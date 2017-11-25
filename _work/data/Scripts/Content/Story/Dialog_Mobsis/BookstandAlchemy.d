//##########################################################################
//##
//##	Bookstand Alchemie
//##
//##########################################################################

//----------------------
var int ALchemy_1_permanent;
//----------------------
//----------------------
var int ALchemy_2_permanent;
//----------------------
//----------------------
var int ALchemy_3_permanent;
//----------------------

FUNC VOID Use_BookstandALCHEMY1_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Potegi mocy magicznej");
					Doc_PrintLine	( nDocID,  0, "i jego skladniki"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Essence"						);
					Doc_PrintLine	( nDocID,  0, "2 Pokrowce przeciwpozarowe"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "ekstrakt z maneny"						);
					Doc_PrintLine	( nDocID,  0, "2 ziola pozarowe"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Elixir"						);
					Doc_PrintLine	( nDocID,  0, "2 Korzenie pozarowe"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Wszelkie prace na stole alchemicznym wymagaja laboratoryjnej butelki wody, która jest konsumowana podczas procesu."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Do warzenia eliksirów uzdrawiajacych lub wzmacniania magicznej mocy, uzytkownik zawsze potrzebuje rosliny oprócz specjalnego skladnika:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Do warzenia eliksirów, które powoduja trwale zmiany w organizmie lub umysle, uzytkownik zawsze potrzebuje rosliny: "						);
					Doc_PrintLines	( nDocID,  1, "Kronstöckl"		);
					Doc_Show		( nDocID );
					
					if (ALchemy_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						ALchemy_1_permanent = TRUE;
					};	  

	};
};

FUNC VOID Use_BookstandALCHEMY2_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Sila lecznicza");
					Doc_PrintLine	( nDocID,  0, "i jego skladniki"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Istota uzdrawiania"						);
					Doc_PrintLine	( nDocID,  0, "2 rosliny lecznicze"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Ekstrakt z ekstraktu leczniczego"						);
					Doc_PrintLine	( nDocID,  0, "2 ziola lecznicze"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Eliksir uzdrawiania"						);
					Doc_PrintLine	( nDocID,  0, "2 Korzenie lecznicze"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Wszelkie prace na stole alchemicznym wymagaja laboratoryjnej butelki wody, która jest konsumowana podczas procesu."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Do warzenia eliksirów uzdrawiajacych lub wzmacniania magicznej mocy, uzytkownik zawsze potrzebuje rosliny oprócz specjalnego skladnika:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Do warzenia eliksirów, które powoduja trwale zmiany w organizmie lub umysle, uzytkownik zawsze potrzebuje rosliny: "						);
					Doc_PrintLines	( nDocID,  1, "Kronstöckl"		);
					Doc_Show		( nDocID );
					
					if (ALchemy_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						ALchemy_2_permanent = TRUE;
					};	

	};
};

FUNC VOID Use_BookstandALCHEMY3_S1()		//Alchemiebücher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Picie w postaci stalych zmian");
					Doc_PrintLine	( nDocID,  0, "i jego skladniki"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					Doc_PrintLine	( nDocID,  0, "Eliksir umiejetnosci"						);
					Doc_PrintLine	( nDocID,  0, "1 jagoda goblinowa"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Szybkosc"						);
					Doc_PrintLines	( nDocID,  0, "1 Kronstöckl - ten eliksir nie potrzebuje Kronstöckla, ale polowej rdestnicy."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Skrobia Eliksir"						);
					Doc_PrintLine	( nDocID,  0, "1 Korzen smoczy"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Eliksir zycia"						);
					Doc_PrintLine	( nDocID,  0, "1 Goraczka Ogrzewanie Rdzen"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Eliksir Ducha Swietego"						);
					Doc_PrintLine	( nDocID,  0, "1 korzen pozarowy"						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Piwowarstwo tych receptur jest sztuka alchemii. Wszyscy oni maja swój wlasny sposób, aby zadac od Kronstöckl jako skladnika."); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Szybkosc jest duzo latwiejsza do wykonania, czesciowo dlatego, ze nie jest potrzebny Kronstöckl. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					
					
					Doc_Show		( nDocID );
					
					if (ALchemy_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						ALchemy_3_permanent = TRUE;
					};	

	};
};
