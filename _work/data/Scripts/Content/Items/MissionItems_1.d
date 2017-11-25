//****************************************************************************
//			Schlüssel für Xardas Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Xardas(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz piersiowy";
	TEXT[3]				=   "Xardas";
	
};
//**********************************************************************************
//	Canthars Kompromittierender Brief für Sarah die Händlerin
//----------------------------------------------------------------------------------

INSTANCE ItWr_Canthars_KomproBrief_MIS		(C_Item)
{
	name 				=	"litera";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Canthars_KomproBrief;
	scemeName			=	"MAP";
	description			= 	"List kanthara do sprzedawcy detalicznego Sarah";
};
func void Use_Canthars_KomproBrief ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, " Ostatnie ostrzezenie"								);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, " Kilkakrotnie mówilem ci o tym przy róznych okazjach."				);
					Doc_PrintLine	(nDocID,  0, " najmilszy sposób,"				);
					Doc_PrintLine	(nDocID,  0, " ze bron, która wam przywiózlem"				);
					Doc_PrintLine	(nDocID,  0, " Tydzien temu zamówilem pilnie"			);
					Doc_PrintLine	(nDocID,  0, " potrzeba."										);
					Doc_PrintLine	(nDocID,  0, " Jesli nie slysze o Tobie wkrótce,"		);
					Doc_PrintLine	(nDocID,  0, " Sarah, wtedy bede zmuszony,"			);
					Doc_PrintLine	(nDocID,  0, " ciagnac inne boki. Mam taka nadzieje,"			);
					Doc_PrintLine	(nDocID,  0, " My zas rozumiemy siebie nawzajem!"					);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Onar"										);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
					
	
}; 
//****************************************************************************
//			Rods Schwert
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMw_2h_Rod (C_Item)
{	
	name 				=	"Rod's dwureczny";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;
	material 			=	MAT_METAL;

	value 				=	Value_Sld2hSchwert;

	damageTotal  		= 	Damage_Rod;
	damagetype 			=	DAM_EDGE;
	range    			=  	RANGE_Sld2hSchwert;		

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Rod;
	visual 				=	"ItMw_035_2h_sld_sword_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//***************
//Coragons Silber
//***************
INSTANCE ItMi_CoragonsSilber (C_Item)
{
	name 				=	"Coragony Srebrny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SilverCup;

	visual 				=	"ItMi_SilverCup.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[3]				= 	"";	
	TEXT[4]				= 	"";	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

//*******************************
//Päckchen für Thekla von Sagitta
//*******************************
INSTANCE ItMi_TheklasPaket (C_Item)
{
	name 				=	"Pakiety Klas";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Packet.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_TheklasPacket;
	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_TheklasPacket ()
{
	CreateInvItems (hero,ItPl_Mana_Herb_01 ,3);
	CreateInvItems (hero,ItPl_Health_Herb_02 ,1);
	CreateInvItems (hero,ItPl_Speed_Herb_01 ,1);
	CreateInvItems (hero,ItPl_Blueplant ,2);

	Print (PRINT_GotPlants);
};

//*******************************
//Valentinos Ring
//*******************************

INSTANCE ItRi_ValentinosRing(C_Item) //bei Cassia als Belohnung
{
	name 					=	NAME_Ring;

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	Value_Ri_ProtEdge;

	visual 					=	"ItRi_Prot_Edge_01.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ValentinosRing;
	on_unequip				=	UnEquip_ValentinosRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description				= "Pierscien walentynki";

	TEXT[2]					= NAME_Prot_Edge;
	COUNT[2]				= Ri_ProtEdge;
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

	FUNC VOID Equip_ValentinosRing()
	{
		self.protection [PROT_EDGE] 		+=  Ri_ProtEdge*1000;
		self.protection [PROT_BLUNT]		+=  Ri_ProtEdge*1000;
	};

	FUNC VOID UnEquip_ValentinosRing()
	{
		self.protection [PROT_EDGE] 		-=  Ri_ProtEdge*1000;
		self.protection [PROT_BLUNT]		-=  Ri_ProtEdge*1000;
	};

//****************************************************************************
//			Schlüssel für Dexter Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Dexter(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz piersiowy";
	TEXT[3]				=   "z Dextera";
	
};
//**********************************************************************************
//	Constantinos Kräuterliste
//----------------------------------------------------------------------------------

INSTANCE ItWr_Kraeuterliste (C_Item)
{
	name 				=	"spis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Kraeuterliste;
	scemeName			=	"MAP";
	description			= 	"Konstantynos Wykaz roslinny";
};
func void Use_Kraeuterliste ()
{   
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Ziola alfa-chemiczne"	);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Heilpflanze"	);
					Doc_PrintLine	( nDocID,  0, "Heilkraut"	);
					Doc_PrintLine	( nDocID,  0, "Heilwurzel"    );
					Doc_PrintLine	( nDocID,  0, "Feuernessel"  );
					Doc_PrintLine	( nDocID,  0, "Feuerkraut"  );
					Doc_PrintLine	( nDocID,  0, "Feuerwurzel"  );
					Doc_PrintLine	( nDocID,  0, "Goblin Berry"     );
					Doc_PrintLine	( nDocID,  0, "Drachenwurzel");
					Doc_PrintLine	( nDocID,  0, "Snapperkraut"   );
					Doc_PrintLine	( nDocID,  0, "Feldknöterich"      	);
					Doc_PrintLine	( nDocID,  0, "Kronstöckl"       );
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Uwaga: Dlaczego nie dajesz kandydatowi przyniesionego ucznia przynosic rosliny, wtedy wiesz, czy jest dobry na cos. "						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Powitania, Zuris"						);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
}; 
//**********************************************************************************
//Neoras Mana Rezept
//----------------------------------------------------------------------------------

INSTANCE ItWr_ManaRezept (C_Item)
{
	name 				=	"recepta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	20;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ManaRezept;
	scemeName			=	"MAP";
	description			= 	"Wzór magicznej esencji";
};
func void Use_ManaRezept ()
{   
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
	
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Czarodziejskie doniczki"	);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLines	( nDocID,  0, "Aby produkowac eliksiry magicznej mocy, wykwalifikowany alchemik potrzebuje kompetentnego alchemika:");
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Feuernessel");
					Doc_PrintLine	( nDocID,  0, "Feuerkraut");
					Doc_PrintLine	( nDocID,  0, "Feuerwurzel");
					Doc_PrintLines	( nDocID,  0, "Aby to zrobic, potrzebuje jednej rosliny na raz "						);
					Doc_PrintLine	( nDocID,  0, "Feldknöterich"						);
					Doc_PrintLine	( nDocID,  0, ""						);
					Doc_PrintLine	( nDocID,  0, "Mistrz Neoras Neoras "						);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
}; 


// **************************************************************************************

INSTANCE ItWr_Passierschein	(C_Item)
{
	name 				=	"przelecz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	50;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePassierschein;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"Z tym swiadectwem";
	TEXT[4]				=   "Mijam strazników miejskich.";
};
func void UsePassierschein ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1 );
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_BookHeadline);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Passierschein"								);
					Doc_PrintLine	(nDocID,  0, "         horynoza"								);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, " Dokument ten uprawnia jego posiadacza do"					);
					Doc_PrintLine	(nDocID,  0, " Wlasciciel, aby zawrzec umowe na czas nieokreslony."		);
					Doc_PrintLine	(nDocID,  0, " dolne cwiartkihorynu."		);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Larius"										);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     gubernator"						);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
};

//****************************************************************************
//				Kraut Paket für MIS_ANDRE_WAREHOUSE 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMi_HerbPaket(C_Item)
{
	name 				=	"pakiet ziolowy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION | ITEM_SHOW;

	value 				=	200;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	
	description			= 	name;
	TEXT[2]				= 	"Ciezkie, lepkie opakowanie,";
	TEXT[3]				=	"które krazy z bagna.";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	200;
	
};
//****************************************************************************
//				Lagerhaus Schlüssel für MIS_ANDRE_WAREHOUSE 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Storage(C_Item)
{
	name 				=	"kluczowy magazyn";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do";
	TEXT[3]				=   "Magazyn w porcie";
	
};
const int HP_Hering = 20;
//****************************************************************************
//				Alternativer Fish - danke Levelbereich !
//			---------------------------------------------
//****************************************************************************
INSTANCE ItFo_SmellyFish (C_Item)
{	
	name 				=	"namiot";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MISSION|ITEM_MULTI;
	
	value 				=	0;
	
	visual 				=	"ItFo_Fish.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_SmellyFish;

	description			= 	"Sledz";
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_Hering;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= Value_Fish;
};

	FUNC VOID Use_SmellyFish()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Hering);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};
//****************************************
//	Alriks Schwert
//****************************************

INSTANCE ItMw_AlriksSword_Mis (C_Item)
{	
	name 				=	"Miecz Alrija?";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION|ITEM_SWD;	
	material 			=	MAT_METAL;

	value 				=	value_Alrik;

	damageTotal  		= 	damage_Alrik;
	damagetype 			=	DAM_EDGE;
	range    			=  	range_Alrik;

	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_Alrik;
	visual 				=	"ItMw_025_1h_Sld_Sword_01.3DS";
	
	on_equip			=	Equip_AlriksSword;
	on_unequip			=	UnEquip_AlriksSword;

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
	
	func void Equip_AlriksSword()
	{
		B_AddFightSkill (self, NPC_TALENT_1H, 10);

		if Npc_IsPlayer (self)
		{ 
			B_MeleeWeaponChange(10, 0, 0);
		};
	};
	
	func void UnEquip_AlriksSword()
	{
		if (!Npc_IsPlayer (self))
		{ 
			B_AddFightSkill (self, NPC_TALENT_1H, -10);
		};

		if (Npc_IsPlayer (self) && (meleeWeaponChangedHero || scriptPatchWeaponChange == FALSE))
		{ 
			B_AddFightSkill (self, NPC_TALENT_1H, -10);
			B_MeleeWeaponUndoChange();
		};
	};

//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_VatrasMessage	(C_Item)
{
	name 				=	"Komunikat zamkniety";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVatrasMessage;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Komunikat od Vatras";
	TEXT[3]				=   "dla magów ognia";
};
func void UseVatrasMessage ()
{   
		
		CreateInvItems (self, ItWr_VatrasMessage_Open,1);
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Drogi Isgaroth,"					);
					Doc_PrintLines	( nDocID,  0, "Czuje coraz wiecej obecnosci innej sily."					);
					Doc_PrintLines	( nDocID,  0, "Moc, która nie jest nam nieznana. Czyzby sludzy byli blisko Beliarów?"					);
					Doc_PrintLines	( nDocID,  0, "Byc moze sie myle, ale mysle, ze byloby wskazane, aby Ojciec Pyrokar zajmowal sie ta sprawa. "					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Oby nasze modlitwy zostaly wysluchane."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Vatras"					);
					Doc_Show		( nDocID );
}; 
//****************************************************************************
//				Botschaft von Vatras an die Magier des Feuers
//				Das Siegel wurde geöffnet		
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_VatrasMessage_Open	(C_Item)
{
	name 				=	"wysylka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseVatrasMessageOpen;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Komunikat od Vatras";
	TEXT[3]				=   "dla magów ognia";
	TEXT[4]				=   "Pieczec jest zlamana";
};
func void UseVatrasMessageOpen ()
{   
	var int nDocID;
		
		
		
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Drogi Isgaroth,"					);
					Doc_PrintLines	( nDocID,  0, "Czuje coraz wiecej obecnosci innej sily."					);
					Doc_PrintLines	( nDocID,  0, "Moc, która nie jest nam nieznana. Czyzby sludzy byli blisko Beliarów?"					);
					Doc_PrintLines	( nDocID,  0, "Byc moze sie myle, ale mysle, ze byloby wskazane, aby Ojciec Pyrokar zajmowal sie ta sprawa. "					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Oby nasze modlitwy zostaly wysluchane."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Vatras"					);
					Doc_Show		( nDocID );
}; 
//****************************************************
//		Hotelschlüssel
//****************************************************
INSTANCE ItKe_Hotel(C_Item)
{
	name 				=	"klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz pokojowy";
	TEXT[3]				=   "od hotelu";
	
};
//****************************************************
//		Schlüssel zur Diebesgilde
//****************************************************
INSTANCE ItKe_ThiefGuildKey_MIS (C_Item)
{
	name 				=	"zardzewialy klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Sól morska skorodowala ten klucz.";
	
};
//****************************************************
//		Schlüssel zur Diebesgilde vom Hotel
//****************************************************
INSTANCE ItKe_ThiefGuildKey_Hotel_MIS (C_Item)
{
	name 				=	"Klucz zardzewialy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do piwnicy hotelu.";
	
};
//****************************************************
//		Pfortenschlüssel Tempel von Innos
//****************************************************
INSTANCE ItKe_Innos_MIS(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do bramy";
	TEXT[3]				=   "klasztoru Innos.";
	
};
//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterSchatz(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do ";
	TEXT[3]				=   "Skarb panstwa w klasztorze";
	
};
//****************************************************************************
//			Schlüssel Vorratskammer Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterStore(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do ";
	TEXT[3]				=   "spizarnia w klasztorze";
	
};
//****************************************************************************
//			Schlüssel Schlafgemach Player
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KDFPlayer(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do ";
	TEXT[3]				=   "Kruzganek w klasztorze";
	
};
//****************************************************************************
//			Schlüssel Bibliothek Kloster
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_KlosterBibliothek(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz do ";
	TEXT[3]				=   "Biblioteka w klasztorze.";
	
};
//****************************************************************************
//			Extra Wurst Gorax Mission
//			---------------------------------------------
//****************************************************************************
INSTANCE ItFo_Schafswurst (C_Item)
{	
	name 				=	"parówki owcze";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;
	
	value 				=	Value_Sausage;
	
	visual 				=	"ItFo_Sausage.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Schafswurst;

	description			= 	name;
	TEXT[1]				= 	NAME_Bonus_HP;		COUNT[1]	= HP_Sausage;
	TEXT[5]				= 	NAME_Value;			COUNT[5]	= Value_Sausage;

};

	FUNC VOID Use_Schafswurst()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	HP_Sausage);

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];
	};
/******************************************************************************************/
INSTANCE ItPo_Perm_LittleMana(C_Item)
{
	name 			=	NAME_Trank;

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	150;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_LittleMana;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description		= 	"Esencja Ducha Swietego";
	TEXT[1]			= 	NAME_Bonus_ManaMax;			
	COUNT[1]		= 	3;
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value;
};

	FUNC VOID UseItPo_LittleMana()
	{
		B_RaiseAttribute	(self, ATR_MANA_MAX,	3);
		Npc_ChangeAttribute	(self, ATR_MANA,	3);
	};
//****************************************************
//		Hammer Innos, für Golem Prüfung 
//****************************************************
INSTANCE Holy_Hammer_MIS (C_Item)
{	
	name 				=	"Swiety mlot bijak";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_MISSION |ITEM_2HD_AXE ;	
	material 			=	MAT_METAL;

	value 				=	Value_HolyHammer;

	damageTotal  		= 	Damage_HolyHammer;
	damagetype 			=	DAM_BLUNT;
	range    			=  	Range_HolyHammer;		
	
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	Condition_HolyHammer;
	visual 				=	"ItMw_030_2h_kdf_hammer_01.3DS";
	
	on_equip			=	Equip_2H_Max;
	on_unequip			=	UnEquip_2H_Max;

	description			=  name;
	//FIXME_Noki: TAB
	TEXT[2]				=  "Szkody do:?";
	TEXT[3] 			=  "Wymagana grubosc:?";
	TEXT[4] 			=  "bron dwureczna             ";
	TEXT[5]				=  "Wartosc: nie mozna jej oszacowac";					
	/*
	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_OneHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
	
	
	Die Konstanten stehen in der Tuning_Melee_Weapons.d M.F.
	*/
};

//****************************************************************************
//			Schlüssel für die Truhe in der Magierhöhle
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_MagicChest(C_Item)
{
	name 				=	"Wiek Klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION |ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Stary klucz zelazny.";
	TEXT[3]				=   "Mógl udac sie do szpitala. ";
	TEXT[4]				=	"klódka.";
};
//****************************************************************************
//			gefälschter Passierschein von Lee 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Passage_MIS	(C_Item)
{
	name 				=	"Pokojowa ofiara dla Paladynów";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePassage;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"Wraz z tym rachunkiem, ";
	TEXT[4]				=   "Lord Hagen zostanie przyjety";
};
func void UsePassage ()
{   
		var int nDocID;
		
		

		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book	   				); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels

					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLine	( nDocID,  0, "Szanowny Pan Hagen,"			);
					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLines	( nDocID,  0, "Oboje wiemy, w jakiej sytuacji sie znajdujesz. Dlatego proponuje nastepujaca wymiane handlowa: " 	);
					Doc_PrintLines	( nDocID,  0, "Dajesz mi i wszystkim moim mezczyznom generalna ucieczke od Innosa i króla. "				);
					Doc_PrintLines	( nDocID,  0, "W zamian oferujemy nasze uslugi w zakresie obrony miasta i okolicznych terenów wiejskich. " );
					Doc_PrintLines	( nDocID,  0, "Doloze równiez staran, aby moi mezczyzni pozostawali z dala od otaczajacych podwórek - z wyjatkiem oczywiscie dziedzinca w Onar, na którym bedziemy nadal stacjonowac." );
					Doc_PrintLines	( nDocID,  0, "Wiem, ze na statku jest jeszcze miejsce dla mnie i niektórych moich mezczyzn, którym wyruszysz na lad. Kiedy ustawiasz zagiel, chce byc na pokladzie." );
					Doc_PrintLines	( nDocID,  0, "Blagam cie, podejmuje decyzje z cala madroscia. " );
					Doc_PrintLine	( nDocID,  0, ""								);
					Doc_PrintLine	( nDocID,  0, ""		);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   				);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
					Doc_Show		( nDocID );
		
}; 
//****************************************************************************
//			Nachricht des Banditen -> Plot Wo ist die Armee?
//			---------------------------------------------
//****************************************************************************

INSTANCE ItWr_BanditLetter_MIS	(C_Item)
{
	name 				=	"fragment wiadomosci";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseBanditLetter;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
func void UseBanditLetter ()
{   
		var int nDocID;
	
		/*
		if (Bdt13_Dexter_verraten == FALSE)
		{
			Bdt13_Dexter_verraten = TRUE;
		
			Log_CreateTopic (Topic_Bandits,LOG_MISSION);
			B_SetTopicStatus (Topic_Bandits,LOG_RUNNING);
			B_LogEntry (Topic_Bandits,"Der Anführer der Banditen ist Dexter. Er versteckt sich bei einer Mine, beim Großbauer.");
			MIS_Steckbriefe = LOG_RUNNING;
		};
		*/
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0); 
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetFont		(nDocID,  0, FONT_Book);
					Doc_PrintLine	(nDocID,  0, "Zatrzymac wszystkich mezczyzn, "							);
					Doc_PrintLine	(nDocID,  0, " pochodzic z gór."						);
					Doc_PrintLine	(nDocID,  0, "W przypadku, gdy ktos przychodzi z przepustka, "				);
					Doc_PrintLine	(nDocID,  0, " to chyba stary czlowiek."			);
					Doc_PrintLine	(nDocID,  0, "Nie pozwól mu cie oszukac. "				);
					Doc_PrintLine	(nDocID,  0, " jest niebezpiecznym czarodziejem.   "				);
					Doc_PrintLine	(nDocID,  0, "Miej oko na faceta."						);
					Doc_PrintLine	(nDocID,  0, "     "											);
					Doc_PrintLine	(nDocID,  0, "To dobra rzecz, której szukamy, "		);
					Doc_PrintLine	(nDocID,  0, " aby nawiazac z nim kontakt. "						);
					Doc_PrintLine	(nDocID,  0, "Wraz z tym listem przesylam "				);
					Doc_PrintLine	(nDocID,  0, " Trzydziesci sztuk zlota. "							);
					Doc_PrintLine	(nDocID,  0, "Dostaja kolejne trzydziesci, "				);
					Doc_PrintLine	(nDocID,  0, " który zabija czlowieka. "							);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "Zabierz glowe do starej kopalni, wielkiego rolnika.");
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "..... D."											);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_SetMargins	(nDocID, -1, 200, 50, 50, 50, 1);
					Doc_Show		(nDocID);
}; 
//****************************************************************************
//			Steckbrief vom Spieler
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Poster_MIS	(C_Item)
{
	name 				=	"arkusz informacyjny";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UsePoster;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"Zdjecie mnie!";
	TEXT[4]				=   "";
};
FUNC VOID UsePoster()
{
	var int nDocID;
	nDocID 	= 	Doc_Create() ;		
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Gesucht.TGA"  , 0 		); 	
	Doc_Show (nDocID);
};
INSTANCE ItWr_Anschlag	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAnschlag;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
FUNC VOID UseAnschlag()
{
	var int nDocID;
	nDocID 	= 	Doc_Create() ;		
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Gesucht.TGA"  , 0 		); 	
	Doc_Show (nDocID);

	if (Mod_MoeDontTalk == 2)
	{
		Mod_MoeDontTalk = 3;
	};
};

INSTANCE ItWr_Anschlag_Bengar	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Lobart	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Onar	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_Kloster	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};

INSTANCE ItWr_Anschlag_City	(C_Item)
{
	name 				=	"parkan";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MULTI|ITEM_MISSION ;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	description			= 	name;
	TEXT[3]				=	"";
	TEXT[4]				=   "";
};
//****************************************************************************
//				Banditen Truhen Schlüssel 
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Bandit(C_Item)
{
	name 				=	"klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz";
	TEXT[3]				=   "nalezalo do bandyty";
	
};

//****************************************************************************
//				Bospers Jagdbogen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItRw_Bow_L_03_MIS (C_Item)
{
	name 				=	"lowiectwo";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW|ITEM_MISSION;
	material 			=	MAT_WOOD;

	value 				=	Value_Jagdbogen;

	damageTotal			=	Damage_Jagdbogen;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Arrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	Condition_Jagdbogen;
	visual 				=	"ItRw_Bow_L_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= "Lódz do polowania na smycz";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
//****************************************************************************
//				Constantinos Schutzring
//			---------------------------------------------
//****************************************************************************
INSTANCE ItRi_Prot_Point_01_MIS(C_Item)
{
	name 					=	"Konstantynos Pierscien Konstantynos";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING|ITEM_MISSION;

	value 					=	Value_Ri_ProtPoint ;

	visual 					=	"ItRi_Prot_Point_01.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ItRi_Prot_Point_01_MIS;
	on_unequip				=	UnEquip_ItRi_Prot_Point_01_MIS;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description				=  "Ochrona drewna ";
	
	TEXT[2]					= NAME_Prot_Point;
	COUNT[2]				= Ri_ProtPoint;
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
		
};

	FUNC VOID Equip_ItRi_Prot_Point_01_MIS()
	{
	self.protection [PROT_POINT] 		+=  Ri_ProtPoint*1000;
	};

	FUNC VOID UnEquip_ItRi_Prot_Point_01_MIS()
	{
	self.protection [PROT_POINT] 		-=  Ri_ProtPoint*1000;
	};

//****************************************************************************
//				Eddas Statue
//			---------------------------------------------
//****************************************************************************
INSTANCE ItMi_EddasStatue (C_Item)
{
	name 				=	"Pomnik Inno";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI| ITEM_MISSION ;

	value 				=	50;

	visual 				=	"ItMi_InnosStatue.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				= 	"Pan sprawiedliwosci Innos ";
	TEXT[3]				= 	"blogoslawic i zachowac mnie";
	TEXT[4]				= 	"do których zadne zlo nie dotknie mnie";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};

//****************************************************************************
//				Crypta-Schlüssel
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_EVT_CRYPT_01(C_Item)
{
	name 				=	"Stary klucz mosiezny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz szkieletu w pokoju 1.";
	
};

INSTANCE ItKe_EVT_CRYPT_02(C_Item)
{
	name 				=	"Stary klucz mosiezny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz szkieletu w pokoju 2.";
	
};

INSTANCE ItKe_EVT_CRYPT_03(C_Item)
{
	name 				=	"Stary klucz mosiezny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz kluczyka do pokoju szkieletowego 3.";
	
};

const int VALUE_ITAR_PAL_SKEL	= 500;

INSTANCE ITAR_PAL_SKEL (C_Item)
{
	name 					=	"Zbroja rycerska";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100000;
	protection [PROT_BLUNT] = 	100000;
	protection [PROT_POINT] = 	100000;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_SKEL;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_H.3ds";
	visual_change 			=	"Armor_Pal_Skeleton.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE]/1000;
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT]/1000;
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

//****************************************************************************
//				Schlüssel zu Valentinos Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Valentino(C_Item)
{
	name 				=	"Klucze do klatki piersiowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz piersiowy";
	TEXT[3]				=   "z Valentino";
	
};
//****************************************************************************
//				Schlüssel zur Truhe OV Noname Typen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Buerger(C_Item)
{
	name 				=	"Klucze do klatki piersiowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Polozony byl na parapecie okiennym";
	TEXT[3]				=   "";
	
};
//****************************************************************************
//				Schlüssel Richter Truhe
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Richter(C_Item)
{
	name 				=	"Klucze do klatki piersiowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Klucz piersiowy";
	TEXT[3]				=   "sedziego";
	
};
//****************************************************************************
//				Schlüssel Salandril
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Salandril(C_Item)
{
	name 				=	"Klucze do klatki piersiowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"przez Salandrila alchemika";
	TEXT[3]				=   "";
	
};

//****************************************************************************
//				Schlüssel Truhe ...wo die Paladine schlafen
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_PaladinTruhe(C_Item)
{
	name 				=	"Klucze do klatki piersiowej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Maly klucz mosiezny";
	TEXT[3]				=   "z Domu Paladynów";
	
};
//****************************************************************************
//				Diebsgilde Schatz (Insel)
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_ThiefTreasure(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Maly klucz";
};
//****************************************************************************
//				Diebsgilde Fingers Tür
//			---------------------------------------------
//****************************************************************************
INSTANCE ItKe_Fingers(C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_03.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Rdzewialy klucz do drzwi";
	TEXT[3]				=   "z instalacji kanalizacyjnej";
	
};
//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

INSTANCE ItWr_Schuldenbuch (C_ITEM)
{	
	name 					=	"Ksiazka dluzna";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V2_4.3DS";  					
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Ksiega dluzna Lehmar";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseSchuldBuch;
};

	FUNC VOID UseSchuldBuch()
	{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								
					Doc_SetPages	( nDocID,  2 );                         

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); 
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); 
					
					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels 					
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline	   			); 	// -1 -> all pages 
 					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Transakcje i dlugi"	);
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "Pan Mistrz Thorben, stolarz z Khorinis, zawdziecza 200 zlotych monet szanownemu panu Lehmarowi.");
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLine	( nDocID,  0, "             Thorben");
					Doc_PrintLine	( nDocID,  0, ""					);	
					Doc_PrintLine	( nDocID,  0, ""					);										
					Doc_PrintLines	( nDocID,  0, "I Coragon, wlasciciel nieruchomosci w Khorinis, jest winien honorowy pan Lehmar 150 zlotych monet.");
					Doc_PrintLine	( nDocID,  0, ""					);		
					Doc_PrintLine	( nDocID,  0, "             Coragon");										
					//Absatz
					Doc_PrintLine	( nDocID,  0, ""					);

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					//Doc_SetFont 	( nDocID,  1, FONT_BookHeadline	   			); 	// -1 -> all pages 
					//Doc_PrintLine	( nDocID,  1, ""					);										
					//Doc_PrintLines( nDocID,  1, "StandardBuch Seite 2"	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages 
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLines	( nDocID,  1, "Ja, Hanna, wlascicielka hotelu w Khorinis, zawdzieczam Panu Lehmarowi 250 zlotych monet.");
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "               Hanna");
					//Absatz
					Doc_PrintLines	( nDocID,  1, "");
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Lehmars Schuldenbuch
//**********************************************************************************

INSTANCE ItPl_Sagitta_Herb_MIS (C_Item)
{	
	name 				=	"salony sloneczne";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;	

	value 				=	Value_Strength_Herb_01;

	visual 				=	"ItPl_Strength_Herb_01.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"FOOD";

	description			= 	name;
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	Value_Strength_Herb_01;
};


//****************************************************************************
//			Schlüssel für die obernen Schlafzimmer in der Taverne (MITTE DER WELT!)
//			---------------------------------------------
//****************************************************************************
INSTANCE ITKE_ORLAN_HOTELZIMMER(C_Item)
{
	name 				=	"klucz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_01.3ds";
	material 			=	MAT_METAL;

	description			= 	name;
	
	TEXT[2]				=	"Do martwej harfy?";
	TEXT[3]				=   "";
	
};

INSTANCE ItRw_DragomirsArmbrust_MIS (C_Item)
{
	name 				=	"Dragomirs Crossowowirs";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;

	value 				=	Value_LeichteArmbrust;

	damageTotal			= 	Damage_LeichteArmbrust;
	damagetype			=	DAM_POINT;
	munition			=	ItRw_Bolt;
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	Condition_LeichteArmbrust;
	visual 				=	"ItRw_Crossbow_L_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_STR_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
