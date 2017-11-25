//-------------------------------------------------------------------------------------
//				Runensteine Wassermagie
//-------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------
//				Runen des ersten Kreises und ihre Ingredenzien
//-------------------------------------------------------------------------------------
FUNC VOID Use_Runemaking_KDW_CIRC1_S1()		
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

					Doc_PrintLine	( nDocID,  0, "Die Kreise des Wassers"					);
					Doc_PrintLine	( nDocID,  0, ""	);
					Doc_PrintLines	( nDocID,  0, "The runes of water and the ingredients needed to make them ");
					Doc_PrintLine	( nDocID,  0, ""	);
					
					Doc_PrintLine	( nDocID,  0, "twister");
					Doc_PrintLine	( nDocID,  0, "Wings of a blood fly");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Ice Lance");
					Doc_PrintLine	( nDocID,  0, "glacier quartz");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Geyser");
					Doc_PrintLine	( nDocID,  0, "Aquamarin");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Storm");
					Doc_PrintLine	( nDocID,  0, "glacier quartz");
					Doc_PrintLine	( nDocID,  0, "Bluflie wing");
					Doc_PrintLine	( nDocID,  0, "");
					
					Doc_PrintLine	( nDocID,  0, "Waterfist");
					Doc_PrintLine	( nDocID,  0, "Aquamarin");
					Doc_PrintLine	( nDocID,  0, "Bergkristall");
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

FUNC VOID Use_Runemaking_KDW_CIRC2_S1()		
{
	Use_Runemaking_KDW_CIRC1_S1();
};
FUNC VOID Use_Runemaking_KDW_CIRC3_S1()		
{
	Use_Runemaking_KDW_CIRC1_S1();
};
FUNC VOID Use_Runemaking_KDW_CIRC4_S1()		
{
	Use_Runemaking_KDW_CIRC1_S1();
};
FUNC VOID Use_Runemaking_KDW_CIRC5_S1()		
{
	Use_Runemaking_KDW_CIRC1_S1();
};
FUNC VOID Use_Runemaking_KDW_CIRC6_S1()		
{
	Use_Runemaking_KDW_CIRC1_S1();
};

