INSTANCE ItWr_GolemBook1(C_Item)
{	
	name 					=	"Arcanum Golum - Volume I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"NewBook_V1_3.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook1;
};

	FUNC VOID UseGolemBook1()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ;							// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 	// -1 -> all pages 
		
		//1.Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "ARKANUM GOLUM - Volume I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0, "(Magic of the Golems)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Only those who have ever encountered one of these creatures created from the elements will really understand the respect these magical creatures can instill in an adventurous wanderer.");
		Doc_PrintLine	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "Steingolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "These stone colossuses are almost invulnerable in battle. Swords, axes and bows seem to have no effect on these monsters.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "The only credible account of the defeat of such a Leviathan comes from a mercenary. He wrote about how the blunt impact of his warhammer drove cracks into the Golem until it finally burst apart.");

		Doc_Show		( nDocID );
	};

INSTANCE ItWr_GolemBook2(C_Item)
{	
	name 					=	"Arcanum Golum - Volume II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	100;

	visual 					=	"NewBook_V1_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseGolemBook2;
};

	FUNC VOID UseGolemBook2()
	{   
		var int nDocID;
		
		nDocID =
		Doc_Create		()			  ;							// DocManager 
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 		); 
		Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0		);
		Doc_SetFont 	( nDocID, -1, "font_10_book.tga"); 	// -1 -> all pages 

		//1. Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "ARKANUM GOLUM - Volume II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "Eisgolem");
		Doc_PrintLine	( nDocID,  0, "---------");
		Doc_PrintLines	( nDocID,  0, "The ice olems are related to the stone olems, but their physical substance seems to consist entirely of frozen water. Any weapon we know of seems to slip on the smooth surface of these icy creatures.");
		Doc_PrintLines	( nDocID,  0, "The adventurous wanderer should also be warned against the ice breath of this creature, as it instantly traps every unsuspecting person in a column of ice.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLines	( nDocID,  1, "Once upon a time, a fire magician reported the encounter with such a creature, but he did not seem to have recognized any serious threat in it.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Feuergolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "According to reports, these fiery creatures can turn their victims into a sea of flames with just one touch.");
		Doc_PrintLines	( nDocID,  1, "Only last year, a hunting group in the highlands encountered such a heap of embers. The outcome is unclear, but ice is said to have stopped the infernal creature.");
		Doc_Show		( nDocID );
	};
