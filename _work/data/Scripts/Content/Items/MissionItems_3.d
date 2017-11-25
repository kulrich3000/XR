//********************************************
//	Das Auge Innos	(Das reparierte Auge, mit dem man mit den Drachen Spricht)
//********************************************

const int AM_EyeProtEdge	= 10;
const int AM_EyeProtPoint	= 10;
const int AM_EyeProtMage	= 20;
const int AM_EyeProtFire	= 30;

// -------------------------------------------

INSTANCE  ItMi_InnosEye_MIS (C_ITEM)
{
	name 				=	"Oko Innos";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_InnosEye_MIS.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description			= 	name;
	on_equip			=	Equip_InnosEye;
	on_unequip			=	UnEquip_InnosEye;

	TEXT	[0]			=	"Oko pulsuje pelna energia";

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
FUNC VOID Equip_InnosEye()	 
	{
		Wld_PlayEffect("spellFX_Innoseye",  self, self, 0, 0, 0, FALSE );
		Wld_PlayEffect("spellFX_LIGHTSTAR_RED",  self, self, 0, 0, 0, FALSE );
		Wld_PlayEffect("FX_EarthQuake",  self, self, 0, 0, 0, FALSE );
		AI_PlayAni (self,"T_MAGRUN_2_HEASHOOT");	
		AI_StandUp (self);
		Snd_Play ("SFX_INNOSEYE"); 
		
		self.protection [PROT_EDGE]   += AM_EyeProtEdge*1000;
		self.protection [PROT_BLUNT]  += AM_EyeProtEdge*1000;
		self.protection [PROT_POINT]  += AM_EyeProtPoint*1000;
		self.protection [PROT_FIRE]   += AM_EyeProtFire;
		self.protection [PROT_MAGIC]  += AM_EyeProtMage;		
		

		PrintScreen ("", -1, -1, FONT_Screen, 0);
		
	};

FUNC VOID UnEquip_InnosEye()
	{
		self.protection [PROT_EDGE]   -=  AM_EyeProtEdge*1000;
		self.protection [PROT_BLUNT]  -=  AM_EyeProtEdge*1000;
		self.protection [PROT_POINT]  -=  AM_EyeProtPoint*1000;
		self.protection [PROT_FIRE]   -=  AM_EyeProtFire;
		self.protection [PROT_MAGIC]  -=  AM_EyeProtMage;	
	};

INSTANCE ItMi_InnosEye_Discharged_Mis (C_Item)	
{
	name 				=	"Oko Innos"; 

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_InnosEye_MIS.3DS";	
	material 			=	MAT_STONE;

	description			= 	name;
	on_equip			=	Equip_ItMi_InnosEye_Discharged_Mis;
	TEXT	[0]			=	"Oko jest matowe i bez polysku.";
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

func void Equip_ItMi_InnosEye_Discharged_Mis()
{
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );
	Snd_Play 	("MFX_FEAR_CAST" );
};

INSTANCE ItMi_InnosEye_Broken_Mis (C_Item)	
{
	name 				=	"Oko Innos"; 

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_AMULET|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_InnosEye_MIS.3DS";  
	material 			=	MAT_STONE;

	description			= 	name;
	on_equip			=	Equip_ItMi_InnosEye_Broken_Mis;
	TEXT	[0]			=	TEXT_Innoseye_Setting;
	TEXT	[1]			=	TEXT_Innoseye_Gem;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
		
};  
func void Equip_ItMi_InnosEye_Broken_Mis()
{
	Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );
	Snd_Play 	("MFX_FEAR_CAST" );
};
//**********************************************************************************
//	Ermächtigungsschreiben für SC für Pyrokar, das Auge Innos rauszurücken.
//----------------------------------------------------------------------------------

INSTANCE ItWr_PermissionToWearInnosEye_MIS		(C_Item)
{
	name 				=	"zezwolenie";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_PermissionToWearInnosEye;
	scemeName			=	"MAP";
	description			= "List upowazniajacy dla Pyrokar";
};
func void Use_PermissionToWearInnosEye ()
{   
 
	var int nDocID;
		
			nDocID = 	Doc_Create		();
						Doc_SetPages	(nDocID,  1);
						Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
						Doc_SetFont		(nDocID, -1, FONT_Book);
						Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
						Doc_PrintLine	(nDocID,  0, ""												);
						Doc_PrintLine	(nDocID,  0, ""												);
						Doc_PrintLine	(nDocID,  0, ""												);
						Doc_PrintLines	(nDocID,  0, "Posiadacz tego listu otrzyma zgode na wstep do sal klasztornych.");
						Doc_PrintLines	(nDocID,  0, "Jego zyczenia dotyczace posiadania oka Innos musza byc spelnione bezzwlocznie.");
						Doc_PrintLines	(nDocID,  0, "Instrukcje te nalezy wziac pod uwage z racji mojego biura, jako Generalnego Przedstawiciela wyspy i Króla, jak równiez poprzez decyzje o podziale kosciola w Innie od drugiego roku pozaru.");
						Doc_PrintLines	(nDocID,  0, "Nie bede skladac dalszych oswiadczen w tej sprawie i oczekuje, ze moje instrukcje beda przestrzegane.");
						Doc_PrintLine	(nDocID,  0, ""												);
						Doc_PrintLine	(nDocID,  0, "Innos chroni króla"						);
						Doc_PrintLine	(nDocID,  0, ""												);
						Doc_PrintLine	(nDocID,  0, "     Lord Hagen"								);
						Doc_Show		(nDocID );				
		
};

//**********************************************************************************
//	ItWr_XardasBookForPyrokar_Mis
//**********************************************************************************

INSTANCE ItWr_XardasBookForPyrokar_Mis (C_ITEM) 
{	
	name 					=	"Hale Irdorathanu";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	0;

	visual 					=	"NewBook_V2_5.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_XardasBookForPyrokar;
};

FUNC VOID Use_XardasBookForPyrokar()
{   
		Print (PRINT_IrdorathBookDoesntOpen);
		Wld_PlayEffect("spellFX_Fear",  self, self, 0, 0, 0, FALSE );
		Snd_Play 	("MFX_FEAR_CAST" );
};


//**********************************************************************************
//	ItKe_CHEST_SEKOB_XARDASBOOK_MIS 		Xardas Schlüssel für die Truhe auf Sekobs Hof
//**********************************************************************************

INSTANCE ItKe_CHEST_SEKOB_XARDASBOOK_MIS (C_Item)
{
	name 				=	"klucz kardynalny" ;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_02;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[0]				=   "w przypadku klatki piersiowej w gospodarstwie Sekob";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//**********************************************************************************
//	ItWr_CorneliusTagebuch_Mis 
//**********************************************************************************

INSTANCE ItWr_CorneliusTagebuch_Mis (C_ITEM) 
{	
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	0;

	visual 					=	"NewBook_V2_6.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Tagebuch";
	TEXT	[0]				=	"Dziennik Korneliusza";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseCorneliusTagebuch;
};

	FUNC VOID UseCorneliusTagebuch()
	{   
		Cornelius_IsLiar = TRUE;
		B_LogEntry (TOPIC_RESCUEBENNET,"Dziennik jest dowodem na to, ze musze zwolnic Bennet.");	
		
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga
					
					//1.Seite
					Doc_SetFont 	( nDocID,  -1, FONT_Book	   			); 	// -1 -> all pages 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels					
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Jesli Larius nadal bedzie tak postepowal, bede szukal innej pracy.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Cos dziwnego zdarzylo mi sie dzis wieczorem. Jeden z tych mezczyzn w czarnej kapturze, o której zawsze slyszales, przyszedl do mnie zobaczyc w moim domu. Nie bylem w ogóle podekscytowany, choc mówili tylko o nich w sposób okropny. Moc, która promieniuje, byla niemal fizycznie odczuwana. Z drugiej strony glos byl bardzo spokojny i budzacy zaufanie.");

					//2.Seite
					Doc_SetMargins	( nDocID,  -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Ofiarowal mi 20000 sztuk zlota, jesli bede sie upewnic, ze jeden z najemników zostanie skazany. Wiem, kiedy nadszedl czas."	);
					Doc_PrintLines	( nDocID,  1, "Oczywiscie natychmiast zgodzilem sie, ze najemnicy i tak zasluguja na to. Gdyby nie przyszli, wszystko poszloby mi ku zadowoleniu. Zlote kawalki gwarantuja cicha emeryture."					);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Nadszedl czas, aby zlapali jednego z tych najemników. Zachowanie mojego slowa powinno byc dziecinna zabawa.");
					Doc_Show		( nDocID );
					

	PrintScreen ("", -1, -1, FONT_Screen, 0);
					
};

//**********************************************************************************
//	ITWR_DementorObsessionBook_MIS 			//Joly: DementorBuch, der Bessenheit, Ein NSC trägt dieses Buch mit sich, wenn er von einem Dementor kurzzeitig übernommen wurde.)
//**********************************************************************************

INSTANCE ITWR_DementorObsessionBook_MIS (C_ITEM) 
{	
	name 					=	"Almanach Bessenczyków";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI|ITEM_MISSION;

	value 					=	0;

	visual 					=	"NewBook_V3_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_DementorObsessionBook;
};

	FUNC VOID Use_DementorObsessionBook()
{   
	Wld_PlayEffect("spellFX_Fear",  hero, hero, 0, 0, 0, FALSE );
	Snd_Play 	("MFX_FEAR_CAST" );
	SC_ObsessionCounter = 100;	
	B_SCIsObsessed (hero);

	if (hero.guild == GIL_KDF)
		{
			var int nDocID;
	
			nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "BOOK_MAGE_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "BOOK_MAGE_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga
					//1.Seite
		 			Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
	 				Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "egips Kon dirandorix"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "w dzwonnicy Sparady "					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "el utoel"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, " Kho raj ksykondron");
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "enderam em piratoram"					);
					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
	
					if (Kapitel >= 3)
					{
						Doc_PrintLine	(nDocID, 1, "          VINO"								);
						Doc_PrintLine	(nDocID, 1, "FERNANDO"										);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, "     MALAK"									);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, "BROMOR"										);
					};
					if (Kapitel >= 4)
					{
						Doc_PrintLine	(nDocID, 1, "          ENGROM"								);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, "     RANDOLPH"									);
						Doc_PrintLine	(nDocID, 1, ""												);
					};
					if (Kapitel >= 5)
					{
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, "          SEKOB"								);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, ""												);
						Doc_PrintLine	(nDocID, 1, "     BRUTUS"									);
						Doc_PrintLine	(nDocID, 1, ""												);
					};
					Doc_Show		( nDocID );
		};
};

//**********************************************************************************
//	ItWr_PyrokarsObsessionList
//**********************************************************************************

INSTANCE ItWr_PyrokarsObsessionList		(C_Item)
{
	name 				=	"Czarna litera Pyrocara";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";	//VARIATIONEN: ItWr_Scroll_01.3DS, ItWr_Scroll_02.3DS
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_PyrokarsObsessionList;
	scemeName			=	"MAP";
	description			= 	name;
};
func void Use_PyrokarsObsessionList ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "opetany"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
	
					if (Kapitel >= 3)
					{
						Doc_PrintLine	( nDocID,  0, ""					);
						Doc_PrintLine	( nDocID,  0, ""					);
						Doc_PrintLine	( nDocID,  0, "FERNANDO"					);
						Doc_PrintLine	( nDocID,  0, ""					);
						Doc_PrintLine	( nDocID,  0, "VINO"	);
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "MALAK"					);
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "BROMOR"					);
					};
					if (Kapitel >= 4)
					{
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "ENGROM"	);
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "RANDOLPH");
					};
					if (Kapitel >= 5)
					{
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "SEKOB"	);
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, "BRUTUS");
						Doc_PrintLine	( nDocID,  0, ""					);
						Doc_PrintLine	( nDocID,  0, ""					);
						Doc_PrintLine	( nDocID,  0, "");
						Doc_PrintLine	( nDocID,  0, ""					);
					};

					Doc_Show		( nDocID );

};




/******************************************************************************************/
//	Heiltrank für Hilda																	//
/******************************************************************************************/
INSTANCE ItPo_HealHilda_MIS(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI|ITEM_MISSION;

	value 			=	Value_HpEssenz;	

	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	Use_HealHilda;
	scemeName		=	"POTIONFAST";


	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Czarna goraczka";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Essenz;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpEssenz;
};

	FUNC VOID Use_HealHilda()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Essenz);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};

INSTANCE ItPo_HealBesessenheit(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI|ITEM_MISSION;

	value 			=	Value_HpEssenz;	

	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	Use_HealBesessenhei;
	scemeName		=	"POTIONFAST";


	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Uzdrowienie obsesji";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Essenz;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpEssenz;
};

	FUNC VOID Use_HealBesessenhei()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Essenz);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		if (Mod_WM_Verflucht == 1)
		{
			Mod_WM_Verflucht = 0;

			hero.attribute[ATR_STRENGTH] += 10;
			hero.attribute[ATR_DEXTERITY] += 10;
			hero.attribute[ATR_MANA_MAX] += 10;
			hero.attribute[ATR_MANA] += 10;

			B_LogEntry	(TOPIC_MOD_ADANOS_UNHEIL, "Teraz jestem uzdrowiony i teraz powinienem powiedziec Satorom, ze czarownice moga tu pracowac.");
		};
	};	

// *****************************************************
// 		Maleths verlorener Gehstock
// *****************************************************
INSTANCE ItMw_MalethsGehstock_MIS (C_Item)
{	
	name 				=	"chodzenie";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_AXE;	
	material 			=	MAT_WOOD;

	value 				=	Value_VLKMace;

	damageTotal  		= 	Damage_VLKMace;
	damagetype 			=	DAM_BLUNT;
	range    			=  	RANGE_VLKMace;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_VLKMace;
	visual 				=	"Itmw_008_1h_pole_01.3ds";

	description			= 	name;
	TEXT[0]				= 	"na pokladzie";
	TEXT[1]				= 	"litera  jest wyrzezbiona w";					

	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// *****************************************************
// 		Maleths BanditenGeldbeutel
// *****************************************************

INSTANCE ItMi_MalethsBanditGold(C_Item)
{
	name 				=	"Torba zlota!";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	0;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_MalethsBanditGold;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_MalethsBanditGold ()
{
	B_PlayerFindItem (ItMi_Gold,300);
};


// *****************************************************
// 		MoleratFett für "die Winde klemmt"
// *****************************************************

INSTANCE ItMi_Moleratlubric_MIS (C_Item)
{
	name 				=	"smar trzonowy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pitch;

	visual 				=	"ItMi_Moleratlubric.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE ItMi_Trollfett (C_Item)
{
	name 				=	"smar";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Pitch;

	visual 				=	"ItMi_Moleratlubric.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

//*****************************************************
//	Babos Brief
//*****************************************************

INSTANCE ItWr_BabosLetter_MIS		(C_Item)
{
	name 				=	"List do Babo";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_BabosLetter;
	scemeName			=	"MAP";
	description			= "List do Babo.";
};
func void Use_BabosLetter ()
{   
 
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Drogi Babo!"					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Prawdopodobnie zastanawiasz sie, jak mozemy Cie napisac ten list. Zlozylismy wszystkie te pieniadze razem i poprosilismy Mistrza Marla o napisanie tych wierszy tutaj. Zyczymy zatem powodzenia w drodze i mamy nadzieje, ze nie zapomnisz swoich przyjaciól. Jako prezent pozegnalny zapakowalismy kolejne zdjecie, abyscie zawsze pamietali o nas i wieczory w klasztorze nie staly sie dla Was zbyt dlugie.");
					Doc_PrintLines	( nDocID,  0, "Zycze powodzenia w klasztorze i ciesz sie obrazem.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Feht i Bonka.");
					
					Doc_Show		( nDocID );
					
			
		
};

//********************************************************
//	BabosPinup
//********************************************************

INSTANCE ItWr_BabosPinUp_MIS		(C_Item)
{
	name 				=	"kobiecy rysunek";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_BabosPinUp;
	scemeName			=	"MAP";
	description			= "Zdjecie nagiej kobiety";
};
func void Use_BabosPinUp ()
{   
	var int nDocID;
	nDocID 	= 	Doc_Create() ;		
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Map_Pinup.TGA"  , 0 		); 	
	Doc_Show (nDocID);
		
};

//********************************************************
//	BabosDocs
//********************************************************

INSTANCE ItWr_BabosDocs_MIS	(C_Item)
{
	name 				=	"Bukiet dokumentów";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_BabosDocs;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Kilka zwijanych";
	TEXT[3]				=   "dokumentacja";
};
func void Use_BabosDocs ()
{   
		BaboSDocsOpen = TRUE;
		
		CreateInvItems (self, ItWr_BabosLetter_MIS,1);
		CreateInvItems (self, ItWr_BabosPinUp_MIS,1);
};

//*************************************************************
//	igaraz Schlüssel
//*************************************************************

INSTANCE ItKe_IgarazChest_Mis(C_Item)
{
	name 				=	"klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do";
	TEXT[3]				=   "klatka piersiowa Igarazu";
	
}; 

//**********************************************************************************
//	ItWr_Astronomy_Mis
//**********************************************************************************

INSTANCE ItWr_Astronomy_Mis (C_ITEM) 
{	
	name 					=	"Boska moc gwiazd";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	400;

	visual 					=	"NewBook_V3_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_Astronomy;
};

var int Astronomy_once;

FUNC VOID Use_Astronomy()
{   
		if (Astronomy_once == FALSE)
		{
			B_RaiseAttribute_Rest (self, ATR_MANA_MAX, 2);
			Print (PRINT_ReadAstronomy);
			Astronomy_once = TRUE;
		};
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga
					
					//1.Seite
					Doc_SetFont 	( nDocID,  -1, FONT_Book	   			); 	// -1 -> all pages 
 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels					
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "... Ale jesli teraz sila wolu laczy sie z zasadami wojownika, niech wszyscy beda ostrzegani przed wydarzeniami, które moga nadejsc.");
					Doc_PrintLines	( nDocID,  0, "Nieokielznana moc wolu i determinacja wojownika sa w stanie zniszczyc starozytna równowage wladzy. Kosmiczna granica pomiedzy wymiarami staje sie tak slaba, ze cieniste stworzenia Beliara moga latwo przenosic sie do naszego swiata. ");
					//2.Seite
					Doc_SetMargins	( nDocID,  -1, 30, 20, 275, 20, 1   		);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "O tym, co to znaczy, swiadcza nam wojny pierwszych dni, kiedy wiez miedzy swiatami byla jeszcze silniejsza. Poplecznicy zla sprowadzili na swiat smierc i zniszczenie, a tylko z pomoca Inno i jego wybranego, czlowiek mógl pokonac katastrofe. "	);
					Doc_PrintLines	( nDocID,  1, "Jesli kiedykolwiek zdarzy sie to ponownie, Innos moze nas chronic, poniewaz od ponad stu lat nie bylo wybieranego Innosa."					);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
};

///////////////////////
//Besessenheit heilen.
///////////////////////

var int SC_ObsessionTimes;

INSTANCE ItPo_HealObsession_MIS(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI|ITEM_MISSION;

	value 			=	Value_HpEssenz;	

	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	Use_HealObsession;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Uzdrowienie obsesji";
	
	TEXT[1]			= 	NAME_Bonus_HP;				
	COUNT[1]		= 	HP_Essenz;
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_HpEssenz;
};

	FUNC VOID Use_HealObsession()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Essenz);
		SC_ObsessionTimes = SC_ObsessionTimes + 1;
		B_ClearSCObsession (self);
		Wld_PlayEffect("spellFX_LIGHTSTAR_VIOLET",  hero, hero, 0, 0, 0, FALSE );
		Snd_Play ("SFX_HealObsession" );

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};	
	
INSTANCE UrShaks_Weihwasser(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI|ITEM_MISSION;

	value 			=	100;	

	visual 			=	"ItMi_Flask.3ds";
	material 		=	MAT_GLAS;
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Utrata wody pitnej.";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

//************************************************
//	Die Golem Truhe
//************************************************

INSTANCE ItSe_Golemchest_Mis	(C_Item)
{
	name 				=	"torby skórzane";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_GolemChest;
	
	description			= 	"Jedna skórzana torba";
	
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"Torba jest pelna monet";
	TEXT[3]				= 	"";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_GolemChest ()
{
		CreateInvItems (hero, ItMi_Gold ,50);
		Print (PRINT_FoundGold50);
		Print (PRINT_FoundRing);
		CreateInvItems (hero, ItRi_Prot_Total_02,1);
		Snd_Play ("Geldbeutel");
};

//////////////////////////////////////////////////////////////////////////////
//
//	ItWr_ShatteredGolem_MIS
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_ShatteredGolem_MIS (C_Item)
{
	name 		= "bardzo stary";  // 
	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION;

	value 		= 150;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_ShatteredGolem_Mis;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_ShatteredGolem_Mis()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_ShatteredGolem_MIS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_ShatteredGolem.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_SetLevel		(Document, "NewWorld\NewWorld.zen");
					Doc_Show			(Document);
	};
	
//**********************************************************************************
//	Diegos Brief an den Richter
//----------------------------------------------------------------------------------

INSTANCE ItWr_DiegosLetter_MIS		(C_Item)
{
	name 				=	"List od Diego";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_DiegosLetter_Mis;
	scemeName			=	"MAP";
	description			= "List Diego do Gerbrandta.";
};
func void Use_DiegosLetter_Mis ()
{   

		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Gerbrandt, ");
					Doc_PrintLines	( nDocID,  0, "najpierw powinienes mnie zabic. ");
					Doc_PrintLines	( nDocID,  0, "Wracam do miasta i w drodze do Ciebie. Jesli ciee ciecie twojego tlustego brzucha. Znasz mnie na tyle dlugo, ze wiem, ze nie pozwole sobie na bezkarnosc."); 
					Doc_PrintLines	( nDocID,  0, "Kiedy wrzuciles mnie z powrotem do bariery, prawdopodobnie myslales, ze juz na zawsze. Myliliscie sie. ");
					Doc_PrintLines	( nDocID,  0, "Mam dostac to, co mi sie nalezy. ");
					Doc_PrintLines	( nDocID,  0, "Jedyna szansa na utrzymanie przy zyciu jest wyjscie z domu i opuszczenie mnie firmy. Wtedy jestesmy równi.");				
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Diego");
					Doc_Show		( nDocID );
		
};

//*************************************************************************************
//		Diegos Goldschatz
//*************************************************************************************

INSTANCE ItSe_DiegosTreasure_Mis(C_Item)
{
	name 				=	"Torebka skórzana wypelniona sprezysta skóra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_DiegosTreasure;
	description			= 	"Stary skórzany woreczek Diego";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_DiegosTreasure ()
{
	OpenedDiegosBag = TRUE;
	
	B_PlayerFindItem (ItMi_Gold,DiegosTreasure);
};

//*************************************************************************************
//		Ulthars heilendes Wasser zum reinigen der Wegschreine (nur PAL)
//*************************************************************************************

INSTANCE ItMi_UltharsHolyWater_Mis (C_Item)
{
	name 				=	"Swieta woda Ulthara";

	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 				=	Value_HolyWater;

	visual 				=	"ItMi_HolyWater.3ds";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

INSTANCE MyxirsEntweihWasser (C_Item)
{
	name 				=	"Soczewica zrozpaczona woda";

	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 				=	10;

	visual 				=	"ItMi_HolyWater.3ds";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};
//**********************************************************************************
//	ItWr_MinenAnteil_Mis
//----------------------------------------------------------------------------------
var int ItWr_MinenAnteil_Mis_OneTime;
INSTANCE ItWr_MinenAnteil_Mis		(C_Item)
{
	name 				=	"Udzial w kopalni rudy Khorinis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION | ITEM_MULTI;

	value 				=	Value_HpElixier;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MinenAnteil_Mis;
	scemeName			=	"MAP";
	description			= 	name;
	
	TEXT	[5]			=	NAME_Value;					
	COUNT	[5]			=	value;
};
func void Use_MinenAnteil_Mis ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, "odsetek kopaln rudy"									);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "Zgodnie z Dekretem królewskim o przejeciu nieruchomosci od Reichsgrund, wlasciciel niniejszego pisma moze wystepowac w charakterze poszukiwacza nieruchomosci królewskiej.");
					Doc_PrintLines	(nDocID,  0, "Jego dzialalnosc poszukiwawcza musi ograniczac sie do obszaru dzialki królewskiej.");
					Doc_PrintLines	(nDocID,  0, "Dzialki Reichsklein okresla rozporzadzenie o wielkosci terenu poszukiwawczego na powierzchni 16 kroków prawnych, w mieszkaniu i nie wiecej niz 3 kroki w powiekszaniu.");
					Doc_PrintLines	(nDocID,  0, "Reichsprospector jest zwolniony z wszelkich zobowiazan dotyczacych swobodnego dostepu i ochrony dzialek poszukiwawczych.");
					Doc_PrintLines	(nDocID,  0, "Jezeli najemca nie jest w stanie terminowo uiscic naleznych oplat, wszystkie prawa do gruntu i nieruchomosci sa zwracane Rzeszy.");
					Doc_PrintLine	(nDocID,  0, "     nakreslony"									);
					Doc_PrintLine	(nDocID,  0, "     poszukiwacz królewski"						);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "          Salandril"								);
					Doc_Show		(nDocID);
					
		SC_KnowsProspektorSalandril = TRUE;

	if (ItWr_MinenAnteil_Mis_OneTime == FALSE)
	{
		B_LogEntry (TOPIC_MinenAnteile,"Gosc, który sprzedal udzialy w kopalni dealerom, nosi nazwe Salandril. Z pewnoscia znajde go w górnej czesci Khorinisa, jesli nie jest jeszcze w biegu z prawa."); 
	
		
		ItWr_MinenAnteil_Mis_OneTime = TRUE;
	};
};

//**********************************************************************************
//	Schutzamulett gegen den Schwarzen Blick
//**********************************************************************************

INSTANCE  ItAm_Prot_BlackEye_Mis (C_Item)
{
	name 			=	"Dzwonienie na dusze Charm";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_MISSION;

	value 			=	Value_Am_HpMana;

	visual 			=	"ItAm_Hp_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[2]			= "";
	
	TEXT[3] 		= "Chroni przed czarnym okiem";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
		
};
//**********************************************************************************
//	Gestein aus gesegneter Erde für das Schutzamulett gegen den Schwarzen Blick
//**********************************************************************************

INSTANCE  ItMi_KarrasBlessedStone_Mis (C_Item)
{
	name 			=	"Blogoslawione skaly ziemskie";

	mainflag 		=	ITEM_KAT_NONE;
	flags 			=	ITEM_MISSION|ITEM_MULTI ;

	value 			=	0;

	visual 			=	"ItMi_Rockcrystal.3ds";

	visual_skin 	=	0;
	material 		=	MAT_STONE ;

	description		= 	name;
	
	TEXT[2]			= "";
	
	TEXT[3] 		= "";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

//**********************************************************************************
//	Komprobrief für Lee
//----------------------------------------------------------------------------------

INSTANCE ItWr_RichterKomproBrief_MIS		(C_Item)
{
	name 				=	"Mandat sedziego";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RichterKomproBrief;
	scemeName			=	"MAP";
	description			= 	name;
};

func void Use_RichterKomproBrief ()
{   
		SCKnowsRichterKomproBrief = TRUE;
		
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Morgahardhard, ty masz! Zróbcie to, co wam mówie, bo inaczej bede sie rozbijal po innych stronach, a wy wszyscy zostaniecie aresztowani.");
					Doc_PrintLines	( nDocID,  0, "To cos takiego schodzimy jutro wieczorem. Larius staje sie podejrzliwy. ");
					Doc_PrintLines	( nDocID,  0, "Jesli teraz nie dostaniemy pieniedzy z jego kieszeni, moze nie byc kolejnej szansy. Upewnie sie, ze spotkasz go dzis wieczorem na targowisku. ");
					Doc_PrintLines	( nDocID,  0, "Nie czyn zamieszania, bo bojówki cie pobija zanim wiesz, co sie dzieje.");
					Doc_PrintLines	( nDocID,  0, "Nawiasem mówiac, jesli zginie w trakcie tego procesu, nie mam nic przeciwko temu."									);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "          Sedzia najwyzszy i "		);
					Doc_PrintLine	( nDocID,  0, "          sekretarz królewski"		);
					Doc_PrintLine	( nDocID,  0, ""			);
					
					Doc_Show		( nDocID );
		
};

//**********************************************************************************
//	ItWr_MorgahardTip
//----------------------------------------------------------------------------------

INSTANCE ItWr_MorgahardTip		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MorgahardTip;
	scemeName			=	"MAP";
	description			= 	name;
};

func void Use_MorgahardTip ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "Jeszcze raz wyprzedzilem pana. Mam nadzieje, ze wszyscy zobaczymy sie w nieco spokojniejszych czasach.");
					Doc_PrintLines	(nDocID,  0, "Nie martw sie, chlopcy. Jesli wszystkie sznurki zostana zerwane, poprosze Onar o zajecie sie nami.");
					Doc_PrintLines	(nDocID,  0, "Wszystko w porzadku."					);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     M."											);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_Show		(nDocID);
		
};
//////////////////////////////////////////////////////////////////////////////
//
//	MAP der Schreine
//
//////////////////////////////////////////////////////////////////////////////

instance ItWr_Map_Shrine_MIS (C_Item)
{
	name 		= "Mapa Sanktuariów Swietych";  // 
	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 200;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Shrine_MIS;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Shrine_MIS()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Shrine_MIS);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Shrine.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};
	
	
//**********************************************************************************
//	ItWr_VinosKellergeister_Mis
//**********************************************************************************

INSTANCE ItWr_VinosKellergeister_Mis (C_ITEM)
{
	name 					=	"Okowita z wina";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"NewBook_V3_3.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	name;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	Use_VinosKellergeister_Mis;
};

	FUNC VOID Use_VinosKellergeister_Mis()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "BOOK_RED_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "BOOK_RED_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Moc winogron"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "... Wiele juz próbowalem, ale ten owoc, który otrzymalem w zeszlym tygodniu z zagranicy, przekracza moje najsmielsze oczekiwania....."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  0, "... sok z tego winogron jest tak owocowy jak zaden inny winogron znaleziony w tej czesci kraju....."					);
					Doc_PrintLines	( nDocID,  0, "");

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "... jak dotad dobre. Wciaz jednak nie jestem w stanie wytlumic mysli o tym, ze zostalem schwytany w mojej tajnej gorzelni. Nie wiem, co zrobia dla mnie, jesli milicja mnie tutaj odkryje, boje sie, ze wrzuce mnie do zapory najprawdopodobniej......"	);
					Doc_PrintLine	( nDocID,  1, ""					);
					//Absatz
					Doc_PrintLines	( nDocID,  1, "... Oni byli podejrzliwi. Pozostawie wszystko tutaj, dopóki fale sie nie uspokoja i nie wznowie pracy, dopóki nie bede miec pewnosci, ze nie podaza za mna dalej....'.");
					Doc_Show		( nDocID );
};

