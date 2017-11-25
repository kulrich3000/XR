var int Assassinen_Opferstaette_permanent;

FUNC VOID BOOKSTAND_ASSASSINEN_OPFERSTAETTE_S1()		//Buchständer in der Magierbibliothek
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	&& (Assassinen_Dabei == TRUE)
	&& (Npc_KnowsInfo(hero, Info_Mod_Eremit_Zeremoniendolch4))
	{	
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  2 );                         
					Doc_SetPage 	( nDocID,  0, "Book_MayaRead_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_MayaRead_R.tga",	0		);
					
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	
					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  	

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "The ritual was performed to use man's attachment to the powers of one God against evil. Just like the bodies of the slaughtered, Radanos was divided, the will and power were dissolved from each other and scattered into 1000 pieces. Only his mark, the dagger, is enclosed here. May he endure the times until one day the worthy one appears, who knows how to break the spell."					);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Consider therefore your deeds, chosen one, that the nine guardians may recognize you as worthy."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Assassinen_Opferstaette_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Assassinen_Opferstaette_permanent = TRUE;
					};
	};
};
