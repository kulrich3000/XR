
var int Martin_ItemsGiven_Chapter_1;
var int Martin_ItemsGiven_Chapter_2;
var int Martin_ItemsGiven_Chapter_3;
var int Martin_ItemsGiven_Chapter_4;
var int Martin_ItemsGiven_Chapter_5;

FUNC VOID B_GiveTradeInv_Mod_Martin_NW (var C_NPC slf)
{
	if ((Kapitel >= 1)
	&& (Martin_ItemsGiven_Chapter_1 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalLight, 10); 
		CreateInvItems (slf,ItMi_Moleratlubric_MIS , 1); 

		// ------ Waffen ------
		CreateInvItems (slf, ItMw_Schwert1, 1);
		CreateInvItems (slf, ItMw_ShortSword5, 1);
		CreateInvItems (slf, ItMw_ShortSword4, 1);
		CreateInvItems (slf, ItMw_1h_Mil_Sword, 1);
		CreateInvItems (slf, ItMw_1h_Vlk_Sword, 1);
		CreateInvItems (slf, ItMw_ShortSword3, 1);

		CreateInvItems	(slf, ItRw_Bow_L_01, 1);
		CreateInvItems	(slf, ItRw_Bow_L_02, 1);

		CreateInvItems (slf, ItMw_2H_Sword_Light_01, 1);
		CreateInvItems (slf, ItMw_Hellebarde, 1);
		CreateInvItems (slf, ItMw_Richtstab, 1);
		
		CreateInvItems (slf,ItRi_Mana_01, 1); 
		
		CreateInvItems (slf,ItMi_InnosStatue, 1); 
		
		Martin_ItemsGiven_Chapter_1 = TRUE;
	};
	
	if ((Kapitel >= 2)
	&& (Martin_ItemsGiven_Chapter_2 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 1);
		CreateInvItems (slf,ItSc_PalFullHeal , 1);

		CreateInvItems	(slf, ItMw_Schwert, 1);
		CreateInvItems	(slf, ItMw_Schwert4, 1);
		CreateInvItems	(slf, ItMw_Schwert2, 1);
		CreateInvItems	(slf, ItMw_Schwert3, 1);

		CreateInvItems	(slf, ItMw_Zweihaender2, 1);
	
		Martin_ItemsGiven_Chapter_2 = TRUE;
	};

	if ((Kapitel >= 3)
	&& (Martin_ItemsGiven_Chapter_3 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 1);
		CreateInvItems (slf,ItSc_PalFullHeal , 2);

		CreateInvItems	(slf, ItMw_Rubinklinge, 1);
		CreateInvItems	(slf, ItMw_Schwert5, 1);
		CreateInvItems	(slf, ItMw_Runenschwert, 1);
		CreateInvItems	(slf, ItMw_ElBastardo, 1);

		CreateInvItems	(slf, ItMw_Zweihaender3, 1);
		CreateInvItems	(slf, ItMw_Zweihaender4, 1);

		Martin_ItemsGiven_Chapter_3 = TRUE;
	};

	if ((Kapitel >= 4)
	&& (Martin_ItemsGiven_Chapter_4 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItMi_Nugget, 1); 
		CreateInvItems (slf,ItSc_PalDestroyEvil , 1);
		CreateInvItems (slf,ItSc_PalRepelEvil , 2);
		CreateInvItems (slf,ItSc_PalFullHeal , 3);

		CreateInvItems	(slf, ItMW_Addon_Betty, 1);

		CreateInvItems	(slf, ItMw_Krummschwert, 1);

		Martin_ItemsGiven_Chapter_4 = TRUE;
	};

	if ((Kapitel >= 5)
	&& (Martin_ItemsGiven_Chapter_5 == FALSE))
	{
		CreateInvItems (slf,ItSc_PalHolyBolt ,  2); 
		CreateInvItems (slf,ItSc_PalMediumHeal , 1);
		CreateInvItems (slf,ItSc_PalDestroyEvil , 2);
		CreateInvItems (slf,ItSc_PalRepelEvil , 3);
		CreateInvItems (slf,ItSc_PalFullHeal , 2);

		CreateInvItems	(slf, ItMw_Drachenschneide, 1);
	
		Martin_ItemsGiven_Chapter_5 = TRUE;
	};
};
