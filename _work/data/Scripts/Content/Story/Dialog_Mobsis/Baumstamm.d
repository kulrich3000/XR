FUNC VOID Baumstamm_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION = MOBSI_Baumstamm;
		Ai_ProcessInfos (her);
	};
};

INSTANCE PC_Baumstamm_CoragonStuhl (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_CoragonStuhl_Condition;
	information	= PC_Baumstamm_CoragonStuhl_Info;
	permanent	= 1;
	important	= 0;
	description	= "Chair manufacturing (5 boards)";
};

FUNC INT PC_Baumstamm_CoragonStuhl_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Mod_LehrlingBei == 2)
	&& (Npc_HasItems(hero, ItWr_Zeichnung_Stuhl) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_CoragonStuhl_Info()
{
	if (Npc_HasItems(hero, ItMi_Brett) >= 5)
	{
		Print	("Boards sawn to size!");

		Npc_RemoveInvItems	(hero, ItMi_Brett, 5);

		CreateInvItems	(hero, ItMi_Brett_Saege, 5);
	}
	else
	{
		Print	("Not enough boards!");
	};

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_MatteoFesttisch (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_MatteoFesttisch_Condition;
	information	= PC_Baumstamm_MatteoFesttisch_Info;
	permanent	= 1;
	important	= 0;
	description	= "Making a table (6 boards)";
};

FUNC INT PC_Baumstamm_MatteoFesttisch_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Npc_KnowsInfo(hero, Info_Mod_Thorben_LehrlingQuest3))
	&& (Npc_HasItems(hero, ItWr_Zeichnung_Tisch) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_MatteoFesttisch_Info()
{
	if (Npc_HasItems(hero, ItMi_Brett) >= 6)
	{
		Print	("Boards sawn to size!");

		Npc_RemoveInvItems	(hero, ItMi_Brett, 6);

		CreateInvItems	(hero, ItMi_Brett_Saege, 6);
	}
	else
	{
		Print	("Not enough boards!");
	};

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Schmuckkasten (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Schmuckkasten_Condition;
	information	= PC_Baumstamm_Schmuckkasten_Info;
	permanent	= 1;
	important	= 0;
	description	= "Make jewelry boxes (10 branches and 2 rock crystals)";
};

FUNC INT PC_Baumstamm_Schmuckkasten_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brahim_ThorbenLehrling4))
	&& (Npc_HasItems(hero, ItWr_Zeichnung_Schmuckkasten) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Schmuckkasten_Info()
{
	if (Npc_HasItems(hero, ItMi_Ast) >= 10)
	&& (Npc_HasItems(hero, ItMi_RockCrystal) >= 2)
	{
		Print	("Rough version of the jewelry box completed!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 10);
		Npc_RemoveInvItems	(hero, ItMi_RockCrystal, 2);

		CreateInvItems	(hero, ItMi_Schmuckkasten_Roh, 1);
	}
	else
	{
		Print	("Not enough ingredients!");
	};

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Bierkrug (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Bierkrug_Condition;
	information	= PC_Baumstamm_Bierkrug_Info;
	permanent	= 1;
	important	= 0;
	description	= "Manufacture beer mug (10 branches and crude steel)";
};

FUNC INT PC_Baumstamm_Bierkrug_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brahim_ThorbenLehrling4))
	&& (Npc_HasItems(hero, ItWr_Zeichnung_Bierkrug) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Bierkrug_Info()
{
	if (Npc_HasItems(hero, ItMi_Ast) >= 10)
	&& (Npc_HasItems(hero, ItMiSwordRaw) >= 1)
	{
		Print	("Raw version of the beer mug completed!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 10);
		Npc_RemoveInvItems	(hero, ItMiSwordRaw, 1);

		CreateInvItems	(hero, ItMi_Bierkrug_Roh, 1);
	}
	else
	{
		Print	("Not enough ingredients!");
	};

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Karte (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Karte_Condition;
	information	= PC_Baumstamm_Karte_Info;
	permanent	= 1;
	important	= 0;
	description	= "Make a map (6 branches and 4 pieces of gold)";
};

FUNC INT PC_Baumstamm_Karte_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Npc_KnowsInfo(hero, Info_Mod_Brahim_ThorbenLehrling4))
	&& (Npc_HasItems(hero, ItWr_Zeichnung_Karte) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Karte_Info()
{
	if (Npc_HasItems(hero, ItMi_Ast) >= 6)
	&& (Npc_HasItems(hero, ItMi_GoldNugget_Addon) >= 4)
	{
		Print	("Rough version of the map completed!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 6);
		Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, 4);

		CreateInvItems	(hero, ItMi_Karte_Roh, 6);
	}
	else
	{
		Print	("Not enough ingredients!");
	};

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_SchwererAst (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_SchwererAst_Condition;
	information	= PC_Baumstamm_SchwererAst_Info;
	permanent	= 1;
	important	= 0;
	description	= "Small sawing heavy branches";
};

FUNC INT PC_Baumstamm_SchwererAst_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	&& (Npc_HasItems(hero, ItMw_1h_Bau_Mace) > 0)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_SchwererAst_Info()
{
	var int AstAnzahl;

	AstAnzahl = (Npc_HasItems(hero, ItMw_1h_Bau_Mace));
	Npc_RemoveInvItems	(hero, ItMw_1h_Bau_Mace, AstAnzahl);
	CreateInvItems	(hero, ItMi_Ast, AstAnzahl * 5);

	Print (ConcatStrings(IntToString(AstAnzahl * 5), " Branches preserved!"));

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Pfeile (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Pfeile_Condition;
	information	= PC_Baumstamm_Pfeile_Info;
	permanent	= 1;
	important	= 0;
	description	= "Carving arrow shaft";
};

FUNC INT PC_Baumstamm_Pfeile_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	&& (Mod_PfeileSchnitzen	== 1)
	&& (Npc_HasItems(hero, ItMi_Ast) > 0)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Pfeile_Info()
{
	var int AstAnzahl;

	AstAnzahl = (Npc_HasItems(hero, ItMi_Ast));
	Npc_RemoveInvItems	(hero, ItMi_Ast, AstAnzahl);
	CreateInvItems	(hero, Pfeilstab, AstAnzahl);

	Print (ConcatStrings(IntToString(AstAnzahl), " Arrow shafts carved!"));

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Drachenbogen (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Drachenbogen_Condition;
	information	= PC_Baumstamm_Drachenbogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Create Dragon Bow";
};

FUNC INT PC_Baumstamm_Drachenbogen_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	&& (Pfeil_GoldErz == 2)
	&& (Npc_HasItems(hero, ItMi_Ast) >= 1)
	&& (Npc_HasItems(hero, ItAt_DragonSehne) >= 2)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Drachenbogen_Info()
{
	Npc_RemoveInvItems	(hero, ItMi_Ast, 1);
	Npc_RemoveInvItems	(hero, ItAt_DragonSehne, 2);

	CreateInvItems	(hero, ItRw_Bow_H_04_Eigen, 1);

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Drachenarmbrust (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Drachenarmbrust_Condition;
	information	= PC_Baumstamm_Drachenarmbrust_Info;
	permanent	= 1;
	important	= 0;
	description	= "Create Dragon Hunters' Crossbow";
};

FUNC INT PC_Baumstamm_Drachenarmbrust_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	&& (Pfeil_GoldErz == 2)
	&& (Npc_HasItems(hero, ItMi_Ast) >= 1)
	&& (Npc_HasItems(hero, ItAt_DragonSehne) >= 2)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Drachenarmbrust_Info()
{
	Npc_RemoveInvItems	(hero, ItMi_Ast, 1);
	Npc_RemoveInvItems	(hero, ItAt_DragonSehne, 2);

	CreateInvItems	(hero, ItRw_Crossbow_H_02_Eigen, 1);

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_Snapperbogen (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_Snapperbogen_Condition;
	information	= PC_Baumstamm_Snapperbogen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Making snap-on sheets";
};

FUNC INT PC_Baumstamm_Snapperbogen_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	&& (Snapperbogen)
	&& (Npc_HasItems(hero, ItMi_Ast) >= 3)
	&& (Npc_HasItems(hero, ItAt_Drachensnappersehne) >= 1)
	&& (Npc_HasItems(hero, ItRw_Bow_L_03) >= 1)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 2)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_Snapperbogen_Info()
{
	Npc_RemoveInvItems	(hero, ItMi_Ast, 3);
	Npc_RemoveInvItems	(hero, ItAt_Drachensnappersehne, 1);
	Npc_RemoveInvItems	(hero, ItRw_Bow_L_03, 1);
	Npc_RemoveInvItems	(hero, ItAt_DrgSnapperHorn, 2);

	CreateInvItems	(hero, ItRw_snapperbogen, 1);

	B_ENDPRODUCTIONDIALOG();
};

INSTANCE PC_Baumstamm_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Baumstamm_EXIT_Condition;
	information	= PC_Baumstamm_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Baumstamm_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Baumstamm)
	&& (Saegen == FALSE)
	{
		return 1;
	};
};

FUNC VOID PC_Baumstamm_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
