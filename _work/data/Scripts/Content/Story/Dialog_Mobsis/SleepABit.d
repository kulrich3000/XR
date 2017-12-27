//****************************
// 		PC_Sleep
//****************************

func void PC_Sleep (var int t)
{
	AI_StopProcessInfos(self);		// [SK] ->muss hier stehen um das update zu gew�hrleisten

	PLAYER_MOBSI_PRODUCTION	=	MOBSI_NONE;
	B_SetAivar(self, AIV_INVINCIBLE, FALSE);

	if	(Wld_IsTime(00,00,t,00))
	{
		Wld_SetTime	(t,00);
	}
	else
	{
		t = t + 24;
		Wld_SetTime	(t,00);
	};

	Erkaeltungsdauer += 400;

	HatGetrunken = 0;

	// Krankheiten fortschreiten lassen

	if (BissDerFaeulnis_Time > 0)
	{
		BissDerFaeulnis_Time += 600;
	};
	if (HauchDerPestilenz_Time > 0)
	{
		HauchDerPestilenz_Time += 600;
	};

	B_HealGift	(0, 60);

	Wld_StopEffect("DEMENTOR_FX");

	// FIXME_Nico: dauert zu lange um es vernuenftig zu machen.
	// Wld_PlayEffect ("SLEEP_BLEND", hero, hero, 0, 0, 0, FALSE);

	if (Mod_WM_Verflucht == TRUE)
	{
 		PrintScreen	(PRINT_SleepOverObsessed, -1, -1, FONT_Screen, 2);
	}
	else if (Mod_EssPunkte == 0)
	&& (Mod_Esssystem == TRUE)
	{
		PrintScreen	("You fainted from hunger!", -1, -1, FONT_Screen, 2);
	}
	else if ((hero.guild == GIL_PAL)
	|| (hero.guild == GIL_VLK))
	&& (Mod_Gottstatus < 9)
	{
		PrintScreen	("You feel guilty!", -1, -1, FONT_Screen, 2);

		hero.attribute[ATR_HITPOINTS] += (hero.attribute[ATR_HITPOINTS_MAX]-hero.attribute[ATR_HITPOINTS])/2;
		hero.attribute[ATR_MANA] += (hero.attribute[ATR_MANA_MAX]-hero.attribute[ATR_MANA])/2;
	}
	else if (hero.guild == GIL_KDF)
	&& (Mod_Gottstatus > 4)
	{
		PrintScreen	("Beliar denies you complete recovery!", -1, -1, FONT_Screen, 2);

		hero.attribute[ATR_HITPOINTS] += (hero.attribute[ATR_HITPOINTS_MAX]-hero.attribute[ATR_HITPOINTS])/2;
		hero.attribute[ATR_MANA] += (hero.attribute[ATR_MANA_MAX]-hero.attribute[ATR_MANA])/2;
	}
	else if (hero.guild == GIL_NOV)
	&& ((Mod_Gottstatus > 8)
	|| (Mod_Gottstatus < 5))
	{
		PrintScreen	("You're not balanced!", -1, -1, FONT_Screen, 2);

		hero.attribute[ATR_HITPOINTS] += (hero.attribute[ATR_HITPOINTS_MAX]-hero.attribute[ATR_HITPOINTS])/2;
		hero.attribute[ATR_MANA] += (hero.attribute[ATR_MANA_MAX]-hero.attribute[ATR_MANA])/2;
	}
	else
	{
		PrintScreen	(PRINT_SleepOver, -1, -1, FONT_Screen, 2);
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
	};

	// Fokus einsetzen durch Albi

	if (Mod_EchsenQuest == 2)
	&& (CurrentLevel == ADDONWORLD_ZEN)
	{
		Wld_SendTrigger	("ADW_ADANOSTEMPEL_FOCUSTRIGGERLIST");

		Mod_EchsenQuest = 3;

		B_ActivateFokus();
	};

	if (Npc_KnowsInfo(hero, Info_Mod_Canthar_AtLager2))
	&& (Mod_GarvellDa == 0)
	&& (CurrentLevel == NEWWORLD_ZEN)
	{
		B_StartOtherRoutine	(Mod_577_NONE_Garvell_NW, "KILLER");

		B_Attack	(Mod_577_NONE_Garvell_NW, hero, AR_Kill, 0);

		Mod_GarvellDa = 1;
	};

	if (Mod_Betrunken == 1)
	{
		Mdl_RemoveOverlayMDS	(hero, "HUMANS_DRUNKEN.MDS");
		Mod_Betrunken = 0;
	};

	if (Mod_Weisenchronik_Intus == TRUE)
	{
		hero.attribute[ATR_STRENGTH] += 10;
		hero.attribute[ATR_DEXTERITY] += 10;

		PrintScreen	("You feel like you've been reborn!", -1, 45, FONT_SCREEN, 2);

		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX]+(hero.attribute[ATR_HITPOINTS_MAX] * 4) / 10;

		Mdl_ApplyOverlayMdsTimed	(hero, "HUMANS_SPRINT.MDS", 120000);

		B_GivePlayerXP	(80);

		Mod_Weisenchronik_Intus = FALSE;
	};

	if (Mod_Purpurmond_Intus == 1)
	{
		Mod_Purpurmond_Intus = 0;
		Mod_Purpurmond_Intus_Time = 0;
		
		hero.attribute[ATR_STRENGTH] += 10;
		hero.attribute[ATR_DEXTERITY] += 10;
		hero.attribute[ATR_MANA_MAX] += 10;
		hero.attribute[ATR_MANA] = (hero.attribute[ATR_MANA_MAX] * 3) / 2;

		PrintScreen	("Your consciousness seems expanded!", -1, -1, FONT_SCREEN, 2);
	};

	hero.aivar[AIV_Damage] = hero.attribute[ATR_HITPOINTS];

	//-------- AssessEnterRoom-Wahrnehmung versenden --------
	PrintGlobals		(PD_ITEM_MOBSI);
	Npc_SendPassivePerc	(hero,	PERC_ASSESSENTERROOM, NULL, hero);
};



func void SLEEPABIT_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		if (Npc_KnowsInfo(hero, Info_Mod_Brahim_PortDabei))
		&& (!Npc_KnowsInfo(hero, Info_Mod_Brahim_PortTot))
		&& ((Npc_GetDistToWP(hero, "NW_CITY_BED_BRAHIM_WEIB") < 500)
		|| (Npc_GetDistToWP(hero, "NW_CITY_BED_BRAHIM") < 500))
		{
			PrintScreen	("I can't sleep here right now.", -1,-1,FONT_Screen,2);
		}
		else
		{
			B_SetAivar(self, AIV_INVINCIBLE, TRUE);
			PLAYER_MOBSI_PRODUCTION	=	MOBSI_SLEEPABIT;
			Ai_ProcessInfos (her);

			if (Mod_WM_Verflucht == TRUE)
			{
				Wld_PlayEffect("DEMENTOR_FX",  hero, hero, 0, 0, 0, FALSE );
			};
		};
	};
};

//-------------------- Gar nicht schlafen -------------------------

INSTANCE PC_NoSleep (c_Info)

{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_NoSleep_Condition;
	information		= PC_NoSleep_Info;
	important		= 0;
	permanent		= 1;
	description		= DIALOG_ENDE;
};

FUNC INT PC_NoSleep_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func VOID PC_NoSleep_Info()
{
	AI_StopProcessInfos (self);
 	Wld_StopEffect("DEMENTOR_FX");
	B_SetAivar(self, AIV_INVINCIBLE, FALSE);
	PLAYER_MOBSI_PRODUCTION	=	MOBSI_NONE;
};

//---------------------- morgens --------------------------------------

INSTANCE PC_SleepTime_Morning (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Morning_Condition;
	information		= PC_SleepTime_Morning_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sleep till next morning";
};

FUNC INT PC_SleepTime_Morning_Condition()
{
	if (Wld_IsTime(12,00,07,59))
	{
		PC_SleepTime_Morning.description = "Sleep till morning";
	}
	else
	{
		PC_SleepTime_Morning.description = "Sleep till next morning";
	};

	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func void PC_SleepTime_Morning_Info ()
{
	PC_Sleep (8);

	IstNacht = FALSE;
};

//--------------------- mittags -----------------------------------------

INSTANCE PC_SleepTime_Noon (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Noon_Condition;
	information		= PC_SleepTime_Noon_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sleep till midday";
};

FUNC INT PC_SleepTime_Noon_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func void PC_SleepTime_Noon_Info ()
{
	PC_Sleep (12);

	IstNacht = FALSE;
};

//---------------------- abend --------------------------------------

INSTANCE PC_SleepTime_Evening (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Evening_Condition;
	information		= PC_SleepTime_Evening_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sleep till next evening";
};

FUNC INT PC_SleepTime_Evening_Condition()
{
	if (Wld_IsTime(00,00,19,59))
	{
		PC_SleepTime_Evening.description = "Sleep till evening";
	}
	else
	{
		PC_SleepTime_Evening.description = "Sleep till next evening";
	};

	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func void PC_SleepTime_Evening_Info ()
{
	PC_Sleep (20);
};

//------------------------ nacht -----------------------------------------

instance PC_SleepTime_Midnight (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Midnight_Condition;
	information		= PC_SleepTime_Midnight_Info;
	important		= 0;
	permanent		= 1;
	description		= "Sleep till midnight";
};

FUNC INT PC_SleepTime_Midnight_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func VOID PC_SleepTime_Midnight_Info()
{
	PC_Sleep (0);
};

//------------------------ Spezielle Zeit -----------------------------------------

instance PC_SleepTime_Special (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Special_Condition;
	information		= PC_SleepTime_Special_Info;
	important		= 0;
	permanent		= 1;
	description		= "(choose hour)";
};

FUNC INT PC_SleepTime_Special_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_SLEEPABIT)
	{
		return 1;
	};
};

func VOID PC_SleepTime_Special_Info()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	Info_AddChoice	(PC_SleepTime_Special, "13 - 24 o' clock", PC_SleepTime_Special_A);
	Info_AddChoice	(PC_SleepTime_Special, "1 - 12 o' clock", PC_SleepTime_Special_B);
};

FUNC VOID PC_SleepTime_Special_B()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	Info_AddChoice	(PC_SleepTime_Special, "12 o' clock", PC_SleepTime_Special_N);
	Info_AddChoice	(PC_SleepTime_Special, "11 o' clock", PC_SleepTime_Special_M);
	Info_AddChoice	(PC_SleepTime_Special, "10 o' clock", PC_SleepTime_Special_L);
	Info_AddChoice	(PC_SleepTime_Special, "9 o' clock", PC_SleepTime_Special_K);
	Info_AddChoice	(PC_SleepTime_Special, "8 o' clock", PC_SleepTime_Special_J);
	Info_AddChoice	(PC_SleepTime_Special, "7 o' clock", PC_SleepTime_Special_I);
	Info_AddChoice	(PC_SleepTime_Special, "6 o' clock", PC_SleepTime_Special_H);
	Info_AddChoice	(PC_SleepTime_Special, "5 o' clock", PC_SleepTime_Special_G);
	Info_AddChoice	(PC_SleepTime_Special, "4 o' clock", PC_SleepTime_Special_F);
	Info_AddChoice	(PC_SleepTime_Special, "3 o' clock", PC_SleepTime_Special_E);
	Info_AddChoice	(PC_SleepTime_Special, "2 o' clock", PC_SleepTime_Special_D);
	Info_AddChoice	(PC_SleepTime_Special, "1 o' clock", PC_SleepTime_Special_C);
};

FUNC VOID PC_SleepTime_Special_N()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(12);
};

FUNC VOID PC_SleepTime_Special_M()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(11);
};

FUNC VOID PC_SleepTime_Special_L()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(10);
};

FUNC VOID PC_SleepTime_Special_K()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(9);
};

FUNC VOID PC_SleepTime_Special_J()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(8);
};

FUNC VOID PC_SleepTime_Special_I()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(7);
};

FUNC VOID PC_SleepTime_Special_H()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(6);
};

FUNC VOID PC_SleepTime_Special_G()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(5);
};

FUNC VOID PC_SleepTime_Special_F()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(4);
};

FUNC VOID PC_SleepTime_Special_E()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(3);
};

FUNC VOID PC_SleepTime_Special_D()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(2);
};

FUNC VOID PC_SleepTime_Special_C()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(1);
};

FUNC VOID PC_SleepTime_Special_A()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	Info_AddChoice	(PC_SleepTime_Special, "24 o' clock", PC_SleepTime_Special_Z);
	Info_AddChoice	(PC_SleepTime_Special, "23 o' clock", PC_SleepTime_Special_Y);
	Info_AddChoice	(PC_SleepTime_Special, "22 o' clock", PC_SleepTime_Special_X);
	Info_AddChoice	(PC_SleepTime_Special, "21 o' clock", PC_SleepTime_Special_W);
	Info_AddChoice	(PC_SleepTime_Special, "20 o' clock", PC_SleepTime_Special_V);
	Info_AddChoice	(PC_SleepTime_Special, "19 o' clock", PC_SleepTime_Special_U);
	Info_AddChoice	(PC_SleepTime_Special, "18 o' clock", PC_SleepTime_Special_T);
	Info_AddChoice	(PC_SleepTime_Special, "17 o' clock", PC_SleepTime_Special_S);
	Info_AddChoice	(PC_SleepTime_Special, "16 o' clock", PC_SleepTime_Special_R);
	Info_AddChoice	(PC_SleepTime_Special, "15 o' clock", PC_SleepTime_Special_Q);
	Info_AddChoice	(PC_SleepTime_Special, "14 o' clock", PC_SleepTime_Special_P);
	Info_AddChoice	(PC_SleepTime_Special, "13 o' clock", PC_SleepTime_Special_O);
};

FUNC VOID PC_SleepTime_Special_Z()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(24);
};

FUNC VOID PC_SleepTime_Special_Y()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(23);
};

FUNC VOID PC_SleepTime_Special_X()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(22);
};

FUNC VOID PC_SleepTime_Special_W()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(21);
};

FUNC VOID PC_SleepTime_Special_V()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(20);
};

FUNC VOID PC_SleepTime_Special_U()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(19);
};

FUNC VOID PC_SleepTime_Special_T()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(18);
};

FUNC VOID PC_SleepTime_Special_S()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(17);
};

FUNC VOID PC_SleepTime_Special_R()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(16);
};

FUNC VOID PC_SleepTime_Special_Q()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(15);
};

FUNC VOID PC_SleepTime_Special_P()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(14);
};

FUNC VOID PC_SleepTime_Special_O()
{
	Info_ClearChoices	(PC_SleepTime_Special);

	PC_Sleep	(13);
};














