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
					Doc_PrintLines	( nDocID,  0, "Rytual zostal wykonany, aby wykorzystac przywiazanie czlowieka do mocy jednego Boga przeciwko zlu. Podobnie jak ciala zabitych, Radanos zostal podzielony, wola i sila rozpadly sie na 1000 sztuk. Tutaj znajduje sie tylko jego znak, sztylet. Niech przetrwa czasy do pewnego dnia pojawia sie godzien, który wie jak zlamac zaklecie."					);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Rozwaz wiec twoje uczynki, wybrane jeden, aby dziewieciu opiekunów moglo cie uznac za godnych."); 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_Show		( nDocID );
					
					if (Assassinen_Opferstaette_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Assassinen_Opferstaette_permanent = TRUE;
					};
	};
};
