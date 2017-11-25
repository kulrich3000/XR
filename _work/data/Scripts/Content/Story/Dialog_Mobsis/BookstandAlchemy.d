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
					Doc_PrintLine	( nDocID,  0, "Potions of magical power");
					Doc_PrintLine	( nDocID,  0, "and its ingredients"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Essence"						);
					Doc_PrintLine	( nDocID,  0, "2 Fire nettles"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Extract"						);
					Doc_PrintLine	( nDocID,  0, "2 fire herbs"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mana Elixir"						);
					Doc_PrintLine	( nDocID,  0, "2 fire roots"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Any work on the alchemy table requires a laboratory water bottle that is consumed during the process."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For the brewing of potions of healing or the strengthening of magical power, the user always needs a plant in addition to the special ingredient:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For the brewing of potions that cause permanent changes in the body or mind, the user always needs a plant: "						);
					Doc_PrintLines	( nDocID,  1, "King's Sorrel"		);
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
					Doc_PrintLine	( nDocID,  0, "Drinking Healing Power");
					Doc_PrintLine	( nDocID,  0, "and its ingredients"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Essence of Healing"						);
					Doc_PrintLine	( nDocID,  0, "2 medicinal plants"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Extract of Healing"						);
					Doc_PrintLine	( nDocID,  0, "2 medicinal herbs"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Elixir of Healing"						);
					Doc_PrintLine	( nDocID,  0, "2 healing roots"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Any work on the alchemy table requires a laboratory water bottle that is consumed during the process."	); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For the brewing of potions of healing or the strengthening of magical power, the user always needs a plant in addition to the special ingredient:"			);
					Doc_PrintLine	( nDocID,  1, "Feldknöterich"		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "For the brewing of potions that cause permanent changes in the body or mind, the user always needs a plant: "						);
					Doc_PrintLines	( nDocID,  1, "King's Sorrel"		);
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
					Doc_PrintLines	( nDocID,  0, "Drinking trough of permanent changes");
					Doc_PrintLine	( nDocID,  0, "and its ingredients"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					
					
					Doc_PrintLine	( nDocID,  0, "Elixir of Dexterity"						);
					Doc_PrintLine	( nDocID,  0, "1 goblin berry"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Speed Potion"						);
					Doc_PrintLines	( nDocID,  0, "1 Snapperkraut - this potion does not need a Kronstöckl, but fieldknotsweed"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Elixir of Strength"						);
					Doc_PrintLine	( nDocID,  0, "1 Dragon root"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Elixir of Life"						);
					Doc_PrintLine	( nDocID,  0, "1 Healing Root"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Elixir of Spirit"						);
					Doc_PrintLine	( nDocID,  0, "1 fire root"						);
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "Brewing these recipes is the art of alchemy. They all have their own way of demanding a Kronstöckl as an ingredient."); 
					Doc_PrintLine	( nDocID,  1, ""						);
					Doc_PrintLines	( nDocID,  1, "The potion of speed is much easier to make, partly because you don't need a Kronstöckl. "						);
					Doc_PrintLine	( nDocID,  1, ""						);
					
					
					Doc_Show		( nDocID );
					
					if (ALchemy_3_permanent == FALSE)
					{
						B_GivePlayerXP (XP_Bookstand);

						ALchemy_3_permanent = TRUE;
					};	

	};
};
