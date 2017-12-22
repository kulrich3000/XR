FUNC VOID B_FollowMe_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_FollowMe_Wisp_15_00"); //Po prostu podazaj za mna.
};

FUNC VOID B_Fight_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_Fight_Wisp_15_00"); //Walczyc ze mna.
};

FUNC VOID B_MagicPlace_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_MagicPlace_Wisp_15_00"); //Znajdz magiczne miejsce.
};

INSTANCE Info_Mod_Irrlicht_DetectItems		(C_INFO)
{
	npc		 = 	Wisp_Detector;
	nr		 = 	1;
	condition	 = 	Info_Mod_Irrlicht_DetectItems_Condition;
	information	 = 	Info_Mod_Irrlicht_DetectItems_Info;
	permanent	 = 	TRUE;

	description	 = 	"Znajdz mi cos!";
};

FUNC INT Info_Mod_Irrlicht_DetectItems_Condition ()
{
	return TRUE;
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_Info ()
{
	AI_Output	(hero, self, "Info_Mod_Irrlicht_DetectItems_15_00"); //Znajdz mi cos!

	Info_ClearChoices	(Info_Mod_Irrlicht_DetectItems);

	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Po prostu podazaj za mna.", Info_Mod_Irrlicht_DetectItems_Follow );
	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Szukam czegos waznego.", Info_Mod_Irrlicht_DetectItems_Quest);

	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] 	== TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje runy i zwoje.", Info_Mod_Irrlicht_DetectItems_RUNE );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje zlota, kluczy i przyborów.", Info_Mod_Irrlicht_DetectItems_NONE );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje broni i amunicji na odleglosc.", Info_Mod_Irrlicht_DetectItems_FF );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje broni do walki wrecz.", Info_Mod_Irrlicht_DetectItems_NF );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje zywnosci i roslin.", Info_Mod_Irrlicht_DetectItems_FOOD );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje pierscieni i amuletów.", Info_Mod_Irrlicht_DetectItems_MAGIC );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Potrzebuje wszelkiego rodzaju eliksirów.", Info_Mod_Irrlicht_DetectItems_POTIONS );
	};

	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Znajdz tylko wszystko, co mozesz.", Info_Mod_Irrlicht_DetectItems_ALL );
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_Follow ()
{
	B_FollowMe_Wisp ();
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
	WispSearching = WispSearch_Follow;
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_ALL ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_ALL_15_00"); //Znajdz mi wszystko, co mozesz znalezc.
	WispSearching = WispSearch_ALL;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_Quest ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_Quest_15_00"); //Szukam czegos waznego.
	WispSearching = WispSearch_Quest;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_POTIONS ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_POTIONS_15_00"); //Potrzebuje wszelkiego rodzaju eliksirów.
	WispSearching = WispSearch_POTIONS;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_MAGIC ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_MAGIC_15_00"); //Potrzebuje pierscieni i amuletów.
	WispSearching = WispSearch_MAGIC;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_FOOD ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_FOOD_15_00"); //Potrzebuje zywnosci i roslin.
	WispSearching = WispSearch_FOOD;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_NF ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_NF_15_00"); //Potrzebuje broni do walki wrecz.
	WispSearching = WispSearch_NF;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_FF ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_FF_15_00"); //Potrzebuje broni i amunicji na odleglosc.
	WispSearching = WispSearch_FF;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_NONE ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_NONE_15_00"); //Potrzebuje zlota, kluczy i przyborów.
	WispSearching = WispSearch_NONE;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_RUNE ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_RUNE_15_00"); //Potrzebuje runy i zwoje.
	WispSearching = WispSearch_RUNE;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Irrlicht_MagicPlace		(C_INFO)
{
	npc		 = 	Wisp_Detector;
	nr		 = 	1;
	condition	 = 	Info_Mod_Irrlicht_MagicPlace_Condition;
	information	 = 	Info_Mod_Irrlicht_MagicPlace_Info;
	permanent	 = 	TRUE;

	description	 = 	"Znajdz magiczne miejsce.";
};

FUNC INT Info_Mod_Irrlicht_MagicPlace_Condition ()
{
	return TRUE;
};

FUNC VOID Info_Mod_Irrlicht_MagicPlace_Info ()
{
	B_MagicPlace_Wisp ();
	B_IrrlichtBeep();

	var int SearchMagicPlace;
	SearchMagicPlace = 0;

	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_04"))
		&& (Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_05"))
		&& (Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE") <= Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE"))
		&& (Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE") <= Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01"))
		&& (Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_06"))
		{
			self.wp = "NW_LITTLESTONEHENDGE";
			SearchMagicPlace = 1;
		}
		else if (Npc_GetDistToWP(self, "WP_STEINKREIS_04") <= Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_04") <= Npc_GetDistToWP(self, "WP_STEINKREIS_05"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_04") <= Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_04") <= Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_04") <= Npc_GetDistToWP(self, "WP_STEINKREIS_06"))
		{
			self.wp = "WP_STEINKREIS_04";
			SearchMagicPlace = 1;
		}
		else if (Npc_GetDistToWP(self, "WP_STEINKREIS_05") <= Npc_GetDistToWP(self, "WP_STEINKREIS_04"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_05") <= Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_05") <= Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_05") <= Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_05") <= Npc_GetDistToWP(self, "WP_STEINKREIS_06"))
		{
			self.wp = "WP_STEINKREIS_05";
			SearchMagicPlace = 1;
		}
		else if (Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_04"))
		&& (Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_05"))
		&& (Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE") <= Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE"))
		&& (Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE") <= Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01"))
		&& (Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE") <= Npc_GetDistToWP(self, "WP_STEINKREIS_06"))
		{
			self.wp = "NW_MAGECAVE_RUNE";
			SearchMagicPlace = 1;
		}
		else if (Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01") <= Npc_GetDistToWP(self, "WP_STEINKREIS_04"))
		&& (Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01") <= Npc_GetDistToWP(self, "WP_STEINKREIS_05"))
		&& (Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01") <= Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE"))
		&& (Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01") <= Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE"))
		&& (Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01") <= Npc_GetDistToWP(self, "WP_STEINKREIS_06"))
		{
			self.wp = "NW_TROLLAREA_TROLLROCKCAVE_01";
			SearchMagicPlace = 1;
		}
		else if (Npc_GetDistToWP(self, "WP_STEINKREIS_06") <= Npc_GetDistToWP(self, "WP_STEINKREIS_04"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_06") <= Npc_GetDistToWP(self, "WP_STEINKREIS_05"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_06") <= Npc_GetDistToWP(self, "NW_MAGECAVE_RUNE"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_06") <= Npc_GetDistToWP(self, "NW_TROLLAREA_TROLLROCKCAVE_01"))
		&& (Npc_GetDistToWP(self, "WP_STEINKREIS_06") <= Npc_GetDistToWP(self, "NW_LITTLESTONEHENDGE"))
		{
			self.wp = "WP_STEINKREIS_06";
			SearchMagicPlace = 1;
		};
	};

	if (SearchMagicPlace == 1)
	{
		AI_StopProcessInfos (self);

		AI_StartState	(self, ZS_Guide_Player, 0, "");
	};
};

INSTANCE Info_Mod_Irrlicht_Follow		(C_INFO)
{
	npc		 = 	Wisp_Detector;
	nr		 = 	1;
	condition	 = 	Info_Mod_Irrlicht_Follow_Condition;
	information	 = 	Info_Mod_Irrlicht_Follow_Info;
	permanent	 = 	TRUE;

	description	 = 	"Po prostu podazaj za mna.";
};

FUNC INT Info_Mod_Irrlicht_Follow_Condition ()
{
	return TRUE;
};

FUNC VOID Info_Mod_Irrlicht_Follow_Info ()
{
	B_FollowMe_Wisp ();
	WispSearching = WispSearch_Follow;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Irrlicht_Fight		(C_INFO)
{
	npc		 = 	Wisp_Detector;
	nr		 = 	1;
	condition	 = 	Info_Mod_Irrlicht_Fight_Condition;
	information	 = 	Info_Mod_Irrlicht_Fight_Info;
	permanent	 = 	TRUE;

	description	 = 	"Walczyc ze mna.";
};

FUNC INT Info_Mod_Irrlicht_Fight_Condition ()
{
	return FALSE;
};

FUNC VOID Info_Mod_Irrlicht_Fight_Info ()
{
	B_Fight_Wisp ();
	WispSearching = WispSearch_Fight;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

INSTANCE Info_Mod_Irrlicht_EXIT   (C_INFO)
{
	npc         = Wisp_Detector;
	nr          = 1;
	condition   = Info_Mod_Irrlicht_EXIT_Condition;
	information = Info_Mod_Irrlicht_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT Info_Mod_Irrlicht_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID Info_Mod_Irrlicht_EXIT_Info()
{
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};
