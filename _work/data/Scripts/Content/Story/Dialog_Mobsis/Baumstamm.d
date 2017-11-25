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
	description	= "Produkcja krzesel (5 desek)";
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
		Print	("Tablice przycinane do rozmiaru!");

		Npc_RemoveInvItems	(hero, ItMi_Brett, 5);

		CreateInvItems	(hero, ItMi_Brett_Saege, 5);
	}
	else
	{
		Print	("Nie wystarczy desek!");
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
	description	= "Tworzenie stolu (6 desek)";
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
		Print	("Tablice przycinane do rozmiaru!");

		Npc_RemoveInvItems	(hero, ItMi_Brett, 6);

		CreateInvItems	(hero, ItMi_Brett_Saege, 6);
	}
	else
	{
		Print	("Nie wystarczy desek!");
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
	description	= "Wykonaj pudelka na bizuterie (10 oddzial�w i 2 krysztaly skalne)";
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
		Print	("Surowa wersja pudelka na bizuterie jest kompletna!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 10);
		Npc_RemoveInvItems	(hero, ItMi_RockCrystal, 2);

		CreateInvItems	(hero, ItMi_Schmuckkasten_Roh, 1);
	}
	else
	{
		Print	("Nie wystarczy skladnik�w!");
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
	description	= "Produkcja kubka piwnego (10 oddzial�w i stali surowej)";
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
		Print	("Surowa wersja kubka piwnego dopelniona!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 10);
		Npc_RemoveInvItems	(hero, ItMiSwordRaw, 1);

		CreateInvItems	(hero, ItMi_Bierkrug_Roh, 1);
	}
	else
	{
		Print	("Nie wystarczy skladnik�w!");
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
	description	= "Sporzadzic mape (6 oddzial�w i 4 zloto)";
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
		Print	("Szorstka wersja mapy zostala ukonczona!");

		Npc_RemoveInvItems	(hero, ItMi_Ast, 6);
		Npc_RemoveInvItems	(hero, ItMi_GoldNugget_Addon, 4);

		CreateInvItems	(hero, ItMi_Karte_Roh, 6);
	}
	else
	{
		Print	("Nie wystarczy skladnik�w!");
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
	description	= "Male pilarki do ciezkich galezi";
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

	Print (ConcatStrings(IntToString(AstAnzahl * 5), " Zachowaly sie filie!"));

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
	description	= "Wal strzalkowy prowadzacy";
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

	Print (ConcatStrings(IntToString(AstAnzahl), " Waly strzalkowe wyrzezbione!"));

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
	description	= "Utw�rz smokowy guzik";
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
	description	= "Stw�rz krzyz�wke mysliwych smoka smok�w.";
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
	description	= "Wykonywanie kartek migawkowych";
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
