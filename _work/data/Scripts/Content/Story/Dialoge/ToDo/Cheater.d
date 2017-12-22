INSTANCE Info_Mod_Cheater_Kapitel3 (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_Kapitel3_Condition;
	information	= Info_Mod_Cheater_Kapitel3_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chapter 2 End";
};

FUNC INT Info_Mod_Cheater_Kapitel3_Condition()
{
	if (Kapitel < 3)
	&& (Mod_Gilde > 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cheater_Kapitel3_Info()
{
	CreateInvItems	(hero, ItMi_PortalRing_Addon, 1);
	CreateInvItems	(hero, ItMi_Focus_Troll, 1);
	CreateInvItems	(hero, ItMi_Focus_Bergfestung, 1);
	CreateInvItems	(hero, ItMi_Focus_Kloster, 1);
	CreateInvItems	(hero, ItMi_Focus_Meer, 1);
	CreateInvItems	(hero, ItMi_Focus_Stonehenge, 1);
};

INSTANCE Info_Mod_Cheater_Riddlerquest (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_Riddlerquest_Condition;
	information	= Info_Mod_Cheater_Riddlerquest_Info;
	permanent	= 0;
	important	= 0;
	description	= "riding quest";
};

FUNC INT Info_Mod_Cheater_Riddlerquest_Condition()
{
	if (CurrentLevel == MINENTAL_ZEN)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cheater_Riddlerquest_Info()
{
	Wld_InsertNpc	(Mod_680_DMB_Xardas_MT, Npc_GetNearestWP(hero));
	CreateInvItems	(hero, theriddle6, 1);
	Wld_InsertNpc	(Bau_989_Riddler, "OC1");

	AI_StopProcessInfos	(self);

	AI_Teleport	(hero, "WP_ORC_XERES_SIT_THRONE");
};

INSTANCE Info_Mod_Cheater_Kapitel4 (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_Kapitel4_Condition;
	information	= Info_Mod_Cheater_Kapitel4_Info;
	permanent	= 0;
	important	= 0;
	description	= "Chapter 4";
};

FUNC INT Info_Mod_Cheater_Kapitel4_Condition()
{
	if (Kapitel < 4)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cheater_Kapitel4_Info()
{
	Kapitel = 4;
};

INSTANCE Info_Mod_Cheater_Gildenwahl (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_Gildenwahl_Condition;
	information	= Info_Mod_Cheater_Gildenwahl_Info;
	permanent	= 0;
	important	= 0;
	description	= "fraternity";
};

FUNC INT Info_Mod_Cheater_Gildenwahl_Condition()
{
	if (Mod_Gilde == 0)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_Info()
{
	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);

	Info_AddChoice	(Info_Mod_Cheater_Gildenwahl, "Water Novice", Info_Mod_Cheater_Gildenwahl_WNOV);
	Info_AddChoice	(Info_Mod_Cheater_Gildenwahl, "Mercenary", Info_Mod_Cheater_Gildenwahl_SLD);
	Info_AddChoice	(Info_Mod_Cheater_Gildenwahl, "Black novice", Info_Mod_Cheater_Gildenwahl_SNOV);
	Info_AddChoice	(Info_Mod_Cheater_Gildenwahl, "Miliz", Info_Mod_Cheater_Gildenwahl_MIL);
	Info_AddChoice	(Info_Mod_Cheater_Gildenwahl, "Fire Novice", Info_Mod_Cheater_Gildenwahl_FNOV);
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_SLD()
{
	Mod_Gilde = 4;

	hero.guild = GIL_MIL;

	CreateInvItems	(hero, ItAr_SLD_L, 1);

	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_WNOV()
{
	Mod_Gilde = 9;

	hero.guild = GIL_NOV;

	CreateInvItems	(hero, ItAr_Wassernovize1, 1);

	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_SNOV()
{
	Mod_Gilde = 12;

	hero.guild = GIL_KDF;

	CreateInvItems	(hero, ItAr_NOV_DMB_01, 1);

	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_MIL()
{
	Mod_Gilde = 1;

	hero.guild = GIL_PAL;

	CreateInvItems	(hero, ItAr_MIL_L, 1);

	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);
};

FUNC VOID Info_Mod_Cheater_Gildenwahl_FNOV()
{
	Mod_Gilde = 6;

	hero.guild = GIL_VLK;

	CreateInvItems	(hero, ItAr_NOV_L, 1);

	Info_ClearChoices	(Info_Mod_Cheater_Gildenwahl);
};

INSTANCE Info_Mod_Cheater_Perks (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_Perks_Condition;
	information	= Info_Mod_Cheater_Perks_Info;
	permanent	= 1;
	important	= 0;
	description	= "Unlock Perks";
};

FUNC INT Info_Mod_Cheater_Perks_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cheater_Perks_Info()
{
	Info_ClearChoices	(Info_Mod_Cheater_Perks);

	Info_AddChoice	(Info_Mod_Cheater_Perks, "Back", Info_Mod_Cheater_Perks_BACK);

	if (ZweihandAlsEinhand_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Two-handed as one hand", Info_Mod_Cheater_Perks_ZweihandAlsEinhand);
	};
	if (Werwolf_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "werewolf", Info_Mod_Cheater_Perks_Werwolf);
	};
	if (WaffenSchmelzen_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Melting down weapons", Info_Mod_Cheater_Perks_Schmelzen);
	};
	if (DefenseBreak_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "break defense", Info_Mod_Cheater_Perks_DefenseBreak);
	};
	if (Unsichtbarkeit_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "invisibility", Info_Mod_Cheater_Perks_Unsichtbarkeit);
	};
	if (Standfest_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "steadfast", Info_Mod_Cheater_Perks_Standfest);
	};
	if (Sprinten_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "sprint", Info_Mod_Cheater_Perks_Sprinten);
	};
	if (Slowmotion_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "slow motion", Info_Mod_Cheater_Perks_Slowmotion);
	};
	if (SchnellesLernen_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Fast learning", Info_Mod_Cheater_Perks_SchnellesLernen);
	};
	if (Schattenlaeufer_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Schattenläufer", Info_Mod_Cheater_Perks_Schattenlaeufer);
	};
	if (Orktoeter_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "orc killer", Info_Mod_Cheater_Perks_Orktoeter);
	};
	if (Knockout_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "knocking down", Info_Mod_Cheater_Perks_Knockout);
	};
	if (Menschtoeter_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "human killers", Info_Mod_Cheater_Perks_Menschtoeter);
	};
	if (Konter_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "retaliation", Info_Mod_Cheater_Perks_Konter);
	};
	if (Schaerfen_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Sharpening blades", Info_Mod_Cheater_Perks_Schaerfen);
	};
	if (EwigeNacht_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "Eternal Night", Info_Mod_Cheater_Perks_EwigeNacht);
	};
	if (Delirium_Perk == FALSE)
	{
		Info_AddChoice	(Info_Mod_Cheater_Perks, "delirium", Info_Mod_Cheater_Perks_Delirium);
	};
};

FUNC VOID Info_Mod_Cheater_Perks_BACK()
{
	Info_ClearChoices	(Info_Mod_Cheater_Perks);
};

FUNC VOID Info_Mod_Cheater_Perks_ZweihandAlsEinhand()
{
	ZweihandAlsEinhand_Perk = TRUE;

	if (hero.HitChance[NPC_TALENT_1H] >= 60)
	{
		Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST2.MDS");
	}
	else if (hero.HitChance[NPC_TALENT_1H] >= 30)
	{
		Mdl_ApplyOverlayMds	(hero, "HUMANS_1H2HST1.MDS");
	};
};

FUNC VOID Info_Mod_Cheater_Perks_DefenseBreak()
{
	DefenseBreak_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Standfest()
{
	Standfest_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Werwolf()
{
	Werwolf_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Schmelzen()
{
	WaffenSchmelzen_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Unsichtbarkeit()
{
	Unsichtbarkeit_Perk = TRUE;

	CreateInvItems	(hero, ItRu_Unsichtbarkeit, 1);

	Npc_SetTalentSkill (hero, NPC_TALENT_MAGE, 6);
};

FUNC VOID Info_Mod_Cheater_Perks_Sprinten()
{
	Sprinten_Perk = TRUE;

	Sprint_Ausdauer_MAX = 200;
	Sprint_Ausdauer = 200;
};

FUNC VOID Info_Mod_Cheater_Perks_Slowmotion()
{
	Slowmotion_Perk = TRUE;

	Slowmotiontime_max = 200;
	Slowmotiontime = 200;
};

FUNC VOID Info_Mod_Cheater_Perks_SchnellesLernen()
{
	SchnellesLernen_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Schattenlaeufer()
{
	Schattenlaeufer_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Konter()
{
	Konter_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Schaerfen()
{
	Schaerfen_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Orktoeter()
{
	Orktoeter_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Knockout()
{
	Knockout_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Menschtoeter()
{
	Menschtoeter_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_EwigeNacht()
{
	EwigeNacht_Perk = TRUE;
};

FUNC VOID Info_Mod_Cheater_Perks_Delirium()
{
	Delirium_Perk = TRUE;
};

INSTANCE Info_Mod_Cheater_EXIT (C_INFO)
{
	npc		= Cheater;
	nr		= 1;
	condition	= Info_Mod_Cheater_EXIT_Condition;
	information	= Info_Mod_Cheater_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Cheater_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Cheater_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
