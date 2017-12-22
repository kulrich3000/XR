var int Mod_Ritualplatz_Used;

INSTANCE ItWr_BookForFaris (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_5.3DS";  					
	material 				=	MAT_LEATHER;

	description				= 	"";
	
	TEXT[2] 				=  "Stara ksiazka";
	TEXT[3] 				=  "To jest magicznie zamkniete.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE Mod_XardasBriefAnKarras (C_ITEM)
{
	name		=	"ambasada kardaska";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasBriefAnKarras_Versiegelt;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"Komunikat ten zostal dokladnie zapieczetowany.";
};
var int Use_XardasBriefAnKarras_OneTime;
FUNC VOID Use_XardasBriefAnKarras()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Drogi Karrasie,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Tak naprawde to zrobilem. Magia, która znalezlismy w ksiazce uratowala zycie sypialni.");
		Doc_PrintLines	( nDocID, 0, "Zyje i przekaze ci to przeslanie. Daj mu ksiazke i przeslij go do mnie z nia. Nie zapomnij jednak o zapieczetowaniu ksiazki.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Xardas"		);
		Doc_Show	( nDocID );

	if (Use_XardasBriefAnKarras_OneTime	==	FALSE)
	{
		Use_XardasBriefAnKarras_OneTime	=	TRUE;
	};
};

FUNC VOID Use_XardasBriefAnKarras_Versiegelt()
{
	CreateInvItems	(self, Mod_XardasBriefAnKarras_Geoeffnet, 1);
	XardasBriefAnKarrasOpened	=	TRUE;
	Use_XardasBriefAnKarras();
};

INSTANCE ItWr_OleForAndre (C_ITEM)
{
	name		=	"List Olego do Pana Andre' a";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	description	=	name;
	TEXT[2]		=	"Komunikat ten zostal dokladnie zapieczetowany.";
};

INSTANCE ItWr_NamibForBeliar (C_ITEM)
{
	name		=	"List Namiba";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	description	=	name;
	TEXT[2]		=	"Komunikat ten zostal dokladnie zapieczetowany.";
};

INSTANCE ItWr_GDG_Almanach (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	description				= 	"";
	
	TEXT[2] 				=  "Stara ksiazka";
	TEXT[3] 				=  "To jest magicznie zamkniete.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

INSTANCE ItWr_GDG_Almanach_Offen (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	5000;

	visual 					=	"NewBook_V1_6.3DS";  					
	material 				=	MAT_LEATHER;

	on_state[0]	=	Use_GDGAlmanach;
	scemeName	=	"MAP";

	description				= 	"";
	
	TEXT[2] 				=  "Stara ksiazka";
	TEXT[3] 				=  "To jest magicznie zamkniete.";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

FUNC VOID Use_GDGAlmanach()
{
	var int nDocID;

	if (Mod_Gilde == 3)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa zbroi"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby poprawic pancerz paladyny nalezy polaczyc trzy biale skóry tygrysa i rusztowanie paladynowe z kowadlem.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 5)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa zbroi"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby jeszcze bardziej ulepszyc pancerz mysliwskiego smoka, trzeba polaczyc trzy srebrne skóry trollowe i ciezka pancerz smoka mysliwego z kowadlem.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 8)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa sukni"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby ulepszyc szate kaplana zakonnego, trzeba polaczyc trzy biale skóry tygrysa i religijna suknie kaplanska przy okraglym stole.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 11)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa sukni"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby jeszcze bardziej ulepszyc szate sedziego, nalezy polaczyc trzy wodne skóry i szate sedziego przy okraglym stole.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 14)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa sukni"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby jeszcze bardziej uwydatnic szate przywolujacego demona, nalezy polaczyc trzy linowe skóry i szate przywolujaca demona z okraglym stolem.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 16)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa zbroi"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby jeszcze bardziej ulepszyc pancerz rycerza demonów, trzeba polaczyc trzy skóry i pancerz rycerza demonów z kowadlem.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	}
	else if (Mod_Gilde == 18)
	{
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Poprawa zbroi"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Aby jeszcze bardziej ulepszyc pancerz stróza, trzeba polaczyc trzy skóry wodne i pancerz wartownika z kowadlem.");
		Doc_PrintLines	( nDocID, 0, "");
		Doc_PrintLines	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );
	};

	Mod_Almanach_Geheimnis_Gelesen = 1;
};

INSTANCE ItWr_ZombieToHuman (C_ITEM)
{
	name 					=	"Ksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	500;

	visual 					=	"NewBook_V2_1.3DS";  					
	material 				=	MAT_LEATHER;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	on_state[0]	=	Use_ZombieToHuman;
	scemeName	=	"MAP";

	description				= 	"";
	
	TEXT[2] 				=  "Sila starozytnej wojny";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
};

var int ZombieToHuman;

FUNC VOID Use_ZombieToHuman()
{
	var int nDocID;

	
		nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

		Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
		Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

		//1.Seite
		Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "zaklecia"	);
		Doc_PrintLine	( nDocID,  0, "---------");
		Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  0, "Starozytne tradycje wskazuja na sztuke pracujacej magii, która dzieki prostemu zastosowaniu byla juz w stanie wyposazyc cale armie w nadprzyrodzona sprezystosc i moc. Mówi sie, ze niektóre z tych zaklec byly odporne na magie, ogien lub bron przez krótki okres czasu, wielokrotnie przyspieszaly i wzmacnialy swoje ruchy, a nawet dawaly sile do zapewnienia srodowisku ognia i lodu poprzez swoja zwykla obecnosc."					);
					
		//2.Seite
		Doc_SetMargins	( nDocID,  1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Przeksztalcanie energii magicznej z artefaktu na nosnik"					);
		Doc_PrintLine	( nDocID,  1, "---------");
		Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
		Doc_PrintLines	( nDocID,  1, "Inna metoda poteznych dzialan wojennych jest podobno transfer energii magicznej z artefaktów do ich nosników. Mówi sie, ze miecze i pancerz z magicznej rudy zostaly polaczone z runem, co dalo uzytkownikom niesamowity opór i sile w walce. Tak wiec proste sformulowanie formuly 'atoic onectos' pozwalalo na zamkniecie wszystkich ran uzytkownika, jesli nosil on uzdrawiajaca rune broni lub zbroi.");
		Doc_Show		( nDocID );

	if (ZombieToHuman == FALSE)
	{
		CreateInvItems	(hero, ItWr_OTZauberformel, 1);

		B_LogEntry	(TOPIC_MOD_ANFANG, "To ciekawe. Najwyrazniej pancerz wykonany z magicznej rudy moze byc polaczony z lecznicza runa, mówiac magiczna formule, aby dac uzytkownikowi uzdrowienie.");

		ZombieToHuman = TRUE;
	};

};

INSTANCE Mod_XardasBriefAnKarras_Geoeffnet (C_ITEM)
{
	name		=	"Ambasada Xardasa (otwarta)";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasBriefAnKarras;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"List 'Xardas' do Karras";
};

INSTANCE Mod_MattheusBotschaft (C_ITEM)
{
	name		=	"Wiadomosc od Pyrokar";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_SHOW;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_MattheusBotschaft;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Botschaft";
};

FUNC VOID Use_MattheusBotschaft()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Drogi Paladin Hagen,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Jak zapewne wiesz, zwolennicy Beliara wciaz wywoluja u nas wiele bólów glowy.");
		Doc_PrintLines	( nDocID, 0, "Nasz Swiety Hammer zostal nam skradziony. Równiez Gorax zostal skradziony i stracilismy dalsze dochody.");
		Doc_PrintLines	( nDocID, 0, "Napisze Ci ten list, abys poprosil Cie o oddanie do mojej dyspozycji kilku strazników."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "Archer Inno, Pyrokar");
		Doc_Show	( nDocID );
};

INSTANCE ItWr_CantharZettel_Valentino (C_ITEM)
{
	name		=	"chit";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_CantharZettel_Valentino;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"z namiotu, w którym znajdowal sie Valentino";
};

var int Knows_CantharZettel_Valentino;

FUNC VOID Use_CantharZettel_Valentino()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "Jesli go masz, zabierz go do domu, w którym mieszkal Kuno. Tam jeden z moich uczniów bedzie go 'przesluchiwal' az do powrotu. Z Valentino mozesz zrobic to, co chcesz, pod warunkiem, ze nie moze on otworzyc usta tak daleko po tym."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "C.");
		Doc_Show	( nDocID );

	if (Knows_CantharZettel_Valentino == FALSE)
	{
		Knows_CantharZettel_Valentino = TRUE;

		B_LogEntry	(TOPIC_MOD_CANTHAR_GESCHAEFTE, "Nasladowcy kantaru znalezli schronienie w dawnym domu Kunosa niedaleko przeleczy Minental. Powinienem wypalic gniazdo zlodziejki.");

		Wld_InsertNpc	(Mod_7033_OUT_Allievo_NW, "TAVERNE");
	};
};

INSTANCE ItWr_TofuRezept (C_ITEM)
{
	name		=	"recepta";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_TofuRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Zalecenie dotyczace stosowania To-Fudu";
};

FUNC VOID Use_TofuRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "Recepturao-Fu"		);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLines	( nDocID, 0, "Na zwykla porcje zbierasz 30 straków rosliny So-Ja. Wyjmij fasole z straków i wlóz ja na krótko do wody, a nastepnie wycisnij. Do wyciskanego soku wlac sól, a nastepnie wycisnac w prasie So-Ja. Wiec dostajesz To-Fu."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_Show	( nDocID );
};

INSTANCE ItWr_SoerensPBrief (C_ITEM)
{
	name		=	"chit";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_SHOW;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_SoerensPBrief;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"zören";
};

var int Knows_SoerensPBrief;

FUNC VOID Use_SoerensPBrief()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "Teraz, kiedy Lorforn poniósl porazke, umieszczam cie na mapie. Tugettso musi zejsc w dól. Lepiej spróbowac przytulic sie do jednego z szefów. Zrób cos. Jesli cieszysz sie ich zaufaniem, spróbuj w kazdy sposób przeciwstawic je sobie nawzajem. I spróbuj uzyskac trzymac okaz tej rzadkiej rosliny leczniczej, która tylko rosnie tam."			);
		Doc_PrintLines	( nDocID, 0, "Ach, jesli okaze sie, ze ten pompatyczny moron, który zlamal Lorforn, pozbyj sie go."		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "P.");
		Doc_Show	( nDocID );

	if (Mod_VMG_FaiceGifty_Gift == 7)
	{
		Mod_VMG_FaiceGifty_Gift = 8;

		B_LogEntry	(TOPIC_MOD_FAICE_HEILUNG, "Musialem obciac Sörena i dowiedziec sie, ze jest on odpowiedzialny za ten 'P'. jak Lorforn. Powinienem powiedziec Gennowi.");
	};
};

var int XardasLetterForHeroOT;

INSTANCE ItWr_XardasLetterForHeroOT (C_ITEM)
{
	name		=	"Wiadomosc od Xardas";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForHeroOT;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Botschaft";
};

FUNC VOID Use_XardasLetterForHeroOT()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLines	( nDocID, 0, "Narzutnik zdaje sie byc wygnany, jednak nawet po kilku dniach ciagle nie czuje zycia pod gruzami tego miejsca. Musze zatem zalozyc, ze zgineliscie przeciwko wszelkim oczekiwaniom i przepowiedniom. W kazdym razie zostawiam tutaj te teleporte, która bezpiecznie zawiezie cie do mojej wiezy, jesli moi sludzy ratuja cie zywcem z gruzów. Poniewaz teleport odbywa sie na stosunkowo duza odleglosc, nie powinienes miec przy sobie zbyt duzo balastu."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "Xardas");
		Doc_Show	( nDocID );

	if (XardasLetterForHeroOT == FALSE)
	{
		B_LogEntry	(TOPIC_MOD_ANFANG, "Xardas opuscil swiatynie po tym, jak musial odebrac mi smierc. W kazdym razie jednak zostawil po sobie role teleportu, który mial mnie przewiezc - z niezbyt duzym bagazem.");

		XardasLetterForHeroOT = TRUE;
	};
};

INSTANCE ItWr_OTZauberformel (C_ITEM)
{
	name		=	"wzór";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_OTZauberformel;
	scemeName	=	"MAPSEALED";
	description	=	name;
};

FUNC VOID Use_OTZauberformel()
{
	if (Npc_HasItems(hero, Erzrüstung) == 1)
	&& (Npc_HasItems(hero, ItRu_LightHeal) == 1)
	{
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",  hero, hero, 0, 0, 0, FALSE );

		Npc_RemoveInvItems	(hero, ItWr_OTZauberformel, 1);

		AI_UnequipArmor	(hero);

		Npc_RemoveInvItems	(hero, Erzrüstung, 1);
		Npc_RemoveInvItems	(hero, ItRu_LightHeal, 1);

		B_SetHeroNormalStart();

		HeroIstKeinZombie = TRUE;

		B_LogEntry	(TOPIC_MOD_ANFANG, "To zadzialalo! W rzeczywistosci wracam miedzy zywymi! Jednak proces ten pochlonal tyle magicznej energii w moim rozkladajacym sie ciele, ze rozpadl pancerz i stracil wiele z rzeczy, które mialem przy sobie.");

		B_InitMonsterAttitudes();

		HeroLook();

		B_RemoveNpc	(Monster_11055_Skelett_OT);
		B_RemoveNpc	(Monster_11056_Skelett_OT);

		Autosave_Counter = Mod_Autosave*600;
	} else {
		B_Say(hero, NULL, "$MISSINGITEM");
		CreateInvItems	(hero, ItWr_OTZauberformel, 1);
		if (Npc_HasItems(hero, ItRu_LightHeal) == 0) {
			Print ("Brak uzdrowiciela.");
		} else {
			Print ("Nie ma broni rudnej.");
		};
	};
};

INSTANCE ItWr_HymirsLetterForHagen (C_ITEM)
{
	name		=	"Przeslanie Hymira";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_HymirsLetterForHagen;
	scemeName	=	"MAP";
	description	=	name;
};

FUNC VOID Use_HymirsLetterForHagen()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Szanowny Panie Hagen,"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Udalo mi sie oddac opuszczona kopalnie do eksploatacji. Poslaniec, który niesie wam to przeslanie, nie byl niezauwazony. Zapewni nam on pikniki, abysmy mogli wydobywac rude. Jak najszybciej dostaniemy rude do miasta.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Hymir"		);
		Doc_Show	( nDocID );
};

INSTANCE Mod_SamuelsGrogRezept (C_ITEM)
{
	name		=	"okólnik";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_SamuelsGrogRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"";
};

FUNC VOID Use_SamuelsGrogRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, "Z rumu trzeba go warzyc"			);
		Doc_PrintLine	( nDocID, 0, "i dodac cukier.");
		Doc_PrintLine	( nDocID, 0, "jest wypalany razem z woda");
		Doc_PrintLine	( nDocID, 0, "nazywa sie Grog."			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

	Mod_PCKenntGrogRezept = 1;
};

INSTANCE ItWr_AL_GebrandtDokumente (C_ITEM)
{
	name		=	"dokument";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ItWr_AL_GebrandtDokumente;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"przez Gebranddt";
};

FUNC VOID Use_ItWr_AL_GebrandtDokumente()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, "Lista czlonków:"			);
		Doc_PrintLines	( nDocID, 0, "Gerbrandt, Valentino, Fernando, Cornelius");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Zapisy grupowe:"			);
		Doc_PrintLine	( nDocID, 0, "Diego zostal usuniety"		);
		Doc_PrintLine	( nDocID, 0, "Morgahard zostal usuniety");
		Doc_PrintLines	( nDocID, 0, "Leon musial zostac zabity, poniewaz mógl podac zbyt wiele informacji,");
		Doc_Show	( nDocID );
};

INSTANCE ItWr_Ritualplatz (C_ITEM)
{
	name		=	"okólnik";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_Ritualplatz;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Zawiera formule otwarcia miejsca rytualu.";
};

FUNC VOID Use_Ritualplatz()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Aperire Meo Meo");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

		if (Npc_GetDistToWP(hero, "WIL_LAGERER_22") < 300)
		&& (Mod_Ritualplatz_Used == FALSE)
		{
			Wld_SendTrigger	("RITUAL");

			Npc_RemoveInvItems	(hero, ItWr_Ritualplatz, 1);

			Mod_Ritualplatz_Used = TRUE;
		};
};

INSTANCE Mod_DiegosRaubListe (C_ITEM)
{
	name		=	"Wykaz Diegoiego";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_DiegosRaubListe;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Liste von Diego";
};

FUNC VOID Use_DiegosRaubListe()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Zamawia sie nastepujace pozycje:"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "3 kielichy zlote");
		Doc_PrintLine	( nDocID, 0, "Monety zlotowe");
		Doc_PrintLine	( nDocID, 0, "1 Pierscien umiejetnosci"			);
		Doc_PrintLine	( nDocID, 0, "2 glównych mieczników"		);
		Doc_Show	( nDocID );
};

INSTANCE Mod_BillsRumRezept (C_ITEM)
{
	name		=	"okólnik";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_BillsRumRezept;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"";
};

FUNC VOID Use_BillsRumRezept()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, ""	);
		Doc_PrintLines	( nDocID, 0, "Wazne jest, aby kupic wszystkie melasy, wiec nowy gosc nie dostaje juz wiecej tych rzeczy. Nie chce isc na to polowanie na skarb, bo prawie zabilismy sie w ostatnim. Jesli chcesz, mozesz zrobic rum z melasy. Zmieszac melase z woda tak, aby do szklanki melasy dodac dwie butelki wody. Potem ogrzac cala rzecz i pozwolic, aby ponownie ostygla i masz swój rum.");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Bill"			);
		Doc_PrintLine	( nDocID, 0, ""		);
		Doc_PrintLine	( nDocID, 0, "");
		Doc_Show	( nDocID );

	Mod_BillsRezeptGelesen = 1;
};

INSTANCE XardasLetterForSaturas (C_ITEM)
{
	name		=	"ambasada kardaska";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_02.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForSaturas_Versiegelt;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"Komunikat ten zostal dokladnie zapieczetowany.";
	TEXT[3]		=	"Mam je dostarczyc Saturnowi.";
};
var int Use_XardasLetterForSaturas_OneTime;
FUNC VOID Use_XardasLetterForSaturas()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Satura, najwyzszy magik wody."	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Wyslem wam poslanniczke, abyscie powiedzieli wam cos waznego. Obawiam sie, ze istnieje nowe zagrozenie. Ona bedzie gorsza od sypialni i tylko mój poslannik moze zapobiec niebezpieczenstwu. Musisz zapewnic mu dostep do portalu.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Xardas"		);
		Doc_Show	( nDocID );

	if (Use_XardasLetterForSaturas_OneTime	==	FALSE)
	{
		Use_XardasLetterForSaturas_OneTime	=	TRUE;
	};
};

FUNC VOID Use_XardasLetterForSaturas_Versiegelt()
{
	CreateInvItems	(self, XardasLetterForSaturas_Geoeffnet, 1);
	XardasLetterForSaturasOpened	=	TRUE;
	Use_XardasLetterForSaturas();
};

INSTANCE XardasLetterForSaturas_Geoeffnet (C_ITEM)
{
	name		=	"Ambasada Xardasa (otwarta)";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_XardasLetterForSaturas;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Pismo Xardasa do Satura";
};

INSTANCE Mod_Sklavenliste_DMR (C_ITEM)
{
	name		=	"Lista nazwisk";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_Sklavenliste;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Eine Liste mit Namen";
};

var int Sklavenliste_OneTime;

FUNC VOID Use_Sklavenliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Lista niewolników:"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Czerwony."	);
		Doc_PrintLines	( nDocID, 0, "Jorgen  (X)"	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Elvrich ()"		);
		Doc_Show	( nDocID );

	if (Sklavenliste_OneTime	==	FALSE)
	{
		B_LogEntry	(TOPIC_MOD_VERMISSTE, "Liste nazwisk znalazlem w poblizu kabiny Freda. Fred byl pierwszym. Wydaje sie, ze jest to lista osób zlapanych przez nieznane. Dalej Elvrich. Powinienem zglosic sie do Vatry.");

		Sklavenliste_OneTime	=	TRUE;
	};
};

INSTANCE MatteoFlugblaetter (C_ITEM)
{
	name		=	"Broszura Matteos";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_MatteoFlugblatt;
	scemeName	=	"MAP";
	description	=	name;
};

FUNC VOID Use_MatteoFlugblatt()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA" , 0	);
		Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1	);
		Doc_PrintLine	( nDocID, 0, "Jestes glodny i nie masz duzo pieniedzy."	);
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLines	( nDocID, 0, "Nastepnie udaj sie do Matteo, najlepszego sprzedawcy artykulów spozywczych w miescie.");
		Doc_PrintLines	( nDocID, 0, "Bez wzgledu na to, czego potrzebujesz, mleko czy chleb, w Matteo mozesz kupic wszystko, czego potrzebujesz, aby przezyc.");
		Doc_PrintLine	( nDocID, 0, ""			);
		Doc_PrintLine	( nDocID, 0, "Dostepny tylko przez krótki czas."		);
		Doc_Show	( nDocID );
	
		if (Mod_AngebotMatteo	==	0)
		{
			Mod_AngebotMatteo	=	1;
		};
};

INSTANCE Mod_ConstantinosZutatenliste (C_ITEM)
{
	name		=	"Lista skladników Konstantynos Lista skladników";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ConstantinosZutatenliste;
	scemeName	=	"MAPSEALED";
	description	=	name;
	TEXT[2]		=	"Skladniki te sa potrzebne do nowego napoju";
};

FUNC VOID Use_ConstantinosZutatenliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA", 0);
		Doc_SetFont	( nDocID, -1, FONT_Book);
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1);
		Doc_PrintLine	( nDocID, 0, "Skladniki dla napojów o mocy");
		Doc_PrintLine	( nDocID, 0, "--------------------------------------");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Mocna sekretarka koparek mineralów (2x)");
		Doc_PrintLine	( nDocID, 0, "Podwójny trzpien (1x)");
		Doc_PrintLine	( nDocID, 0, "Roslina ziolowa bagna (4x)");
		Doc_PrintLine	( nDocID, 0, "Kregoslup krwi (1x)");
		Doc_Show	( nDocID );

	if (Mod_MinecrawlerEi	==	0)
	{
		Mod_MinecrawlerEi	=	1;

		B_LogEntry	(TOPIC_MOD_CONSTANTINOSZUTATEN, "Konstantino potrzebuje: 2x silny minecrawler-secret, 1x podwójny kregoslup, 4x ziele bagna i 1x krwi mucha kregoslupa.");
	};
};

INSTANCE ItWr_ConstantinosZauberwasserliste (C_ITEM)
{
	name		=	"Lista skladników Konstantynu";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION|ITEM_MULTI;

	value		=	0;

	visual		=	"ItWr_Scroll_01.3DS";
	material	=	MAT_LEATHER;
	on_state[0]	=	Use_ConstantinosZauberwasserliste;
	scemeName	=	"MAP";
	description	=	name;
	TEXT[2]		=	"Te skladniki sa potrzebne dla magicznej wody.";
};

FUNC VOID Use_ConstantinosZauberwasserliste()
{
	var int nDocID;
	nDocID	=	Doc_Create();
		Doc_SetPages	( nDocID, 1);
		Doc_SetPage	( nDocID, 0, "letters.TGA", 0);
		Doc_SetFont	( nDocID, -1, FONT_Book);
		Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1);
		Doc_PrintLine	( nDocID, 0, "Skladniki dla czarodziejskiej wody");
		Doc_PrintLine	( nDocID, 0, "-----------------------------");
		Doc_PrintLine	( nDocID, 0, "");
		Doc_PrintLine	( nDocID, 0, "Woda (10x)");
		Doc_PrintLine	( nDocID, 0, "Woda slona (2x)");
		Doc_PrintLine	( nDocID, 0, "Pokrowce (5x)");
		Doc_PrintLine	( nDocID, 0, "Rosliny lecznicze (5x)");
		Doc_PrintLine	( nDocID, 0, "Piosenki niebieskie (3x)");
		Doc_PrintLine	( nDocID, 0, "rdestnica (1x)");
		Doc_Show	( nDocID );
};

INSTANCE Mod_XardasZauberbuch (C_ITEM)
{
	name		=	"Ksiazka";

	mainflag	=	ITEM_KAT_DOCS;
	flags		=	ITEM_MISSION;

	value		=	0;
	
	visual		=	"NewBook_V2_2.3DS";
	material	=	MAT_LEATHER;

	description	=	name;
	TEXT[2]		=	"Ta ksiazka jest bardzo stara.";
	TEXT[3]		=	"Wydaje sie to magiczne.";
};

var int riddle1;
var int riddle2;
var int riddle3;
var int riddle4;
var int riddle5;
var int riddle6;

INSTANCE theriddle1(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "chroman";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle1;
};

	FUNC VOID Usetheriddle1()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Ten, kto jest sklonny wyrzec sie wszelkich ziemskich wad i isc sciezkami sprawiedliwych, wie, gdzie lezy zródlo mojej mocy. Oby wykorzystal go do zerwania lancuchów tego swiata i udowodnil, ze zasluguje na chromanine.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Szalwia zaczyna sie w miejscu, z którego wyszedl szukac.");
					Doc_Show		( nDocID );
				
					if (riddle1 == FALSE)
					{
						Log_CreateTopic		(TOPIC_MOD_THERIDDLE,		LOG_MISSION);
						B_SetTopicStatus	(TOPIC_MOD_THERIDDLE,		LOG_RUNNING);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Zabralem bardzo dziwna ksiazke od magika szkieletu w Wiezy Mgly. Chromanina! Wydaje sie byc tajemnica, z która skonfrontowal sie tajemniczy nieznajomy w swiecie:...... Szalwia zaczyna sie w miejscu, z którego wyszedl szukac..... Mmm! Masz wrazenie, ze oznacza to moje miejsce wyjazdu? W pewnym momencie powinienem pójsc do twierdzy górskiej....."); 
						//Wld_InsertItem			(theriddle2,"FP_FELSENFESTUNG_CHROMANIN_BAND_2");
					
						riddle1 = TRUE;

						if (Mod_Import_Fremde)
						{
							B_Say (hero, NULL, "$KNOWSRIDDLER");
						};
					
					};
	};

INSTANCE theriddle2(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanin 2";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle2;
};

	FUNC VOID Usetheriddle2()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wizje przyszlosci Chromanina, podtrzymywane przez plywy, otworzyly mi oczy. Zadna cena nie jest na tyle wysoka, aby zrezygnowac z wiary w nia. Za bardzo mnie to poruszylo.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Prawie pelna woda i powietrze do oddychania.");
					Doc_Show		( nDocID );
					
					if (riddle2 == FALSE)
					{					
						B_GivePlayerXP (300);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Znalazlem druga ksiazke o nazwie Chromanin. I po raz kolejny to dla mnie tajemnica..... Prawie pelna woda i powietrze do oddychania......"); 
						Snd_Play 		("FoundRiddlersBook");
						Wld_InsertItem			(theriddle3,"FP_ALTESLAGERHOEHLE_CHROMANIN_BAND_3");
					
						riddle2  =  TRUE;
					
					};
	
	};
INSTANCE theriddle3(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanina 3";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle3;
};

	FUNC VOID Usetheriddle3()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Och, bogowie dawnych czasów. Moze byc tak, ze czlowiek, taki jak ja, który jest po prostu dziany i niegodny, moze osiagnac tak wielka spuscizne. Strach jest wielki, aby stracic wszystko poprzez male slowo wahan.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Madry rybak nie lowi tam rybaków.");
					Doc_Show		( nDocID );



					if (riddle3 == FALSE)
					{		
						B_GivePlayerXP (500);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Znalazlem trzecia ksiazke. Mysle, ze zaczynam rozumiec, jak to sie dzieje...... Madry rybak nie lowi tam rybaków....."); 
						Snd_Play 		("FoundRiddlersBook");

						if (hero.guild == GIL_MIL)
						{
							Mod_NL_UDS_Spawn = 1;
						}
						else
						{
							Wld_InsertItem			(theriddle4, "FP_SUMPF_CHROMANIN_BAND_4");
						};
						
						riddle3   =  TRUE;
					
					};
					
					
	};
				
				
INSTANCE theriddle4(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanina 4";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle4;
};

	FUNC VOID Usetheriddle4()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Nie mam odwagi miec nadziei, ze pewnego dnia sam bede doswiadczal chromaniny dla siebie. Minely juz czasy marnotrawstwa i halasu. Jest to jak latwo bedzie osiagnac pelna perfekcje. Nie jestem daleko od tego.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Zapomniane sa czyny tych, którzy kiedys byli na pokladzie.");
					Doc_Show		( nDocID );
					

					if (riddle4 == FALSE)
					{	
						if (CurrentLevel == MINENTAL_ZEN)
						{				
							B_GivePlayerXP (700);
							B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Czwarta cyfra. Zaczynam sie zastanawiac, dlaczego pozwole temu facetowi dac mi ucieczke....... Zapomniane sa czyny tych, którzy kiedys byli na pokladzie...."); 
							Snd_Play 		("FoundRiddlersBook");					
							//Wld_InsertItem			(theriddle5,"FP_ITEM_THERIDDLE_05");

							Wld_InsertNpc	(Monster_11059_Kobold_MT,	"OW_PATH_201");
					
					
							riddle4 = TRUE;
						};
					
					};
					
					
					
	};
								
INSTANCE theriddle5(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chromanina 5";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle5;
};

	FUNC VOID Usetheriddle5()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Nie powinienem jednak podazac ta droga samemu. Ten zaszczyt moze zostac mi przyznany. Musze przekazac i podzielic sie wladza, która mieszka we mnie z tymi, którzy przychodza, aby mnie znalezc. Miejmy nadzieje, ze wkrótce przyjda....");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Gdzie rozpoczelo sie wyszukiwanie, znajdziesz mnie.");
					Doc_Show		( nDocID );




					if (riddle5 == FALSE)
					{
						B_GivePlayerXP (850);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"To wydaje sie byc ostatni. Ciekawe, kogo bede mial przed soba.... Tam, gdzie wszystko zaczelo sie, odnajdziesz mnie.... Musze wiec wrócic do jaskin pod mglowa wieza...."); 
						Snd_Play 		("FoundRiddlersBook");				
						Wld_InsertNpc				(Bau_989_Riddler,"");
						var C_NPC riddler; riddler = Hlp_GetNpc(Bau_989_Riddler);
						Npc_ChangeAttribute	(riddler, ATR_HITPOINTS, -riddler.attribute[ATR_HITPOINTS_MAX]);

						riddle5  =  TRUE;
					
					};
	};

INSTANCE theriddle6(C_Item)
{	
	name 					=	"Ksiazka";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION|ITEM_SHOW;

	value 					=	50;

	visual 					=	"NewBook_V2_4.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= "Chroman 6";
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	Usetheriddle6;
};

	FUNC VOID Usetheriddle6()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
  					
  					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "chroman"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "");
				
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_Show		( nDocID );

					if (riddle6 == FALSE)
					{
						B_GivePlayerXP (1000);
						B_LogEntry			(TOPIC_MOD_THERIDDLE,		"Tajemniczy nieznajomy jest martwy. Te demony go zabily. Cos wydaje sie, ze cos go polaczylo z tymi stworzeniami piekla. W przeciwnym razie nie wrócilby na to miejsce. Wzial tajemnice, która chcial mi przekazac do grobu."); 
						B_SetTopicStatus	(TOPIC_MOD_THERIDDLE,		LOG_SUCCESS);
						Snd_Play 		("FoundRiddler");
						
						if (!Hlp_IsValidNpc(Bau_989_Riddler)) {
							Wld_InsertNpc(Bau_989_Riddler, "PC_HERO");
						};
						AI_Teleport	(Bau_989_Riddler, "PC_HERO");
						Npc_ChangeAttribute	(Bau_989_Riddler, ATR_HITPOINTS, +Bau_989_Riddler.attribute[ATR_HITPOINTS_MAX]);
						Wld_PlayEffect("SFX_Circle",  Bau_989_Riddler, Bau_989_Riddler, 0, 0, 0, FALSE);

						riddle6 = TRUE;
					
					};
	};

INSTANCE TondralsBuch_01(C_Item)
{	
	name 					=	"Wstyd Bogów - Czesc I";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V2_5.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseTondralsBuch01;
};

	FUNC VOID UseTondralsBuch01()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Hanba bogów"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Powiedz mi, którzy bogowie sa bogami, którzy uczynili nas ofiarami wojny. Jak Innos moze nazwac sie Bogiem sprawiedliwosci, gdy jest tylko wazne dla niego, aby zniszczyc wyznawców Beliara? Co warte jest równowaga Adano, jesli polega ona jedynie na utrzymaniu tej wiecznej rzezi i zniszczeniu ludzi, którzy czerpia z niej korzysci?");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Jakiego uzycia Beliar dokonuje, co powoduje jedynie zniszczenie i chaos oraz oczarowuje sie nim. Kto stworzyl orki, które poluja i rzezników? Wszyscy jestesmy po prostu kawalkami szachów dla tych istot, które nazywaja sie bogami, ale sa jedynie sadystycznymi watazkami. Kto korzysta z nas, aby osiagnac swoje cele i dla kogo nasze zycie jest bezwartosciowe. Pragnienie bycia czczonym przez nas, abysmy mogli korzystac z nas jak ich bohaterowie.");
					Doc_Show		( nDocID );
	};

INSTANCE TondralsBuch_02(C_Item)
{	
	name 					=	"Wstyd Bogów - Czesc II";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V2_6.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseTondralsBuch02;
};

	FUNC VOID UseTondralsBuch02()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Kim sa królowie, magowie i paladyni? Nic poza lalkami niosacymi wole ich tak zwanych bogów. Ci, którzy biora prawo rzadzenia nad nami w imieniu tych brudnych czarnoksiezników! Dlatego mówie walke z bogami, spalic ich swiatynie, zniszczyc ich posagi i zabic swoich zwolenników za zycie, które nie jest zdeterminowane przez bezsensowna wojne Innos, Beliar i Adanos!");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
	};

INSTANCE ItWr_HeiligeWaffen (C_Item)
{	
	name 					=	"Swieta bron";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V3_1.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_HeiligeWaffen;
};

	FUNC VOID UseItWr_HeiligeWaffen()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Heilige Waffen"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Swieta bron przybiera rózne formy.... blogoslawione ostrze, magia lub nalewka. Skierowane sa przeciwko demonicznym istotom i istotom nieumarlym, kierowanym przez magie demoniczna.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "W szczególnosci to wlasnie moc Inno rodzi te bron. Ostrza jego wojowników sa czesto blogoslawione i szczególnie skuteczne w walce z demonami i nieumarlymi, magia, która im obdarzyli..... Tak wiec swieta strzala i mocniejsze czary. Mówi sie nawet, ze nawet zwykle promienie swietego swiatla moga zmniejszyc opór ze strony zlowieszczych istot.....");
					Doc_Show		( nDocID );
	};

INSTANCE ItWr_Flueche (C_Item)
{	
	name 					=	"klatwy";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V3_2.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	description			= name;
	
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	on_state[0]			=	UseItWr_Flueche;
};

	FUNC VOID UseItWr_Flueche()
	{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
					
					//1.Seite
   					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Flüche"			);
					Doc_PrintLine	( nDocID,  0, "-----------");
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
  					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Kursory pochodza z magii ciemnego boga i demonicznych istot. Potrafia wplywac na jedno stworzenie, a nawet cale grupy istot i w rekach doswiadczonego maga potrafia rozwinac wielka moc.");
					
				

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Istnieja doniesienia o tych, którzy paralizuja ofiary, pozbawiaja je energii zyciowej lub zmniejszaja swój opór. Zwykle w formie magicznych powiedzen, mówi sie równiez o mieczach, których ostrze moze przeklinac uderzajaca istote.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Jednak nieumarle stworzenia, nawet poprowadzone przez ciemna magie, nie sa juz w pelni pod wplywem przeklenstw, podczas gdy demoniczne stworzenia moga nawet zredukowac kazde przeklenstwo do ulamka jego efektu.");
					Doc_Show		( nDocID );
	};
