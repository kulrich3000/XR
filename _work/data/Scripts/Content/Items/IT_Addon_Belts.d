//------------------------------------------------------------------------------------------
//Visuals --> aus den Armors
/*
ItAr_Pal_M       ItMi_Belt_01.3DS
ItAr_Kdf_L                 ItMi_Belt_02.3DS --> alle KDF/NOV Belts 
ItAr_MIL_L                ItMi_Belt_03.3DS -->  MIL_01 MIL_02 
ItAr_Pal_H       ItMi_Belt_04.3DS 
ItAr_Sld_L                  ItMi_Belt_05.3DS --> SLD_01 SLD_02
ItAr_Bau_L       			ItMi_Belt_06.3DS  --> Leder
ItAr_Bdt_H                 ItMi_Belt_07.3DS --> SLD_03 
ItAr_Bdt_M                ItMi_Belt_08.3DS MC
ItAr_CorAngar    ItMi_Belt_09.3DS 
ItAr_Djg_H       ItMi_Belt_10.3DS
ItAr_MIL_M               ItMi_Belt_11.3DS --> MIL_03
*/
//------------------------------------------------------------------------------------------
//Values
//------------------------------------------------------------------------------------------
const int Value_ItBE_Addon_Leather_01 = 250;

const int Value_ItBE_Addon_Leather_02 = 250;

const int Value_ItBE_Addon_SLD_01	  = 250;


const int Value_ItBE_Addon_NOV_01	  = 250;

const int Value_ItBE_Addon_MIL_01	  = 250;


const int Value_ItBE_Addon_KDF_01	  = 250;


const int Value_ItBE_Addon_MC		  = 250;

const int Value_ItBE_Addon_STR_5	  = 500;
const int Value_ItBE_Addon_STR_10	  = 1000;
const int Value_ItBE_Addon_DEX_5	  = 500;
const int Value_ItBE_Addon_DEX_10	  = 1000;

const int Value_ItBE_Addon_Prot_Edge	= 500;
const int Value_ItBE_Addon_Prot_Point	= 500;
const int Value_ItBE_Addon_Prot_Magic	= 500;
const int Value_ItBE_Addon_Prot_Fire	= 500;
const int Value_ItBE_Addon_Prot_EdgPoi	= 1000;
const int Value_ItBE_Addon_Prot_Total	= 2000;

//---------------------------------------------------------
// Boni
//---------------------------------------------------------
const int BA_Bonus01 = 5;
const int BA_Bonus02 = 5;

const int Belt_Prot_01 = 5;
//const int Belt_Prot_02 = 5;
//---------------------------------------------------------
const int BeltBonus_STR01	= 5;
const int BeltBonus_STR02	= 10;
const int BeltBonus_DEX01	= 5;
const int BeltBonus_DEX02	= 10;

const int BeltBonus_ProtEdge	= 10;
const int BeltBonus_ProtPoint	= 10;
const int BeltBonus_ProtMagic	= 10;
const int BeltBonus_ProtFire	= 10;
const int BeltBonus_ProtEdgPoi	= 7;
const int BeltBonus_ProtTotal	= 7;
//------------------------------------------------------------------------------------------
// Guertel (Belts)
//------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------
// Lederguertel  
//------------------------------------------------------------------------------------------
INSTANCE  ItBE_Addon_Leather_01 (C_Item)  //Bosper(Kap1)/Hakon(1)/Khaled(1)/Orlan(1)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Leather_01;

	visual 			=	"ItMI_Belt_06.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_Leather_01;
	on_unequip		=	UnEquip_ItBE_Addon_Leather_01;

	description		=  "sk�rzany pasek";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	TEXT[3]			=	NAME_Addon_BeArLeather;
	COUNT[3]		= 	BA_Bonus01;
	TEXT[5]			=   NAME_Value;
	COUNT[5]		=   value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE]  += Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] += Belt_Prot_01*1000;
	self.protection[PROT_POINT] += Belt_Prot_01*1000;
	
	if (Npc_IsPlayer(self))
	{
		Leather01_Equipped = TRUE;	
	
		if (LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;
		};
	};
};
FUNC VOID UnEquip_ItBE_Addon_Leather_01()
{
	self.protection[PROT_EDGE] -= Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] -= Belt_Prot_01*1000;
	self.protection[PROT_POINT] -= Belt_Prot_01*1000;
	
	if (Npc_IsPlayer(self))
	{
		Leather01_Equipped = FALSE;
			
		if (LeatherArmor_Equipped == TRUE)
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
		};
	};
};
//------------------------------------------------------------------------------------------
// Fellg�rtel (SLD) Zweihand
//------------------------------------------------------------------------------------------
	INSTANCE  ItBE_Addon_SLD_01 (C_Item)  //Bennet(Kap1)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_SLD_01;

	visual 			=	"ItMi_Belt_05.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_SLD_01;
	on_unequip		=	UnEquip_ItBE_Addon_SLD_01;

	description		=  "najemnik pas bezpieczenstwa";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	
	TEXT[3]			= NAME_Addon_BeArSLD;
	COUNT[3]		= BA_Bonus01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE] += Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] += Belt_Prot_01*1000;
	self.protection[PROT_POINT] += Belt_Prot_01*1000;
	
	if (SLDArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;
	};
};
FUNC VOID UnEquip_ItBE_Addon_SLD_01()
{
	SLD01_Equipped = FALSE;
	
	self.protection[PROT_EDGE] -= Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] -= Belt_Prot_01*1000;
	self.protection[PROT_POINT] -= Belt_Prot_01*1000;
	
	if (SLDArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
	};
};
//------------------------------------------------------------------------------------------
// Novizensch�rpe (Zweihand)
//------------------------------------------------------------------------------------------
INSTANCE  ItBE_Addon_NOV_01 (C_Item)  //Gorax (Kap1)
{
	name 			=	NAME_Addon_BeltMage;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_NOV_01;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_NOV_01;
	on_unequip		=	UnEquip_ItBE_Addon_NOV_01;

	description		=  "Obw�d Pasa Pozarniczego";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE] += 10*1000;
	self.protection[PROT_BLUNT] += 10*1000;
	self.protection[PROT_POINT] += 10*1000;
	self.protection[PROT_FIRE] += 10;
	self.protection[PROT_MAGIC] += 20;
	
	if (NOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;	
	};
};
FUNC VOID UnEquip_ItBE_Addon_NOV_01()
{
	NOV01_Equipped = FALSE;
	
	self.protection[PROT_EDGE] -= 10*1000;
	self.protection[PROT_BLUNT] -= 10*1000;
	self.protection[PROT_POINT] -= 10*1000;
	self.protection[PROT_FIRE] -= 10;
	self.protection[PROT_MAGIC] -= 20;
	
	if (NOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
	};
};

// Wasser Novize
INSTANCE  ItBE_Addon_WNOV_01 (C_Item)  //Gorax (Kap1)
{
	name 			=	NAME_Addon_BeltMage;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_NOV_01;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_WNOV_01;
	on_unequip		=	UnEquip_ItBE_Addon_WNOV_01;

	description		=  "Nowoczesny pas wodny";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBE_Addon_WNOV_01()
{
	WNOV01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE] += 10*1000;
	self.protection[PROT_BLUNT] += 10*1000;
	self.protection[PROT_POINT] += 10*1000;
	self.protection[PROT_FIRE] += 10;
	self.protection[PROT_MAGIC] += 20;
	
	if (WNOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;	
	};
};
FUNC VOID UnEquip_ItBE_Addon_WNOV_01()
{
	WNOV01_Equipped = FALSE;
	
	self.protection[PROT_EDGE] -= 10*1000;
	self.protection[PROT_BLUNT] -= 10*1000;
	self.protection[PROT_POINT] -= 10*1000;
	self.protection[PROT_FIRE] -= 10;
	self.protection[PROT_MAGIC] -= 20;
	
	if (WNOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
	};
};

// Schwarzer Novize
INSTANCE  ItBE_Addon_SNOV_01 (C_Item)  //Gorax (Kap1)
{
	name 			=	NAME_Addon_BeltMage;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_NOV_01;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_SNOV_01;
	on_unequip		=	UnEquip_ItBE_Addon_SNOV_01;

	description		=  "Czarny, nowatorski pasek";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBE_Addon_SNOV_01()
{
	SNOV01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE] += 10*1000;
	self.protection[PROT_BLUNT] += 10*1000;
	self.protection[PROT_POINT] += 10*1000;
	self.protection[PROT_FIRE] += 10;
	self.protection[PROT_MAGIC] += 20;
	
	if (SNOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;	
	};
};
FUNC VOID UnEquip_ItBE_Addon_SNOV_01()
{
	SNOV01_Equipped = FALSE;
	
	self.protection[PROT_EDGE] -= 10*1000;
	self.protection[PROT_BLUNT] -= 10*1000;
	self.protection[PROT_POINT] -= 10*1000;
	self.protection[PROT_FIRE] -= 10;
	self.protection[PROT_MAGIC] -= 20;
	
	if (SNOVArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;
	};
};
//------------------------------------------------------------------------------------------
// Miliz  (Zweihand)
//------------------------------------------------------------------------------------------
	INSTANCE  ItBE_Addon_MIL_01 (C_Item)  //Hakon(Kap1)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_MIL_01;

	visual 			=	"ItMi_Belt_03.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_MIL_01;
	on_unequip		=	UnEquip_ItBE_Addon_MIL_01;

	description		=  "pas milicji";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	TEXT[3]			=   NAME_Addon_BeArMIL;
	COUNT[3]		=   BA_Bonus01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE]  += Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] += Belt_Prot_01*1000;
	self.protection[PROT_POINT] += Belt_Prot_01*1000;
	
	if (MILArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;	
	};
};
FUNC VOID UnEquip_ItBE_Addon_MIL_01()
{
	MIL01_Equipped = FALSE;
	
	self.protection[PROT_EDGE]  -= Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] -= Belt_Prot_01*1000;
	self.protection[PROT_POINT] -= Belt_Prot_01*1000;
	
	if (MILArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;	
	};
};
//------------------------------------------------------------------------------------------
// Feuermagier Mana 
//------------------------------------------------------------------------------------------
	INSTANCE  ItBE_Addon_KDF_01 (C_Item)  //Gorax(Kap1)
{
	name 			=	NAME_Addon_BeltMage;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_KDF_01;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_KDF_01;
	on_unequip		=	UnEquip_ItBE_Addon_KDF_01;

	description		=  "szarfa";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	TEXT[3]			= 	NAME_Addon_BeArKDF;
	COUNT[3]		= 	BA_Bonus01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = TRUE;	
	
	self.protection[PROT_EDGE]  += Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] += Belt_Prot_01*1000;
	self.protection[PROT_POINT] += Belt_Prot_01*1000;
	
	if (KDFArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus02;
			self.protection[PROT_FIRE] 	+= BA_Bonus02;	
	};
};
FUNC VOID UnEquip_ItBE_Addon_KDF_01()
{
	KDF01_Equipped = FALSE;
	
	self.protection[PROT_EDGE]  -= Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] -= Belt_Prot_01*1000;
	self.protection[PROT_POINT] -= Belt_Prot_01*1000;
	
	if (KDFArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;		
	};
};

//------------------------------------------------------------------------------------------
// Minecrawler G�rtel Zweihand
//------------------------------------------------------------------------------------------
	INSTANCE  ItBE_Addon_MC (C_Item)  //Bennet(Kap3)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_MC;

	visual 			=	"ItMi_Belt_08.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Addon_MC;
	on_unequip		=	UnEquip_ItBE_Addon_MC;

	description		=  "Minecrawler tasmowy";
	
	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	Belt_Prot_01;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	Belt_Prot_01;
	TEXT[3]			= 	NAME_Addon_BeArMC;
	COUNT[3]		= 	BA_Bonus01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBE_Addon_MC()
{
	MC_Equipped = TRUE;	
	
	self.protection[PROT_EDGE]  += Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] += Belt_Prot_01*1000;
	self.protection[PROT_POINT] += Belt_Prot_01*1000;
	
	if (MCArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	+= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] += BA_Bonus01*1000;
			self.protection[PROT_POINT] += BA_Bonus01*1000;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;		
	};
};
FUNC VOID UnEquip_ItBE_Addon_MC()
{
	MC_Equipped = FALSE;
	
	self.protection[PROT_EDGE]  -= Belt_Prot_01*1000;
	self.protection[PROT_BLUNT] -= Belt_Prot_01*1000;
	self.protection[PROT_POINT] -= Belt_Prot_01*1000;
	
	if (MCArmor_Equipped == TRUE)
	{
			self.protection[PROT_EDGE] 	-= BA_Bonus01*1000;
			self.protection[PROT_BLUNT] -= BA_Bonus01*1000;
			self.protection[PROT_POINT] -= BA_Bonus01*1000;
			self.protection[PROT_MAGIC] -= BA_Bonus02;
			self.protection[PROT_FIRE] 	-= BA_Bonus02;		
	};
};


// *****************************************************
// 						kleine G�rtel
// *****************************************************
// -----------------------------------------------------
// STR 5
// -----------------------------------------------------
INSTANCE  ItBe_Addon_STR_5 (C_Item)		//Spielstart Xardas(Kap1)  
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_STR_5;

	visual 			=	"ItMi_Belt_08.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_STR_5;
	on_unequip		=	UnEquip_ItBe_Addon_STR_5;

	description		=  "Pas mocy";
	
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= BeltBonus_STR01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + BeltBonus_STR01 );
};
FUNC VOID UnEquip_ItBe_Addon_STR_5()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - BeltBonus_STR01 );
};

// -----------------------------------------------------
// STR 10
// -----------------------------------------------------
INSTANCE  ItBe_Addon_STR_10 (C_Item)  	//Jora(Kap4)/Sengrath(4)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_STR_10;

	visual 			=	"ItMi_Belt_05.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_STR_10;
	on_unequip		=	UnEquip_ItBe_Addon_STR_10;

	description		=  "Pasek bezpieczenstwa Wytrzymalosc";
	
	TEXT[2]			= NAME_Bonus_Str;
	COUNT[2]		= BeltBonus_STR02;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, + BeltBonus_STR02 );
};
FUNC VOID UnEquip_ItBe_Addon_STR_10()
{
	Npc_ChangeAttribute(self, ATR_STRENGTH, - BeltBonus_STR02 );
};

// -----------------------------------------------------
// DEX 5
// -----------------------------------------------------
INSTANCE  ItBe_Addon_DEX_5 (C_Item)  //Bosper(Kap2)/Orlan(2)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_DEX_5;

	visual 			=	"ItMi_Belt_08.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_DEX_5;
	on_unequip		=	UnEquip_ItBe_Addon_DEX_5;

	description		=  "Pas zrecznosci";
	
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= BeltBonus_DEX01;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + BeltBonus_DEX01 );
};
FUNC VOID UnEquip_ItBe_Addon_DEX_5()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - BeltBonus_DEX01 );
};

// -----------------------------------------------------
// DEX 10
// -----------------------------------------------------
INSTANCE  ItBe_Addon_DEX_10 (C_Item)  //Bosper(Kap3)/Lutero(3)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_DEX_10;

	visual 			=	"ItMi_Belt_05.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_DEX_10;
	on_unequip		=	UnEquip_ItBe_Addon_DEX_10;

	description		=  "Pas umiejetnosci";
	
	TEXT[2]			= NAME_Bonus_Dex;
	COUNT[2]		= BeltBonus_DEX02;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, + BeltBonus_DEX02 );
};
FUNC VOID UnEquip_ItBe_Addon_DEX_10()
{
	Npc_ChangeAttribute(self, ATR_DEXTERITY, - BeltBonus_DEX02 );
};


// -----------------------------------------------------
// PROT EDGE
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_EDGE (C_Item)  //Hakon(Kap4)/Khaled(4)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_EDGE;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_EDGE;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_EDGE;

	description		=  "Pasy ochronne";
	
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= BeltBonus_ProtEdge;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_Edge()
{
	self.protection [PROT_EDGE]   += BeltBonus_ProtEdge*1000;
	self.protection [PROT_BLUNT]  += BeltBonus_ProtEdge*1000;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_Edge()
{
	self.protection [PROT_EDGE]   -= BeltBonus_ProtEdge*1000;
	self.protection [PROT_BLUNT]  -= BeltBonus_ProtEdge*1000;
};

// -----------------------------------------------------
// PROT POINT
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_Point (C_Item)  //Hakon(Kap3)/Khaled(3)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_Point;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_Point;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_Point;

	description		=  "Obrona";
	
	TEXT[2]			= NAME_Prot_Point;
	COUNT[2]		= BeltBonus_ProtPoint;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_Point()
{
	self.protection [PROT_POINT]   += BeltBonus_ProtPoint*1000;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_Point()
{
	self.protection [PROT_POINT]   -= BeltBonus_ProtPoint*1000;
};

// -----------------------------------------------------
// PROT MAGIC
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_MAGIC (C_Item)  //Gorax(Kap3)/Zuris(3)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_MAGIC;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_MAGIC;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_MAGIC;

	description		=  "Pas Magiczna obrona";
	
	TEXT[2]			= NAME_Prot_MAGIC;
	COUNT[2]		= BeltBonus_ProtMAGIC;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_MAGIC()
{
	self.protection [PROT_MAGIC]   += BeltBonus_ProtMAGIC;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_MAGIC()
{
	self.protection [PROT_MAGIC]   -= BeltBonus_ProtMAGIC;
};

// -----------------------------------------------------
// PROT FIRE
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_FIRE (C_Item)  //Constantino(Kap3)/Sengrath(4)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_FIRE;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_FIRE;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_FIRE;

	description		=  "Pas urzadzenia uruchamiajacego ogien";
	
	TEXT[2]			= NAME_Prot_FIRE;
	COUNT[2]		= BeltBonus_ProtFIRE;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_FIRE()
{
	self.protection [PROT_FIRE]   += BeltBonus_ProtFIRE;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_FIRE()
{
	self.protection [PROT_FIRE]   -= BeltBonus_ProtFIRE;
};

// -----------------------------------------------------
// PROT EdgPoi
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_EdgPoi (C_Item)  //Khaled(Kap4)/Orlan(3)	Missionbelohnung von Garett f�r Feuerwarane (Kap2)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MISSION|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_EdgPoi;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_EdgPoi;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_EdgPoi;

	description		=  "Pasy ochronne";
	
	TEXT[2]			= NAME_Prot_Edge;
	COUNT[2]		= BeltBonus_ProtEdgPoi;
	TEXT[3] 		= NAME_Prot_Point;
	COUNT[3]		= BeltBonus_ProtEdgPoi;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection [PROT_EDGE]   += BeltBonus_ProtEdgPoi*1000;
	self.protection [PROT_BLUNT]  += BeltBonus_ProtEdgPoi*1000;
	self.protection [PROT_POINT]   += BeltBonus_ProtEdgPoi*1000;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_EdgPoi()
{
	self.protection [PROT_EDGE]   -= BeltBonus_ProtEdgPoi*1000;
	self.protection [PROT_BLUNT]  -= BeltBonus_ProtEdgPoi*1000;
	self.protection [PROT_POINT]   -= BeltBonus_ProtEdgPoi*1000;
};

// -----------------------------------------------------
// PROT TOTAL
// -----------------------------------------------------
INSTANCE  ItBe_Addon_Prot_TOTAL (C_Item)  //Hakon(Kap4)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_TOTAL;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Addon_Prot_TOTAL;
	on_unequip		=	UnEquip_ItBe_Addon_Prot_TOTAL;

	description		=  "Pas ochronny";
	
	TEXT[1]			= NAME_Prot_Edge;
	COUNT[1]		= BeltBonus_ProtTOTAL;
	TEXT[2] 		= NAME_Prot_Point;
	COUNT[2]		= BeltBonus_ProtTOTAL;
	TEXT[3]			= NAME_Prot_Magic;
	COUNT[3]		= BeltBonus_ProtTOTAL;
	TEXT[4]			= NAME_Prot_Fire;
	COUNT[4]		= BeltBonus_ProtTOTAL;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Addon_Prot_TOTAL()
{
	self.protection [PROT_EDGE]   += BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_BLUNT]   += BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_POINT]   += BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_MAGIC]   += BeltBonus_ProtTOTAL;
	self.protection [PROT_FIRE]   += BeltBonus_ProtTOTAL;
};
FUNC VOID UnEquip_ItBe_Addon_Prot_TOTAL()
{
	self.protection [PROT_EDGE]   -= BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_BLUNT]   -= BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_POINT]   -= BeltBonus_ProtTOTAL*1000;
	self.protection [PROT_MAGIC]   -= BeltBonus_ProtTOTAL;
	self.protection [PROT_FIRE]   -= BeltBonus_ProtTOTAL;
};

// Kettenhemd f�r Pala-Story

INSTANCE  ItBE_Kettenhemd (C_Item)  //Bosper(Kap1)/Hakon(1)/Khaled(1)/Orlan(1)
{
	name 			=	"koszula pocztowa";

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	3000;

	visual 			=	"ItAr_Kettenhemd.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBE_Kettenhemd;
	on_unequip		=	UnEquip_ItBE_Kettenhemd;

	description		=  "Kettenhemd";

	TEXT[1]			=	NAME_Prot_Edge;			
	COUNT[1]		= 	30;
	TEXT[2]			=	NAME_Prot_Point;		
	COUNT[2]		= 	30;
	TEXT[5]			=   NAME_Value;
	COUNT[5]		=   value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
	
};
FUNC VOID Equip_ItBE_Kettenhemd()
{
	self.protection[PROT_EDGE]  += 30000;
	self.protection[PROT_BLUNT] += 30000;
	self.protection[PROT_POINT] += 30000;
};
FUNC VOID UnEquip_ItBE_Kettenhemd()
{
	self.protection[PROT_EDGE] -= 30000;
	self.protection[PROT_BLUNT] -= 30000;
	self.protection[PROT_POINT] -= 30000;
};

INSTANCE  ItBe_Bewaehrung (C_Item)  //Hakon(Kap4)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_TOTAL;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Bewaehrung;
	on_unequip		=	UnEquip_ItBe_Bewaehrung;

	description		=  "pas pr�bny";
	
	TEXT[0]			= "Chroni przed zamarzaniem.";
	TEXT[1]			= NAME_Prot_Edge;
	COUNT[1]		= 20;
	TEXT[2] 		= NAME_Prot_Point;
	COUNT[2]		= 20;
	TEXT[3]			= NAME_Prot_Magic;
	COUNT[3]		= 20;
	TEXT[4]			= NAME_Prot_Fire;
	COUNT[4]		= 20;
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Bewaehrung()
{
	self.protection [PROT_EDGE]   += 20000;
	self.protection [PROT_BLUNT]   += 20000;
	self.protection [PROT_POINT]   += 20000;
	self.protection [PROT_MAGIC]   += 20;
	self.protection [PROT_FIRE]   += 20;

	Mod_GuertelDerBewaehrung = TRUE;
};
FUNC VOID UnEquip_ItBe_Bewaehrung()
{
	self.protection [PROT_EDGE]   -= 20000;
	self.protection [PROT_BLUNT]   -= 20000;
	self.protection [PROT_POINT]   -= 20000;
	self.protection [PROT_MAGIC]   -= 20;
	self.protection [PROT_FIRE]   -= 20;

	Mod_GuertelDerBewaehrung = FALSE;
};

INSTANCE  ItBe_GolemBand (C_Item)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_TOTAL;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_GolemBand;
	on_unequip		=	UnEquip_ItBe_GolemBand;

	description		=  "Solidna wstazka z golema";
	
	TEXT[0]			= "Zapobiega wyrzucaniu odpad�w";
	TEXT[1] 		= NAME_Prot_Edge;
	COUNT[1]		= 25;
	TEXT[2] 		= NAME_Prot_Point;
	COUNT[2]		= 25;
	TEXT[3]			= NAME_Bonus_Str;
	COUNT[3]		= 20;
	TEXT[4]			= "Kr�tszy czas nurkowania";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_GolemBand()
{
	self.protection [PROT_EDGE]   += 20000;
	self.protection [PROT_BLUNT]   += 20000;
	self.protection [PROT_POINT]   += 20000;

	self.attribute[ATR_STRENGTH] += 20;

	var oCNpc her;
	her = Hlp_GetNpc (hero);
	her.divetime = subf(her.divetime, mkf(15000));

	Mod_GuertelDerGolemBand = TRUE;
};
FUNC VOID UnEquip_ItBe_GolemBand()
{
	self.protection [PROT_EDGE]   -= 20000;
	self.protection [PROT_BLUNT]   -= 20000;
	self.protection [PROT_POINT]   -= 20000;

	self.attribute[ATR_STRENGTH] -= 20;

	var oCNpc her;
	her = Hlp_GetNpc (hero);
	her.divetime = addf(her.divetime, mkf(15000));

	Mod_GuertelDerGolemBand = FALSE;
};

INSTANCE  ItBe_GuertelDerEhre (C_Item)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_TOTAL;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_GuertelDerEhre;
	on_unequip		=	UnEquip_ItBe_GuertelDerEhre;

	description		=  "Belg Honorowy";

	TEXT[1]			= "2% doswiadczenie";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_GuertelDerEhre()
{
	Mod_GuertelDerEhre = TRUE;
};
FUNC VOID UnEquip_ItBe_GuertelDerEhre()
{
	Mod_GuertelDerEhre = FALSE;
};

INSTANCE  ItBe_Dornenguertel (C_Item)
{
	name 			=	NAME_Addon_Belt;

	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_BELT|ITEM_MULTI;

	value 			=	Value_ItBE_Addon_Prot_TOTAL;

	visual 			=	"ItMi_Belt_02.3ds";

	visual_skin 	=	0;
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItBe_Dornenguertel;
	on_unequip		=	UnEquip_ItBe_Dornenguertel;

	description		=  "pasek piersiowy";

	TEXT[1]			= "Atakujacy wyczuwaja ostre kolce.";
	TEXT[2]			= "Ale nawet uzytkownik cierpi na zadrapania.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;

	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx		= INVCAM_ENTF_MISC2_STANDARD;
};
FUNC VOID Equip_ItBe_Dornenguertel()
{
	Mod_Dornenguertel = TRUE;
};
FUNC VOID UnEquip_ItBe_Dornenguertel()
{
	Mod_Dornenguertel = FALSE;
};
