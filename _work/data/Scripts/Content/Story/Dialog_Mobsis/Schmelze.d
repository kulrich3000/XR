FUNC VOID SCHMELZE_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		B_SetAivar(self, AIV_INVINCIBLE, TRUE);
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_SCHMELZE;
		Ai_ProcessInfos (her);
	};
};

INSTANCE PC_Schmelze_Rohstahl (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_Rohstahl_Condition;
	information	= PC_Schmelze_Rohstahl_Info;
	permanent	= 1;
	important	= 0;
	description	= "Heating a crude steel";
};

FUNC INT PC_Schmelze_Rohstahl_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItMiSwordRaw) > 0)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_Rohstahl_Info()
{
	CreateInvItems	(hero, ItMiSwordRawHot, 1);
	
	Print ("Crude steel heated");

	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 1);
};

INSTANCE PC_Schmelze_Rohstahl_Alle (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_Rohstahl_Alle_Condition;
	information	= PC_Schmelze_Rohstahl_Alle_Info;
	permanent	= 1;
	important	= 0;
	description	= "Heat all crude steel";
};

FUNC INT PC_Schmelze_Rohstahl_Alle_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItMiSwordRaw) > 0)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_Rohstahl_Alle_Info()
{
	CreateInvItems	(hero, ItMiSwordRawHot, Npc_HasItems(hero, ItMiSwordRaw)+1);
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMiSwordRaw) + 1), " Crude steel heated"));

	Npc_RemoveInvItems	(hero, ItMiSwordRaw, Npc_HasItems(hero, ItMiSwordRaw));
};

INSTANCE PC_Schmelze_Metallblock (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_Metallblock_Condition;
	information	= PC_Schmelze_Metallblock_Info;
	permanent	= 1;
	important	= 0;
	description	= "Production of metal blocks (1x crude steel)";
};

FUNC INT PC_Schmelze_Metallblock_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItMiSwordRaw) > 0)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_Metallblock_Info()
{
	Npc_RemoveInvItems	(hero, ItMiSwordRaw, 1);

	CreateInvItems	(hero, ItMi_Metallblock, 4);
	
	Print ("4x metal block won");
};

INSTANCE PC_Schmelze_LichKamm (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_LichKamm_Condition;
	information	= PC_Schmelze_LichKamm_Info;
	permanent	= 1;
	important	= 0;
	description	= "Destroy comb";
};

FUNC INT PC_Schmelze_LichKamm_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItMi_Kamm) == 1)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_LichKamm_Info()
{
	Npc_RemoveInvItems	(hero, ItMi_Kamm, 1);

	Mod_NL_HasKamm = 2;

	B_SetTopicStatus	(TOPIC_MOD_NL_MOORHEXE, LOG_SUCCESS);
	B_LogEntry	(TOPIC_MOD_NL_DRACHEN, "The comb has been destroyed and light has been robbed of its immortality. Even the dragons should no longer be denied access to the realm of the dead.");
};

INSTANCE PC_Schmelze_MerkwuerdigesDing (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_MerkwuerdigesDing_Condition;
	information	= PC_Schmelze_MerkwuerdigesDing_Info;
	permanent	= 1;
	important	= 0;
	description	= "Putting strange thing in the fire";
};

FUNC INT PC_Schmelze_MerkwuerdigesDing_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItMi_MerkwuerdigesDing) >= 1)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_MerkwuerdigesDing_Info()
{
	CreateInvItems	(hero, ItMi_MerkwuerdigeDinger, 10);
	
	Npc_RemoveInvItems	(hero, ItMi_MerkwuerdigesDing, 1);

	Print	("10 strange little things gotten!");
};

INSTANCE PC_Schmelze_Golemherz (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_Golemherz_Condition;
	information	= PC_Schmelze_Golemherz_Info;
	permanent	= 1;
	important	= 0;
	description	= "Putting swamp golem hearts on fire";
};

FUNC INT PC_Schmelze_Golemherz_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (Npc_HasItems(hero, ItAt_SwampGolemHeart) >= 1)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_Golemherz_Info()
{
	CreateInvItems	(hero, ItMi_HerzFragment, 10*Npc_HasItems(hero, ItAt_SwampGolemHeart));
	
	Npc_RemoveInvItems	(hero, ItAt_SwampGolemHeart, Npc_HasItems(hero, ItAt_SwampGolemHeart));

	Print	("Get Golem heart fragments!");
};

INSTANCE PC_Schmelze_Waffen (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_Waffen_Condition;
	information	= PC_Schmelze_Waffen_Info;
	permanent	= 1;
	important	= 0;
	description	= "Melting down weapons";
};

FUNC INT PC_Schmelze_Waffen_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	&& (WaffenSchmelzen_Perk == TRUE)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_Waffen_Info()
{
	Info_ClearChoices	(PC_Schmelze_Waffen);

	Info_AddChoice	(PC_Schmelze_Waffen, DIALOG_BACK, PC_Schmelze_Waffen_BACK);

	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostiges Schwert (gesch�rft)", PC_Schmelze_Waffen_RostigesSchwert_G);
	};

	if (Npc_HasItems(hero, ItMw_1h_MISC_Sword) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostiges Schwert", PC_Schmelze_Waffen_RostigesSchwert);
	};

	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostiger Zweih�nder (gesch�rft)", PC_Schmelze_Waffen_RostigerZweihaender_G);
	};

	if (Npc_HasItems(hero, ItMw_2H_Sword_M_01) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostiger Zweih�nder", PC_Schmelze_Waffen_RostigerZweihaender);
	};

	if (Npc_HasItems(hero, ItMw_1h_MISC_Axe_Geschaerft) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostige Axt (gesch�rft)", PC_Schmelze_Waffen_RostigeAxt_G);
	};

	if (Npc_HasItems(hero, ItMw_1h_MISC_Axe) > 0)
	{
		Info_AddChoice	(PC_Schmelze_Waffen, "Rostige Axt", PC_Schmelze_Waffen_RostigeAxt);
	};
};

FUNC VOID PC_Schmelze_Waffen_BACK()
{
	Info_ClearChoices	(PC_Schmelze_Waffen);
};

FUNC VOID PC_Schmelze_Waffen_RostigesSchwert_G()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Sword_Geschaerft));
};

FUNC VOID PC_Schmelze_Waffen_RostigesSchwert()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_1h_MISC_Sword));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Sword)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Sword, Npc_HasItems(hero, ItMw_1h_MISC_Sword));
};

FUNC VOID PC_Schmelze_Waffen_RostigerZweihaender_G()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01_Geschaerft, Npc_HasItems(hero, ItMw_2H_Sword_M_01_Geschaerft));
};

FUNC VOID PC_Schmelze_Waffen_RostigerZweihaender()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_2H_Sword_M_01));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_2H_Sword_M_01)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_2H_Sword_M_01, Npc_HasItems(hero, ItMw_2H_Sword_M_01));
};

FUNC VOID PC_Schmelze_Waffen_RostigeAxt_G()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_1h_MISC_Axe_Geschaerft));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Axe_Geschaerft)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Axe_Geschaerft, Npc_HasItems(hero, ItMw_1h_MISC_Axe_Geschaerft));
};

FUNC VOID PC_Schmelze_Waffen_RostigeAxt()
{
	CreateInvItems	(hero, ItMiSwordraw, Npc_HasItems(hero, ItMw_1h_MISC_Axe));
	
	Print (ConcatStrings(IntToString(Npc_HasItems(hero, ItMw_1h_MISC_Axe)), " Raw steel received"));

	Npc_RemoveInvItems	(hero, ItMw_1h_MISC_Axe, Npc_HasItems(hero, ItMw_1h_MISC_Axe));
};

INSTANCE PC_Schmelze_EXIT (C_INFO)
{
	npc		= PC_Hero;
	nr		= 1;
	condition	= PC_Schmelze_EXIT_Condition;
	information	= PC_Schmelze_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT PC_Schmelze_EXIT_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_Schmelze)
	{
		return 1;
	};
};

FUNC VOID PC_Schmelze_EXIT_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
