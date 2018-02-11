FUNC VOID Runensteinbrocken_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		if (Npc_HasItems(hero, ItMw_2H_Axe_L_01) == 0)
		{
			Print	("Nie mozna tego zrobic bez pickaxe!");

			AI_UseMob (hero, "ORE", -1);
			return;
		};

		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_Runensteinbrocken;
		
		Pickaxe_Fix = TRUE;
		Pickaxe_Count = Npc_HasItems(hero, ItMw_2H_Axe_L_01);
		
		Ai_ProcessInfos (her);
	};
}; 

FUNC INT B_RunenMob_Bestimmung()
{
	if (Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_01") && (RunenMob_01_Amount_MAX > RunenMob_01_Amount))
	{
		RunenMob_01_Amount = (RunenMob_01_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_02") && (RunenMob_02_Amount_MAX > RunenMob_02_Amount)
	{
		RunenMob_02_Amount = (RunenMob_02_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_03") && (RunenMob_03_Amount_MAX > RunenMob_03_Amount)
	{
		RunenMob_03_Amount = (RunenMob_03_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_04") && (RunenMob_04_Amount_MAX > RunenMob_04_Amount)
	{
		RunenMob_04_Amount = (RunenMob_04_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_05") && (RunenMob_05_Amount_MAX > RunenMob_05_Amount)
	{
		RunenMob_05_Amount = (RunenMob_05_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_06") && (RunenMob_06_Amount_MAX > RunenMob_06_Amount)
	{
		RunenMob_06_Amount = (RunenMob_06_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_07") && (RunenMob_07_Amount_MAX > RunenMob_07_Amount)
	{
		RunenMob_07_Amount = (RunenMob_07_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_08") && (RunenMob_08_Amount_MAX > RunenMob_08_Amount)
	{
		RunenMob_08_Amount = (RunenMob_08_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_09") && (RunenMob_09_Amount_MAX > RunenMob_09_Amount)
	{
		RunenMob_09_Amount = (RunenMob_09_Amount +1);
		return TRUE;
	}
	else if Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_10") && (RunenMob_10_Amount_MAX > RunenMob_10_Amount)
	{
		RunenMob_10_Amount = (RunenMob_10_Amount +1);
		return TRUE;
	}
	else if (Hlp_StrCmp (Npc_GetNearestWP (self), "WP_PAT_UG_RUNENSTEIN_11") && (RunenMob_11_Amount_MAX > RunenMob_11_Amount))
	{
		RunenMob_11_Amount = (RunenMob_11_Amount +1);
		return TRUE;
	};
};

INSTANCE PC_Runensteinbrocken_Hacken (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Runensteinbrocken_Hacken_Condition;
	information	= PC_Runensteinbrocken_Hacken_Info;
	permanent	= 1;
	important	= 0;
	description	= "Wystarczy je pokroic.";
};

FUNC INT PC_Runensteinbrocken_Hacken_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Runensteinbrocken)
	{
		return 1;
	};
};

FUNC VOID PC_Runensteinbrocken_Hacken_Info()
{
	var int ErzKriegChance;
	var int ErzAnzahl;
	ErzKriegChance	=	Hlp_Random(100);
	ErzAnzahl	=	Hlp_Random(100);

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

	if (B_RunenMob_Bestimmung() == TRUE)
	{
		if (Erzhackchance >= ErzKriegChance)
		{
			CreateInvItems	(hero, ItMi_RuneBlank, 1);
			PrintScreen	("1 kamien runowy siekany!", -1, -1, FONT_ScreenSmall, 2);
			Truemmer_Count = 0;
		}
		else
		{
			PrintScreen	("Fragmenty bruku przelatuja przez powietrze!", -1, -1, FONT_ScreenSmall, 2);			
			Truemmer_Count = (Truemmer_Count +1);
		};
	}
	else
	{
		PrintScreen ("Nie ma tu nic do zrobienia.", -1, -1, FONT_ScreenSmall, 2);	
		B_ENDPRODUCTIONDIALOG ();
	};
};

INSTANCE PC_Runensteinbrocken_TSchlag (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Runensteinbrocken_TSchlag_Condition;
	information		= PC_Runensteinbrocken_TSchlag_Info;
	permanent		= TRUE;
	description		= ""; 
};

FUNC INT PC_Runensteinbrocken_TSchlag_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Runensteinbrocken)
	&& (Truemmer_Count >= 2)
	&& (Knows_Truemmerschlag == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Runensteinbrocken_TSchlag_Info()
{
	var int TruemmerChance;
	TruemmerChance = Hlp_Random (100);
		
	if (TruemmerChance < 5)
	{
			PrintScreen ("Nic nie....", -1, -1, FONT_ScreenSmall, 2);	
	}
	else
	{
		Snd_Play ("RAVENS_EARTHQUAKE3");
		Wld_PlayEffect("FX_EarthQuake",  self, self, 0, 0, 0, FALSE );
		
		
		if (TruemmerChance >= 85)
		{
			CreateInvItems (hero, ItMi_Runeblank, 2);	
			PrintScreen ("2 Kamienieunestones siekane! ...", -1, -1, FONT_ScreenSmall, 2);	
		}
		else 
		{
			CreateInvItems (hero, ItMi_Runeblank, 1);	
			PrintScreen ("1 kamien runowy siekany! ...", -1, -1, FONT_ScreenSmall, 2);	
		};
	};

	Truemmer_Count = 0;	
};

INSTANCE PC_Runensteinbrocken_Chance (C_Info)
{
	npc				= PC_Hero;
	nr				= 1;
	condition		= PC_Runensteinbrocken_Chance_Condition;
	information		= PC_Runensteinbrocken_Chance_Info;
	permanent		= TRUE;
	description		= "(Kontrola wlasnej zdolnosci)"; 
};

FUNC INT PC_Runensteinbrocken_Chance_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Runensteinbrocken)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Runensteinbrocken_Chance_Info()
{
	var string ConcatText;

	
	if (ErzHackChance < 20) 
	{
		ConcatText = ConcatStrings ("poczatkujacy absolutny (", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 40) 
	{
		ConcatText = ConcatStrings ("calkiem rozsadny poszukiwacz (" , IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 55) 
	{
		ConcatText = ConcatStrings ("doswiadczony poszukiwacz (", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 75) 
	{
		ConcatText = ConcatStrings ("Buddler prawdziwy ( ", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 90) 
	{
		ConcatText = ConcatStrings ("dobry kopacz ( ", IntToString (ErzHackChance));
	}
	else if (ErzHackChance < 98) 
	{
		ConcatText = ConcatStrings ("Buddler gl�wny ( ", IntToString (ErzHackChance));
	}
	else
	{
		ConcatText = ConcatStrings ("Buddler Guru ( ", IntToString (ErzHackChance));
	};
	
	ConcatText = ConcatStrings (concatText, " procent");
	
	PrintScreen (concatText, -1, -1, FONT_ScreenSmall,2);
};
	
INSTANCE PC_Runensteinbrocken_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Runensteinbrocken_EXIT_Condition;
	information	= PC_Runensteinbrocken_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Runensteinbrocken_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Runensteinbrocken)
	&& (Hacken	==	FALSE)
	{
		return 1;
	};
};

FUNC VOID PC_Runensteinbrocken_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
	Truemmer_Count = 0;
};
