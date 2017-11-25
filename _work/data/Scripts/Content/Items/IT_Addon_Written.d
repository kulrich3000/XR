//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
INSTANCE ITWr_Addon_Hinweis_02		(C_Item)
{
	name 				=	"Wazne informacje";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Hinweis_02;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=  "Z pubu w obozie bandytów";
};
func void Use_Hinweis_02 ()
{
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Hej, chlopaki,");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Lou's zniknal w bagnie, prawdopodobnie zostal zjedzony przez rekiny.");	
					Doc_PrintLines	( nDocID,  0, "Znacznie gorzej - z nim klucz drzwiowy równiez zniknal."					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Wiec kazdy, kto go znajdzie, moze zatrzymac rzeczy Lou' a.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Snaf");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Heiltrunk
//**********************************************************************************
INSTANCE ITWr_Addon_Health_04		(C_Item)
{
	name 				=	"Receptura napojów leczniczych";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1000;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Heilrezept_04;
	scemeName			=	"MAP";
	description			= 	"Czysta energia zyciowa";
	
	TEXT[2]				=	"Za mocny napój.";
	TEXT[3]				=	"Znajomosc eliksirów uzdrawiania jest wymagana do stosowania.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};
func void Use_Heilrezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Health_04] = TRUE;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do zrobienia eliksiru uzdrawiajacego potrzebuje 1 wezelka i 3 esencje gojenia.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Produkcja eliksiru leczniczego:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebne sa chwast pola i trzy esencje uzdrawiania.");	
					Doc_PrintLines	( nDocID,  0, "Pochylic i zaparzac zgodnie z przepisem eliksiru uzdrawiajacego. ");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ten eliksir moze byc stworzony tylko przez alchemika, który zna przepis eliksiru uzdrawiajacego.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Manatrunk
//**********************************************************************************
INSTANCE ITWr_Addon_Mana_04		(C_Item)
{
	name 				=	"Mana - Receptura";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1500;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Manarezept_04;
	scemeName			=	"MAP";

	description			= 	"Czysta mana";
	
	TEXT[2]				=	"Za mocny napój.";
	TEXT[3]				=	"Znajomosc czlowieka - eliksiru jest niezbedna do jego zastosowania.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};
func void Use_Manarezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = TRUE;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do przyrzadzenia napoju z many potrzebuje 1 rdesta i 3 esencje z maniku.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Produkcja manatrunka:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebne sa rdestnica i trzy esencje magicznej mocy.");	
					Doc_PrintLines	( nDocID,  0, "Pochylenie i warzenie wedlug receptury Many - Eliksiru. ");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ten eliksir moze byc stworzony tylko przez alchemika, który zna recepture eliksiru mana.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
INSTANCE ITWr_Addon_Hinweis_01		(C_Item)
{
	name 				=	"Wazne informacje";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Hinweis_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=  "Zawieszony przy chacie w bagnie";
};
func void Use_Hinweis_01 ()
{
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Hej, chlopaki,");
					Doc_PrintLines	( nDocID,  0, "W bagaznikach znajduja sie przedmioty przeznaczone do naglych wypadków. ");	
					Doc_PrintLines	( nDocID,  0, "To dla wszystkich. Wiec po prostu wez je, jesli je potrzebujesz.");	
					Doc_PrintLines	( nDocID,  0, "I zabierz tyle, ile potrzebujesz."					);
					Doc_PrintLines	( nDocID,  0, "Jesli wszyscy sie do tego trzymaja, to bedzie dzialac."					);
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Fletcher");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Brief von Lucia an William
//**********************************************************************************
INSTANCE ITWr_Addon_William_01		(C_Item)
{
	name 				=	"okólnik";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_William_01;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				=	"Wedkarz William mial z nim te notatke.";
};
func void Use_William_01 ()
{
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "William,");
					Doc_PrintLines	( nDocID,  0, "Kiedy ksiezyc bedzie w pelni oswietlony, straznik bedzie rozpraszal uwage.");	
					Doc_PrintLines	( nDocID,  0, "Wymykaj sie - ale badz ostrozny!");	
					Doc_PrintLines	( nDocID,  0, "Jesli podazasz za grzbietem trabki, mozesz zostawic bagno."					);
					Doc_PrintLines	( nDocID,  0, "Obóz piratów znajduje sie po drugiej stronie doliny, daleko na zachód. "					);
					Doc_PrintLines	( nDocID,  0, "Stamtad ucieczka lodzia powinna byc latwa. ");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Ktos, kto dobrze sie z Toba rozumie");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Rezept von Miguel (Minecrawler Trank)
//**********************************************************************************
INSTANCE ITWr_Addon_MCELIXIER_01		(C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MCELIXIER_01;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Postawa na zmiane eliksiru umyslu.";
	Text[1]				= 	"Ten eliksir pomaga przywrócic utracone wspomnienia.";
	TEXT[5]		=	NAME_Value;
	COUNT[5]	=	value;
};
func void Use_MCELIXIER_01 ()
{
		Knows_MCELIXIER = TRUE;
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Eliksir duchowej zmiany");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Do wykonania eliksiru potrzebna jest wydzielina z dwóch kolców krwi.");	
					Doc_PrintLines	( nDocID,  0, "Dodaj wyciag z maniku i esencje gojenia.");	
					Doc_PrintLines	( nDocID,  0, "Na koniec do wrzacego bulionu wlozyc woreczek z czerwonymi lzami - pieprzu."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tylko doswiadczony alchemik, który potrafi wydobyc wydzieline z kolców, powinien spróbowac eliksiru. ");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Deal Brief von Esteban an zwei Piraten
//**********************************************************************************
INSTANCE ITWr_Addon_Pirates_01		(C_Item)
{
	name 				=	"Uwaga dotlusta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Pirates_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				=	"Angus mial te nute w kieszeni.";
};
func void Use_Pirates_01 ()
{
	Read_JuansText = TRUE;
	
	var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Piraci,"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Pobierz ostatnia przesylke przeznaczona dla nas.");	
					Doc_PrintLine	( nDocID,  0, "Nastepnie zabierz je do jaskini. Spotkam cie tam.");	
					Doc_PrintLines	( nDocID,  0, "Zaplace Ci podwójna wartosc zlota."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Oto jak to sie robi");	
					Doc_PrintLine	( nDocID,  0, "Tom");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};
//**********************************************************************************
//	Rezept für grünene Novizen
//**********************************************************************************
INSTANCE ITWr_Addon_Joint_01		(C_Item)
{
	name 				=	"Zielony Nowicjusz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Joint_Rezept_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				= 	"Opóznienie w klatce piersiowej Fortuno";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};
func void Use_Joint_Rezept_01 ()
{
		var int nDocID;
	
		Green_Extrem = TRUE;
		
		
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Der grüne Novize"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "(... ) Lodygi moga byc ladnie obrócone, ale to co mielismy w obozie bagiennym bylo innego kalibru.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Kiedy uzywam esencji dwóch trawiennych roslin i rdestnicy polnej, mam lodyge z efektem zielonego nowicjusza."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zielona nowicjuszka pomaga przeciwdzialac wszelkim bólom i sprawia, ze glowa staje sie jasna.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Schnapsbrennen Rezept
//**********************************************************************************
INSTANCE ITWr_Addon_Lou_Rezept		(C_Item)
{
	name 				=	"Zalecenie dotyczace mlota Lou's Hammer";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	70;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Sposób wykonania mlota Lou's Hammer.";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};
func void UseLouRezept ()
{
		Knows_LousHammer = TRUE;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Recykling mlotkowy Lou' s."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Skladniki do piwa mlotkowego:");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Przyjmuje sie butelke wody, dwie rzepy i porcje brzeczki.");	
					Doc_PrintLines	( nDocID,  0, "Plus szlifowane zeby z rekina bagiennego."					);
					Doc_PrintLines	( nDocID,  0, "Napisz wszystko razem w butelce i zagotuj odrobina rumu."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Glowa!");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Zdaniem niewidomego starca, zdrowe jest nie wdychac oparów!");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Doppelhammer
//**********************************************************************************
INSTANCE ITWr_Addon_Lou_Rezept2		(C_Item)
{
	name 				=	"Zalecenie dotyczace podwójnego mlotka Lou' a";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	140;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept2;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Sposób wykonania podwójnego mlotka Lou' s.";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};
func void UseLouRezept2 ()
{
		Knows_SchlafHammer = TRUE;
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Podwójny mlotek Lou' s"					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Zabierasz dobry mlot stary Lou's Hammer i znów go zdestylujesz.");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Mieszanina ta powinna byc produkowana wylacznie przez doswiadczone gorzelnie.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Kiedy laik próbuje to zrobic, bedzie nie tylko slepy, ale i martwy.");	
					
					Doc_Show		( nDocID );

};

//**********************************************************************************
//	Piratentod
//**********************************************************************************
INSTANCE ITWr_Addon_Piratentod		(C_Item)
{
	name 				=	"Szybki sledz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezeptPiratentod;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				=	"Sposób produkcji szybkiego sledzia.";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	value;
};
func void UseRezeptPiratentod ()
{
		Knows_SchnellerHering = TRUE;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Szybkie sledzie (od mnie)"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Maly zestaw dla prawdziwych chlopaków");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Jak zwykle potrzebujesz butelki z woda. Napelnij go jednostka rumu i dodaj swieza rybe.");	
					Doc_PrintLines	( nDocID,  0, "Gdy tylko ciecz zacznie zólknac, wyjmij rybe i zaokraglaj ja za pomoca kisci."					);
					Doc_PrintLines	( nDocID,  0, "swiezo zebrana kapusta zbrana."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Ostroznie. To wszystko ma mocne wykonczenie.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_Show		( nDocID );

};
//------------------------------------------------------------------------------------------
INSTANCE Fakescroll_Addon (C_Item)
{	
	name 					=	"Arkusz papieru";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	hp 						=	5;
	hp_max 					=	5;
	weight 					=	1;
	value 					=	0;

	visual 					=	"Fakescroll.3ds";
	material 				=	MAT_LEATHER;
	
	scemeName				=	"MAPSEALED";	
	
	description				= name;
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};
//------------------------------------------------------------------------------------------
INSTANCE ItWr_Addon_AxtAnleitung (C_ITEM)
{	
	name 				=	"Jak grac Banditenaxtena";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 					=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAxtAnleitung;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Instrukcje dotyczace budowy lekkiej, ostrej siekiery";
};
func void UseAxtAnleitung ()
{
		if (Npc_GetTalentSkill 	(hero, NPC_TALENT_SMITH) >= 1)
		{
			Knows_Banditenaxt = TRUE;
		};
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Osie Bandit Axe"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Osia jednoreczna");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Czlowiek, który opanowal zasady kuzni, moze wytworzyc specjalna osie. ");	
					Doc_PrintLines	( nDocID,  0, "Zabiera dwa kawalki goracej surówki."					);
					Doc_PrintLines	( nDocID,  0, "Brylka rudy i trzy zeby wilków, snappera lub podobnych stworzen."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Rozetrzec rude i zeby wraz z zelazkiem na kowadle.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Osie takie sa bardzo latwe w uzyciu i moga spowodowac znaczne uszkodzenia.");
					Doc_PrintLines	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};


//------------------------------------------------------------------------------------------
INSTANCE ItWr_Addon_SUMMONANCIENTGHOST (C_ITEM)
{	
	name 				=	"Kwartalnik Summonron";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSummonAncientGhost;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				=	"Za pomoca tego przewijania mozesz przywolac Quarhodron.";
};
func void UseSummonAncientGhost ()
{
	if (SC_SummonedAncientGhost == FALSE)
	{
		 B_Say (self, self, "$ADDON_SUMMONANCIENTGHOST");
		
		if (Npc_GetDistToWP(self,"ADW_ANCIENTGHOST")<1000)  
		{ Snd_Play ("MFX_GhostVoice"); 
	 		Snd_Play ("MFX_Firestorm_Cast"); 
	 		Snd_Play ("MFX_Lightning_Origin");
	 		SC_SummonedAncientGhost = TRUE;
	    }
		else
		{
			B_Say (self, self, "$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};

//////////////////////////////////////////////////////////////////////////////
//
//	MAPS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_AddonWorld (C_Item)
{
	name 		= "Zapomniana Dolina Budowniczych.";  

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_AddonWorld;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_AddonWorld ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_AddonWorld);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_AddonWorld.tga", TRUE);  // TRUE = scale to fullscreen
 				  	Doc_Show			(Document);
	};

instance ItWr_Map_Eremit (C_Item)
{
	name 		= "Zapomniana Dolina Budowniczych.";  

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_Eremit;

	description	= name;
	TEXT[0]		= "domek pustelnika jest oznaczony";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_Eremit ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Eremit);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_AddonWorld_Eremit.tga", TRUE);  // TRUE = scale to fullscreen
 				  	Doc_Show			(Document);
	};
	
