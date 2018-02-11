FUNC VOID Salzhacken_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		if (Npc_HasItems(hero, ItMw_2H_Axe_L_01) == 0)
		{
			Print	("You can't do that without a pickaxe!");

			AI_UseMob (hero, "ORE", -1);
			return;
		};

		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_Salzhacken;
		
		Pickaxe_Fix = TRUE;
		Pickaxe_Count = Npc_HasItems(hero, ItMw_2H_Axe_L_01);
		
		Ai_ProcessInfos (her);
	};
}; 

FUNC INT B_SalzMob_Bestimmung()
{
	if (Hlp_StrCmp(Npc_GetNearestWP(self), "ADW_PIRATECAMP_CAVE3_04") && (SalzMob_01_Amount_MAX > SalzMob_01_Amount))
	{
		SalzMob_01_Amount += 1;
		return TRUE;
	};

	return FALSE;
};

INSTANCE PC_Salzhacken_Hacken (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Salzhacken_Hacken_Condition;
	information	= PC_Salzhacken_Hacken_Info;
	permanent	= 1;
	important	= 0;
	description	= "Just chop a little.";
};

FUNC INT PC_Salzhacken_Hacken_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Salzhacken)
	{
		return 1;
	};
};

FUNC VOID PC_Salzhacken_Hacken_Info()
{
	var int SalzKriegChance;
	var int SalzAnzahl;
	SalzKriegChance	= 0;
	SalzAnzahl	=	Hlp_Random(100);

	Learn_by_doing = (Learn_by_doing +1);
	
	if (Learn_by_doing == 10)
	{
		B_Upgrade_ErzHackChance (2);
	}
	else if (Learn_by_doing == 15)
	{
		B_Upgrade_ErzHackChance (3);
	}	
	else if (Learn_by_doing == 20)
	{
		B_Upgrade_ErzHackChance (5);
	}
	else if (Learn_by_doing%30 == 0)
	{
		B_Upgrade_ErzHackChance (5);
	};

	if (B_SalzMob_Bestimmung() == TRUE)
	{
		if (Erzhackchance >= SalzKriegChance)
		{
			if (SalzAnzahl < 60)
			{
				CreateInvItems	(hero, ItMi_SalzNugget, 1);
				PrintScreen	("1 salt chunk chopped!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
			}
			else if (SalzAnzahl < 80)
			{
				CreateInvItems	(hero, ItMi_SalzNugget, 2);
				PrintScreen	("2 salt chunks chopped!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
			}
			else
			{
				CreateInvItems	(hero, ItMi_SalzNugget, 3);
				PrintScreen	("3 salt chunks chopped!", -1, -1, FONT_ScreenSmall, 2);
				Truemmer_Count = 0;
			};
		}
		else
		{
			CreateInvItems	(hero, ItMi_SalzNugget, 1);
			PrintScreen	("1 salt chunk chopped!", -1, -1, FONT_ScreenSmall, 2);
			Truemmer_Count = 0;		
		};
	}
	else
	{
		PrintScreen ("There's nothing else to be had here.", -1, -1, FONT_ScreenSmall, 2);	
		B_ENDPRODUCTIONDIALOG ();
	};
};

INSTANCE PC_Salzhacken_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Salzhacken_Chance_Condition;
	information		= PC_Salzhacken_Chance_Info;
	permanent		= TRUE;
	description		= "(assess own ability)"; 
};

FUNC INT PC_Salzhacken_Chance_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Salzhacken)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Salzhacken_Chance_Info()
{
	var string ConcatText;

	
	if (ErzHackChance < 20) 
	{
		ConcatText = ConcatStrings ("A beginner scraper (", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 40) 
	{
		ConcatText = ConcatStrings ("An adequate scraper (" , IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 55) 
	{
		ConcatText = ConcatStrings ("An experienced scraper (", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 75) 
	{
		ConcatText = ConcatStrings ("A competent scraper ( ", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 90) 
	{
		ConcatText = ConcatStrings ("An accomplished scraper ( ", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 98) 
	{
		ConcatText = ConcatStrings ("A master scraper ( ", IntToString (ErzHackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("A guru scraper ( ", IntToString (ErzHackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " percent)");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
	
INSTANCE PC_Salzhacken_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Salzhacken_EXIT_Condition;
	information	= PC_Salzhacken_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Salzhacken_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Salzhacken)
	&& (Hacken	==	FALSE)
	{
		return 1;
	};
};

FUNC VOID PC_Salzhacken_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
	Truemmer_Count = 0;
};
