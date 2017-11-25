INSTANCE ItWr_GolemBook1(C_Item)
{	
	name 					=	"Arcanum Golum - tom I";
	
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
		Doc_PrintLine	( nDocID,  0, "ARKANUM GOLUM - tom I");
		Doc_PrintLine	( nDocID,  0, "=====================");
		Doc_PrintLines	( nDocID,  0, "(Magia Olejek)");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Tylko ci, którzy kiedykolwiek natkneli sie na jedna z tych stworzen stworzonych z zywiolów, naprawde zrozumieja szacunek jaki te magiczne stworzenia moga zaszczepic w przygód wedrowcy.");
		Doc_PrintLine	( nDocID,  0, "");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLine	( nDocID,  1, "Steingolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "Te kolosy kamienne sa niemal nieuchronne w walce. Miecze, osie i luki nie maja wplywu na te potwory.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLines	( nDocID,  1, "Jedyna wiarygodna relacja z kleski takiego Lewiatana pochodzi od najemnika. Pisal o tym, jak to sie stalo, ze nieostre uderzenie jego rozgrzanego mlotka spowodowalo pekniecia w Golemie, az w koncu rozpadlo sie.");

		Doc_Show		( nDocID );
	};

INSTANCE ItWr_GolemBook2(C_Item)
{	
	name 					=	"Golon Arcanum - tom II";
	
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
		Doc_PrintLine	( nDocID,  0, "ARKANUM GOLUM - tom II");
		Doc_PrintLine	( nDocID,  0, "======================");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLine	( nDocID,  0, "Eisgolem");
		Doc_PrintLine	( nDocID,  0, "---------");
		Doc_PrintLines	( nDocID,  0, "Oleje lodu sa zwiazane z olejkami kamiennymi, ale ich fizyczna substancja wydaje sie skladac w calosci z zamrozonej wody. Jakakolwiek bron o jakiej wiemy zdaje sie slizgac na gladkiej powierzchni owych lodowatych stworzen.");
		Doc_PrintLines	( nDocID,  0, "Przygodny wedrowiec powinien tez byc ostrzegany przed lodowym tchnieniem tej istoty, bowiem natychmiast wychwytuje ona kazdego niespodziewanego czlowieka w kolumne lodu.");

		//2.Seite
		Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_PrintLines	( nDocID,  1, "Pewnego razu magik pozarniczka doniósl o spotkaniu z takim stworzeniem, ale zdawal sie nie dostrzegac w nim zadnego powaznego zagrozenia.");
		Doc_PrintLine	( nDocID,  1, "");
		Doc_PrintLine	( nDocID,  1, "Feuergolem");
		Doc_PrintLine	( nDocID,  1, "------------");
		Doc_PrintLines	( nDocID,  1, "Zgodnie z raportami, owe ogniste istoty moga zamienic swoje ofiary w morze ognia za jednym dotknieciem.");
		Doc_PrintLines	( nDocID,  1, "Zaledwie w zeszlym roku grupa lowiecka na wyzynach spotkala sie z takim skupiskiem zaru. Wynik jest niejasny, ale mówi sie, ze lód zatrzymal piekielne stworzenie.");
		Doc_Show		( nDocID );
	};
