INSTANCE ItWr_Anschlagtafel_Baltram		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Baltram;
	scemeName			=	"MAP";
	description			= 	"from Baltram";
};
func void UseItWr_Anschlagtafel_Baltram ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Brot), " breads"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Wurst), " sausages"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Kuerbis), " pumpkins"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Melone > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Melone), " melons"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Baltram_Fleisch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Fleisch), " raw meat"));
		};	

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Baltram_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Baltram");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Bosper		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Bosper;
	scemeName			=	"MAP";
	description			= 	"from Bosper";
};
func void UseItWr_Anschlagtafel_Bosper ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Bosper_Wolffell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wolffell), " wolffels"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Wargfell), " warning furs"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferfell), " shadow skins"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Reptilienhaut), " reptile skins"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Trollfell > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Trollfell), " Trollfell"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Minecrawlerplatte), " Minecrawler plates"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Schattenlaeuferhorn), " shadow horn"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Bosper_Ast > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Ast), " branches"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Bosper_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Bosper");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Constantino		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Constantino;
	scemeName			=	"MAP";
	description			= 	"from Constantino";
};
func void UseItWr_Anschlagtafel_Constantino ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Flasche), " Laboratory water bottles"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilkraut), " medicinal herbs"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilwurzel), " healing roots"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerkraut), " Feuerkraut"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Feuerwurzel), " fire roots"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Dunkelpilz), " dark mushrooms"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Fliegenpilz), " toadstools"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Unkraut), " weeds"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Heilpflanze), " medicinal plants"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Constantino_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Constantino");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Hakon		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Hakon;
	scemeName			=	"MAP";
	description			= 	"from Hakon";
};
func void UseItWr_Anschlagtafel_Hakon ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_AmulettEichenhaut), " Amulet of Oak Skin"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingEisenhaut), " Ring of Iron Skin"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_RingKraft > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_RingKraft), " Ring of Force"));
		};
		if (Mod_Anschlagtafel_Khorinis_Hakon_Schwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Schwert), " Schwert"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Hakon_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Hakon");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Harad		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Harad;
	scemeName			=	"MAP";
	description			= 	"from Harad";
};
func void UseItWr_Anschlagtafel_Harad ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigesSchwert), " Rusty Swords"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Harad_RostigerZweihaender), " Rusty two-handed animals"));
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
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Harad_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Harad");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Ignaz		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Ignaz;
	scemeName			=	"MAP";
	description			= 	"from Ignaz";
};
func void UseItWr_Anschlagtafel_Ignaz ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Pech > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Pech), " Pech"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Kohle > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Kohle), " coals"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Quartz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Quartz), " glacier quartz"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Bergkristall), " rock crystals"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Papier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Papier), " Papier"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Blutfliegenstachel), " Bloodfly Stinger"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Goblinknochen), " goblin bones"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Skelettknochen), " skeletal bone"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schlafzauber), " sleeping spell"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Vergessenszauber), " oblivion spell"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Angstzauber), " fear spell"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Schwefel), " Schwefel"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Ignaz_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Ignaz");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Jora		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Jora;
	scemeName			=	"MAP";
	description			= 	"by Jora";
};
func void UseItWr_Anschlagtafel_Jora ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Jora_Bolzen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Bolzen), " Bolzen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Kurzbogen), " short sheets"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Weidenbogen), " willow arches"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Fackel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Fackel), " flares"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Spitzhacke), " pickaxes"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Laute > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Laute), " Laute"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Harnischamulett), " Harness Amulet"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Jora_Klosterwein > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Klosterwein), " Klosterwein"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Jora_Schafswurst > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Schafswurst), " sheep sausages"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Jora_Pfeil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Jora_Pfeil), " darts"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Jora_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Jora");

		Doc_Show		( nDocID );
};

INSTANCE ItWr_Anschlagtafel_Lobart		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Lobart;
	scemeName			=	"MAP";
	description			= 	"by Lobart";
};
func void UseItWr_Anschlagtafel_Lobart ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Lobart_Sense > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sense), " Sense"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_KleineSense > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_KleineSense), " Small scythes"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Harke), " rake"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Kochloeffel), " Kochlöffel"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lobart_Sichel > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Sichel), " sickles"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Lobart_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Lobart");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Lutero		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Lutero;
	scemeName			=	"MAP";
	description			= 	"from Lutero";
};
func void UseItWr_Anschlagtafel_Lutero ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Silberkelch), " silver goblet"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldkelch), " goblet"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Trollhauer), " Trollhauer"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Drachensnapperhorn), " dragon snapper horns"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaizahn), " swamp shark teeth"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Sumpfhaihaut), " bog sharkskins"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_FlammenAmulett), " Amulet of Fire"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Runenstein > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Runenstein), " Runenstein"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Steingolemherz), " Stone Golem"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Daemonenherz), " demon heart"));
		};	
		if (Mod_Anschlagtafel_Khorinis_Lutero_Goldring > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Goldring), " gold rings"));
		};	

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Lutero_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Lutero");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Thorben		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Thorben;
	scemeName			=	"MAP";
	description			= 	"from Thorb";
};
func void UseItWr_Anschlagtafel_Thorben ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Thorben_Ast > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Ast), " branches"));
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
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_SchwererAst), " heavy branches"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Dolch > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Dolch), " daggers"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Besen > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Besen), " Besen"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Buerste > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Buerste), " brushes"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Thorben_Saege > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Saege), " saws"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Thorben_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Thorben");

		Doc_Show		( nDocID );

};

INSTANCE ItWr_Anschlagtafel_Zuris		(C_Item)
{
	name 				=	"fence";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseItWr_Anschlagtafel_Zuris;
	scemeName			=	"MAP";
	description			= 	"from Zuris";
};
func void UseItWr_Anschlagtafel_Zuris ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_Book  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Requires:"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					
		if (Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Manaessenz), " mana essences"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaExtrakt), " mana extracts"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPExtrakt), " Healing extracts"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPElixier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPElixier), " Elixirs of Healing"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_ManaElixier), " Manaelixins"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_Feuerball > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerball), " Fireball Bubble Rollers"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Feuerpfeil), " Fire-arrow spell rolls"));
		};		
		if (Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz > 0)
		{
			Doc_PrintLine	(nDocID,  0, ConcatStrings(IntToString(Mod_Anschlagtafel_Khorinis_Zuris_HPEssenz), " Essences of Healing"));
		};

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, ConcatStrings(ConcatStrings("pay ", IntToString(Mod_Anschlagtafel_Khorinis_Zuris_Gold)), " Gold for"));

		Doc_PrintLine	(nDocID,  0, "");
		Doc_PrintLine	(nDocID,  0, "Zuris");

		Doc_Show		( nDocID );

};
