//##########################################################################
//##
//##	Bookstand History
//##
//##########################################################################

//----------------------
var int History_1_permanent;
//----------------------
//----------------------
var int History_2_permanent;
//----------------------
//----------------------
var int History_3_permanent;
//----------------------

FUNC VOID Use_BookstandHistory1_S1()		//Geschichtsb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Droga walki"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
				
					
					Doc_PrintLines	( nDocID,  0, "Atak jest najlepsza obrona przed tym, co nie jest ludzkie. Parada wymierzona w zwierzeta lub potwory jest bezcelowa."						);
					Doc_PrintLines	( nDocID,  0, "Lepiej jest trzymac przeciwnika w dystansie z ukierunkowanymi pociagnieciami bocznymi, aby wykonac zaskakujace polaczenie kilku pociagniec."						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Kombinacje kilku pociagniec sa naturalnie zarezerwowane dla doswiadczonego wojownika. A jesli nawet dojdziesz do mistrzostw w bitwie, mozesz tworzyc kolejne kombinacje."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (History_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_1_permanent = TRUE;
					};

	};
	
};

FUNC VOID Use_BookstandHistory2_S1()		//Geschichtsb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Wyspa"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Miasto portowe Khorini lezy na wyspie u wybrzezy Kr�lestwa Myrtana."						);
					Doc_PrintLines	( nDocID,  0, "Wyspa slynie z doliny Minental. Watpliwa reputacja, bo przez wiele lat przez cala doline rozciagala sie magiczna bariera i wszyscy wiezniowie imperium zostali tam wzieci."						);
					Doc_PrintLines	( nDocID,  0, "W ten spos�b dolina stala sie kolonia karna dla wielu skazanych, kt�rzy wykopali magiczna rude gleboko pod ziemia. "						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Poza Khorinis jest jeszcze kilka gospodarstw, kt�re wykorzystuja dobra glebe do uprawy pszenicy i burak�w, ale takze owiec."						); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Od pokolen najwieksze gospodarstwo jest wlasnoscia wielkiego rolnika, kt�ry dzierzawi okoliczne grunty innym rolnikom. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Na srodku wyspy znajduje sie stary klasztor. Klasztor w Inno, prowadzony przez mag�w ognia. Tam prowadza magiczne i alchemiczne badania i produkuja wino."						);
					
					Doc_Show		( nDocID );
					
					if (History_2_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_2_permanent = TRUE;
					};

	};
};


FUNC VOID Use_BookstandHistory3_S1()		//Geschichtsb�cher
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_RED_L.tga", 	0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_RED_R.tga",	0	);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   	);  	

					Doc_PrintLine	( nDocID,  0, "Prawo wyspy"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					
				
					
					Doc_PrintLines	( nDocID,  0, "Gdziekolwiek ludzie sie spotykaja, nalezy uregulowac wsp�lne zycie. Czy to w klasztorze, w miescie czy w gospodarstwie rolniczym."						);
					Doc_PrintLines	( nDocID,  0, "W ten spos�b kazda zbrodnia przeciwko spolecznosci bedzie karana."						);
					Doc_PrintLines	( nDocID,  0, "Z korzyscia dla Wsp�lnoty nie wolno podzegac do walk ani angazowac sie w walki. "						);
					Doc_PrintLines	( nDocID,  0, "Kradziez jest r�wniez wykroczeniem, kt�re nie pozostaje niezauwazone. Owce sa r�wniez chronione prawem.  "						);
					Doc_PrintLines	( nDocID,  0, " "						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Ci, kt�rzy nawet bili i mordowali innego czlowieka, musza oczekiwac, ze zostana osadzeni na miejscu."						);
					Doc_PrintLines	( nDocID,  1, "A ci, kt�rzy moga sie z tego uciec, musza zaplacic ciezka grzywne. "						);
					Doc_PrintLines	( nDocID,  1, "We wszystkich wielkich miejscach mezczyzni sprawuja urzad sprawiedliwosci. M�wi sie im, jakie dzialania sa podejmowane i zadaja kary za przywr�cenie pokoju. "						); 
					Doc_PrintLines	( nDocID,  1, "Kto padl ofiara przestepstwa lub moze zeznawac przeciwko niemu, ten nie bedzie m�wil dobrze o przestepcy."						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Oczywiscie sa tez ludzie, kt�rzy nie dbaja o prawo. Zwlaszcza bandyci i najemnicy. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, ""						);
					Doc_Show		( nDocID );
					
					if (History_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						History_3_permanent = TRUE;
					};

	};
};

