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

					Doc_PrintLine	( nDocID,  0, "The Giants of Prehistory"					);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Not far to the east resides the giant Talos. His body is as solid as iron, his resistance to magic, weapons, ice and fire is immense. Legend has it that a part of his power passes to those who can defeat him."						);
				
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, "In the west, the Frost Giant rises above the surroundings. His aura causes everything to solidify in the vicinity of ice, it is said. Many unlucky people who fed him were already caught up in the spoilage..."						);
					Doc_Show		( nDocID );
					
					if (Hexe_1_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						Hexe_1_permanent = TRUE;
					};	

	};
};
