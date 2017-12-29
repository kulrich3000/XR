INSTANCE ItWrFocimap(C_Item)
{	
	name 					=	"Focus map of Saturas";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	15;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseFocimap;

	description				= name;
	TEXT[0]					= "The tips of the pentagram ";
	TEXT[1]					= "reveal the locations of all five";
	TEXT[2]					= "focus stones which were used to create";
	TEXT[3]					= "the Magic Barrier. The map is old";
	TEXT[4]					= "and the stones might have been moved to";
	TEXT[5]					= "other places since.";
};

FUNC VOID UseFocimap()
{
	if (Npc_IsPlayer(self))
	{
		B_SetPlayerMap(ItWrFocimap);
	};

	var int Document;
	Document =	Doc_CreateMap		();
		Doc_SetPages		(Document, 1);
		Doc_SetPage 		(Document, 0, "Map_World_Foki.tga", TRUE);  // TRUE = scale to fullscreen
		Doc_Show			(Document);
};

INSTANCE ItWrTemplemap(C_Item)
{
	name 				=	"menu";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	30;

	visual 				=	"ItWr_Map_01.3DS";
	material 			=	MAT_LEATHER;

	scemeName			=	"MAP";
	on_state[0]			=	UseTemplemap;

	description			= "Sketch of the Temple";
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

	FUNC VOID UseTemplemap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrTemplemap);
		};

	var int nDocID;

		nDocID = 	Doc_CreateMap	()			  ;							// DocManager
					Doc_SetPages	( nDocID, 1 );
					Doc_SetPage 	( nDocID, 0, "Map_Temple.tga", 1	);  //  1 -> DO NOT SCALE
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWrWorldmap(C_Item)
{	
	name 					=	"Map of the colony";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseWorldmap;

	description				= name;
	TEXT[0]					= "Unfortunately, a big territory in the";
	TEXT[1]					= "southwest is missing.";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseWorldmap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrWorldmap);
		};

	var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_World.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
	};

INSTANCE ItWr_EremitenCamp(C_Item)
{	
	name 					=	"Map of the colony";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseEremitenCamp;

	description				= name;
	TEXT[0]					= "The camp of the druids is marked";
	TEXT[1]					= "";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseEremitenCamp()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_EremitenCamp);
		};

	var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_World_Eremitencamp.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
	};

INSTANCE ItWrWorldmapZufluchten(C_Item)
{	
	name 					=	"Map of the colony";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseWorldmapZufluchten;

	description				= name;
	TEXT[0]					= "Alissandro has drawn the shelters";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseWorldmapZufluchten()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrWorldmapZufluchten);
		};

	var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_World_Zufluchten.tga", 	1	);  //  1 -> DO NOT SCALE 

				Doc_Show		( nDocID 	);
	};

INSTANCE ItWrOCmap(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	40;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseOCmap;

	description				= "Overview Old Camp";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseOCmap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrOCmap);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_OldCamp.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWrNCmap(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	40;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseNCmap;

	description				= "Overview New Camp";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseNCmap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrNCmap);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_NewCamp.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWrPSImap(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	40;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UsePSImap;

	description				= "Overview Swamp Camp";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UsePSImap()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrPSImap);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_PSICamp.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWrWorldmap_Orc(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	250;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseWorldmap_Orc;

	description				= "Map of the Colony (supplemented)";
	TEXT[0]					= "Ur-Shak, the Orc shaman, has sketched in";
	TEXT[1]					= "the Orc territory!";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseWorldmap_Orc()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWrWorldmap_Orc);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_World_Orc.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWr_Map_Perlenkram(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	250;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseMap_Perlenkram;

	description				= "There are cursed places marked on the map";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseMap_Perlenkram()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Perlenkram);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_NewWorld_Perlen.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWr_Map_Perlenkram_02(C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	250;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseMap_Perlenkram_02;

	description				= "Blessed places are marked on the map";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseMap_Perlenkram_02()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Perlenkram_02);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_NewWorld_Perlen_02.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWr_Map_Wettstreit_01 (C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	250;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseMap_Wettstreit_01;

	description				= "There are two crosses on the map";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseMap_Wettstreit_01()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Wettstreit_01);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_MT_Wettstreit_01.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};

INSTANCE ItWr_Map_Wettstreit_02 (C_Item)
{	
	name 					=	"menu";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	250;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseMap_Wettstreit_02;

	description				= "There are two crosses on the map";
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

	FUNC VOID UseMap_Wettstreit_02()
	{
		if (Npc_IsPlayer(self))
		{
			B_SetPlayerMap(ItWr_Map_Wettstreit_02);
		};

		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_MT_Wettstreit_02.tga", 	1	);  //  1 -> DO NOT SCALE 
					Doc_Show		( nDocID 	);
	};
