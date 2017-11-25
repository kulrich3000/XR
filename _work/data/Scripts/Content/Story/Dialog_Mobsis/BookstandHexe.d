//##########################################################################
//##
//##	Bookstand Animals
//##
//##########################################################################

var int Hexe_1_permanent;

FUNC VOID Use_BookstandHexe1_S1()		//Tierbücher
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

					Doc_PrintLine	( nDocID,  0, "Giganci prehistorii"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Niedaleko wschodu znajduje sie olbrzymi Talos. Jego cialo jest solidne jak zelazo, jego odpornosc na magie, bron, lód i ogien jest ogromna. Legenda glosi, ze czesc jego wladzy przechodzi na tych, którzy potrafia go pokonac."						);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "Na zachodzie nad okolica wznosi sie mróz olbrzymi. Jego aura powoduje, ze wszystko umacnia sie w poblizu lodu, mówi sie. Wielu nieszczesliwych ludzi, którzy go karmili, zostalo juz uwiklanych w psucie.... Wiecej"						);
					Doc_Show		( nDocID );
					
					if (Hexe_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Hexe_1_permanent = TRUE;
					};	

	};
};
