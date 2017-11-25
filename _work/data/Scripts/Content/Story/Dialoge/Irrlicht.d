FUNC VOID B_FollowMe_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_FollowMe_Wisp_15_00"); //Just follow me.
};

FUNC VOID B_Fight_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_Fight_Wisp_15_00"); //Fight with me.
};

FUNC VOID B_MagicPlace_Wisp ()
{
	AI_Output		(hero, self, "Info_Mod_Irrlicht_MagicPlace_Wisp_15_00"); //Find a magical place.
};

INSTANCE Info_Mod_Irrlicht_DetectItems		(C_INFO)
{
	npc		 = 	Wisp_Detector;
	nr		 = 	1;
	condition	 = 	Info_Mod_Irrlicht_DetectItems_Condition;
	information	 = 	Info_Mod_Irrlicht_DetectItems_Info;
	permanent	 = 	TRUE;

	description	 = 	"Find me something!";
};

FUNC INT Info_Mod_Irrlicht_DetectItems_Condition ()
{
	return TRUE;
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_Info ()
{
	AI_Output	(hero, self, "Info_Mod_Irrlicht_DetectItems_15_00"); //Find me something!

	Info_ClearChoices	(Info_Mod_Irrlicht_DetectItems);

	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Just follow me.", Info_Mod_Irrlicht_DetectItems_Follow );
	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I'm looking for something important.", Info_Mod_Irrlicht_DetectItems_Quest);

	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] 	== TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need runes and scrolls.", Info_Mod_Irrlicht_DetectItems_RUNE );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need gold, keys and utensils", Info_Mod_Irrlicht_DetectItems_NONE );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need ranged weapons and ammunition.", Info_Mod_Irrlicht_DetectItems_FF );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NF] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need melee weapons.", Info_Mod_Irrlicht_DetectItems_NF );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] 	== TRUE)		
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need food and plants.", Info_Mod_Irrlicht_DetectItems_FOOD );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_MAGIC] == TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need rings and amulets.", Info_Mod_Irrlicht_DetectItems_MAGIC );
	};
	if (PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] == TRUE)	
	{	
		Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "I need all kinds of potions.", Info_Mod_Irrlicht_DetectItems_POTIONS );
	};

	Info_AddChoice	(Info_Mod_Irrlicht_DetectItems, "Just find everything you can.", Info_Mod_Irrlicht_DetectItems_ALL );
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
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_ALL_15_00"); //Find me everything you can find.
	WispSearching = WispSearch_ALL;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_Quest ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_Quest_15_00"); //I'm looking for something important.
	WispSearching = WispSearch_Quest;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_POTIONS ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_POTIONS_15_00"); //I need all kinds of potions.
	WispSearching = WispSearch_POTIONS;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_MAGIC ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_MAGIC_15_00"); //I need rings and amulets.
	WispSearching = WispSearch_MAGIC;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_FOOD ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_FOOD_15_00"); //I need food and plants.
	WispSearching = WispSearch_FOOD;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_NF ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_NF_15_00"); //I need melee weapons.
	WispSearching = WispSearch_NF;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_FF ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_FF_15_00"); //I need ranged weapons and ammunition.
	WispSearching = WispSearch_FF;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_NONE ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_NONE_15_00"); //I need gold, keys and utensils
	WispSearching = WispSearch_NONE;
	B_IrrlichtBeep();
	AI_StopProcessInfos (self);
};

FUNC VOID Info_Mod_Irrlicht_DetectItems_RUNE ()
{
	AI_Output			(hero, self, "Info_Mod_Irrlicht_DetectItems_RUNE_15_00"); //I need runes and scrolls.
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

	description	 = 	"Find a magical place.";
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

	description	 = 	"Just follow me.";
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

	description	 = 	"Fight with me.";
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
