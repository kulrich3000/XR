//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon_Sealed	(C_Item)
{
	name 				=	"Komunikat zamkniety";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Komunikat ten zostal dokladnie zapieczetowany.";

};
var int Use_SaturasFirstMessage_OneTime;
func void Use_SaturasFirstMessage ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Cenne Vatras,"					);
					Doc_PrintLines	( nDocID,  0, "Dotarlismy do portalu. Mial pan jednak racje."					);
					Doc_PrintLines	( nDocID,  0, "Wyglada to tak, jakby byli wierzacymi Adanosami. Prosze Cie o sprawdzenie tego na podstawie moich danych."					);
					Doc_PrintLines	( nDocID,  0, "W ciagu kilku dni nie widzielismy zadnego z tych dziwnych stworzen wykonanych z kamienia."					);
					Doc_PrintLines	( nDocID,  0, "Niemniej jednak ziemia nadal drzy z niewykrywalnych powodów."					);
					Doc_PrintLines	( nDocID,  0, "Podejrzewam, ze nasze badania wkrótce dostarcza nam wiecej informacji na ten temat."					);
					Doc_PrintLines	( nDocID,  0, "Znaleziony przez nas ornament ma o wiele wazniejsze znaczenie niz poczatkowo zakladalismy. Wydaje sie, ze jest to wazny artefakt. Niestety, nie jest to kompletne. Musimy zbadac ja dalej."					);
					Doc_PrintLines	( nDocID,  0, "Wyslij jedno z naszych dzieci z 'Pierscienia Wody', aby przywiezc je z powrotem do nas. Jesli mozesz, nie wyslij Cavalorn."					);
					Doc_PrintLines	( nDocID,  0, "Polecilem mu, aby przekazal ci ten list. Mysle, ze to wystarczy."					);
					Doc_PrintLines	( nDocID,  0, "Mam nadzieje, ze postepujemy wlasciwie."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Saturas"					);
					Doc_Show		( nDocID );
		
		if (Use_SaturasFirstMessage_OneTime == FALSE)
		&& (MIS_Addon_Cavalorn_Letter2Vatras != LOG_SUCCESS)
		{
			Log_CreateTopic (TOPIC_Addon_KDW, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_KDW, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_KDW,"Wzialem wiadomosc od bandyty, ze Cavalorn mial przekazac wodny magik Vatras. Teraz to moja praca."); 
			Use_SaturasFirstMessage_OneTime = TRUE;
		};

		if (SC_KnowsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			Log_AddEntry (TOPIC_Addon_RingOfWater,"Istnieje wspólnota zwana 'Pierscien Wody'. Magicy wodni zdaja sie byc dowódcami tej spolecznosci."); 
		};

		if (SC_IsRanger == FALSE)
		{
			Log_CreateTopic (TOPIC_Addon_RingOfWater, LOG_MISSION);
			B_SetTopicStatus(TOPIC_Addon_RingOfWater, LOG_RUNNING);
			Log_AddEntry (TOPIC_Addon_RingOfWater,"Kawaler nalezy do 'Pierscien wodny'."); 
		};
	
		SC_KnowsRanger = TRUE;
}; 
func void Use_SaturasFirstMessage_Sealed ()
{   
	CreateInvItems (self, ItWr_SaturasFirstMessage_Addon,1);
	SaturasFirstMessageOpened = TRUE;
	Use_SaturasFirstMessage ();
}; 

//****************************************************************************
//				Cavalorn's Brief an Vatras von Saturas
//				Das Siegel wurde geöffnet		
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_SaturasFirstMessage_Addon	(C_Item)
{
	name 				=	"Ambasada Otwarta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_SaturasFirstMessage;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "List Satura do Vatras (Satura)";
};


//****************************************************************************
//				Portalschlüsselbruchstück
//			---------------------------------------------
//****************************************************************************

INSTANCE  ItMi_Ornament_Addon (C_ITEM)
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment duzego pierscienia ozdobnego";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Priester (C_ITEM)
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment fragmentu kaplana";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Heiler (C_ITEM)
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment uzdrowiciela";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Krieger (C_ITEM)
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment gry wojownika";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Totenwaechter (C_ITEM)
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment ochroniarza";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

INSTANCE  ItMi_Ornament_Addon_Vatras (C_ITEM) //Joly:  gibt Vatras dem SC um ihn zu Lares zu bringen. Nur hiermit wird Saturas zufrieden gestellt -> erst dann Nefarius Auftrag!!!!!!!!!
{
	name 				=	"ozdoba";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_05.3DS"; 
	material 			=	MAT_METAL;

	description			= 	name;

	TEXT	[0]			=	"Fragment duzego pierscienia ozdobnego";

	INV_ZBIAS			= 	INVCAM_ENTF_MISC5_STANDARD;
};

//****************************************************************************
//				ItWr_Map_NewWorld_Ornaments_Addon
//			---------------------------------------------
//****************************************************************************


instance ItWr_Map_NewWorld_Ornaments_Addon (C_Item)
{
	name 		= "Mapa Nefariusa";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Ornaments;

	description	= name;
	TEXT[0]		= "na mapie zaznaczone sa miejsca";
	TEXT[1]		= "gdy Nefarius podejrzewa, ze zaginione ornamenty sa podejrzane";
	TEXT[2]		= "";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Ornaments()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Ornaments_Addon);
		};

		SC_SAW_ORNAMENT_MAP = TRUE;

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Ornaments.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};

//****************************************************************************
//				ItWr_Map_NewWorld_Dexter
//			---------------------------------------------
//****************************************************************************

instance ItWr_Map_NewWorld_Dexter (C_Item)
{
	name 		= "Mapahorynów";  // 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 210;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_Map_NewWorld_Dexter;

	description	= name;
	TEXT[0]		= "Skip oznaczyl dla mnie miejsce,";
	TEXT[1]		= "gdzie mam glowe bandytów";
	TEXT[2]		= "Wyszukiwarka moze znalezc.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_Map_NewWorld_Dexter ()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_NewWorld_Dexter);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_NewWorld_Dexter.tga", TRUE);  // TRUE = scale to fullscreen
					Doc_Show			(Document);
	};


//****************************************************************************
//				ItRi_Ranger_Addon
//			---------------------------------------------
//****************************************************************************

PROTOTYPE Rangerring_Prototype (C_ITEM)
{
	name 					=	"pierscienie aquamaryna";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING|ITEM_MISSION; //Joly:kein Multiitem. Die ringe sind individuell

	value 					=	Value_Ri_HpMana;

	visual 					=	"ItRi_Hp_Mana_01.3ds"; 

	visual_skin 			=	0;
	material 				=	MAT_METAL;
	on_equip				=	Equip_ItRi_Ranger_Addon;
	on_unequip				=	UnEquip_ItRi_Ranger_Addon;

	description				= "Znak 'Pierscien wodny'.";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
	
};

FUNC VOID Equip_ItRi_Ranger_Addon()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (ENTERED_ADDONWORLD == FALSE) //Joly:wegen Lance' Ring
			{
				if (Npc_HasItems (hero,ItRi_Ranger_Addon) == FALSE)
				{
					RangerRingIsLaresRing = TRUE;
				};
			};
			
			SCIsWearingRangerRing = TRUE;
			Print	(PRINT_Addon_SCIsWearingRangerRing);
		};
};

FUNC VOID UnEquip_ItRi_Ranger_Addon ()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			if (SC_IsRanger == FALSE)
			{
				SCIsWearingRangerRing = FALSE;
			};
			RangerRingIsLaresRing = FALSE;
		};
};

//Lares Ring
INSTANCE ItRi_Ranger_Lares_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "Pierscien ten nalezy do Lares.";
};

//PCs Ring
INSTANCE ItRi_Ranger_Addon (Rangerring_Prototype)
{
	TEXT[1]					= "Pierscien jest kopalnia";
};
//Lance Ring
INSTANCE ItRi_LanceRing (Rangerring_Prototype)
{
	TEXT[1]					= "Pierscien ten nalezy do Lanca.";
};



//****************************************************************************
//				ItMi_PortalRing_Addon
//			---------------------------------------------
//****************************************************************************

INSTANCE ItMi_PortalRing_Addon (C_Item)
{
	name 				=	"pierscien ozdobny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_PortalRing_01.3DS"; 
	material 			=	MAT_STONE;

	description			= 	"Ten pierscien otwiera portal";
	INV_ZBIAS			= 	INVCAM_ENTF_MISC3_STANDARD;
};

//**********************************************************************************
//	Empfehlungsschreiben für Andre, Miliz zu werden (von Martin)
//----------------------------------------------------------------------------------

INSTANCE ItWr_Martin_MilizEmpfehlung_Addon		(C_Item)
{
	name 				=	"List przedstawiajacy zalecenie Martina";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MartinMilizEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"List polecajacy dla Pana Andre' a";
	
	TEXT[2]				= 	"niniejszy list powinien mi pomóc";
	TEXT[3]				= 	"milicji.";

	
};
func void Use_MartinMilizEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
		nDocID = 	Doc_Create		();
					Doc_SetPages	(nDocID,  1);
					Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
					Doc_SetFont		(nDocID, -1, FONT_Book);
					Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "Drogi Pan Andre"								);
					Doc_PrintLines	(nDocID,  0, ""													);
					Doc_PrintLines	(nDocID,  0, "Tym listem wysylam ci nowa rekrutacje do naszej milicji.");
					Doc_PrintLines	(nDocID,  0, "Zrobil juz sobie slawe dzieki pewnym trudnym i profesjonalnym uslugom.");
					Doc_PrintLines	(nDocID,  0, "Jestem pewien, ze jest on bardzo dobrze przystosowany do ochrony króla i dobrobytu mieszkanców tego miasta.");
					Doc_PrintLine	(nDocID,  0, "Innos chroni króla"							);
					Doc_PrintLine	(nDocID,  0, ""													);
					Doc_PrintLine	(nDocID,  0, "     Mistrz zaopatrzenia Martin"						);
					Doc_Show		(nDocID);
		
};


//**********************************************************************************
//	Ravens Befehle an Dexter
//----------------------------------------------------------------------------------

INSTANCE ItWr_RavensKidnapperMission_Addon		(C_Item)
{
	name 				=	"rozkazy";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_RavensKidnapperMission_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"Mam ten list. ";
	TEXT[3]				= 	"od bandyty Dextera.";

	
};
var int Use_RavensKidnapperMission_Addon_OneTime;
func void Use_RavensKidnapperMission_Addon ()
{   
 	if (Use_RavensKidnapperMission_Addon_OneTime == FALSE)
 	&& (MIS_Addon_Vatras_WhereAreMissingPeople != 0)
 	{
	 	Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
		B_SetTopicStatus(TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_WhoStolePeople,"Teraz mam to na pismie. Raven, dawny arcybaron stoi za porwaniami mieszkanców Khorinis. Raven ma swoja kryjówke gdzies za górami w górach w pólnocno-wschodniej czesci Khorinis. Vatra powinna przyjrzec sie temu napisowi."); 
		Use_RavensKidnapperMission_Addon_OneTime = TRUE;
	};

 	SCKnowsMissingPeopleAreInAddonWorld = TRUE;

	var int nDocID;
		
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", 0);
				Doc_SetFont		(nDocID, -1, FONT_Book);
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_PrintLines	(nDocID,  0, "Dexter, syn suki!");
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLines	(nDocID,  0, "Kiedy bylem baronem, nie byles tak niewiarygodny.");
				Doc_PrintLines	(nDocID,  0, "Jesli nie uda Ci sie porwac wiecej mieszkanców miasta i wyslac ich do mnie, wkrótce bedziemy mieli prawdziwy problem z chlopcami w naszej kryjówce. ");
				Doc_PrintLines	(nDocID,  0, "Potrzebuje tu wiecej niewolników, bo chlopcy rozpoczna kolejny bunt. I nie musze wam mówic, co to znaczy, czy ja?");
				Doc_PrintLines	(nDocID,  0, "Wkrótce wejde do swiatyni. Nie moge sobie pozwolic na tego typu zaklócenia.");
				Doc_PrintLines	(nDocID,  0, "I jeszcze jeden problem:"								);
				Doc_PrintLines	(nDocID,  0, "Predzej czy pózniej musimy znalezc droge przez wysokie góry w pólnocno-wschodniej czesci Khorinis. Piraci nie beda dlugo przekraczali granice, jesli nie zaplacimy im wiecej.");
				Doc_PrintLine	(nDocID,  0, ""														);
				Doc_PrintLine	(nDocID,  0, "     Raven"											);
				Doc_Show		(nDocID);
		
};

//**********************************************************************************
//	Empfehlungsschreiben für Pedro, ins Kloster eingelassen zu werden.
//----------------------------------------------------------------------------------

INSTANCE ItWr_Vatras_KDFEmpfehlung_Addon		(C_Item)
{
	name 				=	"List polecajacy zalecenia Vatry";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_VatrasKDFEmpfehlung_Addon;
	scemeName			=	"MAP";
	description			=  	"Vatras Empfehlungsschreiben";
	
	TEXT[2]				= 	"ten list ma mi pomóc bez niego";
	TEXT[3]				= 	"Tryb do klasztoru magów strazy pozarnej";
	TEXT[4]				= 	"do wynajecia.";

	
};
func void Use_VatrasKDFEmpfehlung_Addon ()
{   
 
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Bracia ognia");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, "Wlasnie powiedziano mi, ze przyjecie do waszych ziem wymaga oddania holdu.");
					Doc_PrintLines	( nDocID,  0, "Z tym listem przekazuje wiernego czlowieka, który chce zostac nowicjuszem w twoich szeregach."					);
					//Doc_PrintLine	( nDocID,  0, "Ich hoffe, dass ich nicht persönlich erscheinen muss ihm den Einlass ");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Vatras");
					Doc_Show		( nDocID );				
		
};

/******************************************************************************************/
INSTANCE ItMi_LostInnosStatue_Daron (C_Item)
{
	name 				=	"Cenny pomnik Inno.";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_InnosStatue;

	visual 				=	"ItMi_InnosStatue.3DS";
	material 			=	MAT_METAL ;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};


//**********************************************************************************
//	Abschiedsbrief von Lucia an Elvrich
//----------------------------------------------------------------------------------

INSTANCE ItWr_LuciasLoveLetter_Addon		(C_Item)
{
	name 				=	"Lucia's samobójstwo";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_LuciasLoveLetter_Addon;
	scemeName			=	"MAP";
	description			=  	name;
	
};
func void Use_LuciasLoveLetter_Addon ()
{   
 
	Log_CreateTopic (TOPIC_Addon_Lucia, LOG_MISSION);
	B_SetTopicStatus(TOPIC_Addon_Lucia, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Lucia,"Lucia napisala do Elvricha notatke samobójcza. Jestem pewien, ze go zainteresuje."); 
	MIS_LuciasLetter = LOG_RUNNING;
	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Najdrozszy Elwrich");
					Doc_PrintLines	( nDocID,  0, "");					
					Doc_PrintLines	( nDocID,  0, "Nie mam slów, by opisac jak zaluje.");
					Doc_PrintLines	( nDocID,  0, "Wiem, ze nie zrozumiesz, ale doszedlem do wniosku, ze lepiej dla nas obojga, jesli znajdziesz sobie bardziej przyzwoita dziewczyne niz ja."					);
					Doc_PrintLines	( nDocID,  0, "Z miejsca, z którego teraz jade, nie wróce. Zapomnij o mnie. Moja dziwka jak ja nie jest niczym dla takiego pionowego faceta jak ty. Pozegnanie pozegnania.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Lucja");
					Doc_Show		( nDocID );				
};

//****************************************************************************
//				Effectitems
//			---------------------------------------------
//****************************************************************************

PROTOTYPE  EffectItemPrototype_Addon (C_Item)	
{
	name 				=	"perla";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Coal;

	visual 				=	"ItMi_Coal.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS			= INVCAM_ENTF_MISC_STANDARD;
	
};

INSTANCE ItMi_AmbossEffekt_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FARM_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_FOREST_Addon (EffectItemPrototype_Addon)
{
};
INSTANCE ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemPrototype_Addon)
{
};
/******************************************************************************************/
// Hacke 
INSTANCE ItMi_Rake (C_Item)
{
	name 				=	"kilof";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Rake;

	visual 				=	"ItMi_Rake.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"RAKE";
	on_state[1]			= 	Use_Rake;
	description			= 	name;
	
	//TEXT[3]				=   "(Lässt sich bei geöffnetem Inventar benutzen)";
	//TEXT[4]				=   "('Aktionstaste' + 'Pfeil- Vorne' gedrückt halten)";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	//inv_rotx		= 180;
};
func void Use_Rake()
{
	//B_SCUsesRake (self); //Schatz ausgraben ist jetzt Mobsi mit itmw_2h_Axe_L_01
};

/******************************************************************************************/
INSTANCE ItRi_Addon_BanditTrader(C_Item)	//Händlergildenring
{
	name 					=	"Pierscien gildii";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_RING;

	value 					=	5 ;

	visual 					=	"ItRi_Prot_Point_02.3ds";

	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				= 	"Pierscien zielony";
	
	TEXT[2]					= 	"Gildia Dealerów Zamorskich Araxos";
	
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;
};

//**********************************************************************************
//	ItWr_Addon_BanditTrader
//----------------------------------------------------------------------------------

INSTANCE ItWr_Addon_BanditTrader		(C_Item)
{
	name 				=	"wysylka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_ItWr_Addon_BanditTrader;
	scemeName			=	"MAP";
	description			=  	name;
	
	TEXT[2]				= 	"Pisalem ten list.";
	TEXT[3]				= 	"bandyci za podwórkiem Sekoba.";

	
};
var int Use_ItWr_Addon_BanditTrader_OneTime;
func void Use_ItWr_Addon_BanditTrader ()
{   
 	BanditTrader_Lieferung_Gelesen = TRUE;
 	var int nDocID;
		
			nDocID = 	Doc_Create		()			  ;							// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "15 Krótkie miecze");
					Doc_PrintLines	( nDocID,  0, "20 Epee"					);
					Doc_PrintLines	( nDocID,  0, "25 bochenek chleba");
					Doc_PrintLines	( nDocID,  0, "15 butelek wina"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "To byl ostatni raz. "					);
					Doc_PrintLines	( nDocID,  0, "Sprawy staja sie dla mnie zbyt gorace."					);
					Doc_PrintLines	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "     Fernando");
					Doc_Show		( nDocID );				
	
	if (MIS_Vatras_FindTheBanditTrader != 0)
	&& (Use_ItWr_Addon_BanditTrader_OneTime == FALSE)
	{
		B_LogEntry (TOPIC_Addon_BanditTrader,"Znalazlem papier, który moze udowodnic, ze Fernando jest dealerem broni, którego szukam."); 
		Use_ItWr_Addon_BanditTrader_OneTime = TRUE;
	};
};

//****************************************************************************
//				Vatras schickt SC zu Saturas
//			---------------------------------------------
//****************************************************************************
INSTANCE ItWr_Vatras2Saturas_FindRaven	(C_Item)
{
	name 				=	"wysylka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_02.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven_Sealed;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "Pismo teatralne dla Saturasów.";

};
func void Use_Vatras2Saturas_FindRaven ()
{   
		var int nDocID;
		nDocID = 	Doc_Create		()			  ;							
					Doc_SetPages	( nDocID,  1 );                         
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 	); 
					Doc_SetFont 	( nDocID, -1, FONT_Book		   		); 	
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   	);  
					Doc_PrintLine	( nDocID,  0, "Cenne Satura"					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mam nadzieje, ze wkrótce dotrzesz do celu. Nasza sytuacja w miescie wydaje sie obecnie relaksujaca. Ale obawiam sie, ze cisza to oszustwo. Lepiej sie spieszyc. Potrzebuje pana tutaj."					);
					Doc_PrintLines	( nDocID,  0, "Studiowalem twoje notatki i moge potwierdzic twoje podejrzenia. Bohaterowie wskazuja na kulture, która wierzy w Adanosa. Uwazajcie, aby nie byc oslepieni przez falszywych proroków."					);
					Doc_PrintLines	( nDocID,  0, "Zaginieni obywatele Khorinis zostali porwani przez dawnego arcybiskupiego Ravena do regionu, gdzie oczywiscie bedzie prowadzil portal."					);
					Doc_PrintLines	( nDocID,  0, "Jeszcze jedno: Wyslalem wam jakas pomoc. Poslaniec tego przeslania jest czyms szczególnym. Ma tak niezwykly blask w oczach. Nie jestem pewna, ale moze to byc HE, nawet jesli wyobrazalismy sobie inaczej."					);
					Doc_PrintLines	( nDocID,  0, "Sprawdz go. Mysle, ze mam racje."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "     Vatras"					);
					Doc_Show		( nDocID );
		
}; 

func void Use_Vatras2Saturas_FindRaven_Sealed ()
{   
	CreateInvItems (self, ItWr_Vatras2Saturas_FindRaven_opened,1);
	Vatras2Saturas_FindRaven_Open = TRUE;
	Use_Vatras2Saturas_FindRaven ();
}; 
INSTANCE ItWr_Vatras2Saturas_FindRaven_opened	(C_Item)
{
	name 				=	"Ambasada Otwarta";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Vatras2Saturas_FindRaven;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[2]				=   "Pismo teatralne dla Saturasów.";
};

//------------------------------------------------------------------------------------------
// Amulett des suchenden Irrlichts
//------------------------------------------------------------------------------------------
	INSTANCE  ItAm_Addon_WispDetector (C_Item)  
{
	name 			=	"ruda amulet";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_DexStrg;

	visual 			=	"ItAm_Mana_01.3ds";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_WEAKGLIMMER_BLUE"; 

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_WispDetector;
	on_unequip		=	UnEquip_WispDetector;

	description		=  "Amulet luku przeszukujacego Night Wisp Wisp.";

	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
	var int Equip_WispDetector_OneTime;

	FUNC VOID Equip_WispDetector()
	{
			if (Equip_WispDetector_OneTime == FALSE)
			{
				PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] = TRUE; //das erste Talent gibt's gratis
				WispSearching = WispSearch_NF;
				Equip_WispDetector_OneTime = TRUE;
			};
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);
			AI_Teleport (DetWsp, "TOT");
			Wld_SpawnNpcRange	(self,	Wisp_Detector,	1,	500);
 			Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  Wisp_Detector, Wisp_Detector, 0, 0, 0, FALSE );
			Snd_Play ("MFX_Transform_Cast");
			//Wld_PlayEffect("spellFX_SummonCreature_ORIGIN",  hero, hero, 0, 0, 0, FALSE );

			if (Mod_AlvarKristall == 2)
			{
				Mod_AlvarKristall = 3;

				Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  hero, hero, 0, 0, 0, FALSE );
				Wld_PlayEffect("spellFX_LIGHTSTAR_WHITE",  Mod_7559_OUT_Serra_EIS, Mod_7559_OUT_Serra_EIS, 0, 0, 0, FALSE );
			};
	};


	FUNC VOID UnEquip_WispDetector()
	{
			
			var C_NPC DetWsp;
			DetWsp = Hlp_GetNpc (Wisp_Detector);

			if (Npc_IsDead(DetWsp) == FALSE)
			{
				Snd_Play ("WSP_Dead_A1");
			};

			AI_Teleport (DetWsp, "TOT");
			B_RemoveNpc (DetWsp);
			AI_Teleport (DetWsp, "TOT");
	};

//Alligatorfleisch
	
INSTANCE ItFo_Addon_Krokofleisch_Mission (C_Item)
{	
	name 				=	"bagno szczury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	
	value 				=	Value_RawMeat;
	
	visual 				=	"ItFoMuttonRaw.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"MEAT";
	
	description			= 	name;
	TEXT[1]				=	"Zapachuje rodzaj ryby!";
	
	TEXT[5]				= 	NAME_Value;			
	COUNT[5]			= 	Value_RawMeat;

};

INSTANCE ItRi_Addon_MorgansRing_Mission (C_Item)
{	
	name 				=	"Pierscien Morgan's Ring";

	mainflag 			=	ITEM_KAT_MAGIC;
	flags 				=	ITEM_RING|ITEM_MISSION;
	
	value 				=	500;
	
	visual 				=	"ItRi_Prot_Total_02.3DS";
	material 			=	MAT_METAL;
	
	on_equip				=  	Equip_MorgansRing;
	on_unequip				= 	UnEquip_MorgansRing;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= name;
	
	
	TEXT[1]			= "Pierscien ozdobiony jest drobnymi runami.";
	TEXT[2]			= NAME_ADDON_BONUS_1H;
	COUNT[2]		= 10;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
		
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ				= INVCAM_Z_RING_STANDARD;
	INV_ROTX				= INVCAM_X_RING_STANDARD;

};

FUNC VOID Equip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, 10);
};

FUNC VOID UnEquip_MorgansRing()
{
	B_AddFightSkill (self, NPC_TALENT_1H, -10);
};


INSTANCE ItMi_Focus (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Pat (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Pat_01 (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_02 (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_03 (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_04 (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Pat_05 (C_Item)
{
	name 				=	"kamien wegielny";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;
};

INSTANCE ItMi_Focus_Troll (C_Item)
{
	name 				=	"Skoncentrowanie uwagi na wawozie Troll Gorge";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Bergfestung (C_Item)
{
	name 				=	"Skupienie uwagi na twierdzy górskiej";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Kloster (C_Item)
{
	name 				=	"Koncentracja na ruinach klasztoru";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Stonehenge (C_Item)
{
	name 				=	"Koncentracja pod kierunkiem Stonehenge' a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Meer (C_Item)
{
	name 				=	"Skupienie uwagi na klifie morskim";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_SHOW;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Fake (C_Item)
{
	name 				=	"Polozenie nacisku na klif morski (zbryzgi)";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};

INSTANCE ItMi_Focus_Moor (C_Item)
{
	name 				=	"skupiac sie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_Focus.3DS";
	material 			=	MAT_STONE;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_MANAPOTION"; 

	description			= 	name;

};
//---------------------------------------------------------------------------
//				Stahl Paket für Huno
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Steel_Paket(C_Item)
{
	name 				=	"Pakiet stalowy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	300;

	visual 				=	"ItMi_Packet.3ds";
	
	material 			=	 MAT_LEATHER;
	
	description			= 	name;
	TEXT[2]				= 	"Ten pakiet jest bardzo trudny.";
	TEXT[3]				=	"Zawiera gruba grude stali.";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value;

};

//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
instance ItWr_StonePlateCommon_Addon (C_Item)
{
	name 				=	"Tablica ceramiczna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlateCommon;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Szara, kamienna tablica";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};
//---------------------------------------------------------------------------
func void Use_StonePlateCommon ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Kasta wojowników wzbudzila gniew naszego Boga.");	
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "RHADEMES, nastepca QUAHODRON, zostal zakazany. Ale jego zla moc nadal dotarla do nas nawet z miejsca jego wygnania.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Bylismy bezsilni wobec niego.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "ADANOS Zorn spotkal sie z JHARKENDAREM!");	
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		/*
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Oksefd nodnf Kwe. Erfjkemvfj Hwoqmnyhan ckh Sebnejbuwd Weinfiwjf Ihwqpjrnn.");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "RHADEMES revfnbrebuiwe QUAHODRON ewohjfribwe wef Gkjsdhad smoelk. Ihdh Znshen Fjewheege Egdgsmkd Ygc slje smoelkor.");
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe Iuhdfb");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "ADANOS Ygc Egdgsmkd JHARKENDAR!");	
		*/
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};

instance ItWr_StonePlate_Ritualinsel01 (C_Item)
{
	name 				=	"Tablica ceramiczna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlate_Ritualinsel01;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Zawiera opis lokalizacji";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_StonePlate_Ritualinsel01 ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "... zakopalismy Trimedron na najwyzszym miejscu wyspy. Tam bedzie czuwal nad swietym miejscem na eony.... az pewnego dnia wyspa znika w glab oceanu. Kazdy intruz poczuje gniew straznika. Kazdy przyjaciel wie jednak, ze ma dla niego nastepujace slowa.... (utwardzony)");
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );

	if (Mod_GDG_RitualTafel01 == 0)
	{
		Mod_GDG_RitualTafel01 = 1;

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Widze, ze tekst odnosi sie do swietego miejsca. Mówi sie, ze znajduje sie on na najwyzszym punkcie wyspy, gdzie jest strzezony przez duch, który ma zaatakowac kazdego intruza. Tekst chce przejsc do pewnych konkretnych slów, które trzeba skierowac do niego, ale potem niestety jest zachlanny.");
	};
};

instance ItWr_StonePlate_Ritualinsel02 (C_Item)
{
	name 				=	"Tablica ceramiczna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_StonePlate_Ritualinsel02;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Zawiera wzór";
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_StonePlate_Ritualinsel02 ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Jesli kaplan chce uspokoic Ducha Swietego i wygrac swój sluch, musi wymówic slowa 'pod audmeu athuk'. Kiedy to nastapi, moze bez wahania podchodzic do ducha gwardiana i bez wahania wyrazac swoje obawy.");
	}
	else //Spieler beherrscht Sprache nicht
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );

	if (Mod_GDG_RitualTafel02 == 0)
	{
		Mod_GDG_RitualTafel02 = 1;

		B_LogEntry	(TOPIC_MOD_URIZIEL, "Pod audmeu athuk. Dzieki tym slowom moglem rozpoczac rozmowe z Duchem Swietym i wreszcie nauczyc sie postepowac.");
	};
};

//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
instance ItMi_SteinkreisTafel (C_Item)
{
	name 				=	"Tablica ceramiczna";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_SteinkreisTafel;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Ma magiczna aure";
	TEXT[3]				=	"Mozna stosowac tylko w kamiennych kregach.";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};
//---------------------------------------------------------------------------
func void Use_SteinkreisTafel ()
{
	if (Npc_GetDistToWP(hero, "WP_STEINKREIS_01") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_02") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_03") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_04") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_05") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_06") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_07") < 500)
	|| (Npc_GetDistToWP(hero, "WP_STEINKREIS_08") < 500)
	|| (Npc_GetDistToWP(hero, "OLDWORLDBERGE_50") < 500)
	|| (Npc_GetDistToWP(hero, "EIS_01") < 800)
	{
		if (Mod_TeleportSteinkreis_Funzt == 0)
		{
			Mod_TeleportSteinkreis_Funzt = 1;

			AI_Teleport	(hero, "WP_TO_EIS");
		}
		else
		{
			var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
			if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
			{	
				PLAYER_MOBSI_PRODUCTION	=	MOBSI_TeleportSteinkreisTafel;
				Ai_ProcessInfos (her);
			};
		};
	}
	else
	{
		Print	("Nie mozesz tego zrobic tutaj!");
	};
};

instance ItWr_VerwitterteSteintafel (C_Item)
{
	name 				=	"Stojak z kamienia naturalnego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_VerwitterteSteintafel;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

var int Mod_VerwitterteSteintafel;

func void Use_VerwitterteSteintafel ()
{
	var int nDocID;
		
	
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 	); 
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "(utwardzony, zwietrzaly) Owce.... (oslabiony, przetoczony, zwietrzaly, wietrzony) potezny magik i wojownik (wietrzony) wróg (utwardzony, zwietrzaly, wietrzyl, wietrzyl) wszystko zniszczone, zabite (utwardzony, zniszczony) nie prawie nikt (utwardzony), poza mna (zatarl, zwietrzaly)");	

		if (Mod_VerwitterteSteintafel == FALSE)
		{
			Mod_VerwitterteSteintafel = TRUE;

			B_GivePlayerXP	(150);
		};
	}
	else
	{
		nDocID = 	Doc_Create();								//DocManager 
		Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
		Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_02.TGA"  , 0 	); 
		/*
		Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
		Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Oksefd nodnf Kwe. Erfjkemvfj Hwoqmnyhan ckh Sebnejbuwd Weinfiwjf Ihwqpjrnn.");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "RHADEMES revfnbrebuiwe QUAHODRON ewohjfribwe wef Gkjsdhad smoelk. Ihdh Znshen Fjewheege Egdgsmkd Ygc slje smoelkor.");
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbfujbwe Iuhdfb");	
		Doc_PrintLine	( nDocID,  0, "");	
		Doc_PrintLines	( nDocID,  0, "ADANOS Ygc Egdgsmkd JHARKENDAR!");	
		*/
		B_Say (self, self, "$CANTREADTHIS");	
	};
		
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};

instance ItWr_BotschekTafel (C_Item)
{
	name 				=	"Magiczna plyta z kamienia Bocheka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	value_StonePlateCommon;

	visual 				=	"ItMi_StonePlate_Read_06.3ds"; 
	
	material 			=	 MAT_LEATHER;
	on_state[0]			=    Use_BotschekTafel;
	scemeName			=	"MAPSEALED";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[3]				=	"";
	
	TEXT[5]				= 	NAME_Value;		
	COUNT[5]			= 	value_StonePlateCommon;
};

func void Use_BotschekTafel ()
{
	B_GivePlayerXP	(200);

	hero.protection[PROT_EDGE] += 10000;
	hero.protection[PROT_BLUNT] += 10000;
	hero.protection[PROT_POINT] += 10000;
	hero.protection[PROT_FIRE] += 10;
	hero.protection[PROT_MAGIC] += 10;

	if (Gift < 3)
	{
		Gift += 1;
	};
	if (Krankheit < 4)
	{
		Krankheit += 1;
	};
};
//---------------------------------------------------------------------------
//				Die 5 Steintafeln  
//---------------------------------------------------------------------------

INSTANCE ItMi_Addon_Stone_01(C_Item) //Esteban und Thorus  //Joly:Die Banditen benutzen diese Steintafeln als Zahlungsmittel.
{
	name 				=	"Tablet do kamienia czerwonego";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_03.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_01;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	
	description			= 	name;
	TEXT[2]				= 	"Czerwona deska kamienna";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_01()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_02.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "My, trzej ostatni trzej przywódcy Soboru Pieciu, postawilismy pulapki w komorach swiatyni i ukrylismy wejscie, którego miecz juz nie widzial.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Erfjkemvfj Hwoqmnyhan ckh. Ygc slje asdkjhnead Gkjsdhad Uhndter rygilliambwe ewzbfujbwe Iuhdfb. Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_05(C_Item) //Valley - Totenwächter
{
	name 				=	"Zólta tabliczka do kamienia"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_04.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_05;
	scemeName			=	"MAP";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	description			= 	name;
	TEXT[2]				= 	"Zólta plyta kamienna";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_05()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_01.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "Ja, który sprzeciwialem sie decyzji tych trzech osób, zbudowalem pierwsza pulapke. I tylko ja znam prawa brame.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Egdgsmkd Ygc slje asdkjhnead Gkjsdhad Uhnd Esfjwedbwe ewzbffujbwe Iuhdfb. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 3		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_03(C_Item) //Valley - Priester
{
	name 				=	"Tablica z niebieskim kamieniem";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_05.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_03;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Niebieski tabletka z kamieniami";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_03()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_03.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "KHARDIMON wynalazl druga pulapke. I tylko ci, którzy podazaja sciezka swiatla do konca dotra do trzeciej komory.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Gkjsdhad Uhnd Esfjwedbwe ewzbfujbwe.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_PrintLines	( nDocID,  0, "");
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 4		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_04(C_Item)  //DAS DING AUS DEM SENAT /SUMPF  //Joly: Haus der Heiler
{
	name 				=	"Zielona tablica kamienna"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_01.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_04;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Zielona tabliczka z kamienia zielonego";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_04()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_04.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "Trzecia pulapka zostala zbudowana przez firme QUARHODRON i tylko on wie jak otworzyc brame.");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "Esfjwedbwe ewzbbfujbwe. Fjewheege QUARHODRON Ygc slje asdkjhnead. Sebnejbuwd Weinfiwjf Ihwqpjrnn. Gkjsdzad Uhnd.");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};
//---------------------------------------------------------------------------
//		Steintafel 5		
//---------------------------------------------------------------------------
INSTANCE ItMi_Addon_Stone_02(C_Item) //Bibliothek der Erbauer.
{
	name 				=	"Fioletowa plyta z kamienia"; 

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_02.3ds"; 
	
	material 			=	 MAT_STONE;
	on_state[0]			=    Use_Addon_Stone_02;
	scemeName			=	"MAP";
	
	inv_rotx			=  - 90;
	inv_roty			=   0;
	inv_rotz			=   0;
	
	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_WEAKGLIMMER";
	
	description			= 	name;
	TEXT[2]				= 	"Fioletowa tabliczka z kamienia";
	TEXT[3]				=	"";
};
//---------------------------------------------------------------------------
FUNC VOID Use_Addon_Stone_02()
{
	var int nDocID;
		
	nDocID = 	Doc_Create();								//DocManager 
	Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
	Doc_SetPage 	( nDocID,  0, "Adanos_Stoneplate_05.TGA"  , 0 	); 
	Doc_SetFont 	( nDocID, -1, FONT_Book    			); 	// -1 -> all pages 
	Doc_SetMargins	( nDocID, -1, 70, 50, 90, 50, 1   	);  //  0 -> margins are in pixels
	Doc_PrintLine	( nDocID,  0, "");
	if (PLAYER_TALENT_FOREIGNLANGUAGE[LANGUAGE_1] == TRUE)
	{
		Doc_PrintLines	( nDocID,  0, "Równiez firma QUARHODRON z pomoca firmy KHARDIMON uszczelnila brame zewnetrzna do swiatyni. Zaden z nich nie przetrwal rytualu.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Bylem jedyna osoba, która opowiedziala historie.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Mam nadzieje, ze RHADEMES gnije w swiatyni na zawsze!");
	}
	else
	{
		Doc_PrintLines	( nDocID,  0, "QUARHODRON Ygc slje asdkjhnead. KHARDIMON Weinfiwjf Ihwqpjrnn. Erfjkemvfj Hwoqmnyhan ckh. Fjewheege Egdgsmkd Esfjwedbwe jakodkjhnead. Gkjsdzad Uhnd.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Revfnbrebuiwe ewohjfribwe wef. Sebnejbuwd Weinfiwjf Ihwqpjrnn.");
		Doc_PrintLine	( nDocID,  0, "");
		Doc_PrintLines	( nDocID,  0, "Erfjkemvfj RHADEMES Fjewheege Egdgsmkd!");
		B_Say (self, self, "$CANTREADTHIS");
	};
	Doc_PrintLine	( nDocID,  0, "");
	Doc_Show		( nDocID );
};




//*******************************************
//		Der goldene Kompass
//*******************************************

INSTANCE ItMI_Addon_Kompass_Mis (C_Item)
{
	name 				=	"Zloty Kompas";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	500;

	visual 				=	"ItMi_Compass_01.3DS";
	material 			=	MAT_STONE;

	description			= 	name;

};

//*******************************************
//			Morgans Schatz
//*******************************************

INSTANCE ItSE_Addon_FrancisChest	(C_Item)
{
	name 				=	"skrzynia skarbców";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	200;

	visual 				=	"ItMi_GoldChest.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   FrancisChest;
	
	description			= 	"Skrzynia skarbników";
	
	TEXT[0]				= 	"Pudelko dosc ciezkie.";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[4]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID FrancisChest ()
{
		
		CreateInvItems (hero,ItMi_GoldChest,1);
		CreateInvItems (hero,ItMw_FrancisDagger_Mis,1);
		CreateInvItems (hero,Itmi_Gold,153);
		CreateInvItems (hero,ItMi_GoldCup,1);
		CreateInvItems (hero,ItMi_SilverNecklace,1);
		CreateInvItems (hero,ITWR_Addon_FrancisAbrechnung_Mis,1);
		
		Snd_Play ("Geldbeutel");
		Print ("Pobierz kilka rzeczy!");
};

INSTANCE ITWR_Addon_FrancisAbrechnung_Mis (C_ITEM)
{
	name 					=	"sianoksiazka";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_1.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	NAME;
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseFrancisAbrechnung_Mis;
};

	FUNC VOID UseFrancisAbrechnung_Mis()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Handlowcy"	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Suma nominalna ogólem: 14560 zloty");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Zespól: 9840:9840 ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Udzial wlasny: 2220");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Przedsiebiorstwo handlu detalicznego 'Miriam'."	);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "Suma nosnosci ogólem: 4890 zloty");
					Doc_PrintLine	( nDocID,  0, "-----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Zespól: 2390:2390 ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, " ");
					Doc_PrintLine	( nDocID,  0, "----------------------"	);
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Udzial wlasny: 1000 ");
					Doc_PrintLine	( nDocID,  0, "");
	

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
 					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Statek handlowiec 'Nico"	);
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Suma ogólem: 9970 ");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Zespól: 5610:5610 ");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Udzial wlasny: 1860 %.");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Handlowcy 'Marii Mariackiej"	);
					Doc_PrintLine	( nDocID,  1, ""					);
					Doc_PrintLine	( nDocID,  1, "Suma nosnosci ogólem: 7851 zloto");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Zespól: 4400:4400 ");
					Doc_PrintLine	( nDocID,  1, " ");
					Doc_PrintLine	( nDocID,  1, " ");
					Doc_PrintLine	( nDocID,  1, "----------------------"	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLine	( nDocID,  1, "Udzial wlasny: 1701 ");
					Doc_PrintLine	( nDocID,  1, "");
					
					Francis_HasProof = TRUE;
					
					Doc_Show		( nDocID );
					
					B_Say (self, self, "$ADDON_THISLITTLEBASTARD");	   

};

//-----------------------------------------------------------------------
//		Gregs Logbuch
//-----------------------------------------------------------------------

INSTANCE ITWR_Addon_GregsLogbuch_Mis (C_ITEM)
{
	name 					=	"protokól";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	0;

	value 					=	100;

	visual 					=	"NewBook_V1_2.3DS";  					//BUCH VARIATIONEN: ItWr_Book_01.3DS , ItWr_Book_02_01.3DS, ItWr_Book_02_02.3DS, ItWr_Book_02_03.3DS, ItWr_Book_02_04.3DS, ItWr_Book_02_05.3DS
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	description				= 	"Dziennik polowowy Greg' a";
	TEXT[5]					= 	NAME_Value;
	COUNT[5]				= 	value;
	on_state[0]				=	UseGregsLogbuch;
};

	FUNC VOID UseGregsLogbuch()
	{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;								// DocManager
					Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

					Doc_SetPage 	( nDocID,  0, "Book_Brown_L.tga"  , 0 	); // VARIATIONEN: BOOK_BROWN_L.tga , BOOK_MAGE_L.tga , BOOK_RED_L.tga
					Doc_SetPage 	( nDocID,  1, "Book_Brown_R.tga" , 0	); // VARIATIONEN: BOOK_BROWN_R.tga , BOOK_MAGE_R.tga , BOOK_RED_R.tga

					//1.Seite

 					Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  0, "Nie widze juz tej plazy. Piasek wszedzie. Nie moge juz dobrze spac, bo wszedzie swedzi. Nadszedl czas, aby Raven wypchnal zloto dla wiezniów i wyprowadzil nas z powrotem na morze. Przypuszczam, ze trzeba bedzie mówic powazne slowo z pompatycznym kurczakiem.");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Co to robi ten asshole? Pozbawilam sie przy bramie jego smierdzacych popleczników. Pozna mnie! Sama przerabiam jego pochlebcza Krew w pokarm dla ryb."	);
					Doc_PrintLines	( nDocID,  0, "Jesli nie oplaci sie szybko, to ja jestem gonna wije sie z róznych stron. ");
					

					//2.Seite
					Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
					Doc_SetFont 	( nDocID,  1, FONT_Book	   			); 	// -1 -> all pages
					Doc_PrintLines	( nDocID,  1, "Bandyci zaczynaja sie zwlekac. Jeszcze nie zaplacili za ostatnia przesylke. Po prostu nie mamy wystarczajacych informacji. Musze sie dowiedziec, co robi tutaj Raven."	);
					Doc_PrintLine	( nDocID,  1, "");
					Doc_PrintLines	( nDocID,  1, "Zabiore wiekszosc zalogi na lad i doprowadze rude do bezpieczenstwa. Franciszek pozostaje tu z para ludzi i fortyfikuje obóz. "	);
					Doc_PrintLines	( nDocID,  1, "Aby miec pewnosc, ze czas nie minie niewykorzystany, oddalem Kosciom zbroje. Wkreci sie on do obozu bandytów i dowie sie, co Raven robi.");
					
					Greg_GaveArmorToBones = TRUE;
					
					Doc_Show		( nDocID );
};
//-----------------------------------------------------------------------
//Bloodwyns Truhenschlüssel - Schwere Garderüstung
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Bloodwyn_01 (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kluczowy element krwiodawstwa";
	
	TEXT[2]				=	"Pasuje do klatki piersiowej";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//Heiler Truhenschlüssel - 
//-----------------------------------------------------------------------
INSTANCE ITKE_Addon_Heiler (C_Item)
{
	name 				=	NAME_Key;

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	Value_Key_01;

	visual 				=	"ItKe_Key_02.3ds";
	material 			=	MAT_METAL;

	description			= 	"Kluczek straznika kamiennego";
	
	TEXT[2]				=	"Pasuje do klatki piersiowej";
	TEXT[3]				=   "W dziwnym starym budynku w bagnie";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};




INSTANCE  ItMi_TempelTorKey (C_ITEM)
{	
	name 				=	"Tabletka z kamienia kwartonowego";
	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION|ITEM_MULTI;

	value 				=	0;

	visual 				=	"ItMi_StonePlate_Read_06.3ds";	 
	material 			=	MAT_STONE;
	scemeName			=	"MAP";
	on_state[0]			=	Use_TempelTorKey;

	TEXT[2]		= "Klucz do swiatyni Adano.";

};
func void Use_TempelTorKey ()
{	
	var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "Maya_Stoneplate_03.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					//Doc_PrintLines	( nDocID,  0, "  Eligam Shameris"					); 
				
					Doc_PrintLine	( nDocID,  0, "  Jhedra Akhantar"					); 
 
 					Doc_Show		( nDocID ); 
};
//-----------------------------------------------------------------------
//	Bloodwyns Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_Addon_Bloodwyn_Kopf (C_Item)
{
	name 				=	"Hakowana glowa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Bloodwyns Kopf
//-----------------------------------------------------------------------
INSTANCE ItAt_KhorgorKopf (C_Item)
{
	name 				=	"Glowa glowyhorgora";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Nicks Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_NicksKopf (C_Item)
{
	name 				=	"Glowa Nicka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Iwans Kopf
//-----------------------------------------------------------------------
INSTANCE ItAt_IwansKopf (C_Item)
{
	name 				=	"Glowa Iwana";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//-----------------------------------------------------------------------
//	Iwans Kopf
//-----------------------------------------------------------------------
INSTANCE ItMi_AkahaschKopf (C_Item)
{
	name 				=	"Glowa Akazy";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Head_Bloodwyn_01.3ds";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[2]				=	"";
	TEXT[3]				=   "";
	
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
//------------------------------------------------------------------------

instance ItWR_Addon_TreasureMap (C_Item)
{
	name 		= "mapa skarbów"; 

	mainflag 	= ITEM_KAT_DOCS;
	flags 		= ITEM_MISSION|ITEM_MULTI;

	value 		= 250;

	visual 		= "ItWr_Map_01.3DS";
	material 	= MAT_LEATHER;

	scemeName	= "MAP";
	on_state[0]	= Use_TreasureMap;

	description	= name;
	TEXT[0]		= "";
	TEXT[1]		= "Na mapie zaznaczone sa niektóre miejsca.";
	TEXT[5]		= NAME_Value;
	COUNT[5]	= value;
};

	func void Use_TreasureMap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Addon_TreasureMap);
		};

		var int Document;
		Document =	Doc_CreateMap		();
					Doc_SetPages		(Document, 1);
					Doc_SetPage 		(Document, 0, "Map_AddonWorld_Treasures.tga", TRUE);  // TRUE = scale to fullscreen
				    Doc_Show			(Document);
	};


//------------------------------------------------------------------------

INSTANCE ItMi_Addon_GregsTreasureBottle_MIS	(C_Item)
{
	name 				=	"informacja w butelce";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItFo_Water.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_GregsBottle;
	scemeName			=	"MAPSEALED";
	description			= 	name;
	TEXT[2]				=   "W butelce znajduje sie kartka papieru.";

};
func void Use_GregsBottle ()
{
	B_PlayerFindItem (ItWR_Addon_TreasureMap,1);
};

/******************************************************************************************/
INSTANCE ItMi_ErolsKelch (C_Item)
{
	name 				=	"Zadrapana srebrna miska";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	125;

	visual 				=	"ItMi_SilverChalice.3DS";
	material 			=	MAT_METAL;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= 	value;
};
