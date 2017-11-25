// *****************************************************************
// //Joly: Auge Innos nicht dabei? Kein Problem. Xardas hilft auch dir Idiot!!!!!!!!!!!!
// Vorsicht: Nur für D.A.U.s
// *****************************************************************

INSTANCE ItSe_XardasNotfallBeutel_MIS	(C_Item)
{
	name 				=	"Very Strange Leather Satchel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_XardasNotfallBeutel;
	
	description			= 	name;
	
	TEXT[0]				= 	"";
	TEXT[1]				= 	"In the bag seem to be";
	TEXT[2]				= 	"a hard object ";
	TEXT[3]				= 	"and be a document.";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_XardasNotfallBeutel ()
{
	CreateInvItems (hero, ItWr_XardasErmahnungFuerIdioten_MIS ,1);
	CreateInvItems (hero, ItMi_InnosEye_Discharged_Mis ,1);

	var string concatText;
		
	concatText = ConcatStrings( "2" , PRINT_ItemsErhalten);		
	Print (concatText);
}; 

//**********************************************************************************
//	ItWr_XardasErmahnungFuerIdioten_MIS
//**********************************************************************************

INSTANCE ItWr_XardasErmahnungFuerIdioten_MIS	(C_Item)
{
	name 				=	"Xardas' Letter of admonition";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_XardasErmahnungFuerIdioten;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_XardasErmahnungFuerIdioten ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "My young protégé, you have disappointed me bitterly. How could you leave without the eye Innos in your luggage?"					);
					Doc_PrintLines	( nDocID,  0, "I can only hope that your negligence has its limits. Otherwise you will never free the world from the evil of this world and I will have to kill you personally for your stupidity."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                      Xardas"					);
					
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Brief in der Krypta
//----------------------------------------------------------------------------------

INSTANCE ItWr_Krypta_Garon		(C_Item)
{
	name 				=	"Old letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Krypta_Garon;
	scemeName			=	"MAP";
	description			= 	name;

	TEXT[3]				= 	"shaky";
};
func void Use_Krypta_Garon ()
{   
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels

					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I failed. My efforts to bring Inubis back to the path of the righteous were in vain. "					);
					Doc_PrintLines	( nDocID,  0, "At first I thought I was dead. But there is still power in the old bones of Ivan. "					);
					Doc_PrintLines	( nDocID,  0, "Inubis has risen from the dead. Banished from the old order of the Paladins, he only seeks revenge for his curse."					);
					Doc_PrintLines	( nDocID,  0, "Many of his followers followed him. I don't know how it could have happened that a commander like Inubis would fall for evil. "					);
					Doc_PrintLines	( nDocID,  0, "I found his grave in this crypt. But whether I can ever tell a person about it is not certain. Therefore, I write these lines in the hope that they will be found."					);
					Doc_PrintLines	( nDocID,  0, "Be warned. A mighty enemy stretches its claws to the souls of the righteous. Inubis will not be the last."					);
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "May Innos protect your souls."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                 Ivan");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );

}; 

//****************************************************************************
//				DragonIsle_Undead_Schlüssel
//			---------------------------------------------
//****************************************************************************

//**********************************************************************************
//	Knasttürschlüssel für Pedros Zelle auf DI
//**********************************************************************************

INSTANCE ItKe_OrkKnastDI_MIS(C_Item)
{
	name 				=	"Key of the Orcish Colonel";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItKe_EVT_UNDEAD_01(C_Item)	//Schlüssel für erste Tür
{
	name 				=	"Key of Archol";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_03;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	name;
	
};

//**********************************************************************************
//	Schlüssel zum Labyrinth der Untoten auf DI
//**********************************************************************************

INSTANCE ItKe_EVT_UNDEAD_02	(C_Item)
{
	name 				=	"Key of the Key Master";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_03;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};


//**********************************************************************************
//	Kammerschlüssel für´s Tor zum Saal des Untoten Drachen.
//**********************************************************************************
	
INSTANCE ItKe_LastDoorToUndeadDrgDI_MIS	(C_Item)
{
	name 				=	"Black Magician's Room Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_03;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//**********************************************************************************
//	Schriftrolle für´s Tor zum Saal des Untoten Drachen.
//**********************************************************************************
	
INSTANCE ItWr_LastDoorToUndeadDrgDI_MIS	(C_Item)
{
	name 				=	"Black Magician's Scroll";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;

	on_state[0]			=   Use_ItWr_LastDoorToUndeadDrgDI_MIS;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_ItWr_LastDoorToUndeadDrgDI_MIS ()
{   
		var int nDocID;
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels

					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "KHADOSH "					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "EMEM KADAR"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "The Eye of Power enlightens your path");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
	
	B_LogEntry (TOPIC_HallenVonIrdorath,"The words KHADOSH EMEM KADAR were written in the Scroll of the Black Mage. That sounds like an incantation, but what can this be applied to and what is the Eye of Power?"); 
};
//**********************************************************************************
//	Schlüssel zur Truhe in der Kammer des OberDementors.
//**********************************************************************************
INSTANCE ItKe_ChestMasterDementor_MIS	(C_Item)
{
	name 				=	"Black Magician's Chest Key";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_03;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]	= value;
};

//**********************************************************************************
//	Der Schwarzmagiernovize
//**********************************************************************************

//**********************************************************************************
//	ItWr_Rezept_MegaDrink_MIS
//**********************************************************************************

INSTANCE ItWr_Rezept_MegaDrink_MIS	(C_Item)
{
	name 				=	"Recipe";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RezeptFuerMegaTrank;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_RezeptFuerMegaTrank ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I was able to bring a very old art back to life. I'm afraid Feodaron wouldn't be very uplifted by my findings."					);
					Doc_PrintLines	( nDocID,  0, "It would simply mean that I would have to process his entire brood into a potion in my laboratory. If he wasn't sitting on his balls all the time like a chicken, I'd have tried it by now. But I still have a little respect for his breath."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Embarla Firgasto:"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "10 dragon eggs, a crushed black pearl and a pinch of sulphur."					);
					Doc_PrintLines	( nDocID,  0, "The emulsion is brought to the boil and then driven through the distiller under constant stirring."					);
					Doc_PrintLines	( nDocID,  0, "Use the elixir with caution. It's got heavy side movements. The entire mana budget will be confused."					);
					
					Doc_Show		( nDocID );
		
		PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] = TRUE;
};

//**********************************************************************************
//	Tagebuch des SchwarzmagierNovizen
//**********************************************************************************

INSTANCE ItWr_Diary_BlackNovice_MIS (C_ITEM)
{	
	name 					=	"Diary";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V3_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_Diary_BlackNovice;
};

	FUNC VOID Use_Diary_BlackNovice()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "BOOK_RED_L.tga"  , 0 	); 		// VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "BOOK_RED_R.tga" 	, 0		); 		// VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages 
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "I am already waiting 36 days for my convocation. I don't think they're gonna take me in anymore. I've already done everything they asked me to do. I carried everything after them."					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "The keymaster ordered me to seal the bars. I haven't gotten around to it yet. If it goes on like this, someone else will be able to just walk through the gate.");
					Doc_PrintLines	( nDocID,  0, "Too bad I can't remember the combinations. ");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "I would have been secretly in the great hall by now. I can't wait to see the master. Do you think they'll let me join him once I'm one of them?"	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "Tried my luck last night. But I already failed at the two lever chambers before I could push the three switches of the west wing in the correct order. The dog has locked the chambers. Tomorrow I'll try to take the key from him....");
					Doc_Show		( nDocID );

	B_LogEntry (TOPIC_HallenVonIrdorath,"The diary of the black magic novice talks about lever chambers, keymasters, switch combinations and other stuff. Should I keep in mind, maybe it'll help me later."); 
};

//**********************************************************************************
//	ItWr_ZugBruecke_MIS
//**********************************************************************************

INSTANCE ItWr_ZugBruecke_MIS	(C_Item)
{
	name 				=	"Old letter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ZugBruecke;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_ZugBruecke ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "   Last warning!"					);
					Doc_SetMargins	( nDocID, -1, 50, 50, 70, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "I don't care if you can cross the bridge from the other side or not. If it were up to me, you'd all burn in hell anyway."					);
					Doc_PrintLines	( nDocID,  0, "I'll have the bridge moved in while I'm in my residence. If I catch someone else shooting bow and arrow at the switches to come over, then I'll hang the shooter on the next tree by my own hand."	);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                      archipelago"					);
					
					Doc_Show		( nDocID );
};


//**********************************************************************************
//	ItMi_PowerEye zum öffnen der letzten Tür
//**********************************************************************************

INSTANCE ItMi_PowerEye (C_Item)
{
	name 				=	"Eye of Power";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	visual 				=	"ItMi_DarkPearl.3ds";
	material 			=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};

