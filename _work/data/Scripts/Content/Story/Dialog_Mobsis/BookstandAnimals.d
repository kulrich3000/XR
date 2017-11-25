//##########################################################################
//##
//##	Bookstand Animals
//##
//##########################################################################

//----------------------
var int Animals_1_permanent;
//----------------------
//----------------------
var int Animals_2_permanent;
//----------------------
//----------------------
var int Animals_3_permanent;
//----------------------

FUNC VOID Use_BookstandAnimals1_S1()		//Tierb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Polowanie i zdobycze"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Kazde zwierze i posiadanie wlasnych trofe�w, co zwieksza slawe i bogactwo doswiadczonego mysliwego."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Doswiadczony mysliwy zna trofea swojej ofiary i wie jak je wypatroszyc.");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "zaciskac swoje zeby"						);
					Doc_PrintLines	( nDocID,  0, "Zeby sa bronia wielu zwierzat i istot. Kazdy, kto wie jak ich zlapac z ofiary, znajdzie swoja ofiare w wilkach, ludziach, rekinach i trollach."						);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Zdjac sk�ry"						);
					Doc_PrintLines	( nDocID,  1, "Talent, kt�ry doswiadczony mysliwy czesto potrafi wykorzystac - jest wiele zwierzat, kt�rych cialo jest chronione futrem. Owce, wilki i biegacze cieni to tylko niekt�re z nich."						); 
					Doc_PrintLines	( nDocID,  1, "Lowca, kt�ry opanuje ten talent, moze r�wniez obierac sk�rki Sumphai i Lurker.  "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "zlamac pazury"						);
					Doc_PrintLines	( nDocID,  1, "Sztuka, kt�ra nadaje sie do uzytku na wszelkiego rodzaju monitorach, slimakach, cieniach i cieniach.  "						);
					Doc_Show		( nDocID );
					
					if (Animals_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_1_permanent = TRUE;
					};	

	};
};

FUNC VOID Use_BookstandAnimals2_S1()		//Tierb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Polowanie i zdobycze"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Kazde zwierze i posiadanie wlasnych trofe�w, co zwieksza slawe i bogactwo doswiadczonego mysliwego."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Krew muchy"			);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Do wypatroszenia owych diabl�w potrzebne sa dwie specjalne sztuki."					); 
					Doc_PrintLines	( nDocID,  0, "Z jednej strony mozna odciac skrzydla, a z drugiej strony mozna oderwac zadlo." );
					Doc_PrintLines	( nDocID,  0, "Doswiadczony mysliwy powinien wykorzystac obydwie sztuki do zdobycia trofe�w."	);
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Zlodzieje polowi i minecrawlerzy atakuja szczypcami. Zwlaszcza szczypce miotel mineral�w"						);
					Doc_PrintLines	( nDocID,  1, "sa uwazane za szczeg�lnie cenne, poniewaz zawieraja wydzieline zwiekszajaca moc magiczna."						);
					Doc_PrintLines	( nDocID,  1, "Nalezy jednak cieszyc sie nim z ostroznoscia, poniewaz organizm ludzki nie reaguje na niego z czasem."						);   
					Doc_PrintLines	( nDocID,  1, "Bardzo popularne sa r�wniez plyty Minecrawler. Z nich mozna wykonac pancerz. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, " "						);
					Doc_Show		( nDocID );
					
					if (Animals_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_2_permanent = TRUE;
					};

	};
};

FUNC VOID Use_BookstandAnimals3_S1()		//Tierb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Polowanie i zdobycze"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Kazde zwierze i posiadanie wlasnych trofe�w, co zwieksza slawe i bogactwo doswiadczonego mysliwego."						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Monitor pozarowy"						);
					Doc_PrintLines	( nDocID,  0, "Ta wyjatkowa istota nalezy do rodzaju jaszczurek monitorujacych, ale potrafi oddychac ogniem, co nieuchronnie zabija kazdego kto zblizy sie do niej w kilku krokach."						);
					Doc_PrintLines	( nDocID,  0, "Tylko ci, kt�rzy sa w stanie uchronic sie przed ogniem, moga z nimi konkurowac i wylapac z nich swoje cenne jezyki."	);		
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Petrel cienia"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "The Shadow Creeper jest starozytnym samotnikiem, kt�ry zyje w lesie."						); 
					Doc_PrintLines	( nDocID,  1, "Pozostalo tylko kilka okaz�w, wiec nie stanowi on juz zagrozenia dla ludzi, dop�ki nie przekroczy swoich teren�w lowieckich."						);
					Doc_PrintLines	( nDocID,  1, "Glowa Bieguna Cienia jest zwienczona rogiem, kt�ry uwazany jest za cenne trofeum. Lowca musi nauczyc sie sztuki wlasciwego przelamywania rogu,"						);
					Doc_PrintLines	( nDocID,  1, "aby zdobyc to trofeum."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
							
					Doc_Show		( nDocID );
					
					if (Animals_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Animals_3_permanent = TRUE;
					};

	};
};

