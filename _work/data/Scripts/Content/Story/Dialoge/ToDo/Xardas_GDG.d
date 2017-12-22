INSTANCE Info_Mod_Xardas_GDG_Ritualplatz (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_Ritualplatz_Condition;
	information	= Info_Mod_Xardas_GDG_Ritualplatz_Info;
	permanent	= 0;
	important	= 0;
	description	= "I found the ritual site.";
};

FUNC INT Info_Mod_Xardas_GDG_Ritualplatz_Condition()
{
	if (Mod_Ritualplatz_Used == TRUE)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_GDG_Ritualplatz_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_GDG_Ritualplatz_15_00"); //I found the ritual site.
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Ritualplatz_14_01"); //We'll leave immediately. I'll meet you in the cave. Don't forget the god guns.

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "WAITFORRITUAL");
	Npc_ExchangeRoutine	(Mod_6003_KDW_Saturas_GDG, "WAITFORRITUAL");
	Npc_ExchangeRoutine	(Mod_6002_KDF_Pyrokar_GDG, "WAITFORRITUAL");

	B_GivePlayerXP	(2000);

	B_LogEntry	(TOPIC_MOD_URIZIEL, "Xardas and the others immediately made their way to the cave. I'm supposed to meet her there.");
};

INSTANCE Info_Mod_Xardas_GDG_SeelensteineEinsetzen (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_SeelensteineEinsetzen_Condition;
	information	= Info_Mod_Xardas_GDG_SeelensteineEinsetzen_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_GDG_SeelensteineEinsetzen_Condition()
{
	if (Npc_GetDistToWP(self, "WP_GDG_RITUAL_XARDAS") < 1000)
	&& (SoulStoneEingesetzt < 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_GDG_SeelensteineEinsetzen_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_SeelensteineEinsetzen_14_00"); //You should put the soul stones into the pedestal in this room so that we can start the ritual.

	AI_StopProcessInfos	(self);
};

INSTANCE Info_Mod_Xardas_GDG_Ritual (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_Ritual_Condition;
	information	= Info_Mod_Xardas_GDG_Ritual_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_GDG_Ritual_Condition()
{
	if (Npc_GetDistToWP(self, "WP_GDG_RITUAL_XARDAS") < 1000)
	&& ((Npc_HasItems(hero, ItMw_Adanos_Stab_Magieteil) == 1)
	|| (Npc_HasItems(hero, ItMw_Adanos_Stab_Kampfteil) == 1))
	&& (Npc_HasItems(hero, Holy_Hammer_MIS) == 1)
	&& ((Npc_HasItems(hero, ItMw_BeliarWeapon_1H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_1H_20) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_01) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_02) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_03) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_04) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_05) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_06) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_07) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_08) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_09) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_10) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_11) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_12) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_13) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_14) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_15) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_16) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_17) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_18) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_19) == 1)
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon_2H_20) == 1))
	&& (SoulStoneEingesetzt == 3)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_GDG_Ritual_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Ritual_14_00"); //All right, we'll start now.

	AI_UnequipWeapons	(hero);

	Npc_RemoveInvItems	(hero, ItMw_Adanos_Stab_Magieteil, 1);
	Npc_RemoveInvItems	(hero, ItMw_Adanos_Stab_Kampfteil, 1);
	Npc_RemoveInvItems	(hero, Holy_Hammer_MIS, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_Raven, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_01, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_02, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_03, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_04, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_05, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_06, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_07, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_08, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_09, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_10, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_11, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_12, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_13, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_14, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_15, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_16, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_17, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_18, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_19, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_1H_20, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_01, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_02, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_03, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_04, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_05, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_06, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_07, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_08, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_09, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_10, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_11, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_12, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_13, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_14, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_15, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_16, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_17, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_18, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_19, 1);
	Npc_RemoveInvItems	(hero, ItMw_BeliarWeapon_2H_20, 1);

	AI_EquipBestMeleeWeapon	(hero);

	AI_StopProcessInfos	(self);

	B_StartOtherRoutine	(self, "RITUAL");
	B_StartOtherRoutine	(Mod_6003_KDW_Saturas_GDG, "RITUAL");
	B_StartOtherRoutine	(Mod_6002_KDF_Pyrokar_GDG, "RITUAL");
};

INSTANCE Info_Mod_Xardas_GDG_Uriziel (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_Uriziel_Condition;
	information	= Info_Mod_Xardas_GDG_Uriziel_Info;
	permanent	= 0;
	important	= 1;
};

FUNC INT Info_Mod_Xardas_GDG_Uriziel_Condition()
{
	if (Npc_HasItems(hero, Uriziel_1H) == 1)
	|| (Npc_HasItems(hero, Uriziel_2H) == 1)
	|| (Npc_HasItems(hero, ItRu_MassDeath) == 1)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_GDG_Uriziel_Info()
{
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Uriziel_14_00"); //The ritual worked out. Uriziel is now more powerful than ever.
	AI_Output(hero, self, "Info_Mod_Xardas_GDG_Uriziel_15_01"); //Then it's time for the final battle?
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Uriziel_14_02"); //As soon as possible, yes. Come visit me tomorrow at my tower in Khorinis.
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Uriziel_14_03"); //Prepare yourself for your mission.
	AI_Output(self, hero, "Info_Mod_Xardas_GDG_Uriziel_14_04"); //Take the almanac, though. We found something that might be of interest to you.

	B_GiveInvItems	(self, hero, ItWr_GDG_Almanach_Offen, 1);

	AI_StopProcessInfos	(self);

	Npc_ExchangeRoutine	(self, "START");
	Npc_ExchangeRoutine	(Mod_6003_KDW_Saturas_GDG, "START");
	Npc_ExchangeRoutine	(Mod_6002_KDF_Pyrokar_GDG, "START");

	B_GivePlayerXP	(5000);

	B_LogEntry	(TOPIC_MOD_XERES, "The ritual worked and I now hold Uriziel in my hands. I shall prepare myself for the fight against Xeres and after the day I shall visit Xardas in his tower in Khorinis.");
	B_SetTopicStatus	(TOPIC_MOD_URIZIEL, LOG_SUCCESS);

	Mod_Xardas_Uriziel_Day = Wld_GetDay();
};

INSTANCE Info_Mod_Xardas_GDG_Lernen_MANA (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_Lernen_MANA_Condition;
	information	= Info_Mod_Xardas_GDG_Lernen_MANA_Info;
	permanent	= 1;
	important	= 0;
	description	= "I want to increase my magical powers.";
};

FUNC INT Info_Mod_Xardas_GDG_Lernen_MANA_Condition()
{
	if (hero.attribute[ATR_MANA_MAX] <= 300)
	{
		return 1;
	};
};

FUNC VOID Info_Mod_Xardas_GDG_Lernen_MANA_Info()
{
	AI_Output(hero, self, "Info_Mod_Xardas_GDG_Lernen_MANA_15_00"); //I want to increase my magical powers.

	Info_ClearChoices	(Info_Mod_Xardas_GDG_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_GDG_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_GDG_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_GDG_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_GDG_Lernen_MANA_BACK()
{
	if (hero.attribute[ATR_MANA_MAX] >= 300)
	{
		AI_Output(self, hero, "Info_Mod_Xardas_GDG_Lernen_MANA_BACK_14_01"); //Your magic skills are so good now, I can't teach you anything.
	};
	Info_ClearChoices	(Info_Mod_Xardas_GDG_Lernen_MANA);
};

FUNC VOID Info_Mod_Xardas_GDG_Lernen_MANA_5()
{
	B_TeachAttributePoints_New (self, hero, ATR_MANA_MAX, 5, 300);

	Info_ClearChoices	(Info_Mod_Xardas_GDG_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_GDG_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_GDG_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_GDG_Lernen_MANA_1);
};

FUNC VOID Info_Mod_Xardas_GDG_Lernen_MANA_1()
{
	B_TeachAttributePoints (self, hero, ATR_MANA_MAX, 1, 300);

	Info_ClearChoices	(Info_Mod_Xardas_GDG_Lernen_MANA);

	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, DIALOG_BACK, Info_Mod_Xardas_GDG_Lernen_MANA_BACK);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA5	, B_GetLearnCostAttribute_New(hero, ATR_MANA_MAX), ATR_MANA_MAX)	,Info_Mod_Xardas_GDG_Lernen_MANA_5);
	Info_AddChoice		(Info_Mod_Xardas_GDG_Lernen_MANA, B_BuildLearnString_New(PRINT_LearnMANA1	, B_GetLearnCostAttribute(hero, ATR_MANA_MAX), ATR_MANA_MAX)		,Info_Mod_Xardas_GDG_Lernen_MANA_1);
};

INSTANCE Info_Mod_Xardas_GDG_EXIT (C_INFO)
{
	npc		= Mod_843_DMB_Xardas_GDG;
	nr		= 1;
	condition	= Info_Mod_Xardas_GDG_EXIT_Condition;
	information	= Info_Mod_Xardas_GDG_EXIT_Info;
	permanent	= 1;
	important	= 0;
	description	= DIALOG_ENDE;
};

FUNC INT Info_Mod_Xardas_GDG_EXIT_Condition()
{
	return 1;
};

FUNC VOID Info_Mod_Xardas_GDG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
