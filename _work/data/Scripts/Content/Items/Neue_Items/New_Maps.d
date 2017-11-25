INSTANCE ItWrFocimap(C_Item)
{	
	name 					=	"Mapa ogniskowa Satura";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	15;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseFocimap;

	description				= name;
	TEXT[0]					= "Szczyty pentagramu oznaczaja ";
	TEXT[1]					= "Polozenia wszystkich pieciu kamieni ogniskujacych, które znaleziono w tamtym czasie";
	TEXT[2]					= "stworzenie bariery magicznej";
	TEXT[3]					= "zostaly uzyte. Mapa jest stara i stara";
	TEXT[4]					= "Kamienie moglyby w miedzyczasie byc";
	TEXT[5]					= "lezac";
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

	description			= "Szkic swiatyni";
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
	name 					=	"Mapa kolonii";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseWorldmap;

	description				= name;
	TEXT[0]					= "Niestety nie ma na niej niestety duzego obszaru.";
	TEXT[1]					= "na poludniowym zachodzie.";
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
	name 					=	"Mapa kolonii";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseEremitenCamp;

	description				= name;
	TEXT[0]					= "Obóz druidów jest oznaczony";
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
	name 					=	"Mapa kolonii";
	
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;

	value 					=	50;

	visual 					=	"ItWr_Map_01.3DS";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";	
	on_state[0]				=	UseWorldmapZufluchten;

	description				= name;
	TEXT[0]					= "Alissandro przyciagnelo schroniska";
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

	description				= "Przeglad Starego magazynu";
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

	description				= "Przeglad Nowy magazyn";
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

	description				= "Przegladowy obóz zapasowy";
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

	description				= "Mapa kolonii (dodana)";
	TEXT[0]					= "Oryginalny otchlan Orka Szamana ma";
	TEXT[1]					= "Orcish zaznaczony obszar!";
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

	description				= "Na mapie zaznaczono zakreslone miejsca.";
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

	description				= "Blogoslawione miejsca sa zaznaczone na mapie.";
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

	description				= "Na mapie znajduja sie dwa krzyze";
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

	description				= "Na mapie znajduja sie dwa krzyze";
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
