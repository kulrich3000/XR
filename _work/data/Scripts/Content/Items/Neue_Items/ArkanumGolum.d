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
		Doc_PrintLines	( nDocID,  0, "Only who has been confronted with these creatures that came from the elements can truly understand how much respect these magical beings will teach an adventurous wanderer.");
		Doc_PrintLine	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "Steingolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "These colossuses of stone are nearly invulnerable in battle. Swords, axes and bows do not seem to do any damage to these monsters.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "The only plausible report of a battle against such a leviathan was written by a mercenary. He reported how the blunt hit of a war hammer caused cracks in the golem, until it finally burst apart.");

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
		Doc_PrintLines	( nDocID,  0, "The ice golems are somehow related to the stone golems, though their physical substance seems to consist of water. Any familiar weapon seems to slide off the surface of this icy being.");
		Doc_PrintLines	( nDocID,  0, "Adventurous wanderers be warned of this creature's icy breath as well, because it surrounds the unsuspecting with a pillar of ice.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLines	( nDocID,  1, "A Magician of Fire reported an encounter with such a creature, but apparently he didn't see much of a threat in it.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Feuergolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "According to reports, these fiery beings can convert their victims into a sea of flames with only one touch.");
		Doc_PrintLines	( nDocID,  1, "Only last year, a hunting group in the highlands encountered such a heap of embers. The outcome is unclear, but ice is said to have stopped the infernal creature.");
		Doc_Show		( nDocID );
	};
