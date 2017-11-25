//Amulette//

// Schutzamulette
 
const int Value_Am_ProtFire 		= 600;	const int Am_ProtFire		= 10; 
const int Value_Am_ProtEdge 		= 800;	const int Am_ProtEdge		= 10000;
const int Value_Am_ProtMage 		= 700;	const int Am_ProtMage		= 10;
const int Value_Am_ProtPoint 		= 500;	const int Am_ProtPoint		= 10000;

const int Value_Am_ProtTotal 		= 1000;	const int Am_TProtFire		= 8; // Schutzamulett Total
											const int AM_TProtEdge		= 8000;
											const int Am_TProtMage		= 8;
											const int Am_TProtPoint		= 8000;
// Andere Amulette

const int Value_Am_Dex 				= 1000;	const int Am_Dex			= 10; 
const int Value_Am_Mana 			= 1000;	const int Am_Mana			= 10; //ITAM_HP
const int Value_Am_Strg 			= 1000;	const int Am_Strg			= 10; 
const int Value_Am_Hp 				= 400;	const int Am_Hp				= 40; 

const int Value_Am_HpMana 			= 1300;	const int Am_HpMana_Hp		= 30; // Mana + Hp Amulett
											const int Am_HpMana_Mana	= 10; 

const int Value_Am_DexStrg 			= 1600;	const int Am_DexStrg_Dex	= 8; // Strg + Dex Amulett
											const int Am_DexStrg_Strg	= 8; 
/******************************************************************************************/
INSTANCE  ItAm_Prot_Fire_01(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Prot_Fire_01;
	on_unequip		=	UnEquip_ItAm_Prot_Fire_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Fire";
	
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= Am_ProtFire;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Prot_Fire_01()
	{
	 	self.protection [PROT_FIRE] += Am_ProtFire;
	};


	FUNC VOID UnEquip_ItAm_Prot_Fire_01()
	{
		self.protection [PROT_FIRE] -= Am_ProtFire;
	};

INSTANCE  ItAm_Hast(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	600;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Hast;
	on_unequip		=	UnEquip_ItAm_Hast;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Haste";
	
	TEXT[1]			= "Speeds up the carrier";

	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Hast()
	{
	 	Mdl_ApplyOverlayMds (self, "HUMANS_SPRINT.MDS");
	};


	FUNC VOID UnEquip_ItAm_Hast()
	{
	 	Mdl_RemoveOverlayMds (self, "HUMANS_SPRINT.MDS");
	};

INSTANCE  ItAm_HalskettederEhre(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_HalskettederEhre;
	on_unequip		=	UnEquip_ItAm_HalskettederEhre;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Necklace of Honor";

	TEXT[1]			= "2% experience";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_HalskettederEhre()
	{
	 	Mod_HalsketteDerEhre = 1;
	};


	FUNC VOID UnEquip_ItAm_HalskettederEhre()
	{
		Mod_HalsketteDerEhre = 0;
	};

INSTANCE  ItAm_LangerAtem(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_LangerAtem;
	on_unequip		=	UnEquip_ItAm_LangerAtem;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet' Long Breath'.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_LangerAtem()
	{
	 	Mod_Amulett_LangerAtem = 1;

		var oCNpc her;
		her = Hlp_GetNpc (hero);
		var int totaldivingtime;
		totaldivingtime = truncf(her.divetime)+30000;
		her.divetime = mkf(totaldivingtime);
	};


	FUNC VOID UnEquip_ItAm_LangerAtem()
	{
		Mod_Amulett_LangerAtem = 0;

		var oCNpc her;
		her = Hlp_GetNpc (hero);
		var int totaldivingtime;
		totaldivingtime = truncf(her.divetime)-30000;
		her.divetime = mkf(totaldivingtime);
	};

INSTANCE  ItAm_Mirza(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Mirza;
	on_unequip		=	UnEquip_ItAm_Mirza;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Mirza";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Mirza()
	{
	};


	FUNC VOID UnEquip_ItAm_Mirza()
	{
	};

INSTANCE  ItAm_Pirateninsel (C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Pirateninsel;
	on_unequip		=	UnEquip_ItAm_Pirateninsel;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet from the gallery";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Pirateninsel()
	{
	};


	FUNC VOID UnEquip_ItAm_Pirateninsel()
	{
	};

INSTANCE  ItAm_Geisteramulett(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Geisteramulett;
	on_unequip		=	UnEquip_ItAm_Geisteramulett;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Jim";

	TEXT[1]			= "Drives out ghosts";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Geisteramulett()
	{
	};


	FUNC VOID UnEquip_ItAm_Geisteramulett()
	{
	};

INSTANCE  ItAm_GardeInnos(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "ancient amulet";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};
INSTANCE  ItAm_CyrcoMinenAmulett(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_CyrcoMinenAmulett;
	on_unequip		=	UnEquip_ItAm_CyrcoMinenAmulett;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Antimagic Charm";
	
	TEXT[2]			= "shows magically hidden things";
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_CyrcoMinenAmulett()
	{
	 	Mod_JG_CyrcoAmulett = 1;
	};


	FUNC VOID UnEquip_ItAm_CyrcoMinenAmulett()
	{
	 	Mod_JG_CyrcoAmulett = 0;
	};

INSTANCE  Pala_Feuer_Amulett(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Fire Magicians";
	
	TEXT[2]			= NAME_Prot_Fire;
	COUNT[2]		= Am_ProtFire;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

INSTANCE  ItAm_MegaAmulett(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "special amulet";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

INSTANCE  ItAm_MegaAmulett2(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 
	on_equip		=	Equip_MegaAmulett;
	on_unequip		=	UnEquip_MegaAmulett;

	description		= "Amulet of the extension";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_MegaAmulett()
	{
		Mod_Extension_Angelegt = 1;
	};


	FUNC VOID UnEquip_MegaAmulett()
	{
		Mod_Extension_Angelegt = 0;
	};

INSTANCE  ItAm_TojansAmulett(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_TojansAmulett;
	on_unequip		=	UnEquip_TojansAmulett;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Tojan's Charm";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_TojansAmulett()
	{
		if (Mod_FM_Foki == 6)
		{
	 		B_StartOtherRoutine	(Mod_1746_KDF_Tojan_PAT, "FALLE");
			AI_Teleport	(Mod_1746_KDF_Tojan_PAT, "WP_PAT_WEG_202");

			Mod_FM_Foki = 7;
		};
	};


	FUNC VOID UnEquip_TojansAmulett()
	{
		
	};
/******************************************************************************************/
	INSTANCE  ItAm_Prot_Edge_01(C_Item) // Waffen Schutz Amulett
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtEdge;

	visual 			=	"ItAm_Prot_Edge_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Prot_Edge_01;
	on_unequip		=	UnEquip_ItAm_Prot_Edge_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Harness Amulet";
	
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= Am_ProtEdge/1000;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Prot_Edge_01()
	{
		self.protection [PROT_EDGE] += Am_ProtEdge;
		self.protection [PROT_BLUNT] += Am_ProtEdge;
	};


	FUNC VOID UnEquip_ItAm_Prot_Edge_01()
	{
		self.protection [PROT_EDGE] -= Am_ProtEdge;
		self.protection [PROT_BLUNT] -= Am_ProtEdge;
	};
/******************************************************************************************/
INSTANCE  ItAm_Nek (C_Item) // Waffen Schutz Amulett
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtEdge;

	visual 			=	"ItAm_Prot_Edge_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Nek;
	on_unequip		=	UnEquip_ItAm_Nek;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Wood Skin";
	
	TEXT[1]			= "The name Nek is engraved on the back.";
	
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= 5;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Nek()
	{
		self.protection [PROT_EDGE] += 5000;
		self.protection [PROT_BLUNT] += 5000;
	};


	FUNC VOID UnEquip_ItAm_Nek()
	{
		self.protection [PROT_EDGE] -= 5000;
		self.protection [PROT_BLUNT] -= 5000;
	};
/******************************************************************************************/
INSTANCE  ItAm_Dam (C_Item) // Waffen Schutz Amulett
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	Value_Am_ProtEdge;

	visual 			=	"ItAm_Prot_Edge_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Dam;
	on_unequip		=	UnEquip_ItAm_Dam;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Dam Charm";
	
	TEXT[1]			= "The name Dam is engraved on the back.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Dam()
	{
	};


	FUNC VOID UnEquip_ItAm_Dam()
	{
	};

/******************************************************************************************/
	INSTANCE  ItAm_Prot_Point_01(C_ITEM) // Geschoss Schutz Amulett 
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtPoint;

	visual 			=	"ItAm_Prot_Point_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Prot_Point_01;
	on_unequip		=	UnEquip_ItAm_Prot_Point_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Oak Skin";
	
	TEXT[2]			= NAME_Prot_Point;
	COUNT[2]		= Am_ProtPoint/1000;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;

};

	FUNC VOID Equip_ItAm_Prot_Point_01()
	{
		self.protection [PROT_POINT] += Am_ProtPoint;
	};


	FUNC VOID UnEquip_ItAm_Prot_Point_01()
	{
		self.protection [PROT_POINT] -= Am_ProtPoint;
	};

/******************************************************************************************/
	INSTANCE  ItAm_Prot_Mage_01(C_ITEM) // Magie Schutz Amulett von Serpentes an KDF f�r alle Minenanteile (Mission -> MIS_Serpentes_MinenAnteil_KDF == LOG_SUCCESS)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtMage;

	visual 			=	"ItAm_Prot_Mage_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Prot_Mage_01;
	on_unequip		=	UnEquip_ItAm_Prot_Mage_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Spiritual Power";
	
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= Am_ProtMage;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Prot_Mage_01()
	{
		self.protection [PROT_MAGIC] += Am_ProtMage;
	};

	FUNC VOID UnEquip_ItAm_Prot_Mage_01()
	{
		self.protection [PROT_MAGIC] -= Am_ProtMage;
	};

/******************************************************************************************/

	INSTANCE  ItAm_Prot_Total_01(C_ITEM)//ItAm_AmulettOfDeath_Mis (alle + 30)  MAGIER_EXKLUSIV_AMULETT f�r den Endkampf des KDFs  (Kapitel 5)

{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtTotal;

	visual 			=	"ItAm_Prot_Total_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_Value_Am_ProtTotal;
	on_unequip		=	UnEquip_Value_Am_ProtTotal;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Ore Skin";
	
	TEXT[1]			= NAME_Prot_Fire;
	COUNT[1]		= AM_TProtFire;
	TEXT[2]			= NAME_Prot_Magic;
	COUNT[2]		= AM_TProtMage;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= AM_TProtPoint/1000;
	TEXT[4]			= NAME_Prot_Edge;
	COUNT[4]		= AM_TProtEdge/1000;
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;

};

	FUNC VOID Equip_Value_Am_ProtTotal()
	{
		self.protection [PROT_EDGE]   += AM_TProtEdge;
		self.protection [PROT_BLUNT]  += AM_TProtEdge;
		self.protection [PROT_POINT]  += AM_TProtPoint;
		self.protection [PROT_FIRE]   += AM_TProtFire;
		self.protection [PROT_MAGIC]  += AM_TProtMage;

	};

	FUNC VOID UnEquip_Value_Am_ProtTotal()
	{
		self.protection [PROT_EDGE]   -=  AM_TProtEdge;
		self.protection [PROT_BLUNT]  -=  AM_TProtEdge;
		self.protection [PROT_POINT]  -=  AM_TProtPoint;
		self.protection [PROT_FIRE]   -=  AM_TProtFire;
		self.protection [PROT_MAGIC]  -=  AM_TProtMage;
	};

/******************************************************************************************/
	INSTANCE  ItAm_Dex_01(C_Item)	//Joly: von Dar an KDF und DJG vergeben ab Kapitel 4 \ Xardas_Secret-area f�r PAL	(Kapitel 3)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_Dex;

	visual 			=	"ItAm_Dex_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Dex_01;
	on_unequip		=	UnEquip_ItAm_Dex_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Agility";
	
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= Am_Dex;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Dex_01()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,+ Am_Dex);
	};


	FUNC VOID UnEquip_ItAm_Dex_01()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,- Am_Dex);
	};

/******************************************************************************************/

	INSTANCE  ItAm_Strg_01(C_Item) //in LOCkpick Truhe Fingers
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_Strg;

	visual 			=	"ItAm_Strg_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Strg_01;
	on_unequip		=	UnEquip_ItAm_Strg_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Strength";
	
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= Am_Strg;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Strg_01()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,+ Am_Strg);
	};

	FUNC VOID UnEquip_ItAm_Strg_01()
	{
		Npc_ChangeAttribute(self,ATR_STRENGTH,- Am_Strg);
	};

/******************************************************************************************/

	INSTANCE  ItAm_Hp_01(C_Item)  //von Bennet dem Schmied an den PAL und dem KDF        (Kapitel 3)\Xardas_Secret-area f�r DJG	(Kapitel 3)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_Hp;

	visual 			=	"ItAm_Hp_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Hp_01;
	on_unequip		=	UnEquip_ItAm_Hp_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Life";

	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= Am_Hp;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Hp_01()
	{
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Am_Hp;
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Am_Hp;

		self.aivar[AIV_Damage] += Am_Hp;
	};


	FUNC VOID UnEquip_ItAm_Hp_01()
	{
		self.attribute [ATR_HITPOINTS_MAX] = self.attribute [ATR_HITPOINTS_MAX] -Am_Hp;

		if (self.attribute[ATR_HITPOINTS] > (Am_Hp + 2))
		{
			self.attribute [ATR_HITPOINTS] = self.attribute [ATR_HITPOINTS] -Am_Hp;

			self.aivar[AIV_Damage] -= Am_Hp;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;

			self.aivar[AIV_Damage] = 2;
		};
	};

/******************************************************************************************/
	INSTANCE  ItAm_Mana_01(C_Item) //in der OW von Angar an alle SC Gilden!  (Kapitel 4)

{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_Mana;

	visual 			=	"ItAm_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Mana_01;
	on_unequip		=	UnEquip_ItAm_Mana_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of Magic";
	
	TEXT[2]			= NAME_Bonus_Mana;
	COUNT[2]		= Am_Mana;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Mana_01()
	{
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_Mana;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_Mana;
	};

	FUNC VOID UnEquip_ItAm_Mana_01 ()
	{
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_Mana;
		if (self.attribute[ATR_MANA] > (Am_Mana))
		{
			self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_Mana;
		}
		else
		{
			self.attribute[ATR_MANA] = 0;
		};	
		
	};

/******************************************************************************************/
	INSTANCE  ItAm_Dex_Strg_01(C_Item)	// wird dem PAL von Ulthar �berreicht f�r die Reinigung der Schreine Kapitel 3\
{
	name 			=	"Amulet of Might";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_DexStrg;

	visual 			=	"ItAm_Dex_Strg_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Dex_Strg_01;
	on_unequip		=	UnEquip_ItAm_Dex_Strg_01;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulett der Macht";
	
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= Am_DexStrg_Dex;
	TEXT[3] 		= NAME_Bonus_Str;
	COUNT[3]		= Am_DexStrg_Strg;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Dex_Strg_01()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,+ Am_DexStrg_Dex );
		Npc_ChangeAttribute(self,ATR_STRENGTH,+ Am_DexStrg_Strg );
	};


	FUNC VOID UnEquip_ItAm_Dex_Strg_01 ()
	{
		Npc_ChangeAttribute(self,ATR_DEXTERITY,-Am_DexStrg_Dex );
		Npc_ChangeAttribute(self,ATR_STRENGTH,-Am_DexStrg_Strg );
	};

/******************************************************************************************/
	INSTANCE  ItAm_Hp_Mana_01 (C_Item)	//Xardas_Secret-area f�r KDF	(Kapitel 3)
{
	name 			=	"Amulet of Enlightenment";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_HpMana;

	visual 			=	"ItAm_Hp_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Hp_Mana_01 ;
	on_unequip		=	UnEquip_ItAm_Hp_Mana_01 ;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulett der Erleuchtung";
	
	TEXT[2]			= NAME_Bonus_HP;
	COUNT[2]		= Am_HpMana_Hp;
	
	TEXT[3] 		= NAME_Bonus_Mana;
	COUNT[3]		= Am_HpMana_Mana;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

	FUNC VOID Equip_ItAm_Hp_Mana_01 ()
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] + Am_HpMana_Hp;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] + Am_HpMana_Hp;
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA] + Am_HpMana_Mana;
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] + Am_HpMana_Mana;

		self.aivar[AIV_Damage] += Am_HpMana_Hp;
		
	};


	FUNC VOID UnEquip_ItAm_Hp_Mana_01 ()
	{
		
		//self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_HpMana_Mana;
	
		self.attribute[ATR_MANA_MAX] = self.attribute[ATR_MANA_MAX] - Am_HpMana_Mana;
		self.attribute[ATR_HITPOINTS_MAX] = self.attribute[ATR_HITPOINTS_MAX] - Am_HpMana_Hp;
		
		if (self.attribute[ATR_HITPOINTS] > Am_HpMana_Hp+1)
		{
			self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS] - Am_HpMana_Hp;

			self.aivar[AIV_Damage] -= Am_HpMana_Hp;
		}
		else
		{
			self.attribute [ATR_HITPOINTS] = 2;

			self.aivar[AIV_Damage] = 2;
		};
		
		if (self.attribute[ATR_MANA] >= Am_HpMana_Mana)
		{
			self.attribute[ATR_MANA] = self.attribute[ATR_MANA] - Am_HpMana_Mana;
		}
		else
		{
			self.attribute [ATR_MANA] = 0;
		};
	};


INSTANCE  ItAm_Blickfang (C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_HpMana;

	visual 			=	"ItAm_Hp_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Blickfang;
	on_unequip		=	UnEquip_ItAm_Blickfang;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "eye-catching amulet";
	
	TEXT[2]			= "This amulet attracts the attention of each interlocutor";
	TEXT[3]			= "and distract him.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

FUNC VOID Equip_ItAm_Blickfang ()
{
	Mod_BlickfangAmulett = TRUE;
};

FUNC VOID UnEquip_ItAm_Blickfang ()
{
	Mod_BlickfangAmulett = FALSE;
};


INSTANCE  ItAm_Blutmond (C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_HpMana;

	visual 			=	"ItAm_Hp_Mana_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItAm_Blutmond;
	on_unequip		=	UnEquip_ItAm_Blutmond;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= "Amulet of the Blood Moon";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

FUNC VOID Equip_ItAm_Blutmond ()
{
	if (Wld_IsTime(22,30,01,00))
	{
		self.attribute[ATR_STRENGTH] += 100;
		self.attribute[ATR_DEXTERITY] -= 70;
		self.attribute[ATR_HITPOINTS_MAX] += 400;
		self.attribute[ATR_HITPOINTS] += 400;

		self.protection[PROT_EDGE] += 100000;
		self.protection[PROT_BLUNT] += 100000;
		self.protection[PROT_POINT] += 100000;
		self.protection[PROT_FIRE] += 100;
		self.protection[PROT_MAGIC] += 100;

		self.aivar[AIV_Damage] = self.attribute[ATR_HITPOINTS];

		self.damagetype = DAM_FIRE;

		AI_UnequipArmor	(self);

		Mdl_SetVisualBody (self, "hum_body_naked0", 18,				0,			"Hum_Head_Fighter", 	207,	0, 			NO_Armor);

		Mod_HeroIstDemon = TRUE;
		Mod_HeroDemonCounter = 180;
		Mod_WM_HeroHatDaemonInSich = 1;

		Mdl_RemoveOverlayMds	(hero, "HUMANS_BABE.MDS");
	};

	self.attribute[ATR_STRENGTH] += 4;

	self.protection[PROT_EDGE] += 3000;
	self.protection[PROT_BLUNT] += 3000;
	self.protection[PROT_POINT] += 3000;
	self.protection[PROT_FIRE] += 3;
	self.protection[PROT_MAGIC] += 3;	

	Mod_BlutmondAmulett = TRUE;
};

FUNC VOID UnEquip_ItAm_Blutmond ()
{
	Mod_BlutmondAmulett = FALSE;

	self.attribute[ATR_STRENGTH] -= 4;

	self.protection[PROT_EDGE] -= 3000;
	self.protection[PROT_BLUNT] -= 3000;
	self.protection[PROT_POINT] -= 3000;
	self.protection[PROT_FIRE] -= 3;
	self.protection[PROT_MAGIC] -= 3;

	Mod_HeroDemonCounter = 0;
};

/******************************************************************************************/









	


INSTANCE  ItTa_Behueter(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET;

	value 			=	Value_Am_ProtFire;

	visual 			=	"ItAm_Prot_Fire_01.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 
	on_equip		=	Equip_ItTa_Behueter;
	on_unequip		=	UnEquip_ItTa_Behueter;

	description		= "talisman of the protector";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_AMULETTE_STANDARD;
	
};

FUNC VOID Equip_ItTa_Behueter ()
{
	self.protection[PROT_EDGE] += 5000;
	self.protection[PROT_BLUNT] += 5000;
	self.protection[PROT_POINT] += 5000;
	self.protection[PROT_FIRE] += 5;
	self.protection[PROT_MAGIC] += 5;

	if (hero.attribute[ATR_MANA] >= 5)
	{
		hero.attribute[ATR_MANA] -= 5;

		Wld_SpawnNpcRange	(hero,	Wisp_Helper,			1,	500);
	};	

	Mod_TalismanBehueter = TRUE;
};

FUNC VOID UnEquip_ItTa_Behueter ()
{
	Mod_TalismanBehueter = FALSE;

	self.protection[PROT_EDGE] -= 5000;
	self.protection[PROT_BLUNT] -= 5000;
	self.protection[PROT_POINT] -= 5000;
	self.protection[PROT_FIRE] -= 5;
	self.protection[PROT_MAGIC] -= 5;

	Npc_ChangeAttribute (Wisp_Helper, ATR_HITPOINTS, -Wisp_Helper.attribute[ATR_HITPOINTS_MAX]);
};


INSTANCE  ItMi_Magieprisma(C_Item)
{
	name 			=	NAME_Amulett;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_SHOW;

	value 			=	0;

	visual 			=	"Schwarzesprisma.3DS";

	visual_skin 	=	0;
	material 		=	MAT_METAL;

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 
	on_equip		=	Equip_ItMi_Magieprisma;
	on_unequip		=	UnEquip_ItMi_Magieprisma;

	description		= "Magieprisma";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	
};

// original sizes 134 and 128, here multiplied with 0.75
const int PRISMA_WIDTH = 100;
const int PRISMA_HEIGHT = 96;

FUNC VOID Equip_ItMi_Magieprisma ()
{
	Mod_PrismaAngelegt = TRUE;
	
	Print ("Amulet created");
	
	Mod_View_Prisma = View_CreatePxl(Print_Screen[PS_X] / 2 - PRISMA_WIDTH / 2, Print_Screen[PS_Y] - PRISMA_HEIGHT - 10, Print_Screen[PS_X] / 2 + PRISMA_WIDTH / 2, Print_Screen[PS_Y] - 10);
	View_SetTexture(Mod_View_Prisma, "PRISMA_0.TGA");
	
	if (Mod_Prisma_Array[2]) {
		View_SetTexture(Mod_View_Prisma, "PRISMA_3.TGA");
	} else if (Mod_Prisma_Array[1]) {
		View_SetTexture(Mod_View_Prisma, "PRISMA_2.TGA");
	} else if (Mod_Prisma_Array[0]) {
		View_SetTexture(Mod_View_Prisma, "PRISMA_1.TGA");
	};
	View_Open(Mod_View_Prisma);
};

FUNC VOID UnEquip_ItMi_Magieprisma ()
{
	Mod_PrismaAngelegt = FALSE;
	
	View_Delete(Mod_View_Prisma);
	Mod_View_Prisma = 0;
};
