INSTANCE ItWr_Anschlagtafel_Baltram		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Baltram;
	scemeName			=	"MAP";
	description			= 	"z Baltram";
};
func void UseItWr_Anschlagtafel_Baltram ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Baltram_Milch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Milch), " Milch"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Kaese > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Kaese), " Käse"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Brot > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Brot), " chleby"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Wasser > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wasser), " Wasser"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Bier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Bier), " Bier"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Wacholder > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wacholder), " Wacholder"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Wein > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wein), " Wein"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Baltram_Wurst > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wurst), " kielbasy"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Grog > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Grog), " Grog"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Rum > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Rum), " Rum"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis), " dynie"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Melone > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Melone), " melony"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Fleisch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Fleisch), " surowe mieso"));
		};	

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Baltram");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Bosper		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Bosper;
	scemeName			=	"MAP";
	description			= 	"od Bospozywczego";
};
func void UseItWr_Anschlagtafel_Bosper ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Bosper_Wolffell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wolffell), " wilce"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Zaehne > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Zaehne), " Zähne"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Krallen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Krallen), " Krallen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Wargfell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wargfell), " futra ostrzegawcze"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell), " cienie"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut), " gady"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Trollfell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Trollfell), " Trollfell"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte), " Plyty do ciagników Minecrawer"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn), " cien klakson"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Bosper_Ast > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Ast), " branze"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Bosper");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Constantino		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Constantino;
	scemeName			=	"MAP";
	description			= 	"z Constantino";
};
func void UseItWr_Anschlagtafel_Constantino ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuernessel), " Feuernessel"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Blauflieder), " Blauflieder"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Flasche > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Flasche), " Butelki laboratoryjne do wody"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut), " ziola"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel), " korzenie lecznicze"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut), " Feuerkraut"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel), " ognie"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feldknoeterich), " Feldknöterich"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Buddlerfleisch), " Buddlerfleisch"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz), " ciemne grzyby"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz), " muchomory"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Sumpfkraut), " Sumpfkraut"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilknospe), " Heilknospe"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Unkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Unkraut), " chwasty"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze), " rosliny lecznicze"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Constantino");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Hakon		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Hakon;
	scemeName			=	"MAP";
	description			= 	"Hakon";
};
func void UseItWr_Anschlagtafel_Hakon ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);

		if (Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_MilizKurzchwert), " Kurzschwert der Miliz"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_Degen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Degen), " Degen"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Kurzschwert), " Kurzschwert"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut), " Debowy amulet skórny"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut), " Zelazna skóra"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_RingKraft > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingKraft), " Pierscien pierscienia zasilania"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_Schwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Schwert), " Schwert"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Hakon");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Harad		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Harad;
	scemeName			=	"MAP";
	description			= 	"Harad";
};
func void UseItWr_Anschlagtafel_Harad ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert), " Rustydliwe miecze"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender), " Rdzawe zwierzeta dwureczne"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Goldbrocken), " Goldbrocken"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Erzbrocken), " Erzbrocken"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Schmiedehammer), " Schmiedehammer"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Zange > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Zange), " Zange"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Schuerhaken), " Schürhaken"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_Rohstahl > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_Rohstahl), " Rohstahl"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Harad_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Harad");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Ignaz		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Ignaz;
	scemeName			=	"MAP";
	description			= 	"z Ignaz";
};
func void UseItWr_Anschlagtafel_Ignaz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Pech > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Pech), " Pech"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Kohle > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Kohle), " wegiel"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Quartz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Quartz), " kwarc"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall), " krysztaly skalne"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Papier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Papier), " Papier"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel), " Krwi kregoslup"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Minecrawlerzangen), " Minecrawlerzangen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Spinnenzangen), " Spinnenzangen"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Feldraeuberzangen), " Feldräuberzangen"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen), " gobliny"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen), " kosc szkieletowa"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber), " zaklecie"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber), " zapomniec o czarze"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber), " lek"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel), " Schwefel"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Ignaz");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Jora		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Jora;
	scemeName			=	"MAP";
	description			= 	"przez Jore";
};
func void UseItWr_Anschlagtafel_Jora ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Jora_Bolzen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Bolzen), " Bolzen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen), " krótkie odcinki"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen), " wierzba"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Fackel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Fackel), " flary"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke), " pickisy"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Laute > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Laute), " Laute"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett), " pancerz"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Klosterwein > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Klosterwein), " Klosterwein"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Jora_Schafswurst > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Schafswurst), " parówki owcze"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Jora_Pfeil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Pfeil), " rzutki"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Jora_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Jora");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Lobart		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Lobart;
	scemeName			=	"MAP";
	description			= 	"przez";
};
func void UseItWr_Anschlagtafel_Lobart ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Lobart_Sense > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sense), " Sense"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_KleineSense > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_KleineSense), " Male kosy"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Rasiermesser), " Rasiermesser"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Pfanne > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Pfanne), " Pfanne"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Beil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Beil), " Beil"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Kerze > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Kerze), " Kerze"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Harke > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Harke), " grabie"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel), " Kochlöffel"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lobart_Sichel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sichel), " sierpy"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Lobart");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Lutero		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Lutero;
	scemeName			=	"MAP";
	description			= 	"z Luteroro";
};
func void UseItWr_Anschlagtafel_Lutero ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch), " srebrny puchar"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Silberteller > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Silberteller), " Silberteller"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_SilbernerKerzenstaender), " Silberner Kerzenständer"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch), " puchar"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer), " Trollhauer"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn), " Smocze rogi rogów smoczych"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn), " bagienne zeby rekina"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut), " lupiny bagienne"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett), " Amulet plomieni"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Runenstein > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Runenstein), " Runenstein"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz), " Golek kamienny"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz), " demon"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Goldring > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldring), " zloto"));
		};	

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Lutero");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Thorben		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Thorben;
	scemeName			=	"MAP";
	description			= 	"od Thorb";
};
func void UseItWr_Anschlagtafel_Thorben ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Thorben_Ast > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Ast), " branze"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Beil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Beil), " Beil"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Hammer > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Hammer), " Hammer"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst), " ciezkie galezie"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Dolch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Dolch), " sztylety"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Besen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Besen), " Besen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Buerste > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Buerste), " szczoteczki"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Saege > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Saege), " pily"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Thorben");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Zuris		(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Zuris;
	scemeName			=	"MAP";
	description			= 	"zuris";
};
func void UseItWr_Anschlagtafel_Zuris ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Wymaga:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz), " esencje"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt), " ekstrakty z maneniki"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt), " Ekstrakty z ekstraktów leczniczych"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPElixier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPElixier), " Eliksiry uzdrawiania"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier), " Manaeliksyny"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_Feuerball > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerball), " Pecherzyki babelkowe ogniotrwale"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil), " Rolki czarów strzal ogniotrwalych"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz), " Esencje uzdrawiania"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("wynagrodzenie ", IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Gold)), " Zloto, zloto"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Zuris");

		Doc_Show		( nDocID );

};
