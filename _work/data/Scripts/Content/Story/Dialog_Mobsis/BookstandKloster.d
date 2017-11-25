//-------------------------------------------------------------------------------------
//				Weitere Buchständer in der Magierbibliothek
//-------------------------------------------------------------------------------------
//				Runensteine 
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Rune_01_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Page 1"					);
					Doc_PrintLine	( nDocID,  0, "The Runestones"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Page 2"					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, " "					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Runen und Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Rune_02_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Page 1"					);
					Doc_PrintLine	( nDocID,  0, "The Runes and their Ingredients"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Page 2"					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, " "					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Die Lehren Innos
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Innos_01_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Page 1"					);
					Doc_PrintLine	( nDocID,  0, "The teachings of Inno"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Page 2"					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, " "					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Die Gebote Innos
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Innos_02_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Page 1"					);
					Doc_PrintLine	( nDocID,  0, "The Commandments of Inno"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Page 2"					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, " "					);
					Doc_Show		( nDocID );

	};
};
//-------------------------------------------------------------------------------------
//				Runen des ersten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_01_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE FIRST CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "The runes of the first circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Light");
					Doc_PrintLine	( nDocID,  0, "gold coin");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Feuerpfeil");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Heal Light Wounds");
					Doc_PrintLine	( nDocID,  0, "Heilpflanze");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
	};
};
//-------------------------------------------------------------------------------------
//				Runen des zweiten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_02_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE SECOND CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "The runes of the second circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Feuerball");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
	
	};
};  
//-------------------------------------------------------------------------------------
//				Runen des dritten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_03_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE THIRD CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the third circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					
					
					Doc_PrintLine	( nDocID,  0, "Heal Medium Wounds");
					Doc_PrintLine	( nDocID,  0, "Heilkraut");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_PrintLine	( nDocID,  0, "Small Fire Storm");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "");
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
		
	};
};  	
//-------------------------------------------------------------------------------------
//				Runen des vierten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_04_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE FOURTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the fourth circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Large Fireball");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Destroy Undead");
					Doc_PrintLine	( nDocID,  0, "Geweihtes Wasser");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					
					
					
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
		
	};
};  					
//-------------------------------------------------------------------------------------
//				Runen des fünften Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_05_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE FIFTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the fifth circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					
					Doc_PrintLine	( nDocID,  0, "Large Fire Storm");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Flammenzunge");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Heal Heavy Wounds");
					Doc_PrintLine	( nDocID,  0, "Heilwurzel");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
		
	};
};  			
//-------------------------------------------------------------------------------------
//				Runen des sechsten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Kreise_06_S1()		
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

					Doc_PrintLine	( nDocID,  0, "THE SIXTH CIRCLE"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLines	( nDocID,  0, "The runes of the sixth circle and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "Fire Rain");
					Doc_PrintLine	( nDocID,  0, "Pech");
					Doc_PrintLine	( nDocID,  0, "Schwefel");
					Doc_PrintLine	( nDocID,  0, "Flammenzunge");
					Doc_PrintLine	( nDocID,  0, "");
					
					
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLine	( nDocID,  1, "Shrink Monster");
					Doc_PrintLine	( nDocID,  1, "Knochen eines Goblins");
					Doc_PrintLine	( nDocID,  1, "Trollhauer");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
			
					Doc_PrintLines	( nDocID,  1, "For the production of a rune, ONE of the listed ingredients is required."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "The user must be familiar with the spell formula and must have a naked rune stone and a spell role of the spell."					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Only when these prerequisites are fulfilled can he or she get to work at the rune table."					);
					Doc_Show		( nDocID );
		
	};
};  					
//-------------------------------------------------------------------------------------
//				Die Regeln im Kloster
//-------------------------------------------------------------------------------------
FUNC VOID Use_Bookstand_Rules_01_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Page 1"					);
					Doc_PrintLine	( nDocID,  0, "rules"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					
					Doc_PrintLines	( nDocID,  0, "");
			
					
					
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, "Page 2"					);
					Doc_PrintLine	( nDocID,  1, ""					);
			
					Doc_PrintLines	( nDocID,  1, " "					);
					Doc_Show		( nDocID );

	};
};




